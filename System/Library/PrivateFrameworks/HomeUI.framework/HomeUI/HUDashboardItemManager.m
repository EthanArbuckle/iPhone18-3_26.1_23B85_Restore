@interface HUDashboardItemManager
- (BOOL)isEmptyDashboard;
- (BOOL)isHomeMenuStatusItem:(id)a3;
- (HUDashboardItemManager)initWithContext:(id)a3 delegate:(id)a4;
- (HUDashboardItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUDashboardItemManagerDelegate)dashboardDelegate;
- (NSSet)homeMenuStatusItems;
- (id)_buildAccessoryCategorySectionsWithItems:(id)a3;
- (id)_buildFavoritesSectionWithFavoriteItems:(id)a3;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildNowPlayingSectionWithItems:(id)a3 forRouteIdentifier:(id)a4;
- (id)_buildRoomSectionsWithItems:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_buildSingleAccessoryGroupSectionWithItems:(id)a3 allDisplayedItems:(id)a4;
- (id)_buildStaticItemsForHome:(id)a3;
- (id)_itemSectionForRoom:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)_itemsToUpdateWhenApplicationDidBecomeActive;
- (id)buildItemForHomeKitObject:(id)a3;
- (id)itemModuleForSectionIdentifier:(id)a3;
- (id)matchingItemForHomeKitObject:(id)a3;
- (id)reorderableFavoritesList;
- (id)reorderableServiceListForRoom:(id)a3;
- (id)reorderableServiceListForType:(id)a3;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)_updateHomeDashboardWithHome:(id)a3;
- (void)dealloc;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeDidUpdateHomeLocationStatus:(id)a3;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4;
- (void)restrictedGuestAllowedPeriodEnded:(id)a3;
- (void)restrictedGuestAllowedPeriodStarted:(id)a3;
- (void)setHome:(id)a3;
- (void)setReorderableServiceList:(id)a3 forRoom:(id)a4;
- (void)setReorderableServiceList:(id)a3 forType:(id)a4;
- (void)updateItemSectionHeaderTitleForRoom:(id)a3;
@end

@implementation HUDashboardItemManager

- (HUDashboardItemManager)initWithContext:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = HUDashboardItemManager;
  v9 = [(HFItemManager *)&v22 initWithDelegate:v8 sourceItem:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeWeak(&v10->_dashboardDelegate, v8);
    v11 = [(HFItemModule *)[HUServicePlaceholderItemModule alloc] initWithItemUpdater:v10];
    servicePlaceholderItemModule = v10->_servicePlaceholderItemModule;
    v10->_servicePlaceholderItemModule = v11;

    v13 = [(HUDashboardItemManager *)v10 context];
    v14 = [v13 home];
    v15 = [v14 hf_currentUserIsRestrictedGuest];

    if (v15)
    {
      v16 = [MEMORY[0x277D146E8] sharedDispatcher];
      v17 = [(HUDashboardItemManager *)v10 context];
      v18 = [v17 home];
      v19 = [v16 pinCodeManagerForHome:v18];
      pinCodeManager = v10->_pinCodeManager;
      v10->_pinCodeManager = v19;
    }
  }

  return v10;
}

- (HUDashboardItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithContext_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUDashboardItemManager.m" lineNumber:98 description:{@"%s is unavailable; use %@ instead", "-[HUDashboardItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isEmptyDashboard
{
  v3 = [(HUDashboardItemManager *)self context];
  v4 = [v3 room];

  if (v4)
  {
    v9 = [(HUDashboardItemManager *)self context];
    v5 = [v9 room];
    v6 = [v5 hf_visibleAccessories];

    LOBYTE(v9) = [v6 na_all:&__block_literal_global_130];
    v7 = [(HUDashboardItemManager *)self context];
    v8 = [v7 room];
    LOBYTE(v9) = [v8 hf_hasVisibleAccessories] ^ 1 | v9;
  }

  else
  {
    v6 = [(HFItemManager *)self home];
    v9 = [v6 hf_hasVisibleAccessories] ^ 1u;
  }

  return v9 & 1;
}

- (NSSet)homeMenuStatusItems
{
  v3 = [(HUDashboardItemManager *)self statusItemModule];
  v4 = [v3 allItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HUDashboardItemManager_homeMenuStatusItems__block_invoke;
  v7[3] = &unk_277DB85D8;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

uint64_t __45__HUDashboardItemManager_homeMenuStatusItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isHomeMenuStatusItem:v3])
  {
    v4 = [v3 latestResults];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isHomeMenuStatusItem:(id)a3
{
  v3 = a3;
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

  if (v6)
  {
    v7 = [MEMORY[0x277D14B58] hu_homeMenuStatusItemClasses];
    v8 = [v7 containsObject:objc_opt_class()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)itemModuleForSectionIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"scenesSection"])
  {
    v5 = [(HUDashboardItemManager *)self actionSetItemModule];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"camerasSection"])
  {
    v5 = [(HUDashboardItemManager *)self cameraItemModule];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"statusSection"])
  {
    v5 = [(HUDashboardItemManager *)self statusItemModule];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"tipsSection"])
  {
    v5 = [(HUDashboardItemManager *)self tipItemModule];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)buildItemForHomeKitObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2825BCA78])
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
    v7 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    v8 = [v7 buildItemForAccessoryRepresentable:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_itemSectionForRoom:(id)a3
{
  v4 = HUDashboardRoomSectionIdentifierForRoom(a3);
  if ([v4 length] && (v5 = -[HFItemManager sectionIndexForDisplayedSectionIdentifier:](self, "sectionIndexForDisplayedSectionIdentifier:", v4), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(HFItemManager *)self itemSectionForSectionIndex:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateItemSectionHeaderTitleForRoom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [(HUDashboardItemManager *)self _itemSectionForRoom:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 headerTitle];
    v9 = [v4 name];
    v10 = [v8 isEqualToString:v9];

    v11 = HFLogForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v4 name];
        *buf = 138412802;
        v20 = self;
        v21 = 2080;
        v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
        v23 = 2112;
        v24 = v13;
        v14 = "(%@ %s) Not updating room name %@ since it's the same.";
LABEL_10:
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
      }
    }

    else
    {
      if (v12)
      {
        v15 = [v7 headerTitle];
        v16 = [v4 name];
        *buf = 138413314;
        v20 = self;
        v21 = 2080;
        v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@ %s) Updating room name from %@ to %@ for room %@", buf, 0x34u);
      }

      v17 = [v4 name];
      [v7 setHeaderTitle:v17];

      v18 = v7;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      [(HFItemManager *)self reloadUIRepresentationForSections:v11 withAnimation:0];
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 name];
      *buf = 138412802;
      v20 = self;
      v21 = 2080;
      v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
      v23 = 2112;
      v24 = v13;
      v14 = "(%@ %s) roomItemSection is nil for room %@";
      goto LABEL_10;
    }
  }
}

- (void)setHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HUDashboardItemManager *)self context];
    v6 = [v5 home];
    v7 = v4;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (v6)
      {
        v9 = [v6 isEqual:v7];

        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v10 = [HUDashboardContext homeDashboardForHome:v8];
      context = self->_context;
      self->_context = v10;

      v12 = [(HUDashboardItemManager *)self context];
      v13 = [v12 home];
      v14 = [v13 hf_currentUserIsRestrictedGuest];

      if (v14)
      {
        v15 = [MEMORY[0x277D146E8] sharedDispatcher];
        v16 = [(HUDashboardItemManager *)self context];
        v17 = [v16 home];
        v18 = [v15 pinCodeManagerForHome:v17];
        [(HUDashboardItemManager *)self setPinCodeManager:v18];

        v19 = [(HUDashboardItemManager *)self pinCodeManager];
        [v19 addObserver:self];
      }

      else
      {
        v20 = [(HUDashboardItemManager *)self pinCodeManager];
        [v20 removeObserver:self];

        [(HUDashboardItemManager *)self setPinCodeManager:0];
      }

      v5 = [(HUDashboardItemManager *)self dashboardDelegate];
      v6 = [(HUDashboardItemManager *)self context];
      [v5 dashboardItemManager:self didUpdateContext:v6];
    }
  }

LABEL_13:
  v21.receiver = self;
  v21.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v21 setHome:v4];
}

- (id)matchingItemForHomeKitObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = [v4 uniqueIdentifier];
    v8 = [v6 na_setWithSafeObject:v7];

    v9 = v5;
    v10 = &unk_2825BCA78;
    if ([v9 conformsToProtocol:v10])
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [MEMORY[0x277D14300] accessoryLikeObjectsForAccessoryRepresentable:v12];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke;
      v21[3] = &unk_277DBE378;
      v22 = v8;
      [v13 na_each:v21];
    }

    v14 = [(HFItemManager *)self allDisplayedItems];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_4;
    v18[3] = &unk_277DB95B0;
    v19 = v9;
    v20 = v8;
    v15 = v8;
    v16 = [v14 na_firstObjectPassingTest:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 homeKitObject];
  v6 = [v5 uniqueIdentifier];
  [v3 addObject:v6];

  v7 = [v4 services];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_2;
  v11[3] = &unk_277DBE328;
  v12 = *(a1 + 32);
  [v7 na_each:v11];

  v8 = [v4 profiles];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_3;
  v9[3] = &unk_277DBE350;
  v10 = *(a1 + 32);
  [v8 na_each:v9];
}

void __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

void __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

uint64_t __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2824C0788])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v3;
  if ([v6 conformsToProtocol:&unk_28251AC90])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 homeKitObject];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [v8 accessoryRepresentableObject];
    v10 = [v11 hf_homeKitObject];

    if (!v10)
    {
      v15 = 0;
      goto LABEL_15;
    }
  }

  if ([v10 isEqual:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v10, "uniqueIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "uniqueIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14))
  {
    v15 = 1;
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = [v10 uniqueIdentifier];
    v15 = [v16 containsObject:v17];
  }

LABEL_15:

  return v15;
}

- (id)_buildStaticItemsForHome:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  objc_initWeak(location, self);
  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke;
  v36[3] = &unk_277DB7448;
  objc_copyWeak(&v37, location);
  v8 = [v7 initWithResultsBlock:v36];
  [(HUDashboardItemManager *)self setAccessoryNoAccessItem:v8];

  v9 = [(HUDashboardItemManager *)self accessoryNoAccessItem];
  [v6 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_2;
  v34[3] = &unk_277DB7448;
  objc_copyWeak(&v35, location);
  v11 = [v10 initWithResultsBlock:v34];
  [(HUDashboardItemManager *)self setAlwaysAllowedScheduleItem:v11];

  v12 = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
  [v6 na_safeAddObject:v12];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_3;
  v31[3] = &unk_277DBE3C8;
  objc_copyWeak(v33, location);
  v33[1] = a2;
  v14 = v5;
  v32 = v14;
  v15 = [v13 initWithResultsBlock:v31];
  [(HUDashboardItemManager *)self setPinCodeAccessItem:v15];

  v16 = [(HUDashboardItemManager *)self pinCodeAccessItem];
  [v6 addObject:v16];

  v17 = objc_alloc(MEMORY[0x277D14B38]);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_273;
  v28 = &unk_277DBE3C8;
  objc_copyWeak(v30, location);
  v30[1] = a2;
  v18 = v14;
  v29 = v18;
  v19 = [v17 initWithResultsBlock:&v25];
  [(HUDashboardItemManager *)self setHomeKeyItem:v19, v25, v26, v27, v28];

  v20 = [(HUDashboardItemManager *)self homeKeyItem];
  [v6 na_safeAddObject:v20];

  v21 = [[HUContactHomeOwnerItem alloc] initWithHome:v18];
  [(HUDashboardItemManager *)self setContactOwnerItem:v21];

  v22 = [(HUDashboardItemManager *)self contactOwnerItem];
  [v6 addObject:v22];

  v23 = [v6 copy];
  objc_destroyWeak(v30);

  objc_destroyWeak(v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(location);

  return v23;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v6 = [WeakRetained context];
  v7 = [v6 home];
  v8 = [v7 hf_shouldBlockCurrentRestrictedGuestFromHome];

  if ((v8 & 1) == 0)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v16 = [MEMORY[0x277D2C900] futureWithResult:v2];
    goto LABEL_12;
  }

  v9 = [WeakRetained context];
  v10 = [v9 home];
  if ([v10 hf_currentUserIsRestrictedGuest])
  {
    v11 = [WeakRetained context];
    v12 = [v11 home];
    v13 = [v12 hf_isCurrentUserInRestrictedGuestAllowedPeriod];

    if (!v13)
    {
      v14 = @"HUDashboardSection_Accessories_NoAccess_OutOfSchedule_Description";
      v15 = @"HUDashboardSection_Accessories_NoAccess_OutOfSchedule_Title";
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = [WeakRetained context];
  v18 = [v17 home];
  v19 = [v18 hf_isCurrentRestrictedGuestAwayFromHome];

  if (!v19)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_11;
  }

  v14 = @"HUDashboardSection_Accessories_NoAccess_AwayFromHome_Description";
  v15 = @"HUDashboardSection_Accessories_NoAccess_AwayFromHome_Title";
LABEL_9:
  v20 = _HULocalizedStringWithDefaultValue(v15, v15, 1);
  v21 = _HULocalizedStringWithDefaultValue(v14, v14, 1);
LABEL_11:
  [v2 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v2 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E20]];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EB8]];
  v16 = [MEMORY[0x277D2C900] futureWithResult:v2];

LABEL_12:

  return v16;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v6 = [WeakRetained context];
  v7 = [v6 home];
  v8 = [v7 hf_currentUserIsRestrictedGuest];

  if (v8)
  {
    v9 = [MEMORY[0x277D14A50] localizedStringFromScheduleType:0];
    [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v10 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"calendar.badge.clock"];
    [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13E88]];
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13E60]];
    v11 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v11 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  return v11;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained context];
  v4 = [v3 home];
  v5 = [v4 hf_currentUserIsRestrictedGuest];

  if (v5)
  {
    v6 = [WeakRetained pinCodeManager];
    v7 = [v6 currentUserPinCode];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_259;
    v15[3] = &unk_277DBE3A0;
    v8 = *(a1 + 48);
    v15[4] = WeakRetained;
    v17 = v8;
    v16 = *(a1 + 32);
    v9 = [v7 flatMap:v15];
    v10 = [v9 recover:&__block_literal_global_272];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Current user is not a restricted guest. Hiding personal code item.", buf, 0x16u);
    }

    v13 = MEMORY[0x277D2C900];
    v18 = *MEMORY[0x277D13FB8];
    v19 = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [v13 futureWithResult:v6];
  }

  return v10;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_259(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Found matching PIN code for user.", buf, 0x16u);
    }

    v7 = [*(a1 + 40) hf_accessoriesSupportingAccessCodes];
    if ([v7 count])
    {
      v8 = [*(a1 + 32) context];
      v9 = [v8 home];
      if ([v9 hf_currentUserIsRestrictedGuest])
      {
        v10 = [*(a1 + 32) home];
        v11 = [v10 hasOnboardedForAccessCode] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v15 = [v13 setWithArray:v14];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  if (v11)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v16 = [MEMORY[0x277D2C900] futureWithResult:v12];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"number"];
    v24[0] = *MEMORY[0x277D13F60];
    v18 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_GuestAccess_PersonalCode", @"HUDashboardSection_GuestAccess_PersonalCode", 1);
    v19 = *MEMORY[0x277D13E60];
    v25[0] = v18;
    v25[1] = MEMORY[0x277CBEC38];
    v20 = *MEMORY[0x277D13FB8];
    v24[1] = v19;
    v24[2] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v24[3] = *MEMORY[0x277D13E88];
    v25[2] = v21;
    v25[3] = v17;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    [v12 addEntriesFromDictionary:v22];

    v16 = [MEMORY[0x277D2C900] futureWithResult:v12];
  }

  return v16;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_269(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke";
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) Failed to get access codes for current user. Error = %@. Hiding 'Personal Code' item.", buf, 0x16u);
  }

  v4 = MEMORY[0x277D2C900];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_273(uint64_t a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_new();
  v4 = [WeakRetained context];
  v5 = [v4 home];
  v6 = [v5 hf_currentUserIsRestrictedGuest];

  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_GuestAccess_HomeKey", @"HUDashboardSection_GuestAccess_HomeKey", 1);
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13E60]];
    v8 = MEMORY[0x277CCABB0];
    v9 = [WeakRetained context];
    v10 = [v9 home];
    v11 = [v8 numberWithInt:{objc_msgSend(v10, "hf_currentUserIsRestrictedGuest") ^ 1}];
    v45 = *MEMORY[0x277D13FB8];
    [v3 setObject:v11 forKeyedSubscript:?];

    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
    v12 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"apple.homekey"];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13E88]];
    v13 = objc_opt_new();
    [v13 na_safeAddObject:*(a1 + 32)];
    v14 = [*(a1 + 32) hf_walletKeyAccessories];
    v15 = [v14 copy];
    [v13 na_safeAddObjectsFromArray:v15];

    v16 = [v13 copy];
    [v3 na_safeSetObject:v16 forKey:*MEMORY[0x277D13DA8]];

    v17 = [WeakRetained context];
    v18 = [v17 home];
    v19 = [v18 currentUser];

    v20 = [v14 count];
    v21 = [*(a1 + 32) currentUser];
    v46 = v19;
    v22 = [v19 isEqual:v21] ^ 1;
    if (v19)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1;
    }

    v24 = [MEMORY[0x277D14CE8] isAnIPhone] ^ 1;
    if ((v23 & 1) != 0 || (v24 & 1) != 0 || !v20 || ([*(a1 + 32) hasOnboardedForWalletKey] & 1) == 0)
    {
      if (v23)
      {
        v34 = HFLogForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v46 hf_prettyDescription];
          v41 = [*(a1 + 32) currentUser];
          [v41 hf_prettyDescription];
          v35 = v43 = v14;
          *buf = 136315906;
          v51 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke";
          v52 = 1024;
          *v53 = 1;
          *&v53[4] = 2112;
          *&v53[6] = v42;
          *&v53[14] = 2112;
          *&v53[16] = v35;
          _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "(%s) Hiding homeKeyItem | shouldHideForUser: %{BOOL}d | user = %@ | home.currentUser = %@", buf, 0x26u);

          v14 = v43;
        }
      }

      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [*(a1 + 32) hasOnboardedForWalletKey];
        [MEMORY[0x277CD1650] hf_minimumDescriptionsOfAccessories:v14];
        v38 = v44 = v14;
        *buf = 138413826;
        v51 = WeakRetained;
        v52 = 2080;
        *v53 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke";
        *&v53[8] = 1024;
        *&v53[10] = v23;
        *&v53[14] = 1024;
        *&v53[16] = v24;
        *&v53[20] = 1024;
        *&v53[22] = v20 != 0;
        v54 = 1024;
        v55 = v37;
        v56 = 2112;
        v57 = v38;
        _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding homeKeyItem | shouldHideForUser: %{BOOL}d | shouldHideForDevice: %{BOOL}d, hasWalletKeyAccessories: %{BOOL}d | home.hasOnboardedForWalletKey: %{BOOL}d | walletKeyAccessories: %@", buf, 0x38u);

        v14 = v44;
      }

      v39 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v3 na_safeSetObject:v39 forKey:v45];

      v28 = [MEMORY[0x277D2C900] futureWithResult:v3];
    }

    else
    {
      [WeakRetained home];
      v26 = v25 = v14;
      v27 = [v26 hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_282;
      v47[3] = &unk_277DBE3F0;
      v48 = v3;
      v49 = *(a1 + 32);
      v28 = [v27 flatMap:v47];

      v14 = v25;
    }
  }

  else
  {
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(*(a1 + 48));
      v31 = [WeakRetained context];
      v32 = [v31 home];
      *buf = 138412802;
      v51 = WeakRetained;
      v52 = 2112;
      *v53 = v30;
      *&v53[8] = 2112;
      *&v53[10] = v32;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@: %@ Current user is not a restricted guest. Hiding home key item for home %@.", buf, 0x20u);
    }

    v33 = MEMORY[0x277D2C900];
    v58 = *MEMORY[0x277D13FB8];
    v59[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v28 = [v33 futureWithResult:v12];
  }

  return v28;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_282(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([a2 canAddWalletKeyErrorCode] == 8)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) Hiding Home Key button because current device has Wallet app deleted", buf, 0xCu);
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v4 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  }

  else
  {
    v5 = [*(a1 + 40) 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];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_283;
    v7[3] = &unk_277DBD4E0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v4 = [v5 flatMap:v7];
  }

  return v4;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_283(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([a2 BOOLValue])
  {
    v3 = [*(a1 + 32) hf_hasWalletKey];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_2_284;
    v7[3] = &unk_277DB7AB8;
    v8 = *(a1 + 40);
    v4 = [v3 flatMap:v7];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) Hiding 'Home Key' button because current device is NOT wallet key compatible.", buf, 0xCu);
    }

    [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v4 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 40)];
  }

  return v4;
}

id __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_2_284(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[HUDashboardItemManager _buildStaticItemsForHome:]_block_invoke_2";
    v10 = 1024;
    v11 = [v3 BOOLValue] ^ 1;
    v12 = 1024;
    v13 = [v3 BOOLValue];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) For homeKeyItem, hidden = %{BOOL}d because hasWalletKey = %{BOOL}d", &v8, 0x18u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "BOOLValue") ^ 1}];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v6 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v6;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v86[1] = *MEMORY[0x277D85DE8];
  v78 = a3;
  v5 = [(HUDashboardItemManager *)self context];
  v6 = [v5 room];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D149E0]);
    v8 = [(HUDashboardItemManager *)self context];
    v9 = [v8 room];
    v10 = [v7 initWithHome:v78 room:v9];
    [(HFItemManager *)self setSourceItem:v10];
  }

  else
  {
    if (!v78)
    {
      goto LABEL_6;
    }

    v8 = [objc_alloc(MEMORY[0x277D146D0]) initWithHome:v78];
    [(HFItemManager *)self setSourceItem:v8];
  }

LABEL_6:
  v11 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D14CE8] shouldShowFakeContentForPerformanceTesting])
    {
      v12 = objc_alloc_init(MEMORY[0x277D14688]);
      [(HUDashboardItemManager *)self setFakeSpeakersAndTVsItemProvider:v12];

      v13 = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
      [v11 addObject:v13];
    }

    v14 = objc_alloc(MEMORY[0x277D142F8]);
    v15 = [(HUDashboardItemManager *)self context];
    v16 = [v15 room];
    v17 = v16;
    if (!v16)
    {
      v3 = [(HUDashboardItemManager *)self context];
      v17 = [v3 home];
    }

    v18 = [(HUDashboardItemManager *)self context];
    v19 = [v18 home];
    v20 = [v14 initWithAccessoryContainer:v17 inHome:v19];
    [(HUDashboardItemManager *)self setSpeakersAndTVsItemProvider:v20];

    if (!v16)
    {
    }

    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke;
    v83[3] = &unk_277DBE418;
    objc_copyWeak(&v84, &location);
    v21 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    [v21 setFilterBlock:v83];

    v22 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    [v11 addObject:v22];

    objc_destroyWeak(&v84);
  }

  v23 = objc_alloc(MEMORY[0x277D142F8]);
  v24 = [(HUDashboardItemManager *)self context];
  v25 = [v24 room];
  v26 = v25;
  if (!v25)
  {
    v3 = [(HUDashboardItemManager *)self context];
    v26 = [v3 home];
  }

  v27 = [(HUDashboardItemManager *)self context];
  v28 = [v27 home];
  v29 = [v23 initWithAccessoryContainer:v26 inHome:v28];
  [(HUDashboardItemManager *)self setFavoritesItemProvider:v29];

  if (!v25)
  {
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_2;
  v81[3] = &unk_277DBE418;
  objc_copyWeak(&v82, &location);
  v30 = [(HUDashboardItemManager *)self favoritesItemProvider];
  [v30 setFilterBlock:v81];

  v31 = [(HUDashboardItemManager *)self favoritesItemProvider];
  [v11 addObject:v31];

  v32 = objc_alloc(MEMORY[0x277D142F8]);
  v33 = [(HUDashboardItemManager *)self context];
  v34 = [v33 room];
  v35 = v34;
  if (!v34)
  {
    v3 = [(HUDashboardItemManager *)self context];
    v35 = [v3 home];
  }

  v36 = [(HUDashboardItemManager *)self context];
  v37 = [v36 home];
  v38 = [v32 initWithAccessoryContainer:v35 inHome:v37];
  [(HUDashboardItemManager *)self setAccessoryLikeItemProvider:v38];

  if (!v34)
  {
  }

  v39 = [(HUDashboardItemManager *)self context];
  v40 = [v39 accessoryLikeItemObjectLevel];
  v41 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  [v41 setObjectLevel:v40];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_3;
  v79[3] = &unk_277DBE418;
  objc_copyWeak(&v80, &location);
  v42 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  [v42 setFilterBlock:v79];

  v43 = [(HUDashboardItemManager *)self context];
  v44 = [v43 accessoryTypeGroup];

  if (v44)
  {
    v45 = [(HUDashboardItemManager *)self context];
    v46 = [v45 accessoryTypeGroup];
    v86[0] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
    v48 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    [v48 setAccessoryTypeGroups:v47];
  }

  else
  {
    v45 = [MEMORY[0x277D14308] sortedAccessoryTypeGroups];
    v46 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    [v46 setAccessoryTypeGroups:v45];
  }

  v49 = [HUDashboardAccessoryTransformItemProvider alloc];
  v50 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  v51 = [(HFItemManager *)self home];
  v52 = [(HUDashboardAccessoryTransformItemProvider *)v49 initWithSourceProvider:v50 inHome:v51];
  [(HUDashboardItemManager *)self setAccessoryTransformItemProvider:v52];

  v53 = [(HUDashboardItemManager *)self context];
  v54 = [v53 accessoryGroupingStyle];
  v55 = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  [v55 setSplitAccessoryGroupsByRoom:v54 == 2];

  v56 = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  [v11 addObject:v56];

  v57 = objc_alloc(MEMORY[0x277D14A30]);
  v58 = [(HUDashboardItemManager *)self context];
  v59 = [v58 home];
  v60 = [v57 initWithHome:v59];
  [(HUDashboardItemManager *)self setScheduleRuleItemProvider:v60];

  v61 = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
  [v11 addObject:v61];

  v62 = [(HUDashboardItemManager *)self _buildStaticItemsForHome:v78];
  if ([v62 count])
  {
    v63 = [(HUDashboardItemManager *)self context];
    v64 = [v63 home];
    v65 = [v64 hf_currentUserIsRestrictedGuest];

    v66 = MEMORY[0x277CBEB98];
    v67 = [(HUDashboardItemManager *)self pinCodeAccessItem];
    v68 = [(HUDashboardItemManager *)self homeKeyItem];
    v69 = [v66 setWithObjects:{v67, v68, 0}];

    if (v65)
    {
      v70 = [objc_alloc(MEMORY[0x277D14B48]) initWithItems:v69];
      [(HUDashboardItemManager *)self setNonBlockingItemProvider:v70];

      v71 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D13B88]];
      v72 = [(HUDashboardItemManager *)self nonBlockingItemProvider];
      [v72 setClientInvalidationReasons:v71];

      v73 = [(HUDashboardItemManager *)self nonBlockingItemProvider];
      [v11 addObject:v73];
    }

    v74 = [v62 na_setByRemovingObjectsFromSet:v69];

    v75 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v74];
    [(HUDashboardItemManager *)self setStaticItemProvider:v75];

    v76 = [(HUDashboardItemManager *)self staticItemProvider];
    [v11 na_safeAddObject:v76];
  }

  else
  {
    v74 = v62;
  }

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);

  return v11;
}

uint64_t __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  if ([v5 shouldHideAccessoryRepresentable:v3])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D14378] mediaAccessoryTypeGroup];
    v8 = [v3 hf_accessoryType];
    v6 = [v7 containsType:v8];
  }

  return v6;
}

uint64_t __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 shouldHideAccessoryRepresentable:v3];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 hf_isFavorite];
  }

  return v7;
}

uint64_t __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 accessoryRepresentableHasStandardTileRepresentation:v3];

  return v6;
}

- (id)_itemsToUpdateWhenApplicationDidBecomeActive
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUDashboardItemManager *)self bannerItemModule];
  v4 = [v3 bannerItemProvider];
  v5 = [v4 setupBannerItem];
  v6 = [v2 na_setWithSafeObject:v5];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v119[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUDashboardItemManager *)self context];
  v7 = [v6 shouldHideSectionWithIdentifier:@"bannersSection"];

  if ((v7 & 1) == 0)
  {
    v8 = [(HUDashboardItemManager *)self bannerItemModule];
    v9 = [v8 buildSectionsWithDisplayedItems:v4];

    [v5 na_safeAddObjectsFromArray:v9];
  }

  v10 = [(HUDashboardItemManager *)self context];
  v11 = [v10 shouldHideSectionWithIdentifier:@"statusSection"];

  if ((v11 & 1) == 0)
  {
    v12 = [(HUDashboardItemManager *)self statusItemModule];
    v13 = [v12 buildSectionsWithDisplayedItems:v4];

    [v5 na_safeAddObjectsFromArray:v13];
  }

  v14 = [(HUDashboardItemManager *)self context];
  v15 = [v14 shouldHideSectionWithIdentifier:@"tipsSection"];

  if (v15)
  {
    v108 = 0;
  }

  else
  {
    v16 = [(HUDashboardItemManager *)self tipItemModule];
    v108 = [v16 buildSectionsWithDisplayedItems:v4];
  }

  v17 = [(HUDashboardItemManager *)self energyDashboardItemModule];
  v18 = [v17 buildSectionsWithDisplayedItems:v4];

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v114[3] = &unk_277DBE440;
  v114[4] = self;
  v19 = [v18 na_filter:v114];

  v106 = v19;
  [v5 na_safeAddObjectsFromArray:v19];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [(HUDashboardItemManager *)self context];
  if (([v21 shouldHideSectionWithIdentifier:@"camerasSection"] & 1) == 0)
  {
    v22 = [(HUDashboardItemManager *)self context];
    v23 = [v22 cameraPresentationStyle];

    if (v23 != 1)
    {
      goto LABEL_12;
    }

    v24 = [(HUDashboardItemManager *)self cameraItemModule];
    v21 = [v24 buildSectionsWithDisplayedItems:v4];

    [v20 na_safeAddObjectsFromArray:v21];
  }

LABEL_12:
  v25 = [(HUDashboardItemManager *)self context];
  v26 = [v25 shouldHideSectionWithIdentifier:@"scenesSection"];

  if ((v26 & 1) == 0)
  {
    v27 = [(HUDashboardItemManager *)self actionSetItemModule];
    v28 = [v27 buildSectionsWithDisplayedItems:v4];

    [v20 na_safeAddObjectsFromArray:v28];
  }

  if (_os_feature_enabled_impl())
  {
    v29 = [(HUDashboardItemManager *)self context];
    v30 = [v29 shouldHideSectionWithIdentifier:@"NowPlayingSection"];

    if ((v30 & 1) == 0)
    {
      v31 = MEMORY[0x277D279C8];
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
      v111[3] = &unk_277DBE468;
      v111[4] = self;
      v112 = v4;
      v113 = v5;
      [v31 homePlatterPreferredRouteIdentifier:v111];
    }
  }

  v32 = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  v33 = [v32 items];
  v34 = [v33 na_setByIntersectingWithSet:v4];

  v35 = [(HUDashboardItemManager *)self context];
  LOBYTE(v33) = [v35 shouldHideSectionWithIdentifier:@"favoritesSection"];

  if ((v33 & 1) == 0)
  {
    v36 = [(HUDashboardItemManager *)self favoritesItemProvider];
    v37 = [v36 items];
    v38 = [v37 na_setByIntersectingWithSet:v4];

    v39 = [(HUDashboardItemManager *)self _buildFavoritesSectionWithFavoriteItems:v38];
    [v20 na_safeAddObjectsFromArray:v39];
  }

  v40 = [(HUDashboardItemManager *)self context];
  v41 = [v40 accessoryGroupingStyle];

  if (v41 == 2)
  {
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_305;
    v110[3] = &unk_277DBA780;
    v110[4] = self;
    v42 = [v34 na_filter:v110];
    v43 = [(HUDashboardItemManager *)self _buildRoomSectionsWithItems:v42];
    [v20 addObjectsFromArray:v43];
  }

  v44 = [(HUDashboardItemManager *)self context];
  v45 = [v44 accessoryGroupingStyle];

  if (v45 == 3)
  {
    v46 = [(HUDashboardItemManager *)self _buildAccessoryCategorySectionsWithItems:v34];
    [v20 addObjectsFromArray:v46];
  }

  v47 = [(HUDashboardItemManager *)self context];
  v48 = [v47 shouldHideSectionWithIdentifier:@"AllAccessoriesSection"];

  if ((v48 & 1) == 0)
  {
    v49 = [(HUDashboardItemManager *)self _buildSingleAccessoryGroupSectionWithItems:v34 allDisplayedItems:v4];
    [v20 addObject:v49];
  }

  v107 = v34;
  v50 = [(HUDashboardItemManager *)self context];
  v51 = [v50 room];

  v52 = objc_alloc(MEMORY[0x277CCAC98]);
  if (v51)
  {
    v53 = [(HUDashboardItemManager *)self context];
    v54 = [v53 room];
    v55 = [v54 hf_dashboardSectionReorderableUUIDStringComparator];
    v56 = [v52 initWithKey:@"identifier" ascending:1 comparator:v55];
  }

  else
  {
    v53 = [(HFItemManager *)self home];
    v54 = [v53 hf_dashboardSectionReorderableUUIDStringComparator];
    v56 = [v52 initWithKey:@"identifier" ascending:1 comparator:v54];
  }

  v119[0] = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:1];
  [v20 sortUsingDescriptors:v57];

  [v5 na_safeAddObjectsFromArray:v20];
  if (v108)
  {
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2_311;
    v109[3] = &unk_277DBE490;
    v109[4] = self;
    v58 = [v5 indexOfObjectPassingTest:v109];
    if (v58 < [v5 count])
    {
      v59 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v58 + 1, objc_msgSend(v108, "count")}];
      [v5 insertObjects:v108 atIndexes:v59];
    }
  }

  v60 = [(HUDashboardItemManager *)self context];
  if (([v60 shouldHideSectionWithIdentifier:@"camerasSection"] & 1) == 0)
  {
    v61 = [(HUDashboardItemManager *)self context];
    v62 = [v61 cameraPresentationStyle];

    if (v62 != 2)
    {
      goto LABEL_35;
    }

    v63 = [(HUDashboardItemManager *)self cameraItemModule];
    v60 = [v63 buildSectionsWithDisplayedItems:v4];

    [v5 na_safeAddObjectsFromArray:v60];
  }

LABEL_35:
  v64 = [(HUDashboardItemManager *)self context];
  v65 = [v64 shouldHideSectionWithIdentifier:@"GuestAccessSection"];

  if (v65)
  {
    goto LABEL_48;
  }

  v66 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"GuestAccessSection"];
  v67 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_GuestAccess_Title", @"HUDashboardSection_GuestAccess_Title", 1);
  [v66 setHeaderTitle:v67];

  v68 = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
  v69 = [v68 items];
  v70 = [v4 intersectsSet:v69];

  v105 = v56;
  if (v70)
  {
    v71 = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
    v72 = [v71 items];
    v73 = [v72 allObjects];
    v74 = [MEMORY[0x277D14A50] sortComparatorForScheduleRules];
    v75 = [v73 sortedArrayUsingComparator:v74];
    [v66 setItems:v75];

    v56 = v105;
LABEL_40:

    goto LABEL_41;
  }

  v76 = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
  v77 = [v4 containsObject:v76];

  if (v77)
  {
    v71 = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
    v118 = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
    [v66 setItems:v72];
    goto LABEL_40;
  }

LABEL_41:
  v78 = [(HUDashboardItemManager *)self pinCodeAccessItem];
  v79 = [v4 containsObject:v78];

  if (v79)
  {
    v80 = [v66 items];
    v81 = [(HUDashboardItemManager *)self pinCodeAccessItem];
    v117 = v81;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
    v83 = [v80 arrayByAddingObjectsFromArray:v82];
    [v66 setItems:v83];

    v56 = v105;
  }

  v84 = [(HUDashboardItemManager *)self homeKeyItem];
  v85 = [v4 containsObject:v84];

  if (v85)
  {
    v86 = [v66 items];
    v87 = [(HUDashboardItemManager *)self homeKeyItem];
    v116 = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
    v89 = [v86 arrayByAddingObjectsFromArray:v88];
    [v66 setItems:v89];

    v56 = v105;
  }

  v90 = [(HUDashboardItemManager *)self contactOwnerItem];
  v91 = [v4 containsObject:v90];

  if (v91)
  {
    v92 = [v66 items];
    v93 = [(HUDashboardItemManager *)self contactOwnerItem];
    v115 = v93;
    v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
    v95 = [v92 arrayByAddingObjectsFromArray:v94];
    [v66 setItems:v95];

    v56 = v105;
  }

  [v5 na_safeAddObject:v66];

LABEL_48:
  v96 = [v5 na_firstObjectPassingTest:&__block_literal_global_319];
  v97 = v107;
  if (v96)
  {
    [v5 removeObject:v96];
    [v5 addObject:v96];
  }

  v98 = [(HUDashboardItemManager *)self context];
  if ([v98 shouldHideSectionWithIdentifier:@"servicePlaceholder"])
  {
    goto LABEL_55;
  }

  v99 = [(HFItemManager *)self home];
  if ([v99 hf_hasVisibleAccessories])
  {

LABEL_55:
    goto LABEL_56;
  }

  v100 = [(HUDashboardItemManager *)self context];
  v101 = [v100 shouldHidePlaceholderService];

  v97 = v107;
  if ((v101 & 1) == 0)
  {
    v102 = [(HUDashboardItemManager *)self servicePlaceholderItemModule];
    v98 = [v102 buildSectionsWithDisplayedItems:v4];

    [v5 na_safeAddObjectsFromArray:v98];
    goto LABEL_55;
  }

LABEL_56:
  v103 = v5;

  return v5;
}

uint64_t __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v3 identifier];

  LODWORD(v3) = [v4 shouldHideSectionWithIdentifier:v5];
  return v3 ^ 1;
}

void __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ routeIdentifier returned by MRNowPlayingRequest: %@", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) _buildNowPlayingSectionWithItems:*(a1 + 40) forRouteIdentifier:v3];
  [*(a1 + 48) na_safeAddObjectsFromArray:v6];
}

uint64_t __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28251AC90])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [*(a1 + 32) context];
  v7 = [v6 shouldHideInRoomSectionForAccessoryRepresentableItem:v5];

  return v7 ^ 1u;
}

uint64_t __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2_311(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 identifier];
  v8 = [v7 isEqual:@"favoritesSection"];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 items];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
    v12[3] = &unk_277DB85D8;
    v12[4] = *(a1 + 32);
    v9 = [v10 na_any:v12];

    if (v9)
    {
      *a4 = 1;
    }
  }

  return v9;
}

BOOL __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) childItemsForItem:a2];
  v3 = [MEMORY[0x277D145C8] hu_preferredToggleableControlItemInControlItems:v2];
  v4 = v3 != 0;

  return v4;
}

uint64_t __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v2);
  v4 = [MEMORY[0x277D14378] otherAccessoryTypeGroup];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_buildFavoritesSectionWithFavoriteItems:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"favoritesSection"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUDashboardFavoritesHeaderTitle", @"HUDashboardFavoritesHeaderTitle", 1);
  [v6 setHeaderTitle:v7];

  v8 = [(HUDashboardItemManager *)self reorderableFavoritesList];
  v9 = [v8 sortedHomeKitItemComparator];
  if (!v8)
  {
    v17.receiver = self;
    v17.super_class = HUDashboardItemManager;
    v10 = [(HFItemManager *)&v17 _comparatorForSectionIdentifier:@"favoritesSection"];

    v9 = v10;
  }

  v11 = [v5 allObjects];
  v12 = [v11 sortedArrayUsingComparator:v9];
  [v6 setItems:v12];

  v13 = MEMORY[0x277D14778];
  v18[0] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [v13 filterSections:v14 toDisplayedItems:v5];

  return v15;
}

- (id)_buildNowPlayingSectionWithItems:(id)a3 forRouteIdentifier:(id)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D14850];
  v8 = a3;
  v9 = [[v7 alloc] initWithIdentifier:@"NowPlayingSection"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUDashboardNowPlayingSectionTitle", @"HUDashboardNowPlayingSectionTitle", 1);
  [v9 setHeaderTitle:v10];

  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
  v13 = [v12 items];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
    v16 = [v15 items];
    v17 = [v16 allObjects];
    [v11 addObjectsFromArray:v17];
  }

  v18 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
  v19 = [v18 items];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    v22 = [v21 items];
    v23 = [v22 allObjects];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __78__HUDashboardItemManager__buildNowPlayingSectionWithItems_forRouteIdentifier___block_invoke;
    v38 = &unk_277DBE4B8;
    v39 = v6;
    v24 = [v23 na_firstObjectPassingTest:&v35];

    [v11 na_safeAddObject:{v24, v35, v36, v37, v38}];
  }

  v25 = [(HUDashboardItemManager *)self context];
  v26 = [v25 maximumNumberOfItemsInSectionWithIdentifier:@"SpeakersAndTVsSection"];

  if (v26 < 2)
  {
    if ([v11 count])
    {
      v30 = [v11 firstObject];
      v41[0] = v30;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = v11;
    v28 = [(HUDashboardItemManager *)self context];
    v29 = [v28 room];

    if (!v29)
    {
      [v9 setHeaderTitle:0];
    }
  }

  [v9 setItems:v27];
  v31 = MEMORY[0x277D14778];
  v40 = v9;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v33 = [v31 filterSections:v32 toDisplayedItems:v8];

  return v33;
}

uint64_t __78__HUDashboardItemManager__buildNowPlayingSectionWithItems_forRouteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 latestResults];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14000]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqualToString:*(a1 + 32)];
  return v8;
}

- (id)_buildRoomSectionsWithItems:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D14308];
  v6 = [v4 allObjects];
  v7 = [(HFItemManager *)self home];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUDashboardItemManager__buildRoomSectionsWithItems___block_invoke;
  v13[3] = &unk_277DBE4E0;
  v13[4] = self;
  v8 = [v5 createRoomSectionsWithItems:v6 inHome:v7 sectionIdentifierBlock:v13];

  v9 = [(HUDashboardItemManager *)self context];
  LODWORD(v6) = [v9 shouldHideEmptySections];

  if (v6)
  {
    v10 = [MEMORY[0x277D14778] filterSections:v8 toDisplayedItems:v4];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

id __54__HUDashboardItemManager__buildRoomSectionsWithItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = HUDashboardRoomSectionIdentifierForRoom(a2);
  v4 = [*(a1 + 32) context];
  v5 = [v4 shouldHideSectionWithIdentifier:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_buildSingleAccessoryGroupSectionWithItems:(id)a3 allDisplayedItems:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D14850];
  v8 = a4;
  v9 = [[v7 alloc] initWithIdentifier:@"AllAccessoriesSection"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_Accessories_Title", @"HUDashboardSection_Accessories_Title", 1);
  [v9 setHeaderTitle:v10];

  v11 = [(HUDashboardItemManager *)self accessoryNoAccessItem];
  v12 = [v8 containsObject:v11];

  if (v12)
  {
    v13 = [(HUDashboardItemManager *)self accessoryNoAccessItem];
    v17[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v9 setItems:v14];
  }

  else
  {
    v13 = [v6 allObjects];
    v14 = [MEMORY[0x277D14778] defaultItemComparator];
    v15 = [v13 sortedArrayUsingComparator:v14];
    [v9 setItems:v15];
  }

  return v9;
}

- (id)_buildAccessoryCategorySectionsWithItems:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithSet:v4];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = 0;
  v6 = [MEMORY[0x277D14308] sortedAccessoryTypeGroups];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__HUDashboardItemManager__buildAccessoryCategorySectionsWithItems___block_invoke;
  v24[3] = &unk_277DBE508;
  v24[4] = self;
  v7 = v5;
  v25 = v7;
  v26 = &v27;
  v8 = [v6 na_map:v24];

  if ([v7 count])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 count];
      *buf = 138412802;
      v34 = self;
      v35 = 2048;
      v36 = v10;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ Found %lu item(s) without an identified category: %@", buf, 0x20u);
    }

    v11 = [MEMORY[0x277D14378] otherAccessoryTypeGroup];
    v12 = [(HUDashboardItemManager *)self reorderableServiceListForType:v11];
    v13 = [v12 sortedHomeKitItemComparator];
    v14 = v13;
    if (v13)
    {
      v15 = _Block_copy(v13);
    }

    else
    {
      v16 = [MEMORY[0x277D14778] defaultItemComparator];
      v15 = _Block_copy(v16);
    }

    v17 = [v7 allObjects];
    v18 = [v17 sortedArrayUsingComparator:v15];
    [v28[5] setItems:v18];
  }

  v19 = [(HUDashboardItemManager *)self context];
  v20 = [v19 shouldHideEmptySections];

  if (v20)
  {
    v21 = [MEMORY[0x277D14778] filterSections:v8 toDisplayedItems:v4];
  }

  else
  {
    v21 = v8;
  }

  v22 = v21;

  _Block_object_dispose(&v27, 8);

  return v22;
}

id __67__HUDashboardItemManager__buildAccessoryCategorySectionsWithItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HUDashboardAccessoryCategorySectionIdentifierForAccessoryTypeGroup(v3);
  v5 = [*(a1 + 32) context];
  v6 = [v5 shouldHideSectionWithIdentifier:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v4];
    v9 = [v3 name];
    [v8 setHeaderTitle:v9];

    v10 = *(a1 + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__HUDashboardItemManager__buildAccessoryCategorySectionsWithItems___block_invoke_2;
    v23[3] = &unk_277DBE4B8;
    v11 = v3;
    v24 = v11;
    v12 = [v10 na_filter:v23];
    v13 = [*(a1 + 32) reorderableServiceListForType:v11];
    v14 = [v13 sortedHomeKitItemComparator];
    v15 = v14;
    if (v14)
    {
      v16 = _Block_copy(v14);
    }

    else
    {
      v17 = [MEMORY[0x277D14778] defaultItemComparator];
      v16 = _Block_copy(v17);
    }

    v18 = [v12 allObjects];
    v19 = [v18 sortedArrayUsingComparator:v16];
    [v8 setItems:v19];

    [*(a1 + 40) minusSet:v12];
    v20 = [MEMORY[0x277D14378] otherAccessoryTypeGroup];
    v21 = [v11 isEqual:v20];

    if (v21)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    }

    v7 = v8;
  }

  return v7;
}

uint64_t __67__HUDashboardItemManager__buildAccessoryCategorySectionsWithItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryRepresentableObject];
  v4 = [v3 hf_accessoryType];
  v5 = [v2 containsType:v4];

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  v10.receiver = self;
  v10.super_class = HUDashboardItemManager;
  v4 = a3;
  v5 = [(HFItemManager *)&v10 _itemsToHideInSet:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HUDashboardItemManager *)self homeMenuStatusItems];
  v8 = [v4 na_setByIntersectingWithSet:v7];

  [v6 unionSet:v8];

  return v6;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [HUStatusItemModule alloc];
  v6 = [(HUDashboardItemManager *)self context];
  v7 = [(HUStatusItemModule *)v5 initWithContext:v6 itemUpdater:self];
  [(HUDashboardItemManager *)self setStatusItemModule:v7];

  v8 = [(HUDashboardItemManager *)self statusItemModule];
  [v4 na_safeAddObject:v8];

  v9 = [HUDashboardActionSetItemModule alloc];
  v10 = [(HUDashboardItemManager *)self context];
  v11 = [(HUDashboardActionSetItemModule *)v9 initWithContext:v10 itemUpdater:self];
  [(HUDashboardItemManager *)self setActionSetItemModule:v11];

  v12 = [(HUDashboardItemManager *)self actionSetItemModule];
  [v4 na_safeAddObject:v12];

  v13 = [HUDashboardCameraItemModule alloc];
  v14 = [(HUDashboardItemManager *)self context];
  v15 = [(HUDashboardCameraItemModule *)v13 initWithContext:v14 itemUpdater:self];
  [(HUDashboardItemManager *)self setCameraItemModule:v15];

  v16 = [(HUDashboardItemManager *)self cameraItemModule];
  [v4 na_safeAddObject:v16];

  if ([MEMORY[0x277D14670] isHomeApp])
  {
    v17 = [(HUDashboardItemManager *)self context];
    v18 = [v17 shouldCreateModule:objc_opt_class()];

    if (v18)
    {
      v19 = [HUBannerItemModule alloc];
      v20 = [(HUDashboardItemManager *)self context];
      v21 = [(HUBannerItemModule *)v19 initWithContext:v20 itemUpdater:self];
      [(HUDashboardItemManager *)self setBannerItemModule:v21];

      v22 = [(HUDashboardItemManager *)self bannerItemModule];
      [v4 na_safeAddObject:v22];
    }

    v23 = [HUDashboardTipModule alloc];
    v24 = [(HUDashboardItemManager *)self context];
    v25 = [(HUDashboardTipModule *)v23 initWithContext:v24 itemUpdater:self];
    [(HUDashboardItemManager *)self setTipItemModule:v25];

    v26 = [(HUDashboardItemManager *)self tipItemModule];
    [v4 na_safeAddObject:v26];
  }

  v27 = [(HUDashboardItemManager *)self servicePlaceholderItemModule];
  [v4 na_safeAddObject:v27];

  v28 = [HUEnergyDashboardItemModule alloc];
  v29 = [(HUDashboardItemManager *)self context];
  v30 = [(HFItemManager *)self home];
  v31 = [(HUEnergyDashboardItemModule *)v28 initWithItemUpdater:self dashboardContext:v29 home:v30];
  [(HUDashboardItemManager *)self setEnergyDashboardItemModule:v31];

  v32 = [(HUDashboardItemManager *)self energyDashboardItemModule];
  [v4 na_safeAddObject:v32];

  return v4;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v11 _didFinishUpdateTransactionWithAffectedItems:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HUDashboardItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke;
  v10[3] = &unk_277DB85D8;
  v10[4] = self;
  v5 = [v4 na_filter:v10];
  if ([v5 count])
  {
    v6 = [(HUDashboardItemManager *)self dashboardDelegate];
    [v6 dashboardItemManager:self didUpdateHomeMenuStatusItems:v5];
  }

  v7 = [(HFItemManager *)self sourceItem];
  v8 = [v4 containsObject:v7];

  if (v8)
  {
    v9 = [(HFItemManager *)self itemModules];
    [v9 na_each:&__block_literal_global_349];
  }
}

void __71__HUDashboardItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsReordering])
  {
    [v2 setReorderableHomeKitItemList:0];
  }
}

- (id)reorderableServiceListForRoom:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];

  v7 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HUDashboardItemManager *)self setClientReorderableServiceListByRoom:v8];
  }

  v9 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
    v12 = [v11 objectForKeyedSubscript:v6];
  }

  else
  {
    v12 = [v4 hf_reorderableServicesList];
  }

  return v12;
}

- (void)setReorderableServiceList:(id)a3 forRoom:(id)a4
{
  v6 = a3;
  v7 = [a4 uniqueIdentifier];
  v9 = [v7 UUIDString];

  v8 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
  [v8 setObject:v6 forKeyedSubscript:v9];
}

- (id)reorderableServiceListForType:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  v6 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HUDashboardItemManager *)self setClientReorderableServiceByTypeList:v7];
  }

  v8 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (v9)
  {
    v10 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
    v11 = [v10 objectForKeyedSubscript:v5];
  }

  else
  {
    v10 = [(HFItemManager *)self sourceItem];
    v12 = [v10 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13EF0]];
    v11 = [v13 objectForKeyedSubscript:v5];
  }

  return v11;
}

- (void)setReorderableServiceList:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = [a4 uniqueIdentifier];
  v9 = [v7 UUIDString];

  v8 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
  [v8 setObject:v6 forKeyedSubscript:v9];
}

- (id)reorderableFavoritesList
{
  v3 = [(HUDashboardItemManager *)self clientReorderableFavoritesList];

  if (v3)
  {
    v4 = [(HUDashboardItemManager *)self clientReorderableFavoritesList];
  }

  else
  {
    objc_opt_class();
    v5 = [(HFItemManager *)self sourceItem];
    v6 = [v5 latestResults];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13EE8]];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v4 = v8;
  }

  return v4;
}

- (void)_updateHomeDashboardWithHome:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HUDashboardContext homeDashboardForHome:v5];
  context = self->_context;
  self->_context = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 uniqueIdentifier];
    v10 = self->_context;
    *buf = 138412802;
    v20 = v5;
    v21 = 2114;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_INFO, "<HUDashboardItemManager-_updateHomeDashboardWithHome:> home = %@ (uniqueIdentifier = %{public}@) | created new _context = %@", buf, 0x20u);
  }

  v11 = [(HUDashboardItemManager *)self dashboardDelegate];
  v12 = [(HUDashboardItemManager *)self context];
  [v11 dashboardItemManager:self didUpdateContext:v12];

  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  v13 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  v18[0] = v13;
  v14 = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  v18[1] = v14;
  v15 = [(HUDashboardItemManager *)self staticItemProvider];
  v18[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v17 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v16 senderSelector:a2];
}

- (HUDashboardItemManagerDelegate)dashboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dashboardDelegate);

  return WeakRetained;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUDashboardItemManager *)self pinCodeManager];
  [v3 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUDashboardItemManager *)self pinCodeManager];
  [v3 removeObserver:self];
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v5 home:a3 didAddRoom:a4];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v5 home:a3 didRemoveRoom:a4];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v9 homeDidUpdateApplicationData:a3];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  v5 = [(HUDashboardItemManager *)self actionSetItemModule];
  v6 = [v5 itemProviders];
  v7 = [v6 allObjects];
  v8 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v7 senderSelector:a2];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v14 homeDidUpdateAccessControlForCurrentUser:v4];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 currentUser];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 uniqueIdentifier];
    *buf = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "<HUDashboardItemManager-homeDidUpdateAccessControlForCurrentUser:> Access control for current user (uniqueIdentifier:%{public}@) did update for home: %@ (uniqueIdentifier: %{public}@)", buf, 0x20u);
  }

  v9 = [(HUDashboardItemManager *)self context];
  v10 = [v9 home];
  v11 = v4;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10)
    {

      goto LABEL_12;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (([v12 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade] & 1) != 0 || objc_msgSend(v12, "hf_currentUserIsRestrictedGuest"))
  {
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:v12];
  }

LABEL_12:
}

- (void)homeDidUpdateHomeLocationStatus:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    [v5 homeLocationStatus];
    v8 = HMStringFromHomeLocation();
    v14 = 138413058;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Home location status did update for home: %@. homeLocationStatus = %@", &v14, 0x2Au);
  }

  v9 = [(HUDashboardItemManager *)self context];
  v10 = [v9 home];
  v11 = v5;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10)
    {

      goto LABEL_11;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ([v12 hf_currentUserIsRestrictedGuest])
  {
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:v12];
  }

LABEL_11:
}

- (void)restrictedGuestAllowedPeriodStarted:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period started for user: %@.", &v17, 0x20u);
  }

  v8 = [(HUDashboardItemManager *)self context];
  v9 = [v8 home];
  v10 = [v9 currentUser];
  v11 = v5;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10)
    {

      goto LABEL_11;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v14 = [(HUDashboardItemManager *)self context];
  v15 = [v14 home];
  v16 = [v15 hf_currentUserIsRestrictedGuest];

  if (v16)
  {
    v8 = [(HUDashboardItemManager *)self context];
    v9 = [v8 home];
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:v9];
LABEL_11:
  }

LABEL_12:
}

- (void)restrictedGuestAllowedPeriodEnded:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period ended for user: %@.", &v17, 0x20u);
  }

  v8 = [(HUDashboardItemManager *)self context];
  v9 = [v8 home];
  v10 = [v9 currentUser];
  v11 = v5;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10)
    {

      goto LABEL_11;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v14 = [(HUDashboardItemManager *)self context];
  v15 = [v14 home];
  v16 = [v15 hf_currentUserIsRestrictedGuest];

  if (v16)
  {
    v8 = [(HUDashboardItemManager *)self context];
    v9 = [v8 home];
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:v9];
LABEL_11:
  }

LABEL_12:
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v14 homeManager:a3 didUpdateHH2State:?];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUDashboardItemManager *)self context];
    v8 = [v7 home];
    v9 = [(HUDashboardItemManager *)self context];
    v10 = [v9 home];
    v11 = [v10 uniqueIdentifier];
    *buf = 67109634;
    v16 = v4;
    v17 = 2112;
    v18 = v8;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "<HUDashboardItemManager-homeManager:didUpdateHH2State:> didUpdateHH2State = %{BOOL}d | Updating context for home %@ (uniqueIdentifier: %{public}@)", buf, 0x1Cu);
  }

  v12 = [(HUDashboardItemManager *)self context];
  v13 = [v12 home];
  [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:v13];
}

- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Reloading PIN Code related items...", buf, 0x16u);
  }

  v8 = [(HUDashboardItemManager *)self nonBlockingItemProvider];

  if (v8)
  {
    v9 = [(HUDashboardItemManager *)self nonBlockingItemProvider];
    v12 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v11 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v10 senderSelector:a2];
  }
}

- (void)dealloc
{
  [(HUDashboardItemManager *)self setEnergyDashboardItemModule:0];
  v3.receiver = self;
  v3.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v3 dealloc];
}

@end