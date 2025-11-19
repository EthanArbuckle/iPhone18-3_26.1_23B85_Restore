@interface DeviceID
@end

@implementation DeviceID

void __initValEasyConfigKey_DeviceID_block_invoke()
{
  if (EasyConfigLibrary_sOnce != -1)
  {
    dispatch_once(&EasyConfigLibrary_sOnce, &__block_literal_global_174);
  }

  v0 = dlsym(EasyConfigLibrary_sLib, "EasyConfigKey_DeviceID");
  if (v0)
  {
    objc_storeStrong(&constantValEasyConfigKey_DeviceID, *v0);
  }

  getEasyConfigKey_DeviceID = EasyConfigKey_DeviceIDFunction;
}

@end