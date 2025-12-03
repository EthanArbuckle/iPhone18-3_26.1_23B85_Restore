@interface HUFirmwareUpdateItemProvider
+ (id)itemComparator;
- (HUFirmwareUpdateItemProvider)init;
- (HUFirmwareUpdateItemProvider)initWithHome:(id)home style:(unint64_t)style;
- (id)_effectiveFilter;
- (id)_instructionsItemResultsWithSampleLinkedApplicationItem:(id)item numberOfLinkedApplicationItems:(int64_t)items;
- (id)_localizedDescriptionForAppName:(id)name accessoriesWithFirmwareUpdates:(id)updates visibleAccessoryTileDisplayNames:(id)names;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
- (void)setFilter:(id)filter;
@end

@implementation HUFirmwareUpdateItemProvider

+ (id)itemComparator
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D14CE8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 comparatorWithSortedClasses:v3 secondaryComparator:&__block_literal_global_270];

  return v4;
}

uint64_t __46__HUFirmwareUpdateItemProvider_itemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v8 = [v4 latestResults];

  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v7 localizedStandardCompare:v9];

  return v10;
}

- (HUFirmwareUpdateItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_style_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFirmwareUpdateItemProvider.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HUFirmwareUpdateItemProvider init]", v5}];

  return 0;
}

- (HUFirmwareUpdateItemProvider)initWithHome:(id)home style:(unint64_t)style
{
  homeCopy = home;
  v26.receiver = self;
  v26.super_class = HUFirmwareUpdateItemProvider;
  v8 = [(HFItemProvider *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v9->_style = style;
    v10 = [[HULinkedApplicationItemProvider alloc] initWithHome:homeCopy];
    _effectiveFilter = [(HUFirmwareUpdateItemProvider *)v9 _effectiveFilter];
    [(HULinkedApplicationItemProvider *)v10 setFilter:_effectiveFilter];

    v12 = [MEMORY[0x277CBEB98] set];
    linkedApplicationItems = v9->_linkedApplicationItems;
    v9->_linkedApplicationItems = v12;

    if ([(HUFirmwareUpdateItemProvider *)v9 style]== 2)
    {
      objc_initWeak(&location, v9);
      v14 = objc_alloc(MEMORY[0x277D14C38]);
      v15 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke;
      v23[3] = &unk_277DC3ED8;
      objc_copyWeak(&v24, &location);
      v16 = [v14 initWithSourceProvider:v10 transformationBlock:v23];
      v17 = 64;
    }

    else
    {
      objc_storeStrong(&v9->_linkedApplicationItemProvider, v10);
      objc_initWeak(&location, v9);
      v18 = [HUInstructionsItem alloc];
      v15 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_4;
      v21[3] = &unk_277DB7448;
      objc_copyWeak(&v22, &location);
      v16 = [(HFStaticItem *)v18 initWithResultsBlock:v21];
      v17 = 48;
    }

    v19 = *(&v9->super.super.isa + v17);
    *(&v9->super.super.isa + v17) = v16;

    objc_destroyWeak(v15 + 4);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_2;
  v7[3] = &unk_277DC37E0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = [v4 initWithSourceItem:v3 transformationBlock:v7];
  objc_destroyWeak(&v8);

  return v5;
}

id __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];
  v6 = [v3 objectForKeyedSubscript:@"HFResultApplicationAssociatedAccessories"];
  v7 = [v6 na_map:&__block_literal_global_17_0];
  v8 = [v7 na_setByFlattening];

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v10 = &stru_2823E0EE8;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = [WeakRetained _localizedDescriptionForAppName:v11 accessoriesWithFirmwareUpdates:v6 visibleAccessoryTileDisplayNames:v8];

  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13E20]];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v13 = [WeakRetained home];
  LODWORD(v11) = [v13 hf_currentUserIsRestrictedGuest];

  if (v11)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  return v5;
}

id __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_4(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained linkedApplicationItems];
    v5 = [v4 anyObject];
    v6 = [v5 copy];

    v7 = [v3 linkedApplicationItems];
    v8 = [v3 _instructionsItemResultsWithSampleLinkedApplicationItem:v6 numberOfLinkedApplicationItems:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v15 = *MEMORY[0x277D13FB8];
    v16[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v9 futureWithResult:v10];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_5;
  v13[3] = &unk_277DBB720;
  objc_copyWeak(&v14, (a1 + 32));
  v11 = [v8 flatMap:v13];
  objc_destroyWeak(&v14);

  return v11;
}

id __51__HUFirmwareUpdateItemProvider_initWithHome_style___block_invoke_5(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v11[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v7 = [WeakRetained home];
  v8 = [v7 hf_currentUserIsRestrictedGuest];

  if (v8)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v9 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUFirmwareUpdateItemProvider *)self home];
  v6 = [v4 initWithHome:home style:{-[HUFirmwareUpdateItemProvider style](self, "style")}];

  return v6;
}

- (id)reloadItems
{
  linkedApplicationItemProvider = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItemProvider];
  reloadItems = [linkedApplicationItemProvider reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HUFirmwareUpdateItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DB7F80;
  v7[4] = self;
  v5 = [reloadItems flatMap:v7];

  return v5;
}

id __43__HUFirmwareUpdateItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = [v3 allItems];

  [*(a1 + 32) setLinkedApplicationItems:v5];
  if ([*(a1 + 32) style] != 2)
  {
    if ([*(a1 + 32) hasProvidedInstructionsItem])
    {
      v6 = [v4 existingItems];
      v7 = [*(a1 + 32) instructionsItem];
      v8 = [v6 setByAddingObject:v7];
      [v4 setExistingItems:v8];
    }

    else
    {
      v6 = [v4 addedItems];
      v7 = [*(a1 + 32) instructionsItem];
      v8 = [v6 setByAddingObject:v7];
      [v4 setAddedItems:v8];
    }

    [*(a1 + 32) setHasProvidedInstructionsItem:1];
  }

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

- (id)items
{
  if ([(HUFirmwareUpdateItemProvider *)self style]== 2 || ![(HUFirmwareUpdateItemProvider *)self hasProvidedInstructionsItem])
  {
    linkedApplicationItems = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItems];
  }

  else
  {
    linkedApplicationItems2 = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItems];
    instructionsItem = [(HUFirmwareUpdateItemProvider *)self instructionsItem];
    linkedApplicationItems = [linkedApplicationItems2 setByAddingObject:instructionsItem];
  }

  return linkedApplicationItems;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUFirmwareUpdateItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B40];
  v8[0] = *MEMORY[0x277D13B28];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

- (void)setFilter:(id)filter
{
  v4 = [filter copy];
  filter = self->_filter;
  self->_filter = v4;

  objc_opt_class();
  linkedApplicationItemProvider = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v6 = linkedApplicationItemProvider;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    linkedApplicationItemProvider2 = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItemProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      linkedApplicationItemProvider3 = [(HUFirmwareUpdateItemProvider *)self linkedApplicationItemProvider];
      objc_opt_class();
      sourceProvider = [linkedApplicationItemProvider3 sourceProvider];
      if (objc_opt_isKindOfClass())
      {
        v12 = sourceProvider;
      }

      else
      {
        v12 = 0;
      }

      linkedApplicationItemProvider = v12;
    }

    else
    {
      linkedApplicationItemProvider = 0;
    }
  }

  _effectiveFilter = [(HUFirmwareUpdateItemProvider *)self _effectiveFilter];
  [linkedApplicationItemProvider setFilter:_effectiveFilter];
}

- (id)_effectiveFilter
{
  filter = [(HUFirmwareUpdateItemProvider *)self filter];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HUFirmwareUpdateItemProvider__effectiveFilter__block_invoke;
  aBlock[3] = &unk_277DC3F00;
  v7 = filter;
  v3 = filter;
  v4 = _Block_copy(aBlock);

  return v4;
}

uint64_t __48__HUFirmwareUpdateItemProvider__effectiveFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && !(*(v4 + 16))(v4, v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isFirmwareUpdateAvailable];
  }

  return v5;
}

- (id)_localizedDescriptionForAppName:(id)name accessoriesWithFirmwareUpdates:(id)updates visibleAccessoryTileDisplayNames:(id)names
{
  nameCopy = name;
  updatesCopy = updates;
  namesCopy = names;
  style = [(HUFirmwareUpdateItemProvider *)self style];
  if (style == 2)
  {
    goto LABEL_4;
  }

  if (style != 1)
  {
    if (style)
    {
      v13 = 0;
      goto LABEL_35;
    }

LABEL_4:
    if ([nameCopy length] && objc_msgSend(namesCopy, "count") == 1)
    {
      [MEMORY[0x277D14CE8] isAMac];
      anyObject = [namesCopy anyObject];
      v23 = anyObject;
      v24 = nameCopy;
LABEL_33:
      v13 = HFLocalizedStringWithFormat();

      goto LABEL_35;
    }

    if (![nameCopy length] || objc_msgSend(namesCopy, "count") < 2)
    {
      if (![nameCopy length] && objc_msgSend(namesCopy, "count") == 1 && objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
      {
        anyObject = [namesCopy anyObject];
        v23 = anyObject;
        goto LABEL_33;
      }

      if (![nameCopy length] && objc_msgSend(namesCopy, "count") >= 2 && objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (![nameCopy length] || objc_msgSend(updatesCopy, "count") != 1)
  {
    if (![nameCopy length] || objc_msgSend(updatesCopy, "count") < 2)
    {
      if (![nameCopy length] && objc_msgSend(updatesCopy, "count") == 1 && objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
      {
        v23 = nameCopy;
        goto LABEL_34;
      }

      if (![nameCopy length] && objc_msgSend(updatesCopy, "count") >= 2 && objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
      {
        v23 = nameCopy;
        goto LABEL_34;
      }

LABEL_32:
      [MEMORY[0x277D14CE8] isAMac];
LABEL_20:
      v23 = [namesCopy count];
      goto LABEL_34;
    }

LABEL_23:
    [MEMORY[0x277D14CE8] isAMac];
    v23 = [namesCopy count];
    v24 = nameCopy;
    goto LABEL_34;
  }

  v23 = nameCopy;
  [MEMORY[0x277D14CE8] isAMac];
LABEL_34:
  v13 = HFLocalizedStringWithFormat();
LABEL_35:
  if ([updatesCopy na_any:{&__block_literal_global_78_2, v23, v24}])
  {
    [updatesCopy count];
    v14 = HFLocalizedWiFiString();
    v15 = MEMORY[0x277CCA898];
    v16 = HFLocalizedStringWithFormat();
    v17 = HFLocalizedWiFiString();
    v18 = MEMORY[0x277D14C80];
    v19 = [(HUFirmwareUpdateItemProvider *)self home:v13];
    v20 = [v18 networkRouterSettingsURLForHome:v19];
    v21 = [v15 hf_attributedLinkStringForString:v16 linkString:v17 linkURL:v20];

    v13 = v21;
  }

  return v13;
}

uint64_t __128__HUFirmwareUpdateItemProvider__localizedDescriptionForAppName_accessoriesWithFirmwareUpdates_visibleAccessoryTileDisplayNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_networkConfigurationProfiles];
  v3 = [v2 na_any:&__block_literal_global_81_2];

  return v3;
}

- (id)_instructionsItemResultsWithSampleLinkedApplicationItem:(id)item numberOfLinkedApplicationItems:(int64_t)items
{
  v31[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = MEMORY[0x277CBEB98];
  home = [(HUFirmwareUpdateItemProvider *)self home];
  accessories = [home accessories];
  v11 = [v8 setWithArray:accessories];
  _effectiveFilter = [(HUFirmwareUpdateItemProvider *)self _effectiveFilter];
  v13 = [v11 na_filter:_effectiveFilter];

  v14 = [v13 na_map:&__block_literal_global_97_1];
  na_setByFlattening = [v14 na_setByFlattening];

  v16 = [v13 na_map:&__block_literal_global_99_5];
  na_setByFlattening2 = [v16 na_setByFlattening];
  v18 = [na_setByFlattening2 count];

  if ((items || [MEMORY[0x277D14CE8] isAMac]) && objc_msgSend(na_setByFlattening, "count"))
  {
    v19 = [MEMORY[0x277D2C900] futureWithResult:&stru_2823E0EE8];
    if (items == 1)
    {
      v20 = [itemCopy updateWithOptions:MEMORY[0x277CBEC10]];
      v21 = [v20 flatMap:&__block_literal_global_102_0];

      v19 = v21;
    }

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __119__HUFirmwareUpdateItemProvider__instructionsItemResultsWithSampleLinkedApplicationItem_numberOfLinkedApplicationItems___block_invoke_4;
    v25[3] = &unk_277DC3F28;
    objc_copyWeak(v28, &location);
    v28[1] = v18;
    v26 = v13;
    v27 = na_setByFlattening;
    v28[2] = a2;
    v22 = [v19 flatMap:v25];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v30 = *MEMORY[0x277D13FB8];
    v31[0] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v22 = [v23 futureWithResult:v19];
  }

  return v22;
}

id __119__HUFirmwareUpdateItemProvider__instructionsItemResultsWithSampleLinkedApplicationItem_numberOfLinkedApplicationItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_2823E0EE8;
  }

  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

id __119__HUFirmwareUpdateItemProvider__instructionsItemResultsWithSampleLinkedApplicationItem_numberOfLinkedApplicationItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = HFLocalizedString();
  v6 = [WeakRetained _localizedDescriptionForAppName:v3 accessoriesWithFirmwareUpdates:*(a1 + 32) visibleAccessoryTileDisplayNames:*(a1 + 40)];

  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:WeakRetained file:@"HUFirmwareUpdateItemProvider.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"description != nil"}];
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 na_safeSetObject:v5 forKey:*MEMORY[0x277D13F60]];
  [v7 na_safeSetObject:v6 forKey:*MEMORY[0x277D13E20]];
  [v7 setObject:&unk_282492510 forKeyedSubscript:@"instructionsStyle"];
  [v7 setObject:&unk_282492528 forKeyedSubscript:*MEMORY[0x277D13EC8]];
  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

@end