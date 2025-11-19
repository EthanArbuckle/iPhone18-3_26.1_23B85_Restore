@interface HUFaceRecognitionLibraryListItemManager
- (HUFaceRecognitionLibraryListItemManager)initWithDelegate:(id)a3;
- (HUFaceRecognitionLibraryListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUFaceRecognitionLibraryListItemManager)initWithHome:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (void)sendAnalyticsEvent;
- (void)setRecentsLimit:(unint64_t)a3;
@end

@implementation HUFaceRecognitionLibraryListItemManager

- (HUFaceRecognitionLibraryListItemManager)initWithHome:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionLibraryListItemManager.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v23.receiver = self;
  v23.super_class = HUFaceRecognitionLibraryListItemManager;
  v10 = [(HFItemManager *)&v23 initWithDelegate:v9 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, a3);
    if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D14CE8], "isRunningInStoreDemoMode"))
    {
      v12 = objc_alloc_init(MEMORY[0x277D14610]);
      demoDataSource = v11->_demoDataSource;
      v11->_demoDataSource = v12;
    }

    v11->_didSendAnalyticsEvent = 0;
    v11->_recentsLimit = 50;
    objc_initWeak(&location, v11);
    v14 = objc_alloc(MEMORY[0x277D14B38]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke;
    v19[3] = &unk_277DB8670;
    objc_copyWeak(&v21, &location);
    v20 = v8;
    v15 = [v14 initWithResultsBlock:v19];
    knownToHomeItem = v11->_knownToHomeItem;
    v11->_knownToHomeItem = v15;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v4 = [*(a1 + 32) personManagerSettings];
  v5 = [v4 isFaceClassificationEnabled];

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionKnownToHouseCellTitle", @"HUFaceRecognitionKnownToHouseCellTitle", 1);
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v8 = HFLocalizedString();
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  if (v3)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [WeakRetained demoDataSource];
    v12 = [v11 knownToHouseholdEntries];
    v13 = [v10 stringWithFormat:@"%lu", objc_msgSend(v12, "count")];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

  else
  {
    if (v5)
    {
      v14 = objc_alloc_init(MEMORY[0x277D2C900]);
      v15 = [WeakRetained overrideHome];
      v16 = [v15 personManager];
      v17 = [v14 completionHandlerAdapter];
      [v16 fetchAllPersonsWithCompletion:v17];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke_2;
      v21[3] = &unk_277DBC490;
      v22 = v6;
      v18 = [v14 flatMap:v21];
      v19 = [v18 recover:&__block_literal_global_38_1];

      goto LABEL_10;
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v19 = [MEMORY[0x277D2C900] futureWithResult:v6];
LABEL_10:

  return v19;
}

id __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 na_filter:&__block_literal_global_93];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v3, "count")];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E30]];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "count") == 0}];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277D13EC0]];

  v6 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v6;
}

BOOL __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 length] != 0;

  return v3;
}

id __65__HUFaceRecognitionLibraryListItemManager_initWithHome_delegate___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v2;
    _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error fetching persons: %@", buf, 0xCu);
  }

  v4 = MEMORY[0x277D2C900];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (HUFaceRecognitionLibraryListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionLibraryListItemManager.m" lineNumber:95 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionLibraryListItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUFaceRecognitionLibraryListItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionLibraryListItemManager.m" lineNumber:100 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionLibraryListItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __70__HUFaceRecognitionLibraryListItemManager__buildItemProvidersForHome___block_invoke;
  v33 = &unk_277DB8A10;
  v8 = v4;
  v34 = v8;
  v35 = v6;
  v9 = [v7 initWithResultsBlock:&v30];
  [(HUFaceRecognitionLibraryListItemManager *)self setAllowFacialRecognitionItem:v9];

  v10 = objc_alloc(MEMORY[0x277D14B40]);
  v11 = MEMORY[0x277CBEB98];
  v12 = [(HUFaceRecognitionLibraryListItemManager *)self allowFacialRecognitionItem];
  v13 = [(HUFaceRecognitionLibraryListItemManager *)self knownToHomeItem];
  v14 = [v11 setWithObjects:{v12, v13, 0, v30, v31, v32, v33}];
  v15 = [v10 initWithItems:v14];
  [(HUFaceRecognitionLibraryListItemManager *)self setStaticItemProvider:v15];

  v16 = [(HUFaceRecognitionLibraryListItemManager *)self staticItemProvider];
  [v5 addObject:v16];

  if ((v6 & 1) == 0)
  {
    v17 = [objc_alloc(MEMORY[0x277D14CD8]) initWithHome:v8];
    [(HUFaceRecognitionLibraryListItemManager *)self setUserPhotosLibraryItemProvider:v17];

    v18 = [(HUFaceRecognitionLibraryListItemManager *)self userPhotosLibraryItemProvider];
    [v5 addObject:v18];
  }

  v19 = [(HUFaceRecognitionLibraryListItemManager *)self recentEventsItemProvider];

  if (!v19)
  {
    if (v6)
    {
      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v37 = 1;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "isDemoMode %{BOOL}d", buf, 8u);
      }

      v21 = objc_alloc(MEMORY[0x277D14618]);
      v22 = [(HFItemManager *)self home];
      v23 = [v21 initForMode:0 home:v22];
      [(HUFaceRecognitionLibraryListItemManager *)self setRecentEventsItemProvider:v23];
    }

    else
    {
      v24 = [(HFItemManager *)self home];
      v25 = [v24 hf_currentUserIsAdministrator];

      if (!v25)
      {
LABEL_14:
        v28 = [(HUFaceRecognitionLibraryListItemManager *)self recentEventsItemProvider];
        [v5 na_safeAddObject:v28];

        goto LABEL_15;
      }

      v26 = [HUFaceRecognitionRecentEventsItemProvider alloc];
      v27 = [(HFItemManager *)self home];
      v22 = [(HUFaceRecognitionRecentEventsItemProvider *)v26 initWithHome:v27];

      [(HUFaceRecognitionLibraryListItemManager *)self setRecentEventsItemProvider:v22];
      [(HUFaceRecognitionRecentEventsItemProvider *)v22 setFetchLimit:[(HUFaceRecognitionLibraryListItemManager *)self recentsLimit]];
    }

    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

id __70__HUFaceRecognitionLibraryListItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) personManagerSettings];
  [v2 isFaceClassificationEnabled];

  v3 = MEMORY[0x277D2C900];
  v15 = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionSettingSwitchTitle", @"HUFaceRecognitionSettingSwitchTitle", 1);
  v5 = *MEMORY[0x277D13F68];
  v21[0] = v4;
  v21[1] = @"HUFaceRecognitionSettingSwitchTitle";
  v6 = *MEMORY[0x277D14068];
  v16 = v5;
  v17 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v8 = *MEMORY[0x277D13F10];
  v21[2] = v7;
  v21[3] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D13EA8];
  v18 = v8;
  v19 = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v21[4] = v10;
  v20 = *MEMORY[0x277D13DA0];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0, v15, v16, v17}];
  v21[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v15 count:6];
  v13 = [v3 futureWithResult:v12];

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v39 = a3;
  v5 = [v4 array];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionSettingSwitchSection"];
  v7 = [(HUFaceRecognitionLibraryListItemManager *)self allowFacialRecognitionItem];
  v40[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v6 setItems:v8];

  v9 = MEMORY[0x277CCA898];
  v10 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionSettingSwitchFooter", @"HUFaceRecognitionSettingSwitchFooter", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionSettingFooterLearnMoreSubstring", @"HUFaceRecognitionSettingFooterLearnMoreSubstring", 1);
  v12 = [MEMORY[0x277CBEBC0] hf_faceRecognitionPrivacyURL];
  v13 = [v9 hf_attributedLinkStringForString:v10 linkString:v11 linkURL:v12];

  v38 = v13;
  [v6 setAttributedFooterTitle:v13];
  [v5 addObject:v6];
  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionLibrariesSection"];
  v15 = [(HUFaceRecognitionLibraryListItemManager *)self userPhotosLibraryItemProvider];
  v16 = [v15 items];
  v17 = [v16 allObjects];

  v18 = [MEMORY[0x277CBEB18] array];
  v37 = v17;
  v19 = [v17 sortedArrayUsingComparator:&__block_literal_global_66_1];
  [v18 na_safeAddObjectsFromArray:v19];

  v20 = [(HUFaceRecognitionLibraryListItemManager *)self knownToHomeItem];
  [v18 na_safeAddObject:v20];

  [v14 setItems:v18];
  v21 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLibrariesSectionTitle", @"HUFaceRecognitionLibrariesSectionTitle", 1);
  [v14 setHeaderTitle:v21];

  [v5 addObject:v14];
  v22 = [(HUFaceRecognitionLibraryListItemManager *)self recentEventsItemProvider];
  v23 = [v22 items];
  v24 = [v23 allObjects];
  v25 = +[HUFaceRecognitionRecentEventsItemProvider cameraSignificantEventDateComparator];
  v26 = [v24 sortedArrayUsingComparator:v25];

  v27 = 1;
  if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0)
  {
    v27 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v28 = [(HFItemManager *)self home];
  v29 = [v28 personManagerSettings];
  if ([v29 isFaceClassificationEnabled] | v27 & (v26 != 0))
  {
    v30 = v26;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v31 = v30;
  [(HUFaceRecognitionLibraryListItemManager *)self setCoalescedPersonEvents:v31];
  v32 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];
  [v32 setItems:v31];

  v33 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionRecentVisitorsSectionTitle", @"HUFaceRecognitionRecentVisitorsSectionTitle", 1);
  [v32 setHeaderTitle:v33];

  v34 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionRecentVisitorsSectionFooter", @"HUFaceRecognitionRecentVisitorsSectionFooter", 1);
  [v32 setFooterTitle:v34];

  [v5 addObject:v32];
  v35 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v39];

  return v35;
}

uint64_t __76__HUFaceRecognitionLibraryListItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 user];
  v6 = [v5 name];
  v7 = [v4 user];

  v8 = [v7 name];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUFaceRecognitionLibraryListItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)setRecentsLimit:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v6 = [(HUFaceRecognitionLibraryListItemManager *)self recentEventsItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && self->_recentsLimit != a3)
  {
    self->_recentsLimit = a3;
    [v8 setFetchLimit:a3];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a3;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Setting limit %lu on recents", buf, 0xCu);
    }

    v12 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v11 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v10 senderSelector:a2];
  }
}

- (void)sendAnalyticsEvent
{
  v33 = *MEMORY[0x277D85DE8];
  if (![(HUFaceRecognitionLibraryListItemManager *)self didSendAnalyticsEvent])
  {
    [(HUFaceRecognitionLibraryListItemManager *)self setDidSendAnalyticsEvent:1];
    v3 = objc_opt_new();
    v4 = MEMORY[0x277CCABB0];
    v5 = [(HUFaceRecognitionLibraryListItemManager *)self coalescedPersonEvents];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v24 = v3;
    [v3 na_safeSetObject:v6 forKey:*MEMORY[0x277D13668]];

    v25 = objc_opt_new();
    v26 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(HUFaceRecognitionLibraryListItemManager *)self coalescedPersonEvents];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = *v29;
    v10 = *MEMORY[0x277D13D68];
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        objc_opt_class();
        v13 = [v12 latestResults];
        v14 = [v13 objectForKeyedSubscript:v10];
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v17 = [v16 person];

        if (v17)
        {
          v18 = [v17 name];
          v19 = [v18 length];

          if (v19)
          {
            goto LABEL_15;
          }

          v20 = v25;
          v21 = v17;
        }

        else
        {
          v20 = v26;
          v21 = v12;
        }

        [v20 addObject:v21];
LABEL_15:

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v8)
      {
LABEL_17:

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        [v24 na_safeSetObject:v22 forKey:*MEMORY[0x277D13660]];

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
        [v24 na_safeSetObject:v23 forKey:*MEMORY[0x277D13670]];

        [MEMORY[0x277D143D8] sendEvent:7 withData:v24];
        return;
      }
    }
  }
}

@end