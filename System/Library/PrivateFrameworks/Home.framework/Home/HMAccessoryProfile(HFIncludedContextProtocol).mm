@interface HMAccessoryProfile(HFIncludedContextProtocol)
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMAccessoryProfile(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  accessory = [self accessory];
  v5 = [accessory hf_isOnForContextType:a3];

  return v5;
}

- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  accessory = [self accessory];
  v5 = [accessory hf_hasSetForContextType:a3];

  return v5;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  selfCopy = self;
  if (a2 < 2)
  {
    if (([self hf_isOnForContextType:a2] & 1) == 0)
    {
      a3 = [selfCopy hf_hasSetForContextType:a2] ^ 1;
      return a3 & 1;
    }

    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v5 = 2;
    goto LABEL_9;
  }

  if (a2 != 3)
  {
    return a3 & 1;
  }

  if (![self hf_hasSetForContextType:3])
  {
LABEL_7:
    a3 = 1;
    return a3 & 1;
  }

  self = selfCopy;
  v5 = 3;
LABEL_9:

  return [self hf_isOnForContextType:v5];
}

- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol
{
  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 != 2)
      {
        return hf_currentUserIsRestrictedGuest2 & 1;
      }

      accessory = [self accessory];
      home = [accessory home];
      hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];

      if (hf_currentUserIsRestrictedGuest & 1) != 0 || ([self accessory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_isCamera"), v9, (v10))
      {
        hf_currentUserIsRestrictedGuest2 = 1;
        return hf_currentUserIsRestrictedGuest2 & 1;
      }
    }

LABEL_10:
    accessory2 = [self accessory];
    home2 = [accessory2 home];
    hf_currentUserIsRestrictedGuest2 = [home2 hf_currentUserIsRestrictedGuest];

    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    accessory2 = [self accessory];
    hf_currentUserIsRestrictedGuest2 = [accessory2 hf_shouldHideForContextType:1];
LABEL_11:
  }

  return hf_currentUserIsRestrictedGuest2 & 1;
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  accessory = [self accessory];

  if (!accessory)
  {
    NSLog(&cfstr_AccessoryIsNil.isa, self);
  }

  accessory2 = [self accessory];
  v9 = [accessory2 hf_updateValue:a3 forContextType:a4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v12 futureWithError:v13];
  }

  return v11;
}

@end