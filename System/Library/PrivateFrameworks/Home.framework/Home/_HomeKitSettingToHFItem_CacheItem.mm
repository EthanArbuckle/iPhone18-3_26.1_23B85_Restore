@interface _HomeKitSettingToHFItem_CacheItem
+ (BOOL)_checkSettingGroupForSettingsThatNeedToBeDisplayed:(id)displayed usageOptions:(id)options settingGroup:(id)group;
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldBeDisplayed;
- (HFItem)outputItem;
- (NSString)cacheKey;
- (NSString)description;
- (NSString)keyPath;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options accessoryGroupEntity:(id)entity;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options group:(id)group;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting;
- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting optionItem:(id)item;
- (unint64_t)hash;
@end

@implementation _HomeKitSettingToHFItem_CacheItem

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting optionItem:(id)item
{
  itemCopy = item;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)self initWithHomeKitSettingsVendor:vendor usageOptions:options setting:setting];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_optionItem, item);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting
{
  vendorCopy = vendor;
  optionsCopy = options;
  settingCopy = setting;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_singleSetting, setting);
    objc_storeStrong(&v13->_homeKitSettingsVendor, vendor);
    objc_storeStrong(&v13->_usageOptions, options);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options group:(id)group
{
  vendorCopy = vendor;
  optionsCopy = options;
  groupCopy = group;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_settingGroup, group);
    objc_storeStrong(&v13->_homeKitSettingsVendor, vendor);
    objc_storeStrong(&v13->_usageOptions, options);
  }

  return v13;
}

- (_HomeKitSettingToHFItem_CacheItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options accessoryGroupEntity:(id)entity
{
  vendorCopy = vendor;
  optionsCopy = options;
  entityCopy = entity;
  v15.receiver = self;
  v15.super_class = _HomeKitSettingToHFItem_CacheItem;
  v12 = [(_HomeKitSettingToHFItem_CacheItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryGroupEntity, entity);
    objc_storeStrong(&v13->_homeKitSettingsVendor, vendor);
    objc_storeStrong(&v13->_usageOptions, options);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  keyPath = [(_HomeKitSettingToHFItem_CacheItem *)self keyPath];
  [v3 appendString:keyPath withName:@"keyPath"];

  homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  v6 = [v3 appendObject:homeKitSettingsVendor withName:@"homeKitSettingsVendor"];

  optionItem = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
  v8 = [v3 appendObject:optionItem withName:@"optionItem" skipIfNil:1];

  settingGroup = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
  v10 = [v3 appendObject:settingGroup withName:@"settingGroup" skipIfNil:1];

  singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  v12 = [v3 appendObject:singleSetting withName:@"singleSetting" skipIfNil:1];

  accessoryGroupEntity = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
  v14 = [v3 appendObject:accessoryGroupEntity withName:@"accessoryGroupEntity" skipIfNil:1];

  usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
  v16 = [v3 appendObject:usageOptions withName:@"usageOptions" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (NSString)cacheKey
{
  settingGroup = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];

  if (settingGroup)
  {
    settingGroup2 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
LABEL_9:
    currentHandler = settingGroup2;
    v10 = _HomeKitSettingToHFItem_CacheItemCacheKey(settingGroup2);
    goto LABEL_10;
  }

  singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

  if (singleSetting)
  {
    settingGroup2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    goto LABEL_9;
  }

  accessoryGroupEntity = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];

  if (accessoryGroupEntity)
  {
    settingGroup2 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    goto LABEL_9;
  }

  optionItem = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

  if (optionItem)
  {
    settingGroup2 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingsItemProvider.m" lineNumber:193 description:@"CacheKey cannot be nil!"];
  v10 = &stru_2824B1A78;
LABEL_10:

  return v10;
}

- (NSString)keyPath
{
  optionItem = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

  if (optionItem)
  {
    v4 = MEMORY[0x277CCACA8];
    singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    keyPath = [singleSetting keyPath];
    optionItem2 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
    title = [optionItem2 title];
    keyPath4 = [v4 stringWithFormat:@"%@.%@", keyPath, title];
  }

  else
  {
    singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    keyPath2 = [singleSetting keyPath];
    if (keyPath2)
    {
      keyPath = keyPath2;
      keyPath4 = keyPath;
    }

    else
    {
      settingGroup = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
      keyPath3 = [settingGroup keyPath];
      v13 = keyPath3;
      if (keyPath3)
      {
        keyPath4 = keyPath3;
      }

      else
      {
        singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
        keyPath4 = [singleSetting2 keyPath];
      }

      keyPath = 0;
    }
  }

  return keyPath4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

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
  homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  isContainedWithinItemGroup = [homeKitSettingsVendor isContainedWithinItemGroup];

  homeKitSettingsVendor2 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
  isItemGroup = [homeKitSettingsVendor2 isItemGroup];

  if ((isContainedWithinItemGroup & 1) != 0 || isItemGroup)
  {
    accessoryGroupEntity = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    adapterIdentifier = [accessoryGroupEntity adapterIdentifier];

    if (!adapterIdentifier)
    {
      goto LABEL_20;
    }

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v10 homeManager];
    if ([homeManager hasOptedToHH2])
    {
      accessoryGroupEntity2 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
      adapterIdentifier2 = [accessoryGroupEntity2 adapterIdentifier];
      v14 = [adapterIdentifier2 isEqualToString:@"SiriLanguageAdapter"];

      if (v14)
      {
        homeKitSettingsVendor3 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
        if ([homeKitSettingsVendor3 conformsToProtocol:&unk_282584A38])
        {
          v16 = homeKitSettingsVendor3;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        hf_siriLanguageOptionsManager = [v17 hf_siriLanguageOptionsManager];

        if (hf_siriLanguageOptionsManager)
        {
          accessoryGroupEntity4 = hf_siriLanguageOptionsManager;

LABEL_17:
          accessoryGroupEntity3 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
          v7 = [accessoryGroupEntity4 shouldShowSettingsEntity:accessoryGroupEntity3];
LABEL_18:

LABEL_40:
          return v7;
        }

        [0 conformsToProtocol:&unk_282536168];
LABEL_20:
        settingGroup = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
        if (settingGroup)
        {
        }

        else
        {
          singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

          if (singleSetting)
          {
            v30 = 0;
          }

          else
          {
            v30 = isItemGroup;
          }

          if (v30 == 1)
          {
            accessoryGroupEntity4 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
            alwaysShowGroup = [accessoryGroupEntity4 alwaysShowGroup];
            goto LABEL_35;
          }
        }

        objc_opt_class();
        singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
        if (objc_opt_isKindOfClass())
        {
          v33 = singleSetting2;
        }

        else
        {
          v33 = 0;
        }

        accessoryGroupEntity4 = v33;

        if (accessoryGroupEntity4)
        {
          v34 = isContainedWithinItemGroup;
        }

        else
        {
          v34 = 0;
        }

        if (v34 != 1)
        {
          if (!isContainedWithinItemGroup || ([(_HomeKitSettingToHFItem_CacheItem *)self settingGroup], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
          {
            v7 = 1;
            goto LABEL_40;
          }

          accessoryGroupEntity3 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
          v36 = objc_opt_class();
          homeKitSettingsVendor4 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
          usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
          v7 = [v36 _checkSettingGroupForSettingsThatNeedToBeDisplayed:homeKitSettingsVendor4 usageOptions:usageOptions settingGroup:accessoryGroupEntity3];

          goto LABEL_18;
        }

        alwaysShowGroup = [accessoryGroupEntity4 isReflected];
LABEL_35:
        v7 = alwaysShowGroup ^ 1;
        goto LABEL_40;
      }
    }

    else
    {
    }

    homeKitSettingsVendor5 = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor5 hf_settingsAdapterManager];
    accessoryGroupEntity5 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    adapterIdentifier3 = [accessoryGroupEntity5 adapterIdentifier];
    v24 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier3];

    accessoryGroupEntity4 = v24;
    if ([accessoryGroupEntity4 conformsToProtocol:&unk_282536168])
    {
      v25 = accessoryGroupEntity4;
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

+ (BOOL)_checkSettingGroupForSettingsThatNeedToBeDisplayed:(id)displayed usageOptions:(id)options settingGroup:(id)group
{
  v66 = *MEMORY[0x277D85DE8];
  displayedCopy = displayed;
  optionsCopy = options;
  groupCopy = group;
  settings = [displayedCopy settings];
  hf_codex = [settings hf_codex];

  keyPath = [groupCopy keyPath];
  v14 = [hf_codex hf_nodeWithKeyPath:keyPath];

  v55 = displayedCopy;
  [HFAccessorySettingsItemProvider buildItemTuplesForHomeKitSettings:displayedCopy usageOptions:optionsCopy settingGroup:groupCopy underNode:v14 cache:0];
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
  selfCopy = self;
  v56 = *v58;
  v53 = optionsCopy;
  v51 = hf_codex;
  v52 = groupCopy;
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
      singleSetting = [v18 singleSetting];
      if (objc_opt_isKindOfClass())
      {
        v20 = singleSetting;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21 && ![v21 isReflected])
      {
        v43 = 1;
        groupCopy = v52;
        optionsCopy = v53;
        hf_codex = v51;
LABEL_45:
        v14 = v50;

        goto LABEL_46;
      }

      accessoryGroupEntity = [v18 accessoryGroupEntity];
      adapterIdentifier = [accessoryGroupEntity adapterIdentifier];

      if (adapterIdentifier)
      {
        v24 = +[HFHomeKitDispatcher sharedDispatcher];
        homeManager = [v24 homeManager];
        if ([homeManager hasOptedToHH2])
        {
          accessoryGroupEntity2 = [v18 accessoryGroupEntity];
          adapterIdentifier2 = [accessoryGroupEntity2 adapterIdentifier];
          v28 = [adapterIdentifier2 isEqualToString:@"SiriLanguageAdapter"];

          if (v28)
          {
            v29 = &unk_282584A38;
            hf_settingsAdapterManager = v55;
            if ([hf_settingsAdapterManager conformsToProtocol:v29])
            {
              v31 = hf_settingsAdapterManager;
            }

            else
            {
              v31 = 0;
            }

            v32 = v31;

            hf_siriLanguageOptionsManager = [v32 hf_siriLanguageOptionsManager];
            accessoryGroupEntity5 = hf_siriLanguageOptionsManager;
            if (hf_siriLanguageOptionsManager)
            {
              v35 = hf_siriLanguageOptionsManager;
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
                    accessoryGroupEntity3 = [v18 accessoryGroupEntity];
                    *buf = 138412546;
                    v62 = accessoryGroupEntity3;
                    v63 = 2112;
                    v64 = v32;
                    _os_log_impl(&dword_20D9BF000, v44, OS_LOG_TYPE_DEFAULT, "Hiding language setting entity %@ for %@", buf, 0x16u);
                  }

                  v43 = 0;
LABEL_43:
                  optionsCopy = v53;
                  goto LABEL_44;
                }

                goto LABEL_28;
              }
            }

            hf_settingsAdapterManager = 0;
LABEL_28:
            v39 = accessoryGroupEntity5;
LABEL_29:

            if (v39)
            {
              accessoryGroupEntity4 = [v18 accessoryGroupEntity];
              v41 = [v39 shouldShowSettingsEntity:accessoryGroupEntity4];

              if (v41)
              {
                v43 = 1;
                accessoryGroupEntity5 = v39;
                goto LABEL_43;
              }
            }

            goto LABEL_32;
          }
        }

        else
        {
        }

        hf_settingsAdapterManager = [v55 hf_settingsAdapterManager];
        accessoryGroupEntity5 = [v18 accessoryGroupEntity];
        adapterIdentifier3 = [accessoryGroupEntity5 adapterIdentifier];
        v37 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier3];
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
      settingGroup = [v18 settingGroup];

      if (settingGroup)
      {
        accessoryGroupEntity5 = [v18 settingGroup];
        optionsCopy = v53;
        v43 = [selfCopy _checkSettingGroupForSettingsThatNeedToBeDisplayed:v55 usageOptions:v53 settingGroup:accessoryGroupEntity5];
LABEL_44:
        hf_codex = v51;
        groupCopy = v52;

        goto LABEL_45;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    v43 = 0;
    groupCopy = v52;
    optionsCopy = v53;
    v14 = v50;
    hf_codex = v51;
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

  singleSetting = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  if (singleSetting)
  {
    v5 = singleSetting;
    optionItem = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];

    if (optionItem)
    {
      v7 = [HFAccessorySettingOptionItem alloc];
      homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
      usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
      singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
      optionItem2 = [(_HomeKitSettingToHFItem_CacheItem *)self optionItem];
      v12 = [(HFAccessorySettingOptionItem *)v7 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions setting:singleSetting2 optionItem:optionItem2];
      v13 = self->_outputItem;
      self->_outputItem = v12;

LABEL_16:
      goto LABEL_17;
    }
  }

  singleSetting3 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [HFAccessorySettingGroupItem alloc];
    homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    v18 = [(HFAccessorySettingGroupItem *)v17 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions selectionSetting:singleSetting2];
LABEL_15:
    optionItem2 = self->_outputItem;
    self->_outputItem = v18;
    goto LABEL_16;
  }

  singleSetting4 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];

  if (singleSetting4)
  {
    v20 = [HFAccessorySettingItem alloc];
    homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self singleSetting];
    v18 = [(HFAccessorySettingItem *)v20 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions setting:singleSetting2];
    goto LABEL_15;
  }

  settingGroup = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];

  if (settingGroup)
  {
    v22 = [HFAccessorySettingGroupItem alloc];
    homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self settingGroup];
    v18 = [(HFAccessorySettingGroupItem *)v22 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions group:singleSetting2];
    goto LABEL_15;
  }

  accessoryGroupEntity = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];

  if (accessoryGroupEntity)
  {
    v24 = [HFAccessorySettingGroupItem alloc];
    homeKitSettingsVendor = [(_HomeKitSettingToHFItem_CacheItem *)self homeKitSettingsVendor];
    usageOptions = [(_HomeKitSettingToHFItem_CacheItem *)self usageOptions];
    singleSetting2 = [(_HomeKitSettingToHFItem_CacheItem *)self accessoryGroupEntity];
    v18 = [(HFAccessorySettingGroupItem *)v24 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions entity:singleSetting2];
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