@interface FLPreferencesController
+ (BOOL)shouldPreflightNetworkAccessForGroup:(id)group item:(id)item;
- (FLPreferencesController)init;
- (FLPreferencesController)initWithViewModel:(id)model;
- (PSListController)listViewController;
- (id)_deferredLoadSpecifierWithName:(id)name;
- (id)_specifierForGroup:(id)group;
- (id)_specifierGroupString:(unint64_t)string;
- (id)_specifiersForItem:(id)item group:(id)group;
- (id)_topLevelSpecifiersForGroup:(unint64_t)group;
- (id)_urlBasedSpecifierWithName:(id)name;
- (id)spyglassSpecifiers;
- (void)_presentSpecifier:(id)specifier fromEventSource:(unint64_t)source;
- (void)_refreshItemsAndPresentDetailForSpecifier:(id)specifier;
- (void)_updateSpecifier:(id)specifier withCommonPropertiesForGroup:(id)group;
- (void)_zeroActionFailure:(id)failure;
- (void)loadSpecifier:(id)specifier;
- (void)performPreferencesActionForGroup:(id)group item:(id)item action:(id)action completion:(id)completion;
- (void)preflightNetworkConnectivityForHandler:(id)handler withCompletionHandler:(id)completionHandler;
- (void)setItemChangeObserver:(id)observer;
- (void)startPresentingForHandler:(id)handler withRemoteController:(id)controller customPresentationStyle:(BOOL)style;
- (void)stopSpinnerForSpecifier:(id)specifier;
@end

@implementation FLPreferencesController

- (FLPreferencesController)init
{
  v3 = objc_alloc(MEMORY[0x277CFE538]);
  v4 = [v3 initWithBundleIdentifier:*MEMORY[0x277CFE3F8] clientIdentifier:0];
  v5 = [(FLPreferencesController *)self initWithViewModel:v4];

  return v5;
}

- (FLPreferencesController)initWithViewModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = FLPreferencesController;
  v6 = [(FLPreferencesController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topViewModel, model);
    v8 = objc_alloc(MEMORY[0x277CED1E8]);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v10 = [v8 initWithAccountStore:defaultStore];
    serviceOwnersManager = v7->_serviceOwnersManager;
    v7->_serviceOwnersManager = v10;

    v12 = objc_opt_new();
    generatedSpecifiersByIdentifier = v7->_generatedSpecifiersByIdentifier;
    v7->_generatedSpecifiersByIdentifier = v12;
  }

  return v7;
}

- (id)_specifierGroupString:(unint64_t)string
{
  v3 = @"all";
  if (string == 1)
  {
    v3 = @"general";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"account";
  }
}

- (id)_topLevelSpecifiersForGroup:(unint64_t)group
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
    v7 = [(FLPreferencesController *)self _specifierGroupString:group];
    *buf = 138412290;
    v84 = v7;
    _os_log_impl(&dword_245383000, v6, OS_LOG_TYPE_DEFAULT, "Building top level specifiers for %@ specifiers", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  if (self->_groups)
  {
    goto LABEL_22;
  }

  primaryAccountID = self->_primaryAccountID;
  self->_primaryAccountID = 0;

  secondaryAccountIDs = self->_secondaryAccountIDs;
  self->_secondaryAccountIDs = 0;

  if (group != 2)
  {
    v10 = [(AIDAServiceOwnersManager *)self->_serviceOwnersManager accountForService:*MEMORY[0x277CED1A0]];
    identifier = [v10 identifier];
    v12 = self->_primaryAccountID;
    self->_primaryAccountID = identifier;

    if (!self->_primaryAccountID)
    {
      v13 = [(AIDAServiceOwnersManager *)self->_serviceOwnersManager accountForService:*MEMORY[0x277CED1C0]];
      identifier2 = [v13 identifier];
      v15 = self->_primaryAccountID;
      self->_primaryAccountID = identifier2;
    }

    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    dmc_visibleRemoteManagementAccounts = [defaultStore dmc_visibleRemoteManagementAccounts];

    if ([dmc_visibleRemoteManagementAccounts count] >= 2)
    {
      v18 = _FLLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(FLPreferencesController *)v18 _topLevelSpecifiersForGroup:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    v26 = [dmc_visibleRemoteManagementAccounts valueForKey:@"identifier"];
    v27 = self->_secondaryAccountIDs;
    self->_secondaryAccountIDs = v26;
  }

  topViewModel = self->_topViewModel;
  if (objc_opt_respondsToSelector())
  {
    groups = [(FLViewModel *)self->_topViewModel groupsForPrimaryAccount:self->_primaryAccountID secondaryAccounts:self->_secondaryAccountIDs];
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

    groups = [(FLViewModel *)self->_topViewModel groups];
  }

  p_super = &self->_groups->super;
  self->_groups = groups;
LABEL_21:

LABEL_22:
  v61 = v4;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = self->_groups;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  groupCopy3 = group;
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
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v79 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v78 + 1) + 8 * i);
      items = [v35 items];
      if ([items count])
      {
        identifier3 = [v35 identifier];
        v38 = [identifier3 isEqualToString:v71];

        identifier4 = [v35 identifier];
        v40 = [identifier4 isEqualToString:v70];

        identifier5 = [v35 identifier];
        v42 = [identifier5 isEqualToString:v69];

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
          accountID = [v35 accountID];
          v45 = [accountID isEqualToString:selfCopy->_primaryAccountID];

          if (!v42)
          {
LABEL_31:
            v46 = 0;
LABEL_35:
            if (!((groupCopy3 != 0) | v45 & 1 | v40 & 1) && !v46)
            {

              goto LABEL_56;
            }

            if (groupCopy3 == 1 && ((v45 | v46 | v40) & 1) != 0)
            {
              self = selfCopy;
              goto LABEL_52;
            }

            v48 = v38 | v42;
            v68 |= v38;
            if ((v68 & 1) == 0)
            {
              v48 = v40 | v38 | v42;
            }

            self = selfCopy;
            if (v48)
            {
              goto LABEL_48;
            }

            v49 = MEMORY[0x277D3FAD8];
            identifier6 = [v35 identifier];
            v51 = [@"FollowUps" stringByAppendingFormat:@": %@", identifier6];
            groupTitle = [v35 groupTitle];
            v53 = [v49 groupSpecifierWithID:v51 name:groupTitle];

            identifier7 = [v35 identifier];
            LODWORD(identifier6) = [identifier7 isEqualToString:v64];

            if (identifier6)
            {
              footerText = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v62, @"Items above require approval..."];
            }

            else
            {
              footerText = [v35 footerText];
              if (!footerText)
              {
LABEL_47:
                groupCopy3 = group;

                [array addObject:v53];
LABEL_48:
                if ([v35 shouldCoalesceItems])
                {
                  v56 = [(FLPreferencesController *)selfCopy _specifierForGroup:v35];
                  [array addObject:v56];
                }

                else
                {
                  v74[0] = MEMORY[0x277D85DD0];
                  v74[1] = 3221225472;
                  v74[2] = __55__FLPreferencesController__topLevelSpecifiersForGroup___block_invoke;
                  v74[3] = &unk_278E35C10;
                  v75 = array;
                  v76 = selfCopy;
                  v77 = v35;
                  [items enumerateObjectsUsingBlock:v74];
                  v56 = v75;
                }

                goto LABEL_52;
              }
            }

            [v53 setProperty:footerText forKey:v63];
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

        accountID2 = [v35 accountID];
        v46 = [accountID2 isEqualToString:selfCopy->_primaryAccountID];

        groupCopy3 = group;
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

  return array;
}

void __55__FLPreferencesController__topLevelSpecifiersForGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _specifiersForItem:a2 group:*(a1 + 48)];
  [v2 addObjectsFromArray:v3];
}

- (id)_specifiersForItem:(id)item group:(id)group
{
  v50[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  groupCopy = group;
  identifier = [groupCopy identifier];
  v9 = [identifier isEqualToString:*MEMORY[0x277CFE450]];

  if (v9)
  {
    v10 = [FLPreferencesFollowUpItemListSpeficierFactory detailSpecifiersForFollowUpItem:itemCopy target:self selector:sel__handleActionForSpecifier_];
  }

  else
  {
    displayStyle = [itemCopy displayStyle];
    extensionIdentifier = [itemCopy extensionIdentifier];
    title = [itemCopy title];
    if (extensionIdentifier || (displayStyle & 2) != 0)
    {
      v14 = [(FLPreferencesController *)self _deferredLoadSpecifierWithName:title];
    }

    else
    {
      v14 = [(FLPreferencesController *)self _urlBasedSpecifierWithName:title];
    }

    v15 = v14;

    v16 = *MEMORY[0x277CFE400];
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v18 = [v16 stringByAppendingString:uniqueIdentifier];
    [v15 setIdentifier:v18];

    if (([itemCopy displayStyle] & 0x10) == 0)
    {
      [v15 setProperty:&unk_2858517E8 forKey:*MEMORY[0x277D3FDB0]];
    }

    v50[0] = itemCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [v15 setProperty:v19 forKey:*MEMORY[0x277CFE3E0]];

    representingBundlePath = [itemCopy representingBundlePath];
    if (representingBundlePath)
    {
      v21 = representingBundlePath;
      bundleIconName = [itemCopy bundleIconName];

      if (bundleIconName)
      {
        bundleIconName2 = [itemCopy bundleIconName];
        [v15 setProperty:bundleIconName2 forKey:*MEMORY[0x277D3FDC0]];

        v24 = MEMORY[0x277CCA8D8];
        representingBundlePath2 = [itemCopy representingBundlePath];
        v26 = [v24 bundleWithPath:representingBundlePath2];

        v27 = _FLLogSystem();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          bundleIconName3 = [itemCopy bundleIconName];
          *buf = 138412546;
          v47 = bundleIconName3;
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
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "displayStyle")}];
      *buf = 138412290;
      v47 = v30;
      _os_log_impl(&dword_245383000, v29, OS_LOG_TYPE_DEFAULT, "Creating CFU with display style: %@", buf, 0xCu);
    }

    if ((displayStyle & 2) != 0 || ([MEMORY[0x277CFE4F0] currentEnvironment], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "followUpZeroActionsForTheWorld"), v31, v32))
    {
      [v15 setProperty:itemCopy forKey:*MEMORY[0x277CFE418]];
      actions = [itemCopy actions];
      firstObject = [actions firstObject];
      [v15 setProperty:firstObject forKey:*MEMORY[0x277CFE410]];
    }

    extensionIdentifier2 = [itemCopy extensionIdentifier];

    if (!extensionIdentifier2)
    {
      v36 = objc_alloc(MEMORY[0x277CFE528]);
      v45 = itemCopy;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v38 = [v36 initWithItems:v37];

      [v15 setProperty:v38 forKey:*MEMORY[0x277CFE428]];
    }

    [(FLPreferencesController *)self _updateSpecifier:v15 withCommonPropertiesForGroup:groupCopy];
    if (v15)
    {
      identifier2 = [v15 identifier];

      if (identifier2)
      {
        generatedSpecifiersByIdentifier = self->_generatedSpecifiersByIdentifier;
        identifier3 = [v15 identifier];
        [(NSMutableDictionary *)generatedSpecifiersByIdentifier setObject:v15 forKeyedSubscript:identifier3];
      }
    }

    v44 = v15;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_specifierForGroup:(id)group
{
  groupCopy = group;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  items = [groupCopy items];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__FLPreferencesController__specifierForGroup___block_invoke;
  v18[3] = &unk_278E35C38;
  v18[4] = &v19;
  [items enumerateObjectsUsingBlock:v18];

  if (*(v20 + 24) == 1)
  {
    rowTitle = [groupCopy rowTitle];
    v7 = [(FLPreferencesController *)self _deferredLoadSpecifierWithName:rowTitle];
  }

  else
  {
    rowTitle2 = [groupCopy rowTitle];
    v7 = [(FLPreferencesController *)self _urlBasedSpecifierWithName:rowTitle2];

    v9 = objc_alloc(MEMORY[0x277CFE528]);
    items2 = [groupCopy items];
    rowTitle = [v9 initWithItems:items2];

    [v7 setProperty:rowTitle forKey:*MEMORY[0x277CFE428]];
  }

  identifier = [groupCopy identifier];
  v12 = [*MEMORY[0x277CFE400] stringByAppendingString:identifier];
  [v7 setIdentifier:v12];

  v13 = MEMORY[0x277CCABB0];
  items3 = [groupCopy items];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(items3, "count")}];
  [v7 setProperty:v15 forKey:*MEMORY[0x277D3FDB0]];

  items4 = [groupCopy items];
  [v7 setProperty:items4 forKey:*MEMORY[0x277CFE3E0]];

  [(FLPreferencesController *)self _updateSpecifier:v7 withCommonPropertiesForGroup:groupCopy];
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

- (id)_deferredLoadSpecifierWithName:(id)name
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v3 setControllerLoadAction:sel_loadSpecifier_];

  return v3;
}

- (id)_urlBasedSpecifierWithName:(id)name
{
  v3 = MEMORY[0x277D3FAD8];
  nameCopy = name;
  v5 = [v3 preferenceSpecifierNamed:nameCopy target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  return v5;
}

- (void)_updateSpecifier:(id)specifier withCommonPropertiesForGroup:(id)group
{
  specifierCopy = specifier;
  groupCopy = group;
  v6 = objc_opt_class();
  identifier = [groupCopy identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x277CFE438]];

  if (v8)
  {
    v9 = [specifierCopy propertyForKey:*MEMORY[0x277CFE3E0]];
    if ([v9 count] == 1)
    {
      firstObject = [v9 firstObject];
      informativeFooterText = [firstObject informativeFooterText];

      if (informativeFooterText)
      {
        informativeFooterText = [firstObject informativeFooterText];
      }

      if ([firstObject displayExpirationDate])
      {
        formattedExpirationDate = [firstObject formattedExpirationDate];

        informativeFooterText = formattedExpirationDate;
      }

      if (!informativeFooterText)
      {
        goto LABEL_11;
      }
    }

    else
    {
      informativeFooterText = [groupCopy subtitleText];
      if (!informativeFooterText)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v6 = objc_opt_class();
    [specifierCopy setProperty:informativeFooterText forKey:*MEMORY[0x277D40160]];
    goto LABEL_11;
  }

LABEL_12:
  v13 = specifierCopy;
  if (v6)
  {
    [specifierCopy setProperty:v6 forKey:*MEMORY[0x277D3FE58]];
    v13 = specifierCopy;
  }

  [v13 setProperty:&unk_285851800 forKey:*MEMORY[0x277D3FD68]];
  rowTitle = [groupCopy rowTitle];
  [specifierCopy setProperty:rowTitle forKey:*MEMORY[0x277D40170]];

  [specifierCopy setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
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
  allPendingItems = [(FLViewModel *)self->_topViewModel allPendingItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__FLPreferencesController_spyglassSpecifiers__block_invoke;
  v19[3] = &unk_278E35C60;
  v19[4] = self;
  v7 = v5;
  v20 = v7;
  [allPendingItems enumerateObjectsUsingBlock:v19];
  allKeys = [v7 allKeys];
  if ([allKeys containsObject:@"verifyPrimaryEmail"])
  {
    v9 = @"verifyPrimaryEmail";
    goto LABEL_9;
  }

  if ([allKeys containsObject:@"com.apple.AAFollowUpIdentifier.StartUsing"])
  {
    v9 = @"com.apple.AAFollowUpIdentifier.StartUsing";
    goto LABEL_9;
  }

  if ([allKeys containsObject:@"com.apple.AAFollowUpIdentifier.VerifyTerms"])
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

  if (![allKeys count])
  {
    v10 = 0;
    goto LABEL_18;
  }

  firstObject = [allKeys firstObject];
  v10 = [v7 valueForKey:firstObject];

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

    listViewController = [(FLPreferencesController *)self listViewController];
    [(FLPreferencesFollowUpItemListViewController *)self->_spyglassController setPresentationContext:listViewController];
  }

  actions = [v10 actions];
  v15 = [actions count];

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

- (void)loadSpecifier:(id)specifier
{
  v26 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
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
      v25 = specifierCopy;
      _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "Loading specifier: %@", buf, 0xCu);
    }

    [(FLPreferencesController *)self startSpinnerForSpecifier:specifierCopy];
    v7 = [specifierCopy propertyForKey:*MEMORY[0x277CFE3E0]];
    firstObject = [v7 firstObject];
    groupIdentifier = [firstObject groupIdentifier];
    v17 = [groupIdentifier isEqualToString:*MEMORY[0x277CFE430]];

    if (v17)
    {
      v18 = [FLNetworkStatePrompter alloc];
      listViewController = [(FLPreferencesController *)self listViewController];
      v20 = [(FLNetworkStatePrompter *)v18 initWithPresenter:listViewController];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __41__FLPreferencesController_loadSpecifier___block_invoke;
      v22[3] = &unk_278E35C88;
      v22[4] = self;
      v23 = specifierCopy;
      [(FLNetworkStatePrompter *)v20 preflightNetworkStateWithCompletionHandler:v22];
    }

    else
    {
      [(FLPreferencesController *)self _refreshItemsAndPresentDetailForSpecifier:specifierCopy];
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

- (void)_refreshItemsAndPresentDetailForSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = specifierCopy;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Starting to refresh items for specifier: %@", buf, 0xCu);
  }

  v6 = [specifierCopy propertyForKey:*MEMORY[0x277CFE3E0]];
  topViewModel = self->_topViewModel;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__FLPreferencesController__refreshItemsAndPresentDetailForSpecifier___block_invoke;
  v10[3] = &unk_278E35CB0;
  v10[4] = self;
  v11 = specifierCopy;
  v8 = specifierCopy;
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

- (void)_presentSpecifier:(id)specifier fromEventSource:(unint64_t)source
{
  v25 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = specifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = source;
    _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "Presenting specifier: %@ with eventSource: %lu", buf, 0x16u);
  }

  v8 = [specifierCopy propertyForKey:*MEMORY[0x277CFE418]];
  if (v8)
  {
    mEMORY[0x277CFE530] = [MEMORY[0x277CFE530] sharedTelemetryController];
    [mEMORY[0x277CFE530] captureItemView:v8];

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
    [v10 actionTapped:specifierCopy eventSource:source withCompletionHandler:v18];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = [specifierCopy propertyForKey:*MEMORY[0x277CFE3E0]];
    [v11 enumerateObjectsUsingBlock:&__block_literal_global_0];
    listViewController = [(FLPreferencesController *)self listViewController];
    v13 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
    [(FLPreferencesFollowUpItemListViewController *)v13 setSpecifier:specifierCopy];
    [(FLPreferencesFollowUpItemListViewController *)v13 setParentController:listViewController];
    splitViewController = [listViewController splitViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      splitViewController2 = [listViewController splitViewController];
      [splitViewController2 showInitialViewController:v13];
    }

    else
    {
      [listViewController showController:v13];
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

- (void)_zeroActionFailure:(id)failure
{
  v19[2] = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  currentEnvironment = [MEMORY[0x277CFE4F0] currentEnvironment];
  isInternal = [currentEnvironment isInternal];

  if (isInternal)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__FLPreferencesController__zeroActionFailure___block_invoke;
    v17 = &unk_278E35A60;
    v18 = failureCopy;
    v7 = [FLAlertControllerAction actionWithTitle:@"Tap-To-Radar" style:1 handler:&v14];
    v19[0] = v7;
    v8 = [FLAlertControllerAction actionWithTitle:@"Dismiss" style:0 handler:0, v14, v15, v16, v17];
    v19[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Follow Up Error [INTERNAL]"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did you notice an error? If so, file a radar."];
    listViewController = [(FLPreferencesController *)self listViewController];
    [FLAlertControllerHelper presentAlertWithTitle:v10 message:v11 actions:v9 presentingController:listViewController];
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

- (void)startPresentingForHandler:(id)handler withRemoteController:(id)controller customPresentationStyle:(BOOL)style
{
  v13 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = controllerCopy;
    _os_log_impl(&dword_245383000, v8, OS_LOG_TYPE_DEFAULT, "Start presenting identifier: %@", &v11, 0xCu);
  }

  if (!style)
  {
    [controllerCopy setModalPresentationStyle:5];
  }

  listViewController = [(FLPreferencesController *)self listViewController];
  [listViewController presentViewController:controllerCopy animated:1 completion:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)preflightNetworkConnectivityForHandler:(id)handler withCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v6 = [FLNetworkStatePrompter alloc];
  listViewController = [(FLPreferencesController *)self listViewController];
  v8 = [(FLNetworkStatePrompter *)v6 initWithPresenter:listViewController];

  [(FLNetworkStatePrompter *)v8 preflightNetworkStateWithCompletionHandler:completionHandlerCopy];
}

- (void)setItemChangeObserver:(id)observer
{
  observerCopy = observer;
  topViewModel = self->_topViewModel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__FLPreferencesController_setItemChangeObserver___block_invoke;
  v7[3] = &unk_278E359E8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
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

- (void)stopSpinnerForSpecifier:(id)specifier
{
  self->_activityIndicatorActive = 0;
  specifierCopy = specifier;
  [specifierCopy fl_stopSpinner];
  listViewController = [(FLPreferencesController *)self listViewController];
  table = [listViewController table];
  v6 = [listViewController indexPathForSpecifier:specifierCopy];

  [table deselectRowAtIndexPath:v6 animated:0];
}

- (void)performPreferencesActionForGroup:(id)group item:(id)item action:(id)action completion:(id)completion
{
  groupCopy = group;
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v12 = actionCopy != 0;
  if (!actionCopy)
  {
    [groupCopy shouldCoalesceItems];
  }

  identifier = [groupCopy identifier];
  v14 = *MEMORY[0x277CFE450];
  v15 = [identifier isEqualToString:*MEMORY[0x277CFE450]];

  if (itemCopy)
  {
    displayStyle = [itemCopy displayStyle];
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v18 = [uniqueIdentifier isEqualToString:@"com.apple.ThreatNotificationUI.FollowUpItem.general"];

    if (actionCopy)
    {
      v19 = (displayStyle >> 1) & 1;
LABEL_8:
      firstObject = actionCopy;
      goto LABEL_9;
    }

    if ((displayStyle & 2) != 0)
    {
      actions = [itemCopy actions];
      firstObject = [actions firstObject];

      LODWORD(v19) = 1;
    }

    else
    {
      LODWORD(v19) = 0;
      firstObject = 0;
    }
  }

  else
  {
    LODWORD(v19) = 0;
    if (actionCopy)
    {
      v18 = 0;
      goto LABEL_8;
    }

    firstObject = 0;
    v18 = 0;
  }

LABEL_9:
  if ([groupCopy shouldCoalesceItems])
  {
    items = [groupCopy items];
    v21 = [items na_any:&__block_literal_global_95];

    if (v21)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    identifier2 = [groupCopy identifier];
    v23 = [identifier2 isEqualToString:v14];

    if (v23 & 1) != 0 || ([itemCopy extensionIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = (v24 != 0) | v19, v24, v12 = v19, (v25))
    {
LABEL_14:
      objc_initWeak(location, self->_topViewModel);
      v26 = MEMORY[0x277D2C900];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_2;
      v56[3] = &unk_278E35D68;
      v27 = itemCopy;
      v57 = v27;
      v28 = groupCopy;
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
      v30 = completionCopy;
      if ((v12 | v18))
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_4;
        v46[3] = &unk_278E35E58;
        v49 = v54;
        v47 = v27;
        v31 = firstObject;
        v48 = firstObject;
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
        v53 = completionCopy;
        [v29 flatMap:v50];
        v32 = v31 = firstObject;
        v33 = v51;

        v34 = v52;
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __83__FLPreferencesController_performPreferencesActionForGroup_item_action_completion___block_invoke_8;
      v44[3] = &unk_278E35E80;
      v45 = completionCopy;
      v36 = [v32 addCompletionBlock:v44];

      _Block_object_dispose(v54, 8);
      objc_destroyWeak(&v59);

      objc_destroyWeak(location);
      goto LABEL_24;
    }
  }

  v30 = completionCopy;
  if ([groupCopy shouldCoalesceItems])
  {
    lastObject = [(FLPreferencesController *)self _specifierForGroup:groupCopy];
  }

  else
  {
    v38 = [(FLPreferencesController *)self _specifiersForItem:itemCopy group:groupCopy];
    lastObject = [v38 lastObject];
  }

  v39 = objc_alloc_init(FLPreferencesFollowUpItemListViewController);
  [(FLPreferencesFollowUpItemListViewController *)v39 setSpecifier:lastObject];
  v40 = [[FLPreferencesTapActionResult alloc] initWithViewControllerToPresent:v39 presentationStyle:0];
  (*(completionCopy + 2))(completionCopy, v40);

  v31 = firstObject;
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

+ (BOOL)shouldPreflightNetworkAccessForGroup:(id)group item:(id)item
{
  groupCopy = group;
  itemCopy = item;
  identifier = [groupCopy identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x277CFE430]];

  if (v8)
  {
    if (itemCopy)
    {
      v9 = ([itemCopy displayStyle] >> 1) & 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    if ([groupCopy shouldCoalesceItems])
    {
      items = [groupCopy items];
      v10 = [items na_any:&__block_literal_global_106];
    }

    else
    {
      items = [itemCopy extensionIdentifier];
      v10 = (items != 0) | v9;
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