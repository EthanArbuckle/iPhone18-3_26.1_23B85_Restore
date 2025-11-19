@interface UIDevice
@end

@implementation UIDevice

void __45__UIDevice_DKExtensions__dk_deviceSupportsGL__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 _graphicsQuality];

  if (v1 == 10)
  {
    dk_deviceSupportsGL_useGL = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:3];
    dk_deviceSupportsGL_useGL = v2 != 0;
  }
}

@end