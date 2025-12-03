@interface _UIShareInvitationAddParticipantController
+ (id)_subtitleTextForRecord:(id)record font:(id)font boldFond:(id)fond;
+ (id)_titleTextForRecord:(id)record font:(id)font boldFond:(id)fond;
+ (id)contactForMailAddress:(id)address;
+ (id)contactForMailAddressOrPhoneNumber:(id)number;
+ (id)contactForPhoneNumber:(id)number;
+ (id)contactStore;
+ (void)_applyBoldFont:(id)font toPartialMatches:(id)matches inAttributedString:(id)string;
- (_UIContactSearchArrayController)searchController;
- (_UIShareInvitationAddParticipantController)initWithCurrentAddresses:(id)addresses;
- (id)cancelButton;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)finishAndReturnParticipants;
- (id)sendButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateSendButton;
- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences;
- (void)cancelAction:(id)action;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
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

- (_UIShareInvitationAddParticipantController)initWithCurrentAddresses:(id)addresses
{
  addressesCopy = addresses;
  v97.receiver = self;
  v97.super_class = _UIShareInvitationAddParticipantController;
  v5 = [(_UIShareInvitationAddParticipantController *)&v97 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    view = [(_UIShareInvitationAddParticipantController *)v5 view];
    v96 = addressesCopy;
    if (addressesCopy)
    {
      v8 = addressesCopy;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    [(_UIShareInvitationAddParticipantController *)v6 setCurrentParticipants:v8];
    v9 = [CNComposeRecipientTextView alloc];
    view2 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [view2 bounds];
    v11 = [v9 initWithFrame:?];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v12 localizedStringForKey:@"GIVE_ACCESS_TO_LABEL" value:@"To:" table:@"Localizable"];
    [v11 setLabel:v13];

    [v11 setDelegate:v6];
    [v11 setSeparatorHidden:0];
    v14 = +[UIColor labelColor];
    [v11 setTypingTextColor:v14];

    [view addSubview:v11];
    [(_UIShareInvitationAddParticipantController *)v6 setAddressView:v11];
    v15 = objc_alloc_init(UILabel);
    [(_UIShareInvitationAddParticipantController *)v6 setInfoLabel:v15];

    infoLabel = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    infoLabel2 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel2 setFont:v17];

    v19 = +[UIColor secondaryLabelColor];
    infoLabel3 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel3 setTextColor:v19];

    infoLabel4 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel4 setTextAlignment:1];

    infoLabel5 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel5 setText:@"Only people you add will have access."];

    infoLabel6 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [infoLabel6 setNumberOfLines:0];

    infoLabel7 = [(_UIShareInvitationAddParticipantController *)v6 infoLabel];
    [view addSubview:infoLabel7];

    v25 = [[UITableViewController alloc] initWithStyle:0];
    [(_UIShareInvitationAddParticipantController *)v6 setSearchResultTableViewController:v25];

    searchResultTableViewController = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    [(_UIShareInvitationAddParticipantController *)v6 addChildViewController:searchResultTableViewController];

    searchResultTableViewController2 = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    tableView = [searchResultTableViewController2 tableView];

    [(_UIShareInvitationAddParticipantController *)v6 setSearchResultTable:tableView];
    searchResultTableViewController3 = [(_UIShareInvitationAddParticipantController *)v6 searchResultTableViewController];
    [searchResultTableViewController3 didMoveToParentViewController:v6];

    [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [tableView setAlpha:0.0];
    [tableView setDelegate:v6];
    [tableView setDataSource:v6];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"_UIShareInvitationParticipantTableViewCellIdentifier"];
    [view addSubview:tableView];
    heightAnchor = [v11 heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:49.5];
    [(_UIShareInvitationAddParticipantController *)v6 setAddressHeightConstraint:v31];

    v32 = objc_opt_new();
    view3 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [view3 addLayoutGuide:v32];

    v95 = view;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    topAnchor = [v11 topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v88 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v100[0] = v88;
    bottomAnchor = [v11 bottomAnchor];
    topAnchor3 = [tableView topAnchor];
    v85 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v100[1] = v85;
    leadingAnchor = [v11 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v100[2] = v82;
    trailingAnchor = [v11 trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v100[3] = v79;
    bottomAnchor2 = [tableView bottomAnchor];
    bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
    v76 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v100[4] = v76;
    addressHeightConstraint = [(_UIShareInvitationAddParticipantController *)v6 addressHeightConstraint];
    v100[5] = addressHeightConstraint;
    leadingAnchor3 = [tableView leadingAnchor];
    leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
    v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v100[6] = v72;
    v93 = tableView;
    trailingAnchor3 = [tableView trailingAnchor];
    trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
    v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v100[7] = v69;
    widthAnchor = [(UILabel *)v6->_infoLabel widthAnchor];
    widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
    v66 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-64.0];
    v100[8] = v66;
    centerXAnchor = [(UILabel *)v6->_infoLabel centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v100[9] = v63;
    topAnchor4 = [v32 topAnchor];
    v94 = v11;
    bottomAnchor4 = [v11 bottomAnchor];
    v60 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4];
    v100[10] = v60;
    heightAnchor2 = [v32 heightAnchor];
    v91 = safeAreaLayoutGuide;
    heightAnchor3 = [safeAreaLayoutGuide heightAnchor];
    v36 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.340000004];
    v100[11] = v36;
    topAnchor5 = [(UILabel *)v6->_infoLabel topAnchor];
    bottomAnchor5 = [v32 bottomAnchor];
    v39 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v100[12] = v39;
    topAnchor6 = [(UILabel *)v6->_infoLabel topAnchor];
    v92 = v32;
    centerYAnchor = [v32 centerYAnchor];
    v42 = [topAnchor6 constraintEqualToAnchor:centerYAnchor];
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
    navigationItem = [(_UIShareInvitationAddParticipantController *)v6 navigationItem];
    [navigationItem setLeftBarButtonItems:v51];

    v98 = v50;
    v53 = [NSArray arrayWithObjects:&v98 count:1];
    navigationItem2 = [(_UIShareInvitationAddParticipantController *)v6 navigationItem];
    [navigationItem2 setRightBarButtonItems:v53];

    [(_UIShareInvitationAddParticipantController *)v6 _updateSendButton];
    [(_UIShareInvitationAddParticipantController *)v6 updateOtherRecipients];
    v55 = +[UIColor systemBackgroundColor];
    view4 = [(_UIShareInvitationAddParticipantController *)v6 view];
    [view4 setBackgroundColor:v55];

    v57 = [[CNMonogrammer alloc] initWithStyle:0 diameter:40.0];
    [(_UIShareInvitationAddParticipantController *)v6 setMonogrammer:v57];

    [v94 becomeFirstResponder];
    addressesCopy = v96;
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
  v14.receiver = self;
  v14.super_class = _UIShareInvitationAddParticipantController;
  [(_UIShareInvitationAddParticipantController *)&v14 viewDidLayoutSubviews];
  v15[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor secondaryLabelColor];
  v16[0] = v3;
  v15[1] = NSFontAttributeName;
  addressView = [(_UIShareInvitationAddParticipantController *)self addressView];
  textView = [addressView textView];
  font = [textView font];
  v16[1] = font;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v8 = [NSAttributedString alloc];
  addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
  v10 = _UIAdaptLocalizedStringForView();
  v11 = [v8 initWithString:v10 attributes:v7];

  addressView3 = [(_UIShareInvitationAddParticipantController *)self addressView];
  textView2 = [addressView3 textView];
  [textView2 setAttributedPlaceholder:v11];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
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
      v6 = [CNComposeRecipient alloc];
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
          sub_1000C5A14();
        }
      }

      v6 = [CNComposeRecipient alloc];
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

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  [(_UIShareInvitationAddParticipantController *)self startSearchingText:change];

  [(_UIShareInvitationAddParticipantController *)self _updateSendButton];
}

- (void)contactPickerDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003AD0;
  v3[3] = &unk_100106D30;
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
    v9 = [CNComposeRecipient alloc];
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
    v17 = [CNComposeRecipient alloc];
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
  v20[2] = sub_100003DC8;
  v20[3] = &unk_100106D30;
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
      v17 = [CNComposeRecipient alloc];
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
        sub_1000C5A7C();
      }
    }

    goto LABEL_13;
  }

  v9 = [objc_opt_class() contactForMailAddress:value];
  if (v9)
  {
    v10 = v9;
    addressView2 = [(_UIShareInvitationAddParticipantController *)self addressView];
    v12 = [[CNComposeRecipient alloc] initWithContact:v10 address:value kind:0];
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

+ (id)contactForMailAddress:(id)address
{
  addressCopy = address;
  contactStore = [self contactStore];
  v6 = sub_1000042B8(contactStore, addressCopy, 0, 1, 0);

  return v6;
}

+ (id)contactForPhoneNumber:(id)number
{
  numberCopy = number;
  contactStore = [self contactStore];
  v6 = sub_1000042B8(contactStore, 0, numberCopy, 0, 1);

  return v6;
}

+ (id)contactForMailAddressOrPhoneNumber:(id)number
{
  numberCopy = number;
  contactStore = [self contactStore];
  v6 = sub_1000042B8(contactStore, numberCopy, 0, 1, 1);

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
  block[2] = sub_100004774;
  block[3] = &unk_100106DD8;
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
  v8[2] = sub_100004844;
  v8[3] = &unk_100106D30;
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
    sub_1000C5AF8();
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