@interface FAFamilySettingsMemberSpecifierProvider
- (BOOL)_launchWithResourceDictionary:(id)a3;
- (BOOL)handleURL:(id)a3;
- (FAFamilyMemberCardTapHandler)memberCardTapHandler;
- (FAFamilySettingsMemberSpecifierProvider)initWithAppleAccount:(id)a3 familyCircle:(id)a4 familyPictureStore:(id)a5;
- (FAFamilySettingsMemberSpecifierProviderDelegeate)delegate;
- (NSArray)specifiers;
- (id)_createSpecifierForFamilyMemberCell:(id)a3;
- (id)_createSpecifierForPendingMember:(id)a3;
- (id)_specifierWithID:(id)a3;
- (void)_addFamilyMemberButtonWasTapped:(id)a3;
- (void)_delayedLoadIfNeeded;
- (void)_familyMemberCellWasTapped:(id)a3;
- (void)_pendingFamilyMemberCellWasTapped:(id)a3;
- (void)reloadSpecifiers;
- (void)setFamilyCircle:(id)a3;
@end

@implementation FAFamilySettingsMemberSpecifierProvider

- (FAFamilySettingsMemberSpecifierProvider)initWithAppleAccount:(id)a3 familyCircle:(id)a4 familyPictureStore:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FAFamilySettingsMemberSpecifierProvider;
  v10 = [(FAFamilySettingsMemberSpecifierProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_familyCircle, a4);
    objc_storeStrong(&v11->_familyPictureStore, a5);
  }

  return v11;
}

- (void)setFamilyCircle:(id)a3
{
  objc_storeStrong(&self->_familyCircle, a3);
  v6 = a3;
  specifiers = self->_specifiers;
  self->_specifiers = 0;
}

- (BOOL)handleURL:(id)a3
{
  v5 = a3;
  v6 = [(FAFamilySettingsMemberSpecifierProvider *)self _launchWithResourceDictionary:v5];
  if (!v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FAFamilySettingsMemberSpecifierProvider doesn't have the specifier, will try again upon response.", v9, 2u);
    }

    objc_storeStrong(&self->_cachedResourceDictionary, a3);
  }

  return v6;
}

- (BOOL)_launchWithResourceDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D08130]];
  if (!v4)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = [(FAFamilySettingsMemberSpecifierProvider *)self _specifierWithID:v4];
  v6 = v5;
  if (!v5 || ([v5 identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"AddMember"), v7, !v8))
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      specifiers = self->_specifiers;
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = specifiers;
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "A specifier for %@ was not found in: %@", &v14, 0x16u);
    }

    goto LABEL_8;
  }

  [(FAFamilySettingsMemberSpecifierProvider *)self _addFamilyMemberButtonWasTapped:v6];

  v9 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_delayedLoadIfNeeded
{
  if (self->_cachedResourceDictionary)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "We have a cached resource dictionary, let's try launching.", v5, 2u);
    }

    [(FAFamilySettingsMemberSpecifierProvider *)self _launchWithResourceDictionary:self->_cachedResourceDictionary];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    self->_cachedResourceDictionary = 0;
  }
}

- (NSArray)specifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([(FAFamilyCircle *)self->_familyCircle canAddMembers]& 1) == 0 && [(FAFamilyCircle *)self->_familyCircle showAddMemberButton])
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FamilyMembers"];
    v5 = [(FAFamilyCircle *)self->_familyCircle familyMembersFooterLabel];
    [v4 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

    [v3 addObject:v4];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [(FAFamilyCircle *)self->_familyCircle members];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(FAFamilySettingsMemberSpecifierProvider *)self _createSpecifierForFamilyMemberCell:*(*(&v39 + 1) + 8 * i)];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  v12 = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(FAFamilySettingsMemberSpecifierProvider *)self _createSpecifierForPendingMember:*(*(&v35 + 1) + 8 * j)];
        if (v17)
        {
          [v3 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  if ([(FAFamilyCircle *)self->_familyCircle showAddMemberButton])
  {
    v18 = [(FAFamilyCircle *)self->_familyCircle addMemberButtonLabel];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v21 localizedStringForKey:@"ADD_FAMILY_MEMBER_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];
    }

    v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:13 edit:0];
    addFamilyMemberCell = self->_addFamilyMemberCell;
    self->_addFamilyMemberCell = v22;

    [(PSSpecifier *)self->_addFamilyMemberCell setIdentifier:@"AddMember"];
    [(PSSpecifier *)self->_addFamilyMemberCell setButtonAction:sel__addFamilyMemberButtonWasTapped_];
    v24 = self->_addFamilyMemberCell;
    v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[FAFamilyCircle canAddMembers](self->_familyCircle, "canAddMembers")}];
    [(PSSpecifier *)v24 setProperty:v25 forKey:*MEMORY[0x277D3FF38]];

    v26 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
    if ([(FAFamilyCircle *)self->_familyCircle canAddMembers])
    {
      [(PSSpecifier *)self->_addFamilyMemberCell setProperty:v26 forKey:*MEMORY[0x277D3FFC0]];
    }

    else
    {
      v27 = [MEMORY[0x277D75348] systemDarkGrayColor];
      v28 = [v26 imageWithTintColor:v27 renderingMode:1];

      [(PSSpecifier *)self->_addFamilyMemberCell setProperty:v28 forKey:*MEMORY[0x277D3FFC0]];
    }

    [v3 addObject:self->_addFamilyMemberCell];
  }

  v29 = [v3 copy];
  specifiers = self->_specifiers;
  self->_specifiers = v29;

  [(FAFamilySettingsMemberSpecifierProvider *)self _delayedLoadIfNeeded];
  v31 = self->_specifiers;
  v32 = v31;

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)_createSpecifierForFamilyMemberCell:(id)a3
{
  v4 = a3;
  v5 = [v4 fullName];
  if ([v4 isMe])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FAMILY_MEMBER_ME_MARKER_FORMAT" value:&stru_282D9AA68 table:@"Localizable"];
    v9 = [v6 stringWithFormat:v8, v5];

    v5 = v9;
  }

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];
  v11 = [v4 appleID];
  [v10 setIdentifier:v11];

  if (([v4 hasLinkediTunesAccount] & 1) != 0 || !objc_msgSend(v4, "isMe"))
  {
    v18 = [v4 memberTypeDisplayString];

    if (!v18)
    {
      goto LABEL_11;
    }

    v12 = [v4 memberTypeDisplayString];
    v15 = *MEMORY[0x277D40160];
    v17 = v10;
    v16 = v12;
  }

  else
  {
    v12 = [v4 iTunesNotLinkedMessage];
    if (![v12 length])
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"NOT_SHARING_PURCHASES" value:&stru_282D9AA68 table:@"Localizable"];

      v12 = v14;
    }

    [v10 setProperty:v12 forKey:*MEMORY[0x277D40160]];
    v15 = *MEMORY[0x277CEC9B0];
    v16 = MEMORY[0x277CBEC38];
    v17 = v10;
  }

  [v17 setProperty:v16 forKey:v15];

LABEL_11:
  v19 = [v4 dsid];

  if (v19)
  {
    [v10 setProperty:v4 forKey:@"FAFamilySettingsMemberSpecifierMemberKey"];
  }

  v20 = [(FAProfilePictureStore *)self->_familyPictureStore profilePictureForFamilyMember:v4 pictureDiameter:40.0];
  if (v20)
  {
    v21 = MEMORY[0x277D755B8];
    v22 = [MEMORY[0x277D759A0] mainScreen];
    [v22 scale];
    v23 = [v21 imageWithData:v20 scale:?];

    [v10 setProperty:v23 forKey:*MEMORY[0x277D3FFC0]];
  }

  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = [WeakRetained preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v25);
  v27 = MEMORY[0x277CCABB0];
  if (IsAccessibilityCategory)
  {
    v28 = *MEMORY[0x277D76F30];
  }

  else
  {
    PSRoundToPixel();
  }

  v29 = [v27 numberWithDouble:v28];
  [v10 setProperty:v29 forKey:*MEMORY[0x277D40140]];

  [v10 setProperty:&unk_282DC0780 forKey:*MEMORY[0x277CEC9A8]];
  [v10 setControllerLoadAction:sel__familyMemberCellWasTapped_];

  return v10;
}

- (id)_createSpecifierForPendingMember:(id)a3
{
  v4 = a3;
  v5 = [v4 fullName];
  v6 = [v4 inviteEmail];
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [v4 invitationDate];

  if (v10)
  {
    v11 = [MEMORY[0x277CCA968] fa_standardFormatter];
    [v11 setFormattingContext:5];
    v12 = [v4 invitationDate];
    v13 = [v11 stringFromDate:v12];

    v14 = [v4 invitationDate];
    v15 = [v14 isDateRelative];

    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v17;
    if (v15)
    {
      v19 = @"INVITED_DATE_RELATIVE";
    }

    else
    {
      v19 = @"INVITED_DATE_ABSOLUTE";
    }

    v20 = [v17 localizedStringForKey:v19 value:&stru_282D9AA68 table:@"Localizable"];
    v21 = [v16 stringWithFormat:v20, v13];
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v11 localizedStringForKey:@"INVITED" value:&stru_282D9AA68 table:@"Localizable"];
  }

  v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v22 setIdentifier:v7];

  [v22 setProperty:v21 forKey:*MEMORY[0x277D40160]];
  [v22 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v24 = [WeakRetained preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v24);
  v26 = MEMORY[0x277CCABB0];
  if (IsAccessibilityCategory)
  {
    v27 = *MEMORY[0x277D76F30];
  }

  else
  {
    PSRoundToPixel();
  }

  v28 = [v26 numberWithDouble:v27];
  [v22 setProperty:v28 forKey:*MEMORY[0x277D40140]];

  v29 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v22 setProperty:v29 forKey:*MEMORY[0x277CEC9B8]];

  [v22 setProperty:&unk_282DC0780 forKey:*MEMORY[0x277CEC9A8]];
  [v22 setControllerLoadAction:sel__pendingFamilyMemberCellWasTapped_];
  v30 = [(FAProfilePictureStore *)self->_familyPictureStore profilePictureForFamilyMember:v4 pictureDiameter:40.0];
  if (v30)
  {
    v31 = MEMORY[0x277D755B8];
    v32 = [MEMORY[0x277D759A0] mainScreen];
    [v32 scale];
    v33 = [v31 imageWithData:v30 scale:?];

    [v22 setProperty:v33 forKey:*MEMORY[0x277D3FFC0]];
  }

  [v22 setProperty:v4 forKey:@"FAFamilySettingsMemberSpecifierMemberKey"];

  return v22;
}

- (void)_addFamilyMemberButtonWasTapped:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addFamilyMemberButtonWasTapped:v4];
}

- (void)_familyMemberCellWasTapped:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familyMemberCellWasTapped:v4];
}

- (void)_pendingFamilyMemberCellWasTapped:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pendingFamilyMemberCellWasTapped:v4];
}

- (id)_specifierWithID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_specifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reloadSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;
  MEMORY[0x2821F96F8]();
}

- (FAFamilySettingsMemberSpecifierProviderDelegeate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FAFamilyMemberCardTapHandler)memberCardTapHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_memberCardTapHandler);

  return WeakRetained;
}

@end