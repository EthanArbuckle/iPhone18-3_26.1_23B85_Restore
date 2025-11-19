@interface HMMediaProfile(HFIncludedContextProtocol)
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMMediaProfile(HFIncludedContextProtocol)

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
  if ((a3 - 2) < 2)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v5 = [a1 accessory];
    v6 = [v5 hf_shouldHideForContextType:1];

    return v6;
  }

  if (a3)
  {
    return 0;
  }

LABEL_4:

  return [a1 isContainedWithinItemGroup];
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = a1;
    v14 = 2080;
    v15 = "[HMMediaProfile(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v16 = 1024;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", &v12, 0x26u);
  }

  v8 = [a1 accessory];
  v9 = [v8 hf_updateValue:a3 forContextType:a4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end