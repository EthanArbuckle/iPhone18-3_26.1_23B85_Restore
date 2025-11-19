@interface SFDeviceSupportsWebKitFullscreenAPI
@end

@implementation SFDeviceSupportsWebKitFullscreenAPI

void ___SFDeviceSupportsWebKitFullscreenAPI_block_invoke()
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v0 = [v2 userInterfaceIdiom];

  if (v0 == 1)
  {
    _SFDeviceSupportsWebKitFullscreenAPI::supportsFullscreen = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v1 = [v3 userInterfaceIdiom];

    if (v1)
    {
      _SFDeviceSupportsWebKitFullscreenAPI::supportsFullscreen = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
      _SFDeviceSupportsWebKitFullscreenAPI::supportsFullscreen = [v4 BOOLForKey:@"EnableFullScreenAPIOnPhone"];
    }
  }
}

@end