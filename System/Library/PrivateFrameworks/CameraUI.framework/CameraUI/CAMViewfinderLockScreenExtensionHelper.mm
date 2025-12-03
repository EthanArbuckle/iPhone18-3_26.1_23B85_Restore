@interface CAMViewfinderLockScreenExtensionHelper
+ (void)executeUnlockOneUpAction:(unint64_t)action on:(id)on;
- (CAMViewfinderLockScreenExtensionHelper)init;
@end

@implementation CAMViewfinderLockScreenExtensionHelper

+ (void)executeUnlockOneUpAction:(unint64_t)action on:(id)on
{
  onCopy = on;
  _s8CameraUI35ViewfinderLockScreenExtensionHelperC24executeUnlockOneUpAction_2onySo014PXUnlockDeviceL4TypeV_So05PUOneK14ViewControllerCSgtFZ_0(action, on);
}

- (CAMViewfinderLockScreenExtensionHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMViewfinderLockScreenExtensionHelper *)&v3 init];
}

@end