@interface CAMViewfinderLockScreenExtensionHelper
+ (void)executeUnlockOneUpAction:(unint64_t)a3 on:(id)a4;
- (CAMViewfinderLockScreenExtensionHelper)init;
@end

@implementation CAMViewfinderLockScreenExtensionHelper

+ (void)executeUnlockOneUpAction:(unint64_t)a3 on:(id)a4
{
  v6 = a4;
  _s8CameraUI35ViewfinderLockScreenExtensionHelperC24executeUnlockOneUpAction_2onySo014PXUnlockDeviceL4TypeV_So05PUOneK14ViewControllerCSgtFZ_0(a3, a4);
}

- (CAMViewfinderLockScreenExtensionHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMViewfinderLockScreenExtensionHelper *)&v3 init];
}

@end