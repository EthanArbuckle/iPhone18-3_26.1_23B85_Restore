@interface LSExtensionPointRecord
@end

@implementation LSExtensionPointRecord

void __77__LSExtensionPointRecord_IconServicesAdditions___IS_extensionsCanProvideIcon__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.watchkit";
  v5[1] = @"com.apple.message-payload-provider";
  v5[2] = @"com.apple.services";
  v5[3] = @"com.apple.ui-services";
  v5[4] = @"com.apple.fileprovider-nonui";
  v5[5] = @"com.apple.fileprovider-actionsui";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _IS_extensionsCanProvideIcon_extensionPointsWithIcons;
  _IS_extensionsCanProvideIcon_extensionPointsWithIcons = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __92__LSExtensionPointRecord_IconServicesAdditions___IS_extensionsShouldFallbackToContainerIcon__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.watchkit";
  v5[1] = @"com.apple.message-payload-provider";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _IS_extensionsShouldFallbackToContainerIcon_extensionPointsHavingExtensionThatMustProvideIcons;
  _IS_extensionsShouldFallbackToContainerIcon_extensionPointsHavingExtensionThatMustProvideIcons = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end