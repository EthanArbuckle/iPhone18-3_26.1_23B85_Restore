@interface HUQuickControlGridCollectionItemManager
+ (BOOL)isPrimaryOrBinaryStateControlItem:(id)item;
+ (unint64_t)preferredControlForControlItem:(id)item allControlItems:(id)items isSupplementary:(BOOL)supplementary;
+ (unint64_t)specialCaseSectionSortingForControlItem:(id)item quickControlContext:(id)context fromControlItems:(id)items primaryServiceType:(id)type;
- (BOOL)_catchAllLayoutForGridViewProfiles:(id)profiles supplementaryViewProfiles:(id)viewProfiles;
- (HUQuickControlGridCollectionItemManager)initWithDelegate:(id)delegate controlItems:(id)items;
- (HUQuickControlGridCollectionItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_composeIdentifierForService:(id)service section:(unint64_t)section;
- (id)_findAndRemoveMediaAlarmsAndTimerItemsFromSection:(id)section;
- (id)_findAndRemoveMediaControlItemsFromSection:(id)section;
- (id)_generateQuickControlGroupContextForControlItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)configuration;
- (id)headerAccessoryButtonTargetForSection:(unint64_t)section;
- (id)headerAccessoryButtonTitleForSection:(unint64_t)section;
- (id)quickControlContextForItem:(id)item;
- (id)titleForItem:(id)item;
- (void)_addMediaAlarmsAndTimers:(id)timers toSections:(id)sections;
- (void)tearDown;
- (void)updateSettingValue:(id)value forKeyPath:(id)path;
@end

@implementation HUQuickControlGridCollectionItemManager

- (HUQuickControlGridCollectionItemManager)initWithDelegate:(id)delegate controlItems:(id)items
{
  itemsCopy = items;
  v22.receiver = self;
  v22.super_class = HUQuickControlGridCollectionItemManager;
  v7 = [(HFItemManager *)&v22 initWithDelegate:delegate sourceItem:0];
  if (v7)
  {
    v8 = [itemsCopy na_map:&__block_literal_global_57];
    controlItems = v7->_controlItems;
    v7->_controlItems = v8;

    v10 = [itemsCopy na_firstObjectPassingTest:&__block_literal_global_3_1];
    v11 = [v10 copy];
    accessoryControlItem = v7->_accessoryControlItem;
    v7->_accessoryControlItem = v11;

    mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    controlItemToQuickControlContextTable = v7->_controlItemToQuickControlContextTable;
    v7->_controlItemToQuickControlContextTable = mapTableWithWeakToStrongObjects;

    objc_opt_class();
    delegate = [(HFItemManager *)v7 delegate];
    if (objc_opt_isKindOfClass())
    {
      v16 = delegate;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    view = [v17 view];

    v7->_isRTL = [view effectiveUserInterfaceLayoutDirection] == 1;
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v7];
  }

  return v7;
}

id __73__HUQuickControlGridCollectionItemManager_initWithDelegate_controlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

uint64_t __73__HUQuickControlGridCollectionItemManager_initWithDelegate_controlItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HUQuickControlGridCollectionItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_controlItems_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlGridCollectionItemManager.m" lineNumber:88 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlGridCollectionItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (void)tearDown
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
  [accessorySettingsDataSource removeObserver:self];
}

- (id)configuration
{
  v3 = [HUQuickControlViewControllerConfiguration alloc];
  home = [(HFItemManager *)self home];
  v5 = [(HUQuickControlViewControllerConfiguration *)v3 initWithHome:home];

  [(HUQuickControlViewControllerConfiguration *)v5 setCopyItems:0];
  delegate = [(HFItemManager *)self delegate];
  if ([delegate conformsToProtocol:&unk_28251F4B0])
  {
    v7 = delegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(HUQuickControlViewControllerConfiguration *)v5 setItemUpdater:v8];

  return v5;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  accessoryControlItem = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];

  if (accessoryControlItem)
  {
    accessoryControlItem2 = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];
    valueSource = [accessoryControlItem2 valueSource];
    v8ValueSource = [valueSource valueSource];

    v10 = objc_alloc(MEMORY[0x277D142E8]);
    accessoryControlItem3 = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];
    accessory = [accessoryControlItem3 accessory];
    v13 = [v10 initWithAccessory:accessory valueSource:v8ValueSource];

    v14 = [objc_alloc(MEMORY[0x277D142B0]) initWithAccessoryItem:v13];
    [(HUQuickControlGridCollectionItemManager *)self setControlItemProvider:v14];

    accessoryControlItem4 = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];
    v16 = [accessoryControlItem4 copy];

    v17 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:homeCopy];
    [(HUQuickControlGridCollectionItemManager *)self setServiceItemProvider:v17];

    serviceItemProvider = [(HUQuickControlGridCollectionItemManager *)self serviceItemProvider];
    [serviceItemProvider setValueSource:v8ValueSource];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__HUQuickControlGridCollectionItemManager__buildItemProvidersForHome___block_invoke;
    v27[3] = &unk_277DB9780;
    v28 = v16;
    v19 = v16;
    serviceItemProvider2 = [(HUQuickControlGridCollectionItemManager *)self serviceItemProvider];
    [serviceItemProvider2 setSourceServiceGenerator:v27];
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277D14B40]);
    controlItems = [(HUQuickControlGridCollectionItemManager *)self controlItems];
    v23 = [v21 initWithItems:controlItems];
    [(HUQuickControlGridCollectionItemManager *)self setControlItemProvider:v23];
  }

  controlItemProvider = [(HUQuickControlGridCollectionItemManager *)self controlItemProvider];
  [v5 na_safeAddObject:controlItemProvider];

  serviceItemProvider3 = [(HUQuickControlGridCollectionItemManager *)self serviceItemProvider];
  [v5 na_safeAddObject:serviceItemProvider3];

  return v5;
}

id __70__HUQuickControlGridCollectionItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 hf_visibleServices];
  v4 = [v1 futureWithResult:v3];

  return v4;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v163 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controlItemProvider = [(HUQuickControlGridCollectionItemManager *)self controlItemProvider];
  items = [controlItemProvider items];
  v7 = [items na_setByIntersectingWithSet:itemsCopy];

  serviceItemProvider = [(HUQuickControlGridCollectionItemManager *)self serviceItemProvider];
  items2 = [serviceItemProvider items];
  v133 = itemsCopy;
  v10 = [items2 na_setByIntersectingWithSet:itemsCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  allObjects = [v13 allObjects];
  serviceItemComparator = [objc_opt_class() serviceItemComparator];
  v16 = [allObjects sortedArrayUsingComparator:serviceItemComparator];

  v17 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v20 = [MEMORY[0x277CCA940] setWithCapacity:{objc_msgSend(v13, "count")}];
  v21 = [MEMORY[0x277CCA940] setWithCapacity:{objc_msgSend(v13, "count")}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke;
  aBlock[3] = &unk_277DBA6F0;
  aBlock[4] = self;
  v131 = array;
  v158 = v131;
  v137 = v20;
  v159 = v137;
  v136 = v21;
  v160 = v136;
  v22 = _Block_copy(aBlock);
  accessoryControlItem = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];

  v140 = v22;
  v141 = v19;
  selfCopy = self;
  v134 = v13;
  v135 = v7;
  v132 = v16;
  if (accessoryControlItem)
  {
    accessoryControlItem2 = [(HUQuickControlGridCollectionItemManager *)self accessoryControlItem];
    accessory = [accessoryControlItem2 accessory];
    hf_primaryService = [accessory hf_primaryService];

    serviceType = [hf_primaryService serviceType];
    controlItemProvider2 = [(HUQuickControlGridCollectionItemManager *)self controlItemProvider];
    items3 = [controlItemProvider2 items];

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    obj = v16;
    v30 = [obj countByEnumeratingWithState:&v153 objects:v162 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v154;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v154 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v153 + 1) + 8 * i);
          v35 = [(HFItemManager *)selfCopy childItemsForItem:v34 ofClass:objc_opt_class()];
          v36 = [(HUQuickControlGridCollectionItemManager *)selfCopy _generateQuickControlGroupContextForControlItems:v35];
          v37 = (v140)[2](v140, v36, v35, serviceType, items3, v34);
          [v141 addObject:v37];
        }

        v31 = [obj countByEnumeratingWithState:&v153 objects:v162 count:16];
      }

      while (v31);
    }

    v38 = [(HUQuickControlGridCollectionItemManager *)selfCopy _catchAllLayoutForGridViewProfiles:v137 supplementaryViewProfiles:v136];
    v7 = v135;
    v19 = v141;
    v17 = 0x277CBE000;
  }

  else
  {
    hf_primaryService = [(HUQuickControlGridCollectionItemManager *)self _generateQuickControlGroupContextForControlItems:v7];
    serviceType = (*(v22 + 2))(v22, hf_primaryService, v7, 0, 0, 0);
    [v19 addObject:serviceType];
    v38 = 0;
  }

  obja = [*(v17 + 2840) array];
  if (!v38)
  {
    array2 = [*(v17 + 2840) array];
    array3 = [*(v17 + 2840) array];
    v146[0] = MEMORY[0x277D85DD0];
    v146[1] = 3221225472;
    v146[2] = __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_4;
    v146[3] = &unk_277DBA718;
    v76 = array2;
    v147 = v76;
    v139 = array3;
    v148 = v139;
    [v19 na_each:v146];
    v142 = v76;
    if ([v76 count])
    {
      v77 = [v76 na_firstObjectPassingTest:&__block_literal_global_86];
      valueSource = [v77 valueSource];
      allServices = [valueSource allServices];
      anyObject = [allServices anyObject];

      accessory2 = [anyObject accessory];
      hf_siriEndpointProfile = [accessory2 hf_siriEndpointProfile];

      v83 = hf_siriEndpointProfile != 0;
      v84 = selfCopy;
      if (hf_siriEndpointProfile)
      {
        accessory3 = [anyObject accessory];
        -[HUQuickControlGridCollectionItemManager setIsSpeakerAccessory:](selfCopy, "setIsSpeakerAccessory:", [accessory3 hf_isDumbSpeaker]);

        if (![(HUQuickControlGridCollectionItemManager *)selfCopy isSpeakerAccessory])
        {
          airPlayEnabledSettingNumberValue = [(HUQuickControlGridCollectionItemManager *)selfCopy airPlayEnabledSettingNumberValue];

          if (!airPlayEnabledSettingNumberValue)
          {
            accessory4 = [anyObject accessory];
            mediaProfile = [accessory4 mediaProfile];
            hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

            v90 = [hf_mediaAccessoryCommonSettingsManager settingValueForKeyPath:*MEMORY[0x277D133A0]];
            [(HUQuickControlGridCollectionItemManager *)selfCopy setAirPlayEnabledSettingNumberValue:v90];
          }
        }

        v91 = [v76 na_filter:&__block_literal_global_88_0];
        mediaControlItems = [(HUQuickControlGridCollectionItemManager *)selfCopy mediaControlItems];

        if (!mediaControlItems)
        {
          [(HUQuickControlGridCollectionItemManager *)selfCopy setMediaControlItems:v91];
        }

        [v76 removeObjectsInArray:v91];
      }

      v93 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"grid"];
      [v93 setItems:v76];
      [obja addObject:v93];
    }

    else
    {
      v83 = 0;
      v84 = selfCopy;
    }

    v103 = [(HUQuickControlGridCollectionItemManager *)v84 _mediaAlarmsAndTimerItemsFromControlItems:v139];
    v104 = v84;
    v105 = v103;
    mediaControlItems2 = [(HUQuickControlGridCollectionItemManager *)v104 mediaControlItems];
    v107 = [mediaControlItems2 count];

    v108 = 0;
    if (v83 && v107)
    {
      v109 = objc_alloc(MEMORY[0x277D14850]);
      v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"Media-%@", @"grid"];
      v108 = [v109 initWithIdentifier:v110];

      [v108 setItems:MEMORY[0x277CBEBF8]];
      if (-[HUQuickControlGridCollectionItemManager isSpeakerAccessory](selfCopy, "isSpeakerAccessory") || (-[HUQuickControlGridCollectionItemManager airPlayEnabledSettingNumberValue](selfCopy, "airPlayEnabledSettingNumberValue"), v111 = objc_claimAutoreleasedReturnValue(), v112 = [v111 BOOLValue], v111, v112))
      {
        v113 = _HULocalizedStringWithDefaultValue(@"HUMediaSectionTitle", @"HUMediaSectionTitle", 1);
        mediaControlItems3 = [(HUQuickControlGridCollectionItemManager *)selfCopy mediaControlItems];
        [v108 setItems:mediaControlItems3];
      }

      else
      {
        v113 = 0;
      }

      [v108 setHeaderTitle:v113];
      [obja addObject:v108];
    }

    if ([v105 count])
    {
      [v139 removeObjectsInArray:v105];
      [(HUQuickControlGridCollectionItemManager *)selfCopy _addMediaAlarmsAndTimers:v105 toSections:obja];
    }

    v94 = v141;
    if (![v139 count])
    {
      goto LABEL_87;
    }

    v118 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"supplementary"];
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v120 = [v139 sortedArrayUsingComparator:defaultItemComparator];
    [v118 setItems:v120];

    if ([(HUQuickControlGridCollectionItemManager *)selfCopy isSpeakerAccessory])
    {
      v121 = [obja indexOfObject:v108];
    }

    else
    {
      airPlayEnabledSettingNumberValue2 = [(HUQuickControlGridCollectionItemManager *)selfCopy airPlayEnabledSettingNumberValue];
      if ([airPlayEnabledSettingNumberValue2 BOOLValue])
      {
        v121 = [obja indexOfObject:v108];
      }

      else
      {
        v121 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v94 = v141;
    }

    if (v121 != 0x7FFFFFFFFFFFFFFFLL && v83)
    {
      v124 = obja;
      v125 = v118;
      v126 = v121;
    }

    else
    {
      if ([obja count] < 2)
      {
        [obja addObject:v118];
        goto LABEL_86;
      }

      v124 = obja;
      v125 = v118;
      v126 = 1;
    }

    [v124 insertObject:v125 atIndex:v126];
LABEL_86:

LABEL_87:
    v95 = v147;
LABEL_88:
    v115 = v132;
    goto LABEL_89;
  }

  accessoryControlItem3 = [(HUQuickControlGridCollectionItemManager *)selfCopy accessoryControlItem];
  accessory5 = [accessoryControlItem3 accessory];
  hf_primaryService2 = [accessory5 hf_primaryService];

  accessory6 = [hf_primaryService2 accessory];
  hf_siriEndpointProfile2 = [accessory6 hf_siriEndpointProfile];

  accessory7 = [hf_primaryService2 accessory];
  -[HUQuickControlGridCollectionItemManager setIsSpeakerAccessory:](selfCopy, "setIsSpeakerAccessory:", [accessory7 hf_isDumbSpeaker]);

  if (![(HUQuickControlGridCollectionItemManager *)selfCopy isSpeakerAccessory])
  {
    airPlayEnabledSettingNumberValue3 = [(HUQuickControlGridCollectionItemManager *)selfCopy airPlayEnabledSettingNumberValue];

    if (!airPlayEnabledSettingNumberValue3)
    {
      accessory8 = [hf_primaryService2 accessory];
      mediaProfile2 = [accessory8 mediaProfile];
      hf_mediaAccessoryCommonSettingsManager2 = [mediaProfile2 hf_mediaAccessoryCommonSettingsManager];

      v49 = [hf_mediaAccessoryCommonSettingsManager2 settingValueForKeyPath:*MEMORY[0x277D133A0]];
      [(HUQuickControlGridCollectionItemManager *)selfCopy setAirPlayEnabledSettingNumberValue:v49];
    }
  }

  v130 = hf_primaryService2;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v138 = v19;
  v50 = [v138 countByEnumeratingWithState:&v149 objects:v161 count:16];
  if (v50)
  {
    v51 = v50;
    v139 = 0;
    v142 = 0;
    v52 = *v150;
    v53 = selfCopy;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v150 != v52)
        {
          objc_enumerationMutation(v138);
        }

        v55 = *(*(&v149 + 1) + 8 * j);
        serviceItem = [v55 serviceItem];
        service = [serviceItem service];

        if (hf_siriEndpointProfile2)
        {
          v58 = v142;
          if (!v142)
          {
            v58 = [(HUQuickControlGridCollectionItemManager *)v53 _findAndRemoveMediaControlItemsFromSection:v55];
          }

          v142 = v58;
          if (!v139)
          {
            v139 = [(HUQuickControlGridCollectionItemManager *)v53 _findAndRemoveMediaAlarmsAndTimerItemsFromSection:v55];
          }
        }

        gridControlItems = [v55 gridControlItems];
        v60 = [gridControlItems count];

        if (v60)
        {
          v61 = objc_alloc(MEMORY[0x277D14850]);
          v62 = [(HUQuickControlGridCollectionItemManager *)v53 _composeIdentifierForService:service section:1];
          v63 = [v61 initWithIdentifier:v62];

          gridControlItems2 = [v55 gridControlItems];
          [v63 setItems:gridControlItems2];

          if (hf_siriEndpointProfile2 && [obja count])
          {
            serviceItem2 = [v55 serviceItem];
            namingComponentForHomeKitObject = [serviceItem2 namingComponentForHomeKitObject];
            name = [namingComponentForHomeKitObject name];
            [v63 setHeaderTitle:name];

            v53 = selfCopy;
          }

          [obja addObject:v63];
        }

        supplementaryControlItems = [v55 supplementaryControlItems];
        v69 = [supplementaryControlItems count];

        if (v69)
        {
          v70 = objc_alloc(MEMORY[0x277D14850]);
          v71 = [(HUQuickControlGridCollectionItemManager *)v53 _composeIdentifierForService:service section:2];
          v72 = [v70 initWithIdentifier:v71];

          supplementaryControlItems2 = [v55 supplementaryControlItems];
          [v72 setItems:supplementaryControlItems2];

          [obja addObject:v72];
        }
      }

      v51 = [v138 countByEnumeratingWithState:&v149 objects:v161 count:16];
    }

    while (v51);
  }

  else
  {
    v139 = 0;
    v142 = 0;
    v53 = selfCopy;
  }

  v13 = v134;
  v7 = v135;
  v94 = v141;
  v95 = v130;
  if ([v142 count] && hf_siriEndpointProfile2)
  {
    v96 = objc_alloc(MEMORY[0x277D14850]);
    v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"Media-%@", @"grid"];
    v98 = [v96 initWithIdentifier:v97];

    [v98 setItems:v142];
    [v98 setItems:MEMORY[0x277CBEBF8]];
    if (-[HUQuickControlGridCollectionItemManager isSpeakerAccessory](v53, "isSpeakerAccessory") || (-[HUQuickControlGridCollectionItemManager airPlayEnabledSettingNumberValue](v53, "airPlayEnabledSettingNumberValue"), v99 = objc_claimAutoreleasedReturnValue(), v100 = [v99 BOOLValue], v99, v100))
    {
      v101 = _HULocalizedStringWithDefaultValue(@"HUMediaSectionTitle", @"HUMediaSectionTitle", 1);
      if (v142)
      {
        [(HUQuickControlGridCollectionItemManager *)v53 setMediaControlItems:?];
      }

      mediaControlItems4 = [(HUQuickControlGridCollectionItemManager *)v53 mediaControlItems];
      [v98 setItems:mediaControlItems4];
    }

    else
    {
      v101 = 0;
    }

    [v98 setHeaderTitle:v101];
    [obja addObject:v98];
  }

  if (!v139)
  {
    goto LABEL_88;
  }

  v115 = v132;
  if (hf_siriEndpointProfile2)
  {
    v116 = v53;
    v117 = obja;
    [HUQuickControlGridCollectionItemManager _addMediaAlarmsAndTimers:v116 toSections:"_addMediaAlarmsAndTimers:toSections:"];
    goto LABEL_90;
  }

LABEL_89:
  v117 = obja;
LABEL_90:

  if ([v131 count])
  {
    v127 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"sensors"];
    v128 = [v131 sortedArrayUsingComparator:&__block_literal_global_92];
    [v127 setItems:v128];

    [v117 addObject:v127];
  }

  return v117;
}

HUQuickControlGridServiceSection *__76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a2;
  v15 = [a3 allObjects];
  v16 = [MEMORY[0x277D145C8] hf_controlItemComparator];
  v17 = [v15 sortedArrayUsingComparator:v16];

  v18 = [v14 primaryQuickControlContext];
  v19 = [v14 alternateQuickControlContexts];

  v20 = [MEMORY[0x277CBEB58] na_setWithSafeObject:v18];
  [v20 unionSet:v19];
  v21 = objc_alloc_init(HUQuickControlGridServiceSection);
  [(HUQuickControlGridServiceSection *)v21 setServiceItem:v13];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
  v31[3] = &unk_277DBA6C8;
  v22 = *(a1 + 32);
  v32 = v20;
  v33 = v22;
  v34 = v17;
  v35 = v12;
  v36 = v11;
  v23 = v21;
  v37 = v23;
  v38 = *(a1 + 40);
  v39 = *(a1 + 48);
  v40 = *(a1 + 56);
  v24 = v11;
  v25 = v12;
  v26 = v17;
  v27 = v20;
  [v26 na_each:v31];
  v28 = v40;
  v29 = v23;

  return v23;
}

void __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D137F8]];
  v6 = [v5 unsignedIntegerValue];

  v7 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v28[3] = &unk_277DBA6A0;
  v8 = v3;
  v29 = v8;
  v9 = [v7 na_firstObjectPassingTest:v28];
  if (v9)
  {
    v10 = [*(a1 + 40) controlItemToQuickControlContextTable];
    [v10 setObject:v9 forKey:v8];

    v11 = [v8 valueSource];
    v12 = [v11 allServices];

    if ([v12 count] == 1)
    {
      v13 = [v12 anyObject];
      v14 = [v13 isPrimaryService];

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }

    v16 = [*(a1 + 48) indexOfObject:v8];
    v17 = [objc_opt_class() specialCaseSectionSortingForControlItem:v8 quickControlContext:v9 fromControlItems:*(a1 + 56) primaryServiceType:*(a1 + 64)];
    if (v17 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v6 >> 2) & 1;
    }

    v19 = 1;
    if (v15 && (v6 & 2) == 0)
    {
      if (v16)
      {
        v20 = v17 == 1;
      }

      else
      {
        v20 = 1;
      }

      v19 = v20;
    }

    if (v18)
    {
      v21 = *(a1 + 72);
    }

    else
    {
      if (v17 == 3)
      {
        [*(a1 + 80) addObject:v8];
        v24 = 0;
        v23 = 0;
        goto LABEL_23;
      }

      v21 = *(a1 + 72);
      if (v19)
      {
        v25 = [v21 gridControlItems];
        [v25 addObject:v8];

        v24 = 0;
        v23 = 1;
        goto LABEL_23;
      }
    }

    v22 = [v21 supplementaryControlItems];
    [v22 addObject:v8];

    v23 = 0;
    v24 = 1;
LABEL_23:
    [v9 setPreferredControl:{objc_msgSend(objc_opt_class(), "preferredControlForControlItem:allControlItems:isSupplementary:", v8, *(a1 + 56), v24)}];
    if ((v24 & 1) != 0 || v23)
    {
      v26 = 96;
      if (v23)
      {
        v26 = 88;
      }

      [*(a1 + v26) na_safeAddObject:{objc_msgSend(v9, "viewProfileClass")}];
    }

    v27 = [objc_msgSend(v9 "viewProfileClass")];
    if (v27)
    {
      if ([*(a1 + 64) isEqualToString:*MEMORY[0x277CD0F30]])
      {
LABEL_33:

        goto LABEL_34;
      }

      v27 = [*(a1 + 64) isEqualToString:*MEMORY[0x277CD0E60]];
    }

    if (((v23 | v27) & 1) == 0)
    {
      [v9 setControlOrientation:1];
    }

    goto LABEL_33;
  }

LABEL_34:
}

uint64_t __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 controlItems];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 gridControlItems];
  v6 = [MEMORY[0x277D14778] defaultItemComparator];
  v7 = [v5 sortedArrayUsingComparator:v6];
  [v3 addObjectsFromArray:v7];

  v8 = *(a1 + 40);
  v11 = [v4 supplementaryControlItems];

  v9 = [MEMORY[0x277D14778] defaultItemComparator];
  v10 = [v11 sortedArrayUsingComparator:v9];
  [v8 addObjectsFromArray:v10];
}

BOOL __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueSource];
  v3 = [v2 allServices];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __76__HUQuickControlGridCollectionItemManager__buildSectionsWithDisplayedItems___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 latestResults];
  v13 = *MEMORY[0x277D13F28];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F28]];
  v15 = [v14 localizedLowercaseString];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2823E0EE8;
  }

  v18 = v17;

  v19 = [v11 latestResults];
  v20 = [v19 objectForKeyedSubscript:v13];
  v21 = [v20 localizedLowercaseString];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_2823E0EE8;
  }

  v24 = v23;

  v25 = [(__CFString *)v18 compare:v24];
  return v25;
}

- (id)_itemsToHideInSet:(id)set
{
  v11.receiver = self;
  v11.super_class = HUQuickControlGridCollectionItemManager;
  v4 = [(HFItemManager *)&v11 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  mediaControlItems = [(HUQuickControlGridCollectionItemManager *)self mediaControlItems];
  if (mediaControlItems)
  {
    mediaControlItems2 = mediaControlItems;
    airPlayEnabledSettingNumberValue = [(HUQuickControlGridCollectionItemManager *)self airPlayEnabledSettingNumberValue];
    if ([airPlayEnabledSettingNumberValue BOOLValue])
    {
    }

    else
    {
      isSpeakerAccessory = [(HUQuickControlGridCollectionItemManager *)self isSpeakerAccessory];

      if (isSpeakerAccessory)
      {
        goto LABEL_7;
      }

      mediaControlItems2 = [(HUQuickControlGridCollectionItemManager *)self mediaControlItems];
      [v5 addObjectsFromArray:mediaControlItems2];
    }
  }

LABEL_7:

  return v5;
}

- (id)_generateQuickControlGroupContextForControlItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    configuration = [(HUQuickControlGridCollectionItemManager *)self configuration];
    v6 = [MEMORY[0x277D145C8] hu_preferredQuickControlGroupContextForControlItems:itemsCopy configuration:configuration ignoringGrid:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addMediaAlarmsAndTimers:(id)timers toSections:(id)sections
{
  v41 = *MEMORY[0x277D85DE8];
  timersCopy = timers;
  sectionsCopy = sections;
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if ([mEMORY[0x277D14670] hostProcess] == 100)
  {
    v33 = 1;
  }

  else
  {
    mEMORY[0x277D14670]2 = [MEMORY[0x277D14670] sharedInstance];
    v33 = [mEMORY[0x277D14670]2 hostProcess] == 3;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = timersCopy;
  v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v31 = *MEMORY[0x277D13950];
    v32 = *v36;
    v30 = *MEMORY[0x277D139F0];
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v14 = v31;
        if ((isKindOfClass & 1) == 0)
        {
          v14 = v30;
        }

        v15 = MEMORY[0x277D14850];
        v16 = v14;
        v17 = [[v15 alloc] initWithIdentifier:v16];

        v18 = MEMORY[0x277CCA898];
        v19 = _HULocalizedStringWithDefaultValue(@"HUQuickControlAlarmsDetailsButtonTitle", @"HUQuickControlAlarmsDetailsButtonTitle", 1);
        v20 = [v18 hf_attributedStringWithSystemImageNamed:@"alarm.fill" title:v19 isRTL:{-[HUQuickControlGridCollectionItemManager isRTL](self, "isRTL")}];

        v21 = MEMORY[0x277CCA898];
        v22 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTimersDetailsButtonTitle", @"HUQuickControlTimersDetailsButtonTitle", 1);
        v23 = [v21 hf_attributedStringWithSystemImageNamed:@"timer" title:v22 isRTL:{-[HUQuickControlGridCollectionItemManager isRTL](self, "isRTL")}];
        v24 = v23;
        if (isKindOfClass)
        {
          v25 = v20;
        }

        else
        {
          v25 = v23;
        }

        [v17 setAttributedHeaderTitle:v25];
        if (!v33 || [MEMORY[0x277D14CE8] isDeviceUnlocked])
        {
          if (isKindOfClass)
          {
            v26 = @"HUHomePodAlarmsNew";
          }

          else
          {
            v26 = @"HUHomePodTimersNew";
          }

          v27 = _HULocalizedStringWithDefaultValue(v26, v26, 1);
          [v17 setHeaderAccessoryButtonTitle:v27];
        }

        v39 = v12;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        [v17 setItems:v28];

        [sectionsCopy addObject:v17];
        ++v11;
      }

      while (v10 != v11);
      v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }
}

uint64_t __85__HUQuickControlGridCollectionItemManager__mediaAlarmsAndTimerItemsFromControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    objc_opt_class();
    LOBYTE(v4) = objc_opt_isKindOfClass();
  }

  v5 = isKindOfClass | v4;

  return v5 & 1;
}

- (id)_findAndRemoveMediaControlItemsFromSection:(id)section
{
  sectionCopy = section;
  gridControlItems = [sectionCopy gridControlItems];
  v5 = [gridControlItems na_filter:&__block_literal_global_128];

  if (![v5 count])
  {
    supplementaryControlItems = [sectionCopy supplementaryControlItems];
    v7 = [supplementaryControlItems na_filter:&__block_literal_global_130];

    v5 = v7;
  }

  if ([v5 count])
  {
    gridControlItems2 = [sectionCopy gridControlItems];
    [gridControlItems2 removeObjectsInArray:v5];

    supplementaryControlItems2 = [sectionCopy supplementaryControlItems];
    [supplementaryControlItems2 removeObjectsInArray:v5];
  }

  if ([v5 count])
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t __86__HUQuickControlGridCollectionItemManager__findAndRemoveMediaControlItemsFromSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __86__HUQuickControlGridCollectionItemManager__findAndRemoveMediaControlItemsFromSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_findAndRemoveMediaAlarmsAndTimerItemsFromSection:(id)section
{
  sectionCopy = section;
  gridControlItems = [sectionCopy gridControlItems];
  v6 = [(HUQuickControlGridCollectionItemManager *)self _mediaAlarmsAndTimerItemsFromControlItems:gridControlItems];

  if (![v6 count])
  {
    supplementaryControlItems = [sectionCopy supplementaryControlItems];
    v8 = [(HUQuickControlGridCollectionItemManager *)self _mediaAlarmsAndTimerItemsFromControlItems:supplementaryControlItems];

    v6 = v8;
  }

  if (v6)
  {
    gridControlItems2 = [sectionCopy gridControlItems];
    [gridControlItems2 removeObjectsInArray:v6];

    supplementaryControlItems2 = [sectionCopy supplementaryControlItems];
    [supplementaryControlItems2 removeObjectsInArray:v6];
  }

  if ([v6 count])
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)quickControlContextForItem:(id)item
{
  itemCopy = item;
  controlItemToQuickControlContextTable = [(HUQuickControlGridCollectionItemManager *)self controlItemToQuickControlContextTable];
  v6 = [controlItemToQuickControlContextTable objectForKey:itemCopy];

  return v6;
}

- (id)titleForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];
    v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  else
  {
    controlItemProvider = [(HUQuickControlGridCollectionItemManager *)self controlItemProvider];
    items = [controlItemProvider items];
    v9 = [items containsObject:itemCopy];

    if (!v9)
    {
      v6 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    v10 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    latestResults = v11;

    valueSource = [latestResults valueSource];
    allServices = [valueSource allServices];

    v6 = 0;
    if ([allServices count] == 1)
    {
      anyObject = [allServices anyObject];
      serviceItemProvider = [(HUQuickControlGridCollectionItemManager *)self serviceItemProvider];
      items2 = [serviceItemProvider items];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__HUQuickControlGridCollectionItemManager_titleForItem___block_invoke;
      v24[3] = &unk_277DBA780;
      v17 = anyObject;
      v25 = v17;
      v18 = [items2 na_firstObjectPassingTest:v24];

      v19 = v18;
      if ([v19 conformsToProtocol:&unk_28251B048])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21)
      {
        namingComponentForHomeKitObject = [v21 namingComponentForHomeKitObject];

        [namingComponentForHomeKitObject name];
      }

      else
      {
        namingComponentForHomeKitObject = [v19 latestResults];
        [namingComponentForHomeKitObject objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      }
      v6 = ;
    }
  }

LABEL_18:

  return v6;
}

uint64_t __56__HUQuickControlGridCollectionItemManager_titleForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 services];
  v8 = [v7 containsObject:*(a1 + 32)];

  return v8;
}

- (id)headerAccessoryButtonTitleForSection:(unint64_t)section
{
  v3 = [(HFItemManager *)self itemSectionForSectionIndex:section];
  headerAccessoryButtonTitle = [v3 headerAccessoryButtonTitle];

  return headerAccessoryButtonTitle;
}

- (id)headerAccessoryButtonTargetForSection:(unint64_t)section
{
  v3 = [(HFItemManager *)self itemSectionForSectionIndex:section];
  headerAccessoryButtonDelegate = [v3 headerAccessoryButtonDelegate];

  return headerAccessoryButtonDelegate;
}

+ (unint64_t)preferredControlForControlItem:(id)item allControlItems:(id)items isSupplementary:(BOOL)supplementary
{
  itemCopy = item;
  allObjects = [items allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HUQuickControlGridCollectionItemManager_preferredControlForControlItem_allControlItems_isSupplementary___block_invoke;
  v13[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8l;
  v13[4] = self;
  v10 = [allObjects na_filter:v13];

  LODWORD(self) = [objc_opt_class() isPrimaryOrBinaryStateControlItem:itemCopy];
  if (!self || (v11 = 1, [v10 count] <= 2) && !supplementary)
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __106__HUQuickControlGridCollectionItemManager_preferredControlForControlItem_allControlItems_isSupplementary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() isPrimaryOrBinaryStateControlItem:v2];

  return v3;
}

+ (BOOL)isPrimaryOrBinaryStateControlItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    possibleValueSet = [v6 possibleValueSet];
    allValues = [possibleValueSet allValues];
    v9 = [allValues count] == 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 conformsToProtocol:&unk_2825BD600] | v9;

  return v10 & 1;
}

+ (unint64_t)specialCaseSectionSortingForControlItem:(id)item quickControlContext:(id)context fromControlItems:(id)items primaryServiceType:(id)type
{
  contextCopy = context;
  itemsCopy = items;
  typeCopy = type;
  valueSource = [item valueSource];
  allServices = [valueSource allServices];

  if ([allServices count] != 1)
  {
    serviceType = 0;
    goto LABEL_7;
  }

  anyObject = [allServices anyObject];
  serviceType = [anyObject serviceType];

  v16 = 0;
  if (typeCopy && serviceType)
  {
    if ([objc_msgSend(contextCopy "quickControlClass")])
    {
      v16 = 3;
      goto LABEL_8;
    }

    hf_fanServiceTypes = [MEMORY[0x277CD1D90] hf_fanServiceTypes];
    v19 = [hf_fanServiceTypes containsObject:typeCopy];

    if (v19)
    {
      v20 = [serviceType isEqualToString:*MEMORY[0x277CD0EA0]];
      v21 = [objc_msgSend(contextCopy "quickControlClass")];
      v22 = [itemsCopy na_any:&__block_literal_global_149];
      if (v20 & v21) == 1 && (v22)
      {
        v16 = 2;
        goto LABEL_8;
      }

      if (!(v22 & 1 | ((v20 & v21 & 1) == 0)))
      {
        v16 = 1;
        goto LABEL_8;
      }
    }

LABEL_7:
    v16 = 0;
  }

LABEL_8:

  return v16;
}

uint64_t __139__HUQuickControlGridCollectionItemManager_specialCaseSectionSortingForControlItem_quickControlContext_fromControlItems_primaryServiceType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 allCharacteristicTypes];
  v4 = [v3 containsObject:*MEMORY[0x277CCFA18]];

  return v4;
}

- (BOOL)_catchAllLayoutForGridViewProfiles:(id)profiles supplementaryViewProfiles:(id)viewProfiles
{
  profilesCopy = profiles;
  viewProfilesCopy = viewProfiles;
  v7 = [profilesCopy countForObject:objc_opt_class()];
  v8 = [profilesCopy countForObject:objc_opt_class()];
  v9 = [profilesCopy countForObject:objc_opt_class()];
  v10 = [viewProfilesCopy countForObject:objc_opt_class()];
  v11 = [viewProfilesCopy countForObject:objc_opt_class()];
  v12 = [viewProfilesCopy countForObject:objc_opt_class()];
  if (v9)
  {
    LODWORD(v9) = [profilesCopy count] != v9;
  }

  if (v8 < 2)
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [profilesCopy count] > 1;
  if (v11)
  {
LABEL_7:
    LODWORD(v11) = [viewProfilesCopy count] != v11;
  }

LABEL_8:
  if (v10)
  {
    v14 = [viewProfilesCopy count] != v10;
    if (v12)
    {
LABEL_10:
      v15 = [viewProfilesCopy count] != v12;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_13:
  v17 = v7 > 2 || v10 > 1;
  v18 = ((v17 | v9 | v14 | v11) & 1) != 0 || v13 || v15;

  return v18 & 1;
}

- (id)_composeIdentifierForService:(id)service section:(unint64_t)section
{
  v5 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [service uniqueIdentifier];
  v7 = uniqueIdentifier;
  v8 = HUQuickControlCollectionItemGridSectionID;
  if (section != 1)
  {
    v8 = HUQuickControlCollectionItemSupplementarySectionID;
  }

  v9 = [v5 stringWithFormat:@"%@-%@", uniqueIdentifier, *v8];

  return v9;
}

uint64_t __64__HUQuickControlGridCollectionItemManager_serviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 service];
  v7 = [v6 isPrimaryService];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [v5 service];
    v10 = [v9 isPrimaryService];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v11 = [v4 service];
      v12 = [v11 name];
      v13 = [v5 service];
      v14 = [v13 name];
      v8 = [v12 compare:v14];
    }
  }

  return v8;
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  if ([path isEqualToString:*MEMORY[0x277D133A0]])
  {
    [(HUQuickControlGridCollectionItemManager *)self setAirPlayEnabledSettingNumberValue:valueCopy];
    v7 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

@end