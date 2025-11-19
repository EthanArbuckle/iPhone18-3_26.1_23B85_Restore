@interface LSPlugInKitProxy
@end

@implementation LSPlugInKitProxy

void __62__LSPlugInKitProxy_IconServicesAdditions____IS_canProvideIcon__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = _kISWatchKitExtensionPointIdentifier;
  v5[1] = _kISMessagesExtensionPointIdentifier;
  v5[2] = _kISServicesExtensionPointIdentifier;
  v5[3] = _kISUIServicesExtensionPointIdentifier;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = __IS_canProvideIcon_extensionPointsWithIcons;
  __IS_canProvideIcon_extensionPointsWithIcons = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __58__LSPlugInKitProxy_IconServicesAdditions____IS_isWatchApp__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = _kISWatchKitExtensionPointIdentifier;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = __IS_isWatchApp_extensionPointsWithIcons;
  __IS_isWatchApp_extensionPointsWithIcons = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __61__LSPlugInKitProxy_IconServicesAdditions____IS_isMessagesApp__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = _kISMessagesExtensionPointIdentifier;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = __IS_isMessagesApp_extensionPointsWithIcons;
  __IS_isMessagesApp_extensionPointsWithIcons = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end