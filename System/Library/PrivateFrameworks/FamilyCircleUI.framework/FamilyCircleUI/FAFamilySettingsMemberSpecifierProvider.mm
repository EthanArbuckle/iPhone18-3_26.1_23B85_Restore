@interface FAFamilySettingsMemberSpecifierProvider
- (BOOL)_launchWithResourceDictionary:(id)dictionary;
- (BOOL)handleURL:(id)l;
- (FAFamilyMemberCardTapHandler)memberCardTapHandler;
- (FAFamilySettingsMemberSpecifierProvider)initWithAppleAccount:(id)account familyCircle:(id)circle familyPictureStore:(id)store;
- (FAFamilySettingsMemberSpecifierProviderDelegeate)delegate;
- (NSArray)specifiers;
- (id)_createSpecifierForFamilyMemberCell:(id)cell;
- (id)_createSpecifierForPendingMember:(id)member;
- (id)_specifierWithID:(id)d;
- (void)_addFamilyMemberButtonWasTapped:(id)tapped;
- (void)_delayedLoadIfNeeded;
- (void)_familyMemberCellWasTapped:(id)tapped;
- (void)_pendingFamilyMemberCellWasTapped:(id)tapped;
- (void)reloadSpecifiers;
- (void)setFamilyCircle:(id)circle;
@end

@implementation FAFamilySettingsMemberSpecifierProvider

- (FAFamilySettingsMemberSpecifierProvider)initWithAppleAccount:(id)account familyCircle:(id)circle familyPictureStore:(id)store
{
  circleCopy = circle;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = FAFamilySettingsMemberSpecifierProvider;
  v10 = [(FAFamilySettingsMemberSpecifierProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_familyCircle, circle);
    objc_storeStrong(&v11->_familyPictureStore, store);
  }

  return v11;
}

- (void)setFamilyCircle:(id)circle
{
  objc_storeStrong(&self->_familyCircle, circle);
  circleCopy = circle;
  specifiers = self->_specifiers;
  self->_specifiers = 0;
}

- (BOOL)handleURL:(id)l
{
  lCopy = l;
  v6 = [(FAFamilySettingsMemberSpecifierProvider *)self _launchWithResourceDictionary:lCopy];
  if (!v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FAFamilySettingsMemberSpecifierProvider doesn't have the specifier, will try again upon response.", v9, 2u);
    }

    objc_storeStrong(&self->_cachedResourceDictionary, l);
  }

  return v6;
}

- (BOOL)_launchWithResourceDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D08130]];
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
    familyMembersFooterLabel = [(FAFamilyCircle *)self->_familyCircle familyMembersFooterLabel];
    [v4 setProperty:familyMembersFooterLabel forKey:*MEMORY[0x277D3FF88]];

    [v3 addObject:v4];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  members = [(FAFamilyCircle *)self->_familyCircle members];
  v7 = [members countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(members);
        }

        v11 = [(FAFamilySettingsMemberSpecifierProvider *)self _createSpecifierForFamilyMemberCell:*(*(&v39 + 1) + 8 * i)];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [members countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  pendingMembers = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [pendingMembers countByEnumeratingWithState:&v35 objects:v43 count:16];
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
          objc_enumerationMutation(pendingMembers);
        }

        v17 = [(FAFamilySettingsMemberSpecifierProvider *)self _createSpecifierForPendingMember:*(*(&v35 + 1) + 8 * j)];
        if (v17)
        {
          [v3 addObject:v17];
        }
      }

      v14 = [pendingMembers countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  if ([(FAFamilyCircle *)self->_familyCircle showAddMemberButton])
  {
    addMemberButtonLabel = [(FAFamilyCircle *)self->_familyCircle addMemberButtonLabel];
    v19 = addMemberButtonLabel;
    if (addMemberButtonLabel)
    {
      v20 = addMemberButtonLabel;
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
      systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
      v28 = [v26 imageWithTintColor:systemDarkGrayColor renderingMode:1];

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

- (id)_createSpecifierForFamilyMemberCell:(id)cell
{
  cellCopy = cell;
  fullName = [cellCopy fullName];
  if ([cellCopy isMe])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FAMILY_MEMBER_ME_MARKER_FORMAT" value:&stru_282D9AA68 table:@"Localizable"];
    v9 = [v6 stringWithFormat:v8, fullName];

    fullName = v9;
  }

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:fullName target:self set:0 get:0 detail:0 cell:2 edit:0];
  appleID = [cellCopy appleID];
  [v10 setIdentifier:appleID];

  if (([cellCopy hasLinkediTunesAccount] & 1) != 0 || !objc_msgSend(cellCopy, "isMe"))
  {
    memberTypeDisplayString = [cellCopy memberTypeDisplayString];

    if (!memberTypeDisplayString)
    {
      goto LABEL_11;
    }

    memberTypeDisplayString2 = [cellCopy memberTypeDisplayString];
    v15 = *MEMORY[0x277D40160];
    v17 = v10;
    v16 = memberTypeDisplayString2;
  }

  else
  {
    memberTypeDisplayString2 = [cellCopy iTunesNotLinkedMessage];
    if (![memberTypeDisplayString2 length])
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"NOT_SHARING_PURCHASES" value:&stru_282D9AA68 table:@"Localizable"];

      memberTypeDisplayString2 = v14;
    }

    [v10 setProperty:memberTypeDisplayString2 forKey:*MEMORY[0x277D40160]];
    v15 = *MEMORY[0x277CEC9B0];
    v16 = MEMORY[0x277CBEC38];
    v17 = v10;
  }

  [v17 setProperty:v16 forKey:v15];

LABEL_11:
  dsid = [cellCopy dsid];

  if (dsid)
  {
    [v10 setProperty:cellCopy forKey:@"FAFamilySettingsMemberSpecifierMemberKey"];
  }

  v20 = [(FAProfilePictureStore *)self->_familyPictureStore profilePictureForFamilyMember:cellCopy pictureDiameter:40.0];
  if (v20)
  {
    v21 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v23 = [v21 imageWithData:v20 scale:?];

    [v10 setProperty:v23 forKey:*MEMORY[0x277D3FFC0]];
  }

  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  preferredContentSizeCategory = [WeakRetained preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
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

- (id)_createSpecifierForPendingMember:(id)member
{
  memberCopy = member;
  fullName = [memberCopy fullName];
  inviteEmail = [memberCopy inviteEmail];
  v7 = inviteEmail;
  if (fullName)
  {
    v8 = fullName;
  }

  else
  {
    v8 = inviteEmail;
  }

  v9 = v8;
  invitationDate = [memberCopy invitationDate];

  if (invitationDate)
  {
    fa_standardFormatter = [MEMORY[0x277CCA968] fa_standardFormatter];
    [fa_standardFormatter setFormattingContext:5];
    invitationDate2 = [memberCopy invitationDate];
    v13 = [fa_standardFormatter stringFromDate:invitationDate2];

    invitationDate3 = [memberCopy invitationDate];
    isDateRelative = [invitationDate3 isDateRelative];

    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v17;
    if (isDateRelative)
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
    fa_standardFormatter = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [fa_standardFormatter localizedStringForKey:@"INVITED" value:&stru_282D9AA68 table:@"Localizable"];
  }

  v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v22 setIdentifier:v7];

  [v22 setProperty:v21 forKey:*MEMORY[0x277D40160]];
  [v22 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  preferredContentSizeCategory = [WeakRetained preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v22 setProperty:secondaryLabelColor forKey:*MEMORY[0x277CEC9B8]];

  [v22 setProperty:&unk_282DC0780 forKey:*MEMORY[0x277CEC9A8]];
  [v22 setControllerLoadAction:sel__pendingFamilyMemberCellWasTapped_];
  v30 = [(FAProfilePictureStore *)self->_familyPictureStore profilePictureForFamilyMember:memberCopy pictureDiameter:40.0];
  if (v30)
  {
    v31 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v33 = [v31 imageWithData:v30 scale:?];

    [v22 setProperty:v33 forKey:*MEMORY[0x277D3FFC0]];
  }

  [v22 setProperty:memberCopy forKey:@"FAFamilySettingsMemberSpecifierMemberKey"];

  return v22;
}

- (void)_addFamilyMemberButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addFamilyMemberButtonWasTapped:tappedCopy];
}

- (void)_familyMemberCellWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familyMemberCellWasTapped:tappedCopy];
}

- (void)_pendingFamilyMemberCellWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pendingFamilyMemberCellWasTapped:tappedCopy];
}

- (id)_specifierWithID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:dCopy];

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