@interface HURecommendedTriggerItemModule
+ (BOOL)shouldShowRecommendation:(id)a3;
+ (id)rankComparator;
- (HURecommendedTriggerItemModule)initWithItemUpdater:(id)a3;
- (HURecommendedTriggerItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)_buildStaticItems;
- (id)_itemsToHideInSet:(id)a3;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)setConfigureBlock:(id)a3;
- (void)setEngineOptions:(unint64_t)a3;
@end

@implementation HURecommendedTriggerItemModule

- (HURecommendedTriggerItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HURecommendedTriggerItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v9->_maximumNumberOfShownRecommendations = 3;
    v9->_hideSectionHeaderTitle = 0;
    v9->_engineOptions = 2;
  }

  return v9;
}

- (HURecommendedTriggerItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HURecommendedTriggerItemModule.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HURecommendedTriggerItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (void)setConfigureBlock:(id)a3
{
  aBlock = a3;
  v4 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];

  if (v4)
  {
    v5 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
    [v5 setConfigureBlock:aBlock];
  }

  v6 = _Block_copy(aBlock);
  configureBlock = self->_configureBlock;
  self->_configureBlock = v6;
}

- (void)setEngineOptions:(unint64_t)a3
{
  self->_engineOptions = [(HURecommendedTriggerItemModule *)self _effectiveRecommendationEngineOptionsWithOptions:a3];
  v4 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];

  if (v4)
  {
    engineOptions = self->_engineOptions;
    v6 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
    [v6 setEngineOptions:engineOptions];
  }
}

- (id)buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D17E58]);
  v4 = [(HURecommendedTriggerItemModule *)self home];
  v5 = [v3 initWithHome:v4 andServiceLikeItems:0];
  [(HURecommendedTriggerItemModule *)self setRecommendationItemProvider:v5];

  v6 = [(HURecommendedTriggerItemModule *)self engineOptions];
  v7 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
  [v7 setEngineOptions:v6];

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __52__HURecommendedTriggerItemModule_buildItemProviders__block_invoke;
  v22 = &unk_277DBB0E8;
  objc_copyWeak(&v23, &location);
  v8 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
  [v8 setFilter:&v19];

  v9 = [(HURecommendedTriggerItemModule *)self configureBlock];

  if (v9)
  {
    v10 = [(HURecommendedTriggerItemModule *)self configureBlock];
    v11 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
    [v11 setConfigureBlock:v10];
  }

  v12 = objc_alloc(MEMORY[0x277D14B40]);
  v13 = [(HURecommendedTriggerItemModule *)self _buildStaticItems];
  v14 = [v12 initWithItems:v13];

  v15 = MEMORY[0x277CBEB98];
  v16 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
  v17 = [v15 setWithObjects:{v16, v14, 0, v19, v20, v21, v22}];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

uint64_t __52__HURecommendedTriggerItemModule_buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [objc_opt_class() shouldShowRecommendation:v3];
  v6 = [WeakRetained filter];
  if (v6)
  {
    v7 = [WeakRetained filter];
    v8 = (v7)[2](v7, v3);
  }

  else
  {
    v8 = 1;
  }

  if ((v5 & v8 & 1) == 0)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109634;
      v11[1] = v5;
      v12 = 1024;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Hiding recommendation, passesBasicFilter: %{BOOL}d passesClientFilter: %{BOOL}d recommendation: %@", v11, 0x18u);
    }
  }

  return v5 & v8;
}

- (id)_buildStaticItems
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(HURecommendedTriggerItemModule *)self moreButtonItem];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D14B38]);
    v12 = *MEMORY[0x277D13F60];
    v5 = _HULocalizedStringWithDefaultValue(@"HURecommendedAutomationsShowMoreButtonTitle", @"HURecommendedAutomationsShowMoreButtonTitle", 1);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v4 initWithResults:v6];
    [(HURecommendedTriggerItemModule *)self setMoreButtonItem:v7];
  }

  v8 = MEMORY[0x277CBEB98];
  v9 = [(HURecommendedTriggerItemModule *)self moreButtonItem];
  v10 = [v8 setWithObject:v9];

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"HURecommendedTriggerItemModuleSection"];
  if (![(HURecommendedTriggerItemModule *)self hideSectionHeaderTitle])
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HURecommendedAutomationsSectionTitle", @"HURecommendedAutomationsSectionTitle", 1);
    [v6 setHeaderTitle:v7];
  }

  v8 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
  v9 = [v8 items];
  v10 = [v9 allObjects];
  v11 = [objc_opt_class() rankComparator];
  v12 = [v10 sortedArrayUsingComparator:v11];
  [v6 setItems:v12];

  v13 = [v6 items];
  v14 = [(HURecommendedTriggerItemModule *)self moreButtonItem];
  v15 = [v13 arrayByAddingObject:v14];
  [v6 setItems:v15];

  v16 = MEMORY[0x277D14778];
  v20[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:v5];

  return v18;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
  v7 = [v6 items];
  v8 = [v4 na_setByIntersectingWithSet:v7];
  v9 = [v8 count];

  if ([(HURecommendedTriggerItemModule *)self maximumNumberOfShownRecommendations]== 0x7FFFFFFFFFFFFFFFLL || v9 <= [(HURecommendedTriggerItemModule *)self maximumNumberOfShownRecommendations])
  {
    v15 = [(HURecommendedTriggerItemModule *)self moreButtonItem];
    [v5 addObject:v15];
  }

  else
  {
    v10 = [(HURecommendedTriggerItemModule *)self maximumNumberOfShownRecommendations];
    v11 = [(HURecommendedTriggerItemModule *)self recommendationItemProvider];
    v12 = [v11 items];
    v13 = [v12 allObjects];
    v14 = [objc_opt_class() rankComparator];
    v15 = [v13 sortedArrayUsingComparator:v14];

    while (v10 < [v15 count])
    {
      v16 = [v15 objectAtIndex:v10];
      [v5 addObject:v16];

      ++v10;
    }
  }

  return v5;
}

+ (BOOL)shouldShowRecommendation:(id)a3
{
  v3 = a3;
  v4 = [v3 hu_triggerBuilderIfAny];
  v5 = [v4 requiresFMFDeviceToRun];

  v6 = [v3 home];
  v7 = [v3 home];
  v8 = [v7 currentUser];
  v9 = [v6 homeAccessControlForUser:v8];
  v10 = [v9 presenceComputationStatus];

  v11 = [v3 hu_triggerBuilderIfAny];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = [v14 locationInterface];
  v16 = [v15 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    v19 = [v18 region];
    v20 = v19 != 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = [v3 hu_asTriggerRecommendation];
  v22 = [v21 triggerBuilders];
  v23 = [v22 na_any:&__block_literal_global_112];

  if ([MEMORY[0x277D14CE8] supportsBeingCurrentLocationDevice])
  {
    v24 = [MEMORY[0x277D147A8] sharedDispatcher];
    [v24 authorizationStatus];

    v35 = HFLocationServicesAvailableForAuthorizationStatus();
    v25 = MEMORY[0x277CD1D20];
    [v3 home];
    LOBYTE(v24) = v23;
    v26 = v14;
    v27 = v20;
    v28 = v10;
    v30 = v29 = v5;
    LOBYTE(v25) = [v25 hf_presenceDisableReasonsForHome:v30];

    v5 = v29;
    v10 = v28;
    v20 = v27;
    v14 = v26;
    v23 = v24;
    v31 = v35;
    if ((v25 & 2) != 0)
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
  }

  if (v10 == 3)
  {
    v32 = v5 ^ 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = (v23 ^ 1 | v31) & v20;

  return v32 & v33;
}

uint64_t __59__HURecommendedTriggerItemModule_shouldShowRecommendation___block_invoke(uint64_t a1, void *a2)
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

  v6 = [v5 eventBuilders];
  v7 = [v6 na_any:&__block_literal_global_30_0];

  return v7;
}

+ (id)rankComparator
{
  if (_MergedGlobals_4_1 != -1)
  {
    dispatch_once(&_MergedGlobals_4_1, &__block_literal_global_83_0);
  }

  v3 = qword_27C837EC8;

  return v3;
}

void __48__HURecommendedTriggerItemModule_rankComparator__block_invoke_2()
{
  v0 = qword_27C837EC8;
  qword_27C837EC8 = &__block_literal_global_86_1;
}

uint64_t __48__HURecommendedTriggerItemModule_rankComparator__block_invoke_3(uint64_t a1, void *a2, void *a3)
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

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HURecommendedTriggerItemModule_rankComparator__block_invoke_4;
  v20 = &unk_277DB78F8;
  v12 = v8;
  v21 = v12;
  v13 = v11;
  v22 = v13;
  if (!v13 || (v14 = __48__HURecommendedTriggerItemModule_rankComparator__block_invoke_4(&v17)) == 0)
  {
    v15 = [MEMORY[0x277D14778] defaultItemComparator];
    v14 = (v15)[2](v15, v6, v9);
  }

  return v14;
}

uint64_t __48__HURecommendedTriggerItemModule_rankComparator__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) recommendation];
  v3 = [*(a1 + 40) recommendation];
  v4 = MEMORY[0x277CCABB0];
  [v2 sortingPriority];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x277CCABB0];
  [v3 sortingPriority];
  v7 = [v6 numberWithDouble:?];
  v8 = [v5 compare:v7];

  return v8;
}

@end