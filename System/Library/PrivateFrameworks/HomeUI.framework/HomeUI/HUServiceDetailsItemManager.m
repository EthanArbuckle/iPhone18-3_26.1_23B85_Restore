@interface HUServiceDetailsItemManager
- (ACAccount)loggedInMediaAccountOnHomePod;
- (BOOL)_areHomePodMediaAccountsMismatched;
- (BOOL)_hasDismissedHomePodHasNonMemberMediaAccountWarning;
- (BOOL)_isGroupedHomePod;
- (BOOL)_isRestartSupportedForGroupedHomePod:(id)a3;
- (BOOL)_isSingleHomePodInGroup;
- (BOOL)_shouldShowAccessoryInfoItems;
- (BOOL)_shouldShowFirmwareUpdateSection;
- (BOOL)_shouldShowLinkedApplicationSection;
- (BOOL)_shouldShowSplitAccountUI;
- (BOOL)_shouldShowSymptomsUI;
- (BOOL)_shouldShowWiFiPickerFixUI;
- (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)a3;
- (BOOL)canShowWiFiPickerForItem:(id)a3;
- (BOOL)canToggleAccessoryInfoItem:(id)a3;
- (BOOL)controlAndCharacteristicStateItemModule:(id)a3 shouldShowControlPanelItem:(id)a4;
- (BOOL)controlAndCharacteristicStateItemModule:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4;
- (BOOL)isAccessory;
- (BOOL)isAccessoryInfoItem:(id)a3;
- (BOOL)isCharacteristicStateItem:(id)a3;
- (BOOL)isItemGroup;
- (BOOL)isMatterAccessoryLikeItem;
- (BOOL)isRoomItem:(id)a3;
- (BOOL)shouldShowDeviceOptionsForAccessoryItem:(id)a3;
- (BOOL)shouldShowExportDiagnosticsItem:(id)a3;
- (BOOL)sourceItemIsHomePod;
- (BOOL)sourceItemIsHomePodConfiguredForMultiUser;
- (BOOL)sourceItemIsService;
- (BOOL)sourceItemIsSingleServiceAccessory;
- (BOOL)supportsWiFiStrengthDisplay:(id)a3;
- (HFHomeKitObject)sourceItemHomeKitObject;
- (HFItem)selectedAssociatedServiceTypeItem;
- (HMAccessory)sourceItemAccessory;
- (HUServiceDetailsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUServiceDetailsItemManager)initWithServiceItem:(id)a3 delegate:(id)a4;
- (NSArray)orderedRoomSectionItems;
- (id)_allItemsForSectionIdentifier:(id)a3;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_characteristicSectionForIdentifier:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
- (id)_itemsToUpdateForDiagnosticInfoUpdate;
- (id)_itemsToUpdateWhenApplicationDidBecomeActive;
- (id)_resetAccessory;
- (id)_restartAccessory;
- (id)_resultsForNetworkDiagnosticsSymptom:(id)a3;
- (id)_transformedUpdateOutcomeForItem:(id)a3 proposedOutcome:(id)a4;
- (id)controlAndCharacteristicStateItemModule:(id)a3 sectionFooterForControlPanelItem:(id)a4 forServiceItem:(id)a5;
- (id)controlAndCharacteristicStateItemModule:(id)a3 sectionTitleForControlPanelItem:(id)a4 forServiceItem:(id)a5;
- (id)hf_MediaAccessoryItem;
- (id)matterAccessory;
- (id)selectAssociatedServiceType:(id)a3;
- (id)selectRoom:(id)a3;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_setUpHomeTheaterItem;
- (void)_setUpManagedConfigurationProfilesItem;
- (void)_setupDeviceOptionsAdapterForMediaAccessoryItem:(id)a3;
- (void)_setupDeviceOptionsAdapterUtilityForGroupedAccessories:(id)a3;
- (void)_unregisterForExternalUpdates;
- (void)accessoryReachableOverRapport:(BOOL)a3;
- (void)didUpdateDiagnosticInfo:(id)a3 forAccessory:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerKVO;
- (void)resetServiceLikeItemBuilder;
- (void)setShouldHideAccessoryItem:(BOOL)a3;
- (void)setShowAssociatedServiceTypeList:(BOOL)a3;
- (void)setShowRoomsList:(BOOL)a3;
- (void)tearDown;
- (void)toggleAccessoryInfoItem:(id)a3;
- (void)unregisterKVO;
- (void)updateCameraNightMode:(BOOL)a3;
- (void)updateCameraStatusLight:(BOOL)a3;
- (void)updateDoorbellChimeMuteMode:(BOOL)a3;
@end

@implementation HUServiceDetailsItemManager

- (BOOL)isMatterAccessoryLikeItem
{
  v2 = [(HFItemManager *)self sourceItem];
  if (v2)
  {
    v3 = v2;
    sub_20D565D18();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 != 0;

  return v4;
}

- (id)matterAccessory
{
  v2 = self;
  v3 = [(HFItemManager *)v2 sourceItem];
  if (v3)
  {
    v4 = v3;
    sub_20D565D18();
    if (swift_dynamicCastClass())
    {
      v5 = sub_20D565CC8();
      v6 = sub_20D565E28();
    }

    else
    {
      v6 = 0;
      v5 = v2;
      v2 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HUServiceDetailsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceItem_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsItemManager.m" lineNumber:207 description:{@"%s is unavailable; use %@ instead", "-[HUServiceDetailsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUServiceDetailsItemManager)initWithServiceItem:(id)a3 delegate:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 copy];
  v36.receiver = self;
  v36.super_class = HUServiceDetailsItemManager;
  v10 = [(HFItemManager *)&v36 initWithDelegate:v8 sourceItem:v9];

  if (v10)
  {
    objc_opt_class();
    v11 = v7;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [MEMORY[0x277D146E8] sharedDispatcher];
      [v14 addDiagnosticInfoObserver:v10];

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        NSLog(&cfstr_IfCoordination.isa);
      }

      if (([v13 isHomePod] & 1) != 0 || objc_msgSend(v13, "isHomePodMediaSystem"))
      {
        [MEMORY[0x277CD1DE0] hf_resetAllowlists];
      }

      v15 = [HUAccessorySettingsItemModule alloc];
      v4 = [v13 copy];
      v16 = [(HUAccessorySettingsItemModule *)v15 initWithItemUpdater:v10 mediaAccessoryItem:v4];
      [(HUServiceDetailsItemManager *)v10 setAccessorySettingsItemModule:v16];

      v10->_groupedAccessoryReachableOverRapport = 0;
      if ([(HUServiceDetailsItemManager *)v10 _isGroupedHomePod])
      {
        v17 = HFLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Grouped HomePod", buf, 2u);
        }

        [(HUServiceDetailsItemManager *)v10 _setupDeviceOptionsAdapterUtilityForGroupedAccessories:v13];
      }

      else if ([(HUServiceDetailsItemManager *)v10 shouldShowDeviceOptionsForAccessoryItem:v13])
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Solo HomePod", buf, 2u);
        }

        [(HUServiceDetailsItemManager *)v10 _setupDeviceOptionsAdapterForMediaAccessoryItem:v13];
      }
    }

    v19 = [v11 home];
    v20 = v19;
    if (!v19)
    {
      v4 = [MEMORY[0x277D146E8] sharedDispatcher];
      v20 = [v4 home];
    }

    objc_storeStrong(&v10->_overrideHome, v20);
    if (!v19)
    {
    }

    v21 = [v11 accessories];
    v22 = [v21 anyObject];

    v23 = [v22 hf_siriEndpointProfile];

    if (v23)
    {
      v24 = [MEMORY[0x277D146E8] sharedDispatcher];
      v25 = [v24 homeManager];
      homeManager = v10->_homeManager;
      v10->_homeManager = v25;

      v27 = [MEMORY[0x277D146E8] sharedDispatcher];
      v28 = [v27 accessorySettingsDataSource];
      [v28 addObserver:v10];

      v29 = [(HMHomeManager *)v10->_homeManager hf_accessorySettingsController];
      settingsController = v10->_settingsController;
      v10->_settingsController = v29;

      v31 = HFLogForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v33 = v10->_homeManager;
        v34 = [MEMORY[0x277D146E8] sharedDispatcher];
        v35 = [v34 accessorySettingsDataSource];
        *buf = 138412546;
        v38 = v33;
        v39 = 2112;
        v40 = v35;
        _os_log_debug_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEBUG, "Created Home Manager = [%@] and DataSource = [%@]", buf, 0x16u);
      }
    }
  }

  return v10;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUServiceDetailsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)tearDown
{
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = [v3 accessorySettingsDataSource];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v5 removeDiagnosticInfoObserver:self];
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUServiceDetailsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUServiceDetailsItemManager *)self accessorySettingsItemModule];
  [v3 registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUServiceDetailsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUServiceDetailsItemManager *)self accessorySettingsItemModule];
  [v3 unregisterForExternalUpdates];
}

- (BOOL)isItemGroup
{
  v2 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if ([v2 conformsToProtocol:&unk_28251B268])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 isItemGroup];
  return v5;
}

- (BOOL)isAccessory
{
  if ([(HUServiceDetailsItemManager *)self isItemGroup])
  {
    isKindOfClass = 0;
  }

  else
  {
    v4 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v5 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        v6 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 1;
        }

        else
        {
          v7 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            isKindOfClass = 1;
          }

          else
          {
            v8 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              isKindOfClass = 1;
            }

            else
            {
              v9 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }
          }
        }
      }
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)sourceItemIsSingleServiceAccessory
{
  v2 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  v3 = [v2 hf_isSingleServiceAccessory];

  return v3;
}

- (BOOL)sourceItemIsService
{
  v2 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)sourceItemIsHomePod
{
  objc_opt_class();
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    if ([v5 isHomePod])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 isHomePodMediaSystem];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)sourceItemIsHomePodConfiguredForMultiUser
{
  v26 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v4 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && (([v6 isHomePod] & 1) != 0 || objc_msgSend(v6, "isHomePodMediaSystem")) && objc_msgSend(v6, "supportsMultiUser"))
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(a2);
      v16 = [(HUServiceDetailsItemManager *)self supportedVoiceRecognitionLanguages];
      v17 = [(HUServiceDetailsItemManager *)self supportedVoiceRecognitionLanguages];
      v18 = 138413058;
      v19 = self;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2048;
      v25 = [v17 count];
      _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@:%@ supported voice recognition languages %@ (%lu)", &v18, 0x2Au);
    }

    v8 = MEMORY[0x277D14810];
    v9 = [v6 mediaProfileContainer];
    v10 = [v8 siriLanguageOptionFor:v9];

    if (v10)
    {
      v11 = [v10 recognitionLanguage];
      v12 = [(HUServiceDetailsItemManager *)self supportedVoiceRecognitionLanguages];
      v13 = [v12 containsObject:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setShowRoomsList:(BOOL)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (self->_showRoomsList != a3)
  {
    self->_showRoomsList = a3;
    v5 = [(HUServiceDetailsItemManager *)self staticItemProvider];
    v11[0] = v5;
    v6 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
    v11[1] = v6;
    v7 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
    v11[2] = v7;
    v8 = [(HUServiceDetailsItemManager *)self selectedRoomItemProvider];
    v11[3] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

    v10 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v9 senderSelector:a2];
  }
}

- (NSArray)orderedRoomSectionItems
{
  v3 = objc_opt_new();
  v4 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
  v5 = [v4 items];
  v6 = [v5 allObjects];
  v7 = [(HFItemManager *)self home];
  v8 = [v7 hf_dashboardSectionReorderableItemComparator];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &__block_literal_global_257;
  }

  v11 = [v6 sortedArrayUsingComparator:v10];

  [v3 addObjectsFromArray:v11];
  v12 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
  v13 = [v12 items];
  v14 = [v13 allObjects];
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_257];

  [v3 addObjectsFromArray:v15];

  return v3;
}

uint64_t __54__HUServiceDetailsItemManager_orderedRoomSectionItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D13FE0];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13FE0]];
  v9 = [v8 BOOLValue];

  v10 = [v5 latestResults];
  v11 = [v10 objectForKeyedSubscript:v7];
  LODWORD(v8) = [v11 BOOLValue];

  if (v9 == v8)
  {
    v13 = [v4 latestResults];
    v14 = *MEMORY[0x277D13F60];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v16 = [v5 latestResults];
    v17 = [v16 objectForKeyedSubscript:v14];

    v12 = [v15 compare:v17];
  }

  else if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)setShowAssociatedServiceTypeList:(BOOL)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (self->_showAssociatedServiceTypeList != a3)
  {
    self->_showAssociatedServiceTypeList = a3;
    v5 = [(HUServiceDetailsItemManager *)self staticItemProvider];
    v11[0] = v5;
    v6 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
    v11[1] = v6;
    v7 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
    v11[2] = v7;
    v8 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
    v11[3] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v10 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v9 senderSelector:a2];
  }
}

- (HFItem)selectedAssociatedServiceTypeItem
{
  v4 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsItemManager.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"[self.sourceServiceItem isKindOfClass:[HFServiceItem class]]"}];
  }

  v6 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v7 = [v6 service];
  v8 = [v7 associatedServiceType];
  v9 = [v7 serviceType];
  v10 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
  v11 = [v10 items];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__HUServiceDetailsItemManager_selectedAssociatedServiceTypeItem__block_invoke;
  v17[3] = &unk_277DB95B0;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 na_firstObjectPassingTest:v17];

  return v14;
}

BOOL __64__HUServiceDetailsItemManager_selectedAssociatedServiceTypeItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D136E0]];

  v5 = ([v4 isEqualToString:*(a1 + 32)] & 1) != 0 || !*(a1 + 32) && (objc_msgSend(v4, "isEqualToString:", *(a1 + 40)) & 1) != 0;
  return v5;
}

- (void)setShouldHideAccessoryItem:(BOOL)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  self->_shouldHideAccessoryItem = a3;
  v5 = [(HUServiceDetailsItemManager *)self staticItemProvider];

  if (v5)
  {
    v6 = [(HUServiceDetailsItemManager *)self staticItemProvider];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v8 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v7 senderSelector:a2];
  }
}

- (HMAccessory)sourceItemAccessory
{
  v3 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(HFItemManager *)self sourceItem];
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v6 = objc_opt_isKindOfClass(), v5, [(HFItemManager *)self sourceItem], v5 = objc_claimAutoreleasedReturnValue(), (v6))
  {
LABEL_13:
    v17 = v5;
LABEL_14:
    v14 = [v17 accessory];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    objc_opt_class();
    v8 = [(HFItemManager *)self sourceItem];
    v9 = [v8 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v5 = v10;

    if (!v5)
    {
      objc_opt_class();
      v11 = [(HFItemManager *)self sourceItem];
      v12 = [v11 homeKitObject];
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v15 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  v5 = [(HFItemManager *)self sourceItem];
  if (v16)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  v20 = [(HFItemManager *)self sourceItem];
  v5 = v20;
  if (v19)
  {
    v21 = [v20 service];
    v14 = [v21 accessory];

    goto LABEL_15;
  }

  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  v5 = [(HFItemManager *)self sourceItem];
  if (v22)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v23)
  {
    v17 = [(HFItemManager *)self sourceItem];
    v5 = v17;
    goto LABEL_14;
  }

  if ([(HUServiceDetailsItemManager *)self isMatterAccessoryLikeItem])
  {
    v14 = [(HUServiceDetailsItemManager *)self matterAccessory];
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (HFHomeKitObject)sourceItemHomeKitObject
{
  v3 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];

  if (v3)
  {
    v4 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
    goto LABEL_8;
  }

  v5 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(HFItemManager *)self sourceItem];
  v8 = v7;
  if (isKindOfClass)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v7 = [(HFItemManager *)self sourceItem];
    v8 = v7;
LABEL_6:
    v4 = [v7 homeKitObject];

    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)selectRoom:(id)a3
{
  v5 = a3;
  v6 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  [v6 setRoom:v5];

  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUServiceDetailsItemManager *)self roomItem];
  v9 = [v7 setWithObject:v8];
  v10 = [(HFItemManager *)self updateResultsForItems:v9 senderSelector:a2];

  v11 = MEMORY[0x277D2C900];

  return [v11 futureWithNoResult];
}

- (id)selectAssociatedServiceType:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  [v8 setAssociatedServiceType:v4];
  v11 = [v8 commitItem];

  return v11;
}

- (BOOL)isRoomItem:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
  v8 = [v7 items];
  [v6 unionSet:v8];

  v9 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
  v10 = [v9 items];
  [v6 unionSet:v10];

  LOBYTE(v9) = [v6 containsObject:v5];
  return v9;
}

- (BOOL)isCharacteristicStateItem:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsItemManager *)self serviceDetailsControlStateAndCharacteristicItemModule];
  v6 = [v5 characteristicStateItemProvider];
  v7 = [v6 items];
  v8 = [v7 containsObject:v4];

  return v8;
}

- (BOOL)isAccessoryInfoItem:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (BOOL)supportsWiFiStrengthDisplay:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  v6 = [v5 supportsWiFiStrengthDisplay:v4];

  return v6;
}

- (BOOL)canToggleAccessoryInfoItem:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  v6 = [v5 canToggleAccessoryInfoItem:v4];

  return v6;
}

- (BOOL)canShowWiFiPickerForItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 mediaProfileContainer];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CD1A90] shouldDisableWiFiPickerBasedOnOSEligibility];
    v11 = [v8 topSymptomsHandlerAccessory];
    v17[0] = 67109376;
    v17[1] = v10;
    v18 = 1024;
    v19 = [v11 supportsNetworkDiagnostics];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Checking WiFi picker eligibility: shouldDisableWiFiPickerBasedOnOSEligibility=%{BOOL}d, supportsNetworkDiagnostics=%{BOOL}d", v17, 0xEu);
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && ([MEMORY[0x277CD1A90] shouldDisableWiFiPickerBasedOnOSEligibility] & 1) == 0)
  {
    v14 = [v8 topSymptomsHandlerAccessory];
    if ([v14 supportsNetworkDiagnostics])
    {
      v15 = [(HUServiceDetailsItemManager *)self symptomsWiFiPickerItem];
      if (v15 == v4)
      {
        v12 = 1;
      }

      else
      {
        v16 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
        v12 = [v16 canShowWiFiPickerForItem:v4];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)toggleAccessoryInfoItem:(id)a3
{
  v5 = a3;
  v6 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  [v6 toggleAccessoryInfoItem:v5];

  v7 = MEMORY[0x277D14788];
  v8 = MEMORY[0x277CBEB98];
  v12 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  v9 = [v8 setWithObject:v12];
  v10 = [v7 requestToReloadItemProviders:v9 senderSelector:a2];
  v11 = [(HFItemManager *)self performItemUpdateRequest:v10];
}

- (void)updateCameraStatusLight:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HUServiceDetailsItemManager *)self cameraStatusLightItem];
    v10 = [v9 updateUserSettingsWithValue:v3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HUServiceDetailsItemManager_updateCameraStatusLight___block_invoke;
    v12[3] = &unk_277DC3720;
    v13 = v8;
    v14 = self;
    v15 = a2;
    v11 = [v10 addCompletionBlock:v12];
  }
}

void __55__HUServiceDetailsItemManager_updateCameraStatusLight___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Failed to update camera status light for camera: '%@' error:%@", &v14, 0x16u);
    }
  }

  v7 = a1[5];
  v8 = MEMORY[0x277D14788];
  v9 = MEMORY[0x277CBEB98];
  v10 = [v7 staticItemProvider];
  v11 = [v9 setWithObject:v10];
  v12 = [v8 requestToReloadItemProviders:v11 senderSelector:a1[6]];
  v13 = [v7 performItemUpdateRequest:v12];
}

- (void)updateCameraNightMode:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HUServiceDetailsItemManager *)self cameraNightModeItem];
    v10 = [v9 updateUserSettingsWithValue:v3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__HUServiceDetailsItemManager_updateCameraNightMode___block_invoke;
    v12[3] = &unk_277DC3720;
    v13 = v8;
    v14 = self;
    v15 = a2;
    v11 = [v10 addCompletionBlock:v12];
  }
}

void __53__HUServiceDetailsItemManager_updateCameraNightMode___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Failed to update night mode for camera: '%@' error:%@", &v14, 0x16u);
    }
  }

  v7 = a1[5];
  v8 = MEMORY[0x277D14788];
  v9 = MEMORY[0x277CBEB98];
  v10 = [v7 staticItemProvider];
  v11 = [v9 setWithObject:v10];
  v12 = [v8 requestToReloadItemProviders:v11 senderSelector:a1[6]];
  v13 = [v7 performItemUpdateRequest:v12];
}

- (void)updateDoorbellChimeMuteMode:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 profile];

  [v8 hf_updateDoorbellChime:v3];
}

- (id)_buildItemModulesForHome:(id)a3
{
  v91[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HFItemManager *)self sourceItem];
  if ([v6 conformsToProtocol:&unk_28251B150])
  {
    v7 = [(HUServiceDetailsItemManager *)self sourceItemHomeKitObject];

    if (v7)
    {
      v8 = [(HFItemManager *)self sourceItem];
      v9 = [v8 serviceLikeBuilderInHome:v4];
      [(HUServiceDetailsItemManager *)self setServiceLikeBuilder:v9];

      v10 = [HUNameItemModule alloc];
      v11 = [(HFItemManager *)self sourceItem];
      v12 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
      v13 = [(HUNameItemModule *)v10 initWithItemUpdater:self sourceServiceLikeItem:v11 itemBuilder:v12];
      [(HUServiceDetailsItemManager *)self setNameModule:v13];

      v14 = [(HUServiceDetailsItemManager *)self nameModule];
      [v5 addObject:v14];

      if ([(HUServiceDetailsItemManager *)self _shouldShowContainedAccessoriesList])
      {
        v15 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
        v16 = &unk_28251AF08;
        if ([v15 conformsToProtocol:v16])
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = objc_alloc_init(HUAccessoryRepresentableItemModuleContext);
        [(HUAccessoryRepresentableItemModuleContext *)v19 setObjectLevel:4];
        [(HUAccessoryRepresentableItemModuleContext *)v19 setSectionGroupingType:0];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __56__HUServiceDetailsItemManager__buildItemModulesForHome___block_invoke;
        v84[3] = &unk_277DB96A0;
        v85 = v18;
        v20 = v18;
        [(HUAccessoryRepresentableItemModuleContext *)v19 setFilter:v84];
        v21 = [[HUAccessoryRepresentableItemModule alloc] initWithContext:v19 in:v4 itemUpdater:self];
        [(HUServiceDetailsItemManager *)self setAccessoryRepresentableItemModule:v21];

        v22 = [(HUServiceDetailsItemManager *)self accessoryRepresentableItemModule];
        [v5 addObject:v22];
      }

      v23 = [HUServiceDetailsProgrammableSwitchItemModule alloc];
      v24 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
      v25 = [(HUServiceDetailsItemModule *)v23 initWithItemUpdater:self home:v4 sourceItem:v24];
      [(HUServiceDetailsItemManager *)self setProgrammableSwitchItemModule:v25];

      objc_opt_class();
      v26 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (!-[HUServiceDetailsItemManager sourceItemIsService](self, "sourceItemIsService") || (-[NSObject service](v28, "service"), v29 = objc_claimAutoreleasedReturnValue(), [v29 accessory], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "hf_isSingleServiceAccessory"), v30, v29, v31))
      {
        v32 = [HUAssociatedSceneAndTriggerModule alloc];
        v33 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
        v34 = [(HUAssociatedSceneAndTriggerModule *)v32 initWithItemUpdater:self home:v4 serviceLikeItem:v33 context:1];
        sceneAndTriggerModule = self->_sceneAndTriggerModule;
        self->_sceneAndTriggerModule = v34;

        v36 = [(HUServiceDetailsItemManager *)self sceneAndTriggerModule];
        [v5 addObject:v36];
      }

      v37 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
      v38 = [v37 supportsCHIP];

      if (v38)
      {
        v39 = [HUMatterConnectedServicesItemModule alloc];
        v40 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
        v41 = [(HUMatterConnectedServicesItemModule *)v39 initWithItemUpdater:self accessory:v40];
        connectedServicesItemModule = self->_connectedServicesItemModule;
        self->_connectedServicesItemModule = v41;

        v43 = [(HUServiceDetailsItemManager *)self connectedServicesItemModule];
        [v5 addObject:v43];
      }

      v44 = [(HUServiceDetailsItemManager *)self sourceServiceItem];

      if (v44)
      {
        v45 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
        v91[0] = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:1];

        v47 = +[HUAvailableRelatedTriggerItemModule defaultContext];
        [v47 setAnalyticsPresentationContext:@"serviceDetails"];
        v48 = [[HUAvailableRelatedTriggerItemModule alloc] initWithItems:v46 itemUpdater:self home:v4 context:v47];
        relatedTriggerItemModule = self->_relatedTriggerItemModule;
        self->_relatedTriggerItemModule = v48;

        v50 = [(HUServiceDetailsItemManager *)self relatedTriggerItemModule];
        [v5 addObject:v50];
      }

      v51 = HFLogForCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
        v52 = [v81 hf_siriEndpointProfile];
        v53 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
        v54 = v28;
        v55 = v5;
        v56 = v4;
        v57 = [v53 hf_needsOnboarding];
        v58 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
        v59 = [v58 hf_siriEndpointProfile];
        v60 = [v59 supportsOnboarding];
        *buf = 138412802;
        v87 = v52;
        v88 = 1024;
        *v89 = v57;
        v4 = v56;
        v5 = v55;
        v28 = v54;
        *&v89[4] = 1024;
        *&v89[6] = v60;
        _os_log_impl(&dword_20CEB6000, v51, OS_LOG_TYPE_DEFAULT, "SiriEndPoint Profile:[%@] needsOnboarding:[%{BOOL}d] supportsOnboarding:[%{BOOL}d]", buf, 0x18u);
      }

      v61 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
      v62 = [v61 hf_siriEndpointProfile];
      if (v62)
      {
        v63 = v62;
        v64 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
        v65 = [v64 hf_siriEndpointProfile];
        v66 = [v65 supportsOnboarding];

        if (!v66)
        {
LABEL_26:
          v75 = v5;
          goto LABEL_31;
        }

        v61 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
        v67 = [MEMORY[0x277D14368] hf_groupKeyPaths];
        v68 = [(HFItemManager *)self sourceItem];
        v69 = [(HUServiceDetailsItemManager *)self settingsController];
        v70 = [HUAccessorySettingsUtilities generateModulesFromSettingsDictionary:v61 itemUpdater:self home:v4 sourceItem:v68 usageOptions:0 settingsController:v69];
        [(HUServiceDetailsItemManager *)self setHomeKitAccessorySettingsModules:v70];

        v71 = [(HUServiceDetailsItemManager *)self homeKitAccessorySettingsModules];
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __56__HUServiceDetailsItemManager__buildItemModulesForHome___block_invoke_211;
        v82[3] = &unk_277DC0C38;
        v83 = v67;
        v72 = v67;
        v73 = [v71 sortedArrayUsingComparator:v82];
        [(HUServiceDetailsItemManager *)self setHomeKitAccessorySettingsModules:v73];

        v74 = HFLogForCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v78 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
          v79 = [v78 hf_siriEndpointProfile];
          v80 = [(HUServiceDetailsItemManager *)self homeKitAccessorySettingsModules];
          *buf = 138412802;
          v87 = v79;
          v88 = 2112;
          *v89 = v61;
          *&v89[8] = 2112;
          v90 = v80;
          _os_log_debug_impl(&dword_20CEB6000, v74, OS_LOG_TYPE_DEBUG, "Found Siri EndPoint Profile [%@]. settingsDict = [%@] Generated homeKitAccessorySettingsModules = [%@]", buf, 0x20u);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v76 = [(HFItemManager *)self sourceItem];
    *buf = 136315394;
    v87 = "[HUServiceDetailsItemManager _buildItemModulesForHome:]";
    v88 = 2112;
    *v89 = v76;
    _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%s: Unexpected sourceItem: %@", buf, 0x16u);
  }

  v75 = MEMORY[0x277CBEBF8];
LABEL_31:

  return v75;
}

uint64_t __56__HUServiceDetailsItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_containedProfiles];
  v4 = [v3 na_map:&__block_literal_global_202_1];

  v5 = [*(a1 + 32) accessories];
  v6 = [v4 intersectsSet:v5];

  return v6;
}

uint64_t __56__HUServiceDetailsItemManager__buildItemModulesForHome___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 settingGroupKeyPath];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 settingGroupKeyPath];

  v11 = [v9 indexOfObject:v10];
  if (v8 > v11)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)resetServiceLikeItemBuilder
{
  v4 = [(HFItemManager *)self sourceItem];
  v5 = [v4 conformsToProtocol:&unk_28251B150];

  if (v5)
  {
    v6 = [(HFItemManager *)self sourceItem];
    v7 = [(HFItemManager *)self home];
    v8 = [v6 serviceLikeBuilderInHome:v7];
    [(HUServiceDetailsItemManager *)self setServiceLikeBuilder:v8];

    [(HFItemManager *)self resetItemProvidersAndModules];
    v9 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v358[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v311 = [MEMORY[0x277CBEB18] array];
  v309 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v5 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = [(HFItemManager *)self sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v8 = [HUValveItemModule alloc];
  v9 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v10 = [(HUChildServiceEditorItemModule *)v8 initWithItemUpdater:self home:v4 sourceItem:v9 mode:1];
  [(HUServiceDetailsItemManager *)self setValveEditorItemModule:v10];

LABEL_5:
  v11 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [HUInputSourceItemModule alloc];
    v14 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
    v15 = [(HUChildServiceEditorItemModule *)v13 initWithItemUpdater:self home:v4 sourceItem:v14 mode:0];
    [(HUServiceDetailsItemManager *)self setInputSourceItemModule:v15];

    v16 = [HUTelevisionSettingsItemModule alloc];
    v17 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
    v18 = [(HUTelevisionSettingsItemModule *)v16 initWithItemUpdater:self home:v4 accessory:v17];
    [(HUServiceDetailsItemManager *)self setTelevisionSettingsItemModule:v18];
  }

  if ([(HUServiceDetailsItemManager *)self _shouldShowAccessoryInfoItems])
  {
    v19 = objc_alloc(MEMORY[0x277D142D0]);
    v20 = [(HFItemManager *)self home];
    v21 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
    v22 = [v19 initWithHome:v20 accessory:v21];
    [(HUServiceDetailsItemManager *)self setAccessoryInfoItemProvider:v22];
  }

  v23 = [(HUServiceDetailsItemManager *)self sourceItemHomeKitObject];
  v24 = MEMORY[0x277D13F60];
  if (v23)
  {
    v25 = HFPreferencesInternalDebuggingEnabled();

    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277D14B38]);
      v357 = *v24;
      v358[0] = @"Internal Debugging";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v358 forKeys:&v357 count:1];
      v28 = [v26 initWithResults:v27];
      [(HUServiceDetailsItemManager *)self setInternalDebuggingItem:v28];
    }
  }

  [(HUServiceDetailsItemManager *)self _setUpHomeTheaterItem];
  [(HUServiceDetailsItemManager *)self _setUpManagedConfigurationProfilesItem];
  objc_opt_class();
  v29 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v308 = v30;

  objc_opt_class();
  v31 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v287 = v32;

  if (!v308)
  {
    if (v287)
    {
      v33 = [v287 accessory];
      v34 = [v33 hf_categoryOrPrimaryServiceType];
      if ([v34 isEqualToString:*MEMORY[0x277CCE8B0]])
      {
      }

      else
      {
        v35 = [v287 accessory];
        v36 = [v35 hf_isSiriEndpoint];

        if ((v36 & 1) == 0)
        {
          v284 = objc_alloc(MEMORY[0x277D14280]);
          v37 = [v4 hf_characteristicValueManager];
          v291 = [v284 initWithAccessoryBuilder:v287 valueSource:v37];
          goto LABEL_25;
        }
      }
    }

    v37 = [(HFItemManager *)self sourceItem];
    v291 = [v37 copy];
LABEL_25:

    goto LABEL_26;
  }

  v291 = [objc_alloc(MEMORY[0x277D14AA0]) initWithServiceBuilder:v308];
LABEL_26:
  v38 = [objc_alloc(MEMORY[0x277D14C30]) initWithSourceItem:v291 transformationBlock:&__block_literal_global_231_1];
  [(HUServiceDetailsItemManager *)self setHeaderItem:v38];

  v39 = [(HUServiceDetailsItemManager *)self loggedInMediaAccountOnHomePod];
  v40 = [v39 username];
  v290 = HULocalizedStringWithFormat(@"HUServiceDetailsSplitAccountDescription", @"%@", v41, v42, v43, v44, v45, v46, v40);

  v47 = objc_alloc(MEMORY[0x277D14B38]);
  v335[0] = MEMORY[0x277D85DD0];
  v335[1] = 3221225472;
  v335[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_2;
  v335[3] = &unk_277DB7448;
  objc_copyWeak(&v336, &location);
  v48 = [v47 initWithResultsBlock:v335];
  [(HUServiceDetailsItemManager *)self setSymptomsTitleItem:v48];

  v49 = objc_alloc(MEMORY[0x277D14B38]);
  v50 = *v24;
  v355 = v50;
  v51 = _HULocalizedStringWithDefaultValue(@"HUStatusDetailsSymptomsLearnMoreButtonTitle", @"HUStatusDetailsSymptomsLearnMoreButtonTitle", 1);
  v356 = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
  v53 = [v49 initWithResults:v52];
  [(HUServiceDetailsItemManager *)self setSymptomsLearnMoreItem:v53];

  v54 = objc_alloc(MEMORY[0x277D14B38]);
  v333[0] = MEMORY[0x277D85DD0];
  v333[1] = 3221225472;
  v333[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_3;
  v333[3] = &unk_277DB7448;
  objc_copyWeak(&v334, &location);
  v55 = [v54 initWithResultsBlock:v333];
  [(HUServiceDetailsItemManager *)self setSymptomsWiFiPickerItem:v55];

  v56 = objc_alloc(MEMORY[0x277D14B38]);
  v353[0] = v50;
  v57 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsSplitAccountTitle", @"HUServiceDetailsSplitAccountTitle", 1);
  v353[1] = *MEMORY[0x277D13E20];
  v354[0] = v57;
  v354[1] = v290;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v354 forKeys:v353 count:2];
  v59 = [v56 initWithResults:v58];
  [(HUServiceDetailsItemManager *)self setSplitMediaAccountTitleItem:v59];

  v60 = objc_alloc(MEMORY[0x277D14B38]);
  v351 = v50;
  v61 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsSplitAccountUseAsDefaultAccount_Button_Title", @"HUServiceDetailsSplitAccountUseAsDefaultAccount_Button_Title", 1);
  v352 = v61;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
  v63 = [v60 initWithResults:v62];
  [(HUServiceDetailsItemManager *)self setSplitMediaAccountUseDefaultAccountItem:v63];

  v64 = objc_alloc(MEMORY[0x277D14B38]);
  v349 = v50;
  v65 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsSplitAccountSignOut_Button_Title", @"HUServiceDetailsSplitAccountSignOut_Button_Title", 1);
  v350 = v65;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
  v67 = [v64 initWithResults:v66];
  [(HUServiceDetailsItemManager *)self setSplitMediaAccountSignoutAccountItem:v67];

  v68 = objc_alloc(MEMORY[0x277D14B38]);
  v347 = v50;
  v69 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsCreateNewRoomTitle", @"HUServiceDetailsCreateNewRoomTitle", 1);
  v348 = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
  v71 = [v68 initWithResults:v70];
  [(HUServiceDetailsItemManager *)self setCreateNewRoomItem:v71];

  v72 = objc_alloc_init(MEMORY[0x277D14B38]);
  [(HUServiceDetailsItemManager *)self setRoomListItem:v72];

  v73 = [HUServiceDetailsShowContainedItemsInGroupItem alloc];
  v74 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v75 = [(HUServiceDetailsAbstractItem *)v73 initWithSourceServiceItem:v74 home:v4];
  [(HUServiceDetailsItemManager *)self setShowContainedItems:v75];

  v76 = [HUServiceDetailsAddGroupItem alloc];
  v77 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v78 = [(HUServiceDetailsAbstractItem *)v76 initWithSourceServiceItem:v77 home:v4];
  [(HUServiceDetailsItemManager *)self setAddGroupItem:v78];

  v79 = [HUServiceDetailsIdentifyHomePodItem alloc];
  v80 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v81 = [(HUServiceDetailsAbstractItem *)v79 initWithSourceServiceItem:v80 home:v4];
  [(HUServiceDetailsItemManager *)self setIdentifyHomePodItem:v81];

  if (![(HUServiceDetailsItemManager *)self isItemGroup]&& ![(HUServiceDetailsItemManager *)self isAccessory])
  {
    objc_opt_class();
    v82 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
    v83 = [v82 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v85 = v84;

    v86 = objc_alloc(MEMORY[0x277D14410]);
    v87 = [v85 serviceType];
    v88 = [(HFItemManager *)self home];
    v89 = [v86 initWithService:v85 serviceType:v87 home:v88];
    [(HUServiceDetailsItemManager *)self setAssociatedServiceTypeOptionItemProvider:v89];
  }

  v90 = [HUServiceDetailsSeparateTileItem alloc];
  v91 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v92 = [(HUServiceDetailsAbstractItem *)v90 initWithSourceServiceItem:v91 home:v4];
  [(HUServiceDetailsItemManager *)self setSeparateTileItem:v92];

  v93 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_4;
  aBlock[3] = &unk_277DBC888;
  v286 = v93;
  v332 = v286;
  v94 = _Block_copy(aBlock);
  v329[0] = MEMORY[0x277D85DD0];
  v329[1] = 3221225472;
  v329[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_5;
  v329[3] = &unk_277DB83E8;
  v95 = v4;
  v330 = v95;
  v96 = _Block_copy(v329);
  v97 = objc_alloc(MEMORY[0x277D14A68]);
  v98 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  v99 = [v97 initWithHome:v95 serviceLikeBuilder:v98];
  [(HUServiceDetailsItemManager *)self setSelectedRoomItemProvider:v99];

  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v327[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_6;
  v327[3] = &unk_277DC3768;
  v289 = v96;
  v328 = v289;
  v100 = [(HUServiceDetailsItemManager *)self selectedRoomItemProvider];
  [v100 setFilter:v327];

  v310 = [objc_alloc(MEMORY[0x277D149E8]) initWithHome:v95];
  [v310 setFilter:v289];
  v101 = objc_alloc(MEMORY[0x277D14C38]);
  v323[0] = MEMORY[0x277D85DD0];
  v323[1] = 3221225472;
  v323[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_7;
  v323[3] = &unk_277DC37B8;
  objc_copyWeak(&v326, &location);
  v285 = v94;
  v325 = v285;
  v312 = v95;
  v324 = v312;
  v102 = [v101 initWithSourceProvider:v310 transformationBlock:v323];
  [(HUServiceDetailsItemManager *)self setExistingRoomItemProvider:v102];

  v288 = [objc_alloc(MEMORY[0x277D149F8]) initWithHome:v312];
  v103 = objc_alloc(MEMORY[0x277D14C38]);
  v321[0] = MEMORY[0x277D85DD0];
  v321[1] = 3221225472;
  v321[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_9;
  v321[3] = &unk_277DC3808;
  objc_copyWeak(&v322, &location);
  v104 = [v103 initWithSourceProvider:v288 transformationBlock:v321];
  [(HUServiceDetailsItemManager *)self setSuggestedRoomItemProvider:v104];

  v105 = [HUServiceDetailsRoomItem alloc];
  v106 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v107 = [(HUServiceDetailsItemManager *)self serviceLikeBuilder];
  v108 = [(HUServiceDetailsRoomItem *)v105 initWithSourceServiceItem:v106 home:v312 serviceLikeBuilder:v107];
  [(HUServiceDetailsItemManager *)self setRoomItem:v108];

  v109 = [HUServiceDetailsAssociatedServiceTypeItem alloc];
  v110 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v111 = [(HUServiceDetailsAbstractItem *)v109 initWithSourceServiceItem:v110 home:v312];
  [(HUServiceDetailsItemManager *)self setAssociatedServiceTypeItem:v111];

  v112 = [HUIncludedContextItem alloc];
  v113 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v114 = [v113 homeKitObject];
  v115 = [(HUIncludedContextItem *)v112 initWithHomeKitObject:v114 contextType:3 home:v312];
  [(HUServiceDetailsItemManager *)self setShowInHomeDashboardItem:v115];

  v116 = [HUIncludedContextItem alloc];
  v117 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v118 = [v117 homeKitObject];
  v119 = [(HUIncludedContextItem *)v116 initWithHomeKitObject:v118 contextType:2 home:v312];
  [(HUServiceDetailsItemManager *)self setFavoriteItem:v119];

  v120 = [HUServiceDetailsPairingModeItem alloc];
  v121 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v122 = [(HUServiceDetailsAbstractItem *)v120 initWithSourceServiceItem:v121 home:v312];
  [(HUServiceDetailsItemManager *)self setPairingModeItem:v122];

  v123 = [HUServiceDetailsExportDiagnosticsItem alloc];
  v124 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v125 = [(HUServiceDetailsAbstractItem *)v123 initWithSourceServiceItem:v124 home:v312];
  [(HUServiceDetailsItemManager *)self setExportDiagnosticsItem:v125];

  v126 = [HUServiceDetailsRemoveItem alloc];
  v127 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v128 = [(HUServiceDetailsAbstractItem *)v126 initWithSourceServiceItem:v127 home:v312];
  [(HUServiceDetailsItemManager *)self setRemoveItem:v128];

  v129 = [HUServiceDetailsRemoveFromGroupItem alloc];
  v130 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v131 = [(HUServiceDetailsAbstractItem *)v129 initWithSourceServiceItem:v130 home:v312];
  [(HUServiceDetailsItemManager *)self setRemoveFromGroupItem:v131];

  v132 = [HUServiceDetailsResetAccessoryItem alloc];
  v133 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v134 = [(HUServiceDetailsAbstractItem *)v132 initWithSourceServiceItem:v133 home:v312];
  [(HUServiceDetailsItemManager *)self setResetItem:v134];

  v135 = [HUServiceDetailsRestartAccessoriesItem alloc];
  v136 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v137 = [(HUServiceDetailsAbstractItem *)v135 initWithSourceServiceItem:v136 home:v312];
  [(HUServiceDetailsItemManager *)self setRestartItem:v137];

  v138 = [HUServiceDetailsAudioSettingsItem alloc];
  v139 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v140 = [(HUServiceDetailsAbstractItem *)v138 initWithSourceServiceItem:v139 home:v312];
  [(HUServiceDetailsItemManager *)self setAudioSettingsItem:v140];

  v141 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  if ([v141 hf_isVisibleAsBridgedAccessory])
  {

    goto LABEL_34;
  }

  v146 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  if (([v146 hf_isVisibleAsBridge] & 1) == 0)
  {

    goto LABEL_39;
  }

  v147 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  v148 = [v147 hf_isPureBridge];

  if ((v148 & 1) == 0)
  {
LABEL_34:
    v142 = objc_alloc(MEMORY[0x277D14B38]);
    v345 = v50;
    v143 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsBridgeTitle", @"HUServiceDetailsBridgeTitle", 1);
    v346 = v143;
    v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
    v145 = [v142 initWithResults:v144];
    [(HUServiceDetailsItemManager *)self setAccessoryItem:v145];

    v141 = [(HUServiceDetailsItemManager *)self accessoryItem];
    [v311 addObject:v141];
LABEL_39:
  }

  v149 = [HUServiceDetailsLockPinCodesItem alloc];
  v150 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v151 = [(HUServiceDetailsAbstractItem *)v149 initWithSourceServiceItem:v150 home:v312];
  [(HUServiceDetailsItemManager *)self setLockPinCodesItem:v151];

  v152 = [HUServiceDetailsLockAddHomeKeyToWalletItem alloc];
  v153 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v154 = [(HUServiceDetailsAbstractItem *)v152 initWithSourceServiceItem:v153 home:v312];
  [(HUServiceDetailsItemManager *)self setLockAddHomeKeyToWalletItem:v154];

  v155 = [HUServiceDetailsStatusAndNotificationItem alloc];
  v156 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v157 = [(HUServiceDetailsAbstractItem *)v155 initWithSourceServiceItem:v156 home:v312];
  [(HUServiceDetailsItemManager *)self setStatusAndNotificationItem:v157];

  v158 = [HUServiceDetailsCameraActivityZonesItem alloc];
  v159 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v160 = [(HUServiceDetailsAbstractItem *)v158 initWithSourceServiceItem:v159 home:v312];
  [(HUServiceDetailsItemManager *)self setCameraActivityZonesItem:v160];

  v161 = [HUServiceDetailsCameraStatusLightItem alloc];
  v162 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v163 = [(HUServiceDetailsAbstractItem *)v161 initWithSourceServiceItem:v162 home:v312];
  [(HUServiceDetailsItemManager *)self setCameraStatusLightItem:v163];

  v164 = [HUServiceDetailsCameraNightModeItem alloc];
  v165 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v166 = [(HUServiceDetailsAbstractItem *)v164 initWithSourceServiceItem:v165 home:v312];
  [(HUServiceDetailsItemManager *)self setCameraNightModeItem:v166];

  v167 = [HUServiceDetailsCameraDoorbellChimeMuteItem alloc];
  v168 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  v169 = [(HUServiceDetailsAbstractItem *)v167 initWithSourceServiceItem:v168 home:v312];
  [(HUServiceDetailsItemManager *)self setCameraDoorbellChimeMuteItem:v169];

  objc_opt_class();
  v170 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v171 = v170;
  }

  else
  {
    v171 = 0;
  }

  v307 = v171;

  v172 = [v307 profile];
  v173 = [v172 hf_supportsRecordingEvents];

  if ([v312 hf_currentUserIsAdministrator])
  {
    v174 = [v312 hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v174 = 0;
  }

  v175 = [v312 hf_hasResidentDeviceCapableOfSupportingEnhancedDetectionModes];
  v176 = objc_alloc(MEMORY[0x277D14B38]);
  v343[0] = v50;
  v177 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRecordingOptionsDisplayTitle", @"HUServiceDetailsRecordingOptionsDisplayTitle", 1);
  v344[0] = v177;
  v178 = *MEMORY[0x277D13FB8];
  v343[1] = *MEMORY[0x277D13FB8];
  v179 = [MEMORY[0x277CCABB0] numberWithBool:v173 ^ 1u];
  v344[1] = v179;
  v343[2] = *MEMORY[0x277D13EA8];
  v180 = [MEMORY[0x277CCABB0] numberWithBool:v174 & (v175 ^ 1u)];
  v343[3] = *MEMORY[0x277D13DC8];
  v344[2] = v180;
  v344[3] = @"AccessoryDetails.RecordingOptions";
  v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v344 forKeys:v343 count:4];
  v182 = [v176 initWithResults:v181];
  [(HUServiceDetailsItemManager *)self setCameraRecordingOptionsItem:v182];

  v183 = [v312 currentUser];
  v184 = [v312 homeAccessControlForUser:v183];
  v185 = [v184 camerasAccessLevel];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v186 = 1;
  }

  else
  {
    v186 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  if ([v312 hf_isFaceRecognitionAvailable])
  {
    v187 = [v307 profile];
    v188 = [v187 hf_supportsRecordingEvents] ^ 1;
    if (v185 == 2)
    {
      v189 = v188;
    }

    else
    {
      v189 = 1;
    }

    v190 = v189 & (v186 ^ 1u);
  }

  else
  {
    v190 = v186 ^ 1u;
  }

  v191 = objc_alloc(MEMORY[0x277D14B38]);
  v341[0] = v50;
  v192 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsCameraFaceRecognitionDisplayTitle", @"HUServiceDetailsCameraFaceRecognitionDisplayTitle", 1);
  v193 = *MEMORY[0x277D13F68];
  v342[0] = v192;
  v342[1] = @"HUServiceDetailsCameraFaceRecognitionDisplayTitle";
  v341[1] = v193;
  v341[2] = v178;
  v194 = [MEMORY[0x277CCABB0] numberWithBool:v190];
  v342[2] = v194;
  v341[3] = *MEMORY[0x277D13F10];
  v195 = [MEMORY[0x277CCABB0] numberWithInt:v186 ^ 1u];
  v342[3] = v195;
  v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v342 forKeys:v341 count:4];
  v197 = [v191 initWithResults:v196];
  [(HUServiceDetailsItemManager *)self setCameraFaceRecognitionItem:v197];

  v198 = [(HFItemManager *)self home];
  LODWORD(v195) = [v198 hf_currentUserIsAdministrator];

  if (v195)
  {
    v199 = [HUServiceDetailsCollectDiagnosticsItem alloc];
    v200 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
    v201 = [(HUServiceDetailsAbstractItem *)v199 initWithSourceServiceItem:v200 home:v312];
    [(HUServiceDetailsItemManager *)self setCollectDiagnosticsItem:v201];
  }

  v306 = [(HUServiceDetailsItemManager *)self headerItem];
  v340[0] = v306;
  v305 = [(HUServiceDetailsItemManager *)self symptomsWiFiPickerItem];
  v340[1] = v305;
  v304 = [(HUServiceDetailsItemManager *)self symptomsLearnMoreItem];
  v340[2] = v304;
  v303 = [(HUServiceDetailsItemManager *)self symptomsTitleItem];
  v340[3] = v303;
  v302 = [(HUServiceDetailsItemManager *)self splitMediaAccountTitleItem];
  v340[4] = v302;
  v301 = [(HUServiceDetailsItemManager *)self splitMediaAccountUseDefaultAccountItem];
  v340[5] = v301;
  v300 = [(HUServiceDetailsItemManager *)self splitMediaAccountSignoutAccountItem];
  v340[6] = v300;
  v299 = [(HUServiceDetailsItemManager *)self createNewRoomItem];
  v340[7] = v299;
  v298 = [(HUServiceDetailsItemManager *)self showContainedItems];
  v340[8] = v298;
  v297 = [(HUServiceDetailsItemManager *)self addGroupItem];
  v340[9] = v297;
  v296 = [(HUServiceDetailsItemManager *)self identifyHomePodItem];
  v340[10] = v296;
  v295 = [(HUServiceDetailsItemManager *)self separateTileItem];
  v340[11] = v295;
  v294 = [(HUServiceDetailsItemManager *)self roomItem];
  v340[12] = v294;
  v293 = [(HUServiceDetailsItemManager *)self roomListItem];
  v340[13] = v293;
  v292 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
  v340[14] = v292;
  v202 = [(HUServiceDetailsItemManager *)self statusAndNotificationItem];
  v340[15] = v202;
  v203 = [(HUServiceDetailsItemManager *)self audioSettingsItem];
  v340[16] = v203;
  v204 = [(HUServiceDetailsItemManager *)self cameraStatusLightItem];
  v340[17] = v204;
  v205 = [(HUServiceDetailsItemManager *)self cameraNightModeItem];
  v340[18] = v205;
  v206 = [(HUServiceDetailsItemManager *)self cameraDoorbellChimeMuteItem];
  v340[19] = v206;
  v207 = [(HUServiceDetailsItemManager *)self cameraRecordingOptionsItem];
  v340[20] = v207;
  v208 = [(HUServiceDetailsItemManager *)self cameraFaceRecognitionItem];
  v340[21] = v208;
  v209 = [(HUServiceDetailsItemManager *)self cameraActivityZonesItem];
  v340[22] = v209;
  v210 = [MEMORY[0x277CBEA60] arrayWithObjects:v340 count:23];
  [v311 addObjectsFromArray:v210];

  v211 = [(HUServiceDetailsItemManager *)self removeFromGroupItem];
  v339[0] = v211;
  v212 = [(HUServiceDetailsItemManager *)self removeItem];
  v339[1] = v212;
  v213 = [(HUServiceDetailsItemManager *)self resetItem];
  v339[2] = v213;
  v214 = [(HUServiceDetailsItemManager *)self restartItem];
  v339[3] = v214;
  v215 = [MEMORY[0x277CBEA60] arrayWithObjects:v339 count:4];
  [v309 addObjectsFromArray:v215];

  v216 = [(HUServiceDetailsItemManager *)self alarmItem];
  [v311 na_safeAddObject:v216];

  v217 = [(HUServiceDetailsItemManager *)self homeTheaterAudioOutputItem];
  [v311 na_safeAddObject:v217];

  v218 = [(HUServiceDetailsItemManager *)self showInHomeDashboardItem];
  [v311 na_safeAddObject:v218];

  v219 = [(HUServiceDetailsItemManager *)self favoriteItem];
  [v311 na_safeAddObject:v219];

  v220 = [(HUServiceDetailsItemManager *)self managedConfigurationProfilesItem];
  [v311 na_safeAddObject:v220];

  v221 = [(HUServiceDetailsItemManager *)self lockPinCodesItem];
  [v311 na_safeAddObject:v221];

  v222 = [(HUServiceDetailsItemManager *)self lockAddHomeKeyToWalletItem];
  [v311 na_safeAddObject:v222];

  v223 = [(HUServiceDetailsItemManager *)self pairingModeItem];
  [v311 na_safeAddObject:v223];

  v224 = [(HUServiceDetailsItemManager *)self collectDiagnosticsItem];
  [v311 na_safeAddObject:v224];

  v225 = [(HUServiceDetailsItemManager *)self internalDebuggingItem];
  [v311 na_safeAddObject:v225];

  v226 = objc_alloc(MEMORY[0x277D14B40]);
  v227 = [MEMORY[0x277CBEB98] setWithArray:v311];
  v228 = [v226 initWithItems:v227];
  [(HUServiceDetailsItemManager *)self setStaticItemProvider:v228];

  v229 = objc_alloc(MEMORY[0x277D14B40]);
  v230 = [MEMORY[0x277CBEB98] setWithArray:v309];
  v231 = [v229 initWithItems:v230];
  [(HUServiceDetailsItemManager *)self setAccessoryResetAndRemoveItemProvider:v231];

  v232 = objc_alloc(MEMORY[0x277D14B40]);
  v233 = MEMORY[0x277CBEB98];
  v234 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItem];
  v235 = [v233 setWithObject:v234];
  v236 = [v232 initWithItems:v235];
  [(HUServiceDetailsItemManager *)self setExportDiagnosticsItemProvider:v236];

  v237 = [HUServiceDetailsControlAndCharacteristicStateItemModule alloc];
  v238 = [(HFItemManager *)self sourceItem];
  v239 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)v237 initWithItemUpdater:self home:v312 sourceItem:v238 delegate:self];
  [(HUServiceDetailsItemManager *)self setServiceDetailsControlStateAndCharacteristicItemModule:v239];

  v240 = [(HFItemManager *)self sourceItem];
  LODWORD(v239) = [v240 conformsToProtocol:&unk_28251AF08];

  if (v239)
  {
    v241 = [HUSoftwareUpdateItemModule alloc];
    v242 = [(HFItemManager *)self sourceItem];
    v243 = [(HUSoftwareUpdateItemModule *)v241 initWithItemUpdater:self home:v312 sourceItem:v242];
    [(HUServiceDetailsItemManager *)self setSoftwareUpdateItemModule:v243];
  }

  v244 = [[HULinkedApplicationItemProvider alloc] initWithHome:v312];
  [(HUServiceDetailsItemManager *)self setLinkedApplicationItemProvider:v244];

  v319[0] = MEMORY[0x277D85DD0];
  v319[1] = 3221225472;
  v319[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_11;
  v319[3] = &unk_277DC3830;
  objc_copyWeak(&v320, &location);
  v245 = [(HUServiceDetailsItemManager *)self linkedApplicationItemProvider];
  [v245 setFilter:v319];

  v246 = [[HUFirmwareUpdateItemProvider alloc] initWithHome:v312 style:1];
  [(HUServiceDetailsItemManager *)self setFirmwareUpdateItemProvider:v246];

  v317[0] = MEMORY[0x277D85DD0];
  v317[1] = 3221225472;
  v317[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_12;
  v317[3] = &unk_277DC3830;
  objc_copyWeak(&v318, &location);
  v247 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider];
  [v247 setFilter:v317];

  v248 = MEMORY[0x277CBEB58];
  v249 = [(HUServiceDetailsItemManager *)self staticItemProvider];
  v250 = [v248 setWithObject:v249];

  v251 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItemProvider];
  [v250 na_safeAddObject:v251];

  v252 = [(HUServiceDetailsItemManager *)self accessoryResetAndRemoveItemProvider];
  [v250 na_safeAddObject:v252];

  v253 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  [v250 na_safeAddObject:v253];

  v254 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
  [v250 na_safeAddObject:v254];

  v255 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
  [v250 na_safeAddObject:v255];

  v256 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
  [v250 na_safeAddObject:v256];

  v257 = [(HUServiceDetailsItemManager *)self linkedApplicationItemProvider];
  [v250 na_safeAddObject:v257];

  v258 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider];
  [v250 na_safeAddObject:v258];

  v259 = [MEMORY[0x277CBEB58] set];
  v260 = [(HUServiceDetailsItemManager *)self programmableSwitchItemModule];
  v261 = [v260 itemProviders];
  [v259 unionSet:v261];

  v262 = [(HUServiceDetailsItemManager *)self serviceDetailsControlStateAndCharacteristicItemModule];
  v263 = [v262 itemProviders];
  [v259 unionSet:v263];

  v264 = [(HUServiceDetailsItemManager *)self accessorySettingsItemModule];
  v265 = [v264 itemProviders];
  [v259 unionSet:v265];

  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v266 = [(HUServiceDetailsItemManager *)self homeKitAccessorySettingsModules];
  v267 = [v266 countByEnumeratingWithState:&v313 objects:v338 count:16];
  if (v267)
  {
    v268 = *v314;
    do
    {
      for (i = 0; i != v267; ++i)
      {
        if (*v314 != v268)
        {
          objc_enumerationMutation(v266);
        }

        v270 = [*(*(&v313 + 1) + 8 * i) itemProviders];
        [v259 unionSet:v270];
      }

      v267 = [v266 countByEnumeratingWithState:&v313 objects:v338 count:16];
    }

    while (v267);
  }

  v271 = [(HUServiceDetailsItemManager *)self softwareUpdateItemModule];

  if (v271)
  {
    v272 = [(HUServiceDetailsItemManager *)self softwareUpdateItemModule];
    v273 = [v272 itemProviders];
    [v259 unionSet:v273];
  }

  v274 = [(HUServiceDetailsItemManager *)self valveEditorItemModule];
  v275 = [v274 itemProviders];
  [v259 unionSet:v275];

  v276 = [(HUServiceDetailsItemManager *)self televisionSettingsItemModule];
  v277 = [v276 itemProviders];
  [v259 unionSet:v277];

  v278 = [(HUServiceDetailsItemManager *)self inputSourceItemModule];
  v279 = [v278 itemProviders];
  [v259 unionSet:v279];

  v280 = [(HUServiceDetailsItemManager *)self debugAccessoryItemModule];
  v281 = [v280 itemProviders];
  [v259 unionSet:v281];

  [v250 unionSet:v259];
  v282 = [v250 allObjects];

  objc_destroyWeak(&v318);
  objc_destroyWeak(&v320);

  objc_destroyWeak(&v322);
  objc_destroyWeak(&v326);

  objc_destroyWeak(&v334);
  objc_destroyWeak(&v336);

  objc_destroyWeak(&location);

  return v282;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v3 = [v2 copy];

  return v3;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 mediaProfileContainer];
  v6 = [v5 symptomsHandler];
  v7 = [v6 hf_symptomsSortedByPriority];

  v8 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:v7];
  v9 = [WeakRetained _resultsForNetworkDiagnosticsSymptom:v8];
  v10 = [v4 accessories];

  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v11 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v11;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 mediaProfileContainer];
  v6 = [v5 symptomsHandler];
  v7 = [v6 hf_symptomsSortedByPriority];
  v8 = [v7 firstObject];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [v4 accessories];

  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v11 = _HULocalizedStringWithDefaultValue(@"HUStatusDetailsWifiPickerFixButtonTitle", @"HUStatusDetailsWifiPickerFixButtonTitle", 1);
  v12 = *MEMORY[0x277D13F60];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if ([v8 type] == 115)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUStatusDetailsWifiPickerFixWiFiDisassocButtonTitle", @"HUStatusDetailsWifiPickerFixWiFiDisassocButtonTitle", 1);
    [v9 setObject:v13 forKeyedSubscript:v12];
  }

  v14 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v14;
}

uint64_t __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) room];
  v5 = [v4 room];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = [v3 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
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

  v7 = [v6 uniqueIdentifier];
  v8 = [*(a1 + 32) roomForEntireHome];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [v6 accessories];
    v12 = [v11 count] != 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 room];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 room];
    v7 = (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_7(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_8;
  v8[3] = &unk_277DC3790;
  objc_copyWeak(&v12, a1 + 6);
  v5 = v3;
  v9 = v5;
  v11 = a1[5];
  v10 = a1[4];
  v6 = [v4 initWithSourceItem:v5 transformationBlock:v8];

  objc_destroyWeak(&v12);

  return v6;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 mutableCopy];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) room];
  v8 = [v7 uniqueIdentifier];
  v9 = [WeakRetained home];
  v10 = [v9 roomForEntireHome];
  v11 = [v10 uniqueIdentifier];
  v12 = [v6 numberWithBool:{objc_msgSend(v8, "isEqual:", v11)}];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13FE0]];

  v13 = MEMORY[0x277CCABB0];
  v14 = *(a1 + 48);
  v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14090]];

  v16 = [v13 numberWithBool:{(*(v14 + 16))(v14, v15)}];
  [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v17 = objc_alloc(MEMORY[0x277D149D8]);
  v18 = [*(a1 + 32) room];
  v19 = [v17 initWithExistingObject:v18 inHome:*(a1 + 40)];
  [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x277D14088]];

  return v5;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_10;
  v7[3] = &unk_277DC37E0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = [v4 initWithSourceItem:v3 transformationBlock:v7];
  objc_destroyWeak(&v8);

  return v5;
}

id __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained serviceLikeBuilder];
  v8 = [v7 room];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14088]];

  v10 = [v5 numberWithBool:{objc_msgSend(v8, "isEqual:", v9)}];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  return v4;
}

uint64_t __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isItemGroup])
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v6 = [WeakRetained sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && ([v8 accessory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_isBridge"), v11 = objc_msgSend(v9, "isEqual:", v3), v9, v11) && (v10 & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v12 = [WeakRetained sourceServiceItem];
      v13 = [v12 accessories];

      v5 = [v13 containsObject:v3];
    }
  }

  return v5;
}

uint64_t __58__HUServiceDetailsItemManager__buildItemProvidersForHome___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sourceServiceItem];
  v6 = [v5 accessories];
  v7 = [v6 containsObject:v3];

  return v7;
}

- (void)_setUpHomeTheaterItem
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __52__HUServiceDetailsItemManager__setUpHomeTheaterItem__block_invoke;
  v8 = &unk_277DB7448;
  objc_copyWeak(&v9, &location);
  v4 = [v3 initWithResultsBlock:&v5];
  [(HUServiceDetailsItemManager *)self setHomeTheaterAudioOutputItem:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __52__HUServiceDetailsItemManager__setUpHomeTheaterItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hf_MediaAccessoryItem];
  v3 = v2;
  if (v2 && [v2 mediaAccessoryItemType] == 1 && (objc_msgSend(v3, "mediaProfileContainer"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hf_supportsHomeTheater"), v4, v5))
  {
    v6 = [v3 mediaProfileContainer];
    v7 = [v6 hf_backingAccessory];

    if (v7)
    {
      v8 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsAudioOutputTitle", @"HUServiceDetailsAudioOutputTitle", 1);
      v9 = [v7 audioDestinationController];
      v10 = [v9 destination];
      v11 = [v10 audioDestinationName];

      if (v11)
      {
        v12 = [v9 destination];
        v13 = [v12 audioDestinationName];
      }

      else
      {
        v13 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSettings_DefaultOutput", @"HUHomeTheaterSettings_DefaultOutput", 1);
      }

      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = 1;
  v13 = &stru_2823E0EE8;
  v8 = &stru_2823E0EE8;
LABEL_9:
  v15 = [MEMORY[0x277CBEB38] dictionary];
  [v15 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v17 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v15];

  return v18;
}

- (void)_setUpManagedConfigurationProfilesItem
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke;
  v8 = &unk_277DB7448;
  objc_copyWeak(&v9, &location);
  v4 = [v3 initWithResultsBlock:&v5];
  [(HUServiceDetailsItemManager *)self setManagedConfigurationProfilesItem:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sourceItemAccessory];
  v3 = [v2 supportsManagedConfigurationProfile];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke_2;
    v10[3] = &unk_277DBB150;
    v10[4] = WeakRetained;
    v5 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke_3;
    v9[3] = &unk_277DB7A90;
    v9[4] = WeakRetained;
    v6 = [v5 flatMap:v9];
    v7 = [v6 recover:&__block_literal_global_337];
  }

  else
  {
    v11 = *MEMORY[0x277D13FB8];
    v12[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v4 futureWithResult:v5];
  }

  return v7;
}

void __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sourceItemAccessory];
  [v4 fetchManagedConfigurationProfilesWithCompletionHandler:v3];
}

id __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = _HULocalizedStringWithDefaultValue(@"HUManagedConfigurationProfilesTitle", @"HUManagedConfigurationProfilesTitle", 1);
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v4, "count")];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 count];

  v10 = [v8 numberWithInt:v9 == 0];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v11 = MEMORY[0x277CBEB98];
  v12 = [*(a1 + 32) sourceItemAccessory];
  v13 = [v11 na_setWithSafeObject:v12];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v14;
}

id __69__HUServiceDetailsItemManager__setUpManagedConfigurationProfilesItem__block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v2;
    _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error fetching profiles %@]", buf, 0xCu);
  }

  v4 = MEMORY[0x277D2C900];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v299 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v207 = MEMORY[0x277CBEBF8];
    goto LABEL_112;
  }

  aSelector = a2;
  v6 = [(HUServiceDetailsItemManager *)self serviceDetailsControlStateAndCharacteristicItemModule];
  v7 = [v6 buildSectionsWithDisplayedItems:v5];

  v8 = [HUServiceDetailsItemModule serviceDetailsItemSectionComparatorForSortStrategy:@"HUServiceDetailsItemModuleSortStrategyDefault"];
  v251 = v7;
  v9 = [v7 sortedArrayUsingComparator:v8];
  [(HUServiceDetailsItemManager *)self setCharacteristicSections:v9];

  v10 = [(HUServiceDetailsItemManager *)self programmableSwitchItemModule];
  v11 = [v10 buildSectionsWithDisplayedItems:v5];

  v12 = [HUServiceDetailsItemModule serviceDetailsItemSectionComparatorForSortStrategy:@"HUServiceDetailsItemModuleSortStrategyProgrammableSwitch"];
  v250 = v11;
  v13 = [v11 sortedArrayUsingComparator:v12];
  [(HUServiceDetailsItemManager *)self setProgrammableSwitchSections:v13];

  v14 = [(HUServiceDetailsItemManager *)self accessorySettingsItemModule];
  v254 = v5;
  v15 = [v14 buildSectionsWithDisplayedItems:v5];

  v249 = v15;
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_341_0];
  [(HUServiceDetailsItemManager *)self setAccessorySettingsSections:v16];

  v253 = objc_opt_new();
  v17 = objc_opt_new();
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v252 = self;
  v18 = self;
  v19 = v17;
  obj = [(HUServiceDetailsItemManager *)v18 homeKitAccessorySettingsModules];
  v20 = [obj countByEnumeratingWithState:&v267 objects:v298 count:16];
  v255 = v19;
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = *v268;
  v23 = MEMORY[0x277D14170];
  do
  {
    v24 = 0;
    do
    {
      if (*v268 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v267 + 1) + 8 * v24);
      objc_opt_class();
      v26 = v25;
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      v29 = [v28 settingGroupKeyPath];
      if ([v29 isEqualToString:*v23])
      {
        goto LABEL_17;
      }

      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = [v28 settingGroupKeyPath];
      if ([v33 isEqualToString:*MEMORY[0x277D133A8]])
      {
        goto LABEL_16;
      }

      v34 = [v28 settingGroupKeyPath];
      if ([v34 isEqualToString:*MEMORY[0x277D136D0]])
      {
        goto LABEL_15;
      }

      v258 = [v28 settingGroupKeyPath];
      if ([v258 isEqualToString:*MEMORY[0x277D136E8]])
      {

LABEL_15:
LABEL_16:

        v23 = v32;
        v22 = v31;
        v21 = v30;
LABEL_17:

LABEL_18:
        v35 = [v28 accessorySettingsItemProvider];
        v36 = [(HUServiceDetailsItemManager *)v35 items];
        v37 = [v36 allObjects];
        [v19 addObjectsFromArray:v37];

        goto LABEL_19;
      }

      v38 = [v28 settingGroupKeyPath];
      v256 = [v38 isEqualToString:*MEMORY[0x277D13840]];

      v19 = v255;
      v23 = v32;
      v22 = v31;
      v21 = v30;
      if (v256)
      {
        goto LABEL_18;
      }

      v35 = [v26 buildSectionsWithDisplayedItems:v254];
      [v253 addObjectsFromArray:v35];
      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v289 = v35;
        v290 = 2112;
        v291 = v26;
        _os_log_debug_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEBUG, "Built Setting Sections = [%@] for module = [%@]", buf, 0x16u);
      }

LABEL_19:

      ++v24;
    }

    while (v21 != v24);
    v39 = [obj countByEnumeratingWithState:&v267 objects:v298 count:16];
    v21 = v39;
  }

  while (v39);
LABEL_25:

  v40 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"groupedHomeKitAccessorySettingsSection"];
  if ([v19 count])
  {
    [v40 setItems:v19];
    [v253 insertObject:v40 atIndex:0];
  }

  obja = v40;
  v41 = v252;
  [(HUServiceDetailsItemManager *)v252 setHomeKitAccessorySettingsSections:v253];
  v42 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"symptoms"];
  v43 = [(HUServiceDetailsItemManager *)v252 symptomsTitleItem];
  v297[0] = v43;
  v44 = [(HUServiceDetailsItemManager *)v252 symptomsLearnMoreItem];
  v297[1] = v44;
  v45 = [(HUServiceDetailsItemManager *)v252 symptomsWiFiPickerItem];
  v297[2] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v297 count:3];
  [v42 setItems:v46];

  v47 = MEMORY[0x277D14778];
  v259 = v42;
  v296 = v42;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v296 count:1];
  v49 = [v47 filterSections:v48 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v252 setSymptomsSections:v49];

  v50 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"splitAccount"];
  v51 = [(HUServiceDetailsItemManager *)v252 splitMediaAccountTitleItem];
  v295[0] = v51;
  v52 = [(HUServiceDetailsItemManager *)v252 splitMediaAccountUseDefaultAccountItem];
  v295[1] = v52;
  v53 = [(HUServiceDetailsItemManager *)v252 splitMediaAccountSignoutAccountItem];
  v295[2] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:3];
  [v50 setItems:v54];

  v55 = MEMORY[0x277D14778];
  v257 = v50;
  v294 = v50;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v294 count:1];
  v57 = [v55 filterSections:v56 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v252 setSplitMediaAccountSections:v57];

  v58 = [(HUServiceDetailsItemManager *)v252 nameModule];
  v59 = [v58 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v252 setNameAndIconSections:v59];

  v60 = [(HUServiceDetailsItemManager *)v252 accessoryRepresentableItemModule];

  if (v60)
  {
    v61 = [(HUServiceDetailsItemManager *)v252 accessoryRepresentableItemModule];
    v62 = [v61 buildSectionsWithDisplayedItems:v254];
    v63 = [v62 na_map:&__block_literal_global_357];

    v64 = [(HUServiceDetailsItemManager *)v252 hf_MediaAccessoryItem];
    LODWORD(v62) = [v64 isContainedWithinItemGroup];

    if (v62)
    {
      v65 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsContainedSpeakersLabel", @"HUServiceDetailsContainedSpeakersLabel", 1);
      v66 = [v63 firstObject];
      [v66 setHeaderTitle:v65];
    }

    v41 = v252;
    [(HUServiceDetailsItemManager *)v252 setContainedAccessoriesSections:v63];
  }

  if (-[HUServiceDetailsItemManager sourceItemIsService](v41, "sourceItemIsService") && (-[HUServiceDetailsItemManager sourceItemAccessory](v41, "sourceItemAccessory"), v67 = objc_claimAutoreleasedReturnValue(), v68 = [v67 hf_isHomePod], v67, v68))
  {
    v69 = HFLogForCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = NSStringFromSelector(aSelector);
      v41 = v252;
      v71 = [(HFItemManager *)v252 sourceItem];
      *buf = 138412802;
      v289 = v252;
      v290 = 2112;
      v291 = v70;
      v292 = 2112;
      v293 = v71;
      _os_log_impl(&dword_20CEB6000, v69, OS_LOG_TYPE_INFO, "%@:%@ Skip adding softwareUpdateSections for HomePod service: %@", buf, 0x20u);

      goto LABEL_36;
    }

    v41 = v252;
  }

  else
  {
    v69 = [(HUServiceDetailsItemManager *)v41 softwareUpdateItemModule];
    v70 = [v69 buildSectionsWithDisplayedItems:v254];
    [(HUServiceDetailsItemManager *)v41 setSoftwareUpdateSections:v70];
LABEL_36:
  }

  v72 = [(HUServiceDetailsItemManager *)v41 relatedTriggerItemModule];

  if (v72)
  {
    v73 = [(HUServiceDetailsItemManager *)v41 relatedTriggerItemModule];
    v74 = [v73 buildSectionsWithDisplayedItems:v254];
    [(HUServiceDetailsItemManager *)v41 setRelatedTriggerSections:v74];
  }

  v75 = [(HUServiceDetailsItemManager *)v41 valveEditorItemModule];
  v76 = [v75 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setValveEditorSections:v76];

  v77 = [(HUServiceDetailsItemManager *)v41 sceneAndTriggerModule];
  v78 = [v77 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setSceneAndTriggerSections:v78];

  v79 = [(HUServiceDetailsItemManager *)v41 connectedServicesItemModule];
  v80 = [v79 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setConnectedServicesSections:v80];

  v81 = [(HUServiceDetailsItemManager *)v41 inputSourceItemModule];
  v82 = [v81 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setInputSourceEditorSections:v82];

  v83 = [(HUServiceDetailsItemManager *)v41 televisionSettingsItemModule];
  v84 = [v83 buildSectionsWithDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setTelevisionSettingsSections:v84];

  v85 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"AdvancedCameraSettings"];
  v86 = [(HUServiceDetailsItemManager *)v41 cameraRecordingOptionsItem];
  v287[0] = v86;
  v87 = [(HUServiceDetailsItemManager *)v41 cameraFaceRecognitionItem];
  v287[1] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:2];
  [v85 setItems:v88];

  v89 = MEMORY[0x277D14778];
  v248 = v85;
  v286 = v85;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v286 count:1];
  v91 = [v89 filterSections:v90 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setAdvancedCameraSettingsSection:v91];

  v92 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"AudioOutput"];
  v93 = [(HUServiceDetailsItemManager *)v41 homeTheaterAudioOutputItem];
  v285 = v93;
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v285 count:1];
  [v92 setItems:v94];

  v95 = MEMORY[0x277D14778];
  aSelectora = v92;
  v284 = v92;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
  v97 = [v95 filterSections:v96 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setHomeTheaterAudioSections:v97];

  v98 = [(HUServiceDetailsItemManager *)v41 managedConfigurationProfilesItem];
  v283 = *MEMORY[0x277D13DA8];
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:1];
  v100 = [v98 resultsContainRequiredProperties:v99];
  v101 = MEMORY[0x277D13FB8];
  if (v100)
  {
    v102 = [(HUServiceDetailsItemManager *)v41 managedConfigurationProfilesItem];
    v103 = [v102 latestResults];
    v104 = [v103 objectForKeyedSubscript:*v101];
    v105 = [v104 BOOLValue];

    if ((v105 & 1) == 0)
    {
      v98 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ManagedConfigurationProfiles"];
      v106 = [(HUServiceDetailsItemManager *)v41 managedConfigurationProfilesItem];
      v282 = v106;
      v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v282 count:1];
      [v98 setItems:v107];

      v108 = MEMORY[0x277D14778];
      v281 = v98;
      v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v281 count:1];
      v109 = [v108 filterSections:v99 toDisplayedItems:v254];
      [(HUServiceDetailsItemManager *)v41 setManagedConfigurationProfilesSections:v109];

      goto LABEL_42;
    }
  }

  else
  {
LABEL_42:

    v41 = v252;
  }

  v110 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"cameraActivityZones"];
  v111 = [(HUServiceDetailsItemManager *)v41 cameraActivityZonesItem];
  v280 = v111;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v280 count:1];
  [v110 setItems:v112];

  v113 = MEMORY[0x277D14778];
  v245 = v110;
  v279 = v110;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
  v115 = [v113 filterSections:v114 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setCameraActivityZonesSections:v115];

  v116 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"cameraStatusLight"];
  v117 = [(HUServiceDetailsItemManager *)v41 cameraStatusLightItem];
  v278 = v117;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
  [v116 setItems:v118];

  v119 = MEMORY[0x277D14778];
  v244 = v116;
  v277 = v116;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v277 count:1];
  v121 = [v119 filterSections:v120 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setCameraStatusLightSections:v121];

  v122 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"cameraNightMode"];
  v123 = _HULocalizedStringWithDefaultValue(@"HUCameraNightModeFooterTitle", @"HUCameraNightModeFooterTitle", 1);
  [v122 setFooterTitle:v123];

  v124 = [(HUServiceDetailsItemManager *)v41 cameraNightModeItem];
  v276 = v124;
  v125 = [MEMORY[0x277CBEA60] arrayWithObjects:&v276 count:1];
  [v122 setItems:v125];

  v126 = MEMORY[0x277D14778];
  v243 = v122;
  v275 = v122;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:&v275 count:1];
  v128 = [v126 filterSections:v127 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setCameraNightModeSections:v128];

  v129 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"doorbellChimeMute"];
  v130 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchFooter", @"HUCameraDoorbellChimeMuteSwitchFooter", 1);
  [v129 setFooterTitle:v130];

  v131 = [(HUServiceDetailsItemManager *)v41 cameraDoorbellChimeMuteItem];
  v274 = v131;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v274 count:1];
  [v129 setItems:v132];

  v133 = MEMORY[0x277D14778];
  v273 = v129;
  v134 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:1];
  v135 = [v133 filterSections:v134 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setDoorbellMuteSections:v135];

  v136 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"collectDiagnostics"];
  v137 = MEMORY[0x277CBEA60];
  v138 = [(HUServiceDetailsItemManager *)v41 collectDiagnosticsItem];
  v139 = [v137 na_arrayWithSafeObject:v138];
  [v136 setItems:v139];

  v140 = MEMORY[0x277D14778];
  v242 = v136;
  v272 = v136;
  v141 = [MEMORY[0x277CBEA60] arrayWithObjects:&v272 count:1];
  v142 = [v140 filterSections:v141 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setCollectDiagnosticsSections:v142];

  v143 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"lockAddHomeKeyToWalletItem"];
  v144 = MEMORY[0x277CBEA60];
  v145 = [(HUServiceDetailsItemManager *)v41 lockAddHomeKeyToWalletItem];
  v146 = [v144 na_arrayWithSafeObject:v145];
  [v143 setItems:v146];

  v147 = MEMORY[0x277D14778];
  v241 = v143;
  v271 = v143;
  v148 = [MEMORY[0x277CBEA60] arrayWithObjects:&v271 count:1];
  v149 = [v147 filterSections:v148 toDisplayedItems:v254];
  [(HUServiceDetailsItemManager *)v41 setLockAddHomeKeyToWalletSections:v149];

  v150 = [MEMORY[0x277CBEB40] orderedSet];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_395;
  aBlock[3] = &unk_277DBA608;
  v151 = v150;
  v266 = v151;
  v152 = _Block_copy(aBlock);
  if ([(HUServiceDetailsItemManager *)v41 _shouldShowFirmwareUpdateSection])
  {
    [v151 addObject:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"];
    [v151 addObject:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"];
  }

  [v151 addObject:@"HUServiceDetailsHeaderSectionIdentifier"];
  v153 = [(HUServiceDetailsItemManager *)v41 softwareUpdateSections];
  v152[2](v152, v153);

  v154 = [(HUServiceDetailsItemManager *)v41 symptomsSections];
  v152[2](v152, v154);

  v155 = [(HUServiceDetailsItemManager *)v41 splitMediaAccountSections];
  v152[2](v152, v155);

  v156 = [(HUServiceDetailsItemManager *)v41 nameAndIconSections];
  v152[2](v152, v156);

  v157 = [(HUServiceDetailsItemManager *)v41 characteristicSections];
  v152[2](v152, v157);

  [v151 addObject:@"HUServiceDetailsPrimaryInfoSectionIdentifier"];
  v158 = [(HUServiceDetailsItemManager *)v41 containedAccessoriesSections];
  v152[2](v152, v158);

  v159 = [(HUServiceDetailsItemManager *)v41 addGroupItem];
  if (v159 && (v160 = v159, -[HUServiceDetailsItemManager addGroupItem](v41, "addGroupItem"), v161 = objc_claimAutoreleasedReturnValue(), [v161 latestResults], v162 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v162, "objectForKeyedSubscript:", *MEMORY[0x277D13FB8]), v163 = objc_claimAutoreleasedReturnValue(), v164 = objc_msgSend(v163, "BOOLValue"), v163, v162, v161, v160, !v164) || (-[HUServiceDetailsItemManager separateTileItem](v41, "separateTileItem"), (v165 = objc_claimAutoreleasedReturnValue()) != 0) && (v166 = v165, -[HUServiceDetailsItemManager separateTileItem](v41, "separateTileItem"), v167 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v167, "latestResults"), v168 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v168, "objectForKeyedSubscript:", *MEMORY[0x277D13FB8]), v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(v169, "BOOLValue"), v169, v168, v167, v166, (v170 & 1) == 0))
  {
    [v151 addObject:@"HUServiceDetailsGroupSectionIdentifier"];
  }

  if ((![(HUServiceDetailsItemManager *)v41 _isGroupedHomePod]|| [(HUServiceDetailsItemManager *)v41 _isSingleHomePodInGroup]) && HFPreferenceIdentifyHomePodButtonEnabled())
  {
    [v151 addObject:@"HUServiceDetailsIdentifyHomePodSectionIdentifier"];
  }

  v171 = [(HUServiceDetailsItemManager *)v41 lockPinCodesItem];
  if (v171)
  {
    v172 = v171;
    v173 = [(HUServiceDetailsItemManager *)v41 lockPinCodesItem];
    v174 = [v173 latestResults];
    v175 = [v174 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v176 = [v175 BOOLValue];

    if ((v176 & 1) == 0)
    {
      [v151 addObject:@"HUServiceDetailsLockPinCodeSectionIdentifier"];
    }
  }

  v177 = [(HUServiceDetailsItemManager *)v41 lockAddHomeKeyToWalletSections];
  v152[2](v152, v177);

  v178 = [(HUServiceDetailsItemManager *)v41 relatedTriggerSections];

  if (v178)
  {
    v179 = [(HUServiceDetailsItemManager *)v41 relatedTriggerSections];
    v152[2](v152, v179);
  }

  v180 = [(HUServiceDetailsItemManager *)v41 sceneAndTriggerSections];
  v152[2](v152, v180);

  v181 = [(HUServiceDetailsItemManager *)v41 programmableSwitchSections];
  v152[2](v152, v181);

  v182 = [(HUServiceDetailsItemManager *)v41 valveEditorSections];
  v152[2](v152, v182);

  v183 = [(HUServiceDetailsItemManager *)v41 alarmItem];
  if (v183)
  {
    v184 = v183;
    v185 = [(HUServiceDetailsItemManager *)v41 alarmItem];
    v186 = [v185 latestResults];
    v187 = [v186 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v188 = [v187 BOOLValue];

    if ((v188 & 1) == 0)
    {
      [v151 addObject:@"HUServiceDetailsAlarmSectionIdentifier"];
    }
  }

  v189 = [(HUServiceDetailsItemManager *)v41 statusAndNotificationItem];
  if (v189)
  {
    v190 = v189;
    v191 = [(HUServiceDetailsItemManager *)v41 statusAndNotificationItem];
    v192 = [v191 latestResults];
    v193 = [v192 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v194 = [v193 BOOLValue];

    if ((v194 & 1) == 0)
    {
      [v151 addObject:@"HUServiceDetailsStatusAndNotificationSectionIdentifier"];
    }
  }

  v195 = [(HUServiceDetailsItemManager *)v41 connectedServicesSections];
  v152[2](v152, v195);

  v196 = [(HUServiceDetailsItemManager *)v41 inputSourceEditorSections];
  v152[2](v152, v196);

  v197 = [(HUServiceDetailsItemManager *)v41 televisionSettingsSections];
  v152[2](v152, v197);

  v198 = [(HUServiceDetailsItemManager *)v41 doorbellMuteSections];
  v152[2](v152, v198);

  [v151 addObject:@"HUServiceDetailsAdvancedCameraSettingsSectionIdentifier"];
  v199 = [(HUServiceDetailsItemManager *)v41 cameraActivityZonesSections];
  v152[2](v152, v199);

  v200 = [(HUServiceDetailsItemManager *)v41 cameraStatusLightSections];
  v152[2](v152, v200);

  v201 = [(HUServiceDetailsItemManager *)v41 cameraNightModeSections];
  v152[2](v152, v201);

  v202 = [(HUServiceDetailsItemManager *)v41 homeTheaterAudioSections];
  v152[2](v152, v202);

  v203 = [(HUServiceDetailsItemManager *)v41 sourceItemAccessory];
  v204 = v41;
  if ([v203 hf_isVisibleAsBridgedAccessory])
  {
    v205 = [(HUServiceDetailsItemManager *)v41 shouldHideAccessoryItem];

    v206 = v249;
    if (!v205)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

  v208 = [(HUServiceDetailsItemManager *)v41 sourceItemAccessory];
  v206 = v249;
  if (([v208 hf_isVisibleAsBridge] & 1) == 0)
  {
LABEL_75:

    goto LABEL_76;
  }

  v209 = [(HUServiceDetailsItemManager *)v204 sourceItemAccessory];
  if (([v209 hf_isPureBridge] & 1) != 0 || !-[HUServiceDetailsItemManager sourceItemIsService](v204, "sourceItemIsService"))
  {

    goto LABEL_75;
  }

  v210 = [(HUServiceDetailsItemManager *)v204 shouldHideAccessoryItem];

  if (!v210)
  {
LABEL_67:
    [v151 addObject:@"HUServiceDetailsBridgeSectionIdentifier"];
  }

LABEL_76:
  v211 = [(HUServiceDetailsItemManager *)v204 accessorySettingsSections];
  v212 = [v211 na_map:&__block_literal_global_401_0];
  [v151 addObjectsFromArray:v212];

  v213 = [(HUServiceDetailsItemManager *)v204 homeKitAccessorySettingsSections];
  v214 = [v213 na_map:&__block_literal_global_403];
  [v151 addObjectsFromArray:v214];

  if (![(HUServiceDetailsItemManager *)v204 isItemGroup]&& [(HUServiceDetailsItemManager *)v204 _shouldShowLinkedApplicationSection])
  {
    [v151 addObject:@"HUServiceDetailsLinkedApplicationSectionIdentifier"];
  }

  v215 = [(HUServiceDetailsItemManager *)v204 managedConfigurationProfilesSections];
  v152[2](v152, v215);

  if (![(HUServiceDetailsItemManager *)v204 isItemGroup])
  {
    [v151 addObject:@"HUServiceDetailsAccessoryInfoSectionIdentifier"];
  }

  v216 = [(HUServiceDetailsItemManager *)v204 collectDiagnosticsSections];
  v152[2](v152, v216);

  v217 = [(HFItemManager *)v204 home];
  if (([v217 hf_currentUserIsAdministrator] & 1) == 0)
  {

    v219 = obja;
    goto LABEL_89;
  }

  v218 = [(HUServiceDetailsItemManager *)v204 resetItem];
  v219 = obja;
  if (!v218)
  {
    goto LABEL_88;
  }

  v220 = v218;
  v221 = [(HUServiceDetailsItemManager *)v204 deviceOptionsAdapter];
  if (([v221 isAccessoryReachableOverRapport] & 1) == 0)
  {

LABEL_88:
    goto LABEL_89;
  }

  v222 = [(HUServiceDetailsItemManager *)v204 hf_MediaAccessoryItem];
  v223 = [(HUServiceDetailsItemManager *)v204 shouldShowExportDiagnosticsItem:v222];

  if (v223)
  {
    [v151 addObject:@"HUServiceDetailsExportDiagnosticsSectionIdentifier"];
  }

LABEL_89:
  v224 = [(HFItemManager *)v252 home];
  if (([v224 hf_currentUserIsAdministrator] & 1) == 0)
  {
    goto LABEL_95;
  }

  v225 = [(HUServiceDetailsItemManager *)v252 restartItem];
  if (!v225 || ![(HUServiceDetailsItemManager *)v252 _isGroupedHomePod])
  {

LABEL_95:
    goto LABEL_96;
  }

  v226 = [(HUServiceDetailsItemManager *)v252 groupedAccessoryReachableOverRapport];

  if (v226)
  {
    [v151 addObject:@"HUServiceDetailsRestartSectionIdentifier"];
  }

LABEL_96:
  v227 = [(HFItemManager *)v252 home];
  if ([v227 hf_currentUserIsAdministrator])
  {
    v228 = [(HUServiceDetailsItemManager *)v252 removeFromGroupItem];

    if (v228)
    {
      [v151 addObject:@"HUServiceDetailsRemoveFromGroupSectionIdentifier"];
    }
  }

  else
  {
  }

  v229 = [(HFItemManager *)v252 home];
  if ([v229 hf_currentUserIsAdministrator])
  {
    v230 = [(HUServiceDetailsItemManager *)v252 deviceOptionsAdapter];
    v231 = [v230 isAccessoryReachableOverRapport];

    if ((v231 & 1) == 0)
    {
      [v151 addObject:@"HUServiceDetailsRemoveSectionIdentifier"];
    }
  }

  else
  {
  }

  v232 = [(HFItemManager *)v252 home];
  if (([v232 hf_currentUserIsAdministrator] & 1) == 0)
  {
    goto LABEL_110;
  }

  v233 = [(HUServiceDetailsItemManager *)v252 resetItem];
  if (!v233)
  {
    goto LABEL_110;
  }

  v234 = v233;
  v235 = [(HUServiceDetailsItemManager *)v252 deviceOptionsAdapter];
  if (([v235 isAccessoryReachableOverRapport] & 1) == 0)
  {

LABEL_110:
    v5 = v254;
    goto LABEL_111;
  }

  v236 = [(HUServiceDetailsItemManager *)v252 hf_MediaAccessoryItem];
  v237 = [(HUServiceDetailsItemManager *)v252 shouldShowDeviceOptionsForAccessoryItem:v236];

  v5 = v254;
  if (v237)
  {
    [v151 addObject:@"HUServiceDetailsResetSectionIdentifier"];
  }

LABEL_111:
  v238 = objc_opt_new();
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_5;
  v262[3] = &unk_277DC3878;
  v262[4] = v252;
  v239 = v238;
  v263 = v239;
  v264 = v5;
  [v151 enumerateObjectsUsingBlock:v262];
  v207 = v239;

LABEL_112:

  return v207;
}

uint64_t __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v9 = [v6 compare:v8];

  return v9;
}

id __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_354(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

void __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_395(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 na_map:&__block_literal_global_398];
  [v2 addObjectsFromArray:v3];
}

void __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _characteristicSectionForIdentifier:v3];
  if (v4)
  {
    [*(a1 + 40) na_safeAddObject:v4];
  }

  else
  {
    v5 = [*(a1 + 32) _allItemsForSectionIdentifier:v3];
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v5];
    [v6 intersectSet:*(a1 + 48)];
    if ([v6 count])
    {
      v7 = objc_alloc_init(HUServiceDetailsSectionFactory);
      if (_MergedGlobals_4_6 != -1)
      {
        dispatch_once(&_MergedGlobals_4_6, &__block_literal_global_410);
      }

      v8 = qword_27C838070;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_8;
      v13[3] = &unk_277DB8B00;
      v9 = v3;
      v14 = v9;
      if ([v8 na_any:v13])
      {
        v10 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v5];
        [(HUServiceDetailsSectionFactory *)v7 setCustomComparator:v10];
      }

      v11 = [*(a1 + 32) sourceItem];
      v12 = [(HUServiceDetailsSectionFactory *)v7 buildServiceDetailsItemSectionForSourceItem:v11 sectionIdentifier:v9 items:v6];

      [*(a1 + 40) na_safeAddObject:v12];
    }
  }
}

void __64__HUServiceDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_7()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"HUServiceDetailsPrimaryInfoSectionIdentifier";
  v2[1] = @"HUServiceDetailsStatusAndNotificationSectionIdentifier";
  v2[2] = @"HUServiceDetailsAdvancedCameraSettingsSectionIdentifier";
  v2[3] = @"HUServiceDetailsRemoveFromGroupSectionIdentifier";
  v2[4] = @"HUServiceDetailsRemoveSectionIdentifier";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = qword_27C838070;
  qword_27C838070 = v0;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = HUServiceDetailsItemManager;
  v5 = [(HFItemManager *)&v64 _itemsToHideInSet:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
  v9 = [v8 items];
  [v7 unionSet:v9];

  v10 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
  v11 = [v10 items];
  [v7 unionSet:v11];

  if ([(HUServiceDetailsItemManager *)self showRoomsList])
  {
    v12 = [(HUServiceDetailsItemManager *)self selectedRoomItemProvider];
    v13 = [v12 items];
    [v7 unionSet:v13];
  }

  else
  {
    v14 = [(HUServiceDetailsItemManager *)self roomListItem];
    [v7 na_safeAddObject:v14];

    v12 = [(HUServiceDetailsItemManager *)self createNewRoomItem];
    [v7 na_safeAddObject:v12];
  }

  v15 = [v4 na_setByIntersectingWithSet:v7];
  [v6 unionSet:v15];

  v16 = [(HUServiceDetailsItemManager *)self relatedTriggerItemModule];

  if (v16)
  {
    v17 = [(HUServiceDetailsItemManager *)self relatedTriggerItemModule];
    v18 = [v17 allItems];
    v19 = [v4 na_setByIntersectingWithSet:v18];

    v20 = [(HUServiceDetailsItemManager *)self relatedTriggerItemModule];
    v21 = [v20 itemsToHideInSet:v19];
    [v6 unionSet:v21];
  }

  v22 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
  if (![v4 containsObject:v22])
  {
    goto LABEL_9;
  }

  v23 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
  v24 = [v23 items];
  v25 = [v24 count];

  if (!v25)
  {
    v22 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
    [v6 addObject:v22];
LABEL_9:
  }

  if ([(HUServiceDetailsItemManager *)self showAssociatedServiceTypeList])
  {
    v26 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
    v27 = [v4 containsObject:v26];

    if (v27)
    {
      v28 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
      [v6 addObject:v28];
    }
  }

  if (![(HUServiceDetailsItemManager *)self showAssociatedServiceTypeList])
  {
    v29 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
    v30 = [v29 items];
    [v6 unionSet:v30];
  }

  v31 = [(HFItemManager *)self home];
  v32 = [v31 hf_currentUserIsAdministrator];

  if ((v32 & 1) == 0)
  {
    v33 = [(HUServiceDetailsItemManager *)self collectDiagnosticsItem];
    [v6 na_safeAddObject:v33];
  }

  if ([(HUServiceDetailsItemManager *)self shouldHideAccessoryItem])
  {
    v34 = [(HUServiceDetailsItemManager *)self accessoryItem];
    [v6 na_safeAddObject:v34];
  }

  if ([(HUServiceDetailsItemManager *)self shouldHideSeparateTileItem])
  {
    v35 = [(HUServiceDetailsItemManager *)self separateTileItem];
    [v6 na_safeAddObject:v35];
  }

  v36 = [(HFItemManager *)self home];
  v37 = [v36 hf_currentUserIsAdministrator];
  if (v37)
  {
    v32 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
    if (([v32 isBridged] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v38 = [(HUServiceDetailsItemManager *)self removeItem];
  if (![v4 containsObject:v38])
  {

    if (!v37)
    {
      goto LABEL_30;
    }

LABEL_29:

    goto LABEL_30;
  }

  v39 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
  v40 = [v39 isAccessoryReachableOverRapport];

  if (v37)
  {
  }

  if ((v40 & 1) == 0)
  {
    v36 = [(HUServiceDetailsItemManager *)self removeItem];
    [v6 addObject:v36];
LABEL_30:
  }

  v41 = [(HFItemManager *)self home];
  if ([v41 hf_currentUserIsAdministrator])
  {
LABEL_36:

    goto LABEL_37;
  }

  v42 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
  if (([v42 isAccessoryReachableOverRapport] & 1) == 0)
  {

    goto LABEL_36;
  }

  v43 = [(HUServiceDetailsItemManager *)self hf_MediaAccessoryItem];
  v44 = [(HUServiceDetailsItemManager *)self shouldShowDeviceOptionsForAccessoryItem:v43];

  if (v44)
  {
    v41 = [(HUServiceDetailsItemManager *)self resetItem];
    [v6 addObject:v41];
    goto LABEL_36;
  }

LABEL_37:
  v45 = [(HFItemManager *)self home];
  if (([v45 hf_currentUserIsAdministrator] & 1) == 0 && -[HUServiceDetailsItemManager _isGroupedHomePod](self, "_isGroupedHomePod"))
  {
    v46 = [(HUServiceDetailsItemManager *)self groupedAccessoryReachableOverRapport];

    if (!v46)
    {
      goto LABEL_42;
    }

    v45 = [(HUServiceDetailsItemManager *)self restartItem];
    [v6 addObject:v45];
  }

LABEL_42:
  v47 = [(HFItemManager *)self home];
  if (![v47 hf_currentUserIsAdministrator])
  {
LABEL_47:

    goto LABEL_48;
  }

  v48 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
  if (([v48 isAccessoryReachableOverRapport] & 1) == 0)
  {

    goto LABEL_47;
  }

  v49 = [(HUServiceDetailsItemManager *)self hf_MediaAccessoryItem];
  v50 = [(HUServiceDetailsItemManager *)self shouldShowDeviceOptionsForAccessoryItem:v49];

  if (!v50)
  {
LABEL_48:
    v51 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItem];
    [v6 addObject:v51];
  }

  if (![(HUServiceDetailsItemManager *)self _shouldShowWiFiPickerFixUI])
  {
    v52 = [(HUServiceDetailsItemManager *)self symptomsWiFiPickerItem];
    [v6 addObject:v52];
  }

  if (![(HUServiceDetailsItemManager *)self _shouldShowSymptomsUI])
  {
    v53 = [(HUServiceDetailsItemManager *)self symptomsLearnMoreItem];
    [v6 addObject:v53];

    v54 = [(HUServiceDetailsItemManager *)self symptomsTitleItem];
    [v6 addObject:v54];

    v55 = [(HUServiceDetailsItemManager *)self symptomsWiFiPickerItem];
    [v6 addObject:v55];
  }

  if (![(HUServiceDetailsItemManager *)self _shouldShowSplitAccountUI])
  {
    v56 = [(HUServiceDetailsItemManager *)self splitMediaAccountTitleItem];
    [v6 addObject:v56];

    v57 = [(HUServiceDetailsItemManager *)self splitMediaAccountUseDefaultAccountItem];
    [v6 addObject:v57];

    v58 = [(HUServiceDetailsItemManager *)self splitMediaAccountSignoutAccountItem];
    [v6 addObject:v58];
  }

  v59 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v61 = [(HUServiceDetailsItemManager *)self removeItem];
    [v6 addObject:v61];
  }

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v62 = [(HUServiceDetailsItemManager *)self removeItem];
    [v6 addObject:v62];
  }

  return v6;
}

- (id)_transformedUpdateOutcomeForItem:(id)a3 proposedOutcome:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v5 objectForKeyedSubscript:*MEMORY[0x277D14100]], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v9))
  {
    v10 = [v5 mutableCopy];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)_allItemsForSectionIdentifier:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"HUServiceDetailsHeaderSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self headerItem];
LABEL_3:
    v7 = v6;
    v8 = [v5 na_arrayWithSafeObject:v6];
LABEL_7:

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsPrimaryInfoSectionIdentifier"])
  {
    v8 = objc_opt_new();
    v9 = [(HUServiceDetailsItemManager *)self roomItem];
    [v8 na_safeAddObject:v9];

    v10 = [(HUServiceDetailsItemManager *)self existingRoomItemProvider];
    v11 = [v10 items];
    v12 = [v11 allObjects];
    [v8 addObjectsFromArray:v12];

    v13 = [(HUServiceDetailsItemManager *)self suggestedRoomItemProvider];
    v14 = [v13 items];
    v15 = [v14 allObjects];
    [v8 addObjectsFromArray:v15];

    v16 = [(HUServiceDetailsItemManager *)self roomListItem];
    [v8 na_safeAddObject:v16];

    v17 = [(HUServiceDetailsItemManager *)self createNewRoomItem];
    [v8 na_safeAddObject:v17];

    v18 = [(HUServiceDetailsItemManager *)self associatedServiceTypeItem];
    [v8 na_safeAddObject:v18];

    v19 = [(HUServiceDetailsItemManager *)self associatedServiceTypeOptionItemProvider];
    v20 = [v19 items];
    v21 = [v20 allObjects];
    v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_418];
    [v8 addObjectsFromArray:v22];

    v23 = [(HUServiceDetailsItemManager *)self showContainedItems];
    [v8 na_safeAddObject:v23];

    v24 = [(HUServiceDetailsItemManager *)self audioSettingsItem];
    [v8 addObject:v24];

    v25 = [(HUServiceDetailsItemManager *)self internalDebuggingItem];
    [v8 na_safeAddObject:v25];

    v26 = [(HUServiceDetailsItemManager *)self showInHomeDashboardItem];
    [v8 na_safeAddObject:v26];

    v27 = [(HUServiceDetailsItemManager *)self favoriteItem];
LABEL_6:
    v7 = v27;
    [v8 na_safeAddObject:v27];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsExportDiagnosticsSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsRemoveFromGroupSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self removeFromGroupItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsRemoveSectionIdentifier"])
  {
    v8 = objc_opt_new();
    v29 = [(HUServiceDetailsItemManager *)self pairingModeItem];
    [v8 na_safeAddObject:v29];

    v27 = [(HUServiceDetailsItemManager *)self removeItem];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsResetSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self resetItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsRestartSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self restartItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsLinkedApplicationSectionIdentifier"])
  {
    v30 = [(HUServiceDetailsItemManager *)self linkedApplicationItemProvider];
LABEL_25:
    v7 = v30;
    v31 = [v30 items];
LABEL_26:
    v32 = v31;
    v33 = [v31 allObjects];
LABEL_27:
    v8 = v33;

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsAccessoryInfoSectionIdentifier"])
  {
    v30 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsGroupSectionIdentifier"])
  {
    v8 = objc_opt_new();
    v34 = [(HUServiceDetailsItemManager *)self addGroupItem];
    [v8 na_safeAddObject:v34];

    v27 = [(HUServiceDetailsItemManager *)self separateTileItem];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsIdentifyHomePodSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self identifyHomePodItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"])
  {
    v7 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider];
    v32 = [v7 instructionsItem];
    v36[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    goto LABEL_27;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"])
  {
    v7 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider];
    v31 = [v7 linkedApplicationItems];
    goto LABEL_26;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsBridgeSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self accessoryItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsAlarmSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self alarmItem];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsStatusAndNotificationSectionIdentifier"])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v27 = [(HUServiceDetailsItemManager *)self statusAndNotificationItem];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsAdvancedCameraSettingsSectionIdentifier"])
  {
    v8 = objc_opt_new();
    v35 = [(HUServiceDetailsItemManager *)self cameraRecordingOptionsItem];
    [v8 na_safeAddObject:v35];

    v27 = [(HUServiceDetailsItemManager *)self cameraFaceRecognitionItem];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"HUServiceDetailsLockPinCodeSectionIdentifier"])
  {
    v5 = MEMORY[0x277CBEA60];
    v6 = [(HUServiceDetailsItemManager *)self lockPinCodesItem];
    goto LABEL_3;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v8;
}

uint64_t __61__HUServiceDetailsItemManager__allItemsForSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUServiceDetailsItemManager;
  v4 = a3;
  [(HFItemManager *)&v8 _didFinishUpdateTransactionWithAffectedItems:v4];
  v5 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider:v8.receiver];
  v6 = [v5 items];
  v7 = [v6 intersectsSet:v4];

  if (v7)
  {
    [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  }
}

- (BOOL)controlAndCharacteristicStateItemModule:(id)a3 shouldShowControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsItemManager *)self serviceDetailsDelegate];
  LOBYTE(self) = [v6 itemManager:self shouldShowControlPanelItem:v5];

  return self;
}

- (BOOL)controlAndCharacteristicStateItemModule:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsItemManager *)self serviceDetailsDelegate];
  LOBYTE(self) = [v6 itemManager:self shouldShowSectionTitleForControlPanelItem:v5];

  return self;
}

- (id)controlAndCharacteristicStateItemModule:(id)a3 sectionTitleForControlPanelItem:(id)a4 forServiceItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUServiceDetailsItemManager *)self serviceDetailsDelegate];
  v10 = [v9 itemManager:self sectionTitleForControlPanelItem:v8 forServiceItem:v7];

  return v10;
}

- (id)controlAndCharacteristicStateItemModule:(id)a3 sectionFooterForControlPanelItem:(id)a4 forServiceItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUServiceDetailsItemManager *)self serviceDetailsDelegate];
  v10 = [v9 itemManager:self sectionFooterForControlPanelItem:v8 forServiceItem:v7];

  return v10;
}

- (void)didUpdateDiagnosticInfo:(id)a3 forAccessory:(id)a4
{
  v6 = a4;
  v7 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v10 = [(HUServiceDetailsItemManager *)self _itemsToUpdateForDiagnosticInfoUpdate];
    v9 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
  }
}

- (id)_characteristicSectionForIdentifier:(id)a3
{
  v85[24] = *MEMORY[0x277D85DE8];
  v82 = a3;
  v4 = [(HUServiceDetailsItemManager *)self symptomsSections];
  v81 = v4;
  v5 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v85[0] = v6;
  v7 = [(HUServiceDetailsItemManager *)self splitMediaAccountSections];
  v80 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v85[1] = v8;
  v9 = [(HUServiceDetailsItemManager *)self nameAndIconSections];
  v79 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v85[2] = v10;
  v11 = [(HUServiceDetailsItemManager *)self characteristicSections];
  v78 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  v85[3] = v12;
  v13 = [(HUServiceDetailsItemManager *)self containedAccessoriesSections];
  v77 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v5;
  }

  v85[4] = v14;
  v15 = [(HUServiceDetailsItemManager *)self homeKitAccessorySettingsSections];
  v76 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v5;
  }

  v85[5] = v16;
  v17 = [(HUServiceDetailsItemManager *)self accessorySettingsSections];
  v75 = v17;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v5;
  }

  v85[6] = v18;
  v19 = [(HUServiceDetailsItemManager *)self relatedTriggerSections];
  v74 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v5;
  }

  v85[7] = v20;
  v21 = [(HUServiceDetailsItemManager *)self programmableSwitchSections];
  v73 = v21;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v5;
  }

  v85[8] = v22;
  v23 = [(HUServiceDetailsItemManager *)self softwareUpdateSections];
  v72 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v5;
  }

  v85[9] = v24;
  v25 = [(HUServiceDetailsItemManager *)self valveEditorSections];
  v71 = v25;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v5;
  }

  v85[10] = v26;
  v27 = [(HUServiceDetailsItemManager *)self sceneAndTriggerSections];
  v70 = v27;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v5;
  }

  v85[11] = v28;
  v29 = [(HUServiceDetailsItemManager *)self connectedServicesSections];
  v69 = v29;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v5;
  }

  v85[12] = v30;
  v31 = [(HUServiceDetailsItemManager *)self inputSourceEditorSections];
  v68 = v31;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v5;
  }

  v85[13] = v32;
  v33 = [(HUServiceDetailsItemManager *)self televisionSettingsSections];
  v67 = v33;
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v5;
  }

  v85[14] = v34;
  v35 = [(HUServiceDetailsItemManager *)self advancedCameraSettingsSection];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v5;
  }

  v85[15] = v37;
  v38 = [(HUServiceDetailsItemManager *)self cameraActivityZonesSections];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v5;
  }

  v85[16] = v40;
  v41 = [(HUServiceDetailsItemManager *)self cameraStatusLightSections];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v5;
  }

  v85[17] = v43;
  v44 = [(HUServiceDetailsItemManager *)self cameraNightModeSections];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v5;
  }

  v85[18] = v46;
  v47 = [(HUServiceDetailsItemManager *)self doorbellMuteSections];
  v48 = v47;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v5;
  }

  v85[19] = v49;
  v50 = [(HUServiceDetailsItemManager *)self collectDiagnosticsSections];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = v5;
  }

  v85[20] = v52;
  v53 = [(HUServiceDetailsItemManager *)self lockAddHomeKeyToWalletSections];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v5;
  }

  v85[21] = v55;
  v56 = [(HUServiceDetailsItemManager *)self homeTheaterAudioSections];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = v5;
  }

  v85[22] = v58;
  v59 = [(HUServiceDetailsItemManager *)self managedConfigurationProfilesSections];
  v60 = v59;
  if (v59)
  {
    v61 = v59;
  }

  else
  {
    v61 = v5;
  }

  v85[23] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:24];
  v66 = [v62 na_arrayByFlattening];

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __67__HUServiceDetailsItemManager__characteristicSectionForIdentifier___block_invoke;
  v83[3] = &unk_277DBE440;
  v84 = v82;
  v63 = v82;
  v64 = [v66 na_firstObjectPassingTest:v83];

  return v64;
}

uint64_t __67__HUServiceDetailsItemManager__characteristicSectionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_shouldShowFirmwareUpdateSection
{
  v2 = [(HUServiceDetailsItemManager *)self firmwareUpdateItemProvider];
  v3 = [v2 items];
  v4 = [v3 na_any:&__block_literal_global_423];

  return v4;
}

uint64_t __63__HUServiceDetailsItemManager__shouldShowFirmwareUpdateSection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = [v3 BOOLValue];

  return v4 ^ 1u;
}

- (BOOL)_shouldShowLinkedApplicationSection
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HUServiceDetailsItemManager *)self _shouldShowFirmwareUpdateSection])
  {
    return 0;
  }

  v3 = [(HFItemManager *)self home];
  v4 = [v3 hf_currentUserIsRestrictedGuest];

  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(HFItemManager *)self home];
      v7 = [v6 currentUser];
      v8 = [v7 hf_prettyDescription];
      v13 = 136315394;
      v14 = "[HUServiceDetailsItemManager _shouldShowLinkedApplicationSection]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) Hiding linked application section because current user is a restricted guest: %@", &v13, 0x16u);
    }

    return 0;
  }

  v10 = [(HUServiceDetailsItemManager *)self linkedApplicationItemProvider];
  v11 = [v10 items];
  v12 = [v11 na_any:&__block_literal_global_425];

  return v12;
}

uint64_t __66__HUServiceDetailsItemManager__shouldShowLinkedApplicationSection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = [v3 BOOLValue];

  return v4 ^ 1u;
}

- (BOOL)_isGroupedHomePod
{
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if ([v3 conformsToProtocol:&unk_28251B268])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 numberOfItemsContainedWithinGroup] >= 2 && objc_msgSend(v5, "isItemGroup") && -[HUServiceDetailsItemManager _isRestartSupportedForGroupedHomePod:](self, "_isRestartSupportedForGroupedHomePod:", v8);
  return v9;
}

- (BOOL)_isSingleHomePodInGroup
{
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if ([v3 conformsToProtocol:&unk_28251B268])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 numberOfItemsContainedWithinGroup];
  if (v9 == 1)
  {
    v10 = [v8 isContainedWithinItemGroup];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isRestartSupportedForGroupedHomePod:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 mediaProfileContainer];
  v4 = [v3 accessories];

  v5 = [v4 na_all:&__block_literal_global_427];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v9 = 136315394;
    v10 = "[HUServiceDetailsItemManager _isRestartSupportedForGroupedHomePod:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%s Restart Option Supported for Grouped HomePod %@", &v9, 0x16u);
  }

  return v5;
}

- (BOOL)_areHomePodMediaAccountsMismatched
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HUServiceDetailsItemManager *)self sourceItemIsHomePod])
  {
    v3 = [(HUServiceDetailsItemManager *)self loggedInMediaAccountOnHomePod];
    objc_opt_class();
    v4 = [(HUServiceDetailsItemManager *)self homeMediaAccount];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HomePod logged in account = [%@], appleMusicAccountForCurrentHome = [%@]", &v12, 0x16u);
    }

    if (v3)
    {
      v8 = [v3 ams_altDSID];
      v9 = [v6 ams_altDSID];
      v10 = [v8 isEqualToString:v9] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_hasDismissedHomePodHasNonMemberMediaAccountWarning
{
  objc_opt_class();
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 mediaProfileContainer];

  v7 = [v6 hf_settingsValueManager];

  v8 = [v7 valueForSettingAtKeyPath:*MEMORY[0x277D138E8]];
  v9 = [v8 BOOLValue];

  return v9;
}

- (ACAccount)loggedInMediaAccountOnHomePod
{
  if ([(HUServiceDetailsItemManager *)self sourceItemIsHomePod])
  {
    objc_opt_class();
    v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 mediaProfileContainer];

    v7 = [v6 hf_appleMusicCurrentLoggedInAccount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldShowDeviceOptionsForAccessoryItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
      v8 = "%s mediaAccessoryItem is NIL, hence NOT showing Reset HomePod";
      goto LABEL_16;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v6 = [v4 mediaProfileContainer];

  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
      v8 = "%s mediaProfileContainer is NIL, hence NOT showing Reset HomePod";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([(HUServiceDetailsItemManager *)self isItemGroup])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
      v8 = "%s HomePod is a Grouped item part of Stereo Setup or PSG, hence NOT showing Reset HomePod";
LABEL_16:
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = [v5 mediaProfileContainer];
  v10 = [v9 hf_backingAccessory];
  v11 = [v10 supportsCompanionInitiatedRestart];

  if ((v11 & 1) == 0)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
      v8 = "%s HomePod doesn't support restart functionality, hence NOT showing Reset HomePod";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v5 isHomePodMediaSystem])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
      v8 = "%s HomePod is part of Stereo Setup, hence NOT showing Reset HomePod";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v14 = [v5 isHomePod];
  v7 = HFLogForCategory();
  v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = 136315138;
    v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
    v8 = "%s Accessory is not of type HomePod, hence NOT showing Reset HomePod";
    goto LABEL_16;
  }

  if (v15)
  {
    v16 = 136315138;
    v17 = "[HUServiceDetailsItemManager shouldShowDeviceOptionsForAccessoryItem:]";
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s All set, show Reset HomePod", &v16, 0xCu);
  }

  v12 = 1;
LABEL_18:

  return v12;
}

- (BOOL)shouldShowExportDiagnosticsItem:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
      v8 = "%s mediaAccessoryItem is NIL, hence NOT showing Export Diagnostics";
      goto LABEL_19;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  v6 = [v4 mediaProfileContainer];

  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
      v8 = "%s mediaProfileContainer is NIL, hence NOT showing Export Diagnostics";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([(HUServiceDetailsItemManager *)self isItemGroup])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
      v8 = "%s HomePod is a Grouped item part of Stereo Setup or PSG, hence NOT showing Export Diagnostics";
LABEL_19:
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0xCu);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if ([v5 isHomePodMediaSystem])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
      v8 = "%s HomePod is part of Stereo Setup, hence NOT showing Export Diagnostics";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v9 = [v5 isHomePod];
  v7 = HFLogForCategory();
  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v10)
    {
      v13 = 136315138;
      v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
      v8 = "%s Accessory is not of type HomePod, hence NOT showing Export Diagnostics";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v10)
  {
    v13 = 136315138;
    v14 = "[HUServiceDetailsItemManager shouldShowExportDiagnosticsItem:]";
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s All set, show Export Diagnostics", &v13, 0xCu);
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (id)hf_MediaAccessoryItem
{
  objc_opt_class();
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
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

- (void)_setupDeviceOptionsAdapterForMediaAccessoryItem:(id)a3
{
  v6 = [a3 mediaProfileContainer];
  v4 = [v6 hf_settingsAdapterManager];
  v5 = [v4 adapterForIdentifier:*MEMORY[0x277D13320]];
  [(HUServiceDetailsItemManager *)self setDeviceOptionsAdapter:v5];
}

- (void)registerKVO
{
  v3 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
  [v3 addObserver:self forKeyPath:@"isAccessoryReachableOverRapport" options:1 context:0];
}

- (void)unregisterKVO
{
  v3 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
  [v3 removeObserver:self forKeyPath:@"isAccessoryReachableOverRapport"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEqualToString:@"isAccessoryReachableOverRapport"])
  {
    v14 = objc_opt_new();
    v15 = [(HUServiceDetailsItemManager *)self accessoryResetAndRemoveItemProvider];

    if (v15)
    {
      v16 = [(HUServiceDetailsItemManager *)self accessoryResetAndRemoveItemProvider];
      [v14 addObject:v16];
    }

    v17 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItemProvider];

    if (v17)
    {
      v18 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItemProvider];
      [v14 addObject:v18];
    }

    v45 = v14;
    v19 = [(HUServiceDetailsItemManager *)self hf_MediaAccessoryItem];
    v20 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
    v21 = [v20 isAccessoryReachableOverRapport];

    v22 = HFLogForCategory();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        v24 = [v19 mediaProfileContainer];
        v25 = [v24 uniqueIdentifier];
        v26 = [v25 UUIDString];
        *buf = 138412290;
        v48 = v26;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Solo Accessory is reachable over Rapport..%@", buf, 0xCu);
      }

      v27 = [MEMORY[0x277D147F8] sharedInstance];
      [v19 mediaProfileContainer];
      v29 = v28 = v19;
      v30 = [v29 hf_backingAccessory];
      v31 = [v30 uniqueIdentifier];
      v32 = [v31 UUIDString];
      [v27 markUUIDReachableViaRapport:v32];
      v33 = 3;
    }

    else
    {
      if (v23)
      {
        v34 = [v19 mediaProfileContainer];
        v35 = [v34 uniqueIdentifier];
        v36 = [v35 UUIDString];
        *buf = 138412290;
        v48 = v36;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Solo Accessory is NOT reachable over Rapport..%@", buf, 0xCu);
      }

      v27 = [MEMORY[0x277D147F8] sharedInstance];
      [v19 mediaProfileContainer];
      v29 = v28 = v19;
      v30 = [v29 hf_backingAccessory];
      v31 = [v30 uniqueIdentifier];
      v32 = [v31 UUIDString];
      [v27 markUUIDUnreachableViaRapport:v32];
      v33 = 2;
    }

    v44 = v33;

    v37 = [MEMORY[0x277D147F8] sharedInstance];
    v38 = [v28 mediaProfileContainer];
    v39 = [v38 hf_backingAccessory];
    v40 = [v39 uniqueIdentifier];
    v41 = [v40 UUIDString];
    [v37 updateHomePodAccessoryRestartState:v44 with:v41];

    if (v45)
    {
      v42 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v45 senderSelector:v43];
    }
  }

  else
  {
    v46.receiver = self;
    v46.super_class = HUServiceDetailsItemManager;
    [(HUServiceDetailsItemManager *)&v46 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
  }
}

- (id)_restartAccessory
{
  v3 = [(HUServiceDetailsItemManager *)self _isGroupedHomePod];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Sending restart message to grouped homepod accessory", buf, 2u);
    }

    v6 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapterUtility];

    if (v6)
    {
      v7 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapterUtility];
      v8 = [v7 restartAccessories];
      v9 = v8;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __48__HUServiceDetailsItemManager__restartAccessory__block_invoke;
      v25 = &unk_277DB7530;
      v26 = self;
      v10 = &v22;
LABEL_10:
      v12 = [v8 addCompletionBlock:{v10, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];

      goto LABEL_15;
    }

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "deviceOptionsAdapterUtility is nil";
LABEL_19:
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Sending restart message to solo homepod accessory", buf, 2u);
    }

    v11 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];

    if (v11)
    {
      v7 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
      v8 = [v7 restartAccessory];
      v9 = v8;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __48__HUServiceDetailsItemManager__restartAccessory__block_invoke_441;
      v20 = &unk_277DB7530;
      v21 = self;
      v10 = &v17;
      goto LABEL_10;
    }

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "deviceOptionsAdapter is nil";
      goto LABEL_19;
    }
  }

  v15 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
  v12 = [v15 futureWithError:v7];
LABEL_15:

  return v12;
}

void __48__HUServiceDetailsItemManager__restartAccessory__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Error sending restart message to group accessory", buf, 2u);
    }

    objc_opt_class();
    v5 = [*(a1 + 32) sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v7 accessories];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [MEMORY[0x277D147F8] sharedInstance];
          v15 = [v13 uniqueIdentifier];
          v16 = [v15 UUIDString];
          [v14 updateHomePodAccessoryRestartState:3 with:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }
  }

  else
  {
    objc_opt_class();
    v17 = [*(a1 + 32) sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v7 = v18;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v7 accessories];
    v19 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v8);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          v24 = [MEMORY[0x277D147F8] sharedInstance];
          v25 = [v23 uniqueIdentifier];
          v26 = [v25 UUIDString];
          [v24 updateHomePodAccessoryRestartState:1 with:v26];
        }

        v20 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v20);
    }
  }
}

void __48__HUServiceDetailsItemManager__restartAccessory__block_invoke_441(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Error sending restart message to accessory", buf, 2u);
    }

    v5 = [*(a1 + 32) hf_MediaAccessoryItem];
    v6 = [MEMORY[0x277D147F8] sharedInstance];
    v7 = [v5 mediaProfileContainer];
    v8 = [v7 hf_backingAccessory];
    v9 = [v8 uniqueIdentifier];
    v10 = [v9 UUIDString];
    [v6 updateHomePodAccessoryRestartState:3 with:v10];

    v11 = [v5 updateWithOptions:MEMORY[0x277CBEC10]];
  }

  else
  {
    v5 = [*(a1 + 32) hf_MediaAccessoryItem];
    v12 = [MEMORY[0x277D147F8] sharedInstance];
    v13 = [v5 mediaProfileContainer];
    v14 = [v13 hf_backingAccessory];
    v15 = [v14 uniqueIdentifier];
    v16 = [v15 UUIDString];
    [v12 updateHomePodAccessoryRestartState:1 with:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Successfully sent restart message to accessory", v18, 2u);
    }
  }
}

- (id)_resetAccessory
{
  if ([(HUServiceDetailsItemManager *)self _isGroupedHomePod])
  {
    NSLog(&cfstr_SendingObliter.isa);
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Sending obliterate message to solo HomePod", buf, 2u);
  }

  v4 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];

  if (v4)
  {
    v5 = [(HUServiceDetailsItemManager *)self deviceOptionsAdapter];
    v6 = [v5 resetAccessory];
    v7 = [v6 addCompletionBlock:&__block_literal_global_446];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "deviceOptionsAdapter is nil", v11, 2u);
    }

    v9 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
    v7 = [v9 futureWithError:v5];
  }

  return v7;
}

void __46__HUServiceDetailsItemManager__resetAccessory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Error sending obliterate message: %@", &v17, 0xCu);
    }

    [v6 setObject:v5 forKey:*MEMORY[0x277D135C8]];
  }

  else
  {
    if (v8)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Successfully sent obliterate message", &v17, 2u);
    }

    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:@"dp"];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [v6 setObject:v14 forKey:*MEMORY[0x277D135D0]];
    }
  }

  v15 = MEMORY[0x277D143D8];
  v16 = [v6 copy];
  [v15 sendEvent:56 withData:v16];
}

- (void)_setupDeviceOptionsAdapterUtilityForGroupedAccessories:(id)a3
{
  v4 = MEMORY[0x277D14330];
  v5 = a3;
  v6 = [v4 alloc];
  v8 = [v5 mediaProfileContainer];

  v7 = [v6 initWithHomeKitSettingsVendor:v8 mode:0 groupedAccessory:1 delegate:self];
  [(HUServiceDetailsItemManager *)self setDeviceOptionsAdapterUtility:v7];
}

- (void)accessoryReachableOverRapport:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    *buf = 136315394;
    v36 = "[HUServiceDetailsItemManager accessoryReachableOverRapport:]";
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%s HomePod Stereo Setup Restart Button Available %@", buf, 0x16u);
  }

  [(HUServiceDetailsItemManager *)self setGroupedAccessoryReachableOverRapport:v3];
  v8 = objc_opt_new();
  v9 = [(HUServiceDetailsItemManager *)self accessoryResetAndRemoveItemProvider];

  if (v9)
  {
    v10 = [(HUServiceDetailsItemManager *)self accessoryResetAndRemoveItemProvider];
    [v8 addObject:v10];
  }

  v11 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItemProvider];

  if (v11)
  {
    v12 = [(HUServiceDetailsItemManager *)self exportDiagnosticsItemProvider];
    [v8 addObject:v12];
  }

  v13 = [(HUServiceDetailsItemManager *)self hf_MediaAccessoryItem];
  if ([(HUServiceDetailsItemManager *)self _isGroupedHomePod])
  {
    v14 = [(HUServiceDetailsItemManager *)self groupedAccessoryReachableOverRapport];
    v15 = HFLogForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = [v13 mediaProfileContainer];
        v18 = [v17 uniqueIdentifier];
        v19 = [v18 UUIDString];
        *buf = 138412290;
        v36 = v19;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Grouped Accessory is reachable over Rapport..%@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277D147F8] sharedInstance];
      v21 = [v13 mediaProfileContainer];
      v22 = [v21 uniqueIdentifier];
      v23 = [v22 UUIDString];
      [v20 markUUIDReachableViaRapport:v23];
      v24 = 3;
    }

    else
    {
      if (v16)
      {
        v25 = [v13 mediaProfileContainer];
        v26 = [v25 uniqueIdentifier];
        v27 = [v26 UUIDString];
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Grouped Accessory is NOT reachable over Rapport..%@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277D147F8] sharedInstance];
      v21 = [v13 mediaProfileContainer];
      v22 = [v21 uniqueIdentifier];
      v23 = [v22 UUIDString];
      [v20 markUUIDUnreachableViaRapport:v23];
      v24 = 2;
    }

    v28 = [MEMORY[0x277D147F8] sharedInstance];
    v29 = [v13 mediaProfileContainer];
    v30 = [v29 uniqueIdentifier];
    v31 = [v30 UUIDString];
    [v28 updateHomePodAccessoryRestartState:v24 with:v31];
  }

  if (v8)
  {
    v32 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v8 senderSelector:a2];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61__HUServiceDetailsItemManager_accessoryReachableOverRapport___block_invoke;
    v34[3] = &unk_277DBBEB0;
    v34[4] = self;
    v33 = [v32 addCompletionBlock:v34];
  }
}

void __61__HUServiceDetailsItemManager_accessoryReachableOverRapport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceItem];
  v1 = [v2 updateWithOptions:MEMORY[0x277CBEC10]];
}

- (BOOL)_shouldShowAccessoryInfoItems
{
  v3 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];

  if (!v3)
  {
    goto LABEL_8;
  }

  if ([(HUServiceDetailsItemManager *)self isAccessory])
  {
    isKindOfClass = 1;
    return isKindOfClass & 1;
  }

  if (![(HUServiceDetailsItemManager *)self sourceItemIsService])
  {
LABEL_8:
    isKindOfClass = 0;
    return isKindOfClass & 1;
  }

  v5 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  if ([v5 hf_isMultiServiceAccessory])
  {
    v6 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
    if ([v6 hf_showAsIndividualServices])
    {
      isKindOfClass = 1;
    }

    else
    {
      v7 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
      if ([v7 hf_canShowAsIndividualServices])
      {
        v8 = [(HFItemManager *)self sourceItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 1;
      }
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldShowWiFiPickerFixUI
{
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl() || ([MEMORY[0x277CD1A90] shouldDisableWiFiPickerBasedOnOSEligibility] & 1) != 0)
  {
    return 0;
  }

  objc_opt_class();
  v5 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 mediaProfileContainer];

  v9 = [v8 topSymptomsHandlerAccessory];
  v10 = [v8 symptomsHandler];
  v11 = [v10 hf_symptomsSortedByPriority];

  v12 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:v11];
  if ([v9 supportsNetworkDiagnostics])
  {
    v3 = [(HUServiceDetailsItemManager *)self _shouldShowWifiPickerFixButtonWithSymptom:v12];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)a3
{
  v3 = a3;
  v4 = [v3 infoDictionary];
  v5 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11C0]];
  v6 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11B0]];
  v7 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11B8]];
  v8 = [v3 type];

  if (v8 > 102)
  {
    if (v8 == 103)
    {
      if (v6 & 1 | ((v5 & 1) == 0) | v7 & 1)
      {
        v9 = v5 | v6 | v7;
        goto LABEL_15;
      }

LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    if (v8 != 115)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 != 101)
    {
      if (v8 == 102 && v7 & 1 | ((v5 & v6 & 1) == 0))
      {
        v9 = v5 | v7 | v6 ^ 1;
LABEL_15:
        v10 = v9 ^ 1;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v5 & v7)
    {
      goto LABEL_16;
    }

    if (v5 & 1 | ((v6 & 1) == 0) || v7 != 1)
    {
      v10 = ((v5 | v6) ^ 1) & v7;
      goto LABEL_17;
    }
  }

  v10 = 1;
LABEL_17:

  return v10 & 1;
}

- (BOOL)_shouldShowSymptomsUI
{
  v20 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  objc_opt_class();
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 mediaProfileContainer];

  v7 = [(HUServiceDetailsItemManager *)self sourceItemAccessory];
  if ([v7 hf_isHomePod])
  {
  }

  else
  {
    v9 = [MEMORY[0x277D14810] isHomePodMediaSystem:v6];

    if ((v9 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  v10 = [v6 symptomsHandler];
  v11 = [v10 hf_symptomsSortedByPriority];

  v12 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:v11];
  v8 = [MEMORY[0x277CD1E80] hf_isNetworkDiagnosticsIssueForSymptomType:{objc_msgSend(v12, "type")}];

LABEL_11:
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 hf_displayName];
    v16 = 138412546;
    v17 = v14;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Accessory: %@ _shouldShowSymptomsUI value: %{BOOL}d", &v16, 0x12u);
  }

  return v8;
}

- (id)_resultsForNetworkDiagnosticsSymptom:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 type];

  if (v6 <= 102)
  {
    if (v6 != 100 && v6 != 101 && v6 != 102)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v6 <= 112)
  {
    if (v6 != 103)
    {
      if (v6 == 112)
      {
        goto LABEL_16;
      }

LABEL_14:
      [v5 setObject:&stru_2823E0EE8 forKeyedSubscript:*MEMORY[0x277D13F60]];
      [v5 setObject:&stru_2823E0EE8 forKeyedSubscript:*MEMORY[0x277D13E20]];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      goto LABEL_19;
    }

LABEL_17:
    v10 = HFLocalizedString();
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v8 = HFLocalizedString();
    v9 = MEMORY[0x277D13E20];
    goto LABEL_18;
  }

  if (v6 != 113)
  {
    if (v6 != 115)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = HFLocalizedString();
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v8 = HFLocalizedString();
  v9 = MEMORY[0x277D13F60];
LABEL_18:
  [v5 setObject:v8 forKeyedSubscript:*v9];

LABEL_19:

  return v5;
}

- (BOOL)_shouldShowSplitAccountUI
{
  v29 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUServiceDetailsItemManager *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HUServiceDetailsItemManager *)self homeMediaAccount];
  if (v6 && (v7 = v6, [v5 mediaProfileContainer], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_homePodIsCapableOfShowingSplitAccountError"), v8, v7, v9))
  {
    v10 = [v5 mediaProfileContainer];
    v11 = [v10 hf_supportsPreferredMediaUser];
  }

  else
  {
    v11 = 1;
  }

  v12 = [(HUServiceDetailsItemManager *)self _hasDismissedHomePodHasNonMemberMediaAccountWarning];
  v13 = v11 | v12;
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(HUServiceDetailsItemManager *)self homeMediaAccount];
    v22 = v21;
    v23 = @"NO";
    if (v12)
    {
      v23 = @"YES";
    }

    v25 = 138412546;
    v26 = v21;
    v27 = 2112;
    v28 = v23;
    _os_log_debug_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEBUG, "Home Media Account = [%@], hasDismissedHomePodHasNonMemberMediaAccountWarning = [%@]", &v25, 0x16u);
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(HUServiceDetailsItemManager *)self sourceItemIsHomePodConfiguredForMultiUser];
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v25 = 67109120;
      LODWORD(v26) = v16;
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "Accessory IS HomePod and Supports MU = %d", &v25, 8u);
    }

    v18 = [(HUServiceDetailsItemManager *)self _areHomePodMediaAccountsMismatched];
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = @"NO";
      if (v18)
      {
        v24 = @"YES";
      }

      v25 = 138412290;
      v26 = v24;
      _os_log_debug_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEBUG, "Media Accounts Mismatched = [%@]", &v25, 0xCu);
    }

    v15 = v16 && v18;
  }

  return v15;
}

- (id)_itemsToUpdateWhenApplicationDidBecomeActive
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUServiceDetailsItemManager *)self lockAddHomeKeyToWalletItem];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (id)_itemsToUpdateForDiagnosticInfoUpdate
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUServiceDetailsItemManager *)self headerItem];
  v5 = [(HUServiceDetailsItemManager *)self accessoryInfoItemProvider];
  v6 = [v5 items];
  v7 = [v3 setWithObjects:{v4, v6, 0}];
  v8 = [v7 na_setByFlattening];

  return v8;
}

@end