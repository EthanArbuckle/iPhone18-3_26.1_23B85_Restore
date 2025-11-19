@interface MTRDeviceController
@end

@implementation MTRDeviceController

void __61__MTRDeviceController_PairingStateManagement__swizzlePrewarm__block_invoke()
{
  v0 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25830F000, v0, OS_LOG_TYPE_DEFAULT, "Swizzling MTRController methods for pairing", v7, 2u);
  }

  v1 = NSClassFromString(&cfstr_Mtrdevicecontr_0.isa);
  v2 = NSClassFromString(&cfstr_Mtrdevicecontr_0.isa);
  MTRSwizzleMethods(v1, v2, sel_preWarmCommissioningSession, sel___plugin__preWarmCommissioningSession);
  v3 = NSClassFromString(&cfstr_Mtrdevicecontr_1.isa);
  v4 = NSClassFromString(&cfstr_Mtrdevicecontr_1.isa);
  MTRSwizzleMethods(v3, v4, sel_preWarmCommissioningSession, sel___plugin__preWarmCommissioningSession);
  v5 = NSClassFromString(&cfstr_Mtrdevicecontr_0.isa);
  v6 = NSClassFromString(&cfstr_Mtrdevicecontr_0.isa);
  MTRSwizzleMethods(v5, v6, sel_setupCommissioningSessionWithPayload_newNodeID_error_, sel___plugin__setupCommissioningSessionWithPayload_newNodeID_error_);
}

@end