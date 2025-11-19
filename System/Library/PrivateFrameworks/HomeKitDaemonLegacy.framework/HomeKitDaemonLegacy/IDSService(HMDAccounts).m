@interface IDSService(HMDAccounts)
- (BOOL)hmd_isActive;
- (id)hmd_handles;
- (id)hmd_preferredDisplayHandle;
- (id)hmd_preferredHandle;
- (uint64_t)hmd_registrationError;
- (uint64_t)hmd_registrationStatus;
@end

@implementation IDSService(HMDAccounts)

- (id)hmd_preferredDisplayHandle
{
  v2 = [a1 hmd_handles];
  v3 = [v2 mutableCopy];

  v4 = [a1 iCloudAccount];
  v5 = [v4 loginID];

  if (v5)
  {
    v6 = +[HMDAccountHandleFormatter defaultFormatter];
    v7 = [v6 accountHandleFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  if (![v3 containsObject:v7])
  {
    goto LABEL_6;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__IDSService_HMDAccounts__hmd_preferredDisplayHandle__block_invoke;
  v10[3] = &unk_27972B1A0;
  v11 = v7;
  v8 = [v3 hmf_objectPassingTest:v10];

  if (!v8)
  {
LABEL_6:
    [v3 sortWithOptions:16 usingComparator:&__block_literal_global_11_97349];
    v8 = [v3 lastObject];
  }

  return v8;
}

- (id)hmd_preferredHandle
{
  v23 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [a1 hmd_handles];
  v15 = [v2 na_map:&__block_literal_global_97352];
  v3 = _IDSCopyOrderedAliasesWithGetter();
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __46__IDSService_HMDAccounts__hmd_preferredHandle__block_invoke_3;
        v17[3] = &unk_27972A5F0;
        v17[4] = v10;
        v11 = [v2 na_firstObjectPassingTest:v17];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [v4 firstObject];

  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)hmd_handles
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 accounts];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) hmd_handles];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 array];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (uint64_t)hmd_registrationError
{
  v1 = [a1 iCloudAccount];
  v2 = [v1 registrationError];

  return v2;
}

- (uint64_t)hmd_registrationStatus
{
  v1 = [a1 iCloudAccount];
  v2 = [v1 registrationStatus];

  return v2;
}

- (BOOL)hmd_isActive
{
  v1 = [a1 iCloudAccount];
  if ([v1 isActive])
  {
    v2 = [v1 loginID];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end