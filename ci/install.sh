set -euxo pipefail

main() {
    echo "Preparing rust environment..."
    if [ "$TARGET" != "x86_64-unknown-linux-gnu" ]; then
        echo "Installing $TARGET"
        rustup target add $TARGET
    fi
    echo "Environment prepared."
}

main
