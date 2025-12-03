@interface CSActivityManager
+ (id)sharedInstance;
- (BOOL)_clockActivityExistsForGroupingIdentifier:(id)identifier;
- (BOOL)_itemIsNowPlaying:(id)playing;
- (BOOL)_shouldHandleActivityWithContentUpdate:(id)update;
- (BOOL)_shouldSetDefaultBackgroundForViewController:(id)controller;
- (BOOL)activityViewController:(id)controller didReceiveAction:(id)action;
- (CSActivityManager)init;
- (CSListItemSection)section;
- (double)_relevanceScoreForItemWithViewController:(id)controller;
- (id)_appNameForBundleIdentifier:(id)identifier;
- (id)_authorizationActionsForOptionsType:(int64_t)type item:(id)item configuration:(id)configuration;
- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)style;
- (id)_buildConfigurationFromViewController:(id)controller;
- (id)_createdDateForItemWithViewController:(id)controller;
- (id)_currentSupplementaryItemDescriptions;
- (id)_latestActivityCreationDateForGroupingIdentifier:(id)identifier;
- (id)_primaryActionTitleForAuthorizationOptionsType:(int64_t)type;
- (id)_secondaryActionTitleForAuthorizationOptionsType:(int64_t)type;
- (id)_summaryTextForAuthorizationOptionsType:(int64_t)type appName:(id)name;
- (id)_textColorForUserInterfaceStyle:(int64_t)style;
- (id)iconZoomingViewForActivityIdentifier:(id)identifier;
- (id)itemsGroupSortComparator;
- (id)itemsViewControllerSortComparator;
- (void)_addActivityListItemForContentUpdate:(id)update;
- (void)_addAppActivitiesRecordForBundleId:(id)id activityItem:(id)item;
- (void)_clearAuthorizationOptionsIfNecessaryForGroupingIdentifier:(id)identifier;
- (void)_endAllActivitiesForBundleId:(id)id;
- (void)_handleActivityExceedingReducedPushBudgetWithIdentifier:(id)identifier;
- (void)_hostShouldCancelTouchesWithIdentifier:(id)identifier;
- (void)_removeActivityWithContentUpdate:(id)update;
- (void)_removeAppActivitiesRecordForBundleId:(id)id activityItem:(id)item;
- (void)_setActivitiesEnabled:(BOOL)enabled forBundleId:(id)id;
- (void)_setFrequentUpdatesEnabled:(BOOL)enabled forBundleId:(id)id;
- (void)_setHidden:(BOOL)hidden forItem:(id)item;
- (void)_significantUserInteractionBeganForIdentifier:(id)identifier;
- (void)_significantUserInteractionEndedForIdentifier:(id)identifier;
- (void)_unlockAndLaunchAppIfPossible:(id)possible withAction:(id)action;
- (void)_updateActivityIfNeededWithContentUpdate:(id)update;
- (void)_updateAllApplicationMonitoringPolicies;
- (void)_updateForScreenTimeLimitForBundleId:(id)id policy:(id)policy;
- (void)activityViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)activityViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change;
- (void)activityViewControllerBackgroundTintColorDidChange:(id)change;
- (void)activityViewControllerHostShouldCancelTouches:(id)touches;
- (void)activityViewControllerSignificantUserInteractionBegan:(id)began;
- (void)activityViewControllerSignificantUserInteractionEnded:(id)ended;
- (void)activityViewControllerTextColorDidChange:(id)change;
- (void)addActivityWithContentUpdate:(id)update;
- (void)dealloc;
- (void)handleActivityExceedingReducedPushBudgetForIdentifier:(id)identifier;
- (void)handleRemovedItems:(id)items;
- (void)removeActivityWithContentUpdate:(id)update;
- (void)restrictsTouches:(BOOL)touches onHostedSceneInViewController:(id)controller;
- (void)restrictsTouchesOnAllHostedScenes:(BOOL)scenes;
- (void)setActivityHidden:(BOOL)hidden forIdentifier:(id)identifier;
- (void)updateActivityWithContentUpdate:(id)update;
@end

@implementation CSActivityManager

- (CSActivityManager)init
{
  v16.receiver = self;
  v16.super_class = CSActivityManager;
  v2 = [(CSActivityManager *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activityIdentifiersToSupplemantaryItems = v2->_activityIdentifiersToSupplemantaryItems;
    v2->_activityIdentifiersToSupplemantaryItems = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activityItemsByBundleId = v2->_activityItemsByBundleId;
    v2->_activityItemsByBundleId = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hiddenItems = v2->_hiddenItems;
    v2->_hiddenItems = v7;

    v9 = objc_opt_new();
    descriptorByActivityIdentifier = v2->_descriptorByActivityIdentifier;
    v2->_descriptorByActivityIdentifier = v9;

    v11 = objc_opt_new();
    activityViewControllersByActivityIdentifier = v2->_activityViewControllersByActivityIdentifier;
    v2->_activityViewControllersByActivityIdentifier = v11;

    v13 = objc_opt_new();
    activityCenter = v2->_activityCenter;
    v2->_activityCenter = v13;
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_descriptorByActivityIdentifier removeAllObjects];
  descriptorByActivityIdentifier = self->_descriptorByActivityIdentifier;
  self->_descriptorByActivityIdentifier = 0;

  [(NSMutableDictionary *)self->_activityViewControllersByActivityIdentifier removeAllObjects];
  activityViewControllersByActivityIdentifier = self->_activityViewControllersByActivityIdentifier;
  self->_activityViewControllersByActivityIdentifier = 0;

  v5.receiver = self;
  v5.super_class = CSActivityManager;
  [(CSActivityManager *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[CSActivityManager sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __35__CSActivityManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSActivityManager);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)addActivityWithContentUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [updateCopy identifier];
    descriptor = [updateCopy descriptor];
    platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
    v9 = 138412546;
    v10 = identifier;
    v11 = 2112;
    v12 = platterTargetBundleIdentifier;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Activity started: %@, platter target: %@", &v9, 0x16u);
  }

  if ([(CSActivityManager *)self _shouldHandleActivityWithContentUpdate:updateCopy])
  {
    [(CSActivityManager *)self _addActivityWithContentUpdate:updateCopy];
  }
}

- (void)updateActivityWithContentUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [updateCopy identifier];
    descriptor = [updateCopy descriptor];
    platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
    v9 = 138412546;
    v10 = identifier;
    v11 = 2112;
    v12 = platterTargetBundleIdentifier;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Activity updated: %@, platter target: %@", &v9, 0x16u);
  }

  if ([(CSActivityManager *)self _shouldHandleActivityWithContentUpdate:updateCopy])
  {
    [(CSActivityManager *)self _updateActivityIfNeededWithContentUpdate:updateCopy];
  }
}

- (void)removeActivityWithContentUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [updateCopy identifier];
    descriptor = [updateCopy descriptor];
    platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
    v9 = 138412546;
    v10 = identifier;
    v11 = 2112;
    v12 = platterTargetBundleIdentifier;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Activity dismissed: %@, platter target: %@", &v9, 0x16u);
  }

  if ([(CSActivityManager *)self _shouldHandleActivityWithContentUpdate:updateCopy])
  {
    [(CSActivityManager *)self _removeActivityWithContentUpdate:updateCopy];
  }
}

- (void)setActivityHidden:(BOOL)hidden forIdentifier:(id)identifier
{
  hiddenCopy = hidden;
  v6 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];
  [(CSActivityManager *)self _setHidden:hiddenCopy forItem:v6];
}

- (void)handleActivityExceedingReducedPushBudgetForIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Activity exceeded reduced push budget: %@", &v6, 0xCu);
  }

  [(CSActivityManager *)self _handleActivityExceedingReducedPushBudgetWithIdentifier:identifierCopy];
}

- (id)iconZoomingViewForActivityIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];
  v5 = v4;
  if (v4)
  {
    identifier = [v4 identifier];
    v7 = [(NSMutableDictionary *)self->_activityViewControllersByActivityIdentifier objectForKey:identifier];
    view = [v7 view];
    v9 = objc_opt_class();
    v10 = view;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CSListItemSection)section
{
  v2 = [[CSListItemSection alloc] initWithIdentifier:@"LiveActivities"];

  return v2;
}

- (void)handleRemovedItems:(id)items
{
  v16 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        identifier = [*(*(&v11 + 1) + 8 * v8) identifier];
        v10 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];

        if (v10)
        {
          [(ACActivityCenter *)self->_activityCenter endActivity:identifier];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)itemsGroupSortComparator
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CSActivityManager_itemsGroupSortComparator__block_invoke;
  v4[3] = &unk_27838DC98;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x223D698D0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

uint64_t __45__CSActivityManager_itemsGroupSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && ([v5 isEqualToString:v6] & 1) == 0)
  {
    v10 = [&unk_28307A190 indexOfObject:v5];
    v11 = [&unk_28307A190 indexOfObject:v6];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [WeakRetained _latestActivityCreationDateForGroupingIdentifier:v5];
          v13 = [WeakRetained _latestActivityCreationDateForGroupingIdentifier:v6];
          v14 = [WeakRetained _clockActivityExistsForGroupingIdentifier:v5];
          v15 = [WeakRetained _clockActivityExistsForGroupingIdentifier:v6];
          if (!v14 || v15)
          {
            if (v14 & 1 | ((v15 & 1) == 0))
            {
              v8 = [v12 compare:v13];
            }

            else
            {
              v8 = 1;
            }
          }

          else
          {
            v8 = -1;
          }
        }

        else
        {
          v8 = -1;
        }
      }

      else if (v11 < v10)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)itemsViewControllerSortComparator
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__CSActivityManager_itemsViewControllerSortComparator__block_invoke;
  v4[3] = &unk_27838DCC0;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x223D698D0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

uint64_t __54__CSActivityManager_itemsViewControllerSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _relevanceScoreForItemWithViewController:v5];
    v10 = v9;
    [v8 _relevanceScoreForItemWithViewController:v6];
    if (v10 >= v11)
    {
      if (v10 == v11)
      {
        v13 = [v8 _createdDateForItemWithViewController:v5];
        v14 = [v8 _createdDateForItemWithViewController:v6];
        v15 = v14;
        v12 = 0;
        if (v13 && v14)
        {
          v12 = [v13 compare:v14];
        }
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)restrictsTouches:(BOOL)touches onHostedSceneInViewController:(id)controller
{
  touchesCopy = touches;
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSMutableDictionary *)self->_activityItemsByBundleId allValues];
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              contentHost = [v13 contentHost];
              if (contentHost == controllerCopy)
              {
                contentHost2 = [v13 contentHost];
                v16 = objc_opt_respondsToSelector();

                if ((v16 & 1) == 0)
                {
                  continue;
                }

                contentHost = [v13 contentHost];
                [contentHost setRestrictsTouchesOnHostedScene:touchesCopy];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }

        v6 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }
}

- (void)restrictsTouchesOnAllHostedScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activityIdentifiersToSupplemantaryItems = [(CSActivityManager *)self activityIdentifiersToSupplemantaryItems];
  allValues = [activityIdentifiersToSupplemantaryItems allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        contentHost = [v10 contentHost];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          contentHost2 = [v10 contentHost];
          [contentHost2 setRestrictsTouchesOnHostedScene:scenesCopy];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)activityViewController:(id)controller requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  hostViewController = [controller hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityDescriptor = [activitySceneDescriptor activityDescriptor];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__CSActivityManager_activityViewController_requestsLaunchWithAction___block_invoke;
  v11[3] = &unk_27838DCE8;
  v12 = activityDescriptor;
  v10 = activityDescriptor;
  [(CSActivityManager *)self _sendAnalyticsEventWithName:@"com.apple.activitykit.activity" payloadBuilder:v11];
  [(CSActivityManager *)self _unlockAndLaunchAppIfPossible:hostViewController withAction:actionCopy];
}

id __69__CSActivityManager_activityViewController_requestsLaunchWithAction___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"activityId";
  v2 = [*(a1 + 32) activityIdentifier];
  v7[0] = v2;
  v6[1] = @"bundleId";
  v3 = [*(a1 + 32) platterTargetBundleIdentifier];
  v6[2] = @"eventType";
  v7[1] = v3;
  v7[2] = @"appLaunch-platter";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (BOOL)activityViewController:(id)controller didReceiveAction:(id)action
{
  v46 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  actionCopy = action;
  hostViewController = [controllerCopy hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  v31 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:activityIdentifier];
  if (!v31)
  {
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = actionCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9 || [v9 event])
  {

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  configuration = [v31 configuration];
  v13 = objc_opt_class();
  v14 = configuration;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  title = [v9 title];
  [v16 setAuxiliaryOptionsSummaryText:title];

  array = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v9 buttons];
  v19 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v19)
  {
    v20 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        objc_initWeak(&location, self);
        objc_initWeak(&from, v31);
        objc_initWeak(&v38, v16);
        v23 = MEMORY[0x277D750C8];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__CSActivityManager_activityViewController_didReceiveAction___block_invoke;
        v32[3] = &unk_27838DD10;
        objc_copyWeak(&v35, &location);
        objc_copyWeak(&v36, &from);
        objc_copyWeak(&v37, &v38);
        v33 = v9;
        v34 = v22;
        v24 = [v23 actionWithTitle:v22 image:0 identifier:0 handler:v32];
        [array addObject:v24];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&v36);
        objc_destroyWeak(&v35);
        objc_destroyWeak(&v38);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      v19 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v19);
  }

  [v16 setAuxiliaryOptionActions:array];
  [v31 setConfiguration:v16];
  [(CSListItemManaging *)self->_itemManager updateItem:v31];

  v10 = 1;
LABEL_11:

  return v10;
}

void __61__CSActivityManager_activityViewController_didReceiveAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && v2 && v3)
  {
    [*(a1 + 32) handleButtonTap:*(a1 + 40)];
    [v3 setAuxiliaryOptionActions:0];
    [v3 setAuxiliaryOptionsSummaryText:0];
    [v2 setConfiguration:v3];
    v4 = [WeakRetained itemManager];
    [v4 updateItem:v2];
  }
}

- (void)activityViewControllerBackgroundTintColorDidChange:(id)change
{
  changeCopy = change;
  hostViewController = [changeCopy hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  v8 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:activityIdentifier];
  v9 = v8;
  if (v8)
  {
    configuration = [v8 configuration];
    v11 = objc_opt_class();
    v12 = configuration;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
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

    v14 = v13;

    backgroundTintColor = [hostViewController backgroundTintColor];
    textColor = [hostViewController textColor];
    if ([(CSActivityManager *)self _shouldSetDefaultBackgroundForViewController:hostViewController])
    {
      traitCollection = [changeCopy traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v19 = [(CSActivityManager *)self _backgroundTintColorForUserInterfaceStyle:userInterfaceStyle];

      v20 = [(CSActivityManager *)self _textColorForUserInterfaceStyle:userInterfaceStyle];

      textColor = v20;
      backgroundTintColor = v19;
    }

    [v14 setTintColor:backgroundTintColor];
    [v14 setTextColor:textColor];
    [v9 setConfiguration:v14];
    v21 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(CSActivityManager *)activityIdentifier activityViewControllerBackgroundTintColorDidChange:v9];
    }

    [(CSListItemManaging *)self->_itemManager updateItem:v9];
  }
}

- (void)activityViewControllerTextColorDidChange:(id)change
{
  changeCopy = change;
  hostViewController = [changeCopy hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  v8 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:activityIdentifier];
  v9 = v8;
  if (v8)
  {
    configuration = [v8 configuration];
    v11 = objc_opt_class();
    v12 = configuration;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
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

    v14 = v13;

    textColor = [hostViewController textColor];
    if (!textColor)
    {
      if ([(CSActivityManager *)self _shouldSetDefaultBackgroundForViewController:hostViewController])
      {
        traitCollection = [changeCopy traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        textColor = [(CSActivityManager *)self _textColorForUserInterfaceStyle:userInterfaceStyle];
      }

      else
      {
        textColor = 0;
      }
    }

    [v14 setTextColor:textColor];
    [v9 setConfiguration:v14];
    v18 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(CSActivityManager *)activityIdentifier activityViewControllerTextColorDidChange:v9];
    }

    [(CSListItemManaging *)self->_itemManager updateItem:v9];
  }
}

- (void)activityViewControllerHostShouldCancelTouches:(id)touches
{
  hostViewController = [touches hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  [(CSActivityManager *)self _hostShouldCancelTouchesWithIdentifier:activityIdentifier];
}

- (void)activityViewControllerSignificantUserInteractionBegan:(id)began
{
  hostViewController = [began hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  [(CSActivityManager *)self _significantUserInteractionBeganForIdentifier:activityIdentifier];
}

- (void)activityViewControllerSignificantUserInteractionEnded:(id)ended
{
  hostViewController = [ended hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  [(CSActivityManager *)self _significantUserInteractionEndedForIdentifier:activityIdentifier];
}

- (void)activityViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  hostViewController = [change hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityIdentifier = [activitySceneDescriptor activityIdentifier];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  activityIdentifiersToSupplemantaryItems = [(CSActivityManager *)self activityIdentifiersToSupplemantaryItems];
  allValues = [activityIdentifiersToSupplemantaryItems allValues];

  v10 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        identifier = [v14 identifier];
        v16 = [identifier isEqualToString:activityIdentifier];

        if (v16)
        {
          contentHost = [v14 contentHost];
          v18 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = NSStringFromSelector(a2);
            [contentHost reevaluateAudioCategoriesDisablingVolumeHUDForReason:v20];
          }
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_hostShouldCancelTouchesWithIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:identifier];
  [(CSListItemManaging *)self->_itemManager cancelTouchesForItem:v4];
}

- (void)_significantUserInteractionBeganForIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:identifier];
  [(CSListItemManaging *)self->_itemManager significantUserInteractionBeganForItem:v4];
}

- (void)_significantUserInteractionEndedForIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:identifier];
  [(CSListItemManaging *)self->_itemManager significantUserInteractionEndedForItem:v4];
}

- (void)_unlockAndLaunchAppIfPossible:(id)possible withAction:(id)action
{
  v30[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  possibleCopy = possible;
  activityIdentifier = [possibleCopy activityIdentifier];
  activitySceneDescriptor = [possibleCopy activitySceneDescriptor];

  activityDescriptor = [activitySceneDescriptor activityDescriptor];
  platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];

  if (platterTargetBundleIdentifier)
  {
    v11 = MEMORY[0x277D0AD60];
    v29[0] = *MEMORY[0x277D0ABD0];
    if (actionCopy)
    {
      v28 = actionCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    v14 = *MEMORY[0x277D0AC58];
    v30[0] = v12;
    v30[1] = MEMORY[0x277CBEC38];
    v15 = *MEMORY[0x277D0AC70];
    v29[1] = v14;
    v29[2] = v15;
    v30[2] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v13 = [v11 optionsWithDictionary:v16];

    if (actionCopy)
    {
    }

    v17 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543875;
      v23 = activityIdentifier;
      v24 = 2114;
      v25 = platterTargetBundleIdentifier;
      v26 = 2113;
      v27 = actionCopy;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Sending open application request for %{private}@", buf, 0x20u);
    }

    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__CSActivityManager__unlockAndLaunchAppIfPossible_withAction___block_invoke;
    v19[3] = &unk_27838DD38;
    v20 = activityIdentifier;
    v21 = platterTargetBundleIdentifier;
    [serviceWithDefaultShellEndpoint openApplication:v21 withOptions:v13 completion:v19];
  }

  else
  {
    v13 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CSActivityManager _unlockAndLaunchAppIfPossible:activityIdentifier withAction:v13];
    }
  }
}

void __62__CSActivityManager__unlockAndLaunchAppIfPossible_withAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheetActivities();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__CSActivityManager__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Open application succeeded.", &v9, 0x16u);
  }
}

- (id)_currentSupplementaryItemDescriptions
{
  v3 = objc_opt_new();
  activityIdentifiersToSupplemantaryItems = self->_activityIdentifiersToSupplemantaryItems;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CSActivityManager__currentSupplementaryItemDescriptions__block_invoke;
  v8[3] = &unk_27838DD60;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)activityIdentifiersToSupplemantaryItems bs_each:v8];
  v6 = [v5 debugDescription];

  return v6;
}

void __58__CSActivityManager__currentSupplementaryItemDescriptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v8 = [v5 description];
  v6 = [v5 contentHost];

  v7 = [v4 stringWithFormat:@"Supplementary item: %@, content host: %@", v8, v6];
  [v3 addObject:v7];
}

- (void)_removeActivityWithContentUpdate:(id)update
{
  v28 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  identifier = [updateCopy identifier];
  descriptor = [updateCopy descriptor];

  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v8 = [(NSMutableDictionary *)self->_activityViewControllersByActivityIdentifier objectForKey:identifier];
  if (v8)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = identifier;
      v22 = 2114;
      v23 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] finished, removing from the list...", &v20, 0x16u);
    }

    v10 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = identifier;
      v22 = 2114;
      v23 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] removes activity view controller from CoverSheet", &v20, 0x16u);
    }

    v11 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _currentSupplementaryItemDescriptions = [(CSActivityManager *)self _currentSupplementaryItemDescriptions];
      v20 = 138543874;
      v21 = identifier;
      v22 = 2114;
      v23 = platterTargetBundleIdentifier;
      v24 = 2112;
      v25 = _currentSupplementaryItemDescriptions;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Current supplementary items before removal: %@", &v20, 0x20u);
    }

    v13 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];
    v14 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];

    v15 = SBLogCoverSheetActivities();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = [v13 description];
        contentHost = [v13 contentHost];
        v20 = 138544130;
        v21 = identifier;
        v22 = 2114;
        v23 = platterTargetBundleIdentifier;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = contentHost;
        _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Activity item is getting removed: %@, Content Host: %@", &v20, 0x2Au);
      }

      [(CSListItemManaging *)self->_itemManager removeItem:v13];
      [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems removeObjectForKey:identifier];
      [v8 invalidate];
      if ([(CSActivityManager *)self _itemIsNowPlaying:v13])
      {
        [(CSListItemManaging *)self->_itemManager setNowPlayingItem:0];
      }

      v15 = [(NSMutableDictionary *)self->_descriptorByActivityIdentifier objectForKey:identifier];
      platterTargetBundleIdentifier2 = [v15 platterTargetBundleIdentifier];
      [(CSActivityManager *)self _removeAppActivitiesRecordForBundleId:platterTargetBundleIdentifier2 activityItem:v13];
    }

    else if (v16)
    {
      v20 = 138543618;
      v21 = identifier;
      v22 = 2114;
      v23 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] No supplemantary item found to remove", &v20, 0x16u);
    }

    [v8 invalidate];
    [(NSMutableDictionary *)self->_descriptorByActivityIdentifier removeObjectForKey:identifier];
    [(NSMutableDictionary *)self->_activityViewControllersByActivityIdentifier removeObjectForKey:identifier];
  }

  else
  {
    v13 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = identifier;
      v22 = 2114;
      v23 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] found no activity view controller to remove in CoverSheet", &v20, 0x16u);
    }
  }
}

- (void)_updateActivityIfNeededWithContentUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  identifier = [updateCopy identifier];
  v6 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKeyedSubscript:identifier];
  content = [updateCopy content];
  [content relevanceScore];
  v9 = v8;

  [v6 relevanceScore];
  if (v10 != v9)
  {
    v11 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      descriptor = [updateCopy descriptor];
      platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
      v14 = 138544130;
      v15 = identifier;
      v16 = 2114;
      v17 = platterTargetBundleIdentifier;
      v18 = 2114;
      v19 = v6;
      v20 = 2050;
      v21 = v9;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Relevance score did change: %{public}@ to %{public}f", &v14, 0x2Au);
    }

    [v6 setRelevanceScore:v9];
    [(CSListItemManaging *)self->_itemManager updateItem:v6];
  }
}

- (void)_addActivityListItemForContentUpdate:(id)update
{
  v39 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  identifier = [updateCopy identifier];
  descriptor = [updateCopy descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v8 = [(NSMutableDictionary *)self->_activityViewControllersByActivityIdentifier objectForKey:identifier];
  v9 = SBLogCoverSheetActivities();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138543618;
      v36 = identifier;
      v37 = 2114;
      v38 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Has already a host view controller in CoverSheet, updating activity if needed", buf, 0x16u);
    }

    [(CSActivityManager *)self _updateActivityIfNeededWithContentUpdate:updateCopy];
  }

  else
  {
    if (v10)
    {
      *buf = 138543618;
      v36 = identifier;
      v37 = 2114;
      v38 = platterTargetBundleIdentifier;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Creating activity view controller", buf, 0x16u);
    }

    descriptor2 = [updateCopy descriptor];
    [(NSMutableDictionary *)self->_descriptorByActivityIdentifier setObject:descriptor2 forKey:identifier];
    platterTargetBundleIdentifier2 = [descriptor2 platterTargetBundleIdentifier];
    v12 = [[CSActivityListItemViewController alloc] initWithDescriptor:descriptor2];
    [(CSActivityViewController *)v12 setHostDelegate:self];
    [(CSActivityViewController *)v12 setSceneHostEnvironmentObserver:self];
    objc_initWeak(&location, self);
    v34 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__CSActivityManager__addActivityListItemForContentUpdate___block_invoke;
    v31[3] = &unk_27838DD88;
    objc_copyWeak(&v32, &location);
    v14 = [(CSActivityListItemViewController *)v12 registerForTraitChanges:v13 withHandler:v31];

    v15 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      _currentSupplementaryItemDescriptions = [(CSActivityManager *)self _currentSupplementaryItemDescriptions];
      *buf = 138412290;
      v36 = _currentSupplementaryItemDescriptions;
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "Current supplementary items before addition: %@", buf, 0xCu);
    }

    v17 = MEMORY[0x277D85CD0];
    v18 = MEMORY[0x277D85CD0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__CSActivityManager__addActivityListItemForContentUpdate___block_invoke_52;
    v23[3] = &unk_27838DDB0;
    v24 = identifier;
    v25 = platterTargetBundleIdentifier;
    v19 = v12;
    v26 = v19;
    selfCopy = self;
    v20 = platterTargetBundleIdentifier2;
    v28 = v20;
    v29 = updateCopy;
    v21 = descriptor2;
    v30 = v21;
    [(CSActivityViewController *)v19 ensureContent:v17 queue:v23 completion:1.79769313e308];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void __58__CSActivityManager__addActivityListItemForContentUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityViewControllerBackgroundTintColorDidChange:v3];
}

void __58__CSActivityManager__addActivityListItemForContentUpdate___block_invoke_52(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  BSDispatchQueueAssertMain();
  if (v3)
  {
    v4 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = [v3 debugDescription];
      v36 = 138543874;
      v37 = v5;
      v38 = 2114;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Error ensuring content: %@, ending activity", &v36, 0x20u);
    }

    [*(a1 + 48) invalidate];
    [*(*(a1 + 56) + 48) removeObjectForKey:*(a1 + 32)];
    [*(*(a1 + 56) + 72) endActivity:*(a1 + 32)];
  }

  else if ([*(*(a1 + 56) + 72) isActivityActive:*(a1 + 32)])
  {
    v8 = [[CSListItem alloc] initWithIdentifier:*(a1 + 32) groupingIdentifier:*(a1 + 64) sectionIdentifier:@"LiveActivities"];
    v9 = [*(a1 + 48) hostViewController];
    v10 = [v9 activitySceneDescriptor];
    v11 = [v10 activityDescriptor];
    v12 = [v11 createdDate];
    [(CSListItem *)v8 setContentCreatedDate:v12];

    v13 = [*(a1 + 72) content];
    [v13 relevanceScore];
    [(CSListItem *)v8 setRelevanceScore:?];

    v14 = *(a1 + 56);
    v15 = [*(a1 + 48) hostViewController];
    v16 = [v14 _buildConfigurationFromViewController:v15];

    v17 = [*(a1 + 48) hostViewController];
    v18 = [v17 activitySceneDescriptor];
    v19 = [v18 activityDescriptor];
    v20 = [v19 presentationOptions];
    v21 = [v20 authorizationOptionsType];

    if (v21 != 3)
    {
      [*(a1 + 56) _clearAuthorizationOptionsIfNecessaryForGroupingIdentifier:*(a1 + 64)];
      v22 = [*(a1 + 56) _authorizationActionsForOptionsType:v21 item:v8 configuration:v16];
      [v16 setAuxiliaryOptionActions:v22];

      v23 = *(a1 + 56);
      v24 = [v23 _appNameForBundleIdentifier:*(a1 + 64)];
      v25 = [v23 _summaryTextForAuthorizationOptionsType:v21 appName:v24];
      [v16 setAuxiliaryOptionsSummaryText:v25];
    }

    [(CSListItem *)v8 setConfiguration:v16];
    [(CSListItem *)v8 setContentHost:*(a1 + 48)];
    v26 = [*(*(a1 + 56) + 16) objectForKey:*(a1 + 32)];

    if (!v26)
    {
      v27 = SBLogCoverSheetActivities();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        v30 = [(CSListItem *)v8 description];
        v31 = [(CSListItem *)v8 contentHost];
        v36 = 138544130;
        v37 = v28;
        v38 = 2114;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        _os_log_impl(&dword_21EB05000, v27, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Activity item is getting added: %@, Content Host: %@", &v36, 0x2Au);
      }

      [*(*(a1 + 56) + 16) setObject:v8 forKey:*(a1 + 32)];
      [*(*(a1 + 56) + 8) addItem:v8];
      if ([*(a1 + 56) _itemIsNowPlaying:v8])
      {
        [*(*(a1 + 56) + 8) setNowPlayingItem:v8];
      }
    }

    v32 = [*(a1 + 80) platterTargetBundleIdentifier];
    [*(a1 + 56) _addAppActivitiesRecordForBundleId:v32 activityItem:v8];
    [*(*(a1 + 56) + 48) setObject:*(a1 + 48) forKey:*(a1 + 32)];
  }

  else
  {
    v33 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36 = 138543618;
      v37 = v34;
      v38 = 2114;
      v39 = v35;
      _os_log_impl(&dword_21EB05000, v33, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Content is ensured but activity is not active anymore, invalidating", &v36, 0x16u);
    }

    [*(a1 + 48) invalidate];
    [*(*(a1 + 56) + 48) removeObjectForKey:*(a1 + 32)];
  }
}

- (void)_handleActivityExceedingReducedPushBudgetWithIdentifier:(id)identifier
{
  v13 = [(NSMutableDictionary *)self->_activityIdentifiersToSupplemantaryItems objectForKey:identifier];
  groupingIdentifier = [v13 groupingIdentifier];
  configuration = [v13 configuration];
  v6 = objc_opt_class();
  v7 = configuration;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(CSActivityManager *)self _authorizationActionsForOptionsType:2 item:v13 configuration:v9];
  [v9 setAuxiliaryOptionActions:v10];

  v11 = [(CSActivityManager *)self _appNameForBundleIdentifier:groupingIdentifier];
  v12 = [(CSActivityManager *)self _summaryTextForAuthorizationOptionsType:2 appName:v11];
  [v9 setAuxiliaryOptionsSummaryText:v12];

  [v13 setConfiguration:v9];
  [(CSListItemManaging *)self->_itemManager updateItem:v13];
}

- (id)_appNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    localizedName = [v4 localizedName];
  }

  else
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(CSActivityManager *)identifierCopy _appNameForBundleIdentifier:v7, v5];
    }

    localizedName = 0;
  }

  return localizedName;
}

- (BOOL)_shouldSetDefaultBackgroundForViewController:(id)controller
{
  controllerCopy = controller;
  activitySceneDescriptor = [controllerCopy activitySceneDescriptor];
  activityDescriptor = [activitySceneDescriptor activityDescriptor];
  contentType = [activityDescriptor contentType];

  backgroundTintColor = [controllerCopy backgroundTintColor];

  return (backgroundTintColor | contentType) == 0;
}

- (id)_buildConfigurationFromViewController:(id)controller
{
  controllerCopy = controller;
  activitySceneDescriptor = [controllerCopy activitySceneDescriptor];
  activityDescriptor = [activitySceneDescriptor activityDescriptor];
  platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];

  backgroundTintColor = [controllerCopy backgroundTintColor];
  textColor = [controllerCopy textColor];
  if ([(CSActivityManager *)self _shouldSetDefaultBackgroundForViewController:controllerCopy])
  {
    traitCollection = [controllerCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v12 = [(CSActivityManager *)self _backgroundTintColorForUserInterfaceStyle:userInterfaceStyle];

    v13 = [(CSActivityManager *)self _textColorForUserInterfaceStyle:userInterfaceStyle];

    textColor = v13;
    backgroundTintColor = v12;
  }

  v14 = objc_alloc_init(MEMORY[0x277D78068]);
  activitySceneDescriptor2 = [controllerCopy activitySceneDescriptor];
  activityDescriptor2 = [activitySceneDescriptor2 activityDescriptor];

  presentationOptions = [activityDescriptor2 presentationOptions];
  isUserDismissalAllowedOnLockScreen = [presentationOptions isUserDismissalAllowedOnLockScreen];

  if ((isUserDismissalAllowedOnLockScreen & 1) == 0)
  {
    [v14 setPreventsUserDismissal:1];
  }

  if (backgroundTintColor)
  {
    v19 = 22;
  }

  else
  {
    v19 = 1;
  }

  [v14 setGroupingIdentifier:platterTargetBundleIdentifier];
  [v14 setMaterialRecipe:v19];
  [v14 setTintColor:backgroundTintColor];
  [v14 setTextColor:textColor];
  v20 = [(CSActivityManager *)self _appNameForBundleIdentifier:platterTargetBundleIdentifier];
  [v14 setGroupName:v20];

  [v14 setContainsUnmanagedContent:1];

  return v14;
}

- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)style
{
  if (!style || style == 2)
  {
    self = [MEMORY[0x277D75348] systemBlackColor];
  }

  else if (style == 1)
  {
    self = [MEMORY[0x277D75348] systemWhiteColor];
  }

  return self;
}

- (id)_textColorForUserInterfaceStyle:(int64_t)style
{
  if (!style || style == 2)
  {
    self = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else if (style == 1)
  {
    self = [MEMORY[0x277D75348] systemBlackColor];
  }

  return self;
}

- (void)_setActivitiesEnabled:(BOOL)enabled forBundleId:(id)id
{
  enabledCopy = enabled;
  idCopy = id;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__CSActivityManager__setActivitiesEnabled_forBundleId___block_invoke;
  v12 = &unk_27838DDD8;
  v13 = idCopy;
  v14 = enabledCopy;
  v7 = idCopy;
  [(CSActivityManager *)self _sendAnalyticsEventWithName:@"com.apple.springboard.activityAuthorizationChange" payloadBuilder:&v9];
  v8 = objc_alloc_init(MEMORY[0x277CB9898]);
  [v8 setActivitiesEnabled:enabledCopy forBundleId:v7 source:{0, v9, v10, v11, v12}];
}

id __55__CSActivityManager__setActivitiesEnabled_forBundleId___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = *(a1 + 32);
  v4[0] = @"bundleId";
  v4[1] = @"enabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v4[2] = @"source";
  v5[1] = v1;
  v5[2] = @"platter chin";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (void)_setFrequentUpdatesEnabled:(BOOL)enabled forBundleId:(id)id
{
  enabledCopy = enabled;
  v5 = MEMORY[0x277CB9898];
  idCopy = id;
  v7 = objc_alloc_init(v5);
  [v7 setFrequentPushesEnabled:enabledCopy forBundleId:idCopy];
}

- (id)_authorizationActionsForOptionsType:(int64_t)type item:(id)item configuration:(id)configuration
{
  v34[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  val = configuration;
  groupingIdentifier = [itemCopy groupingIdentifier];
  objc_initWeak(&location, self);
  objc_initWeak(&from, itemCopy);
  objc_initWeak(&v31, val);
  v10 = MEMORY[0x277D750C8];
  v11 = [(CSActivityManager *)self _primaryActionTitleForAuthorizationOptionsType:type];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__CSActivityManager__authorizationActionsForOptionsType_item_configuration___block_invoke;
  v26[3] = &unk_27838DE00;
  objc_copyWeak(&v28, &location);
  objc_copyWeak(&v29, &from);
  objc_copyWeak(v30, &v31);
  v30[1] = type;
  v12 = groupingIdentifier;
  v27 = v12;
  v13 = [v10 actionWithTitle:v11 image:0 identifier:0 handler:v26];

  v14 = MEMORY[0x277D750C8];
  v15 = [(CSActivityManager *)self _secondaryActionTitleForAuthorizationOptionsType:type];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__CSActivityManager__authorizationActionsForOptionsType_item_configuration___block_invoke_2;
  v21[3] = &unk_27838DE00;
  objc_copyWeak(&v23, &location);
  objc_copyWeak(&v24, &from);
  objc_copyWeak(v25, &v31);
  v25[1] = type;
  v16 = v12;
  v22 = v16;
  v17 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:v21];

  v34[0] = v17;
  v34[1] = v13;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);

  objc_destroyWeak(v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v18;
}

void __76__CSActivityManager__authorizationActionsForOptionsType_item_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2 && v3)
  {
    v4 = *(a1 + 64);
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        [WeakRetained _setFrequentUpdatesEnabled:1 forBundleId:*(a1 + 32)];
      }
    }

    else
    {
      [WeakRetained _setActivitiesEnabled:1 forBundleId:*(a1 + 32)];
    }

    [v3 setAuxiliaryOptionActions:0];
    [v3 setAuxiliaryOptionsSummaryText:0];
    [v2 setConfiguration:v3];
    v5 = [WeakRetained itemManager];
    [v5 updateItem:v2];
  }
}

void __76__CSActivityManager__authorizationActionsForOptionsType_item_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2 && v3)
  {
    v4 = *(a1 + 64);
    if (v4 >= 2)
    {
      if (v4 != 2)
      {
LABEL_9:
        [v3 setAuxiliaryOptionActions:0];
        [v3 setAuxiliaryOptionsSummaryText:0];
        [v2 setConfiguration:v3];
        v8 = [WeakRetained itemManager];
        [v8 updateItem:v2];

        goto LABEL_10;
      }

      v7 = *(a1 + 32);
      v5 = (a1 + 32);
      [WeakRetained _setFrequentUpdatesEnabled:0 forBundleId:v7];
    }

    else
    {
      v6 = *(a1 + 32);
      v5 = (a1 + 32);
      [WeakRetained _setActivitiesEnabled:0 forBundleId:v6];
    }

    [WeakRetained _endAllActivitiesForBundleId:*v5];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)_primaryActionTitleForAuthorizationOptionsType:(int64_t)type
{
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_27838DED8[type];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_28302FDA0 table:@"CoverSheet"];
  }

  return v5;
}

- (id)_secondaryActionTitleForAuthorizationOptionsType:(int64_t)type
{
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_27838DEF0[type];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_28302FDA0 table:@"CoverSheet"];
  }

  return v5;
}

- (id)_summaryTextForAuthorizationOptionsType:(int64_t)type appName:(id)name
{
  nameCopy = name;
  if (type > 2)
  {
    nameCopy = 0;
  }

  else
  {
    v6 = off_27838DF08[type];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v6 value:&stru_28302FDA0 table:@"CoverSheet"];
    nameCopy = [v7 stringWithFormat:v9, nameCopy];
  }

  return nameCopy;
}

- (id)_latestActivityCreationDateForGroupingIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:identifier];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_104];
  firstObject = [v4 firstObject];
  contentCreatedDate = [firstObject contentCreatedDate];

  return contentCreatedDate;
}

BOOL __70__CSActivityManager__latestActivityCreationDateForGroupingIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contentCreatedDate];
  v6 = [v4 contentCreatedDate];

  return v5 > v6;
}

- (double)_relevanceScoreForItemWithViewController:(id)controller
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  activityIdentifiersToSupplemantaryItems = [(CSActivityManager *)self activityIdentifiersToSupplemantaryItems];
  allValues = [activityIdentifiersToSupplemantaryItems allValues];

  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  v8 = 0.0;
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        contentHost = [v12 contentHost];

        if (contentHost == controllerCopy)
        {
          [v12 relevanceScore];
          v8 = v14;
          goto LABEL_11;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)_createdDateForItemWithViewController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activityIdentifiersToSupplemantaryItems = [(CSActivityManager *)self activityIdentifiersToSupplemantaryItems];
  allValues = [activityIdentifiersToSupplemantaryItems allValues];

  contentCreatedDate = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (contentCreatedDate)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != contentCreatedDate; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        contentHost = [v10 contentHost];

        if (contentHost == controllerCopy)
        {
          contentCreatedDate = [v10 contentCreatedDate];
          goto LABEL_11;
        }
      }

      contentCreatedDate = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (contentCreatedDate)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return contentCreatedDate;
}

- (void)_clearAuthorizationOptionsIfNecessaryForGroupingIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:identifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        configuration = [v9 configuration];
        v11 = objc_opt_class();
        v12 = configuration;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
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

        v14 = v13;

        [v14 setAuxiliaryOptionActions:0];
        itemManager = [(CSActivityManager *)self itemManager];
        [itemManager updateItem:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)_endAllActivitiesForBundleId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:id];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        activityCenter = self->_activityCenter;
        identifier = [*(*(&v11 + 1) + 8 * v8) identifier];
        [(ACActivityCenter *)activityCenter endActivity:identifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateAllApplicationMonitoringPolicies
{
  BSDispatchQueueAssertMain();
  applicationPolicyMonitor = [(CSActivityManager *)self applicationPolicyMonitor];
  allKeys = [(NSMutableDictionary *)self->_activityItemsByBundleId allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CSActivityManager__updateAllApplicationMonitoringPolicies__block_invoke;
  v5[3] = &unk_27838DE70;
  v5[4] = self;
  [applicationPolicyMonitor requestPoliciesForBundleIdentifiers:allKeys completionHandler:v5];
}

void __60__CSActivityManager__updateAllApplicationMonitoringPolicies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v8, &location);
  v7 = v5;
  BSDispatchMain();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__CSActivityManager__updateAllApplicationMonitoringPolicies__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__CSActivityManager__updateAllApplicationMonitoringPolicies__block_invoke_3;
    v4[3] = &unk_27838DE48;
    v4[4] = WeakRetained;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)_updateForScreenTimeLimitForBundleId:(id)id policy:(id)policy
{
  v23 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v7 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:id];
  integerValue = [policyCopy integerValue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        descriptorByActivityIdentifier = self->_descriptorByActivityIdentifier;
        identifier = [v14 identifier];
        v17 = [(NSMutableDictionary *)descriptorByActivityIdentifier objectForKey:identifier];

        if ([v17 contentType] != 1)
        {
          [(CSActivityManager *)self _setHidden:integerValue != 0 forItem:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_addAppActivitiesRecordForBundleId:(id)id activityItem:(id)item
{
  idCopy = id;
  activityItemsByBundleId = self->_activityItemsByBundleId;
  itemCopy = item;
  allKeys = [(NSMutableDictionary *)activityItemsByBundleId allKeys];
  v9 = [allKeys containsObject:idCopy];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:idCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v11 = v10;
  [v10 addObject:itemCopy];

  [(NSMutableDictionary *)self->_activityItemsByBundleId setObject:v11 forKey:idCopy];
}

- (void)_removeAppActivitiesRecordForBundleId:(id)id activityItem:(id)item
{
  idCopy = id;
  itemCopy = item;
  v7 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:idCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:idCopy];
    if ([v8 containsObject:itemCopy])
    {
      [v8 removeObject:itemCopy];
      [(NSMutableDictionary *)self->_activityItemsByBundleId setObject:v8 forKey:idCopy];
    }
  }
}

- (BOOL)_itemIsNowPlaying:(id)playing
{
  groupingIdentifier = [playing groupingIdentifier];
  v4 = [groupingIdentifier isEqualToString:@"com.apple.MediaRemoteUI"];

  return v4;
}

- (void)_setHidden:(BOOL)hidden forItem:(id)item
{
  hiddenCopy = hidden;
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    if (hiddenCopy)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__CSActivityManager__setHidden_forItem___block_invoke;
      v10[3] = &unk_27838DCE8;
      v8 = itemCopy;
      v11 = v8;
      [(CSActivityManager *)self _sendAnalyticsEventWithName:@"com.apple.activitykit.activity" payloadBuilder:v10];
      [(CSListItemManaging *)self->_itemManager removeItem:v8];
      if (([(NSMutableArray *)self->_hiddenItems containsObject:v8]& 1) == 0)
      {
        [(NSMutableArray *)self->_hiddenItems addObject:v8];
      }
    }

    else
    {
      [(CSListItemManaging *)self->_itemManager addItem:itemCopy];
      [(NSMutableArray *)self->_hiddenItems removeObject:v7];
    }
  }

  else
  {
    v9 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = hiddenCopy;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "No item found, _setHidden: %{BOOL}u", buf, 8u);
    }
  }
}

id __40__CSActivityManager__setHidden_forItem___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"activityId";
  v2 = [*(a1 + 32) identifier];
  v7[0] = v2;
  v6[1] = @"bundleId";
  v3 = [*(a1 + 32) groupingIdentifier];
  v6[2] = @"eventType";
  v7[1] = v3;
  v7[2] = @"hidden";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (BOOL)_shouldHandleActivityWithContentUpdate:(id)update
{
  descriptor = [update descriptor];
  presentationOptions = [descriptor presentationOptions];

  destinations = [presentationOptions destinations];
  v6 = [destinations bs_containsObjectPassingTest:&__block_literal_global_112];

  return v6;
}

- (BOOL)_clockActivityExistsForGroupingIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_activityItemsByBundleId objectForKey:identifier];
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__CSActivityManager__clockActivityExistsForGroupingIdentifier___block_invoke;
    v9[3] = &unk_27838DEB8;
    v9[4] = self;
    v6 = [v4 bs_firstObjectPassingTest:v9];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __63__CSActivityManager__clockActivityExistsForGroupingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [a2 identifier];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 alertSceneTargetBundleIdentifiers];
  v6 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:7];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 isEqualToString:@"com.apple.ClockAngel"];

  return v8;
}

- (void)activityViewControllerBackgroundTintColorDidChange:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 groupingIdentifier];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4(&dword_21EB05000, v3, v4, "[ActivityID: %{public}@, BundleID: %{public}@] Background tint color did change: %{public}@", v5, v6, v7, v8, v9);
}

- (void)activityViewControllerTextColorDidChange:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 groupingIdentifier];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4(&dword_21EB05000, v3, v4, "[ActivityID: %{public}@, BundleID: %{public}@] Text color did change: %{public}@", v5, v6, v7, v8, v9);
}

- (void)_unlockAndLaunchAppIfPossible:(uint64_t)a1 withAction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = 0;
  _os_log_fault_impl(&dword_21EB05000, a2, OS_LOG_TYPE_FAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Unable to resolve container bundle identifier", &v2, 0x16u);
}

void __62__CSActivityManager__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_21EB05000, log, OS_LOG_TYPE_ERROR, "[ActivityID: %{public}@, BundleID: %{public}@] Open application failed: %{public}@", &v5, 0x20u);
}

- (void)_appNameForBundleIdentifier:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_21EB05000, v5, OS_LOG_TYPE_ERROR, "Encountered error obtaining application name for bundle identifier %{public}@: %{public}@", &v7, 0x16u);
}

@end