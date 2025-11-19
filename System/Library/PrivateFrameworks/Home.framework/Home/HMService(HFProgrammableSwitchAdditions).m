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
  v2 = [objc_opt_class() hf_programmableSwitchServiceTypes];
  v3 = [a1 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)hf_isProgrammableSwitchConfigured
{
  result = [a1 hf_isProgrammableSwitch];
  if (result)
  {
    v3 = [a1 hf_characteristicOfType:*MEMORY[0x277CCF910]];
    v4 = [v3 hf_isProgrammableSwitchInputEventConfigured];

    return v4;
  }

  return result;
}

- (uint64_t)hf_fallbackProgrammableSwitchIndex
{
  v2 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
  v3 = [a1 serviceType];
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v5 = [a1 accessory];
    v6 = [v5 services];
    v7 = [v6 na_filter:&__block_literal_global_304_0];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_306_0];

    v9 = [v8 indexOfObject:a1];
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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMService(HFProgrammableSwitchAdditions) hf_fallbackProgrammableSwitchIndex]"];
    [v8 handleFailureInFunction:v11 file:@"HMService+HFAdditions.m" lineNumber:584 description:@"HMProgrammableSwitchIndexForService(HMService *service) called w/ non-programmable switch.  Everybody panic."];

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)hf_labelNamespaceCharacteristic
{
  v2 = [objc_opt_class() hf_programmableSwitchServiceTypes];
  v3 = [a1 serviceType];
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v5 = *MEMORY[0x277CD0E88];
    v6 = [a1 _hf_firstLinkedServiceOfType:*MEMORY[0x277CD0E88]];
    if (v6)
    {
      v7 = v6;
LABEL_5:
      v9 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF930]];

      goto LABEL_7;
    }

    v8 = [a1 accessory];
    v7 = [v8 hf_serviceOfType:v5];

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
  v5 = [a1 linkedServices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HMService_HFProgrammableSwitchAdditions___hf_firstLinkedServiceOfType___block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

@end