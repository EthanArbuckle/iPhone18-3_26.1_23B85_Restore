@interface MTRDeviceControllerFactory
@end

@implementation MTRDeviceControllerFactory

void __68__MTRDeviceControllerFactory_PairingStateManagement__swizzlePrewarm__block_invoke()
{
  v0 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_25830F000, v0, OS_LOG_TYPE_DEFAULT, "Swizzling MTRDeviceControllerFactory methods for pairing", v3, 2u);
  }

  v1 = NSClassFromString(&cfstr_Mtrdevicecontr.isa);
  v2 = NSClassFromString(&cfstr_Mtrdevicecontr.isa);
  MTRSwizzleMethods(v1, v2, sel_preWarmCommissioningSession, sel___plugin__preWarmCommissioningSession);
}

@end