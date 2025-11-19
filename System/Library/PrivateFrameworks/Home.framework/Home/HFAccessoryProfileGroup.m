@interface HFAccessoryProfileGroup
+ (id)_groupIdentifierForProfile:(id)a3 options:(id)a4;
+ (id)_groupProfilesKeyedByIdentifier:(id)a3 options:(id)a4;
+ (id)_hashCombiningHashes:(id)a3;
+ (id)groupProfiles:(id)a3 options:(id)a4;
- (HFAccessoryProfileGroup)initWithProfiles:(id)a3 groupIdentifier:(id)a4;
@end

@implementation HFAccessoryProfileGroup

+ (id)groupProfiles:(id)a3 options:(id)a4
{
  v5 = [a1 _groupProfilesKeyedByIdentifier:a3 options:a4];
  v6 = [v5 allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HFAccessoryProfileGroup_groupProfiles_options___block_invoke;
  v10[3] = &unk_277DFEF38;
  v11 = v5;
  v12 = a1;
  v7 = v5;
  v8 = [v6 na_map:v10];

  return v8;
}

id __49__HFAccessoryProfileGroup_groupProfiles_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [objc_alloc(*(a1 + 40)) initWithProfiles:v5 groupIdentifier:v4];

  return v6;
}

- (HFAccessoryProfileGroup)initWithProfiles:(id)a3 groupIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFAccessoryProfileGroup;
  v9 = [(HFAccessoryProfileGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profiles, a3);
    objc_storeStrong(&v10->_groupIdentifier, a4);
  }

  return v10;
}

+ (id)_groupProfilesKeyedByIdentifier:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB38];
  v8 = a3;
  v9 = [v7 dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HFAccessoryProfileGroup__groupProfilesKeyedByIdentifier_options___block_invoke;
  v15[3] = &unk_277DFEF60;
  v18 = a1;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
  [v8 na_each:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __67__HFAccessoryProfileGroup__groupProfilesKeyedByIdentifier_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [*(a1 + 48) _groupIdentifierForProfile:? options:?];
  v6 = [*(a1 + 40) objectForKey:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  [v6 addObject:v7];
  [*(a1 + 40) setObject:v6 forKey:v5];
}

+ (id)_groupIdentifierForProfile:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  if ([v7 byCategoryType])
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v6 accessory];
    v11 = [v10 category];
    v12 = [v11 categoryType];
    v13 = [v9 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
    [v8 addObject:v13];
  }

  if ([v7 byClass])
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
    [v8 addObject:v17];
  }

  if ([v7 byManufacturer])
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = [v6 accessory];
    v20 = [v19 manufacturer];
    v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "hash")}];
    [v8 addObject:v21];
  }

  if ([v7 byModel])
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = [v6 accessory];
    v24 = [v23 model];
    v25 = [v22 numberWithUnsignedInteger:{objc_msgSend(v24, "hash")}];
    [v8 addObject:v25];
  }

  if ([v7 byRoom])
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = [v6 accessory];
    v28 = [v27 room];
    v29 = [v28 uniqueIdentifier];
    v30 = [v26 numberWithUnsignedInteger:{objc_msgSend(v29, "hash")}];
    [v8 addObject:v30];
  }

  v31 = [a1 _hashCombiningHashes:v8];

  return v31;
}

+ (id)_hashCombiningHashes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue] + 131 * v6;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end