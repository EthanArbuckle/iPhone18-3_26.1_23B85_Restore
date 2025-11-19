@interface HUAppleMusicAccountModule
- (HUAppleMusicAccountModule)initWithMediaProfileContainer:(id)a3 itemUpdater:(id)a4;
- (NSString)explicitAccountSignedInMessage;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)signInMessage:(BOOL)a3;
- (unint64_t)numberOfKnownAccounts;
- (void)accessoryDidUpdatePreferredMediaUser:(id)a3;
- (void)dispatcher:(id)a3 appleMusicAccountsDidUpdate:(id)a4;
- (void)setState:(unint64_t)a3;
@end

@implementation HUAppleMusicAccountModule

- (HUAppleMusicAccountModule)initWithMediaProfileContainer:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v43.receiver = self;
  v43.super_class = HUAppleMusicAccountModule;
  v8 = [(HFItemModule *)&v43 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaProfileContainer, a3);
    v10 = [(HUAppleMusicItem *)[HUAppleMusicLogoutItem alloc] initWithMediaProfileContainer:v7];
    logoutItem = v9->_logoutItem;
    v9->_logoutItem = &v10->super;

    v12 = [(HUAppleMusicItem *)[HUAppleMusicLoginItem alloc] initWithMediaProfileContainer:v7];
    loginItem = v9->_loginItem;
    v9->_loginItem = &v12->super;

    v14 = [(HUAppleMusicItem *)[HUAppleMusicCurrentlyLoggedInAccountItem alloc] initWithMediaProfileContainer:v7];
    loggedInUsernameItem = v9->_loggedInUsernameItem;
    v9->_loggedInUsernameItem = &v14->super.super;

    v16 = objc_alloc(MEMORY[0x277D14B40]);
    v17 = MEMORY[0x277CBEB98];
    v18 = [(HUAppleMusicAccountModule *)v9 logoutItem];
    v19 = [(HUAppleMusicAccountModule *)v9 loginItem];
    v20 = [(HUAppleMusicAccountModule *)v9 loggedInUsernameItem];
    v21 = [v17 setWithObjects:{v18, v19, v20, 0}];
    v22 = [v16 initWithItems:v21];
    appleMusicAccountActionItemProvider = v9->_appleMusicAccountActionItemProvider;
    v9->_appleMusicAccountActionItemProvider = v22;

    v24 = [[HUAppleMusicAccountItemProvider alloc] initWithMediaProfileContainer:v7];
    appleMusicAccountItemProvider = v9->_appleMusicAccountItemProvider;
    v9->_appleMusicAccountItemProvider = v24;

    v26 = [v7 hf_appleMusicCurrentLoggedInAccount];
    v27 = [v7 hf_homePodSupportsMultiUser];
    v28 = [MEMORY[0x277D14400] sharedInstance];
    v29 = [MEMORY[0x277D146E8] sharedDispatcher];
    v30 = [v29 home];
    v31 = [v30 uniqueIdentifier];
    v32 = [v31 UUIDString];
    v33 = [v28 mediaAccountForHomeIdentifier:v32];

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

    if (v27 && v26)
    {
      v37 = [v26 ams_altDSID];
      v38 = [v36 ams_altDSID];
      v39 = [v37 isEqualToString:v38];

      if (v39)
      {
LABEL_12:
        v40 = 0;
        goto LABEL_13;
      }
    }

    else if ((v27 & 1) != 0 || !v26)
    {
      goto LABEL_12;
    }

    v40 = 1;
LABEL_13:
    v9->_state = v40;
    v41 = [MEMORY[0x277D14808] sharedDispatcher];
    [v41 addAppleMusicAccountObserver:v9];
  }

  return v9;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  v5 = [(HUAppleMusicAccountModule *)self appleMusicAccountActionItemProvider];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_24;
  }

  v5 = [(HUAppleMusicAccountModule *)self loggedInUsernameItem];
  if (([v4 containsObject:v5] & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  v7 = [v6 items];
  v8 = [v7 na_setByIntersectingWithSet:v4];
  v9 = [v8 allObjects];

  v10 = [(HUAppleMusicAccountModule *)self appleMusicAccountActionItemProvider];
  v11 = [v10 items];
  v12 = [v11 na_setByIntersectingWithSet:v4];
  v13 = [v12 allObjects];
  v14 = [v13 mutableCopy];

  [v14 removeObject:v5];
  v15 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:v5];
  if (![v9 count] && !objc_msgSend(v14, "count") && !objc_msgSend(v15, "count"))
  {
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  v16 = objc_opt_new();
  v17 = [v9 count];
  v18 = [(HUAppleMusicAccountModule *)self state];
  if ([v9 count] && v18 != 1)
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAppleMusicAccountModule_MusicCredentialsSectionIdentifier"];
    [v19 setItems:v9];
    if (v17 >= 1)
    {
      v20 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSelectionHeader", @"HUAppleMusicAccountSelectionHeader", 1);
      [v19 setHeaderTitle:v20];
    }

    v21 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
    v22 = [v21 hf_supportsPreferredMediaUser];

    if ((v22 & 1) == 0)
    {
      [v16 addObject:v19];
    }
  }

  if ([v15 count])
  {
    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAppleMusicAccountModule_MusicCurrentUserSectionIdentifier"];
    [v23 setItems:v15];
    v24 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
    v25 = [v24 hf_supportsPreferredMediaUser];

    if (v25)
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
  v2 = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
  v3 = [v2 items];
  v4 = [v3 count];

  return v4;
}

- (id)signInMessage:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 hf_appleMusicCurrentLoggedInAccount];

    v8 = [MEMORY[0x277D14400] sharedInstance];
    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    v10 = [v9 home];
    v11 = [v10 uniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v8 mediaAccountForHomeIdentifier:v12];

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

    if (v7 && ([v7 ams_altDSID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "ams_altDSID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
    {
      v20 = [v7 username];
      v27 = HULocalizedStringWithFormat(@"HUAppleMusicAccountSignInFooter", @"%@", v21, v22, v23, v24, v25, v26, v20);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = [v5 hf_appleMusicCurrentLoggedInAccountDSID];

    if (v28)
    {
      v27 = 0;
    }

    else if ([(HUAppleMusicAccountModule *)self numberOfKnownAccounts]== 1)
    {
      v30 = [(HUAppleMusicAccountModule *)self appleMusicAccountItemProvider];
      v31 = [v30 items];
      v32 = [v31 anyObject];

      v33 = [v32 latestResults];
      v34 = [v33 objectForKeyedSubscript:@"HOAppleMusicAccountKey"];

      v35 = [v34 username];
      v27 = HULocalizedStringWithFormat(@"HUAppleMusicAccountSelectionFooter_Singular", @"%@", v36, v37, v38, v39, v40, v41, v35);
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
  v3 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  v4 = [v3 hf_appleMusicCurrentLoggedInAccount];

  v5 = [MEMORY[0x277D14400] sharedInstance];
  v6 = [MEMORY[0x277D146E8] sharedDispatcher];
  v7 = [v6 home];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];
  v10 = [v5 mediaAccountForHomeIdentifier:v9];

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

  v14 = [(HUAppleMusicAccountModule *)self mediaProfileContainer];
  if ([v14 hf_homePodSupportsMultiUser] && v4)
  {
    v15 = [v4 ams_altDSID];
    v16 = [v13 ams_altDSID];
    v17 = [v15 isEqualToString:v16];

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

- (void)setState:(unint64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    if (a3 <= 1)
    {
      v7 = [(HFItemModule *)self itemUpdater];
      v8 = MEMORY[0x277D14788];
      v9 = [(HUAppleMusicAccountModule *)self itemProviders];
      v10 = [v8 requestToReloadItemProviders:v9 senderSelector:a2];
      v11 = [v7 performItemUpdateRequest:v10];
    }

    v12 = [(HUAppleMusicAccountModule *)self stateChangeObserver];

    if (v12)
    {
      v13 = [(HUAppleMusicAccountModule *)self stateChangeObserver];
      v13[2](v13, state, a3);
    }
  }
}

- (void)dispatcher:(id)a3 appleMusicAccountsDidUpdate:(id)a4
{
  v10 = [(HFItemModule *)self itemUpdater:a3];
  v6 = MEMORY[0x277D14788];
  v7 = [(HUAppleMusicAccountModule *)self itemProviders];
  v8 = [v6 requestToReloadItemProviders:v7 senderSelector:a2];
  v9 = [v10 performItemUpdateRequest:v8];
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)a3
{
  v9 = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  v6 = [(HUAppleMusicAccountModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];
  v8 = [v9 performItemUpdateRequest:v7];
}

@end