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
  v2 = [a1 home];
  v3 = [v2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HMResidentDevice_HFAdditions__hf_linkedAccessory__block_invoke;
  v6[3] = &unk_277DF3888;
  v6[4] = a1;
  v4 = [v3 na_firstObjectPassingTest:v6];

  return v4;
}

- (id)hf_displayName
{
  v2 = [a1 hf_linkedAccessory];
  v3 = [v2 hf_displayName];

  if (![v3 length])
  {
    v4 = [a1 name];

    v3 = v4;
  }

  if (![v3 length])
  {
    v5 = _HFLocalizedStringWithDefaultValue(@"HFResidentDeviceUnknownName", @"HFResidentDeviceUnknownName", 1);

    v3 = v5;
  }

  return v3;
}

- (uint64_t)hf_isEnabled
{
  result = [a1 isEnabled];
  if (result)
  {
    return [a1 capabilities] & 1;
  }

  return result;
}

- (uint64_t)hf_isReachable
{
  v9 = *MEMORY[0x277D85DE8];
  if (([a1 status] & 1) == 0)
  {
    v2 = [a1 hf_linkedAccessory];
    v3 = [v2 hf_isInstallingSoftwareUpdate];

    if (!v3)
    {
      result = 0;
      goto LABEL_8;
    }

    v4 = HFLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a1;
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
  v1 = [a1 device];
  v2 = [v1 productInfo];
  v3 = [v2 productClass] == 3;

  return v3;
}

- (BOOL)hf_isResidentAppleTV
{
  v1 = [a1 device];
  v2 = [v1 productInfo];
  v3 = [v2 productClass] == 4;

  return v3;
}

@end