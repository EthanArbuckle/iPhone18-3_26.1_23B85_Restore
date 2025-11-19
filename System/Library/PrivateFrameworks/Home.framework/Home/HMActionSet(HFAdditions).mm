@interface HMActionSet(HFAdditions)
+ (id)hf_standardSystemIconIdentifierForActionSetType:()HFAdditions;
- (BOOL)hf_affectsServiceWithIdentifier:()HFAdditions;
- (BOOL)hf_isShortcutOwned;
- (HFImageIconDescriptor)hf_iconDescriptor;
- (__CFString)_hf_iconIdentifier;
- (float)hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup:()HFAdditions;
- (id)hf_affectedAccessoryRepresentableObjects;
- (id)hf_affectedCharacteristics;
- (id)hf_affectedMediaSessions;
- (id)hf_affectedProfiles;
- (id)hf_affectedServices;
- (id)hf_characteristicWriteActions;
- (id)hf_iconTintColor;
- (id)hf_mapOldIconIdentifierToNewSystemIconIdentifier:()HFAdditions;
- (id)hf_setIconIdentifier:()HFAdditions andTintColor:;
- (id)hf_standardIconTintColorForIconIdentifier:()HFAdditions;
- (uint64_t)hf_isAnonymous;
- (uint64_t)hf_isVisible;
- (uint64_t)hf_requiresDeviceUnlock;
- (void)hf_shortcutAction;
@end

@implementation HMActionSet(HFAdditions)

- (id)hf_characteristicWriteActions
{
  v1 = [a1 actions];
  v2 = [v1 na_map:&__block_literal_global_122];

  return v2;
}

- (id)hf_affectedCharacteristics
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a1 actions];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 characteristic];
          if (v10)
          {
            v11 = [v9 targetValue];

            if (v11)
            {
              [v2 addObject:v10];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_affectedMediaSessions
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a1 actions];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = v8;
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          v12 = [v11 mediaProfiles];
          [v2 unionSet:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 na_map:&__block_literal_global_15_5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)hf_affectedProfiles
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a1 actions];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = v8;
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          v12 = [v11 mediaProfiles];
          [v2 unionSet:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          objc_opt_class();
          v13 = v8;
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v11 = v14;

          v12 = [v11 lightProfile];
          [v2 na_safeAddObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_affectedServices
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a1 actions];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 characteristic];
          v10 = [v9 service];
          [v2 na_safeAddObject:v10];

          v11 = [v8 characteristic];
          v12 = [v11 service];

          if (!v12)
          {
            v13 = HFLogForCategory(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v21 = v8;
              _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Error: Unexpected nil service for write action: %@", buf, 0xCu);
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)hf_affectsServiceWithIdentifier:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_affectedServices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HMActionSet_HFAdditions__hf_affectsServiceWithIdentifier___block_invoke;
  v10[3] = &unk_277DFC668;
  v11 = v4;
  v6 = v4;
  v7 = [v5 objectsPassingTest:v10];

  v8 = [v7 count] != 0;
  return v8;
}

- (id)hf_affectedAccessoryRepresentableObjects
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 actions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 characteristic];
          v10 = [v9 service];
          [v2 na_safeAddObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 mediaProfiles];
            [v2 unionSet:v9];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v9 = [v8 lightProfile];
            [v2 na_safeAddObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_isAnonymous
{
  v2 = [a1 actionSetType];
  if ([v2 isEqualToString:*MEMORY[0x277CCF1A0]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 name];
    if ([v4 hasPrefix:@"HFAnonymous "])
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 actionSetType];
      v3 = [v5 isEqualToString:*MEMORY[0x277CCF190]];
    }
  }

  return v3;
}

- (uint64_t)hf_isVisible
{
  if ([a1 hf_isAnonymous])
  {
    return 0;
  }

  v3 = [a1 actions];
  v2 = [v3 hmf_isEmpty] ^ 1;

  return v2;
}

- (uint64_t)hf_requiresDeviceUnlock
{
  v1 = [a1 actions];
  v2 = [v1 na_any:&__block_literal_global_21_4];

  return v2;
}

- (float)hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_affectedAccessoryRepresentableObjects];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __89__HMActionSet_HFAdditions__hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup___block_invoke;
  v13 = &unk_277DFC6B0;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  [v5 na_each:&v10];
  if ([v5 count])
  {
    v7 = v17[3];
    v8 = v7 / [v5 count];
  }

  else
  {
    v8 = 0.0;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (__CFString)_hf_iconIdentifier
{
  v2 = [a1 applicationData];
  v3 = [v2 objectForKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];

  v4 = [a1 applicationData];
  v5 = [v4 objectForKeyedSubscript:@"HFApplicationDataActionSetIconImageIdentifierKey"];

  if (!v3)
  {
    v3 = v5;
  }

  if (![(__CFString *)v3 hasPrefix:@"HFImageIconIdentifier"])
  {
    v6 = v3;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = [a1 hf_mapOldIconIdentifierToNewSystemIconIdentifier:v3];

  if ([(__CFString *)v6 hasPrefix:@"HFImageIconIdentifier"])
  {
    NSLog(&cfstr_ExpectedIconId.isa, v6);
  }

  if (!v6)
  {
LABEL_9:
    v7 = objc_opt_class();
    v8 = [a1 actionSetType];
    v6 = [v7 hf_standardSystemIconIdentifierForActionSetType:v8];

    if (!v6)
    {
      v6 = @"house.fill";
    }
  }

LABEL_11:

  return v6;
}

- (HFImageIconDescriptor)hf_iconDescriptor
{
  v2 = [a1 _hf_iconIdentifier];
  if (v2)
  {
    v3 = [a1 hf_iconTintColor];
    if (v3)
    {
      v4 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:v3];
      v5 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v2 configuration:v4];
    }

    else
    {
      v5 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v2];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hf_iconTintColor
{
  v2 = [a1 applicationData];
  v3 = [v2 objectForKeyedSubscript:@"HFAppDataActionSetIconTintColor"];

  if (v3)
  {
    v4 = [[HFColorPaletteColor alloc] initWithDictionaryRepresentation:v3];
    [(HFColorPaletteColor *)v4 UIColor];
  }

  else
  {
    v4 = [a1 _hf_iconIdentifier];
    [a1 hf_standardIconTintColorForIconIdentifier:v4];
  }
  v5 = ;

  if (!v5)
  {
    v5 = [MEMORY[0x277D75348] systemOrangeColor];
  }

  return v5;
}

- (id)hf_setIconIdentifier:()HFAdditions andTintColor:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [a1 actionSetType];
  v10 = [v8 hf_standardSystemIconIdentifierForActionSetType:v9];

  v11 = [a1 applicationData];
  v12 = [v11 objectForKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];

  if (v12 || ([v10 isEqualToString:v6] & 1) == 0)
  {
    v13 = [a1 applicationData];
    [v13 setObject:v6 forKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];
  }

  if (v7)
  {
    v14 = [[HFColorPaletteColor alloc] initWithUIColor:v7];
    v15 = [(HFColorPaletteColor *)v14 dictionaryRepresentationWithPreferredPaletteType:0];
    v16 = [a1 applicationData];
    [v16 setObject:v15 forKeyedSubscript:@"HFAppDataActionSetIconTintColor"];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HMActionSet_HFAdditions__hf_setIconIdentifier_andTintColor___block_invoke;
  v19[3] = &unk_277DF2C68;
  v19[4] = a1;
  v17 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v19];

  return v17;
}

+ (id)hf_standardSystemIconIdentifierForActionSetType:()HFAdditions
{
  v3 = a3;
  if (!v3)
  {
    v3 = *MEMORY[0x277CCF1A8];
  }

  if (_MergedGlobals_267 != -1)
  {
    dispatch_once(&_MergedGlobals_267, &__block_literal_global_40_1);
  }

  v4 = qword_280E030B8;
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (id)hf_mapOldIconIdentifierToNewSystemIconIdentifier:()HFAdditions
{
  v3 = a3;
  if (qword_280E030C0 != -1)
  {
    dispatch_once(&qword_280E030C0, &__block_literal_global_45_0);
  }

  v4 = qword_280E030C8;
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (id)hf_standardIconTintColorForIconIdentifier:()HFAdditions
{
  v3 = a3;
  if (qword_280E030D0 != -1)
  {
    dispatch_once(&qword_280E030D0, &__block_literal_global_70_4);
  }

  v4 = qword_280E030D8;
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (void)hf_shortcutAction
{
  v1 = [a1 actions];
  v2 = [v1 na_firstObjectPassingTest:&__block_literal_global_72_1];

  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hf_isShortcutOwned
{
  v1 = [a1 hf_shortcutAction];
  v2 = v1 != 0;

  return v2;
}

@end