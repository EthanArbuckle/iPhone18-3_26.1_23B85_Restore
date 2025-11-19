@interface _UIShareInvitationAddParticipantController
+ (id)_subtitleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5;
+ (id)_titleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5;
+ (id)contactForMailAddress:(id)a3;
+ (id)contactForMailAddressOrPhoneNumber:(id)a3;
+ (id)contactForPhoneNumber:(id)a3;
+ (id)contactStore;
+ (void)_applyBoldFont:(id)a3 toPartialMatches:(id)a4 inAttributedString:(id)a5;
- (_UIContactSearchArrayController)searchController;
- (_UIShareInvitationAddParticipantController)initWithCurrentAddresses:(id)a3;
- (id)cancelButton;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)finishAndReturnParticipants;
- (id)sendButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateSendButton;
- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5;
- (void)cancelAction:(id)a3;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)continueAction:(id)a3;
- (void)dealloc;
- (void)startSearchingText:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateOtherRecipients;
- (void)updateSearchResults:(id)a3 changes:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation _UIShareInvitationAddParticipantController

- (_UIShareInvitationAddParticipantController)initWithCurrentAddresses:(id)a3
{
  v4 = a3;
  v97.receiver = self;
  v97.super_class = _UIShareInvitationAddParticipantController;
  v5 = [(_UIShareInvitationAddParticipantController *)&v97 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = [(_UIShareInvitationAddParticipantController *)v5 view];
    v96 = v4;
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    [(_UIShareInvitationAddParticipantController *)v6 setCurrentParticipants:v8];
    v9 = [CNComposeRecipientTextView alloc];
    v10 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [v10 bounds];
    v11 = [v9 initWithFrame:?];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v12 localizedStringForKey:@"GIVE_ACCESS_TO_LABEL" value:@"To:" table:@"Localizable"];
    [v11 setLabel:v13];

    [v11 setDelegate:v6];
    [v11 setSeparatorHidden:0];
    v14 = +[UIColor labelColor];
    [v11 setTypingTextColor:v14];

    [v7 addSubview:v11];
    [(_UIShareInvitationAddParticipantController *)v6 setAddressView:v11];
    v15 = objc_alloc_init(UILabel);
    [(_UIShareInvitationAddParticipantController *)v6 setInfoLabel:v15];

    v16 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    v18 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v18 setFont:v17];

    v19 = +[UIColor secondaryLabelColor];
    v20 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v20 setTextColor:v19];

    v21 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v21 setTextAlignment:1];

    v22 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v22 setText:@"Only people you add will have access."];

    v23 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v23 setNumberOfLines:0];

    v24 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [v7 addSubview:v24];

    v25 = [[UITableViewController alloc] initWithStyle:0];
    [(_UIShareInvitationAddParticipantController *)v6 setSearchResultTableViewController:v25];

    v26 = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    [(_UIShareInvitationAddParticipantController *)v6 addChildViewController:v26];

    v27 = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    v28 = [v27 tableView];

    [(_UIShareInvitationAddParticipantController *)v6 setSearchResultTable:v28];
    v29 = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    [v29 didMoveToParentViewController:v6];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setAlpha:0.0];
    [v28 setDelegate:v6];
    [v28 setDataSource:v6];
    [v28 registerClass:objc_opt_class() forCellReuseIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier"];
    [v7 addSubview:v28];
    v30 = [v11 heightAnchor];
    v31 = [v30 constraintEqualToConstant:49.5];
    [(_UIShareInvitationAddParticipantController *)v6 setAddressHeightConstraint:v31];

    v32 = objc_opt_new();
    v33 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [v33 addLayoutGuide:v32];

    v95 = v7;
    v34 = [v7 safeAreaLayoutGuide];
    v90 = [v11 topAnchor];
    v89 = [v34 topAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v100[0] = v88;
    v87 = [v11 bottomAnchor];
    v86 = [v28 topAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v100[1] = v85;
    v84 = [v11 leadingAnchor];
    v83 = [v34 leadingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v100[2] = v82;
    v81 = [v11 trailingAnchor];
    v80 = [v34 trailingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v100[3] = v79;
    v78 = [v28 bottomAnchor];
    v77 = [v34 bottomAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v100[4] = v76;
    v75 = [(_UIShareInvitationAddParticipantController *)v6 addressHeightConstraint];
    v100[5] = v75;
    v74 = [v28 leadingAnchor];
    v73 = [v34 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v100[6] = v72;
    v93 = v28;
    v71 = [v28 trailingAnchor];
    v70 = [v34 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v100[7] = v69;
    v68 = [(UILabel *)v6->_infoLabel widthAnchor];
    v67 = [v34 widthAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 multiplier:1.0 constant:-64.0];
    v100[8] = v66;
    v65 = [(UILabel *)v6->_infoLabel centerXAnchor];
    v64 = [v34 centerXAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v100[9] = v63;
    v62 = [v32 topAnchor];
    v94 = v11;
    v61 = [v11 bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v100[10] = v60;
    v59 = [v32 heightAnchor];
    v91 = v34;
    v35 = [v34 heightAnchor];
    v36 = [v59 constraintEqualToAnchor:v35 multiplier:0.340000004];
    v100[11] = v36;
    v37 = [(UILabel *)v6->_infoLabel topAnchor];
    v38 = [v32 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v100[12] = v39;
    v40 = [(UILabel *)v6->_infoLabel topAnchor];
    v92 = v32;
    v41 = [v32 centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v100[13] = v42;
    v43 = [NSArray arrayWithObjects:v100 count:14];
    [NSLayoutConstraint activateConstraints:v43];

    if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
    {
      [(_UIShareInvitationAddParticipantController *)v6 setEdgesForExtendedLayout:0];
    }

    v44 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v45 = [v44 localizedStringForKey:@"GIVE_ACCESS_TITLE" value:@"Add People" table:@"Localizable"];
    [(_UIShareInvitationAddParticipantController *)v6 setTitle:v45];

    v46 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v6 action:"cancelAction:"];
    v47 = [UIBarButtonItem alloc];
    v48 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v49 = [v48 localizedStringForKey:@"Continue" value:@"Continue" table:@"Localizable"];
    v50 = [v47 initWithTitle:v49 style:2 target:v6 action:"continueAction:"];

    v99 = v46;
    v51 = [NSArray arrayWithObjects:&v99 count:1];
    v52 = [(_UIShareInvitationAddParticipantController *)v6 navigationItem];
    [v52 setLeftBarButtonItems:v51];

    v98 = v50;
    v53 = [NSArray arrayWithObjects:&v98 count:1];
    v54 = [(_UIShareInvitationAddParticipantController *)v6 navigationItem];
    [v54 setRightBarButtonItems:v53];

    [(_UIShareInvitationAddParticipantController *)v6 _updateSendButton];
    [(_UIShareInvitationAddParticipantController *)v6 updateOtherRecipients];
    v55 = +[UIColor systemBackgroundColor];
    v56 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [v56 setBackgroundColor:v55];

    v57 = [[CNMonogrammer alloc] initWithStyle:0 diameter:40.0];
    [(_UIShareInvitationAddParticipantController *)v6 setMonogrammer:v57];

    [v94 becomeFirstResponder];
    v4 = v96;
  }

  return v6;
}

- (void)dealloc
{
  [(CNComposeRecipientTextView *)self->_addressView setDelegate:0];
  [(_UIContactSearchArrayController *)self->_searchController invalidate];
  v3.receiver = self;
  v3.super_class = _UIShareInvitationAddParticipantController;
  [(_UIShareInvitationAddParticipantController *)&v3 dealloc];
}

- (id)sendButton
{
  v2 = [(_UIShareInvitationAddParticipantController *)self navigationItem];
  v3 = [v2 rightBarButtonItem];

  return v3;
}

- (id)cancelButton
{
  v2 = [(_UIShareInvitationAddParticipantController *)self navigationItem];
  v3 = [v2 leftBarButtonItem];

  return v3;
}

- (void)_updateSendButton
{
  v12 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v7 = [v12 recipients];
  v8 = [v7 count];
  if (v8)
  {
    v9 = 0;
    IsPhoneNumber = 1;
  }

  else
  {
    v2 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v3 = [v2 text];
    if (IMStringIsEmail())
    {
      v9 = 0;
      IsPhoneNumber = 1;
    }

    else
    {
      v4 = [(_UIShareInvitationAddParticipantController *)self addressView];
      v5 = [v4 text];
      IsPhoneNumber = IMStringIsPhoneNumber();
      v9 = 1;
    }
  }

  v11 = [(_UIShareInvitationAddParticipantController *)self sendButton];
  [v11 setEnabled:IsPhoneNumber];

  if (v9)
  {
  }

  if (!v8)
  {
  }
}

- (id)finishAndReturnParticipants
{
  v3 = [(_UIShareInvitationAddParticipantController *)self addressView];
  [v3 resignFirstResponder];

  v4 = [(_UIShareInvitationAddParticipantController *)self addressView];
  [v4 finishEnteringRecipient];

  v5 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v6 = [v5 uncommentedAddresses];

  return v6;
}

- (void)cancelAction:(id)a3
{
  v3 = [(_UIShareInvitationAddParticipantController *)self completion];
  v3[2](v3, 1, &__NSArray0__struct);
}

- (void)continueAction:(id)a3
{
  v5 = [(_UIShareInvitationAddParticipantController *)self finishAndReturnParticipants];
  v4 = [(_UIShareInvitationAddParticipantController *)self completion];
  (v4)[2](v4, 0, v5);
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = _UIShareInvitationAddParticipantController;
  [(_UIShareInvitationAddParticipantController *)&v14 viewDidLayoutSubviews];
  v15[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor secondaryLabelColor];
  v16[0] = v3;
  v15[1] = NSFontAttributeName;
  v4 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v5 = [v4 textView];
  v6 = [v5 font];
  v16[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v8 = [NSAttributedString alloc];
  v9 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v10 = _UIAdaptLocalizedStringForView();
  v11 = [v8 initWithString:v10 attributes:v7];

  v12 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v13 = [v12 textView];
  [v13 setAttributedPlaceholder:v11];
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  v5 = [(_UIShareInvitationAddParticipantController *)self addressHeightConstraint:a3];
  [v5 setConstant:height];
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v5 = a3;
  [(_UIShareInvitationAddParticipantController *)self _updateSendButton];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 textView];
  v7 = [v6 textStorage];
  v8 = [v5 atomViewsInRange:{0, objc_msgSend(v7, "length")}];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setTintColor:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(_UIShareInvitationAddParticipantController *)self updateOtherRecipients];
}

- (void)updateOtherRecipients
{
  v3 = [(_UIShareInvitationAddParticipantController *)self currentParticipants];
  v4 = [NSMutableArray arrayWithArray:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v6 = [v5 recipients];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 address];

        if (v12)
        {
          v13 = [v11 address];
          [v4 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [(_UIShareInvitationAddParticipantController *)self searchController];
  [v14 setExistingRecipients:v4];
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  [(_UIShareInvitationAddParticipantController *)self _updateSendButton:a3];

  [(_UIShareInvitationAddParticipantController *)self updateOtherRecipients];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIShareInvitationAddParticipantController *)self searchController];
  [v8 setSearchText:0];

  [v7 clearText];
  v9 = [(_UIShareInvitationAddParticipantController *)self composeRecipientView:v7 composeRecipientForAddress:v6];

  [v7 addRecipient:v9];
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() contactForMailAddressOrPhoneNumber:v4];
  if (v5)
  {
    if (IMStringIsPhoneNumber())
    {
      v6 = [CNComposeRecipient alloc];
      v7 = v5;
      v8 = v4;
      v9 = 1;
    }

    else
    {
      if ((IMStringIsEmail() & 1) == 0)
      {
        v11 = cdui_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000C5A14();
        }
      }

      v6 = [CNComposeRecipient alloc];
      v7 = v5;
      v8 = v4;
      v9 = 0;
    }

    v10 = [v6 initWithContact:v7 address:v8 kind:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v4 = objc_alloc_init(CNContactPickerViewController);
  v8[0] = CNContactEmailAddressesKey;
  v8[1] = CNContactPhoneNumbersKey;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  [v4 setDisplayedPropertyKeys:v5];

  [v4 setDelegate:self];
  v6 = [NSPredicate predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
  [v4 setPredicateForSelectionOfContact:v6];

  v7 = [NSPredicate predicateWithFormat:@"emailAddresses.@count > 0 OR phoneNumbers.@count > 0"];
  [v4 setPredicateForEnablingContact:v7];

  [(_UIShareInvitationAddParticipantController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  [(_UIShareInvitationAddParticipantController *)self startSearchingText:a4];

  [(_UIShareInvitationAddParticipantController *)self _updateSendButton];
}

- (void)contactPickerDidCancel:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003AD0;
  v3[3] = &unk_100106D30;
  v3[4] = self;
  [(_UIShareInvitationAddParticipantController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = a4;
  v6 = [v5 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v9 = [CNComposeRecipient alloc];
    v10 = [v5 contact];
    v11 = [v7 stringValue];
    v12 = [v9 initWithContact:v10 address:v11 kind:1];
    [v8 addRecipient:v12];

    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v7 stringValue];
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] Added phone participant %@ via contact sheet property", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v6;
    v16 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v17 = [CNComposeRecipient alloc];
    v18 = [v5 contact];
    v19 = [v17 initWithContact:v18 address:v15 kind:0];
    [v16 addRecipient:v19];

    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] Added mail participant %@ via contact sheet property", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100003DC8;
  v20[3] = &unk_100106D30;
  v20[4] = self;
  [(_UIShareInvitationAddParticipantController *)self dismissViewControllerAnimated:1 completion:v20];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = [v5 emailAddresses];
  v7 = [v6 firstObject];
  v8 = [v7 value];

  if (!v8)
  {
    v14 = [v5 phoneNumbers];
    v15 = [v14 firstObject];
    v13 = [v15 value];

    v10 = [objc_opt_class() contactForPhoneNumber:v13];
    if (v10)
    {
      v16 = [(_UIShareInvitationAddParticipantController *)self addressView];
      v17 = [CNComposeRecipient alloc];
      v18 = [v13 stringValue];
      v19 = [v17 initWithContact:v10 address:v18 kind:1];
      [v16 addRecipient:v19];

      v20 = cdui_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v13 stringValue];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[INFO] Added phone participant %@ via contact sheet", buf, 0xCu);
      }
    }

    else
    {
      v20 = cdui_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1000C5A7C();
      }
    }

    goto LABEL_13;
  }

  v9 = [objc_opt_class() contactForMailAddress:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v12 = [[CNComposeRecipient alloc] initWithContact:v10 address:v8 kind:0];
    [v11 addRecipient:v12];

    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] Added mail participant %@ via contact sheet", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_1000C5A7C();
  }

LABEL_14:

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000412C;
  v22[3] = &unk_100106D30;
  v22[4] = self;
  [(_UIShareInvitationAddParticipantController *)self dismissViewControllerAnimated:1 completion:v22];
}

+ (id)contactStore
{
  if (qword_10011A4B8 != -1)
  {
    sub_1000C5AE4();
  }

  v3 = qword_10011A4B0;

  return v3;
}

+ (id)contactForMailAddress:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_1000042B8(v5, v4, 0, 1, 0);

  return v6;
}

+ (id)contactForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_1000042B8(v5, 0, v4, 0, 1);

  return v6;
}

+ (id)contactForMailAddressOrPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_1000042B8(v5, v4, 0, 1, 1);

  return v6;
}

- (_UIContactSearchArrayController)searchController
{
  searchController = self->_searchController;
  if (!searchController)
  {
    v4 = [_UIContactSearchArrayController alloc];
    v5 = [objc_opt_class() contactStore];
    v6 = [(_UIContactSearchArrayController *)v4 initWithContactStore:v5 delegate:self];
    v7 = self->_searchController;
    self->_searchController = v6;

    searchController = self->_searchController;
  }

  return searchController;
}

- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004774;
  block[3] = &unk_100106DD8;
  block[4] = self;
  v9 = a4;
  v10 = a5;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSearchResults:(id)a3 changes:(id)a4
{
  v5 = [a3 array];
  searchResults = self->_searchResults;
  self->_searchResults = v5;

  v7 = [(_UIShareInvitationAddParticipantController *)self searchResultTable];
  [v7 reloadData];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004844;
  v8[3] = &unk_100106D30;
  v8[4] = self;
  [UIView animateWithDuration:v8 animations:0.2];
}

- (void)startSearchingText:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationAddParticipantController *)self searchController];
  [v5 setSearchText:v4];
}

+ (void)_applyBoldFont:(id)a3 toPartialMatches:(id)a4 inAttributedString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v19 = *v22;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v9 string];
        v13 = [v11 string];
        for (j = [v12 rangeOfString:v13]; ; j = objc_msgSend(v12, "rangeOfString:options:range:", v13, 0, v16 + 1, &v18[~v16]))
        {
          v16 = j;
          v17 = v15;

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          [v9 addAttribute:NSFontAttributeName value:v7 range:{v16, v17}];
          v18 = [v9 length];
          v12 = [v9 string];
          v13 = [v11 string];
        }
      }

      v20 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v20);
  }
}

+ (id)_titleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableAttributedString);
  v12 = [v8 displayString];

  if (v12)
  {
    v13 = [NSMutableAttributedString alloc];
    v14 = [v8 displayString];
    v26 = NSFontAttributeName;
    v27 = v9;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v13 initWithString:v14 attributes:v15];

    v17 = [v8 completelyMatchedAttributedStrings];
    [a1 _applyBoldFont:v10 toPartialMatches:v17 inAttributedString:v16];
    v11 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v18 = cdui_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1000C5AF8();
  }

  v19 = [v8 address];

  if (v19)
  {
    v20 = [NSMutableAttributedString alloc];
    v17 = [v8 address];
    v24 = NSFontAttributeName;
    v25 = v9;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v20 initWithString:v17 attributes:v21];

    v11 = v22;
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

+ (id)_subtitleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSMutableAttributedString alloc];
  v12 = [v10 address];
  v17 = NSFontAttributeName;
  v18 = v9;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v14 = [v11 initWithString:v12 attributes:v13];
  v15 = [v10 completelyMatchedAttributedStrings];

  [a1 _applyBoldFont:v8 toPartialMatches:v15 inAttributedString:v14];

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_UIShareInvitationAddParticipantController *)self searchResults:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v38 = [a3 dequeueReusableCellWithIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier" forIndexPath:v6];
  v7 = [(_UIShareInvitationAddParticipantController *)self searchResults];
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];

  v10 = [v9 composeRecipient];
  v11 = [v10 contact];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [v9 composeRecipient];
    v16 = [v15 address];
    v13 = [v14 contactForMailAddress:v16];
  }

  v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v18 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:2 options:1];
  v19 = [UIFont fontWithDescriptor:v18 size:0.0];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 addingSymbolicTraits:2 options:1];
  v22 = [UIFont fontWithDescriptor:v21 size:0.0];

  v23 = objc_opt_class();
  v24 = [v9 composeRecipient];
  v25 = [v23 _titleTextForRecord:v24 font:v17 boldFond:v19];
  v26 = [v38 textLabel];
  [v26 setAttributedText:v25];

  v27 = objc_opt_class();
  v28 = [v9 composeRecipient];
  v29 = [v27 _subtitleTextForRecord:v28 font:v20 boldFond:v22];
  v30 = [v38 detailTextLabel];
  [v30 setAttributedText:v29];

  if (v13)
  {
    v31 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:0];
    v39 = v31;
    v32 = [NSArray arrayWithObjects:&v39 count:1];
    v33 = [v13 areKeysAvailable:v32];

    if (v33)
    {
      v34 = [(_UIShareInvitationAddParticipantController *)self monogrammer];
      v35 = [v34 monogramForContact:v13];
      v36 = [v38 imageView];
      [v36 setImage:v35];
    }
  }

  return v38;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIShareInvitationAddParticipantController *)self searchResults];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v10 = [v8 composeRecipient];
  [v9 addRecipient:v10];

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 composeRecipient];
    v13 = [v12 address];
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] Added recipient %@ via type-ahead search", &v16, 0xCu);
  }

  v14 = [(_UIShareInvitationAddParticipantController *)self addressView];
  [v14 clearText];

  v15 = [(_UIShareInvitationAddParticipantController *)self searchController];
  [v15 setSearchText:0];
}

@end