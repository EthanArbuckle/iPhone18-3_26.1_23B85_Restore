@interface HMAccessoryNetworkProtectionGroup(HFAdditions)
+ (id)hf_updateProtectionMode:()HFAdditions forGroups:;
- (id)hf_home;
- (id)hf_networkConfigurationProfiles;
- (id)hf_title;
- (id)hf_updateProtectionMode:()HFAdditions;
- (uint64_t)hf_displayCurrentProtectionMode;
@end

@implementation HMAccessoryNetworkProtectionGroup(HFAdditions)

- (id)hf_networkConfigurationProfiles
{
  accessories = [self accessories];
  v2 = [accessories na_flatMap:&__block_literal_global_64];

  return v2;
}

- (id)hf_home
{
  accessories = [self accessories];
  firstObject = [accessories firstObject];
  home = [firstObject home];

  return home;
}

- (id)hf_title
{
  manufacturer = [self manufacturer];
  v3 = MEMORY[0x277CD1650];
  category = [self category];
  categoryType = [category categoryType];
  v14 = [v3 hf_userFriendlyLocalizedCapitalizedDescription:categoryType];
  v12 = HFLocalizedStringWithFormat(@"HFNetworkProtectionTitleFormat", @"%@ %@", v6, v7, v8, v9, v10, v11, manufacturer);

  return v12;
}

- (uint64_t)hf_displayCurrentProtectionMode
{
  v22 = *MEMORY[0x277D85DE8];
  hf_networkConfigurationProfiles = [self hf_networkConfigurationProfiles];
  v3 = [hf_networkConfigurationProfiles na_map:&__block_literal_global_14_1];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&unk_282525780 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&unk_282525780);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v3 containsObject:v8])
        {
          unsignedIntegerValue = [v8 unsignedIntegerValue];
          goto LABEL_13;
        }
      }

      v5 = [&unk_282525780 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Invalid current protection mode for group %@", buf, 0xCu);
  }

  hf_networkConfigurationProfiles2 = [self hf_networkConfigurationProfiles];
  firstObject = [hf_networkConfigurationProfiles2 firstObject];
  unsignedIntegerValue = [firstObject currentProtectionMode];

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)hf_updateProtectionMode:()HFAdditions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMAccessoryNetworkProtectionGroup_HFAdditions__hf_updateProtectionMode___block_invoke;
  v7[3] = &unk_277DF7D88;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

+ (id)hf_updateProtectionMode:()HFAdditions forGroups:
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__HMAccessoryNetworkProtectionGroup_HFAdditions__hf_updateProtectionMode_forGroups___block_invoke;
  v9[3] = &__block_descriptor_40_e43__16__0__HMAccessoryNetworkProtectionGroup_8l;
  v9[4] = a3;
  v4 = [a4 na_map:v9];
  v5 = MEMORY[0x277D2C900];
  allObjects = [v4 allObjects];
  v7 = [v5 combineAllFutures:allObjects];

  return v7;
}

@end