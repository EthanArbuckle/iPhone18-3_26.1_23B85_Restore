@interface FMSystemInfo_ios
- (BOOL)_BOOLDeviceInfoForKey:(__CFString *)a3;
- (BOOL)hasSEP;
- (BOOL)isDeviceSecured;
- (id)_deviceInfoForKey:(__CFString *)a3;
- (id)_deviceInfoNumberForKey:(__CFString *)a3;
- (id)btMacAddress;
- (id)chipId;
- (id)deviceClass;
- (id)deviceModelName;
- (id)deviceName;
- (id)deviceUDID;
- (id)ecid;
- (id)osBuildVersion;
- (id)osVersion;
- (id)productName;
- (id)productType;
- (id)serialNumber;
- (id)wifiMacAddress;
@end

@implementation FMSystemInfo_ios

- (id)osBuildVersion
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"BuildVersion"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)deviceClass
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"DeviceName"];
  v3 = v2;
  if (v2)
  {
    if ([(__CFString *)v2 isEqualToString:@"iPod"])
    {
      v4 = @"iPod touch";
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)productType
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"ProductType"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)osVersion
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"ProductVersion"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)deviceUDID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__FMSystemInfo_ios_deviceUDID__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (deviceUDID_onceToken != -1)
  {
    dispatch_once(&deviceUDID_onceToken, block);
  }

  return deviceUDID_deviceIdentifier;
}

- (id)_deviceInfoForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();

  return v3;
}

- (id)_deviceInfoNumberForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();

  return v3;
}

- (BOOL)_BOOLDeviceInfoForKey:(__CFString *)a3
{
  v3 = MGCopyAnswerWithError();
  v4 = *MEMORY[0x277CBED28];
  CFRelease(v3);
  return v3 == v4;
}

- (id)productName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__FMSystemInfo_ios_productName__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (productName_onceToken != -1)
  {
    dispatch_once(&productName_onceToken, block);
  }

  if (productName__value)
  {
    v2 = productName__value;
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

- (id)deviceName
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"UserAssignedDeviceName"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)deviceModelName
{
  v2 = [(FMSystemInfo_ios *)self _deviceInfoForKey:@"DeviceName"];
  v3 = v2;
  if (v2)
  {
    if ([(__CFString *)v2 isEqualToString:@"iPod"])
    {
      v4 = @"iPod touch";
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)serialNumber
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__FMSystemInfo_ios_serialNumber__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (serialNumber_onceToken != -1)
  {
    dispatch_once(&serialNumber_onceToken, block);
  }

  return serialNumber__value;
}

- (id)ecid
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__FMSystemInfo_ios_ecid__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (ecid_onceToken != -1)
  {
    dispatch_once(&ecid_onceToken, block);
  }

  return ecid__value;
}

- (id)chipId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__FMSystemInfo_ios_chipId__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (chipId_onceToken != -1)
  {
    dispatch_once(&chipId_onceToken, block);
  }

  return chipId__value;
}

- (id)wifiMacAddress
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__FMSystemInfo_ios_wifiMacAddress__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (wifiMacAddress_onceToken != -1)
  {
    dispatch_once(&wifiMacAddress_onceToken, block);
  }

  return wifiMacAddress__value;
}

- (id)btMacAddress
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__FMSystemInfo_ios_btMacAddress__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (btMacAddress_onceToken != -1)
  {
    dispatch_once(&btMacAddress_onceToken, block);
  }

  return btMacAddress__value;
}

- (BOOL)isDeviceSecured
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (BOOL)hasSEP
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__FMSystemInfo_ios_hasSEP__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  if (hasSEP_onceToken != -1)
  {
    dispatch_once(&hasSEP_onceToken, block);
  }

  return hasSEP__value;
}

- (void)_deviceInfoForKey:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_24A2EE000, a2, a3, "Cannot obtain Gestalt value for %@!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end