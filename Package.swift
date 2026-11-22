// swift-tools-version:5.9
// Swift のラッパー（決定 0225）。CZumen は、`build-xcframework.sh` が作るネイティブのライブラリ（静的）とヘッダー。
import PackageDescription

let package = Package(
    name: "Zumen",
    platforms: [.macOS(.v14), .iOS(.v17)],
    products: [
        .library(name: "Zumen", targets: ["Zumen"]),
    ],
    targets: [
        .binaryTarget(name: "CZumen", url: "https://github.com/zumen-jp/zumen/releases/download/v0.4.0/zumen-swift-0.4.0-xcframework.zip", checksum: "240c38079df21eff1cc9aec28042bd28e36607ebba5a3111bddf050a09045caf"),
        .target(name: "Zumen", dependencies: ["CZumen"]),
    ]
)
