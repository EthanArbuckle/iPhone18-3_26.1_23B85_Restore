@interface HMHome
@end

@implementation HMHome

__CFString *__81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_2(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v21 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v2;
    obj = v2;
    v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v22)
    {
      v20 = *v24;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v23 + 1) + 8 * i);
          v5 = MEMORY[0x277CCACA8];
          v6 = [v4 device];
          v7 = [v6 name];
          v8 = v7;
          if (v7)
          {
            v9 = v7;
          }

          else
          {
            v9 = @"Unknown Device";
          }

          v10 = [v4 device];
          v11 = [v10 uniqueIdentifier];
          v12 = [v11 UUIDString];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = @"No ID";
          }

          v15 = [v5 stringWithFormat:@"[%@, %@, enabled %{BOOL}d]", v9, v14, objc_msgSend(v4, "isEnabled")];

          [v21 na_safeAddObject:v15];
        }

        v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v22);
    }

    v16 = [v21 componentsJoinedByString:{@", "}];

    v2 = v18;
  }

  else
  {
    v16 = @"No resident devices";
  }

  return v16;
}

__CFString *__81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_3(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v2;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          v8 = MEMORY[0x277CCACA8];
          v9 = [v7 name];
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = @"Unknown Accessory";
          }

          v12 = [v7 uniqueIdentifier];
          v13 = [v12 UUIDString];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = @"No ID";
          }

          v16 = [v8 stringWithFormat:@"[%@, %@, isHH1EOLEnabled %{BOOL}d]", v11, v15, objc_msgSend(v7, "hf_isHH1EOLEnabled")];

          [v21 na_safeAddObject:v16];
        }

        v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v4);
    }

    v17 = [v21 componentsJoinedByString:{@", "}];

    v2 = v19;
  }

  else
  {
    v17 = @"No accessories";
  }

  return v17;
}

@end