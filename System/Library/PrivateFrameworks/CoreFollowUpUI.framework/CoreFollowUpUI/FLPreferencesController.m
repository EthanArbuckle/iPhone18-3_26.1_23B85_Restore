@interface FLPreferencesController
+ (BOOL)shouldPreflightNetworkAccessForGroup:(id)a3 item:(id)a4;
- (FLPreferencesController)init;
- (FLPreferencesController)initWithViewModel:(id)a3;
- (PSListController)listViewController;
- (id)_deferredLoadSpecifierWithName:(id)a3;
- (id)_specifierForGroup:(id)a3;
- (id)_specifierGroupString:(unint64_t)a3;
- (id)_specifiersForItem:(id)a3 group:(id)a4;
- (id)_topLevelSpecifiersForGroup:(unint64_t)a3;
- (id)_urlBasedSpecifierWithName:(id)a3;
- (id)spyglassSpecifiers;
- (void)_presentSpecifier:(id)a3 fromEventSource:(unint64_t)a4;
- (void)_refreshItemsAndPresentDetailForSpecifier:(id)a3;
- (void)_updateSpecifier:(id)a3 withCommonPropertiesForGroup:(id)a4;
- (void)_zeroActionFailure:(id)a3;
- (void)loadSpecifier:(id)a3;
- (void)performPreferencesActionForGroup:(id)a3 item:(id)a4 action:(id)a5 completion:(id)a6;
- (void)preflightNetworkConnectivityForHandler:(id)a3 withCompletionHandler:(id)a4;
- (void)setItemChangeObserver:(id)a3;
- (void)startPresentingForHandler:(id)a3 withRemoteController:(id)a4 customPresentationStyle:(BOOL)a5;
- (void)stopSpinnerForSpecifier:(id)a3;
@end

@implementation FLPreferencesController

- (FLPreferencesController)init
{
  v3 = objc_alloc(MEMORY[0x277CFE538]);
  v4 = [v3 initWithBundleIdentifier:*MEMORY[0x277CFE3F8] clientIdentifier:0];
  v5 = [(FLPreferencesController *)self initWithViewModel:v4];

  return v5;
}

- (FLPreferencesController)initWithViewModel:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = FLPreferencesController;
  v6 = [(FLPreferencesController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topViewModel, a3);
    v8 = objc_alloc(MEMORY[0x277CED1E8]);
    v9 = [MEMORY[0x277CB8F48] defaultStore];
    v10 = [v8 initWithAccountStore:v9];
    serviceOwnersManager = v7->_serviceOwnersManager;
    v7->_serviceOwnersManager = v10;

    v12 = objc_opt_new();
    generatedSpecifiersByIdentifier = v7->_generatedSpecifiersByIdentifier;
    v7->_generatedSpecifiersByIdentifier = v12;
  }

  return v7;
}

- (id)_specifierGroupString:(unint64_t)a3
{
  v3 = @"all";
  if (a3 == 1)
  {
    v3 = @"general";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"account";
  }
}

- (id)_topLevelSpecifiersForGroup:(unint64_t)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = _FLSignpostCreate();
  v5 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FLPreferencesController *)v4 _topLevelSpecifiersForGroup:v5];
  }

  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FLPreferencesController *)self _specifierGroupString:a3];
    *buf = 138412290;
    v84 = v7;
    _os_log_impl(&dword_245383000, v6, OS_LOG_TYPE_DEFAULT, "Building top level specifiers for %@ specifiers", buf, 0xCu);
  }

  v66 = [MEMORY[0x277CBEB18] array];
  if (self->_groups)
  {
    goto LABEL_22;
  }

  primaryAccountID = self->_primaryAccountID;
  self->_primaryAccountID = 0;

  secondaryAccountIDs = self->_secondaryAccountIDs;
  self->_secondaryAccountIDs = 0;

  if (a3 != 2)
  {
    v10 = [(AIDAServiceOwnersManager *)self->_serviceOwnersManager accountForService:*MEMORY[0x277CED1A0]];
    v11 = [v10 identifier];
    v12 = self->_primaryAccountID;
    self->_primaryAccountID = v11;

    if (!self->_primaryAccountID)
    {
      v13 = [(AIDAServiceOwnersManager *)self->_serviceOwnersManager accountForService:*MEMORY[0x277CED1C0]];
      v14 = [v13 identifier];
      v15 = self->_primaryAccountID;
      self->_primaryAccountID = v14;
    }

    v16 = [MEMORY[0x277CB8F48] defaultStore];
    v17 = [v16 dmc_visibleRemoteManagementAccounts];

    if ([v17 count] >= 2)
    {
      v18 = _FLLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(FLPreferencesController *)v18 _topLevelSpecifiersForGroup:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    v26 = [v17 valueForKey:@"identifier"];
    v27 = self->_secondaryAccountIDs;
    self->_secondaryAccountIDs = v26;
  }

  topViewModel = self->_topViewModel;
  if (objc_opt_respondsToSelector())
  {
    v29 = [(FLViewModel *)self->_topViewModel groupsForPrimaryAccount:self->_primaryAccountID secondaryAccounts:self->_secondaryAccountIDs];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      p_super = _FLLogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(FLPreferencesController *)&self->_topViewModel _topLevelSpecifiersForGroup:?];
      }

      goto LABEL_21;
    }

    v29 = [(FLViewModel *)self->_topViewModel groups];
  }

  p_super = &self->_groups->super;
  self->_groups = v29;
LABEL_21:

LABEL_22:
  v61 = v4;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = self->_groups;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  v32 = a3;
  if (!v31)
  {
    goto LABEL_56;
  }

  v33 = v31;
  v68 = 0;
  v73 = *v79;
  v71 = *MEMORY[0x277CFE430];
  v70 = *MEMORY[0x277CFE438];
  v69 = *MEMORY[0x277CFE450];
  v64 = *MEMORY[0x277CFE458];
  v63 = *MEMORY[0x277D3FF88];
  v62 = *MEMORY[0x277CFE460];
  v72 = self;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v79 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v78 + 1) + 8 * i);
      v36 = [v35 items];
      if ([v36 count])
      {
        v37 = [v35 identifier];
        v38 = [v37 isEqualToString:v71];

        v39 = [v35 identifier];
        v40 = [v39 isEqualToString:v70];

        v41 = [v35 identifier];
        v42 = [v41 isEqualToString:v69];

        v43 = self->_topViewModel;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = 0;
          v45 = 0;
          goto LABEL_35;
        }

        if (v38)
        {
          v44 = [v35 accountID];
          v45 = [v44 isEqualToString:v72->_primaryAccountID];

          if (!v42)
          {
LABEL_31:
            v46 = 0;
LABEL_35:
            if (!((v32 != 0) | v45 & 1 | v40 & 1) && !v46)
            {

              goto LABEL_56;
            }

            if (v32 == 1 && ((v45 | v46 | v40) & 1) != 0)
            {
              self = v72;
              goto LABEL_52;
            }

            v48 = v38 | v42;
            v68 |= v38;
            if ((v68 & 1) == 0)
            {
              v48 = v40 | v38 | v42;
            }

            self = v72;
            if (v48)
            {
              goto LABEL_48;
            }

            v49 = MEMORY[0x277D3FAD8];
            v50 = [v35 identifier];
            v51 = [@"FollowUps" stringByAppendingFormat:@": %@", v50];
            v52 = [v35 groupTitle];
            v53 = [v49 groupSpecifierWithID:v51 name:v52];

            v54 = [v35 identifier];
            LODWORD(v50) = [v54 isEqualToString:v64];

            if (v50)
            {
              v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v62, @"Items above require approval..."];
            }

            else
            {
              v55 = [v35 footerText];
              if (!v55)
              {
LABEL_47:
                v32 = a3;

                [v66 addObject:v53];
LABEL_48:
                if ([v35 shouldCoalesceItems])
                {
                  v56 = [(FLPreferencesController *)v72 _specifierForGroup:v35];
                  [v66 addObject:v56];
                }

                else
                {
                  v74[0] = MEMORY[0x277D85DD0];
                  v74[1] = 3221225472;
                  v74[2] = __55__FLPreferencesController__topLevelSpecifiersForGroup___block_invoke;
                  v74[3] = &unk_278E35C10;
                  v75 = v66;
                  v76 = v72;
                  v77 = v35;
                  [v36 enumerateObjectsUsingBlock:v74];
                  v56 = v75;
                }

                goto LABEL_52;
              }
            }

            [v53 setProperty:v55 forKey:v63];
            goto LABEL_47;
          }
        }

        else
        {
          v45 = 0;
          if (!v42)
          {
            goto LABEL_31;
          }
        }

        v47 = [v35 accountID];
        v46 = [v47 isEqualToString:v72->_primaryAccountID];

        v32 = a3;
        goto LABEL_35;
      }

LABEL_52:
    }

    v33 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_56:

  Nanoseconds = _FLSignpostGetNanoseconds();
  v58 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [(FLPreferencesController *)Nanoseconds _topLevelSpecifiersForGroup:v61, v58];
  }

  v59 = *MEMORY[0x277D85DE8];

  return v66;
}

void __55__FLPreferencesController__topLevelSpecifiersForGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _specifiersForItem:a2 group:*(a1 + 48)];
  [v2 addObjectsFromArray:v3];
}

- (id)_specifiersForItem:(id)a3 group:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*MEMORY[0x277CFE450]];

  if (v9)
  {
    v10 = [FLPreferencesFollowUpItemListSpeficierFactory detailSpecifiersForFollowUpItem:v6 target:self selector:sel__handleActionForSpecifier_];
  }

  else
  {
    v11 = [v6 displayStyle];
    v12 = [v6 extensionIdentifier];
    v13 = [v6 title];
    if (v12 || (v11 & 2) != 0)
    {
      v14 = [(FLPreferencesController *)self _deferredLoadSpecifierWithName:v13];
    }

    else
    {
      v14 = [(FLPreferencesController *)self _urlBasedSpecifierWithName:v13];
    }

    v15 = v14;

    v16 = *MEMORY[0x277CFE400];
    v17 = [v6 uniqueIdentifier];
    v18 = [v16 stringByAppendingString:v17];
    [v15 setIdentifier:v18];

    if (([v6 displayStyle] & 0x10) == 0)
    {
      [v15 setProperty:&unk_2858517E8 forKey:*MEMORY[0x277D3FDB0]];
    }

    v50[0] = v6;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [v15 setProperty:v19 forKey:*MEMORY[0x277CFE3E0]];

    v20 = [v6 representingBundlePath];
    if (v20)
    {
      v21 = v20;
      v22 = [v6 bundleIconName];

      if (v22)
      {
        v23 = [v6 bundleIconName];
        [v15 setProperty:v23 forKey:*MEMORY[0x277D3FDC0]];

        v24 = MEMORY[0x277CCA8D8];
        v25 = [v6 representingBundlePath];
        v26 = [v24 bundleWithPath:v25];

        v27 = _FLLogSystem();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v6 bundleIconName];
          *buf = 138412546;
          v47 = v28;
          v48 = 2112;
          v49 = v26;
          _os_log_impl(&dword_245383000, v27, OS_LOG_TYPE_DEFAULT, "Creating CFU with bundle icon: %@ <%@>", buf, 0x16u);
        }

        [v15 setupIconImageWithBundle:v26];
      }
    }

    v29 = _FLLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "displayStyle")}];
      *buf = 138412290;
      v47 = v30;
      _os_log_impl(&dword_245383000, v29, OS_LOG_TYPE_DEFAULT, "Creating CFU with display style: %@", buf, 0xCu);
    }

    if ((v11 & 2) != 0 || ([MEMORY[0x277CFE4F0] currentEnvironment], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "followUpZeroActionsForTheWorld"), v31, v32))
    {
      [v15 setProperty:v6 forKey:*MEMORY[0x277CFE418]];
      v33 = [v6 actions];
      v34 = [v33 firstObject];
      [v15 setProperty:v34 forKey:*MEMORY[0x277CFE410]];
    }

    v35 = [v6 extensionIdentifier];

    if (!v35)
    {
      v36 = objc_alloc(MEMORY[0x277CFE528]);
      v45 = v6;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v38 = [v36 initWithItems:v37];

      [v15 setProperty:v38 forKey:*MEMORY[0x277CFE428]];
    }

    [(FLPreferencesController *)self _updateSpecifier:v15 withCommonPropertiesForGroup:v7];
    if (v15)
    {
      v39 = [v15 identifier];

      if (v39)
      {
        generatedSpecifiersByIdentifier = self->_generatedSpecifiersByIdentifier;
        v41 = [v15 identifier];
        [(NSMutableDictionary *)generatedSpecifiersByIdentifier setObject:v15 forKeyedSubscript:v41];
      }
    }

    v44 = v15;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_specifierForGroup:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = [v4 items];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__FLPreferencesController__specifierForGroup___block_invoke;
  v18[3] = &unk_278E35C38;
  v18[4] = &v19;
  [v5 enumerateObjectsUsingBlock:v18];

  if (*(v20 + 24) == 1)
  {
    v6 = [v4 rowTitle];
    v7 = [(FLPreferencesController *)self _deferredLoadSpecifierWithName:v6];
  }

  else
  {
    v8 = [v4 rowTitle];
    v7 = [(FLPreferencesController *)self _urlBasedSpecifierWithName:v8];

    v9 = objc_alloc(MEMORY[0x277CFE528]);
    v10 = [v4 items];
    v6 = [v9 initWithItems:v10];

    [v7 setProperty:v6 forKey:*MEMORY[0x277CFE428]];
  }

  v11 = [v4 identifier];
  v12 = [*MEMORY[0x277CFE400] stringByAppendingString:v11];
  [v7 setIdentifier:v12];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v4 items];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  [v7 setProperty:v15 forKey:*MEMORY[0x277D3FDB0]];

  v16 = [v4 items];
  [v7 setProperty:v16 forKey:*MEMORY[0x277CFE3E0]];

  [(FLPreferencesController *)self _updateSpecifier:v7 withCommonPropertiesForGroup:v4];
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __46__FLPreferencesController__specifierForGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 extensionIdentifier];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_deferredLoadSpecifierWithName:(id)a3
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v3 setControllerLoadAction:sel_loadSpecifier_];

  return v3;
}

- (id)_urlBasedSpecifierWithName:(id)a3
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a3;
  v5 = [v3 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  return v5;
}

- (void)_updateSpecifier:(id)a3 withCommonPropertiesForGroup:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277CFE438]];

  if (v8)
  {
    v9 = [v15 propertyForKey:*MEMORY[0x277CFE3E0]];
    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      v11 = [v10 informativeFooterText];

      if (v11)
      {
        v11 = [v10 informativeFooterText];
      }

      if ([v10 displayExpirationDate])
      {
        v12 = [v10 formattedExpirationDate];

        v11 = v12;
      }

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = [v5 subtitleText];
      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v6 = objc_opt_class();
    [v15 setProperty:v11 forKey:*MEMORY[0x277D40160]];
    goto LABEL_11;
  }

LABEL_12:
  v13 = v15;
  if (v6)
  {
    [v15 setProperty:v6 forKey:*MEMORY[0x277D3FE58]];
    v13 = v15;
  }

  [v13 setProperty:&unk_285851800 forKey:*MEMORY[0x277D3FD68]];
  v14 = [v5 rowTitle];
  [v15 setProperty:v14 forKey:*MEMORY[0x277D40170]];

  [v15 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
}

- (id)spyglassSpecifiers
{
  if (!self->_spyglassAllowList)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"verifyPrimaryEmail", @"com.apple.AAFollowUpIdentifier.StartUsing", @"com.apple.AAFollowUpIdentifier.VerifyTerms", @"com.apple.AAFollowUpIdentifier.ageMigration", 0}];
    spyglassAllowList = self->_spyglassAllowList;
    self->_spyglassAllowList = v3;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSSet count](self->_spyglassAllowList, "count")}];
  v6 = [(FLViewModel *)self->_topViewModel allPendingItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__FLPreferencesController_spyglassSpecifiers__block_invoke;
  v19[3] = &unk_278E35C60;
  v19[4] = self;
  v7 = v5;
  v20 = v7;
  [v6 enumerateObjectsUsingBlock:v19];
  v8 = [v7 allKeys];
  if ([v8 containsObject:@"verifyPrimaryEmail"])
  {
    v9 = @"verifyPrimaryEmail";
    goto LABEL_9;
  }

  if ([v8 containsObject:@"com.apple.AAFollowUpIdentifier.StartUsing"])
  {
    v9 = @"com.apple.AAFollowUpIdentifier.StartUsing";
    goto LABEL_9;
  }

  if ([v8 containsObject:@"com.apple.AAFollowUpIdentifier.VerifyTerms"])
  {
    v9 = @"com.apple.AAFollowUpIdentifier.VerifyTerms";
LABEL_9:
    v10 = [v7 valueForKey:v9];
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (![v8 count])
  {
    v10 = 0;
    goto LABEL_18;
  }

  v17 = [v8 firstObject];
  v10 = [v7 valueForKey:v17];

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!self->_spyglassController)
  {
    v11 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
    spyglassController = self->_spyglassController;
    self->_spyglassController = v11;

    v13 = [(FLPreferencesController *)self listViewController];
    [(FLPreferencesFollowUpItemListViewController *)self->_spyglassController setPresentationContext:v13];
  }

  v14 = [v10 actions];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(FLPreferencesFollowUpItemListViewController *)self->_spyglassController detailSpecifiersForFollowUpItem:v10];
    goto LABEL_19;
  }

LABEL_18:
  v16 = MEMORY[0x277CBEBF8];
LABEL_19:

  return v16;
}

void __45__FLPreferencesController_spyglassSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v8 = v3;
  v5 = [v3 uniqueIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) != 0 || ([v8 displayStyle] & 4) != 0)
  {
    v6 = *(a1 + 40);
    v7 = [v8 uniqueIdentifier];
    [v6 setObject:v8 forKey:v7];
  }
}

- (void)loadSpecifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  activityIndicatorActive = self->_activityIndicatorActive;
  v6 = _FLLogSystem();
  v7 = v6;
  if (activityIndicatorActive)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FLPreferencesController *)v7 loadSpecifier:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v4;
      _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "Loading specifier: %@", buf, 0xCu);
    }

    [(FLPreferencesController *)self startSpinnerForSpecifier:v4];
    v7 = [v4 propertyForKey:*MEMORY[0x277CFE3E0]];
    v15 = [v7 firstObject];
    v16 = [v15 groupIdentifier];
    v17 = [v16 isEqualToString:*MEMORY[0x277CFE430]];

    if (v17)
    {
      v18 = [FLNetworkStatePrompter alloc];
      v19 = [(FLPreferencesController *)self listViewController];
      v20 = [(FLNetworkStatePrompter *)v18 initWithPresenter:v19];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __41__FLPreferencesController_loadSpecifier___block_invoke;
      v22[3] = &unk_278E35C88;
      v22[4] = self;
      v23 = v4;
      [(FLNetworkStatePrompter *)v20 preflightNetworkStateWithCompletionHandler:v22];
    }

    else
    {
      [(FLPreferencesController *)self _refreshItemsAndPresentDetailForSpecifier:v4];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __41__FLPreferencesController_loadSpecifier___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    return [v3 _refreshItemsAndPresentDetailForSpecifier:v4];
  }

  else
  {
    return [v3 stopSpinnerForSpecifier:v4];
  }
}

- (void)_refreshItemsAndPresentDetailForSpecifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Starting to refresh items for specifier: %@", buf, 0xCu);
  }

  v6 = [v4 propertyForKey:*MEMORY[0x277CFE3E0]];
  topViewModel = self->_topViewModel;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__FLPreferencesController__refreshItemsAndPresentDetailForSpecifier___block_invoke;
  v10[3] = &unk_278E35CB0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(FLViewModel *)topViewModel refreshItems:v6 withCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __69__FLPreferencesController__refreshItemsAndPresentDetailForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FLPreferencesController__refreshItemsAndPresentDetailForSpecifier___block_invoke_2;
  block[3] = &unk_278E35AF8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__FLPreferencesController__refreshItemsAndPresentDetailForSpecifier___block_invoke_2(id *a1)
{
  [a1[4] stopSpinnerForSpecifier:a1[5]];
  v10 = [a1[6] objectForKeyedSubscript:*MEMORY[0x277CFE468]];
  if ([v10 count])
  {
    v2 = a1[5];
    v3 = [a1[5] identifier];

    if (v3)
    {
      v4 = *(a1[4] + 6);
      v5 = [a1[5] identifier];
      v6 = [v4 objectForKeyedSubscript:v5];
      v7 = v6;
      if (!v6)
      {
        v7 = a1[5];
      }

      v8 = v7;

      v2 = v8;
    }

    v9 = [objc_alloc(MEMORY[0x277CFE528]) initWithItems:v10];
    [v2 setProperty:v9 forKey:*MEMORY[0x277CFE428]];
    [a1[4] _presentSpecifier:v2 fromEventSource:3];
  }

  else
  {
    [a1[4] _handleEmptyRefreshResult:a1[6]];
  }
}

- (void)_presentSpecifier:(id)a3 fromEventSource:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "Presenting specifier: %@ with eventSource: %lu", buf, 0x16u);
  }

  v8 = [v6 propertyForKey:*MEMORY[0x277CFE418]];
  if (v8)
  {
    v9 = [MEMORY[0x277CFE530] sharedTelemetryController];
    [v9 captureItemView:v8];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = objc_alloc_init(FLSpecifierTapHandler);
    [*(*&buf[8] + 40) setDelegate:self];
    v10 = *(*&buf[8] + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__FLPreferencesController__presentSpecifier_fromEventSource___block_invoke;
    v18[3] = &unk_278E35CD8;
    v18[4] = self;
    v19 = v8;
    v20 = buf;
    [v10 actionTapped:v6 eventSource:a4 withCompletionHandler:v18];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = [v6 propertyForKey:*MEMORY[0x277CFE3E0]];
    [v11 enumerateObjectsUsingBlock:&__block_literal_global_0];
    v12 = [(FLPreferencesController *)self listViewController];
    v13 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
    [(FLPreferencesFollowUpItemListViewController *)v13 setSpecifier:v6];
    [(FLPreferencesFollowUpItemListViewController *)v13 setParentController:v12];
    v14 = [v12 splitViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [v12 splitViewController];
      [v16 showInitialViewController:v13];
    }

    else
    {
      [v12 showController:v13];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __61__FLPreferencesController__presentSpecifier_fromEventSource___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _zeroActionFailure:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __61__FLPreferencesController__presentSpecifier_fromEventSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE530];
  v3 = a2;
  v4 = [v2 sharedTelemetryController];
  [v4 captureItemView:v3];
}

- (void)_zeroActionFailure:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFE4F0] currentEnvironment];
  v6 = [v5 isInternal];

  if (v6)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__FLPreferencesController__zeroActionFailure___block_invoke;
    v17 = &unk_278E35A60;
    v18 = v4;
    v7 = [FLAlertControllerAction actionWithTitle:@"Tap-To-Radar" style:1 handler:&v14];
    v19[0] = v7;
    v8 = [FLAlertControllerAction actionWithTitle:@"Dismiss" style:0 handler:0, v14, v15, v16, v17];
    v19[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Follow Up Error [INTERNAL]"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did you notice an error? If so, file a radar."];
    v12 = [(FLPreferencesController *)self listViewController];
    [FLAlertControllerHelper presentAlertWithTitle:v10 message:v11 actions:v9 presentingController:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__FLPreferencesController__zeroActionFailure___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFE540];
  v2 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) clientIdentifier];
  v3 = [v2 stringWithFormat:@"CFU access failure: %@", v4];
  [v1 tapToRadarWithTitle:v3 initialMessage:0];
}

- (void)startPresentingForHandler:(id)a3 withRemoteController:(id)a4 customPresentationStyle:(BOOL)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_245383000, v8, OS_LOG_TYPE_DEFAULT, "Start presenting identifier: %@", &v11, 0xCu);
  }

  if (!a5)
  {
    [v7 setModalPresentationStyle:5];
  }

  v9 = [(FLPreferencesController *)self listViewController];
  [v9 presentViewController:v7 animated:1 completion:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)preflightNetworkConnectivityForHandler:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [FLNetworkStatePrompter alloc];
  v7 = [(FLPreferencesController *)self listViewController];
  v8 = [(FLNetworkStatePrompter *)v6 initWithPresenter:v7];

  [(FLNetworkStatePrompter *)v8 preflightNetworkStateWithCompletionHandler:v5];
}

- (void)setItemChangeObserver:(id)a3
{
  v4 = a3;
  topViewModel = self->_topViewModel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__FLPreferencesController_setItemChangeObserver___block_invoke;
  v7[3] = &unk_278E359E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FLViewModel *)topViewModel setItemChangeHandler:v7];
}

uint64_t __49__FLPreferencesController_setItemChangeObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)stopSpinnerForSpecifier:(id)a3
{
  self->_activityIndicatorActive = 0;
  v4 = a3;
  [v4 fl_stopSpinner];
  v7 = [(FLPreferencesController *)self listViewController];
  v5 = [v7 table];
  v6 = [v7 indexPathForSpecifier:v4];

  [v5 deselectRowAtIndexPath:v6 animated:0];
}

- (void)performPreferencesActionForGroup:(id)a3 item:(id)a4 action:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v41 = a6;
  v12 = v11 != 0;
  if (!v11)
  {
    [v9 shouldCoalesceItems];
  }

  v13 = [v9 identifier];
  v14 = *MEMORY[0x277CFE450];
  v15 = [v13 isEqualToString:*MEMORY[0x277CFE450]];

  if (v10)
  {
    v16 = [v10 displayStyle];
    v17 = [v10 uniqueIdentifier];
    v18 = [v17 isEqualToString:@"com.apple.ThreatNotificationUI.FollowUpItem.general"];

    if (v11)
    {
      v19 = (v16 >> 1) & 1;
LABEL_8:
      v42 = v11;
      goto LABEL_9;
    }

    if ((v16 & 2) != 0)
    {
      v37 = [v10 actions];
      v42 = [v37 firstObject];

      LODWORD(v19) = 1;
    }

    else
    {
      LODWORD(v19) = 0;
      v42 = 0;
    }
  }

  else
  {
    LODWORD(v19) = 0;
    if (v11)
    {
      v18 = 0;
      goto LABEL_8;
    }

    v42 = 0;
    v18 = 0;
  }

LABEL_9:
  if ([v9 shouldCoalesceItems])
  {
    v20 = [v9 items];
    v21 = [v20 na_any:&__block_literal_global_95];

    if (v21)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v22 = [v9 identifier];
    v23 = [v22 isEqualToString:v14];

    if (v23 & 1) != 0 || ([v10 extensionIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = (v24 != 0) | v19, v24, v12 = v19, (v25))
    {
LABEL_14:
      objc_initWeak(location, self->_topViewModel);
      v26 = MEMORY[0x277D2C900];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2;
      v56[3] = &unk_278E35D68;
      v27 = v10;
      v57 = v27;
      v28 = v9;
      v58 = v28;
      v60 = v15;
      v61 = v18;
      objc_copyWeak(&v59, location);
      v29 = [v26 lazyFutureWithBlock:v56];
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x3032000000;
      v54[3] = __Block_byref_object_copy__1;
      v54[4] = __Block_byref_object_dispose__1;
      v55 = 0;
      v30 = v41;
      if ((v12 | v18))
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_4;
        v46[3] = &unk_278E35E58;
        v49 = v54;
        v47 = v27;
        v31 = v42;
        v48 = v42;
        v32 = [v29 flatMap:v46];
        v33 = &v47;
        v34 = v48;
      }

      else
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2_100;
        v50[3] = &unk_278E35DB8;
        v51[0] = v28;
        v51[1] = self;
        v52 = v27;
        v53 = v41;
        [v29 flatMap:v50];
        v32 = v31 = v42;
        v33 = v51;

        v34 = v52;
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_8;
      v44[3] = &unk_278E35E80;
      v45 = v41;
      v36 = [v32 addCompletionBlock:v44];

      _Block_object_dispose(v54, 8);
      objc_destroyWeak(&v59);

      objc_destroyWeak(location);
      goto LABEL_24;
    }
  }

  v30 = v41;
  if ([v9 shouldCoalesceItems])
  {
    v35 = [(FLPreferencesController *)self _specifierForGroup:v9];
  }

  else
  {
    v38 = [(FLPreferencesController *)self _specifiersForItem:v10 group:v9];
    v35 = [v38 lastObject];
  }

  v39 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
  [(FLPreferencesFollowUpItemListViewController *)v39 setSpecifier:v35];
  v40 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:v39 presentationStyle:0];
  (*(v41 + 2))(v41, v40);

  v31 = v42;
LABEL_24:
}

BOOL __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionIdentifier];
  v3 = v2 != 0;

  return v3;
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(a1 + 32))
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ([*(a1 + 40) shouldCoalesceItems])
  {
    v12 = [*(a1 + 40) items];
  }

  else
  {
    if (!*(a1 + 32))
    {
      v13 = MEMORY[0x277CBEBF8];
      goto LABEL_10;
    }

    v20[0] = *(a1 + 32);
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  v13 = v12;
LABEL_10:
  if (*(a1 + 56) == 1 && *(a1 + 57) != 1)
  {
    [v3 finishWithResult:v13];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v15 = _FLLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245383000, v15, OS_LOG_TYPE_DEFAULT, "Calling refreshItems", buf, 2u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_98;
    v17[3] = &unk_278E35D40;
    v18 = v3;
    [WeakRetained refreshItems:v13 withCompletionHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 objectForKeyedSubscript:*MEMORY[0x277CFE468]];
  v6 = v5;
  if (v10)
  {
    [*(a1 + 32) finishWithError:v10];
  }

  else
  {
    v7 = [v5 count];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 finishWithResult:v6];
    }

    else
    {
      v9 = FLError();
      [v8 finishWithError:v9];
    }
  }
}

id __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2_100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_3;
  v11[3] = &unk_278E35D90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v3;
  v16 = *(a1 + 56);
  v8 = v3;
  v9 = [v4 lazyFutureWithBlock:v11];

  return v9;
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldCoalesceItems];
  v3 = *(a1 + 40);
  if (v2)
  {
    v8 = [v3 _specifierForGroup:*(a1 + 32)];
  }

  else
  {
    v4 = [v3 _specifiersForItem:*(a1 + 48) group:*(a1 + 32)];
    v8 = [v4 lastObject];
  }

  v5 = [objc_alloc(MEMORY[0x277CFE528]) initWithItems:*(a1 + 56)];
  [v8 setProperty:v5 forKey:*MEMORY[0x277CFE428]];
  v6 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
  [(FLPreferencesFollowUpItemListViewController *)v6 setSpecifier:v8];
  v7 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:v6 presentationStyle:0];
  (*(*(a1 + 64) + 16))();
}

id __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_5;
  v5[3] = &unk_278E35E30;
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 lazyFutureWithBlock:v5];

  return v3;
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = [(FLHeadlessActionHandler *)FLFollowUpActionHandler handlerWithItem:a1[4]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = *(*(a1[6] + 8) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_6;
  v17[3] = &unk_278E35DE0;
  v8 = v3;
  v18 = v8;
  v19 = v20;
  [v7 setExtensionRequestedViewControllerPresentation:v17];
  v9 = a1[5];
  v10 = *(*(a1[6] + 8) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_7;
  v13[3] = &unk_278E35E08;
  v15 = v20;
  v11 = v8;
  v12 = a1[6];
  v14 = v11;
  v16 = v12;
  [v10 handleAction:v9 completion:v13];

  _Block_object_dispose(v20, 8);
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:v3 presentationStyle:1];

  [*(a1 + 32) finishWithResult:v4];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_7(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:0 presentationStyle:1];
    [*(a1 + 32) finishWithResult:v2];
  }

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:0 presentationStyle:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

+ (BOOL)shouldPreflightNetworkAccessForGroup:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277CFE430]];

  if (v8)
  {
    if (v6)
    {
      v9 = ([v6 displayStyle] >> 1) & 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    if ([v5 shouldCoalesceItems])
    {
      v11 = [v5 items];
      v10 = [v11 na_any:&__block_literal_global_106];
    }

    else
    {
      v11 = [v6 extensionIdentifier];
      v10 = (v11 != 0) | v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL __69__FLPreferencesController_shouldPreflightNetworkAccessForGroup_item___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (PSListController)listViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_listViewController);

  return WeakRetained;
}

- (void)_topLevelSpecifiersForGroup:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_245383000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%llu]: GenerateTopSpecifiers", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_topLevelSpecifiersForGroup:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_245383000, a2, OS_LOG_TYPE_ERROR, "Unhandled state, no method of obtaining groups from %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_topLevelSpecifiersForGroup:(os_log_t)log .cold.4(unint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a1 / 1000000000.0;
  _os_log_debug_impl(&dword_245383000, log, OS_LOG_TYPE_DEBUG, "END [%llu] %fs: GenerateTopSpecifiers", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end