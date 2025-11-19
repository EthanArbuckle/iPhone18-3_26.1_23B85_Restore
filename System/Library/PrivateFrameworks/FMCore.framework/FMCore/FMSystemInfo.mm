@interface FMSystemInfo
+ (id)sharedInstance;
@end

@implementation FMSystemInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[FMSystemInfo sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

uint64_t __30__FMSystemInfo_sharedInstance__block_invoke()
{
  sharedInstance___instance_0 = objc_alloc_init(FMSystemInfo_ios);

  return MEMORY[0x2821F96F8]();
}

uint64_t __30__FMSystemInfo_ios_deviceUDID__block_invoke(uint64_t a1)
{
  deviceUDID_deviceIdentifier = [*(a1 + 32) _deviceInfoForKey:@"UniqueDeviceID"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __31__FMSystemInfo_ios_productName__block_invoke(uint64_t a1)
{
  productName__value = [*(a1 + 32) _deviceInfoForKey:@"ProductName"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__FMSystemInfo_ios_serialNumber__block_invoke(uint64_t a1)
{
  serialNumber__value = [*(a1 + 32) _deviceInfoForKey:@"SerialNumber"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __24__FMSystemInfo_ios_ecid__block_invoke(uint64_t a1)
{
  ecid__value = [*(a1 + 32) _deviceInfoNumberForKey:@"UniqueChipID"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __26__FMSystemInfo_ios_chipId__block_invoke(uint64_t a1)
{
  chipId__value = [*(a1 + 32) _deviceInfoNumberForKey:@"ChipID"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __34__FMSystemInfo_ios_wifiMacAddress__block_invoke(uint64_t a1)
{
  wifiMacAddress__value = [*(a1 + 32) _deviceInfoForKey:@"WifiAddress"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__FMSystemInfo_ios_btMacAddress__block_invoke(uint64_t a1)
{
  btMacAddress__value = [*(a1 + 32) _deviceInfoForKey:@"BluetoothAddress"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __26__FMSystemInfo_ios_hasSEP__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLDeviceInfoForKey:@"HasSEP"];
  hasSEP__value = result;
  return result;
}

void __31__FMSystemInfo_osx_productName__block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v3 = v0;
    v1 = [v0 objectForKeyedSubscript:*MEMORY[0x277CBEC78]];
    v2 = productName__value_0;
    productName__value_0 = v1;

    v0 = v3;
  }
}

@end