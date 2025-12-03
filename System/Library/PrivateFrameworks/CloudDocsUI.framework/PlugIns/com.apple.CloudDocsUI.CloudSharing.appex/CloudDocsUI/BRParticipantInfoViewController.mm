@interface BRParticipantInfoViewController
- (BOOL)isAllowedToInvite:(id)invite share:(id)share;
- (BRParticipantInfoViewController)initWithParticipantContact:(id)contact;
- (BRParticipantInfoViewControllerDelegate)delegate;
- (UISwitch)allowInviteToggle;
- (id)_sections;
- (int64_t)participantPermission;
- (void)_performParticipantAction:(id)action;
- (void)createdInviteToggle:(id)toggle;
- (void)leaveShare:(id)share;
- (void)removeAccess:(id)access;
- (void)setDelegate:(id)delegate;
- (void)setParticipantPermission:(int64_t)permission;
- (void)toggleParticipantAllowedToInvite:(id)invite;
- (void)updateSections;
@end

@implementation BRParticipantInfoViewController

- (BRParticipantInfoViewController)initWithParticipantContact:(id)contact
{
  contactCopy = contact;
  v31.receiver = self;
  v31.super_class = BRParticipantInfoViewController;
  v5 = [(BRParticipantInfoViewController *)&v31 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(BRParticipantInfoViewController *)v5 setContact:contactCopy];
    v7 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(BRParticipantInfoViewController *)v6 setStaticTableView:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(BRParticipantInfoViewController *)v6 view];
    [view addSubview:v6->_staticTableView];

    view2 = [(BRParticipantInfoViewController *)v6 view];
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[0] = v26;
    rightAnchor = [view2 rightAnchor];
    rightAnchor2 = [v7 rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v34[1] = v10;
    [view2 leftAnchor];
    v11 = v30 = contactCopy;
    leftAnchor = [v7 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:leftAnchor];
    v34[2] = v13;
    v29 = view2;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [v7 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[3] = v16;
    v17 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = [[_UIShareTableStaticDataSource alloc] initWithTableView:v7];
    [(BRParticipantInfoViewController *)v6 setStaticTableDataSource:v18];

    staticTableDataSource = [(BRParticipantInfoViewController *)v6 staticTableDataSource];
    [staticTableDataSource setDefaultTarget:v6];

    [v7 setRowHeight:UITableViewAutomaticDimension];
    [v7 setEstimatedRowHeight:44.0];
    [v7 setSectionHeaderHeight:0.0];
    v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v21 = [v20 localizedStringForKey:@"PARTICIPANT_INFO_TITLE_TEXT" value:@"Info" table:@"Localizable"];
    [(BRParticipantInfoViewController *)v6 setTitle:v21];

    contactCopy = v30;
    [v7 registerClass:objc_opt_class() forCellReuseIdentifier:off_100060278];
    [v7 registerClass:objc_opt_class() forCellReuseIdentifier:off_100060088];
    [(BRParticipantInfoViewController *)v6 updateSections];
    v22 = cdui_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v30;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] Displaying info view controller for participant %@", buf, 0xCu);
    }
  }

  return v6;
}

- (void)updateSections
{
  _sections = [(BRParticipantInfoViewController *)self _sections];
  staticTableDataSource = [(BRParticipantInfoViewController *)self staticTableDataSource];
  [staticTableDataSource setSections:_sections];

  staticTableView = [(BRParticipantInfoViewController *)self staticTableView];
  [staticTableView reloadData];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(BRParticipantInfoViewController *)self updateSections];
}

- (void)_performParticipantAction:(id)action
{
  contact = [(BRParticipantInfoViewController *)self contact];
  participant = [contact participant];
  userIdentity = [participant userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  emailAddress = [lookupInfo emailAddress];

  contact2 = [(BRParticipantInfoViewController *)self contact];
  participant2 = [contact2 participant];
  userIdentity2 = [participant2 userIdentity];
  lookupInfo2 = [userIdentity2 lookupInfo];
  v13 = lookupInfo2;
  if (emailAddress)
  {
    emailAddress2 = [lookupInfo2 emailAddress];
    [NSString stringWithFormat:@"mailto:%@", emailAddress2];
  }

  else
  {
    emailAddress2 = [lookupInfo2 phoneNumber];
    [NSString stringWithFormat:@"tel://%@", emailAddress2];
  }
  v15 = ;
  v20 = [NSURL URLWithString:v15];

  v16 = +[LSApplicationWorkspace defaultWorkspace];
  [v16 openURL:v20];
  staticTableView = [(BRParticipantInfoViewController *)self staticTableView];
  staticTableView2 = [(BRParticipantInfoViewController *)self staticTableView];
  indexPathForSelectedRow = [staticTableView2 indexPathForSelectedRow];
  [staticTableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (BOOL)isAllowedToInvite:(id)invite share:(id)share
{
  inviteCopy = invite;
  shareCopy = share;
  delegate = [(BRParticipantInfoViewController *)self delegate];
  itemIsShareRoot = [delegate itemIsShareRoot];

  if (itemIsShareRoot)
  {
    owner = [shareCopy owner];
    v11 = [owner isEqual:inviteCopy];

    v12 = [inviteCopy role] == 2 && objc_msgSend(inviteCopy, "permission") == 3;
    v13 = v11 | v12;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)_sections
{
  delegate = [(BRParticipantInfoViewController *)self delegate];
  v4 = +[NSMutableArray array];
  v5 = [delegate viewControllerShare:self];
  itemIsShareRoot = [delegate itemIsShareRoot];
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = objc_opt_new();
  contact = [(BRParticipantInfoViewController *)self contact];
  v7Contact = [contact contact];

  v9 = &BRFormatPhoneNumber_ptr;
  v95 = v4;
  v97 = v5;
  v98 = delegate;
  if (v7Contact)
  {
    v10 = objc_opt_new();
    contact2 = [(BRParticipantInfoViewController *)self contact];
    v11Contact = [contact2 contact];
    [v10 setContact:v11Contact];

    contact3 = [(BRParticipantInfoViewController *)self contact];
    participant = [contact3 participant];
    v13Contact = [contact3 contact];
    if (v13Contact)
    {
      v13Contact2 = [contact3 contact];
      v17 = [CNContactFormatter stringFromContact:v13Contact2 style:0];
    }

    else
    {
      v17 = 0;
    }

    if (![v17 length])
    {
      userIdentity = [participant userIdentity];
      nameComponents = [userIdentity nameComponents];
      v20 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents style:1 options:0];

      v17 = v20;
    }

    if ([v17 length])
    {
      if ([participant role] == 1)
      {
        v21 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v22 = v21;
        v23 = @"PARTICIPANT_OWNER_TEXT";
        v24 = @"%@ (Owner)";
      }

      else
      {
        if (![participant isCurrentUser])
        {
          v25 = v17;
          goto LABEL_16;
        }

        v21 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v22 = v21;
        v23 = @"PARTICIPANT_ME_TEXT";
        v24 = @"%@ (Me)";
      }

      v26 = [v21 localizedStringForKey:v23 value:v24 table:@"Localizable"];
      v25 = [NSString localizedStringWithFormat:v26, v17];
    }

    else
    {
      v25 = 0;
    }

LABEL_16:

    [v10 setTitle:v25];
    title = [v10 title];

    v9 = &BRFormatPhoneNumber_ptr;
    if (title)
    {
      v125[0] = @"value";
      v125[1] = @"celltype";
      v126[0] = v10;
      v126[1] = off_100060088;
      v28 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:2];
      [v6 addObject:v28];
    }

    v4 = v95;
    delegate = v98;
  }

  contact4 = [(BRParticipantInfoViewController *)self contact];
  participant2 = [contact4 participant];
  userIdentity2 = [participant2 userIdentity];
  lookupInfo = [userIdentity2 lookupInfo];

  emailAddress = [lookupInfo emailAddress];
  if (emailAddress)
  {
  }

  else
  {
    phoneNumber = [lookupInfo phoneNumber];

    if (!phoneNumber)
    {
      goto LABEL_23;
    }
  }

  v123[0] = @"value";
  contact5 = [(BRParticipantInfoViewController *)self contact];
  v124[0] = contact5;
  v124[1] = @"action";
  v123[1] = @"type";
  v123[2] = @"celltype";
  v124[2] = off_100060278;
  v123[3] = @"action";
  v36 = NSStringFromSelector("_performParticipantAction:");
  v124[3] = v36;
  v37 = [v9[269] dictionaryWithObjects:v124 forKeys:v123 count:4];
  [v6 addObject:v37];

LABEL_23:
  v121[0] = @"hheight";
  v121[1] = @"items";
  v122[0] = &off_100050EF0;
  v122[1] = v6;
  v38 = [v9[269] dictionaryWithObjects:v122 forKeys:v121 count:2];
  [v4 addObject:v38];

  v39 = [delegate participantInfoViewControllerAllowedPermissions:self];
  v5 = v97;
  owner = [v97 owner];
  isCurrentUser = [owner isCurrentUser];

  currentUserParticipant = [v97 currentUserParticipant];
  v43 = [(BRParticipantInfoViewController *)self isAllowedToInvite:currentUserParticipant share:v97];

  v44 = &selRef_shareViewControllerRootFolderTitle;
  if (v43)
  {
    participant3 = [(CKShareParticipantContact *)self->_contact participant];
    if (([participant3 isCurrentUser] & 1) == 0)
    {
      publicPermission = [v97 publicPermission];

      v47 = publicPermission == 1;
      v44 = &selRef_shareViewControllerRootFolderTitle;
      v4 = v95;
      if (!v47)
      {
        goto LABEL_38;
      }

      participant4 = [(CKShareParticipantContact *)self->_contact participant];
      permission = [participant4 permission];

      participant5 = [(CKShareParticipantContact *)self->_contact participant];
      [(BRParticipantInfoViewController *)self setAllowedToInvite:[(BRParticipantInfoViewController *)self isAllowedToInvite:participant5 share:v97]];

      if (isCurrentUser)
      {
        v82 = permission;
        v83 = (v39 & 0xC) == 0;
        v119[0] = @"title";
        v92 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v90 = [v92 localizedStringForKey:@"Permission" value:@"Permission" table:@"Localizable"];
        v119[1] = @"items";
        v120[0] = v90;
        v116[0] = @"title";
        v89 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v88 = [v89 localizedStringForKey:@"Can make changes" value:@"Can make changes" table:@"Localizable"];
        v117[0] = v88;
        v117[1] = @"radio";
        v116[1] = @"type";
        v116[2] = @"key";
        v117[2] = @"participantPermission";
        v117[3] = &off_100050EB0;
        v116[3] = @"value";
        v116[4] = @"enabled";
        v87 = [NSNumber numberWithInt:v83 & itemIsShareRoot];
        v117[4] = v87;
        v86 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:5];
        v118[0] = v86;
        v114[0] = @"title";
        v85 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v84 = [v85 localizedStringForKey:@"View only" value:@"View only" table:@"Localizable"];
        v115[0] = v84;
        v115[1] = @"radio";
        v114[1] = @"type";
        v114[2] = @"key";
        v115[2] = @"participantPermission";
        v115[3] = &off_100050EC8;
        v114[3] = @"value";
        v114[4] = @"enabled";
        v51 = [NSNumber numberWithInt:v83 & itemIsShareRoot];
        v115[4] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:5];
        v118[1] = v52;
        v53 = [NSArray arrayWithObjects:v118 count:2];
        v120[1] = v53;
        v54 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:2];

        v4 = v95;
        if ((v39 & 0xC) == 0)
        {
          [v95 addObject:v54];
        }

        v94 = v54;
        shareViewControllerIsNotesOrRemindersOrDocSharing = [v98 shareViewControllerIsNotesOrRemindersOrDocSharing];
        v56 = +[UIShareFeature coOwners];
        isEnabled = [v56 isEnabled];

        if (isEnabled && shareViewControllerIsNotesOrRemindersOrDocSharing)
        {
          v112 = @"items";
          v109[0] = @"title";
          v93 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v91 = [v93 localizedStringForKey:@"ALLOWED_TO_INVITE_PARTICIPANT_ACTION_TEXT" value:@"Can add people" table:@"Localizable"];
          v110[0] = v91;
          v110[1] = @"toggle";
          v109[1] = @"type";
          v109[2] = @"key";
          v110[2] = @"allowedToInvite";
          v109[3] = @"action";
          v58 = NSStringFromSelector("toggleParticipantAllowedToInvite:");
          v110[3] = v58;
          v109[4] = @"toggleCreationCallback";
          v59 = NSStringFromSelector("createdInviteToggle:");
          v110[4] = v59;
          v109[5] = @"enabled";
          v60 = [NSNumber numberWithBool:v82 == 3];
          v110[5] = v60;
          v61 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:6];
          v111 = v61;
          v62 = [NSArray arrayWithObjects:&v111 count:1];
          v113 = v62;
          v63 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];

          v4 = v95;
          [v95 addObject:v63];
        }

        v5 = v97;
      }

      owner2 = [v5 owner];
      participant6 = [(CKShareParticipantContact *)self->_contact participant];
      v66 = [owner2 isEqual:participant6];

      v44 = &selRef_shareViewControllerRootFolderTitle;
      if (!itemIsShareRoot || (v66 & 1) != 0)
      {
        goto LABEL_38;
      }

      v107 = @"items";
      v104[0] = @"title";
      v67 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v68 = [v67 localizedStringForKey:@"REMOVE_ACCESS_ACTION_TEXT" value:@"Remove Access" table:@"Localizable"];
      v105[0] = v68;
      v105[1] = @"action";
      v104[1] = @"type";
      v104[2] = @"action";
      v69 = NSStringFromSelector("removeAccess:");
      v105[2] = v69;
      v105[3] = @"centered";
      v104[3] = @"celltype";
      v104[4] = @"destructive";
      v105[4] = &__kCFBooleanTrue;
      v70 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:5];
      v106 = v70;
      v71 = [NSArray arrayWithObjects:&v106 count:1];
      v108 = v71;
      [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      participant3 = v72 = v4;

      v44 = &selRef_shareViewControllerRootFolderTitle;
      v5 = v97;

      [v72 addObject:participant3];
    }

    v4 = v95;
  }

LABEL_38:
  delegate = v98;
  if ((isCurrentUser & 1) == 0)
  {
    participant7 = [*(&self->super.super.super.isa + *(v44 + 661)) participant];
    v74 = [participant7 isCurrentUser] & itemIsShareRoot;

    if (v74 == 1)
    {
      v102 = @"items";
      v99[0] = @"title";
      v75 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v76 = [v75 localizedStringForKey:@"LEAVE_SHARE_ACTION_TEXT" value:@"Remove Me" table:@"Localizable"];
      v100[0] = v76;
      v100[1] = @"action";
      v99[1] = @"type";
      v99[2] = @"action";
      v77 = NSStringFromSelector("leaveShare:");
      v100[2] = v77;
      v100[3] = @"centered";
      v99[3] = @"celltype";
      v99[4] = @"destructive";
      v100[4] = &__kCFBooleanTrue;
      v78 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:5];
      v101 = v78;
      v79 = [NSArray arrayWithObjects:&v101 count:1];
      v103 = v79;
      v80 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];

      [v4 addObject:v80];
      v5 = v97;
    }
  }

LABEL_41:

  return v4;
}

- (int64_t)participantPermission
{
  participant = [(CKShareParticipantContact *)self->_contact participant];
  permission = [participant permission];

  return permission;
}

- (void)setParticipantPermission:(int64_t)permission
{
  participant = [(CKShareParticipantContact *)self->_contact participant];
  if ([participant permission] != permission)
  {
    allowInviteToggle = [(BRParticipantInfoViewController *)self allowInviteToggle];

    if (!allowInviteToggle)
    {
      goto LABEL_9;
    }

    participant = [(BRParticipantInfoViewController *)self allowInviteToggle];
    participant2 = [(CKShareParticipantContact *)self->_contact participant];
    v8 = participant2;
    if (permission == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [participant2 setRole:v9];

    if (participant)
    {
      [participant setEnabled:permission != 2];
      [participant setUserInteractionEnabled:permission != 2];
      [participant setOn:permission != 2];
    }
  }

LABEL_9:
  participant3 = [(CKShareParticipantContact *)self->_contact participant];
  [participant3 setPermission:permission];

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    participant4 = [(CKShareParticipantContact *)self->_contact participant];
    v14 = 134217984;
    permission = [participant4 permission];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] participant permissions set to %li", &v14, 0xCu);
  }

  delegate = [(BRParticipantInfoViewController *)self delegate];
  [delegate participantInfoViewControllerDidChangeParticipant:self];
}

- (void)toggleParticipantAllowedToInvite:(id)invite
{
  if ([invite isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  participant = [(CKShareParticipantContact *)self->_contact participant];
  [participant setRole:v4];

  v6 = cdui_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    participant2 = [(CKShareParticipantContact *)self->_contact participant];
    v9 = 134217984;
    role = [participant2 role];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] participant allowedToInvite (role) set to %li", &v9, 0xCu);
  }

  delegate = [(BRParticipantInfoViewController *)self delegate];
  [delegate participantInfoViewControllerDidChangeParticipant:self];
}

- (void)createdInviteToggle:(id)toggle
{
  toggleCopy = toggle;
  [(BRParticipantInfoViewController *)self setAllowInviteToggle:?];
  participant = [(CKShareParticipantContact *)self->_contact participant];
  permission = [participant permission];

  if (permission == 2)
  {
    [toggleCopy setUserInteractionEnabled:0];
  }
}

- (void)removeAccess:(id)access
{
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    contact = [(BRParticipantInfoViewController *)self contact];
    v7 = 138412290;
    v8 = contact;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] Remove requested for participant %@", &v7, 0xCu);
  }

  delegate = [(BRParticipantInfoViewController *)self delegate];
  [delegate participantInfoViewControllerRemoveParticipant:self];
}

- (void)leaveShare:(id)share
{
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    contact = [(BRParticipantInfoViewController *)self contact];
    v7 = 138412290;
    v8 = contact;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] Leave share requested for participant %@", &v7, 0xCu);
  }

  delegate = [(BRParticipantInfoViewController *)self delegate];
  [delegate participantInfoViewControllerLeaveShare:self];
}

- (BRParticipantInfoViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UISwitch)allowInviteToggle
{
  WeakRetained = objc_loadWeakRetained(&self->_allowInviteToggle);

  return WeakRetained;
}

@end