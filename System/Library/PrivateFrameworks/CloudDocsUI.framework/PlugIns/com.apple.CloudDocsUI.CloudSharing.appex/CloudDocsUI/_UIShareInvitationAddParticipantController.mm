@interface _UIShareInvitationAddParticipantController
+ (id)_subtitleTextForRecord:(id)record font:(id)font boldFond:(id)fond;
+ (id)_titleTextForRecord:(id)record font:(id)font boldFond:(id)fond;
+ (id)contactForMailAddress:(id)address;
+ (id)contactForMailAddressOrPhoneNumber:(id)number;
+ (id)contactForPhoneNumber:(id)number;
+ (id)contactStore;
+ (void)_applyBoldFont:(id)font toPartialMatches:(id)matches inAttributedString:(id)string;
- (_UIContactSearchArrayController)searchController;
- (_UIShareInvitationAddParticipantController)initWithShare:(id)share uti:(id)uti;
- (id)cancelButton;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)finishAndReturnParticipants;
- (id)sendButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateSendButton;
- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences;
- (void)cancelAction:(id)action;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)continueAction:(id)action;
- (void)dealloc;
- (void)startSearchingText:(id)text;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateOtherRecipients;
- (void)updateSearchResults:(id)results changes:(id)changes;
- (void)viewDidLayoutSubviews;
@end

@implementation _UIShareInvitationAddParticipantController

- (_UIShareInvitationAddParticipantController)initWithShare:(id)share uti:(id)uti
{
  shareCopy = share;
  utiCopy = uti;
  v117.receiver = self;
  v117.super_class = _UIShareInvitationAddParticipantController;
  v8 = [(_UIShareInvitationAddParticipantController *)&v117 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    view = [(_UIShareInvitationAddParticipantController *)v8 view];
    v112 = shareCopy;
    [(_UIShareInvitationAddParticipantController *)v9 setShare:shareCopy];
    v11 = [MFComposeRecipientTextView alloc];
    view2 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [view2 bounds];
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

    [view addSubview:v13];
    v17 = objc_alloc_init(UILabel);
    [(_UIShareInvitationAddParticipantController *)v9 setInfoLabel:v17];

    infoLabel = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    infoLabel2 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel2 setFont:v19];

    v21 = +[UIColor secondaryLabelColor];
    infoLabel3 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel3 setTextColor:v21];

    infoLabel4 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel4 setTextAlignment:1];

    v24 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v25 = [v24 localizedStringForKey:@"GIVE_ACCESS_INFO_LABEL" value:@"Only people you add will have access." table:@"Localizable"];
    v111 = utiCopy;
    v26 = _CDAdaptLocalizedStringForItemType();
    infoLabel5 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel5 setText:v26];

    infoLabel6 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [infoLabel6 setNumberOfLines:0];

    infoLabel7 = [(_UIShareInvitationAddParticipantController *)v9 infoLabel];
    [view addSubview:infoLabel7];

    v30 = [[UITableViewController alloc] initWithStyle:0];
    [(_UIShareInvitationAddParticipantController *)v9 setSearchResultTableViewController:v30];

    searchResultTableViewController = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    [(_UIShareInvitationAddParticipantController *)v9 addChildViewController:searchResultTableViewController];

    searchResultTableViewController2 = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    tableView = [searchResultTableViewController2 tableView];

    [(_UIShareInvitationAddParticipantController *)v9 setSearchResultTable:tableView];
    searchResultTableViewController3 = [(_UIShareInvitationAddParticipantController *)v9 searchResultTableViewController];
    [searchResultTableViewController3 didMoveToParentViewController:v9];

    [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [tableView setAlpha:0.0];
    [tableView setDelegate:v9];
    [tableView setDataSource:v9];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier"];
    [view addSubview:tableView];
    heightAnchor = [v13 heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:49.5];
    [(_UIShareInvitationAddParticipantController *)v9 setAddressHeightConstraint:v36];

    v37 = objc_opt_new();
    view3 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [view3 addLayoutGuide:v37];

    v110 = view;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    topAnchor = [v13 topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v102 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v121[0] = v102;
    bottomAnchor = [v13 bottomAnchor];
    topAnchor3 = [tableView topAnchor];
    v99 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v121[1] = v99;
    leadingAnchor = [v13 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v96 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v121[2] = v96;
    trailingAnchor = [v13 trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v93 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v121[3] = v93;
    bottomAnchor2 = [tableView bottomAnchor];
    bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
    v90 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v121[4] = v90;
    addressHeightConstraint = [(_UIShareInvitationAddParticipantController *)v9 addressHeightConstraint];
    v121[5] = addressHeightConstraint;
    leadingAnchor3 = [tableView leadingAnchor];
    leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
    v86 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v121[6] = v86;
    v108 = tableView;
    trailingAnchor3 = [tableView trailingAnchor];
    trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
    v83 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v121[7] = v83;
    widthAnchor = [(UILabel *)v9->_infoLabel widthAnchor];
    widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
    v80 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-64.0];
    v121[8] = v80;
    centerXAnchor = [(UILabel *)v9->_infoLabel centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v77 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v121[9] = v77;
    topAnchor4 = [v37 topAnchor];
    v109 = v13;
    bottomAnchor4 = [v13 bottomAnchor];
    v74 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4];
    v121[10] = v74;
    heightAnchor2 = [v37 heightAnchor];
    v106 = safeAreaLayoutGuide;
    heightAnchor3 = [safeAreaLayoutGuide heightAnchor];
    v41 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.340000004];
    v121[11] = v41;
    topAnchor5 = [(UILabel *)v9->_infoLabel topAnchor];
    bottomAnchor5 = [v37 bottomAnchor];
    v44 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v121[12] = v44;
    topAnchor6 = [(UILabel *)v9->_infoLabel topAnchor];
    v107 = v37;
    centerYAnchor = [v37 centerYAnchor];
    v47 = [topAnchor6 constraintEqualToAnchor:centerYAnchor];
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
    navigationItem = [(_UIShareInvitationAddParticipantController *)v9 navigationItem];
    [navigationItem setLeftBarButtonItems:v56];

    v119 = v55;
    v58 = [NSArray arrayWithObjects:&v119 count:1];
    navigationItem2 = [(_UIShareInvitationAddParticipantController *)v9 navigationItem];
    [navigationItem2 setRightBarButtonItems:v58];

    [(_UIShareInvitationAddParticipantController *)v9 _updateSendButton];
    v60 = +[NSMutableArray array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    participants = [v112 participants];
    v62 = [participants countByEnumeratingWithState:&v113 objects:v118 count:16];
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
            objc_enumerationMutation(participants);
          }

          userIdentity = [*(*(&v113 + 1) + 8 * v65) userIdentity];
          lookupInfo = [userIdentity lookupInfo];
          emailAddress = [lookupInfo emailAddress];

          if (emailAddress)
          {
            [v60 addObject:emailAddress];
          }

          v65 = v65 + 1;
        }

        while (v63 != v65);
        v63 = [participants countByEnumeratingWithState:&v113 objects:v118 count:16];
      }

      while (v63);
    }

    [(_UIShareInvitationAddParticipantController *)v9 setCurrentParticipants:v60];
    [(_UIShareInvitationAddParticipantController *)v9 updateOtherRecipients];
    v69 = +[UIColor systemBackgroundColor];
    view4 = [(_UIShareInvitationAddParticipantController *)v9 view];
    [view4 setBackgroundColor:v69];

    v71 = [[CNMonogrammer alloc] initWithStyle:0 diameter:40.0];
    [(_UIShareInvitationAddParticipantController *)v9 setMonogrammer:v71];

    [v109 becomeFirstResponder];
    utiCopy = v111;
    shareCopy = v112;
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
  navigationItem = [(_UIShareInvitationAddParticipantController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  return rightBarButtonItem;
}

- (id)cancelButton
{
  navigationItem = [(_UIShareInvitationAddParticipantController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];

  return leftBarButtonItem;
}

- (void)_updateSendButton
{
  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  recipients = [addressView recipients];
  v8 = [recipients count];
  if (v8)
  {
    v9 = 0;
    IsPhoneNumber = 1;
  }

  else
  {
    addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
    text = [addressView2 text];
    if (IMStringIsEmail())
    {
      v9 = 0;
      IsPhoneNumber = 1;
    }

    else
    {
      addressView3 = [(_UIShareInvitationAddParticipantController *)self addressView];
      text2 = [addressView3 text];
      IsPhoneNumber = IMStringIsPhoneNumber();
      v9 = 1;
    }
  }

  sendButton = [(_UIShareInvitationAddParticipantController *)self sendButton];
  [sendButton setEnabled:IsPhoneNumber];

  if (v9)
  {
  }

  if (!v8)
  {
  }
}

- (id)finishAndReturnParticipants
{
  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  [addressView resignFirstResponder];

  addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
  [addressView2 finishEnteringRecipient];

  addressView3 = [(_UIShareInvitationAddParticipantController *)self addressView];
  uncommentedAddresses = [addressView3 uncommentedAddresses];

  return uncommentedAddresses;
}

- (void)cancelAction:(id)action
{
  completion = [(_UIShareInvitationAddParticipantController *)self completion];
  completion[2](completion, 1, &__NSArray0__struct);
}

- (void)continueAction:(id)action
{
  finishAndReturnParticipants = [(_UIShareInvitationAddParticipantController *)self finishAndReturnParticipants];
  completion = [(_UIShareInvitationAddParticipantController *)self completion];
  (completion)[2](completion, 0, finishAndReturnParticipants);
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
  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  textView = [addressView textView];
  font = [textView font];
  v18[1] = font;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v8 = [NSAttributedString alloc];
  v9 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v10 = [v9 localizedStringForKey:@"GIVE_ACCESS_PLACEHOLDER" value:@"Email addresses or phone numbers" table:@"Localizable"];
  addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v12 = _UIAdaptLocalizedStringForView();
  v13 = [v8 initWithString:v12 attributes:v7];

  addressView3 = [(_UIShareInvitationAddParticipantController *)self addressView];
  textView2 = [addressView3 textView];
  [textView2 setAttributedPlaceholder:v13];
}

- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  v5 = [(_UIShareInvitationAddParticipantController *)self addressHeightConstraint:view];
  [v5 setConstant:height];
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  [(_UIShareInvitationAddParticipantController *)self _updateSendButton];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  textView = [viewCopy textView];
  textStorage = [textView textStorage];
  v8 = [viewCopy atomViewsInRange:{0, objc_msgSend(textStorage, "length")}];

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
  currentParticipants = [(_UIShareInvitationAddParticipantController *)self currentParticipants];
  v4 = [NSMutableArray arrayWithArray:currentParticipants];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  recipients = [addressView recipients];

  v7 = [recipients countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        address = [v11 address];

        if (address)
        {
          address2 = [v11 address];
          [v4 addObject:address2];
        }
      }

      v8 = [recipients countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  searchController = [(_UIShareInvitationAddParticipantController *)self searchController];
  [searchController setExistingRecipients:v4];
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  [(_UIShareInvitationAddParticipantController *)self _updateSendButton:view];

  [(_UIShareInvitationAddParticipantController *)self updateOtherRecipients];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  addressCopy = address;
  viewCopy = view;
  searchController = [(_UIShareInvitationAddParticipantController *)self searchController];
  [searchController setSearchText:0];

  [viewCopy clearText];
  v9 = [(_UIShareInvitationAddParticipantController *)self composeRecipientView:viewCopy composeRecipientForAddress:addressCopy];

  [viewCopy addRecipient:v9];
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = [objc_opt_class() contactForMailAddressOrPhoneNumber:addressCopy];
  if (v5)
  {
    if (IMStringIsPhoneNumber())
    {
      v6 = [MFComposeRecipient alloc];
      v7 = v5;
      v8 = addressCopy;
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
      v8 = addressCopy;
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

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v4 = objc_alloc_init(CNContactPickerViewController);
  v10[0] = CNContactEmailAddressesKey;
  v10[1] = CNContactPhoneNumbersKey;
  v5 = [NSArray arrayWithObjects:v10 count:2];
  [v4 setDisplayedPropertyKeys:v5];

  [v4 setDelegate:self];
  parentViewController = [(_UIShareInvitationAddParticipantController *)self parentViewController];
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

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  [(_UIShareInvitationAddParticipantController *)self startSearchingText:change];

  [(_UIShareInvitationAddParticipantController *)self _updateSendButton];
}

- (void)contactPickerDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DBF0;
  v3[3] = &unk_10004C920;
  v3[4] = self;
  [(_UIShareInvitationAddParticipantController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  value = [propertyCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = value;
    addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
    v9 = [MFComposeRecipient alloc];
    contact = [propertyCopy contact];
    stringValue = [v7 stringValue];
    v12 = [v9 initWithContact:contact address:stringValue kind:1];
    [addressView addRecipient:v12];

    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      stringValue2 = [v7 stringValue];
      *buf = 138412290;
      v22 = stringValue2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] Added phone participant %@ via contact sheet property", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = value;
    addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v17 = [MFComposeRecipient alloc];
    contact2 = [propertyCopy contact];
    v19 = [v17 initWithContact:contact2 address:v15 kind:0];
    [addressView2 addRecipient:v19];

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

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  firstObject = [emailAddresses firstObject];
  value = [firstObject value];

  if (!value)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    firstObject2 = [phoneNumbers firstObject];
    value2 = [firstObject2 value];

    v10 = [objc_opt_class() contactForPhoneNumber:value2];
    if (v10)
    {
      addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
      v17 = [MFComposeRecipient alloc];
      stringValue = [value2 stringValue];
      v19 = [v17 initWithContact:v10 address:stringValue kind:1];
      [addressView addRecipient:v19];

      v20 = cdui_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        stringValue2 = [value2 stringValue];
        *buf = 138412290;
        v24 = stringValue2;
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

  v9 = [objc_opt_class() contactForMailAddress:value];
  if (v9)
  {
    v10 = v9;
    addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v12 = [[MFComposeRecipient alloc] initWithContact:v10 address:value kind:0];
    [addressView2 addRecipient:v12];

    value2 = cdui_default_log();
    if (os_log_type_enabled(value2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = value;
      _os_log_impl(&_mh_execute_header, value2, OS_LOG_TYPE_INFO, "[INFO] Added mail participant %@ via contact sheet", buf, 0xCu);
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

+ (id)contactForMailAddress:(id)address
{
  addressCopy = address;
  contactStore = [self contactStore];
  v6 = sub_10000E3B0(contactStore, addressCopy, 0, 1, 0);

  return v6;
}

+ (id)contactForPhoneNumber:(id)number
{
  numberCopy = number;
  contactStore = [self contactStore];
  v6 = sub_10000E3B0(contactStore, 0, numberCopy, 0, 1);

  return v6;
}

+ (id)contactForMailAddressOrPhoneNumber:(id)number
{
  numberCopy = number;
  contactStore = [self contactStore];
  v6 = sub_10000E3B0(contactStore, numberCopy, 0, 1, 1);

  return v6;
}

- (_UIContactSearchArrayController)searchController
{
  searchController = self->_searchController;
  if (!searchController)
  {
    v4 = [_UIContactSearchArrayController alloc];
    contactStore = [objc_opt_class() contactStore];
    v6 = [(_UIContactSearchArrayController *)v4 initWithContactStore:contactStore delegate:self];
    v7 = self->_searchController;
    self->_searchController = v6;

    searchController = self->_searchController;
  }

  return searchController;
}

- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E86C;
  block[3] = &unk_10004CCF0;
  block[4] = self;
  changedCopy = changed;
  differencesCopy = differences;
  v6 = differencesCopy;
  v7 = changedCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSearchResults:(id)results changes:(id)changes
{
  array = [results array];
  searchResults = self->_searchResults;
  self->_searchResults = array;

  searchResultTable = [(_UIShareInvitationAddParticipantController *)self searchResultTable];
  [searchResultTable reloadData];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E93C;
  v8[3] = &unk_10004C920;
  v8[4] = self;
  [UIView animateWithDuration:v8 animations:0.2];
}

- (void)startSearchingText:(id)text
{
  textCopy = text;
  searchController = [(_UIShareInvitationAddParticipantController *)self searchController];
  [searchController setSearchText:textCopy];
}

+ (void)_applyBoldFont:(id)font toPartialMatches:(id)matches inAttributedString:(id)string
{
  fontCopy = font;
  matchesCopy = matches;
  stringCopy = string;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = [matchesCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v19 = *v22;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(matchesCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        string = [stringCopy string];
        string2 = [v11 string];
        for (j = [string rangeOfString:string2]; ; j = objc_msgSend(string, "rangeOfString:options:range:", string2, 0, v16 + 1, &v18[~v16]))
        {
          v16 = j;
          v17 = v15;

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          [stringCopy addAttribute:NSFontAttributeName value:fontCopy range:{v16, v17}];
          v18 = [stringCopy length];
          string = [stringCopy string];
          string2 = [v11 string];
        }
      }

      v20 = [matchesCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v20);
  }
}

+ (id)_titleTextForRecord:(id)record font:(id)font boldFond:(id)fond
{
  recordCopy = record;
  fontCopy = font;
  fondCopy = fond;
  v11 = objc_alloc_init(NSMutableAttributedString);
  displayString = [recordCopy displayString];

  if (displayString)
  {
    v13 = [NSMutableAttributedString alloc];
    displayString2 = [recordCopy displayString];
    v26 = NSFontAttributeName;
    v27 = fontCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v13 initWithString:displayString2 attributes:v15];

    completelyMatchedAttributedStrings = [recordCopy completelyMatchedAttributedStrings];
    [self _applyBoldFont:fondCopy toPartialMatches:completelyMatchedAttributedStrings inAttributedString:v16];
    v11 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v18 = cdui_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_10002CB28();
  }

  address = [recordCopy address];

  if (address)
  {
    v20 = [NSMutableAttributedString alloc];
    completelyMatchedAttributedStrings = [recordCopy address];
    v24 = NSFontAttributeName;
    v25 = fontCopy;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v20 initWithString:completelyMatchedAttributedStrings attributes:v21];

    v11 = v22;
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

+ (id)_subtitleTextForRecord:(id)record font:(id)font boldFond:(id)fond
{
  fondCopy = fond;
  fontCopy = font;
  recordCopy = record;
  v11 = [NSMutableAttributedString alloc];
  address = [recordCopy address];
  v17 = NSFontAttributeName;
  v18 = fontCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v14 = [v11 initWithString:address attributes:v13];
  completelyMatchedAttributedStrings = [recordCopy completelyMatchedAttributedStrings];

  [self _applyBoldFont:fondCopy toPartialMatches:completelyMatchedAttributedStrings inAttributedString:v14];

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_UIShareInvitationAddParticipantController *)self searchResults:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v38 = [view dequeueReusableCellWithIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier" forIndexPath:pathCopy];
  searchResults = [(_UIShareInvitationAddParticipantController *)self searchResults];
  v8 = [pathCopy row];

  v9 = [searchResults objectAtIndex:v8];

  composeRecipient = [v9 composeRecipient];
  contact = [composeRecipient contact];
  v12 = contact;
  if (contact)
  {
    v13 = contact;
  }

  else
  {
    v14 = objc_opt_class();
    composeRecipient2 = [v9 composeRecipient];
    address = [composeRecipient2 address];
    v13 = [v14 contactForMailAddress:address];
  }

  v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v18 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:2 options:1];
  v19 = [UIFont fontWithDescriptor:v18 size:0.0];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 addingSymbolicTraits:2 options:1];
  v22 = [UIFont fontWithDescriptor:v21 size:0.0];

  v23 = objc_opt_class();
  composeRecipient3 = [v9 composeRecipient];
  v25 = [v23 _titleTextForRecord:composeRecipient3 font:v17 boldFond:v19];
  textLabel = [v38 textLabel];
  [textLabel setAttributedText:v25];

  v27 = objc_opt_class();
  composeRecipient4 = [v9 composeRecipient];
  v29 = [v27 _subtitleTextForRecord:composeRecipient4 font:v20 boldFond:v22];
  detailTextLabel = [v38 detailTextLabel];
  [detailTextLabel setAttributedText:v29];

  if (v13)
  {
    v31 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:0];
    v39 = v31;
    v32 = [NSArray arrayWithObjects:&v39 count:1];
    v33 = [v13 areKeysAvailable:v32];

    if (v33)
    {
      monogrammer = [(_UIShareInvitationAddParticipantController *)self monogrammer];
      v35 = [monogrammer monogramForContact:v13];
      imageView = [v38 imageView];
      [imageView setImage:v35];
    }
  }

  return v38;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  searchResults = [(_UIShareInvitationAddParticipantController *)self searchResults];
  v7 = [pathCopy row];

  v8 = [searchResults objectAtIndex:v7];

  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  composeRecipient = [v8 composeRecipient];
  [addressView addRecipient:composeRecipient];

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    composeRecipient2 = [v8 composeRecipient];
    address = [composeRecipient2 address];
    v16 = 138412290;
    v17 = address;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] Added recipient %@ via type-ahead search", &v16, 0xCu);
  }

  addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
  [addressView2 clearText];

  searchController = [(_UIShareInvitationAddParticipantController *)self searchController];
  [searchController setSearchText:0];
}

@end