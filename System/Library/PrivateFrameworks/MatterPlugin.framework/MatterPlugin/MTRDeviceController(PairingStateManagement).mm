@interface MTRDeviceController(PairingStateManagement)
+ (void)swizzlePrewarm;
- (uint64_t)__plugin__setupCommissioningSessionWithPayload:()PairingStateManagement newNodeID:error:;
- (void)__plugin__preWarmCommissioningSession;
@end

@implementation MTRDeviceController(PairingStateManagement)

+ (void)swizzlePrewarm
{
  if (swizzlePrewarm_onceToken_103 != -1)
  {
    +[MTRDeviceController(PairingStateManagement) swizzlePrewarm];
  }
}

- (void)__plugin__preWarmCommissioningSession
{
  v2 = MTRGetAssociatedHomeUUIDWithController(a1);
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Starting potential pairing from prewarming", v4, 2u);
  }

  MTRSetPotentialPairing(v2, 1);
  [a1 __plugin__preWarmCommissioningSession];
}

- (uint64_t)__plugin__setupCommissioningSessionWithPayload:()PairingStateManagement newNodeID:error:
{
  v8 = a4;
  v9 = a3;
  v10 = MTRGetAssociatedHomeUUIDWithController(a1);
  v11 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "Starting potential pairing from setupCommissioningSessionWithPayload", v14, 2u);
  }

  MTRSetPotentialPairing(v10, 1);
  v12 = [a1 __plugin__setupCommissioningSessionWithPayload:v9 newNodeID:v8 error:a5];

  return v12;
}

@end