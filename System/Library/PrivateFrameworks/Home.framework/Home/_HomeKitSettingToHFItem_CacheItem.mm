@interface _HomeKitSettingToHFItem_CacheItem
+ (BOOL)_checkSettingGroupForSettingsThatNeedToBeDisplayed:(id)a3 usageOptions:(id)a4 settingGroup:(id)a5;
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldBeDisplayed;
- (HFItem)outputItem;
- (NSString)cacheKey;
- (NSString)description;
- (NSString)keyPath;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 accessoryGroupEntity:(id)a5;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 group:(id)a5;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5 optionItem:(id)a6;
- (unint64_t)hash;
@end

@implementation _HomeKitSettingToHFItem_CacheItem

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5 optionItem:(id)a6
{
  v11 = a6;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)self initWithHomeKitSettingsVendor:a3 usageOptions:a4 setting:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_optionItem, a6);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_singleSetting, a5);
    objc_storeStrong(&v13->_homeKitSettingsVendor, a3);
    objc_storeStrong(&v13->_usageOptions, a4);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 group:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_settingGroup, a5);
    objc_storeStrong(&v13->_homeKitSettingsVendor, a3);
    objc_storeStrong(&v13->_usageOptions, a4);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 accessoryGroupEntity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryGroupEntity, a5);
    objc_storeStrong(&v13->_homeKitSettingsVendor, a3);
    objc_storeStrong(&v13->_usageOptions, a4);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(_HomeKitSettingToHFItem_CacheItem *)self keyPath];
  [v3 appendString:v4 withName:@"keyPath"];

  v5 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  v6 = [v3 appendObject:v5 withName:@"homeKitSettingsVendor"];

  v7 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
  v8 = [v3 appendObject:v7 withName:@"optionItem" skipIfNil:1];

  v9 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
  v10 = [v3 appendObject:v9 withName:@"settingGroup" skipIfNil:1];

  v11 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  v12 = [v3 appendObject:v11 withName:@"singleSetting" skipIfNil:1];

  v13 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
  v14 = [v3 appendObject:v13 withName:@"accessoryGroupEntity" skipIfNil:1];

  v15 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
  v16 = [v3 appendObject:v15 withName:@"usageOptions" skipIfNil:1];

  v17 = [v3 build];

  return v17;
}

- (NSString)cacheKey
{
  v4 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];

  if (v4)
  {
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
LABEL_9:
    v9 = v5;
    v10 = _HomeKitSettingToHFItem_CacheItemCacheKey(v5);
    goto LABEL_10;
  }

  v6 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

  if (v6)
  {
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    goto LABEL_9;
  }

  v7 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];

  if (v7)
  {
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    goto LABEL_9;
  }

  v8 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

  if (v8)
  {
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
    goto LABEL_9;
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingsItemProvider.m" lineNumber:193 description:@"CacheKey cannot be nil!"];
  v10 = &stru_2824B1A78;
LABEL_10:

  return v10;
}

- (NSString)keyPath
{
  v3 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    v6 = [v5 keyPath];
    v7 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
    v8 = [v7 title];
    v9 = [v4 stringWithFormat:@"%@.%@", v6, v8];
  }

  else
  {
    v5 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    v10 = [v5 keyPath];
    if (v10)
    {
      v6 = v10;
      v9 = v6;
    }

    else
    {
      v11 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
      v12 = [v11 keyPath];
      v13 = v12;
      if (v12)
      {
        v9 = v12;
      }

      else
      {
        v14 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
        v9 = [v14 keyPath];
      }

      v6 = 0;
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_2_0 != -1)
  {
    dispatch_once(&_MergedGlobals_2_0, &__block_literal_global_55_1);
  }

  v3 = qword_280E025C8;

  return v3;
}

- (BOOL)shouldBeDisplayed
{
  v3 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  v4 = [v3 isContainedWithinItemGroup];

  v5 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  v6 = [v5 isItemGroup];

  if ((v4 & 1) != 0 || v6)
  {
    v8 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    v9 = [v8 adapterIdentifier];

    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = [v10 homeManager];
    if ([v11 hasOptedToHH2])
    {
      v12 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
      v13 = [v12 adapterIdentifier];
      v14 = [v13 isEqualToString:@"SiriLanguageAdapter"];

      if (v14)
      {
        v15 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
        if ([v15 conformsToProtocol:&unk_282584A38])
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 hf_siriLanguageOptionsManager];

        if (v18)
        {
          v19 = v18;

LABEL_17:
          v27 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
          v7 = [v19 shouldShowSettingsEntity:v27];
LABEL_18:

LABEL_40:
          return v7;
        }

        [0 conformsToProtocol:&unk_282536168];
LABEL_20:
        v28 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
        if (v28)
        {
        }

        else
        {
          v29 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

          if (v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = v6;
          }

          if (v30 == 1)
          {
            v19 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
            v31 = [v19 alwaysShowGroup];
            goto LABEL_35;
          }
        }

        objc_opt_class();
        v32 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v19 = v33;

        if (v19)
        {
          v34 = v4;
        }

        else
        {
          v34 = 0;
        }

        if (v34 != 1)
        {
          if (!v4 || ([(_HomeKitSettingToHFItem_CacheItem *)self settingGroup], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
          {
            v7 = 1;
            goto LABEL_40;
          }

          v27 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
          v36 = objc_opt_class();
          v37 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
          v38 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
          v7 = [v36 _checkSettingGroupForSettingsThatNeedToBeDisplayed:v37 usageOptions:v38 settingGroup:v27];

          goto LABEL_18;
        }

        v31 = [v19 isReflected];
LABEL_35:
        v7 = v31 ^ 1;
        goto LABEL_40;
      }
    }

    else
    {
    }

    v20 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    v21 = [v20 hf_settingsAdapterManager];
    v22 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    v23 = [v22 adapterIdentifier];
    v24 = [v21 adapterForIdentifier:v23];

    v19 = v24;
    if ([v19 conformsToProtocol:&unk_282536168])
    {
      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (v26)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  return 1;
}

+ (BOOL)_checkSettingGroupForSettingsThatNeedToBeDisplayed:(id)a3 usageOptions:(id)a4 settingGroup:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 settings];
  v12 = [v11 hf_codex];

  v13 = [v10 keyPath];
  v14 = [v12 hf_nodeWithKeyPath:v13];

  v55 = v8;
  [HFAccessorySettingsItemProvider buildItemTuplesForHomeKitSettings:v8 usageOptions:v9 settingGroup:v10 underNode:v14 cache:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v15 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v15)
  {
    v43 = 0;
    goto LABEL_46;
  }

  v16 = v15;
  v49 = a1;
  v56 = *v58;
  v53 = v9;
  v51 = v12;
  v52 = v10;
  v50 = v14;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v58 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v57 + 1) + 8 * i);
      objc_opt_class();
      v19 = [v18 singleSetting];
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21 && ![v21 isReflected])
      {
        v43 = 1;
        v10 = v52;
        v9 = v53;
        v12 = v51;
LABEL_45:
        v14 = v50;

        goto LABEL_46;
      }

      v22 = [v18 accessoryGroupEntity];
      v23 = [v22 adapterIdentifier];

      if (v23)
      {
        v24 = +[HFHomeKitDispatcher sharedDispatcher];
        v25 = [v24 homeManager];
        if ([v25 hasOptedToHH2])
        {
          v26 = [v18 accessoryGroupEntity];
          v27 = [v26 adapterIdentifier];
          v28 = [v27 isEqualToString:@"SiriLanguageAdapter"];

          if (v28)
          {
            v29 = &unk_282584A38;
            v30 = v55;
            if ([v30 conformsToProtocol:v29])
            {
              v31 = v30;
            }

            else
            {
              v31 = 0;
            }

            v32 = v31;

            v33 = [v32 hf_siriLanguageOptionsManager];
            v34 = v33;
            if (v33)
            {
              v35 = v33;
              if (v32)
              {
                goto LABEL_19;
              }
            }

            else
            {
              [0 conformsToProtocol:&unk_282536168];
              if (v32)
              {
LABEL_19:
                if ([HFMediaHelper isContainedWithinAGroup:v32])
                {
                  v44 = HFLogForCategory(0);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    v46 = [v18 accessoryGroupEntity];
                    *buf = 138412546;
                    v62 = v46;
                    v63 = 2112;
                    v64 = v32;
                    _os_log_impl(&dword_20D9BF000, v44, OS_LOG_TYPE_DEFAULT, "Hiding language setting entity %@ for %@", buf, 0x16u);
                  }

                  v43 = 0;
LABEL_43:
                  v9 = v53;
                  goto LABEL_44;
                }

                goto LABEL_28;
              }
            }

            v30 = 0;
LABEL_28:
            v39 = v34;
LABEL_29:

            if (v39)
            {
              v40 = [v18 accessoryGroupEntity];
              v41 = [v39 shouldShowSettingsEntity:v40];

              if (v41)
              {
                v43 = 1;
                v34 = v39;
                goto LABEL_43;
              }
            }

            goto LABEL_32;
          }
        }

        else
        {
        }

        v30 = [v55 hf_settingsAdapterManager];
        v34 = [v18 accessoryGroupEntity];
        v36 = [v34 adapterIdentifier];
        v37 = [v30 adapterForIdentifier:v36];
        if ([v37 conformsToProtocol:&unk_282536168])
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        goto LABEL_29;
      }

LABEL_32:
      v42 = [v18 settingGroup];

      if (v42)
      {
        v34 = [v18 settingGroup];
        v9 = v53;
        v43 = [v49 _checkSettingGroupForSettingsThatNeedToBeDisplayed:v55 usageOptions:v53 settingGroup:v34];
LABEL_44:
        v12 = v51;
        v10 = v52;

        goto LABEL_45;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    v43 = 0;
    v10 = v52;
    v9 = v53;
    v14 = v50;
    v12 = v51;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v47 = *MEMORY[0x277D85DE8];
  return v43;
}

- (HFItem)outputItem
{
  outputItem = self->_outputItem;
  if (outputItem)
  {
    goto LABEL_18;
  }

  if (![(_HomeKitSettingToHFItem_CacheItem *)self shouldBeDisplayed])
  {
    v14 = 0;
    goto LABEL_19;
  }

  v4 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  if (v4)
  {
    v5 = v4;
    v6 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

    if (v6)
    {
      v7 = [HFAccessorySettingOptionItem alloc];
      v8 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
      v9 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
      v10 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
      v11 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
      v12 = [(HFAccessorySettingOptionItem *)v7 initWithHomeKitSettingsVendor:v8 usageOptions:v9 setting:v10 optionItem:v11];
      v13 = self->_outputItem;
      self->_outputItem = v12;

LABEL_16:
      goto LABEL_17;
    }
  }

  v15 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [HFAccessorySettingGroupItem alloc];
    v8 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    v9 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    v10 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    v18 = [(HFAccessorySettingGroupItem *)v17 initWithHomeKitSettingsVendor:v8 usageOptions:v9 selectionSetting:v10];
LABEL_15:
    v11 = self->_outputItem;
    self->_outputItem = v18;
    goto LABEL_16;
  }

  v19 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

  if (v19)
  {
    v20 = [HFAccessorySettingItem alloc];
    v8 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    v9 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    v10 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    v18 = [(HFAccessorySettingItem *)v20 initWithHomeKitSettingsVendor:v8 usageOptions:v9 setting:v10];
    goto LABEL_15;
  }

  v21 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];

  if (v21)
  {
    v22 = [HFAccessorySettingGroupItem alloc];
    v8 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    v9 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    v10 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
    v18 = [(HFAccessorySettingGroupItem *)v22 initWithHomeKitSettingsVendor:v8 usageOptions:v9 group:v10];
    goto LABEL_15;
  }

  v23 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];

  if (v23)
  {
    v24 = [HFAccessorySettingGroupItem alloc];
    v8 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    v9 = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    v10 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    v18 = [(HFAccessorySettingGroupItem *)v24 initWithHomeKitSettingsVendor:v8 usageOptions:v9 entity:v10];
    goto LABEL_15;
  }

LABEL_17:
  outputItem = self->_outputItem;
LABEL_18:
  v14 = outputItem;
LABEL_19:

  return v14;
}

@end