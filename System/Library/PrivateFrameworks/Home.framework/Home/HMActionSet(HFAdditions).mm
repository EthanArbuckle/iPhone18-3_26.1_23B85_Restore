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
  actions = [self actions];
  v2 = [actions na_map:&__block_literal_global_122];

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
  actions = [self actions];
  v4 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          characteristic = [v9 characteristic];
          if (characteristic)
          {
            targetValue = [v9 targetValue];

            if (targetValue)
            {
              [v2 addObject:characteristic];
            }
          }
        }
      }

      v5 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  actions = [self actions];
  v4 = [actions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(actions);
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

          mediaProfiles = [v11 mediaProfiles];
          [v2 unionSet:mediaProfiles];
        }
      }

      v5 = [actions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  actions = [self actions];
  v4 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(actions);
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

          mediaProfiles = [v11 mediaProfiles];
          [v2 unionSet:mediaProfiles];
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

          mediaProfiles = [v11 lightProfile];
          [v2 na_safeAddObject:mediaProfiles];
        }
      }

      v5 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  actions = [self actions];
  v4 = [actions countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          characteristic = [v8 characteristic];
          service = [characteristic service];
          [v2 na_safeAddObject:service];

          characteristic2 = [v8 characteristic];
          service2 = [characteristic2 service];

          if (!service2)
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
      v5 = [actions countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)hf_affectsServiceWithIdentifier:()HFAdditions
{
  v4 = a3;
  hf_affectedServices = [self hf_affectedServices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HMActionSet_HFAdditions__hf_affectsServiceWithIdentifier___block_invoke;
  v10[3] = &unk_277DFC668;
  v11 = v4;
  v6 = v4;
  v7 = [hf_affectedServices objectsPassingTest:v10];

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
  actions = [self actions];
  v4 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          characteristic = [v8 characteristic];
          service = [characteristic service];
          [v2 na_safeAddObject:service];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            characteristic = [v8 mediaProfiles];
            [v2 unionSet:characteristic];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            characteristic = [v8 lightProfile];
            [v2 na_safeAddObject:characteristic];
          }
        }
      }

      v5 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_isAnonymous
{
  actionSetType = [self actionSetType];
  if ([actionSetType isEqualToString:*MEMORY[0x277CCF1A0]])
  {
    v3 = 1;
  }

  else
  {
    name = [self name];
    if ([name hasPrefix:@"HFAnonymous "])
    {
      v3 = 1;
    }

    else
    {
      actionSetType2 = [self actionSetType];
      v3 = [actionSetType2 isEqualToString:*MEMORY[0x277CCF190]];
    }
  }

  return v3;
}

- (uint64_t)hf_isVisible
{
  if ([self hf_isAnonymous])
  {
    return 0;
  }

  actions = [self actions];
  v2 = [actions hmf_isEmpty] ^ 1;

  return v2;
}

- (uint64_t)hf_requiresDeviceUnlock
{
  actions = [self actions];
  v2 = [actions na_any:&__block_literal_global_21_4];

  return v2;
}

- (float)hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup:()HFAdditions
{
  v4 = a3;
  hf_affectedAccessoryRepresentableObjects = [self hf_affectedAccessoryRepresentableObjects];
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
  [hf_affectedAccessoryRepresentableObjects na_each:&v10];
  if ([hf_affectedAccessoryRepresentableObjects count])
  {
    v7 = v17[3];
    v8 = v7 / [hf_affectedAccessoryRepresentableObjects count];
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
  applicationData = [self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];

  applicationData2 = [self applicationData];
  v5 = [applicationData2 objectForKeyedSubscript:@"HFApplicationDataActionSetIconImageIdentifierKey"];

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

  v6 = [self hf_mapOldIconIdentifierToNewSystemIconIdentifier:v3];

  if ([(__CFString *)v6 hasPrefix:@"HFImageIconIdentifier"])
  {
    NSLog(&cfstr_ExpectedIconId.isa, v6);
  }

  if (!v6)
  {
LABEL_9:
    v7 = objc_opt_class();
    actionSetType = [self actionSetType];
    v6 = [v7 hf_standardSystemIconIdentifierForActionSetType:actionSetType];

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
  _hf_iconIdentifier = [self _hf_iconIdentifier];
  if (_hf_iconIdentifier)
  {
    hf_iconTintColor = [self hf_iconTintColor];
    if (hf_iconTintColor)
    {
      v4 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:hf_iconTintColor];
      v5 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:_hf_iconIdentifier configuration:v4];
    }

    else
    {
      v5 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:_hf_iconIdentifier];
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
  applicationData = [self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"HFAppDataActionSetIconTintColor"];

  if (v3)
  {
    _hf_iconIdentifier = [[HFColorPaletteColor alloc] initWithDictionaryRepresentation:v3];
    [(HFColorPaletteColor *)_hf_iconIdentifier UIColor];
  }

  else
  {
    _hf_iconIdentifier = [self _hf_iconIdentifier];
    [self hf_standardIconTintColorForIconIdentifier:_hf_iconIdentifier];
  }
  systemOrangeColor = ;

  if (!systemOrangeColor)
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  }

  return systemOrangeColor;
}

- (id)hf_setIconIdentifier:()HFAdditions andTintColor:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  actionSetType = [self actionSetType];
  v10 = [v8 hf_standardSystemIconIdentifierForActionSetType:actionSetType];

  applicationData = [self applicationData];
  v12 = [applicationData objectForKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];

  if (v12 || ([v10 isEqualToString:v6] & 1) == 0)
  {
    applicationData2 = [self applicationData];
    [applicationData2 setObject:v6 forKeyedSubscript:@"HFAppDataActionSetIconImageIdentifier_v2"];
  }

  if (v7)
  {
    v14 = [[HFColorPaletteColor alloc] initWithUIColor:v7];
    v15 = [(HFColorPaletteColor *)v14 dictionaryRepresentationWithPreferredPaletteType:0];
    applicationData3 = [self applicationData];
    [applicationData3 setObject:v15 forKeyedSubscript:@"HFAppDataActionSetIconTintColor"];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HMActionSet_HFAdditions__hf_setIconIdentifier_andTintColor___block_invoke;
  v19[3] = &unk_277DF2C68;
  v19[4] = self;
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
  actions = [self actions];
  v2 = [actions na_firstObjectPassingTest:&__block_literal_global_72_1];

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
  hf_shortcutAction = [self hf_shortcutAction];
  v2 = hf_shortcutAction != 0;

  return v2;
}

@end