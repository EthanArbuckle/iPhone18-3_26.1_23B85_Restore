@interface HUDashboardItemManager
- (BOOL)isEmptyDashboard;
- (BOOL)isHomeMenuStatusItem:(id)item;
- (HUDashboardItemManager)initWithContext:(id)context delegate:(id)delegate;
- (HUDashboardItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUDashboardItemManagerDelegate)dashboardDelegate;
- (NSSet)homeMenuStatusItems;
- (id)_buildAccessoryCategorySectionsWithItems:(id)items;
- (id)_buildFavoritesSectionWithFavoriteItems:(id)items;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildNowPlayingSectionWithItems:(id)items forRouteIdentifier:(id)identifier;
- (id)_buildRoomSectionsWithItems:(id)items;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_buildSingleAccessoryGroupSectionWithItems:(id)items allDisplayedItems:(id)displayedItems;
- (id)_buildStaticItemsForHome:(id)home;
- (id)_itemSectionForRoom:(id)room;
- (id)_itemsToHideInSet:(id)set;
- (id)_itemsToUpdateWhenApplicationDidBecomeActive;
- (id)buildItemForHomeKitObject:(id)object;
- (id)itemModuleForSectionIdentifier:(id)identifier;
- (id)matchingItemForHomeKitObject:(id)object;
- (id)reorderableFavoritesList;
- (id)reorderableServiceListForRoom:(id)room;
- (id)reorderableServiceListForType:(id)type;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)_updateHomeDashboardWithHome:(id)home;
- (void)dealloc;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeDidUpdateHomeLocationStatus:(id)status;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes;
- (void)restrictedGuestAllowedPeriodEnded:(id)ended;
- (void)restrictedGuestAllowedPeriodStarted:(id)started;
- (void)setHome:(id)home;
- (void)setReorderableServiceList:(id)list forRoom:(id)room;
- (void)setReorderableServiceList:(id)list forType:(id)type;
- (void)updateItemSectionHeaderTitleForRoom:(id)room;
@end

@implementation HUDashboardItemManager

- (HUDashboardItemManager)initWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = HUDashboardItemManager;
  v9 = [(HFItemManager *)&v22 initWithDelegate:delegateCopy sourceItem:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeWeak(&v10->_dashboardDelegate, delegateCopy);
    v11 = [(HFItemModule *)[HUServicePlaceholderItemModule alloc] initWithItemUpdater:v10];
    servicePlaceholderItemModule = v10->_servicePlaceholderItemModule;
    v10->_servicePlaceholderItemModule = v11;

    context = [(HUDashboardItemManager *)v10 context];
    home = [context home];
    hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];

    if (hf_currentUserIsRestrictedGuest)
    {
      mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
      context2 = [(HUDashboardItemManager *)v10 context];
      home2 = [context2 home];
      v19 = [mEMORY[0x277D146E8] pinCodeManagerForHome:home2];
      pinCodeManager = v10->_pinCodeManager;
      v10->_pinCodeManager = v19;
    }
  }

  return v10;
}

- (HUDashboardItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithContext_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDashboardItemManager.m" lineNumber:98 description:{@"%s is unavailable; use %@ instead", "-[HUDashboardItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isEmptyDashboard
{
  context = [(HUDashboardItemManager *)self context];
  room = [context room];

  if (room)
  {
    context2 = [(HUDashboardItemManager *)self context];
    room2 = [context2 room];
    hf_visibleAccessories = [room2 hf_visibleAccessories];

    LOBYTE(context2) = [hf_visibleAccessories na_all:&__block_literal_global_130];
    context3 = [(HUDashboardItemManager *)self context];
    room3 = [context3 room];
    LOBYTE(context2) = [room3 hf_hasVisibleAccessories] ^ 1 | context2;
  }

  else
  {
    hf_visibleAccessories = [(HFItemManager *)self home];
    context2 = [hf_visibleAccessories hf_hasVisibleAccessories] ^ 1u;
  }

  return context2 & 1;
}

- (NSSet)homeMenuStatusItems
{
  statusItemModule = [(HUDashboardItemManager *)self statusItemModule];
  allItems = [statusItemModule allItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HUDashboardItemManager_homeMenuStatusItems__block_invoke;
  v7[3] = &unk_277DB85D8;
  v7[4] = self;
  v5 = [allItems na_filter:v7];

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

- (BOOL)isHomeMenuStatusItem:(id)item
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
    hu_homeMenuStatusItemClasses = [MEMORY[0x277D14B58] hu_homeMenuStatusItemClasses];
    v8 = [hu_homeMenuStatusItemClasses containsObject:objc_opt_class()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)itemModuleForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"scenesSection"])
  {
    actionSetItemModule = [(HUDashboardItemManager *)self actionSetItemModule];
LABEL_9:
    v6 = actionSetItemModule;
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"camerasSection"])
  {
    actionSetItemModule = [(HUDashboardItemManager *)self cameraItemModule];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"statusSection"])
  {
    actionSetItemModule = [(HUDashboardItemManager *)self statusItemModule];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"tipsSection"])
  {
    actionSetItemModule = [(HUDashboardItemManager *)self tipItemModule];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)buildItemForHomeKitObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_2825BCA78])
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    accessoryLikeItemProvider = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    v8 = [accessoryLikeItemProvider buildItemForAccessoryRepresentable:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_itemSectionForRoom:(id)room
{
  v4 = HUDashboardRoomSectionIdentifierForRoom(room);
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

- (void)updateItemSectionHeaderTitleForRoom:(id)room
{
  v29 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  objc_opt_class();
  v5 = [(HUDashboardItemManager *)self _itemSectionForRoom:roomCopy];
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
    headerTitle = [v7 headerTitle];
    name = [roomCopy name];
    v10 = [headerTitle isEqualToString:name];

    v11 = HFLogForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        name2 = [roomCopy name];
        *buf = 138412802;
        selfCopy3 = self;
        v21 = 2080;
        v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
        v23 = 2112;
        v24 = name2;
        v14 = "(%@ %s) Not updating room name %@ since it's the same.";
LABEL_10:
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
      }
    }

    else
    {
      if (v12)
      {
        headerTitle2 = [v7 headerTitle];
        name3 = [roomCopy name];
        *buf = 138413314;
        selfCopy3 = self;
        v21 = 2080;
        v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
        v23 = 2112;
        v24 = headerTitle2;
        v25 = 2112;
        v26 = name3;
        v27 = 2112;
        v28 = roomCopy;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@ %s) Updating room name from %@ to %@ for room %@", buf, 0x34u);
      }

      name4 = [roomCopy name];
      [v7 setHeaderTitle:name4];

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
      name2 = [roomCopy name];
      *buf = 138412802;
      selfCopy3 = self;
      v21 = 2080;
      v22 = "[HUDashboardItemManager updateItemSectionHeaderTitleForRoom:]";
      v23 = 2112;
      v24 = name2;
      v14 = "(%@ %s) roomItemSection is nil for room %@";
      goto LABEL_10;
    }
  }
}

- (void)setHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    context = [(HUDashboardItemManager *)self context];
    home = [context home];
    v7 = homeCopy;
    v8 = v7;
    if (home == v7)
    {
    }

    else
    {
      if (home)
      {
        v9 = [home isEqual:v7];

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

      context2 = [(HUDashboardItemManager *)self context];
      home2 = [context2 home];
      hf_currentUserIsRestrictedGuest = [home2 hf_currentUserIsRestrictedGuest];

      if (hf_currentUserIsRestrictedGuest)
      {
        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        context3 = [(HUDashboardItemManager *)self context];
        home3 = [context3 home];
        v18 = [mEMORY[0x277D146E8] pinCodeManagerForHome:home3];
        [(HUDashboardItemManager *)self setPinCodeManager:v18];

        pinCodeManager = [(HUDashboardItemManager *)self pinCodeManager];
        [pinCodeManager addObserver:self];
      }

      else
      {
        pinCodeManager2 = [(HUDashboardItemManager *)self pinCodeManager];
        [pinCodeManager2 removeObserver:self];

        [(HUDashboardItemManager *)self setPinCodeManager:0];
      }

      context = [(HUDashboardItemManager *)self dashboardDelegate];
      home = [(HUDashboardItemManager *)self context];
      [context dashboardItemManager:self didUpdateContext:home];
    }
  }

LABEL_13:
  v21.receiver = self;
  v21.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v21 setHome:homeCopy];
}

- (id)matchingItemForHomeKitObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6 = MEMORY[0x277CBEB58];
    uniqueIdentifier = [objectCopy uniqueIdentifier];
    v8 = [v6 na_setWithSafeObject:uniqueIdentifier];

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

    allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__HUDashboardItemManager_matchingItemForHomeKitObject___block_invoke_4;
    v18[3] = &unk_277DB95B0;
    v19 = v9;
    v20 = v8;
    v15 = v8;
    v16 = [allDisplayedItems na_firstObjectPassingTest:v18];
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

- (id)_buildStaticItemsForHome:(id)home
{
  homeCopy = home;
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

  accessoryNoAccessItem = [(HUDashboardItemManager *)self accessoryNoAccessItem];
  [v6 addObject:accessoryNoAccessItem];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_2;
  v34[3] = &unk_277DB7448;
  objc_copyWeak(&v35, location);
  v11 = [v10 initWithResultsBlock:v34];
  [(HUDashboardItemManager *)self setAlwaysAllowedScheduleItem:v11];

  alwaysAllowedScheduleItem = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
  [v6 na_safeAddObject:alwaysAllowedScheduleItem];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HUDashboardItemManager__buildStaticItemsForHome___block_invoke_3;
  v31[3] = &unk_277DBE3C8;
  objc_copyWeak(v33, location);
  v33[1] = a2;
  v14 = homeCopy;
  v32 = v14;
  v15 = [v13 initWithResultsBlock:v31];
  [(HUDashboardItemManager *)self setPinCodeAccessItem:v15];

  pinCodeAccessItem = [(HUDashboardItemManager *)self pinCodeAccessItem];
  [v6 addObject:pinCodeAccessItem];

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

  homeKeyItem = [(HUDashboardItemManager *)self homeKeyItem];
  [v6 na_safeAddObject:homeKeyItem];

  v21 = [[HUContactHomeOwnerItem alloc] initWithHome:v18];
  [(HUDashboardItemManager *)self setContactOwnerItem:v21];

  contactOwnerItem = [(HUDashboardItemManager *)self contactOwnerItem];
  [v6 addObject:contactOwnerItem];

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

- (id)_buildItemProvidersForHome:(id)home
{
  v86[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  context = [(HUDashboardItemManager *)self context];
  room = [context room];

  if (room)
  {
    v7 = objc_alloc(MEMORY[0x277D149E0]);
    context2 = [(HUDashboardItemManager *)self context];
    room2 = [context2 room];
    v10 = [v7 initWithHome:homeCopy room:room2];
    [(HFItemManager *)self setSourceItem:v10];
  }

  else
  {
    if (!homeCopy)
    {
      goto LABEL_6;
    }

    context2 = [objc_alloc(MEMORY[0x277D146D0]) initWithHome:homeCopy];
    [(HFItemManager *)self setSourceItem:context2];
  }

LABEL_6:
  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D14CE8] shouldShowFakeContentForPerformanceTesting])
    {
      v12 = objc_alloc_init(MEMORY[0x277D14688]);
      [(HUDashboardItemManager *)self setFakeSpeakersAndTVsItemProvider:v12];

      fakeSpeakersAndTVsItemProvider = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
      [array addObject:fakeSpeakersAndTVsItemProvider];
    }

    v14 = objc_alloc(MEMORY[0x277D142F8]);
    context3 = [(HUDashboardItemManager *)self context];
    room3 = [context3 room];
    home = room3;
    if (!room3)
    {
      context4 = [(HUDashboardItemManager *)self context];
      home = [context4 home];
    }

    context5 = [(HUDashboardItemManager *)self context];
    home2 = [context5 home];
    v20 = [v14 initWithAccessoryContainer:home inHome:home2];
    [(HUDashboardItemManager *)self setSpeakersAndTVsItemProvider:v20];

    if (!room3)
    {
    }

    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke;
    v83[3] = &unk_277DBE418;
    objc_copyWeak(&v84, &location);
    speakersAndTVsItemProvider = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    [speakersAndTVsItemProvider setFilterBlock:v83];

    speakersAndTVsItemProvider2 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    [array addObject:speakersAndTVsItemProvider2];

    objc_destroyWeak(&v84);
  }

  v23 = objc_alloc(MEMORY[0x277D142F8]);
  context6 = [(HUDashboardItemManager *)self context];
  room4 = [context6 room];
  home3 = room4;
  if (!room4)
  {
    context4 = [(HUDashboardItemManager *)self context];
    home3 = [context4 home];
  }

  context7 = [(HUDashboardItemManager *)self context];
  home4 = [context7 home];
  v29 = [v23 initWithAccessoryContainer:home3 inHome:home4];
  [(HUDashboardItemManager *)self setFavoritesItemProvider:v29];

  if (!room4)
  {
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_2;
  v81[3] = &unk_277DBE418;
  objc_copyWeak(&v82, &location);
  favoritesItemProvider = [(HUDashboardItemManager *)self favoritesItemProvider];
  [favoritesItemProvider setFilterBlock:v81];

  favoritesItemProvider2 = [(HUDashboardItemManager *)self favoritesItemProvider];
  [array addObject:favoritesItemProvider2];

  v32 = objc_alloc(MEMORY[0x277D142F8]);
  context8 = [(HUDashboardItemManager *)self context];
  room5 = [context8 room];
  home5 = room5;
  if (!room5)
  {
    context4 = [(HUDashboardItemManager *)self context];
    home5 = [context4 home];
  }

  context9 = [(HUDashboardItemManager *)self context];
  home6 = [context9 home];
  v38 = [v32 initWithAccessoryContainer:home5 inHome:home6];
  [(HUDashboardItemManager *)self setAccessoryLikeItemProvider:v38];

  if (!room5)
  {
  }

  context10 = [(HUDashboardItemManager *)self context];
  accessoryLikeItemObjectLevel = [context10 accessoryLikeItemObjectLevel];
  accessoryLikeItemProvider = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  [accessoryLikeItemProvider setObjectLevel:accessoryLikeItemObjectLevel];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __53__HUDashboardItemManager__buildItemProvidersForHome___block_invoke_3;
  v79[3] = &unk_277DBE418;
  objc_copyWeak(&v80, &location);
  accessoryLikeItemProvider2 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  [accessoryLikeItemProvider2 setFilterBlock:v79];

  context11 = [(HUDashboardItemManager *)self context];
  accessoryTypeGroup = [context11 accessoryTypeGroup];

  if (accessoryTypeGroup)
  {
    context12 = [(HUDashboardItemManager *)self context];
    accessoryTypeGroup2 = [context12 accessoryTypeGroup];
    v86[0] = accessoryTypeGroup2;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
    accessoryLikeItemProvider3 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    [accessoryLikeItemProvider3 setAccessoryTypeGroups:v47];
  }

  else
  {
    context12 = [MEMORY[0x277D14308] sortedAccessoryTypeGroups];
    accessoryTypeGroup2 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
    [accessoryTypeGroup2 setAccessoryTypeGroups:context12];
  }

  v49 = [HUDashboardAccessoryTransformItemProvider alloc];
  accessoryLikeItemProvider4 = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  home7 = [(HFItemManager *)self home];
  v52 = [(HUDashboardAccessoryTransformItemProvider *)v49 initWithSourceProvider:accessoryLikeItemProvider4 inHome:home7];
  [(HUDashboardItemManager *)self setAccessoryTransformItemProvider:v52];

  context13 = [(HUDashboardItemManager *)self context];
  accessoryGroupingStyle = [context13 accessoryGroupingStyle];
  accessoryTransformItemProvider = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  [accessoryTransformItemProvider setSplitAccessoryGroupsByRoom:accessoryGroupingStyle == 2];

  accessoryTransformItemProvider2 = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  [array addObject:accessoryTransformItemProvider2];

  v57 = objc_alloc(MEMORY[0x277D14A30]);
  context14 = [(HUDashboardItemManager *)self context];
  home8 = [context14 home];
  v60 = [v57 initWithHome:home8];
  [(HUDashboardItemManager *)self setScheduleRuleItemProvider:v60];

  scheduleRuleItemProvider = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
  [array addObject:scheduleRuleItemProvider];

  v62 = [(HUDashboardItemManager *)self _buildStaticItemsForHome:homeCopy];
  if ([v62 count])
  {
    context15 = [(HUDashboardItemManager *)self context];
    home9 = [context15 home];
    hf_currentUserIsRestrictedGuest = [home9 hf_currentUserIsRestrictedGuest];

    v66 = MEMORY[0x277CBEB98];
    pinCodeAccessItem = [(HUDashboardItemManager *)self pinCodeAccessItem];
    homeKeyItem = [(HUDashboardItemManager *)self homeKeyItem];
    v69 = [v66 setWithObjects:{pinCodeAccessItem, homeKeyItem, 0}];

    if (hf_currentUserIsRestrictedGuest)
    {
      v70 = [objc_alloc(MEMORY[0x277D14B48]) initWithItems:v69];
      [(HUDashboardItemManager *)self setNonBlockingItemProvider:v70];

      v71 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D13B88]];
      nonBlockingItemProvider = [(HUDashboardItemManager *)self nonBlockingItemProvider];
      [nonBlockingItemProvider setClientInvalidationReasons:v71];

      nonBlockingItemProvider2 = [(HUDashboardItemManager *)self nonBlockingItemProvider];
      [array addObject:nonBlockingItemProvider2];
    }

    v74 = [v62 na_setByRemovingObjectsFromSet:v69];

    v75 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v74];
    [(HUDashboardItemManager *)self setStaticItemProvider:v75];

    staticItemProvider = [(HUDashboardItemManager *)self staticItemProvider];
    [array na_safeAddObject:staticItemProvider];
  }

  else
  {
    v74 = v62;
  }

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);

  return array;
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
  bannerItemModule = [(HUDashboardItemManager *)self bannerItemModule];
  bannerItemProvider = [bannerItemModule bannerItemProvider];
  setupBannerItem = [bannerItemProvider setupBannerItem];
  v6 = [v2 na_setWithSafeObject:setupBannerItem];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v119[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  context = [(HUDashboardItemManager *)self context];
  v7 = [context shouldHideSectionWithIdentifier:@"bannersSection"];

  if ((v7 & 1) == 0)
  {
    bannerItemModule = [(HUDashboardItemManager *)self bannerItemModule];
    v9 = [bannerItemModule buildSectionsWithDisplayedItems:itemsCopy];

    [array na_safeAddObjectsFromArray:v9];
  }

  context2 = [(HUDashboardItemManager *)self context];
  v11 = [context2 shouldHideSectionWithIdentifier:@"statusSection"];

  if ((v11 & 1) == 0)
  {
    statusItemModule = [(HUDashboardItemManager *)self statusItemModule];
    v13 = [statusItemModule buildSectionsWithDisplayedItems:itemsCopy];

    [array na_safeAddObjectsFromArray:v13];
  }

  context3 = [(HUDashboardItemManager *)self context];
  v15 = [context3 shouldHideSectionWithIdentifier:@"tipsSection"];

  if (v15)
  {
    v108 = 0;
  }

  else
  {
    tipItemModule = [(HUDashboardItemManager *)self tipItemModule];
    v108 = [tipItemModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  energyDashboardItemModule = [(HUDashboardItemManager *)self energyDashboardItemModule];
  v18 = [energyDashboardItemModule buildSectionsWithDisplayedItems:itemsCopy];

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v114[3] = &unk_277DBE440;
  v114[4] = self;
  v19 = [v18 na_filter:v114];

  v106 = v19;
  [array na_safeAddObjectsFromArray:v19];
  array2 = [MEMORY[0x277CBEB18] array];
  context4 = [(HUDashboardItemManager *)self context];
  if (([context4 shouldHideSectionWithIdentifier:@"camerasSection"] & 1) == 0)
  {
    context5 = [(HUDashboardItemManager *)self context];
    cameraPresentationStyle = [context5 cameraPresentationStyle];

    if (cameraPresentationStyle != 1)
    {
      goto LABEL_12;
    }

    cameraItemModule = [(HUDashboardItemManager *)self cameraItemModule];
    context4 = [cameraItemModule buildSectionsWithDisplayedItems:itemsCopy];

    [array2 na_safeAddObjectsFromArray:context4];
  }

LABEL_12:
  context6 = [(HUDashboardItemManager *)self context];
  v26 = [context6 shouldHideSectionWithIdentifier:@"scenesSection"];

  if ((v26 & 1) == 0)
  {
    actionSetItemModule = [(HUDashboardItemManager *)self actionSetItemModule];
    v28 = [actionSetItemModule buildSectionsWithDisplayedItems:itemsCopy];

    [array2 na_safeAddObjectsFromArray:v28];
  }

  if (_os_feature_enabled_impl())
  {
    context7 = [(HUDashboardItemManager *)self context];
    v30 = [context7 shouldHideSectionWithIdentifier:@"NowPlayingSection"];

    if ((v30 & 1) == 0)
    {
      v31 = MEMORY[0x277D279C8];
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
      v111[3] = &unk_277DBE468;
      v111[4] = self;
      v112 = itemsCopy;
      v113 = array;
      [v31 homePlatterPreferredRouteIdentifier:v111];
    }
  }

  accessoryTransformItemProvider = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  items = [accessoryTransformItemProvider items];
  v34 = [items na_setByIntersectingWithSet:itemsCopy];

  context8 = [(HUDashboardItemManager *)self context];
  LOBYTE(items) = [context8 shouldHideSectionWithIdentifier:@"favoritesSection"];

  if ((items & 1) == 0)
  {
    favoritesItemProvider = [(HUDashboardItemManager *)self favoritesItemProvider];
    items2 = [favoritesItemProvider items];
    v38 = [items2 na_setByIntersectingWithSet:itemsCopy];

    v39 = [(HUDashboardItemManager *)self _buildFavoritesSectionWithFavoriteItems:v38];
    [array2 na_safeAddObjectsFromArray:v39];
  }

  context9 = [(HUDashboardItemManager *)self context];
  accessoryGroupingStyle = [context9 accessoryGroupingStyle];

  if (accessoryGroupingStyle == 2)
  {
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_305;
    v110[3] = &unk_277DBA780;
    v110[4] = self;
    v42 = [v34 na_filter:v110];
    v43 = [(HUDashboardItemManager *)self _buildRoomSectionsWithItems:v42];
    [array2 addObjectsFromArray:v43];
  }

  context10 = [(HUDashboardItemManager *)self context];
  accessoryGroupingStyle2 = [context10 accessoryGroupingStyle];

  if (accessoryGroupingStyle2 == 3)
  {
    v46 = [(HUDashboardItemManager *)self _buildAccessoryCategorySectionsWithItems:v34];
    [array2 addObjectsFromArray:v46];
  }

  context11 = [(HUDashboardItemManager *)self context];
  v48 = [context11 shouldHideSectionWithIdentifier:@"AllAccessoriesSection"];

  if ((v48 & 1) == 0)
  {
    v49 = [(HUDashboardItemManager *)self _buildSingleAccessoryGroupSectionWithItems:v34 allDisplayedItems:itemsCopy];
    [array2 addObject:v49];
  }

  v107 = v34;
  context12 = [(HUDashboardItemManager *)self context];
  room = [context12 room];

  v52 = objc_alloc(MEMORY[0x277CCAC98]);
  if (room)
  {
    context13 = [(HUDashboardItemManager *)self context];
    room2 = [context13 room];
    hf_dashboardSectionReorderableUUIDStringComparator = [room2 hf_dashboardSectionReorderableUUIDStringComparator];
    v56 = [v52 initWithKey:@"identifier" ascending:1 comparator:hf_dashboardSectionReorderableUUIDStringComparator];
  }

  else
  {
    context13 = [(HFItemManager *)self home];
    room2 = [context13 hf_dashboardSectionReorderableUUIDStringComparator];
    v56 = [v52 initWithKey:@"identifier" ascending:1 comparator:room2];
  }

  v119[0] = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:1];
  [array2 sortUsingDescriptors:v57];

  [array na_safeAddObjectsFromArray:array2];
  if (v108)
  {
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __59__HUDashboardItemManager__buildSectionsWithDisplayedItems___block_invoke_2_311;
    v109[3] = &unk_277DBE490;
    v109[4] = self;
    v58 = [array indexOfObjectPassingTest:v109];
    if (v58 < [array count])
    {
      v59 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v58 + 1, objc_msgSend(v108, "count")}];
      [array insertObjects:v108 atIndexes:v59];
    }
  }

  context14 = [(HUDashboardItemManager *)self context];
  if (([context14 shouldHideSectionWithIdentifier:@"camerasSection"] & 1) == 0)
  {
    context15 = [(HUDashboardItemManager *)self context];
    cameraPresentationStyle2 = [context15 cameraPresentationStyle];

    if (cameraPresentationStyle2 != 2)
    {
      goto LABEL_35;
    }

    cameraItemModule2 = [(HUDashboardItemManager *)self cameraItemModule];
    context14 = [cameraItemModule2 buildSectionsWithDisplayedItems:itemsCopy];

    [array na_safeAddObjectsFromArray:context14];
  }

LABEL_35:
  context16 = [(HUDashboardItemManager *)self context];
  v65 = [context16 shouldHideSectionWithIdentifier:@"GuestAccessSection"];

  if (v65)
  {
    goto LABEL_48;
  }

  v66 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"GuestAccessSection"];
  v67 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_GuestAccess_Title", @"HUDashboardSection_GuestAccess_Title", 1);
  [v66 setHeaderTitle:v67];

  scheduleRuleItemProvider = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
  items3 = [scheduleRuleItemProvider items];
  v70 = [itemsCopy intersectsSet:items3];

  v105 = v56;
  if (v70)
  {
    scheduleRuleItemProvider2 = [(HUDashboardItemManager *)self scheduleRuleItemProvider];
    items4 = [scheduleRuleItemProvider2 items];
    allObjects = [items4 allObjects];
    sortComparatorForScheduleRules = [MEMORY[0x277D14A50] sortComparatorForScheduleRules];
    v75 = [allObjects sortedArrayUsingComparator:sortComparatorForScheduleRules];
    [v66 setItems:v75];

    v56 = v105;
LABEL_40:

    goto LABEL_41;
  }

  alwaysAllowedScheduleItem = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
  v77 = [itemsCopy containsObject:alwaysAllowedScheduleItem];

  if (v77)
  {
    scheduleRuleItemProvider2 = [(HUDashboardItemManager *)self alwaysAllowedScheduleItem];
    v118 = scheduleRuleItemProvider2;
    items4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
    [v66 setItems:items4];
    goto LABEL_40;
  }

LABEL_41:
  pinCodeAccessItem = [(HUDashboardItemManager *)self pinCodeAccessItem];
  v79 = [itemsCopy containsObject:pinCodeAccessItem];

  if (v79)
  {
    items5 = [v66 items];
    pinCodeAccessItem2 = [(HUDashboardItemManager *)self pinCodeAccessItem];
    v117 = pinCodeAccessItem2;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
    v83 = [items5 arrayByAddingObjectsFromArray:v82];
    [v66 setItems:v83];

    v56 = v105;
  }

  homeKeyItem = [(HUDashboardItemManager *)self homeKeyItem];
  v85 = [itemsCopy containsObject:homeKeyItem];

  if (v85)
  {
    items6 = [v66 items];
    homeKeyItem2 = [(HUDashboardItemManager *)self homeKeyItem];
    v116 = homeKeyItem2;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
    v89 = [items6 arrayByAddingObjectsFromArray:v88];
    [v66 setItems:v89];

    v56 = v105;
  }

  contactOwnerItem = [(HUDashboardItemManager *)self contactOwnerItem];
  v91 = [itemsCopy containsObject:contactOwnerItem];

  if (v91)
  {
    items7 = [v66 items];
    contactOwnerItem2 = [(HUDashboardItemManager *)self contactOwnerItem];
    v115 = contactOwnerItem2;
    v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
    v95 = [items7 arrayByAddingObjectsFromArray:v94];
    [v66 setItems:v95];

    v56 = v105;
  }

  [array na_safeAddObject:v66];

LABEL_48:
  v96 = [array na_firstObjectPassingTest:&__block_literal_global_319];
  v97 = v107;
  if (v96)
  {
    [array removeObject:v96];
    [array addObject:v96];
  }

  context17 = [(HUDashboardItemManager *)self context];
  if ([context17 shouldHideSectionWithIdentifier:@"servicePlaceholder"])
  {
    goto LABEL_55;
  }

  home = [(HFItemManager *)self home];
  if ([home hf_hasVisibleAccessories])
  {

LABEL_55:
    goto LABEL_56;
  }

  context18 = [(HUDashboardItemManager *)self context];
  shouldHidePlaceholderService = [context18 shouldHidePlaceholderService];

  v97 = v107;
  if ((shouldHidePlaceholderService & 1) == 0)
  {
    servicePlaceholderItemModule = [(HUDashboardItemManager *)self servicePlaceholderItemModule];
    context17 = [servicePlaceholderItemModule buildSectionsWithDisplayedItems:itemsCopy];

    [array na_safeAddObjectsFromArray:context17];
    goto LABEL_55;
  }

LABEL_56:
  v103 = array;

  return array;
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

- (id)_buildFavoritesSectionWithFavoriteItems:(id)items
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"favoritesSection"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUDashboardFavoritesHeaderTitle", @"HUDashboardFavoritesHeaderTitle", 1);
  [v6 setHeaderTitle:v7];

  reorderableFavoritesList = [(HUDashboardItemManager *)self reorderableFavoritesList];
  sortedHomeKitItemComparator = [reorderableFavoritesList sortedHomeKitItemComparator];
  if (!reorderableFavoritesList)
  {
    v17.receiver = self;
    v17.super_class = HUDashboardItemManager;
    v10 = [(HFItemManager *)&v17 _comparatorForSectionIdentifier:@"favoritesSection"];

    sortedHomeKitItemComparator = v10;
  }

  allObjects = [itemsCopy allObjects];
  v12 = [allObjects sortedArrayUsingComparator:sortedHomeKitItemComparator];
  [v6 setItems:v12];

  v13 = MEMORY[0x277D14778];
  v18[0] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [v13 filterSections:v14 toDisplayedItems:itemsCopy];

  return v15;
}

- (id)_buildNowPlayingSectionWithItems:(id)items forRouteIdentifier:(id)identifier
{
  v41[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = MEMORY[0x277D14850];
  itemsCopy = items;
  v9 = [[v7 alloc] initWithIdentifier:@"NowPlayingSection"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUDashboardNowPlayingSectionTitle", @"HUDashboardNowPlayingSectionTitle", 1);
  [v9 setHeaderTitle:v10];

  array = [MEMORY[0x277CBEB18] array];
  fakeSpeakersAndTVsItemProvider = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
  items = [fakeSpeakersAndTVsItemProvider items];
  v14 = [items count];

  if (v14)
  {
    fakeSpeakersAndTVsItemProvider2 = [(HUDashboardItemManager *)self fakeSpeakersAndTVsItemProvider];
    items2 = [fakeSpeakersAndTVsItemProvider2 items];
    allObjects = [items2 allObjects];
    [array addObjectsFromArray:allObjects];
  }

  speakersAndTVsItemProvider = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
  items3 = [speakersAndTVsItemProvider items];
  v20 = [items3 count];

  if (v20)
  {
    speakersAndTVsItemProvider2 = [(HUDashboardItemManager *)self speakersAndTVsItemProvider];
    items4 = [speakersAndTVsItemProvider2 items];
    allObjects2 = [items4 allObjects];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __78__HUDashboardItemManager__buildNowPlayingSectionWithItems_forRouteIdentifier___block_invoke;
    v38 = &unk_277DBE4B8;
    v39 = identifierCopy;
    v24 = [allObjects2 na_firstObjectPassingTest:&v35];

    [array na_safeAddObject:{v24, v35, v36, v37, v38}];
  }

  context = [(HUDashboardItemManager *)self context];
  v26 = [context maximumNumberOfItemsInSectionWithIdentifier:@"SpeakersAndTVsSection"];

  if (v26 < 2)
  {
    if ([array count])
    {
      firstObject = [array firstObject];
      v41[0] = firstObject;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = array;
    context2 = [(HUDashboardItemManager *)self context];
    room = [context2 room];

    if (!room)
    {
      [v9 setHeaderTitle:0];
    }
  }

  [v9 setItems:v27];
  v31 = MEMORY[0x277D14778];
  v40 = v9;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v33 = [v31 filterSections:v32 toDisplayedItems:itemsCopy];

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

- (id)_buildRoomSectionsWithItems:(id)items
{
  itemsCopy = items;
  v5 = MEMORY[0x277D14308];
  allObjects = [itemsCopy allObjects];
  home = [(HFItemManager *)self home];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUDashboardItemManager__buildRoomSectionsWithItems___block_invoke;
  v13[3] = &unk_277DBE4E0;
  v13[4] = self;
  v8 = [v5 createRoomSectionsWithItems:allObjects inHome:home sectionIdentifierBlock:v13];

  context = [(HUDashboardItemManager *)self context];
  LODWORD(allObjects) = [context shouldHideEmptySections];

  if (allObjects)
  {
    v10 = [MEMORY[0x277D14778] filterSections:v8 toDisplayedItems:itemsCopy];
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

- (id)_buildSingleAccessoryGroupSectionWithItems:(id)items allDisplayedItems:(id)displayedItems
{
  v17[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v7 = MEMORY[0x277D14850];
  displayedItemsCopy = displayedItems;
  v9 = [[v7 alloc] initWithIdentifier:@"AllAccessoriesSection"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUDashboardSection_Accessories_Title", @"HUDashboardSection_Accessories_Title", 1);
  [v9 setHeaderTitle:v10];

  accessoryNoAccessItem = [(HUDashboardItemManager *)self accessoryNoAccessItem];
  v12 = [displayedItemsCopy containsObject:accessoryNoAccessItem];

  if (v12)
  {
    accessoryNoAccessItem2 = [(HUDashboardItemManager *)self accessoryNoAccessItem];
    v17[0] = accessoryNoAccessItem2;
    defaultItemComparator = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v9 setItems:defaultItemComparator];
  }

  else
  {
    accessoryNoAccessItem2 = [itemsCopy allObjects];
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v15 = [accessoryNoAccessItem2 sortedArrayUsingComparator:defaultItemComparator];
    [v9 setItems:v15];
  }

  return v9;
}

- (id)_buildAccessoryCategorySectionsWithItems:(id)items
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [MEMORY[0x277CBEB58] setWithSet:itemsCopy];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = 0;
  sortedAccessoryTypeGroups = [MEMORY[0x277D14308] sortedAccessoryTypeGroups];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__HUDashboardItemManager__buildAccessoryCategorySectionsWithItems___block_invoke;
  v24[3] = &unk_277DBE508;
  v24[4] = self;
  v7 = v5;
  v25 = v7;
  v26 = &v27;
  v8 = [sortedAccessoryTypeGroups na_map:v24];

  if ([v7 count])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 count];
      *buf = 138412802;
      selfCopy = self;
      v35 = 2048;
      v36 = v10;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ Found %lu item(s) without an identified category: %@", buf, 0x20u);
    }

    otherAccessoryTypeGroup = [MEMORY[0x277D14378] otherAccessoryTypeGroup];
    v12 = [(HUDashboardItemManager *)self reorderableServiceListForType:otherAccessoryTypeGroup];
    sortedHomeKitItemComparator = [v12 sortedHomeKitItemComparator];
    v14 = sortedHomeKitItemComparator;
    if (sortedHomeKitItemComparator)
    {
      v15 = _Block_copy(sortedHomeKitItemComparator);
    }

    else
    {
      defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
      v15 = _Block_copy(defaultItemComparator);
    }

    allObjects = [v7 allObjects];
    v18 = [allObjects sortedArrayUsingComparator:v15];
    [v28[5] setItems:v18];
  }

  context = [(HUDashboardItemManager *)self context];
  shouldHideEmptySections = [context shouldHideEmptySections];

  if (shouldHideEmptySections)
  {
    v21 = [MEMORY[0x277D14778] filterSections:v8 toDisplayedItems:itemsCopy];
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

- (id)_itemsToHideInSet:(id)set
{
  v10.receiver = self;
  v10.super_class = HUDashboardItemManager;
  setCopy = set;
  v5 = [(HFItemManager *)&v10 _itemsToHideInSet:setCopy];
  v6 = [v5 mutableCopy];

  homeMenuStatusItems = [(HUDashboardItemManager *)self homeMenuStatusItems];
  v8 = [setCopy na_setByIntersectingWithSet:homeMenuStatusItems];

  [v6 unionSet:v8];

  return v6;
}

- (id)_buildItemModulesForHome:(id)home
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = [HUStatusItemModule alloc];
  context = [(HUDashboardItemManager *)self context];
  v7 = [(HUStatusItemModule *)v5 initWithContext:context itemUpdater:self];
  [(HUDashboardItemManager *)self setStatusItemModule:v7];

  statusItemModule = [(HUDashboardItemManager *)self statusItemModule];
  [array na_safeAddObject:statusItemModule];

  v9 = [HUDashboardActionSetItemModule alloc];
  context2 = [(HUDashboardItemManager *)self context];
  v11 = [(HUDashboardActionSetItemModule *)v9 initWithContext:context2 itemUpdater:self];
  [(HUDashboardItemManager *)self setActionSetItemModule:v11];

  actionSetItemModule = [(HUDashboardItemManager *)self actionSetItemModule];
  [array na_safeAddObject:actionSetItemModule];

  v13 = [HUDashboardCameraItemModule alloc];
  context3 = [(HUDashboardItemManager *)self context];
  v15 = [(HUDashboardCameraItemModule *)v13 initWithContext:context3 itemUpdater:self];
  [(HUDashboardItemManager *)self setCameraItemModule:v15];

  cameraItemModule = [(HUDashboardItemManager *)self cameraItemModule];
  [array na_safeAddObject:cameraItemModule];

  if ([MEMORY[0x277D14670] isHomeApp])
  {
    context4 = [(HUDashboardItemManager *)self context];
    v18 = [context4 shouldCreateModule:objc_opt_class()];

    if (v18)
    {
      v19 = [HUBannerItemModule alloc];
      context5 = [(HUDashboardItemManager *)self context];
      v21 = [(HUBannerItemModule *)v19 initWithContext:context5 itemUpdater:self];
      [(HUDashboardItemManager *)self setBannerItemModule:v21];

      bannerItemModule = [(HUDashboardItemManager *)self bannerItemModule];
      [array na_safeAddObject:bannerItemModule];
    }

    v23 = [HUDashboardTipModule alloc];
    context6 = [(HUDashboardItemManager *)self context];
    v25 = [(HUDashboardTipModule *)v23 initWithContext:context6 itemUpdater:self];
    [(HUDashboardItemManager *)self setTipItemModule:v25];

    tipItemModule = [(HUDashboardItemManager *)self tipItemModule];
    [array na_safeAddObject:tipItemModule];
  }

  servicePlaceholderItemModule = [(HUDashboardItemManager *)self servicePlaceholderItemModule];
  [array na_safeAddObject:servicePlaceholderItemModule];

  v28 = [HUEnergyDashboardItemModule alloc];
  context7 = [(HUDashboardItemManager *)self context];
  home = [(HFItemManager *)self home];
  v31 = [(HUEnergyDashboardItemModule *)v28 initWithItemUpdater:self dashboardContext:context7 home:home];
  [(HUDashboardItemManager *)self setEnergyDashboardItemModule:v31];

  energyDashboardItemModule = [(HUDashboardItemManager *)self energyDashboardItemModule];
  [array na_safeAddObject:energyDashboardItemModule];

  return array;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v11 _didFinishUpdateTransactionWithAffectedItems:itemsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HUDashboardItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke;
  v10[3] = &unk_277DB85D8;
  v10[4] = self;
  v5 = [itemsCopy na_filter:v10];
  if ([v5 count])
  {
    dashboardDelegate = [(HUDashboardItemManager *)self dashboardDelegate];
    [dashboardDelegate dashboardItemManager:self didUpdateHomeMenuStatusItems:v5];
  }

  sourceItem = [(HFItemManager *)self sourceItem];
  v8 = [itemsCopy containsObject:sourceItem];

  if (v8)
  {
    itemModules = [(HFItemManager *)self itemModules];
    [itemModules na_each:&__block_literal_global_349];
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

- (id)reorderableServiceListForRoom:(id)room
{
  roomCopy = room;
  uniqueIdentifier = [roomCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  clientReorderableServiceListByRoom = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];

  if (!clientReorderableServiceListByRoom)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HUDashboardItemManager *)self setClientReorderableServiceListByRoom:v8];
  }

  clientReorderableServiceListByRoom2 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
  v10 = [clientReorderableServiceListByRoom2 objectForKeyedSubscript:uUIDString];

  if (v10)
  {
    clientReorderableServiceListByRoom3 = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
    hf_reorderableServicesList = [clientReorderableServiceListByRoom3 objectForKeyedSubscript:uUIDString];
  }

  else
  {
    hf_reorderableServicesList = [roomCopy hf_reorderableServicesList];
  }

  return hf_reorderableServicesList;
}

- (void)setReorderableServiceList:(id)list forRoom:(id)room
{
  listCopy = list;
  uniqueIdentifier = [room uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  clientReorderableServiceListByRoom = [(HUDashboardItemManager *)self clientReorderableServiceListByRoom];
  [clientReorderableServiceListByRoom setObject:listCopy forKeyedSubscript:uUIDString];
}

- (id)reorderableServiceListForType:(id)type
{
  uniqueIdentifier = [type uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  clientReorderableServiceByTypeList = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];

  if (!clientReorderableServiceByTypeList)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HUDashboardItemManager *)self setClientReorderableServiceByTypeList:v7];
  }

  clientReorderableServiceByTypeList2 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
  v9 = [clientReorderableServiceByTypeList2 objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    clientReorderableServiceByTypeList3 = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
    v11 = [clientReorderableServiceByTypeList3 objectForKeyedSubscript:uUIDString];
  }

  else
  {
    clientReorderableServiceByTypeList3 = [(HFItemManager *)self sourceItem];
    latestResults = [clientReorderableServiceByTypeList3 latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EF0]];
    v11 = [v13 objectForKeyedSubscript:uUIDString];
  }

  return v11;
}

- (void)setReorderableServiceList:(id)list forType:(id)type
{
  listCopy = list;
  uniqueIdentifier = [type uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  clientReorderableServiceByTypeList = [(HUDashboardItemManager *)self clientReorderableServiceByTypeList];
  [clientReorderableServiceByTypeList setObject:listCopy forKeyedSubscript:uUIDString];
}

- (id)reorderableFavoritesList
{
  clientReorderableFavoritesList = [(HUDashboardItemManager *)self clientReorderableFavoritesList];

  if (clientReorderableFavoritesList)
  {
    clientReorderableFavoritesList2 = [(HUDashboardItemManager *)self clientReorderableFavoritesList];
  }

  else
  {
    objc_opt_class();
    sourceItem = [(HFItemManager *)self sourceItem];
    latestResults = [sourceItem latestResults];
    v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EE8]];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    clientReorderableFavoritesList2 = v8;
  }

  return clientReorderableFavoritesList2;
}

- (void)_updateHomeDashboardWithHome:(id)home
{
  v25 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = [HUDashboardContext homeDashboardForHome:homeCopy];
  context = self->_context;
  self->_context = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v10 = self->_context;
    *buf = 138412802;
    v20 = homeCopy;
    v21 = 2114;
    v22 = uniqueIdentifier;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_INFO, "<HUDashboardItemManager-_updateHomeDashboardWithHome:> home = %@ (uniqueIdentifier = %{public}@) | created new _context = %@", buf, 0x20u);
  }

  dashboardDelegate = [(HUDashboardItemManager *)self dashboardDelegate];
  context = [(HUDashboardItemManager *)self context];
  [dashboardDelegate dashboardItemManager:self didUpdateContext:context];

  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  accessoryLikeItemProvider = [(HUDashboardItemManager *)self accessoryLikeItemProvider];
  v18[0] = accessoryLikeItemProvider;
  accessoryTransformItemProvider = [(HUDashboardItemManager *)self accessoryTransformItemProvider];
  v18[1] = accessoryTransformItemProvider;
  staticItemProvider = [(HUDashboardItemManager *)self staticItemProvider];
  v18[2] = staticItemProvider;
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
  pinCodeManager = [(HUDashboardItemManager *)self pinCodeManager];
  [pinCodeManager addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  pinCodeManager = [(HUDashboardItemManager *)self pinCodeManager];
  [pinCodeManager removeObserver:self];
}

- (void)home:(id)home didAddRoom:(id)room
{
  v5.receiver = self;
  v5.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v5 home:home didAddRoom:room];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  v5.receiver = self;
  v5.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v5 home:home didRemoveRoom:room];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
}

- (void)homeDidUpdateApplicationData:(id)data
{
  v9.receiver = self;
  v9.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v9 homeDidUpdateApplicationData:data];
  [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  actionSetItemModule = [(HUDashboardItemManager *)self actionSetItemModule];
  itemProviders = [actionSetItemModule itemProviders];
  allObjects = [itemProviders allObjects];
  v8 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:allObjects senderSelector:a2];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  v21 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v14.receiver = self;
  v14.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v14 homeDidUpdateAccessControlForCurrentUser:userCopy];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentUser = [userCopy currentUser];
    uniqueIdentifier = [currentUser uniqueIdentifier];
    uniqueIdentifier2 = [userCopy uniqueIdentifier];
    *buf = 138543874;
    v16 = uniqueIdentifier;
    v17 = 2112;
    v18 = userCopy;
    v19 = 2114;
    v20 = uniqueIdentifier2;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "<HUDashboardItemManager-homeDidUpdateAccessControlForCurrentUser:> Access control for current user (uniqueIdentifier:%{public}@) did update for home: %@ (uniqueIdentifier: %{public}@)", buf, 0x20u);
  }

  context = [(HUDashboardItemManager *)self context];
  home = [context home];
  v11 = userCopy;
  v12 = v11;
  if (home == v11)
  {
  }

  else
  {
    if (!home)
    {

      goto LABEL_12;
    }

    v13 = [home isEqual:v11];

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

- (void)homeDidUpdateHomeLocationStatus:(id)status
{
  v22 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    [statusCopy homeLocationStatus];
    v8 = HMStringFromHomeLocation();
    v14 = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = statusCopy;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Home location status did update for home: %@. homeLocationStatus = %@", &v14, 0x2Au);
  }

  context = [(HUDashboardItemManager *)self context];
  home = [context home];
  v11 = statusCopy;
  v12 = v11;
  if (home == v11)
  {
  }

  else
  {
    if (!home)
    {

      goto LABEL_11;
    }

    v13 = [home isEqual:v11];

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

- (void)restrictedGuestAllowedPeriodStarted:(id)started
{
  v23 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v17 = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = startedCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period started for user: %@.", &v17, 0x20u);
  }

  context = [(HUDashboardItemManager *)self context];
  home = [context home];
  currentUser = [home currentUser];
  v11 = startedCopy;
  v12 = v11;
  if (currentUser == v11)
  {
  }

  else
  {
    if (!currentUser)
    {

      goto LABEL_11;
    }

    v13 = [currentUser isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  context2 = [(HUDashboardItemManager *)self context];
  home2 = [context2 home];
  hf_currentUserIsRestrictedGuest = [home2 hf_currentUserIsRestrictedGuest];

  if (hf_currentUserIsRestrictedGuest)
  {
    context = [(HUDashboardItemManager *)self context];
    home = [context home];
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:home];
LABEL_11:
  }

LABEL_12:
}

- (void)restrictedGuestAllowedPeriodEnded:(id)ended
{
  v23 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v17 = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = endedCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period ended for user: %@.", &v17, 0x20u);
  }

  context = [(HUDashboardItemManager *)self context];
  home = [context home];
  currentUser = [home currentUser];
  v11 = endedCopy;
  v12 = v11;
  if (currentUser == v11)
  {
  }

  else
  {
    if (!currentUser)
    {

      goto LABEL_11;
    }

    v13 = [currentUser isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  context2 = [(HUDashboardItemManager *)self context];
  home2 = [context2 home];
  hf_currentUserIsRestrictedGuest = [home2 hf_currentUserIsRestrictedGuest];

  if (hf_currentUserIsRestrictedGuest)
  {
    context = [(HUDashboardItemManager *)self context];
    home = [context home];
    [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:home];
LABEL_11:
  }

LABEL_12:
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v21 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUDashboardItemManager;
  [(HFItemManager *)&v14 homeManager:manager didUpdateHH2State:?];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [(HUDashboardItemManager *)self context];
    home = [context home];
    context2 = [(HUDashboardItemManager *)self context];
    home2 = [context2 home];
    uniqueIdentifier = [home2 uniqueIdentifier];
    *buf = 67109634;
    v16 = stateCopy;
    v17 = 2112;
    v18 = home;
    v19 = 2114;
    v20 = uniqueIdentifier;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "<HUDashboardItemManager-homeManager:didUpdateHH2State:> didUpdateHH2State = %{BOOL}d | Updating context for home %@ (uniqueIdentifier: %{public}@)", buf, 0x1Cu);
  }

  context3 = [(HUDashboardItemManager *)self context];
  home3 = [context3 home];
  [(HUDashboardItemManager *)self _updateHomeDashboardWithHome:home3];
}

- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Reloading PIN Code related items...", buf, 0x16u);
  }

  nonBlockingItemProvider = [(HUDashboardItemManager *)self nonBlockingItemProvider];

  if (nonBlockingItemProvider)
  {
    nonBlockingItemProvider2 = [(HUDashboardItemManager *)self nonBlockingItemProvider];
    v12 = nonBlockingItemProvider2;
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