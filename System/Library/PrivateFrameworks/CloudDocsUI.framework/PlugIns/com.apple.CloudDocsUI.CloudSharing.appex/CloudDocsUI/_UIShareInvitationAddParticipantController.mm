@interface _UIShareInvitationAddParticipantController
+ (id)_subtitleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5;
+ (id)_titleTextForRecord:(id)a3 font:(id)a4 boldFond:(id)a5;
+ (id)contactForMailAddress:(id)a3;
+ (id)contactForMailAddressOrPhoneNumber:(id)a3;
+ (id)contactForPhoneNumber:(id)a3;
+ (id)contactStore;
+ (void)_applyBoldFont:(id)a3 toPartialMatches:(id)a4 inAttributedString:(id)a5;
- (_UIContactSearchArrayController)searchController;
- (_UIShareInvitationAddParticipantController)initWithShare:(id)a3 uti:(id)a4;
- (id)cancelButton;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)finishAndReturnParticipants;
- (id)sendButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateSendButton;
- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5;
- (void)cancelAction:(id)a3;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4;
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

- (_UIShareInvitationAddParticipantController)initWithShare:(id)a3 uti:(id)a4
{
  v6 = a3;
  v7 = a4;
  v117.receiver = self;
  v117.super_class = _UIShareInvitationAddParticipantController;
  v8 = [(_UIShareInvitationAddParticipantController *)&v117 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v10 = [(_UIShareInvitationAddParticipantController *)v8 view];
    v112 = v6;
    [(_UIShareInvitationAddParticipantController *)v9 setShare:v6];
    v11 = [MFComposeRecipientTextView alloc];
    v12 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [v12 bounds];
    v13 = [v11 initWithFrame:?];

    [(_UIShareInvitationAddParticipantController *)v9 setAddressView:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v15 = [v14 localizedStringForKey:@"GIVE_ACCESS_TO_LABEL" value:@"To:" table:@"Localizable"];
    [v13 setLabel:v15];

    [v13 setDelegate:v9];
    [v13 setSeparatorHidden:0];
    v16 = +[UIColor labelColor];
    [v13 setTypingTextColor:v16];

    [v10 addSubview:v13];
    v17 = objc_alloc_init(UILabel);
    [(_UIShareInvitationAddParticipantController *)v9 setInfoLabel:v17];

    v18 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    v20 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v20 setFont:v19];

    v21 = +[UIColor secondaryLabelColor];
    v22 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v22 setTextColor:v21];

    v23 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v23 setTextAlignment:1];

    v24 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v25 = [v24 localizedStringForKey:@"GIVE_ACCESS_INFO_LABEL" value:@"Only people you add will have access." table:@"Localizable"];
    v111 = v7;
    v26 = _CDAdaptLocalizedStringForItemType();
    v27 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v27 setText:v26];

    v28 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v28 setNumberOfLines:0];

    v29 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [v10 addSubview:v29];

    v30 = [[UITableViewController alloc] initWithStyle:0];
    [(_UIShareInvitationAddParticipantController *)v9 setSearchResultTableViewController:v30];

    v31 = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    [(_UIShareInvitationAddParticipantController *)v9 addChildViewController:v31];

    v32 = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    v33 = [v32 tableView];

    [(_UIShareInvitationAddParticipantController *)v9 setSearchResultTable:v33];
    v34 = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    [v34 didMoveToParentViewController:v9];

    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v33 setAlpha:0.0];
    [v33 setDelegate:v9];
    [v33 setDataSource:v9];
    [v33 registerClass:objc_opt_class() forCellReuseIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier"];
    [v10 addSubview:v33];
    v35 = [v13 heightAnchor];
    v36 = [v35 constraintEqualToConstant:49.5];
    [(_UIShareInvitationAddParticipantController *)v9 setAddressHeightConstraint:v36];

    v37 = objc_opt_new();
    v38 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [v38 addLayoutGuide:v37];

    v110 = v10;
    v39 = [v10 safeAreaLayoutGuide];
    v104 = [v13 topAnchor];
    v103 = [v39 topAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v121[0] = v102;
    v101 = [v13 bottomAnchor];
    v100 = [v33 topAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v121[1] = v99;
    v98 = [v13 leadingAnchor];
    v97 = [v39 leadingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v121[2] = v96;
    v95 = [v13 trailingAnchor];
    v94 = [v39 trailingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v121[3] = v93;
    v92 = [v33 bottomAnchor];
    v91 = [v39 bottomAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v121[4] = v90;
    v89 = [(_UIShareInvitationAddParticipantController *)v9 addressHeightConstraint];
    v121[5] = v89;
    v88 = [v33 leadingAnchor];
    v87 = [v39 leadingAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v121[6] = v86;
    v108 = v33;
    v85 = [v33 trailingAnchor];
    v84 = [v39 trailingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v121[7] = v83;
    v82 = [(UILabel *)v9->_infoLabel widthAnchor];
    v81 = [v39 widthAnchor];
    v80 = [v82 constraintEqualToAnchor:v81 multiplier:1.0 constant:-64.0];
    v121[8] = v80;
    v79 = [(UILabel *)v9->_infoLabel centerXAnchor];
    v78 = [v39 centerXAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v121[9] = v77;
    v76 = [v37 topAnchor];
    v109 = v13;
    v75 = [v13 bottomAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v121[10] = v74;
    v73 = [v37 heightAnchor];
    v106 = v39;
    v40 = [v39 heightAnchor];
    v41 = [v73 constraintEqualToAnchor:v40 multiplier:0.340000004];
    v121[11] = v41;
    v42 = [(UILabel *)v9->_infoLabel topAnchor];
    v43 = [v37 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v121[12] = v44;
    v45 = [(UILabel *)v9->_infoLabel topAnchor];
    v107 = v37;
    v46 = [v37 centerYAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v121[13] = v47;
    v48 = [NSArray arrayWithObjects:v121 count:14];
    [NSLayoutConstraint activateConstraints:v48];

    if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
    {
      [(_UIShareInvitationAddParticipantController *)v9 setEdgesForExtendedLayout:0];
    }

    v49 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v50 = [v49 localizedStringForKey:@"GIVE_ACCESS_TITLE" value:@"Add People" table:@"Localizable"];
    [(_UIShareInvitationAddParticipantController *)v9 setTitle:v50];

    v51 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v9 action:"cancelAction:"];
    v52 = [UIBarButtonItem alloc];
    v53 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v54 = [v53 localizedStringForKey:@"Continue" value:@"Continue" table:@"Localizable"];
    v55 = [v52 initWithTitle:v54 style:2 target:v9 action:"continueAction:"];

    v105 = v51;
    v120 = v51;
    v56 = [NSArray arrayWithObjects:&v120 count:1];
    v57 = [(_UIShareInvitationAddParticipantController *)v9 navigationItem];
    [v57 setLeftBarButtonItems:v56];

    v119 = v55;
    v58 = [NSArray arrayWithObjects:&v119 count:1];
    v59 = [(_UIShareInvitationAddParticipantController *)v9 navigationItem];
    [v59 setRightBarButtonItems:v58];

    [(_UIShareInvitationAddParticipantController *)v9 _updateSendButton];
    v60 = +[NSMutableArray array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v61 = [v112 participants];
    v62 = [v61 countByEnumeratingWithState:&v113 objects:v118 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v114;
      do
      {
        v65 = 0;
        do
        {
          if (*v114 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v113 + 1) + 8 * v65) userIdentity];
          v67 = [v66 lookupInfo];
          v68 = [v67 emailAddress];

          if (v68)
          {
            [v60 addObject:v68];
          }

          v65 = v65 + 1;
        }

        while (v63 != v65);
        v63 = [v61 countByEnumeratingWithState:&v113 objects:v118 count:16];
      }

      while (v63);
    }

    [(_UIShareInvitationAddParticipantController *)v9 setCurrentParticipants:v60];
    [(_UIShareInvitationAddParticipantController *)v9 updateOtherRecipients];
    v69 = +[UIColor systemBackgroundColor];
    v70 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [v70 setBackgroundColor:v69];

    v71 = [[CNMonogrammer alloc] initWithStyle:0 diameter:40.0];
    [(_UIShareInvitationAddParticipantController *)v9 setMonogrammer:v71];

    [v109 becomeFirstResponder];
    v7 = v111;
    v6 = v112;
  }

  return v9;
}

- (void)dealloc
{
  [(MFComposeRecipientTextView *)self->_addressView setDelegate:0];
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
  v16.receiver = self;
  v16.super_class = _UIShareInvitationAddParticipantController;
  [(_UIShareInvitationAddParticipantController *)&v16 viewDidLayoutSubviews];
  v17[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor secondaryLabelColor];
  v18[0] = v3;
  v17[1] = NSFontAttributeName;
  v4 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v5 = [v4 textView];
  v6 = [v5 font];
  v18[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v8 = [NSAttributedString alloc];
  v9 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v10 = [v9 localizedStringForKey:@"GIVE_ACCESS_PLACEHOLDER" value:@"Email addresses or phone numbers" table:@"Localizable"];
  v11 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v12 = _UIAdaptLocalizedStringForView();
  v13 = [v8 initWithString:v12 attributes:v7];

  v14 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v15 = [v14 textView];
  [v15 setAttributedPlaceholder:v13];
}

- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4
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
      v6 = [MFComposeRecipient alloc];
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
          sub_10002CA44();
        }
      }

      v6 = [MFComposeRecipient alloc];
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
  v10[0] = CNContactEmailAddressesKey;
  v10[1] = CNContactPhoneNumbersKey;
  v5 = [NSArray arrayWithObjects:v10 count:2];
  [v4 setDisplayedPropertyKeys:v5];

  [v4 setDelegate:self];
  v6 = [(_UIShareInvitationAddParticipantController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [v4 setModalPresentationStyle:6];
  }

  v8 = [NSPredicate predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
  [v4 setPredicateForSelectionOfContact:v8];

  v9 = [NSPredicate predicateWithFormat:@"emailAddresses.@count > 0 OR phoneNumbers.@count > 0"];
  [v4 setPredicateForEnablingContact:v9];

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
  v3[2] = sub_10000DBF0;
  v3[3] = &unk_10004C920;
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
    v9 = [MFComposeRecipient alloc];
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
    v17 = [MFComposeRecipient alloc];
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
  v20[2] = sub_10000DEE8;
  v20[3] = &unk_10004C920;
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
      v17 = [MFComposeRecipient alloc];
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
        sub_10002CAAC();
      }
    }

    goto LABEL_13;
  }

  v9 = [objc_opt_class() contactForMailAddress:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v12 = [[MFComposeRecipient alloc] initWithContact:v10 address:v8 kind:0];
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
    sub_10002CAAC();
  }

LABEL_14:

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000E24C;
  v22[3] = &unk_10004C920;
  v22[4] = self;
  [(_UIShareInvitationAddParticipantController *)self dismissViewControllerAnimated:1 completion:v22];
}

+ (id)contactStore
{
  if (qword_1000602F8 != -1)
  {
    sub_10002CB14();
  }

  v3 = qword_1000602F0;

  return v3;
}

+ (id)contactForMailAddress:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_10000E3B0(v5, v4, 0, 1, 0);

  return v6;
}

+ (id)contactForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_10000E3B0(v5, 0, v4, 0, 1);

  return v6;
}

+ (id)contactForMailAddressOrPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [a1 contactStore];
  v6 = sub_10000E3B0(v5, v4, 0, 1, 1);

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
  block[2] = sub_10000E86C;
  block[3] = &unk_10004CCF0;
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
  v8[2] = sub_10000E93C;
  v8[3] = &unk_10004C920;
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
    sub_10002CB28();
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