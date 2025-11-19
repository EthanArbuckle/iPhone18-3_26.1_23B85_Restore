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
  v4 = [a1 accessory];
  v5 = [v4 hf_isOnForContextType:a3];

  return v5;
}

- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  v4 = [a1 accessory];
  v5 = [v4 hf_hasSetForContextType:a3];

  return v5;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  v4 = a1;
  if (a2 < 2)
  {
    if (([a1 hf_isOnForContextType:a2] & 1) == 0)
    {
      a3 = [v4 hf_hasSetForContextType:a2] ^ 1;
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

  if (![a1 hf_hasSetForContextType:3])
  {
LABEL_7:
    a3 = 1;
    return a3 & 1;
  }

  a1 = v4;
  v5 = 3;
LABEL_9:

  return [a1 hf_isOnForContextType:v5];
}

- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol
{
  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 != 2)
      {
        return v3 & 1;
      }

      v6 = [a1 accessory];
      v7 = [v6 home];
      v8 = [v7 hf_currentUserIsRestrictedGuest];

      if (v8 & 1) != 0 || ([a1 accessory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_isCamera"), v9, (v10))
      {
        v3 = 1;
        return v3 & 1;
      }
    }

LABEL_10:
    v5 = [a1 accessory];
    v11 = [v5 home];
    v3 = [v11 hf_currentUserIsRestrictedGuest];

    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v5 = [a1 accessory];
    v3 = [v5 hf_shouldHideForContextType:1];
LABEL_11:
  }

  return v3 & 1;
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v7 = [a1 accessory];

  if (!v7)
  {
    NSLog(&cfstr_AccessoryIsNil.isa, a1);
  }

  v8 = [a1 accessory];
  v9 = [v8 hf_updateValue:a3 forContextType:a4];
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