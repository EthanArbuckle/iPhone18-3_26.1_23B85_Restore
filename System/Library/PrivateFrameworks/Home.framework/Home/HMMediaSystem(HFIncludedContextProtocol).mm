@interface HMMediaSystem(HFIncludedContextProtocol)
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMMediaSystem(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  v4 = [a1 accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMMediaSystem_HFIncludedContextProtocol__hf_isOnForContextType___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
  v7[4] = a3;
  v5 = [v4 na_any:v7];

  return v5;
}

- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  v4 = [a1 accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMMediaSystem_HFIncludedContextProtocol__hf_hasSetForContextType___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
  v7[4] = a3;
  v5 = [v4 na_all:v7];

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
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v5 = [a1 accessories];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __72__HMMediaSystem_HFIncludedContextProtocol__hf_shouldHideForContextType___block_invoke;
      v6[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
      v6[4] = 1;
      v3 = [v5 na_all:v6];
    }

    else if (!a3)
    {
      goto LABEL_4;
    }

    return v3 & 1;
  }

LABEL_4:

  return [a1 isContainedWithinItemGroup];
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = a1;
    v28 = 2080;
    v29 = "[HMMediaSystem(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v30 = 1024;
    v31 = a3;
    v32 = 2048;
    v33 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [a1 accessories];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (a4 != 1 || ([a1 hf_shouldHideForContextType:1] & 1) == 0)
        {
          v15 = [v14 hf_updateValue:a3 forContextType:a4];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v18 = [v16 combineAllFutures:v8 ignoringErrors:0 scheduler:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end