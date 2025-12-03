@interface HUAddRestrictedGuestItemManager
- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate;
- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate sourceItem:(id)item home:(id)home inviteeAddresses:(id)addresses;
- (HUAddRestrictedGuestItemManagerDelegate)restrictedGuestDelegate;
- (id)_accessoryToSymbolIconIdentifier:(id)identifier;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)mutableRestrictedGuestHomeAccessSettingsWithAllowedAccessories:(id)accessories;
- (void)sendInvitesWithAllowedAccessories:(id)accessories;
- (void)updateAccessSchedule:(id)schedule;
@end

@implementation HUAddRestrictedGuestItemManager

- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate sourceItem:(id)item home:(id)home inviteeAddresses:(id)addresses
{
  homeCopy = home;
  addressesCopy = addresses;
  v19.receiver = self;
  v19.super_class = HUAddRestrictedGuestItemManager;
  v13 = [(HFItemManager *)&v19 initWithDelegate:delegate sourceItem:item];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_overrideHome, home);
    objc_storeStrong(&v14->_inviteeAddresses, addresses);
    v15 = [MEMORY[0x277D14A08] scheduleBuilderFromType:0 withDefaultRules:0];
    build = [v15 build];
    defaultAccessSchedule = v14->_defaultAccessSchedule;
    v14->_defaultAccessSchedule = build;
  }

  return v14;
}

- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_sourceItem_home_inviteeAddresses_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestItemManager.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUAddRestrictedGuestItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUAddRestrictedGuestItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_sourceItem_home_inviteeAddresses_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestItemManager.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUAddRestrictedGuestItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v23[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_opt_new();
  v6 = [HURestrictedGuestScheduleItem alloc];
  defaultAccessSchedule = [(HUAddRestrictedGuestItemManager *)self defaultAccessSchedule];
  v8 = [(HURestrictedGuestScheduleItem *)v6 initWithSchedule:defaultAccessSchedule];
  [(HUAddRestrictedGuestItemManager *)self setHomeScheduleItem:v8];

  v9 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:homeCopy];
  [(HUAddRestrictedGuestItemManager *)self setSecureAccessoryItemProvider:v9];

  secureAccessoryItemProvider = [(HUAddRestrictedGuestItemManager *)self secureAccessoryItemProvider];
  [secureAccessoryItemProvider setIncludesMatterOnlyAccessoryItems:1];

  secureAccessoryItemProvider2 = [(HUAddRestrictedGuestItemManager *)self secureAccessoryItemProvider];
  [secureAccessoryItemProvider2 setFilter:&__block_literal_global_95];

  v12 = objc_alloc(MEMORY[0x277D14C38]);
  secureAccessoryItemProvider3 = [(HUAddRestrictedGuestItemManager *)self secureAccessoryItemProvider];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HUAddRestrictedGuestItemManager__buildItemProvidersForHome___block_invoke_2;
  v22[3] = &unk_277DBC608;
  v22[4] = self;
  v14 = [v12 initWithSourceProvider:secureAccessoryItemProvider3 transformationBlock:v22];
  [(HUAddRestrictedGuestItemManager *)self setTransformedSecureAccessoryItemProvider:v14];

  homeScheduleItem = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
  [v5 na_safeAddObject:homeScheduleItem];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v18 = [v16 initWithItems:v17];

  v23[0] = v18;
  transformedSecureAccessoryItemProvider = [(HUAddRestrictedGuestItemManager *)self transformedSecureAccessoryItemProvider];
  v23[1] = transformedSecureAccessoryItemProvider;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  return v20;
}

uint64_t __62__HUAddRestrictedGuestItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  v6 = [v5 hf_isRestrictedGuestAllowedAccessory];
  return v6;
}

id __62__HUAddRestrictedGuestItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
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

  v7 = [v6 accessory];
  v8 = objc_alloc(MEMORY[0x277D14C30]);
  v9 = [v4 copy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__HUAddRestrictedGuestItemManager__buildItemProvidersForHome___block_invoke_3;
  v14[3] = &unk_277DB8F10;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = [v8 initWithSourceItem:v9 transformationBlock:v14];

  return v12;
}

id __62__HUAddRestrictedGuestItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) name];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 32) name];
  v6 = [v4 stringWithFormat:@"Home.Users.Guest.AllowedAccessories.%@", v5];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  v8 = [*(a1 + 40) _accessoryToSymbolIconIdentifier:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13EA0]];

  v9 = [MEMORY[0x277D14378] securityAccessoryTypeGroup];
  v10 = [v9 hu_tintColor];
  [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F58]];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v2;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HomeAccessScheduleSection"];
  homeScheduleItem = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
  v21[0] = homeScheduleItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v6 setItems:v8];

  v9 = HFLocalizedString();
  [v6 setHeaderTitle:v9];

  v10 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuestScheduleItem_NewInviteUser_Footer", @"HURestrictedGuestScheduleItem_NewInviteUser_Footer", 1);
  [v6 setFooterTitle:v10];

  [array addObject:v6];
  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"AccessoriesSection"];
  transformedSecureAccessoryItemProvider = [(HUAddRestrictedGuestItemManager *)self transformedSecureAccessoryItemProvider];
  items = [transformedSecureAccessoryItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v16 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  v17 = [v16 mutableCopy];

  [v11 setItems:v17];
  [array addObject:v11];
  v18 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v18;
}

- (void)updateAccessSchedule:(id)schedule
{
  v23 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    homeScheduleItem = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
    schedule = [homeScheduleItem schedule];
    v17 = 136315650;
    selfCopy = "[HUAddRestrictedGuestItemManager updateAccessSchedule:]";
    v19 = 2112;
    v20 = schedule;
    v21 = 2112;
    v22 = scheduleCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Requesting to update access schedule from %@ to %@", &v17, 0x20u);
  }

  if (scheduleCopy)
  {
    homeScheduleItem2 = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
    [homeScheduleItem2 setSchedule:scheduleCopy];

    v10 = MEMORY[0x277D14788];
    v11 = MEMORY[0x277CBEB98];
    homeScheduleItem3 = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
    v13 = [v11 setWithObject:homeScheduleItem3];
    v14 = [v10 requestToUpdateItems:v13 senderSelector:a2];
    v15 = [(HFItemManager *)self performItemUpdateRequest:v14];
  }

  else
  {
    homeScheduleItem3 = HFLogForCategory();
    if (os_log_type_enabled(homeScheduleItem3, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = 138412546;
      selfCopy = self;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_20CEB6000, homeScheduleItem3, OS_LOG_TYPE_ERROR, "%@:%@ No access schedule defined. Cannot update access schedule.", &v17, 0x16u);
    }
  }
}

- (void)sendInvitesWithAllowedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  inviteeAddresses = [(HUAddRestrictedGuestItemManager *)self inviteeAddresses];
  v7 = [inviteeAddresses count];

  if (!v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Invalid configuration. Unable to send invitations without invitee addresses", &location, 2u);
    }
  }

  inviteeAddresses2 = [(HUAddRestrictedGuestItemManager *)self inviteeAddresses];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke;
  v24[3] = &unk_277DBC630;
  v24[4] = self;
  v10 = [inviteeAddresses2 na_map:v24];

  objc_initWeak(&location, self);
  v11 = [MEMORY[0x277D2C900] combineAllFutures:v10];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_133;
  v20[3] = &unk_277DBC6A8;
  objc_copyWeak(v22, &location);
  v22[1] = a2;
  v12 = accessoriesCopy;
  v21 = v12;
  v13 = [v11 flatMap:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2_140;
  v18[3] = &unk_277DBC6D0;
  objc_copyWeak(v19, &location);
  v19[1] = a2;
  v14 = [v13 addFailureBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_145;
  v16[3] = &unk_277DBC6F8;
  objc_copyWeak(v17, &location);
  v17[1] = a2;
  v15 = [v13 addSuccessBlock:v16];
  objc_destroyWeak(v17);
  objc_destroyWeak(v19);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

id __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 outgoingInvitations];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_INFO, "Attempting to remove existing invitations that match address %@. Invitations: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 invitee];
        v14 = [v13 userID];
        v15 = [v3 isEqualToString:v14];

        if (v15)
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_127;
          v23[3] = &unk_277DB7508;
          v23[4] = v12;
          v17 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v23];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2;
          v22[3] = &unk_277DB8C00;
          v22[4] = v12;
          v18 = [v17 addFailureBlock:v22];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_130;
          v20[3] = &unk_277DBA338;
          v21 = v3;
          v16 = [v18 addSuccessBlock:v20];

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Removing existing invitation failed: %@ invitation: %@", &v6, 0x16u);
  }
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_130(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_INFO, "Successfully removed existing invitation for %@", &v4, 0xCu);
  }
}

id __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_133(id *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2_134;
  v7[3] = &unk_277DBC680;
  objc_copyWeak(v9, a1 + 5);
  v9[1] = a1[6];
  v8 = a1[4];
  v5 = [v4 futureWithCompletionHandlerAdapterBlock:v7];

  objc_destroyWeak(v9);

  return v5;
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2_134(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 48));
    v7 = [WeakRetained inviteeAddresses];
    *buf = 138412802;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Sending invitation(s) to address(es): %@", buf, 0x20u);
  }

  v8 = [WeakRetained inviteeAddresses];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_135;
  v14 = &unk_277DBC658;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  v9 = [v8 na_map:&v11];

  v10 = [WeakRetained home];
  [v10 inviteUsersWithInviteInformation:v9 completionHandler:v3];

  objc_destroyWeak(&v16);
}

id __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_135(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained mutableRestrictedGuestHomeAccessSettingsWithAllowedAccessories:*(a1 + 32)];
  v6 = [objc_alloc(MEMORY[0x277CD1EF8]) initWithUser:v3 administrator:0 remoteAccess:0 announceAccess:0 camerasAccessLevel:0 restrictedGuest:1 restrictedGuestHomeAccessSettings:v5];

  return v6;
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_2_140(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [WeakRetained inviteeAddresses];
    *buf = 138412802;
    v22 = WeakRetained;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Failed to send out invitation(s) to address(es): %@", buf, 0x20u);
  }

  v8 = [WeakRetained inviteeAddresses];
  v9 = [v8 count];
  v10 = MEMORY[0x277D13BF0];
  if (v9 != 1)
  {
    v10 = MEMORY[0x277D13BF8];
  }

  v11 = *v10;

  v12 = [WeakRetained restrictedGuestDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [WeakRetained restrictedGuestDelegate];
    [v14 restrictedGuestItemManager:WeakRetained didFailToSendInvitations:v3];
  }

  v15 = [MEMORY[0x277D14640] sharedHandler];
  v16 = [WeakRetained inviteeAddresses];
  v17 = [v16 firstObject];
  v20 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v15 handleError:v3 operationType:v11 options:v18 retryBlock:0 cancelBlock:0];
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_145(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [WeakRetained inviteeAddresses];
    *buf = 138412802;
    v20 = WeakRetained;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Successfully sent invitation(s) to address(es): %@", buf, 0x20u);
  }

  if ([v3 count])
  {
    v8 = [MEMORY[0x277D146E8] sharedDispatcher];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_147;
    v16 = &unk_277DB9920;
    v17 = WeakRetained;
    v9 = v3;
    v18 = v9;
    [v8 dispatchHomeObserverMessage:&v13 sender:0];

    v10 = [WeakRetained restrictedGuestDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [WeakRetained restrictedGuestDelegate];
      [v12 restrictedGuestItemManager:WeakRetained didSendInvitations:v9];
    }
  }
}

void __69__HUAddRestrictedGuestItemManager_sendInvitesWithAllowedAccessories___block_invoke_147(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateStateForOutgoingInvitations:*(a1 + 40)];
  }
}

- (id)mutableRestrictedGuestHomeAccessSettingsWithAllowedAccessories:(id)accessories
{
  v33 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v6 = objc_alloc_init(MEMORY[0x277CD1C90]);
  homeScheduleItem = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
  schedule = [homeScheduleItem schedule];

  if (schedule)
  {
    v9 = MEMORY[0x277CD1D78];
    homeScheduleItem2 = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
    schedule2 = [homeScheduleItem2 schedule];
    v12 = [v9 hf_restrictedGuestHomeAccessScheduleFromHFSchedule:schedule2];
    [v6 setGuestAccessSchedule:v12];

    v13 = HFLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v14 = NSStringFromSelector(a2);
    guestAccessSchedule = [v6 guestAccessSchedule];
    homeScheduleItem3 = [(HUAddRestrictedGuestItemManager *)self homeScheduleItem];
    schedule3 = [homeScheduleItem3 schedule];
    v25 = 138413058;
    selfCopy4 = self;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = guestAccessSchedule;
    v31 = 2112;
    v32 = schedule3;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Sending user invitation(s) with guest access schedule [%@] from schedule [%@].", &v25, 0x2Au);

    goto LABEL_4;
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromSelector(a2);
    v25 = 138412546;
    selfCopy4 = self;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@:%@ No access schedule defined for user invitation(s). Unexpected.", &v25, 0x16u);
LABEL_4:
  }

LABEL_6:

  if (accessoriesCopy)
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:accessoriesCopy];
    [v6 setAccessAllowedToAccessories:v18];

    v19 = HFLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v20 = NSStringFromSelector(a2);
    v25 = 138412802;
    selfCopy4 = self;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = accessoriesCopy;
    v21 = "%@:%@ Sending user invitation(s) with allowed accessories [%@].";
    v22 = v19;
    v23 = 32;
  }

  else
  {
    v19 = HFLogForCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v20 = NSStringFromSelector(a2);
    v25 = 138412546;
    selfCopy4 = self;
    v27 = 2112;
    v28 = v20;
    v21 = "%@:%@ No allowed accessories defined for user invitation(s).";
    v22 = v19;
    v23 = 22;
  }

  _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, v21, &v25, v23);

LABEL_12:

  return v6;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUAddRestrictedGuestItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)_accessoryToSymbolIconIdentifier:(id)identifier
{
  hf_primaryService = [identifier hf_primaryService];
  serviceType = [hf_primaryService serviceType];

  if ([serviceType isEqualToString:*MEMORY[0x277CD0E30]])
  {
    v5 = MEMORY[0x277D141C0];
  }

  else if ([serviceType isEqualToString:*MEMORY[0x277CD0EB0]])
  {
    v5 = MEMORY[0x277D141D0];
  }

  else if ([serviceType isEqualToString:*MEMORY[0x277CD0E58]])
  {
    v5 = MEMORY[0x277D141C8];
  }

  else
  {
    v6 = [serviceType isEqualToString:*MEMORY[0x277CD0ED8]];
    v5 = MEMORY[0x277D141E0];
    if (v6)
    {
      v5 = MEMORY[0x277D141D8];
    }
  }

  v7 = *v5;
  v8 = *v5;

  return v7;
}

- (HUAddRestrictedGuestItemManagerDelegate)restrictedGuestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_restrictedGuestDelegate);

  return WeakRetained;
}

@end