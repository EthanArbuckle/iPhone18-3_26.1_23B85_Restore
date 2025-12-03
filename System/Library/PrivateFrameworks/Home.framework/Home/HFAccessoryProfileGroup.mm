@interface HFAccessoryProfileGroup
+ (id)_groupIdentifierForProfile:(id)profile options:(id)options;
+ (id)_groupProfilesKeyedByIdentifier:(id)identifier options:(id)options;
+ (id)_hashCombiningHashes:(id)hashes;
+ (id)groupProfiles:(id)profiles options:(id)options;
- (HFAccessoryProfileGroup)initWithProfiles:(id)profiles groupIdentifier:(id)identifier;
@end

@implementation HFAccessoryProfileGroup

+ (id)groupProfiles:(id)profiles options:(id)options
{
  v5 = [self _groupProfilesKeyedByIdentifier:profiles options:options];
  allKeys = [v5 allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HFAccessoryProfileGroup_groupProfiles_options___block_invoke;
  v10[3] = &unk_277DFEF38;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = [allKeys na_map:v10];

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

- (HFAccessoryProfileGroup)initWithProfiles:(id)profiles groupIdentifier:(id)identifier
{
  profilesCopy = profiles;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HFAccessoryProfileGroup;
  v9 = [(HFAccessoryProfileGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profiles, profiles);
    objc_storeStrong(&v10->_groupIdentifier, identifier);
  }

  return v10;
}

+ (id)_groupProfilesKeyedByIdentifier:(id)identifier options:(id)options
{
  optionsCopy = options;
  v7 = MEMORY[0x277CBEB38];
  identifierCopy = identifier;
  dictionary = [v7 dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HFAccessoryProfileGroup__groupProfilesKeyedByIdentifier_options___block_invoke;
  v15[3] = &unk_277DFEF60;
  selfCopy = self;
  v16 = optionsCopy;
  v10 = dictionary;
  v17 = v10;
  v11 = optionsCopy;
  [identifierCopy na_each:v15];

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

+ (id)_groupIdentifierForProfile:(id)profile options:(id)options
{
  profileCopy = profile;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  if ([optionsCopy byCategoryType])
  {
    v9 = MEMORY[0x277CCABB0];
    accessory = [profileCopy accessory];
    category = [accessory category];
    categoryType = [category categoryType];
    v13 = [v9 numberWithUnsignedInteger:{objc_msgSend(categoryType, "hash")}];
    [array addObject:v13];
  }

  if ([optionsCopy byClass])
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
    [array addObject:v17];
  }

  if ([optionsCopy byManufacturer])
  {
    v18 = MEMORY[0x277CCABB0];
    accessory2 = [profileCopy accessory];
    manufacturer = [accessory2 manufacturer];
    v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(manufacturer, "hash")}];
    [array addObject:v21];
  }

  if ([optionsCopy byModel])
  {
    v22 = MEMORY[0x277CCABB0];
    accessory3 = [profileCopy accessory];
    model = [accessory3 model];
    v25 = [v22 numberWithUnsignedInteger:{objc_msgSend(model, "hash")}];
    [array addObject:v25];
  }

  if ([optionsCopy byRoom])
  {
    v26 = MEMORY[0x277CCABB0];
    accessory4 = [profileCopy accessory];
    room = [accessory4 room];
    uniqueIdentifier = [room uniqueIdentifier];
    v30 = [v26 numberWithUnsignedInteger:{objc_msgSend(uniqueIdentifier, "hash")}];
    [array addObject:v30];
  }

  v31 = [self _hashCombiningHashes:array];

  return v31;
}

+ (id)_hashCombiningHashes:(id)hashes
{
  v17 = *MEMORY[0x277D85DE8];
  hashesCopy = hashes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [hashesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(hashesCopy);
        }

        v6 = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue] + 131 * v6;
      }

      v5 = [hashesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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