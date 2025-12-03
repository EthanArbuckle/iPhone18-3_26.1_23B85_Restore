@interface HMResidentDevice(HFAdditions)
- (BOOL)hf_isResidentAppleTV;
- (BOOL)hf_isResidentiPad;
- (id)hf_displayName;
- (id)hf_linkedAccessory;
- (uint64_t)hf_isEnabled;
- (uint64_t)hf_isReachable;
@end

@implementation HMResidentDevice(HFAdditions)

- (id)hf_linkedAccessory
{
  home = [self home];
  accessories = [home accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HMResidentDevice_HFAdditions__hf_linkedAccessory__block_invoke;
  v6[3] = &unk_277DF3888;
  v6[4] = self;
  v4 = [accessories na_firstObjectPassingTest:v6];

  return v4;
}

- (id)hf_displayName
{
  hf_linkedAccessory = [self hf_linkedAccessory];
  hf_displayName = [hf_linkedAccessory hf_displayName];

  if (![hf_displayName length])
  {
    name = [self name];

    hf_displayName = name;
  }

  if (![hf_displayName length])
  {
    v5 = _HFLocalizedStringWithDefaultValue(@"HFResidentDeviceUnknownName", @"HFResidentDeviceUnknownName", 1);

    hf_displayName = v5;
  }

  return hf_displayName;
}

- (uint64_t)hf_isEnabled
{
  result = [self isEnabled];
  if (result)
  {
    return [self capabilities] & 1;
  }

  return result;
}

- (uint64_t)hf_isReachable
{
  v9 = *MEMORY[0x277D85DE8];
  if (([self status] & 1) == 0)
  {
    hf_linkedAccessory = [self hf_linkedAccessory];
    hf_isInstallingSoftwareUpdate = [hf_linkedAccessory hf_isInstallingSoftwareUpdate];

    if (!hf_isInstallingSoftwareUpdate)
    {
      result = 0;
      goto LABEL_8;
    }

    v4 = HFLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Resident is installing a software update; not treating it as unreachable: %@", &v7, 0xCu);
    }
  }

  result = 1;
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hf_isResidentiPad
{
  device = [self device];
  productInfo = [device productInfo];
  v3 = [productInfo productClass] == 3;

  return v3;
}

- (BOOL)hf_isResidentAppleTV
{
  device = [self device];
  productInfo = [device productInfo];
  v3 = [productInfo productClass] == 4;

  return v3;
}

@end