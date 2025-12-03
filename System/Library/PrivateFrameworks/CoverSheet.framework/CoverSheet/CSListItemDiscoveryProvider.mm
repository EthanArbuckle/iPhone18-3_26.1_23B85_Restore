@interface CSListItemDiscoveryProvider
- (CSListItemDiscoveryProvider)init;
- (CSListItemSection)section;
- (id)_customizeFocusDiscoveryViewWithDNDSemanticType:(int64_t)type;
- (id)_discoveryTypeForSuggestion:(id)suggestion;
- (id)_explorePostersDiscoveryItemViewControllerForPlatter:(id)platter firstDidAppearCompletion:(id)completion;
- (id)_explorePostersDiscoveryView;
- (id)_sleepMigrationDiscoveryView;
- (void)_handleDismissSuggestion:(id)suggestion type:(id)type;
- (void)_handleShowSuggestion:(id)suggestion type:(id)type isPrototyping:(BOOL)prototyping;
- (void)_presentPlatterDiscoveryView:(id)view discoveryItemViewController:(id)controller withSuggestion:(id)suggestion type:(id)type;
- (void)_prototypeTest_addItem;
- (void)_prototypeTest_registerRecipe;
- (void)_prototypeTest_removeItem;
- (void)_removeDiscoveryOfType:(id)type;
- (void)didReceiveUserEducationSuggestionEvent:(id)event;
- (void)handleRemovedItems:(id)items;
- (void)onboardingPlatter:(id)platter requestsModalPresentationOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
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

    mEMORY[0x277CEB920] = [MEMORY[0x277CEB920] sharedInstance];
    [mEMORY[0x277CEB920] registerObserver:v2];

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
    discoverySuggestion = [v3 discoverySuggestion];
    mEMORY[0x277CEB920] = [MEMORY[0x277CEB920] sharedInstance];
    v7 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:discoverySuggestion feedbackType:9];
    [mEMORY[0x277CEB920] logUserEducationSuggestionFeedback:v7];

    v8 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CSListItemDiscoveryProvider_willPresentPosterSwitcher__block_invoke;
    block[3] = &unk_27838B770;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

- (void)handleRemovedItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        identifier = [*(*(&v14 + 1) + 8 * v8) identifier];
        v10 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:identifier];
        discoverySuggestion = [v10 discoverySuggestion];

        if (discoverySuggestion)
        {
          mEMORY[0x277CEB920] = [MEMORY[0x277CEB920] sharedInstance];
          v13 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:discoverySuggestion feedbackType:3];
          [mEMORY[0x277CEB920] logUserEducationSuggestionFeedback:v13];
        }

        [(CSListItemDiscoveryProvider *)self _removeDiscoveryOfType:identifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)didReceiveUserEducationSuggestionEvent:(id)event
{
  eventCopy = event;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CSListItemDiscoveryProvider_didReceiveUserEducationSuggestionEvent___block_invoke;
  v6[3] = &unk_27838C438;
  objc_copyWeak(&v9, &location);
  v7 = eventCopy;
  selfCopy = self;
  v5 = eventCopy;
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

- (void)_handleShowSuggestion:(id)suggestion type:(id)type isPrototyping:(BOOL)prototyping
{
  prototypingCopy = prototyping;
  v39 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  typeCopy = type;
  v10 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:typeCopy];

  if (!v10)
  {
    v14 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems count];
    if ([(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems count]== 1)
    {
      allKeys = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
      firstObject = [allKeys firstObject];
    }

    else
    {
      firstObject = 0;
    }

    if ([firstObject isEqualToString:@"CSListItemDiscoveryTypeSleepMigration"])
    {
      v16 = 1;
    }

    else
    {
      v16 = [firstObject isEqualToString:@"CSListItemDiscoveryTypeCustomizeFocus"];
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __72__CSListItemDiscoveryProvider__handleShowSuggestion_type_isPrototyping___block_invoke;
    v33[3] = &unk_27838B770;
    v17 = suggestionCopy;
    v34 = v17;
    v18 = MEMORY[0x223D698D0](v33);
    v19 = (v14 == 0) | v16 | prototypingCopy;
    if ([typeCopy isEqualToString:@"CSListItemDiscoveryTypeSleepMigration"] && (v19 & 1) != 0)
    {
      _sleepMigrationDiscoveryView = [(CSListItemDiscoveryProvider *)self _sleepMigrationDiscoveryView];
    }

    else
    {
      if (([typeCopy isEqualToString:@"CSListItemDiscoveryTypeCustomizeFocus"] & v19) != 1)
      {
        v25 = [typeCopy isEqualToString:@"CSListItemDiscoveryTypeExplorePosters"];
        v13 = 0;
        if (v14)
        {
          v26 = prototypingCopy;
        }

        else
        {
          v26 = 1;
        }

        if (v25)
        {
          if (v26)
          {
            _explorePostersDiscoveryView = [(CSListItemDiscoveryProvider *)self _explorePostersDiscoveryView];
            v13 = [(CSListItemDiscoveryProvider *)self _explorePostersDiscoveryItemViewControllerForPlatter:_explorePostersDiscoveryView firstDidAppearCompletion:v18];
            if (_explorePostersDiscoveryView)
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
        activeModeConfiguration = [v30 activeModeConfiguration];
        mode = [activeModeConfiguration mode];

        if (mode)
        {
          _explorePostersDiscoveryView = -[CSListItemDiscoveryProvider _customizeFocusDiscoveryViewWithDNDSemanticType:](self, "_customizeFocusDiscoveryViewWithDNDSemanticType:", [mode semanticType]);
        }

        else
        {
          _explorePostersDiscoveryView = 0;
        }

LABEL_16:
        v13 = 0;
        if (_explorePostersDiscoveryView)
        {
LABEL_17:
          v22 = SBLogDashBoard();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = typeCopy;
            _os_log_impl(&dword_21EB05000, v22, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will appear.", buf, 0xCu);
          }

          if (v17)
          {
            mEMORY[0x277CEB920] = [MEMORY[0x277CEB920] sharedInstance];
            v24 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v17 feedbackType:0];
            [mEMORY[0x277CEB920] logUserEducationSuggestionFeedback:v24];
          }

          if (!v13)
          {
            v13 = [[CSDiscoveryItemViewController alloc] initWithPlatterDiscoveryView:_explorePostersDiscoveryView firstDidAppearCompletion:v18];
          }

          [(CSListItemDiscoveryProvider *)self _presentPlatterDiscoveryView:_explorePostersDiscoveryView discoveryItemViewController:v13 withSuggestion:v17 type:typeCopy];
          goto LABEL_37;
        }

LABEL_33:
        v27 = SBLogDashBoard();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          discoveryTypeToDiscoverySuggestionAndListItems = self->_discoveryTypeToDiscoverySuggestionAndListItems;
          *buf = 138543618;
          v36 = typeCopy;
          v37 = 2114;
          v38 = discoveryTypeToDiscoverySuggestionAndListItems;
          _os_log_impl(&dword_21EB05000, v27, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will not show. Other suggestions: %{public}@ ", buf, 0x16u);
        }

        if (!v17)
        {
          goto LABEL_38;
        }

        _explorePostersDiscoveryView = [MEMORY[0x277CEB920] sharedInstance];
        v29 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:v17 feedbackType:5];
        [_explorePostersDiscoveryView logUserEducationSuggestionFeedback:v29];

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      _sleepMigrationDiscoveryView = -[CSListItemDiscoveryProvider _customizeFocusDiscoveryViewWithDNDSemanticType:](self, "_customizeFocusDiscoveryViewWithDNDSemanticType:", [v17 modeSemanticType]);
    }

    _explorePostersDiscoveryView = _sleepMigrationDiscoveryView;
    goto LABEL_16;
  }

  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = typeCopy;
    _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Discovery UI, type: '%{public}@']: Will not show because this type is currently presented. ", buf, 0xCu);
  }

  if (suggestionCopy)
  {
    firstObject = [MEMORY[0x277CEB920] sharedInstance];
    v13 = [objc_alloc(MEMORY[0x277CEB948]) initWithUserEducationSuggestion:suggestionCopy feedbackType:5];
    [firstObject logUserEducationSuggestionFeedback:v13];
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

- (void)_handleDismissSuggestion:(id)suggestion type:(id)type
{
  v9 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (typeCopy)
  {
    [(CSListItemDiscoveryProvider *)self _removeDiscoveryOfType:typeCopy];
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = typeCopy;
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

- (id)_discoveryTypeForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
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

- (void)_presentPlatterDiscoveryView:(id)view discoveryItemViewController:(id)controller withSuggestion:(id)suggestion type:(id)type
{
  viewCopy = view;
  controllerCopy = controller;
  suggestionCopy = suggestion;
  typeCopy = type;
  v13 = [[CSListItem alloc] initWithIdentifier:typeCopy groupingIdentifier:typeCopy sectionIdentifier:@"Discovery"];
  v26 = objc_alloc_init(MEMORY[0x277D78068]);
  v14 = objc_alloc_init(CSDiscoverySuggestionAndListItemTuple);
  [(CSDiscoverySuggestionAndListItemTuple *)v14 setListItem:v13];
  [(CSDiscoverySuggestionAndListItemTuple *)v14 setDiscoverySuggestion:suggestionCopy];
  [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems setObject:v14 forKey:typeCopy];
  objc_initWeak(location, self);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  defaultAction = [viewCopy defaultAction];
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
    v32 = typeCopy;
    v33 = v14;
    v34 = suggestionCopy;
    selfCopy = self;
    v36 = v13;
    v38 = &v40;
    v37 = controllerCopy;
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
  v22 = typeCopy;
  v28 = v22;
  v23 = suggestionCopy;
  v29 = v23;
  v24 = [v19 actionWithTitle:v21 image:0 identifier:0 handler:v27];

  [viewCopy setClearAction:v24];
  [viewCopy setUsesBackgroundView:0];
  [v26 setMaterialRecipe:{objc_msgSend(viewCopy, "materialRecipe")}];
  [(CSListItem *)v13 setConfiguration:v26];
  [(CSListItem *)v13 setContentHost:controllerCopy];
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

- (void)_removeDiscoveryOfType:(id)type
{
  typeCopy = type;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CSListItemDiscoveryProvider__removeDiscoveryOfType___block_invoke;
  v6[3] = &unk_27838B838;
  v6[4] = self;
  v7 = typeCopy;
  v5 = typeCopy;
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

- (id)_customizeFocusDiscoveryViewWithDNDSemanticType:(int64_t)type
{
  v5 = [(DNDStateService *)self->_stateService queryCurrentStateWithError:0];
  activeModeConfiguration = [v5 activeModeConfiguration];
  mode = [activeModeConfiguration mode];

  if (mode && [mode semanticType] == type)
  {
    v8 = [MEMORY[0x277D0AA20] onboardingPlatterDiscoveryViewForMode:mode];
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

- (id)_explorePostersDiscoveryItemViewControllerForPlatter:(id)platter firstDidAppearCompletion:(id)completion
{
  completionCopy = completion;
  platterCopy = platter;
  v7 = [[CSDiscoveryItemExplorePostersViewController alloc] initWithPlatter:platterCopy firstDidAppearCompletion:completionCopy];

  return v7;
}

- (void)onboardingPlatter:(id)platter requestsModalPresentationOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  discoveryTypeToDiscoverySuggestionAndListItems = self->_discoveryTypeToDiscoverySuggestionAndListItems;
  completionCopy = completion;
  controllerCopy = controller;
  v12 = [(NSMutableDictionary *)discoveryTypeToDiscoverySuggestionAndListItems objectForKey:@"CSListItemDiscoveryTypeCustomizeFocus"];
  listItem = [v12 listItem];

  [(CSListItemManaging *)self->_itemManager item:listItem requestsModalPresentationOfViewController:controllerCopy animated:animatedCopy completion:completionCopy];
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
    allKeys = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
    firstObject = [allKeys firstObject];

    [(CSListItemDiscoveryProvider *)self _handleDismissSuggestion:0 type:firstObject];
  }
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v41 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  state = [updateCopy state];
  activeModeConfiguration = [state activeModeConfiguration];
  mode = [activeModeConfiguration mode];

  v31 = updateCopy;
  previousState = [updateCopy previousState];
  activeModeConfiguration2 = [previousState activeModeConfiguration];
  mode2 = [activeModeConfiguration2 mode];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allKeys = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    v32 = *v35;
    v33 = mode;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if (mode)
        {
          semanticType = [mode2 semanticType];
          if (semanticType == [mode semanticType])
          {
            v19 = [(NSMutableDictionary *)self->_discoveryTypeToDiscoverySuggestionAndListItems objectForKey:v17];
            discoverySuggestion = [v19 discoverySuggestion];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_13;
            }

            v21 = discoverySuggestion;
            v22 = allKeys;
            selfCopy = self;
            v24 = mode2;
            semanticType2 = [mode semanticType];
            v26 = v14;
            modeSemanticType = [v21 modeSemanticType];

            v28 = semanticType2 == modeSemanticType;
            v14 = v26;
            mode2 = v24;
            self = selfCopy;
            allKeys = v22;
            v15 = v32;
            mode = v33;
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
      v30 = [allKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
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