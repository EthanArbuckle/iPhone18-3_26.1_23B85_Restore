@interface HMServiceGroup(HFIncludedContextProtocol)
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMServiceGroup(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  services = [self services];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMServiceGroup_HFIncludedContextProtocol__hf_isOnForContextType___block_invoke;
  v7[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
  v7[4] = a3;
  v5 = [services na_any:v7];

  return v5;
}

- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  services = [self services];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMServiceGroup_HFIncludedContextProtocol__hf_hasSetForContextType___block_invoke;
  v7[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
  v7[4] = a3;
  v5 = [services na_any:v7];

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
  if (a3 != 1)
  {
    return 0;
  }

  services = [self services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HMServiceGroup_HFIncludedContextProtocol__hf_shouldHideForContextType___block_invoke;
  v6[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
  v6[4] = 1;
  v4 = [services na_all:v6];

  return v4;
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v27 = 2080;
    v28 = "[HMServiceGroup(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v29 = 1024;
    v30 = a3;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  services = [self services];
  v10 = [services countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(services);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) hf_updateValue:a3 forContextType:a4];
        [array addObject:v14];
      }

      v11 = [services countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v17 = [v15 combineAllFutures:array ignoringErrors:0 scheduler:mainThreadScheduler];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end