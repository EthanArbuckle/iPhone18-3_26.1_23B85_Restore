@interface CSListItemDiscoveryProvider
- (CSListItemDiscoveryProvider)init;
- (CSListItemSection)section;
- (id)_customizeFocusDiscoveryViewWithDNDSemanticType:(int64_t)a3;
- (id)_discoveryTypeForSuggestion:(id)a3;
- (id)_explorePostersDiscoveryItemViewControllerForPlatter:(id)a3 firstDidAppearCompletion:(id)a4;
- (id)_explorePostersDiscoveryView;
- (id)_sleepMigrationDiscoveryView;
- (void)_handleDismissSuggestion:(id)a3 type:(id)a4;
- (void)_handleShowSuggestion:(id)a3 type:(id)a4 isPrototyping:(BOOL)a5;
- (void)_presentPlatterDiscoveryView:(id)a3 discoveryItemViewController:(id)a4 withSuggestion:(id)a5 type:(id)a6;
- (void)_prototypeTest_addItem;
- (void)_prototypeTest_registerRecipe;
- (void)_prototypeTest_removeItem;
- (void)_removeDiscoveryOfType:(id)a3;
- (void)didReceiveUserEducationSuggestionEvent:(id)a3;
- (void)handleRemovedItems:(id)a3;
- (void)onboardingPlatter:(id)a3 requestsModalPresentationOfViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
- (void)willPresentPosterSwitcher;
@end

@implementation CSListItemDiscoveryProvider

- (CSListItemDiscoveryProvider)init
{
  v9.receiver = self;
  v9.super_class = CSListItemDiscoveryProvider;
  v2 = [(CSListItemDiscoveryProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    discoveryTypeToDiscoverySuggestionAndListItems = v2->_discoveryTypeToDiscoverySuggestionAndListItems;
    v2->_discoveryTypeToDiscoverySuggestionAndListItems = v3;

    v5 = [MEMORY[0x277CEB920] sharedInstance];
    [v5 registerObserver:v2];

    [(CSListItemDiscoveryProvider *)v2 _prototypeTest_registerRecipe];
    v6 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.CoverSheetDiscoveryProvider"];
    stateService = v2->_stateService;
    v2->_stateService = v6;

    [(DNDStateService *)v2->_stateService addStateUpdateListener:v2 withCompletionHandler:0];
  }

  return v2;
}

- (CSListItemSection)section
{
  v2 = [[CSListItemSection alloc] initWithIdentifier:@"Discovery"];

  return v2;
}

- (void)willPresentPosterSwitcher
{
  v3 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:@"CSListItemDiscoveryTypeExplorePosters"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 discoverySuggestion];
    v6 = [MEMORY[0x277CEB920] sharedInstance];
    v7 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v5 feedbackType:9];
    [v6 logUserEducationSuggestionFeedback:v7];

    v8 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CSListItemDiscoveryProvider_willPresentPosterSwitcher__block_invoke;
    block[3] = &unk_27838B770;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

- (void)handleRemovedItems:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) identifier];
        v10 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:v9];
        v11 = [v10 discoverySuggestion];

        if (v11)
        {
          v12 = [MEMORY[0x277CEB920] sharedInstance];
          v13 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v11 feedbackType:3];
          [v12 logUserEducationSuggestionFeedback:v13];
        }

        [(CSListItemDiscoveryProvider *)self _removeDiscoveryOfType:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)didReceiveUserEducationSuggestionEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CSListItemDiscoveryProvider_didReceiveUserEducationSuggestionEvent___block_invoke;
  v6[3] = &unk_27838C438;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__CSListItemDiscoveryProvider_didReceiveUserEducationSuggestionEvent___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [a1[4] userEducationSuggestion];
    v4 = [a1[5] _discoveryTypeForSuggestion:v3];
    v5 = [a1[4] userEducationSuggestionEventType];
    if (v5 == 1)
    {
      [v6 _handleDismissSuggestion:v3 type:v4];
    }

    else if (!v5)
    {
      [v6 _handleShowSuggestion:v3 type:v4 isPrototyping:0];
    }

    WeakRetained = v6;
  }
}

- (void)_handleShowSuggestion:(id)a3 type:(id)a4 isPrototyping:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:v9];

  if (!v10)
  {
    v14 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems count];
    if ([(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems count]== 1)
    {
      v15 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
      v12 = [v15 firstObject];
    }

    else
    {
      v12 = 0;
    }

    if ([v12 isEqualToString:@"CSListItemDiscoveryTypeSleepMigration"])
    {
      v16 = 1;
    }

    else
    {
      v16 = [v12 isEqualToString:@"CSListItemDiscoveryTypeCustomizeFocus"];
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __72__CSListItemDiscoveryProvider__handleShowSuggestion_type_isPrototyping___block_invoke;
    v33[3] = &unk_27838B770;
    v17 = v8;
    v34 = v17;
    v18 = MEMORY[0x223D698D0](v33);
    v19 = (v14 == 0) | v16 | v5;
    if ([v9 isEqualToString:@"CSListItemDiscoveryTypeSleepMigration"] && (v19 & 1) != 0)
    {
      v20 = [(CSListItemDiscoveryProvider *)self _sleepMigrationDiscoveryView];
    }

    else
    {
      if (([v9 isEqualToString:@"CSListItemDiscoveryTypeCustomizeFocus"] & v19) != 1)
      {
        v25 = [v9 isEqualToString:@"CSListItemDiscoveryTypeExplorePosters"];
        v13 = 0;
        if (v14)
        {
          v26 = v5;
        }

        else
        {
          v26 = 1;
        }

        if (v25)
        {
          if (v26)
          {
            v21 = [(CSListItemDiscoveryProvider *)self _explorePostersDiscoveryView];
            v13 = [(CSListItemDiscoveryProvider *)self _explorePostersDiscoveryItemViewControllerForPlatter:v21 firstDidAppearCompletion:v18];
            if (v21)
            {
              goto LABEL_17;
            }
          }
        }

        goto LABEL_33;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = [(DNDStateService *)self->_stateService queryCurrentStateWithError:0];
        v31 = [v30 activeModeConfiguration];
        v32 = [v31 mode];

        if (v32)
        {
          v21 = -[CSListItemDiscoveryProvider _customizeFocusDiscoveryViewWithDNDSemanticType:](self, "_customizeFocusDiscoveryViewWithDNDSemanticType:", [v32 semanticType]);
        }

        else
        {
          v21 = 0;
        }

LABEL_16:
        v13 = 0;
        if (v21)
        {
LABEL_17:
          v22 = SBLogDashBoard();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v9;
            _os_log_impl(&dword_21EB05000, v22, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will appear.", buf, 0xCu);
          }

          if (v17)
          {
            v23 = [MEMORY[0x277CEB920] sharedInstance];
            v24 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v17 feedbackType:0];
            [v23 logUserEducationSuggestionFeedback:v24];
          }

          if (!v13)
          {
            v13 = [[CSDiscoveryItemViewController alloc] initWithPlatterDiscoveryView:v21 firstDidAppearCompletion:v18];
          }

          [(CSListItemDiscoveryProvider *)self _presentPlatterDiscoveryView:v21 discoveryItemViewController:v13 withSuggestion:v17 type:v9];
          goto LABEL_37;
        }

LABEL_33:
        v27 = SBLogDashBoard();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          discoveryTypeToDiscoverySuggestionAndListItems = self->_discoveryTypeToDiscoverySuggestionAndListItems;
          *buf = 138543618;
          v36 = v9;
          v37 = 2114;
          v38 = discoveryTypeToDiscoverySuggestionAndListItems;
          _os_log_impl(&dword_21EB05000, v27, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will not show. Other suggestions: %{public}@ ", buf, 0x16u);
        }

        if (!v17)
        {
          goto LABEL_38;
        }

        v21 = [MEMORY[0x277CEB920] sharedInstance];
        v29 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v17 feedbackType:5];
        [v21 logUserEducationSuggestionFeedback:v29];

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      v20 = -[CSListItemDiscoveryProvider _customizeFocusDiscoveryViewWithDNDSemanticType:](self, "_customizeFocusDiscoveryViewWithDNDSemanticType:", [v17 modeSemanticType]);
    }

    v21 = v20;
    goto LABEL_16;
  }

  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v9;
    _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will not show because this type is currently presented. ", buf, 0xCu);
  }

  if (v8)
  {
    v12 = [MEMORY[0x277CEB920] sharedInstance];
    v13 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v8 feedbackType:5];
    [v12 logUserEducationSuggestionFeedback:v13];
LABEL_39:
  }
}

void __72__CSListItemDiscoveryProvider__handleShowSuggestion_type_isPrototyping___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CEB920] sharedInstance];
    v3 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:*(a1 + 32) feedbackType:1];
    [v2 logUserEducationSuggestionFeedback:v3];
  }

  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type:]: Did Appear.", v5, 2u);
  }
}

- (void)_handleDismissSuggestion:(id)a3 type:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    [(CSListItemDiscoveryProvider *)self _removeDiscoveryOfType:v5];
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Dismissed suggestion", &v7, 0xCu);
    }
  }

  else
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CSListItemDiscoveryProvider _handleDismissSuggestion:v6 type:?];
    }
  }
}

- (id)_discoveryTypeForSuggestion:(id)a3
{
  v3 = a3;
  v4 = 0;
  if (CSFeatureEnabled(0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"CSListItemDiscoveryTypeSleepMigration";
    }

    else
    {
      v4 = 0;
    }
  }

  if (CSFeatureEnabled(0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"CSListItemDiscoveryTypeCustomizeFocus";
    }
  }

  if (CSFeatureEnabled(0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"CSListItemDiscoveryTypeExplorePosters";
    }
  }

  return v4;
}

- (void)_presentPlatterDiscoveryView:(id)a3 discoveryItemViewController:(id)a4 withSuggestion:(id)a5 type:(id)a6
{
  v10 = a3;
  v25 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[CSListItem alloc] initWithIdentifier:v12 groupingIdentifier:v12 sectionIdentifier:@"Discovery"];
  v26 = objc_alloc_init(MEMORY[0x277D78068]);
  v14 = objc_alloc_init(CSDiscoverySuggestionAndListItemTuple);
  [(CSDiscoverySuggestionAndListItemTuple *)v14 setListItem:v13];
  [(CSDiscoverySuggestionAndListItemTuple *)v14 setDiscoverySuggestion:v11];
  [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems setObject:v14 forKey:v12];
  objc_initWeak(location, self);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = [v10 defaultAction];
  if (v41[5])
  {
    v15 = MEMORY[0x277D750C8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DISCOVERY_LIST_ITEM_OPEN_ACTION_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke;
    v31[3] = &unk_27838CC68;
    objc_copyWeak(&v39, location);
    v32 = v12;
    v33 = v14;
    v34 = v11;
    v35 = self;
    v36 = v13;
    v38 = &v40;
    v37 = v25;
    v18 = [v15 actionWithTitle:v17 image:0 identifier:0 handler:v31];

    [v26 setDefaultAction:v18];
    objc_destroyWeak(&v39);
  }

  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"DISCOVERY_LIST_ITEM_CLEAR_ACTION_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke_2;
  v27[3] = &unk_27838CC90;
  objc_copyWeak(&v30, location);
  v22 = v12;
  v28 = v22;
  v23 = v11;
  v29 = v23;
  v24 = [v19 actionWithTitle:v21 image:0 identifier:0 handler:v27];

  [v10 setClearAction:v24];
  [v10 setUsesBackgroundView:0];
  [v26 setMaterialRecipe:{objc_msgSend(v10, "materialRecipe")}];
  [(CSListItem *)v13 setConfiguration:v26];
  [(CSListItem *)v13 setContentHost:v25];
  [(CSListItemManaging *)self->_itemManager addItem:v13];

  objc_destroyWeak(&v30);
  _Block_object_dispose(&v40, 8);

  objc_destroyWeak(location);
}

void __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained discoveryTypeToDiscoverySuggestionAndListItems];
    v5 = [v4 objectForKey:*(a1 + 32)];
    v6 = *(a1 + 40);

    if (v5 == v6)
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138543362;
        v18 = v8;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: User triggered default action.", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v9 = [MEMORY[0x277CEB920] sharedInstance];
        v10 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:*(a1 + 48) feedbackType:7];
        [v9 logUserEducationSuggestionFeedback:v10];
      }

      v11 = *(a1 + 64);
      v12 = *(*(a1 + 56) + 24);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke_70;
      v15[3] = &unk_27838CC40;
      v14 = *(a1 + 72);
      v13 = v14;
      v16 = v14;
      [v12 item:v11 requestsAuthenticationAndPerformBlock:v15];
    }
  }
}

uint64_t __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke_70(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(*(result + 40) + 8) + 40) performWithSender:*(result + 32) target:0];
  }

  return result;
}

void __108__CSListItemDiscoveryProvider__presentPlatterDiscoveryView_discoveryItemViewController_withSuggestion_type___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeDiscoveryOfType:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v2 = [MEMORY[0x277CEB920] sharedInstance];
    v3 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:*(a1 + 40) feedbackType:3];
    [v2 logUserEducationSuggestionFeedback:v3];
  }
}

- (void)_removeDiscoveryOfType:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CSListItemDiscoveryProvider__removeDiscoveryOfType___block_invoke;
  v6[3] = &unk_27838B838;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__CSListItemDiscoveryProvider__removeDiscoveryOfType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 discoverySuggestion];
    if (v4)
    {
      v5 = SBLogDashBoard();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Removing suggestion from list", &v11, 0xCu);
      }

      v7 = [MEMORY[0x277CEB920] sharedInstance];
      v8 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v4 feedbackType:4];
      [v7 logUserEducationSuggestionFeedback:v8];
    }

    v9 = *(*(a1 + 32) + 24);
    v10 = [v3 listItem];
    [v9 removeItem:v10];

    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  }
}

- (id)_sleepMigrationDiscoveryView
{
  v2 = objc_alloc_init(CSDiscoveryItemPlatterSleepMigration);

  return v2;
}

- (id)_customizeFocusDiscoveryViewWithDNDSemanticType:(int64_t)a3
{
  v5 = [(DNDStateService *)self->_stateService queryCurrentStateWithError:0];
  v6 = [v5 activeModeConfiguration];
  v7 = [v6 mode];

  if (v7 && [v7 semanticType] == a3)
  {
    v8 = [MEMORY[0x277D0AA20] onboardingPlatterDiscoveryViewForMode:v7];
    [v8 setDelegate:self];
  }

  else
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSListItemDiscoveryProvider _customizeFocusDiscoveryViewWithDNDSemanticType:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_explorePostersDiscoveryView
{
  v3 = objc_alloc_init(CSDiscoveryItemExplorePostersPlatterView);
  [(CSDiscoveryItemExplorePostersPlatterView *)v3 setDelegate:self];

  return v3;
}

- (id)_explorePostersDiscoveryItemViewControllerForPlatter:(id)a3 firstDidAppearCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CSDiscoveryItemExplorePostersViewController alloc] initWithPlatter:v6 firstDidAppearCompletion:v5];

  return v7;
}

- (void)onboardingPlatter:(id)a3 requestsModalPresentationOfViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  discoveryTypeToDiscoverySuggestionAndListItems = self->_discoveryTypeToDiscoverySuggestionAndListItems;
  v10 = a6;
  v11 = a4;
  v12 = [(NSMutableDictionary *)discoveryTypeToDiscoverySuggestionAndListItems objectForKey:@"CSListItemDiscoveryTypeCustomizeFocus"];
  v13 = [v12 listItem];

  [(CSListItemManaging *)self->_itemManager item:v13 requestsModalPresentationOfViewController:v11 animated:v6 completion:v10];
}

- (void)_prototypeTest_registerRecipe
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D431D0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CSListItemDiscoveryProvider__prototypeTest_registerRecipe__block_invoke;
  v6[3] = &unk_27838B748;
  objc_copyWeak(&v7, &location);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CSListItemDiscoveryProvider__prototypeTest_registerRecipe__block_invoke_2;
  v4[3] = &unk_27838B748;
  objc_copyWeak(&v5, &location);
  v3 = [v2 recipeWithTitle:@"Add Discover Platter" increaseAction:v6 decreaseAction:v4];
  [(PTDomain *)CSLockScreenDomain registerTestRecipe:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__CSListItemDiscoveryProvider__prototypeTest_registerRecipe__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _prototypeTest_addItem];
    WeakRetained = v2;
  }
}

void __60__CSListItemDiscoveryProvider__prototypeTest_registerRecipe__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _prototypeTest_removeItem];
    WeakRetained = v2;
  }
}

- (void)_prototypeTest_addItem
{
  v3 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:@"CSListItemDiscoveryTypeCustomizeFocus"];

  if (v3)
  {
    v4 = @"CSListItemDiscoveryTypeSleepMigration";
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:@"CSListItemDiscoveryTypeExplorePosters"];

    if (v5)
    {
      v4 = @"CSListItemDiscoveryTypeCustomizeFocus";
    }

    else
    {
      v4 = @"CSListItemDiscoveryTypeExplorePosters";
    }
  }

  [(CSListItemDiscoveryProvider *)self _handleShowSuggestion:0 type:v4 isPrototyping:1];
}

- (void)_prototypeTest_removeItem
{
  if ([(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems count])
  {
    v3 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
    v4 = [v3 firstObject];

    [(CSListItemDiscoveryProvider *)self _handleDismissSuggestion:0 type:v4];
  }
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 state];
  v7 = [v6 activeModeConfiguration];
  v8 = [v7 mode];

  v31 = v5;
  v9 = [v5 previousState];
  v10 = [v9 activeModeConfiguration];
  v11 = [v10 mode];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    v32 = *v35;
    v33 = v8;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if (v8)
        {
          v18 = [v11 semanticType];
          if (v18 == [v8 semanticType])
          {
            v19 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:v17];
            v20 = [v19 discoverySuggestion];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_13;
            }

            v21 = v20;
            v22 = v12;
            v23 = self;
            v24 = v11;
            v25 = [v8 semanticType];
            v26 = v14;
            v27 = [v21 modeSemanticType];

            v28 = v25 == v27;
            v14 = v26;
            v11 = v24;
            self = v23;
            v12 = v22;
            v15 = v32;
            v8 = v33;
            if (v28)
            {
              goto LABEL_13;
            }
          }
        }

        v29 = SBLogDashBoard();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v39 = v17;
          _os_log_impl(&dword_21EB05000, v29, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Removing due to mode change.", buf, 0xCu);
        }

        [(CSListItemDiscoveryProvider *)self _removeDiscoveryOfType:v17];
LABEL_13:
        ++v16;
      }

      while (v14 != v16);
      v30 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
      v14 = v30;
    }

    while (v30);
  }
}

- (void)_handleDismissSuggestion:(os_log_t)log type:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&dword_21EB05000, log, OS_LOG_TYPE_ERROR, "[Discovery UI, type: '%{public}@']: Error. System system cannot dismiss from suggestion event. Suggestion isn't currently presented.", &v1, 0xCu);
}

@end