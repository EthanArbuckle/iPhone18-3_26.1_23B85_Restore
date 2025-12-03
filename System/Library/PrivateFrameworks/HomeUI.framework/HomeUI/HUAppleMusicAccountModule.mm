@interface HUAppleMusicAccountModule
- (HUAppleMusicAccountModule)initWithMediaProfileContainer:(id)container itemUpdater:(id)updater;
- (NSString)explicitAccountSignedInMessage;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)signInMessage:(BOOL)message;
- (unint64_t)numberOfKnownAccounts;
- (void)accessoryDidUpdatePreferredMediaUser:(id)user;
- (void)dispatcher:(id)dispatcher appleMusicAccountsDidUpdate:(id)update;
- (void)setState:(unint64_t)state;
@end

@implementation HUAppleMusicAccountModule

- (HUAppleMusicAccountModule)initWithMediaProfileContainer:(id)container itemUpdater:(id)updater
{
  containerCopy = container;
  v43.receiver = self;
  v43.super_class = HUAppleMusicAccountModule;
  v8 = [(HFItemModule *)&v43 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaProfileContainer, container);
    v10 = [(HUAppleMusicItem *)[HUAppleMusicLogoutItem alloc] initWithMediaProfileContainer:containerCopy];
    logoutItem = v9->_logoutItem;
    v9->_logoutItem = &v10->super;

    v12 = [(HUAppleMusicItem *)[HUAppleMusicLoginItem alloc] initWithMediaProfileContainer:containerCopy];
    loginItem = v9->_loginItem;
    v9->_loginItem = &v12->super;

    v14 = [(HUAppleMusicItem *)[HUAppleMusicCurrentlyLoggedInAccountItem alloc] initWithMediaProfileContainer:containerCopy];
    loggedInUsernameItem = v9->_loggedInUsernameItem;
    v9->_loggedInUsernameItem = &v14->super.super;

    v16 = objc_alloc(MEMORY[0x277D14B40]);
    v17 = MEMORY[0x277CBEB98];
    logoutItem = [(HUAppleMusicAccountModule *)v9 logoutItem];
    loginItem = [(HUAppleMusicAccountModule *)v9 loginItem];
    loggedInUsernameItem = [(HUAppleMusicAccountModule *)v9 loggedInUsernameItem];
    v21 = [v17 setWithObjects:{logoutItem, loginItem, loggedInUsernameItem, 0}];
    v22 = [v16 initWithItems:v21];
    appleMusicAccountActionItemProvider = v9->_appleMusicAccountActionItemProvider;
    v9->_appleMusicAccountActionItemProvider = v22;

    v24 = [[HUAppleMusicAccountItemProvider alloc] initWithMediaProfileContainer:containerCopy];
    appleMusicAccountItemProvider = v9->_appleMusicAccountItemProvider;
    v9->_appleMusicAccountItemProvider = v24;

    hf_appleMusicCurrentLoggedInAccount = [containerCopy hf_appleMusicCurrentLoggedInAccount];
    hf_homePodSupportsMultiUser = [containerCopy hf_homePodSupportsMultiUser];
    mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    uniqueIdentifier = [home uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v33 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

    objc_opt_class();
    v34 = v33;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (hf_homePodSupportsMultiUser && hf_appleMusicCurrentLoggedInAccount)
    {
      ams_altDSID = [hf_appleMusicCurrentLoggedInAccount ams_altDSID];
      ams_altDSID2 = [v36 ams_altDSID];
      v39 = [ams_altDSID isEqualToString:ams_altDSID2];

      if (v39)
      {
LABEL_12:
        v40 = 0;
        goto LABEL_13;
      }
    }

    else if ((hf_homePodSupportsMultiUser & 1) != 0 || !hf_appleMusicCurrentLoggedInAccount)
    {
      goto LABEL_12;
    }

    v40 = 1;
LABEL_13:
    v9->_state = v40;
    mEMORY[0x277D14808] = [MEMORY[0x277D14808] sharedDispatcher];
    [mEMORY[0x277D14808] addAppleMusicAccountObserver:v9];
  }

  return v9;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  appleMusicAccountItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  appleMusicAccountActionItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountActionItemProvider];
  v6 = [v3 setWithObjects:{appleMusicAccountItemProvider, appleMusicAccountActionItemProvider, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if (![itemsCopy count])
  {
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_24;
  }

  loggedInUsernameItem = [(HUAppleMusicAccountModule *)self loggedInUsernameItem];
  if (([itemsCopy containsObject:loggedInUsernameItem] & 1) == 0)
  {

    loggedInUsernameItem = 0;
  }

  appleMusicAccountItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  items = [appleMusicAccountItemProvider items];
  v8 = [items na_setByIntersectingWithSet:itemsCopy];
  allObjects = [v8 allObjects];

  appleMusicAccountActionItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountActionItemProvider];
  items2 = [appleMusicAccountActionItemProvider items];
  v12 = [items2 na_setByIntersectingWithSet:itemsCopy];
  allObjects2 = [v12 allObjects];
  v14 = [allObjects2 mutableCopy];

  [v14 removeObject:loggedInUsernameItem];
  v15 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:loggedInUsernameItem];
  if (![allObjects count] && !objc_msgSend(v14, "count") && !objc_msgSend(v15, "count"))
  {
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  v16 = objc_opt_new();
  v17 = [allObjects count];
  state = [(HUAppleMusicAccountModule *)self state];
  if ([allObjects count] && state != 1)
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAppleMusicAccountModule_MusicCredentialsSectionIdentifier"];
    [v19 setItems:allObjects];
    if (v17 >= 1)
    {
      v20 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSelectionHeader", @"HUAppleMusicAccountSelectionHeader", 1);
      [v19 setHeaderTitle:v20];
    }

    mediaProfileContainer = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
    hf_supportsPreferredMediaUser = [mediaProfileContainer hf_supportsPreferredMediaUser];

    if ((hf_supportsPreferredMediaUser & 1) == 0)
    {
      [v16 addObject:v19];
    }
  }

  if ([v15 count])
  {
    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAppleMusicAccountModule_MusicCurrentUserSectionIdentifier"];
    [v23 setItems:v15];
    mediaProfileContainer2 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
    hf_supportsPreferredMediaUser2 = [mediaProfileContainer2 hf_supportsPreferredMediaUser];

    if (hf_supportsPreferredMediaUser2)
    {
      v26 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsHomePodAccountSection_Header", @"HUPrimaryUserSettingsHomePodAccountSection_Header", 1);
      [v23 setHeaderTitle:v26];

      v27 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsHomePodAccountSection_Footer", @"HUPrimaryUserSettingsHomePodAccountSection_Footer", 1);
      [v23 setFooterTitle:v27];
    }

    [v16 addObject:v23];
    if ([v14 count])
    {
      v28 = [MEMORY[0x277CBEB18] arrayWithArray:v15];
      [v28 addObjectsFromArray:v14];
      v29 = [v28 copy];
      [v23 setItems:v29];
    }

    goto LABEL_22;
  }

  if ([v14 count])
  {
    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAppleMusicAccountModule_MusicActionsSectionIdentifier"];
    [v23 setItems:v14];
    [v16 addObject:v23];
LABEL_22:
  }

LABEL_23:

LABEL_24:

  return v16;
}

- (unint64_t)numberOfKnownAccounts
{
  appleMusicAccountItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  items = [appleMusicAccountItemProvider items];
  v4 = [items count];

  return v4;
}

- (id)signInMessage:(BOOL)message
{
  messageCopy = message;
  mediaProfileContainer = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  v6 = mediaProfileContainer;
  if (messageCopy)
  {
    hf_appleMusicCurrentLoggedInAccount = [mediaProfileContainer hf_appleMusicCurrentLoggedInAccount];

    mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    uniqueIdentifier = [home uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v13 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

    objc_opt_class();
    v14 = v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (hf_appleMusicCurrentLoggedInAccount && ([hf_appleMusicCurrentLoggedInAccount ams_altDSID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "ams_altDSID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
    {
      username = [hf_appleMusicCurrentLoggedInAccount username];
      v27 = HULocalizedStringWithFormat(@"HUAppleMusicAccountSignInFooter", @"%@", v21, v22, v23, v24, v25, v26, username);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    hf_appleMusicCurrentLoggedInAccountDSID = [mediaProfileContainer hf_appleMusicCurrentLoggedInAccountDSID];

    if (hf_appleMusicCurrentLoggedInAccountDSID)
    {
      v27 = 0;
    }

    else if ([(HUAppleMusicAccountModule *)self numberOfKnownAccounts]== 1)
    {
      appleMusicAccountItemProvider = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
      items = [appleMusicAccountItemProvider items];
      anyObject = [items anyObject];

      latestResults = [anyObject latestResults];
      v34 = [latestResults objectForKeyedSubscript:@"HOAppleMusicAccountKey"];

      username2 = [v34 username];
      v27 = HULocalizedStringWithFormat(@"HUAppleMusicAccountSelectionFooter_Singular", @"%@", v36, v37, v38, v39, v40, v41, username2);
    }

    else
    {
      v27 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSelectionFooter_Plural", @"HUAppleMusicAccountSelectionFooter_Plural", 1);
    }
  }

  return v27;
}

- (NSString)explicitAccountSignedInMessage
{
  mediaProfileContainer = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  hf_appleMusicCurrentLoggedInAccount = [mediaProfileContainer hf_appleMusicCurrentLoggedInAccount];

  mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v10 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  mediaProfileContainer2 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  if ([mediaProfileContainer2 hf_homePodSupportsMultiUser] && hf_appleMusicCurrentLoggedInAccount)
  {
    ams_altDSID = [hf_appleMusicCurrentLoggedInAccount ams_altDSID];
    ams_altDSID2 = [v13 ams_altDSID];
    v17 = [ams_altDSID isEqualToString:ams_altDSID2];

    if ((v17 & 1) == 0)
    {
      v18 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountExplicitSignedInFooter", @"HUAppleMusicAccountExplicitSignedInFooter", 1);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    if (state <= 1)
    {
      itemUpdater = [(HFItemModule *)self itemUpdater];
      v8 = MEMORY[0x277D14788];
      itemProviders = [(HUAppleMusicAccountModule *)self itemProviders];
      v10 = [v8 requestToReloadItemProviders:itemProviders senderSelector:a2];
      v11 = [itemUpdater performItemUpdateRequest:v10];
    }

    stateChangeObserver = [(HUAppleMusicAccountModule *)self stateChangeObserver];

    if (stateChangeObserver)
    {
      stateChangeObserver2 = [(HUAppleMusicAccountModule *)self stateChangeObserver];
      stateChangeObserver2[2](stateChangeObserver2, state, state);
    }
  }
}

- (void)dispatcher:(id)dispatcher appleMusicAccountsDidUpdate:(id)update
{
  v10 = [(HFItemModule *)self itemUpdater:dispatcher];
  v6 = MEMORY[0x277D14788];
  itemProviders = [(HUAppleMusicAccountModule *)self itemProviders];
  v8 = [v6 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v9 = [v10 performItemUpdateRequest:v8];
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)user
{
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  itemProviders = [(HUAppleMusicAccountModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v8 = [itemUpdater performItemUpdateRequest:v7];
}

@end