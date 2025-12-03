@interface MTRDeviceControllerFactory(PairingStateManagement)
+ (void)swizzlePrewarm;
- (uint64_t)__plugin__preWarmCommissioningSession;
@end

@implementation MTRDeviceControllerFactory(PairingStateManagement)

+ (void)swizzlePrewarm
{
  if (swizzlePrewarm_onceToken != -1)
  {
    +[MTRDeviceControllerFactory(PairingStateManagement) swizzlePrewarm];
  }
}

- (uint64_t)__plugin__preWarmCommissioningSession
{
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "Starting potential pairing from prewarming on factory", v4, 2u);
  }

  MTRSetPotentialPairing(0, 1);
  return [self __plugin__preWarmCommissioningSession];
}

@end