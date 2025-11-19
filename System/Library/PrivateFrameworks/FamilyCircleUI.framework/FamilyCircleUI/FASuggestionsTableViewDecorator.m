@interface FASuggestionsTableViewDecorator
+ (BOOL)shouldShowSuggestionsInPage:(id)a3;
- (FASuggestionsTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 pictureStore:(id)a5 recommendations:(id)a6 proactiveModelUsed:(int64_t)a7 emergencyContacts:(id)a8 context:(id)a9 viewController:(id)a10 suggester:(id)a11 objectModel:(id)a12;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)accessoryViewFor:(id)a3;
- (id)indexFor:(id)a3;
- (id)indexForSuggestionsSection;
- (id)inviteButtonForSuggestion;
- (id)inviteSentImageForSuggestion;
- (id)relationForContact:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapInviteButtonInCell:(id)a3;
- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7;
- (void)sendSuggestionFeedbackFor:(id)a3;
- (void)setupInviteConfiguratioControllerFor:(int64_t)a3 contactHandle:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSuggestionCellFor:(id)a3;
@end

@implementation FASuggestionsTableViewDecorator

- (FASuggestionsTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 pictureStore:(id)a5 recommendations:(id)a6 proactiveModelUsed:(int64_t)a7 emergencyContacts:(id)a8 context:(id)a9 viewController:(id)a10 suggester:(id)a11 objectModel:(id)a12
{
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a8;
  v29 = a9;
  v28 = a10;
  v27 = a11;
  v26 = a12;
  v34.receiver = self;
  v34.super_class = FASuggestionsTableViewDecorator;
  v18 = [(FATableViewDecorator *)&v34 initWithTableView:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_familySuggestionsPictureStore, a5);
    objc_storeStrong(&v19->_remoteTableViewController, a4);
    objc_storeStrong(&v19->_recommendedFamilyMembers, a6);
    v19->_proactiveModelUsedToDeriveRecommendations = a7;
    objc_storeStrong(&v19->_emergencyContacts, a8);
    objc_storeStrong(&v19->_context, a9);
    objc_storeStrong(&v19->_viewController, a10);
    objc_storeStrong(&v19->_suggester, a11);
    v20 = objc_alloc_init(MEMORY[0x277CBEB98]);
    invitedHandles = v19->_invitedHandles;
    v19->_invitedHandles = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v19->_contactStore;
    v19->_contactStore = v22;

    objc_storeStrong(&v19->_objectModel, a12);
  }

  return v19;
}

+ (BOOL)shouldShowSuggestionsInPage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasTableView])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 tableViewOM];
    v5 = [v4 sections];

    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) attributes];
          v11 = [v10 objectForKeyedSubscript:@"familyAction"];
          v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

          if (v12)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)accessoryViewFor:(id)a3
{
  v4 = a3;
  v5 = _IDSCopyIDForEmailAddress();
  v6 = [v5 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

  v7 = _IDSCopyIDForPhoneNumberWithOptions();
  v8 = [v7 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

  if ([(NSSet *)self->_invitedHandles containsObject:v6]|| [(NSSet *)self->_invitedHandles containsObject:v8])
  {
    v9 = [(FASuggestionsTableViewDecorator *)self inviteSentImageForSuggestion];
  }

  else
  {
    v9 = [(FASuggestionsTableViewDecorator *)self inviteButtonForSuggestion];
  }

  v10 = v9;

  return v10;
}

- (id)indexForSuggestionsSection
{
  v3 = [(RUITableView *)self->_remoteTableViewController sections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(RUITableView *)self->_remoteTableViewController sections];
      v7 = [v6 objectAtIndex:v5];

      v8 = [v7 attributes];
      v9 = [v8 objectForKeyedSubscript:@"familyAction"];
      v10 = [v9 isEqual:@"InjectFamilySuggestionsView"];

      if (v10)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (id)indexFor:(id)a3
{
  v21 = a3;
  v19 = [(NSArray *)self->_recommendedFamilyMembers count];
  if (v19)
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NSArray *)self->_recommendedFamilyMembers objectAtIndex:v3];
      v5 = _IDSCopyIDForEmailAddress();
      v6 = [v5 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

      v7 = _IDSCopyIDForPhoneNumberWithOptions();
      v8 = [v7 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

      v9 = [v4 iMessageHandle];
      v10 = _IDSCopyIDForEmailAddress();
      v11 = [v10 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

      v12 = [v4 iMessageHandle];
      v13 = _IDSCopyIDForPhoneNumberWithOptions();
      v14 = [v13 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

      if (([v11 isEqual:v6] & 1) != 0 || objc_msgSend(v14, "isEqual:", v8))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v19 == ++v3)
      {
        goto LABEL_9;
      }
    }

    v16 = v18;
  }

  else
  {
LABEL_9:
    v16 = 0;
  }

  return v16;
}

- (id)inviteButtonForSuggestion
{
  v3 = [MEMORY[0x277D75230] filledButtonConfiguration];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setBaseBackgroundColor:v4];

  v5 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBaseForegroundColor:v5];

  [v3 setButtonSize:0];
  [v3 setCornerStyle:4];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"INVITE_BUTTON_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__FASuggestionsTableViewDecorator_inviteButtonForSuggestion__block_invoke;
  v15 = &unk_2782F2A88;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:&v12];

  v10 = [MEMORY[0x277D75220] buttonWithConfiguration:v3 primaryAction:{v9, v12, v13, v14, v15}];
  [v10 sizeToFit];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __60__FASuggestionsTableViewDecorator_inviteButtonForSuggestion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained didTapInviteButtonInCell:v4];
}

- (id)inviteSentImageForSuggestion
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:22.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle" withConfiguration:v2];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  [v4 setTintColor:v5];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self->_remoteTableViewController sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v10 = [v9 attributes];
  v11 = [v10 objectForKeyedSubscript:@"familyAction"];
  v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

  if (v12)
  {
    v13 = [v6 dequeueReusableCellWithIdentifier:@"suggestionCell"];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"suggestionCell"];
    }

    v14 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v7 row]);
    v15 = [v14 contact];

    v16 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v7 row]);
    v17 = [v16 iMessageHandle];

    v18 = [(FASuggestionsTableViewDecorator *)self accessoryViewFor:v17];
    [v13 setAccessoryView:v18];

    v19 = [v7 row];
    v20 = [v13 accessoryView];
    [v20 setTag:v19];

    v21 = [MEMORY[0x277CBDA78] stringFromContact:v15 style:0];
    v22 = [v13 textLabel];
    [v22 setText:v21];

    v23 = [(FASuggestionsTableViewDecorator *)self relationForContact:v15];
    v24 = [v13 detailTextLabel];
    [v24 setText:v23];

    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v26 = [v13 detailTextLabel];
    [v26 setFont:v25];

    familySuggestionsPictureStore = self->_familySuggestionsPictureStore;
    v28 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v7 row]);
    v29 = [(FAProfilePictureStore *)familySuggestionsPictureStore profilePictureForRecommendedFamilyMember:v28];

    if (v29)
    {
      v30 = MEMORY[0x277D755B8];
      v31 = [MEMORY[0x277D759A0] mainScreen];
      [v31 scale];
      v32 = [v30 imageWithData:v29 scale:?];
      v33 = [v13 imageView];
      [v33 setImage:v32];

      v34 = [v13 imageView];
      [v34 setContentMode:4];
    }
  }

  else
  {
    v15 = [(FATableViewDecorator *)self dataSource];
    v13 = [v15 tableView:v6 cellForRowAtIndexPath:v7];
  }

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self->_remoteTableViewController sections];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 attributes];
  v10 = [v9 objectForKeyedSubscript:@"familyAction"];
  v11 = [v10 isEqual:@"InjectFamilySuggestionsView"];

  if (v11)
  {
    v12 = [(NSArray *)self->_recommendedFamilyMembers count];
  }

  else
  {
    v13 = [(FATableViewDecorator *)self dataSource];
    v12 = [v13 tableView:v6 numberOfRowsInSection:a4];
  }

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUITableView *)self->_remoteTableViewController sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v10 = [v9 attributes];
  v11 = [v10 objectForKeyedSubscript:@"familyAction"];
  v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

  if (v12)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v14 = [(FATableViewDecorator *)self delegate];
    [v14 tableView:v6 heightForRowAtIndexPath:v7];
    v13 = v15;
  }

  return v13;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v18 = a4;
  remoteTableViewController = self->_remoteTableViewController;
  v8 = a5;
  v9 = [(RUITableView *)remoteTableViewController sections];
  v10 = [v8 section];

  v11 = [v9 objectAtIndexedSubscript:v10];

  v12 = [v11 attributes];
  v13 = [v12 objectForKeyedSubscript:@"familyAction"];
  v14 = [v13 isEqual:@"InjectFamilySuggestionsView"];

  if (v14)
  {
    v15 = [MEMORY[0x277D75348] secondaryLabelColor];
    v16 = [v18 detailTextLabel];
    [v16 setTextColor:v15];

    v17 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v18 setBackgroundColor:v17];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RUITableView *)self->_remoteTableViewController sections];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 attributes];
  v10 = [v9 objectForKeyedSubscript:@"familyAction"];
  if ([v10 isEqual:@"InjectFamilySuggestionsView"])
  {
    v11 = [(NSArray *)self->_recommendedFamilyMembers count];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = [(FATableViewDecorator *)self dataSource];
  v12 = [v13 tableView:v6 titleForHeaderInSection:a4];

  v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FamilyCircle"];
  if ([v14 BOOLForKey:@"DebugMegadome"] && objc_msgSend(v12, "length"))
  {
    proactiveModelUsedToDeriveRecommendations = self->_proactiveModelUsedToDeriveRecommendations;
    v16 = @"Unknown";
    if (proactiveModelUsedToDeriveRecommendations == 3)
    {
      v16 = @"Megadome";
    }

    if (proactiveModelUsedToDeriveRecommendations == 2)
    {
      v17 = @"PeopleSuggester";
    }

    else
    {
      v17 = v16;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Model: %@)", v12, v17];

    v12 = v18;
  }

LABEL_14:

  return v12;
}

- (id)relationForContact:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_emergencyContacts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = [v10 nameContactIdentifier];
        v12 = [v4 identifier];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v35 = _FALogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v10 relationship];
            *buf = 138412290;
            v57 = v36;
            _os_log_impl(&dword_21BB35000, v35, OS_LOG_TYPE_DEFAULT, "contact relation from emergency contacts  %@", buf, 0xCu);
          }

          v37 = MEMORY[0x277CBDB20];
          v38 = [v10 relationship];
          v39 = [v37 localizedStringForLabel:v38];

          if (v39)
          {
            v34 = [v39 localizedCapitalizedString];
          }

          else
          {
            v40 = [v10 relationship];
            v34 = [v40 localizedCapitalizedString];
          }

          goto LABEL_28;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  contactStore = self->_contactStore;
  v15 = *MEMORY[0x277CBD000];
  v55[0] = *MEMORY[0x277CBD018];
  v55[1] = v15;
  v16 = *MEMORY[0x277CBCFF8];
  v55[2] = *MEMORY[0x277CBD058];
  v55[3] = v16;
  v17 = *MEMORY[0x277CBD098];
  v55[4] = *MEMORY[0x277CBCFC0];
  v55[5] = v17;
  v55[6] = *MEMORY[0x277CBD120];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:7];
  v49 = 0;
  v19 = [(CNContactStore *)contactStore _ios_meContactWithKeysToFetch:v18 error:&v49];
  v44 = v49;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = v19;
  v20 = [v19 contactRelations];
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v45 + 1) + 8 * j);
        v26 = [v25 value];
        v27 = [v26 name];
        v28 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {
          v30 = _FALogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v26;
            _os_log_impl(&dword_21BB35000, v30, OS_LOG_TYPE_DEFAULT, "contact relation from contacts %@", buf, 0xCu);
          }

          v31 = MEMORY[0x277CBDB20];
          v32 = [v25 label];
          v33 = [v31 localizedStringForLabel:v32];

          if (v33)
          {
            v34 = [v33 localizedCapitalizedString];

            goto LABEL_26;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v20 localizedStringForKey:@"FAMILY_SUGGESTION_DEFAULT_DETAIL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
LABEL_26:

  v39 = v43;
  v5 = v44;
LABEL_28:

  v41 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)didTapInviteButtonInCell:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v7 tag]);
    v5 = [v4 iMessageHandle];

    v6 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
    [v6 sendTapInviteOnSuggestedContactEvent];

    [(FASuggestionsTableViewDecorator *)self setupInviteConfiguratioControllerFor:1 contactHandle:v5];
  }
}

- (void)setupInviteConfiguratioControllerFor:(int64_t)a3 contactHandle:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    if (+[FAMailInviteConfigurationController isAvailable])
    {
      v11 = [FAMailInviteConfigurationController alloc];
      context = self->_context;
      v9 = [(RemoteUIController *)self->_viewController hostViewController];
      v10 = [(FAMailInviteConfigurationController *)v11 initWithInviteContext:context presentingController:v9 email:v6];
      goto LABEL_7;
    }

    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v15 = "Device cannot send emails";
      v16 = &v17;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a3 == 1)
  {
    if (+[FAMessagesInviteConfigurationController isAvailable])
    {
      v7 = [FAMessagesInviteConfigurationController alloc];
      v8 = self->_context;
      v9 = [(RemoteUIController *)self->_viewController hostViewController];
      v10 = [(FAMessagesInviteConfigurationController *)v7 initWithInviteContext:v8 presentingController:v9 familySuggestionHandle:v6];
LABEL_7:
      inviteConfigurationController = self->_inviteConfigurationController;
      self->_inviteConfigurationController = v10;

      goto LABEL_14;
    }

    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v15 = "Device cannot send messages";
      v16 = &v18;
LABEL_12:
      _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  [(FAInviteConfigurationController *)self->_inviteConfigurationController setDelegate:self, v17];
  [(FAInviteConfigurationController *)self->_inviteConfigurationController presentWhenReadyWithCompletion:&__block_literal_global_1];
}

- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a4;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "FASuggestions Controller did finish with status: %lu", buf, 0xCu);
  }

  v11 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
  [v11 sendSuggestedContactInvitedEventWithInviteCompletionStatus:a4];

  if (a4 == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277D082A8]);
    [v12 setStatus:1];
    [v12 setTransportType:1];
    [v12 setRecipients:v9];
    v13 = [v12 serverReadableDictionary];
    v14 = [v13 mutableCopy];

    v15 = [(FAInviteContext *)self->_context inviteURL];
    v16 = [v15 absoluteString];
    [v14 setObject:v16 forKey:@"inviteUrl"];

    v17 = [(RUIObjectModel *)self->_objectModel serverInfo];
    [v14 addEntriesFromDictionary:v17];

    v27 = 0;
    v18 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:&v27];
    v19 = v27;
    if (v18)
    {
      viewController = self->_viewController;
      v21 = [(FAInviteContext *)self->_context reportInviteeDetailsUrl];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __98__FASuggestionsTableViewDecorator_inviteController_didFinishWithStatus_recipients_userInfo_error___block_invoke;
      v24[3] = &unk_2782F2AD0;
      v25 = v9;
      v26 = self;
      [(RemoteUIController *)viewController loadURL:v21 postBody:v18 completion:v24];

      v22 = v25;
    }

    else
    {
      v22 = _FALogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&dword_21BB35000, v22, OS_LOG_TYPE_DEFAULT, "Couldn't serialize FAInviteCompletionInfo with error: %@", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __98__FASuggestionsTableViewDecorator_inviteController_didFinishWithStatus_recipients_userInfo_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "successfully sent pending invite info to server for  %@", &v11, 0xCu);
    }

    [*(a1 + 40) updateSuggestionCellFor:*(a1 + 32)];
    [*(a1 + 40) sendSuggestionFeedbackFor:*(a1 + 32)];
  }

  else
  {
    if (v7)
    {
      v9 = [v5 localizedDescription];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Error sending invite info to server %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSuggestionCellFor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__FASuggestionsTableViewDecorator_updateSuggestionCellFor___block_invoke;
  v6[3] = &unk_2782F2AF8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __59__FASuggestionsTableViewDecorator_updateSuggestionCellFor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) setByAddingObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) firstObject];
  v12 = [v5 indexFor:v6];

  v7 = [*(a1 + 32) indexForSuggestionsSection];
  if (v12)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v12 inSection:{"intValue"), objc_msgSend(v7, "intValue")}];
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v9, 0}];
    v11 = [*(a1 + 32) tableView];
    [v11 reloadRowsAtIndexPaths:v10 withRowAnimation:5];
  }
}

- (void)sendSuggestionFeedbackFor:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v58 = objc_alloc_init(MEMORY[0x277D3A0E0]);
  v55 = v3;
  v4 = [v3 firstObject];
  v57 = [(FASuggestionsTableViewDecorator *)self indexFor:v4];

  v5 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v57 intValue]);
  v6 = [MEMORY[0x277D08258] megadomeAdoption];
  if (![v6 isEnabled])
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277D08300] megadomeKillSwitch];
  if ([v7 isEnabledWithForceRefresh:1])
  {

LABEL_4:
    goto LABEL_5;
  }

  v37 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  v38 = [v37 megadomeFeedbackEventId];

  if (v38 != -1)
  {
    v39 = _FALogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v39, OS_LOG_TYPE_DEFAULT, "Submitting feedback to Megadome for suggestion tap", buf, 2u);
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v40 = getGDPersonEntityTagEventIDSetClass_softClass;
    v75 = getGDPersonEntityTagEventIDSetClass_softClass;
    if (!getGDPersonEntityTagEventIDSetClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v68 = 3221225472;
      v69 = __getGDPersonEntityTagEventIDSetClass_block_invoke;
      v70 = &unk_2782F2988;
      v71 = &v72;
      __getGDPersonEntityTagEventIDSetClass_block_invoke(buf);
      v40 = v73[3];
    }

    v41 = v40;
    _Block_object_dispose(&v72, 8);
    v42 = [v40 alloc];
    v43 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
    v56 = [v42 initWithEventId:{objc_msgSend(v43, "megadomeFeedbackEventId")}];

    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v44 = getGDPersonEntityTaggingStatefulFeedbackClass_softClass;
    v75 = getGDPersonEntityTaggingStatefulFeedbackClass_softClass;
    if (!getGDPersonEntityTaggingStatefulFeedbackClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v68 = 3221225472;
      v69 = __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke;
      v70 = &unk_2782F2988;
      v71 = &v72;
      __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke(buf);
      v44 = v73[3];
    }

    v45 = v44;
    _Block_object_dispose(&v72, 8);
    v60 = [[v44 alloc] initWithStatefulFeedbackType:2 eventIds:v56];
    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v46 = getGDConfigurationClass_softClass;
    v75 = getGDConfigurationClass_softClass;
    if (!getGDConfigurationClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v68 = 3221225472;
      v69 = __getGDConfigurationClass_block_invoke;
      v70 = &unk_2782F2988;
      v71 = &v72;
      __getGDConfigurationClass_block_invoke(buf);
      v46 = v73[3];
    }

    v47 = v46;
    _Block_object_dispose(&v72, 8);
    v35 = objc_alloc_init(v46);
    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v48 = getGDEntityTaggingServiceClass_softClass;
    v75 = getGDEntityTaggingServiceClass_softClass;
    if (!getGDEntityTaggingServiceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v68 = 3221225472;
      v69 = __getGDEntityTaggingServiceClass_block_invoke;
      v70 = &unk_2782F2988;
      v71 = &v72;
      __getGDEntityTaggingServiceClass_block_invoke(buf);
      v48 = v73[3];
    }

    v49 = v48;
    _Block_object_dispose(&v72, 8);
    v66 = 0;
    v50 = [[v48 alloc] initWithConfig:v35 error:&v66];
    v51 = v66;
    if (!v50)
    {
      v52 = _FALogSystem();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [(FASuggestionsTableViewDecorator *)v51 sendSuggestionFeedbackFor:v52];
      }
    }

    v65 = 0;
    [v50 recordStatefulFeedback:v60 error:&v65];
    v53 = v65;
    if (v53)
    {
      v54 = _FALogSystem();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [(FASuggestionsTableViewDecorator *)v53 sendSuggestionFeedbackFor:v54];
      }
    }

    goto LABEL_18;
  }

LABEL_5:
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Submitting feedback to PeopleSuggester for suggestion tap", buf, 2u);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  v10 = [v9 peopleSuggesterSuggestions];

  v11 = [v10 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v11)
  {
    v12 = *v62;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        v15 = [v14 recipients];
        v16 = [v15 firstObject];

        v17 = [v5 handle];
        v18 = [v16 handle];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v20 = v14;

          v58 = v20;
          goto LABEL_17;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v61 objects:v76 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v21 = objc_alloc(MEMORY[0x277D3A0A8]);
  v22 = [v58 bundleID];
  v56 = [v21 initWithType:0 suggestion:v58 transportBundleID:v22];

  v23 = MEMORY[0x277D3A0A0];
  v24 = [MEMORY[0x277CBEAA8] date];
  v25 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  v26 = [v25 peopleSuggesterPredictionContext];
  v27 = [v26 suggestionDate];
  [v24 timeIntervalSinceDate:v27];
  v29 = v28;
  v30 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  v31 = [v30 peopleSuggesterPredictionContext];
  v32 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  v33 = [v32 peopleSuggesterSuggestions];
  *&v34 = [(NSArray *)self->_recommendedFamilyMembers count];
  v60 = [v23 feedbackForAction:v56 delay:v31 context:v33 suggestions:0 numberOfVisibleSuggestions:v29 sessionIdentifier:v34];

  v35 = [MEMORY[0x277D3A0D0] suggesterWithDaemon];
  [v35 provideFeedbackForSuggestions:v60];
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sendSuggestionFeedbackFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome entity tagging service while providing feedback: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendSuggestionFeedbackFor:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error providing feedback to megadome: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end