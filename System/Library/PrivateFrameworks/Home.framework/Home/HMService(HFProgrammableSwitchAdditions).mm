@interface HMService(HFProgrammableSwitchAdditions)
+ (id)hf_programmableSwitchServiceTypes;
- (id)_hf_firstLinkedServiceOfType:()HFProgrammableSwitchAdditions;
- (id)hf_labelNamespaceCharacteristic;
- (uint64_t)hf_fallbackProgrammableSwitchIndex;
- (uint64_t)hf_isProgrammableSwitch;
- (uint64_t)hf_isProgrammableSwitchConfigured;
@end

@implementation HMService(HFProgrammableSwitchAdditions)

+ (id)hf_programmableSwitchServiceTypes
{
  if (qword_280E031B0 != -1)
  {
    dispatch_once(&qword_280E031B0, &__block_literal_global_294);
  }

  v1 = qword_280E031B8;

  return v1;
}

- (uint64_t)hf_isProgrammableSwitch
{
  hf_programmableSwitchServiceTypes = [objc_opt_class() hf_programmableSwitchServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_programmableSwitchServiceTypes containsObject:serviceType];

  return v4;
}

- (uint64_t)hf_isProgrammableSwitchConfigured
{
  result = [self hf_isProgrammableSwitch];
  if (result)
  {
    v3 = [self hf_characteristicOfType:*MEMORY[0x277CCF910]];
    hf_isProgrammableSwitchInputEventConfigured = [v3 hf_isProgrammableSwitchInputEventConfigured];

    return hf_isProgrammableSwitchInputEventConfigured;
  }

  return result;
}

- (uint64_t)hf_fallbackProgrammableSwitchIndex
{
  hf_programmableSwitchServiceTypes = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_programmableSwitchServiceTypes containsObject:serviceType];

  if (v4)
  {
    accessory = [self accessory];
    services = [accessory services];
    v7 = [services na_filter:&__block_literal_global_304_0];
    currentHandler = [v7 sortedArrayUsingComparator:&__block_literal_global_306_0];

    v9 = [currentHandler indexOfObject:self];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9 + 1;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMService(HFProgrammableSwitchAdditions) hf_fallbackProgrammableSwitchIndex]"];
    [currentHandler handleFailureInFunction:v11 file:@"HMService+HFAdditions.m" lineNumber:584 description:@"HMProgrammableSwitchIndexForService(HMService *service) called w/ non-programmable switch.  Everybody panic."];

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)hf_labelNamespaceCharacteristic
{
  hf_programmableSwitchServiceTypes = [objc_opt_class() hf_programmableSwitchServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_programmableSwitchServiceTypes containsObject:serviceType];

  if (v4)
  {
    v5 = *MEMORY[0x277CD0E88];
    v6 = [self _hf_firstLinkedServiceOfType:*MEMORY[0x277CD0E88]];
    if (v6)
    {
      v7 = v6;
LABEL_5:
      v9 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF930]];

      goto LABEL_7;
    }

    accessory = [self accessory];
    v7 = [accessory hf_serviceOfType:v5];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_hf_firstLinkedServiceOfType:()HFProgrammableSwitchAdditions
{
  v4 = a3;
  linkedServices = [self linkedServices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HMService_HFProgrammableSwitchAdditions___hf_firstLinkedServiceOfType___block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v4;
  v6 = v4;
  v7 = [linkedServices na_firstObjectPassingTest:v9];

  return v7;
}

@end