@interface MRUIControllerProvider
+ (id)nowPlayingActivityController;
+ (id)quickControlsControllerWithDelegate:(id)delegate;
+ (id)screenMirroringControllerWithDelegate:(id)delegate;
+ (id)serverController;
+ (id)volumeHUDController;
@end

@implementation MRUIControllerProvider

+ (id)quickControlsControllerWithDelegate:(id)delegate
{
  v3 = objc_alloc_init(MRUIController);

  return v3;
}

+ (id)screenMirroringControllerWithDelegate:(id)delegate
{
  if (MRDeviceSupportsSystemAperture())
  {
    v3 = +[MRSharedSettings currentSettings];
    if ([v3 supportSessionBasedUI])
    {
      v4 = objc_alloc_init(MRUIController);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nowPlayingActivityController
{
  v2 = objc_alloc_init(MRUIController);

  return v2;
}

+ (id)volumeHUDController
{
  v2 = objc_alloc_init(MRUIController);

  return v2;
}

+ (id)serverController
{
  v2 = objc_alloc_init(MRUIController);

  return v2;
}

@end