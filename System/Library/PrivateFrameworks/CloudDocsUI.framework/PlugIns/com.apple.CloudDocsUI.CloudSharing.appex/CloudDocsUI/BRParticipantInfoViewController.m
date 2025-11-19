@interface BRParticipantInfoViewController
- (BOOL)isAllowedToInvite:(id)a3 share:(id)a4;
- (BRParticipantInfoViewController)initWithParticipantContact:(id)a3;
- (BRParticipantInfoViewControllerDelegate)delegate;
- (UISwitch)allowInviteToggle;
- (id)_sections;
- (int64_t)participantPermission;
- (void)_performParticipantAction:(id)a3;
- (void)createdInviteToggle:(id)a3;
- (void)leaveShare:(id)a3;
- (void)removeAccess:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setParticipantPermission:(int64_t)a3;
- (void)toggleParticipantAllowedToInvite:(id)a3;
- (void)updateSections;
@end

@implementation BRParticipantInfoViewController

- (BRParticipantInfoViewController)initWithParticipantContact:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BRParticipantInfoViewController;
  v5 = [(BRParticipantInfoViewController *)&v31 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(BRParticipantInfoViewController *)v5 setContact:v4];
    v7 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(BRParticipantInfoViewController *)v6 setStaticTableView:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(BRParticipantInfoViewController *)v6 view];
    [v8 addSubview:v6->_staticTableView];

    v9 = [(BRParticipantInfoViewController *)v6 view];
    v28 = [v9 bottomAnchor];
    v27 = [v7 bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v34[0] = v26;
    v25 = [v9 rightAnchor];
    v24 = [v7 rightAnchor];
    v10 = [v25 constraintEqualToAnchor:v24];
    v34[1] = v10;
    [v9 leftAnchor];
    v11 = v30 = v4;
    v12 = [v7 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v34[2] = v13;
    v29 = v9;
    v14 = [v9 topAnchor];
    v15 = [v7 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v34[3] = v16;
    v17 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = [[_UIShareTableStaticDataSource alloc] initWithTableView:v7];
    [(BRParticipantInfoViewController *)v6 setStaticTableDataSource:v18];

    v19 = [(BRParticipantInfoViewController *)v6 staticTableDataSource];
    [v19 setDefaultTarget:v6];

    [v7 setRowHeight:UITableViewAutomaticDimension];
    [v7 setEstimatedRowHeight:44.0];
    [v7 setSectionHeaderHeight:0.0];
    v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v21 = [v20 localizedStringForKey:@"PARTICIPANT_INFO_TITLE_TEXT" value:@"Info" table:@"Localizable"];
    [(BRParticipantInfoViewController *)v6 setTitle:v21];

    v4 = v30;
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
  v3 = [(BRParticipantInfoViewController *)self _sections];
  v4 = [(BRParticipantInfoViewController *)self staticTableDataSource];
  [v4 setSections:v3];

  v5 = [(BRParticipantInfoViewController *)self staticTableView];
  [v5 reloadData];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(BRParticipantInfoViewController *)self updateSections];
}

- (void)_performParticipantAction:(id)a3
{
  v4 = [(BRParticipantInfoViewController *)self contact];
  v5 = [v4 participant];
  v6 = [v5 userIdentity];
  v7 = [v6 lookupInfo];
  v8 = [v7 emailAddress];

  v9 = [(BRParticipantInfoViewController *)self contact];
  v10 = [v9 participant];
  v11 = [v10 userIdentity];
  v12 = [v11 lookupInfo];
  v13 = v12;
  if (v8)
  {
    v14 = [v12 emailAddress];
    [NSString stringWithFormat:@"mailto:%@", v14];
  }

  else
  {
    v14 = [v12 phoneNumber];
    [NSString stringWithFormat:@"tel://%@", v14];
  }
  v15 = ;
  v20 = [NSURL URLWithString:v15];

  v16 = +[LSApplicationWorkspace defaultWorkspace];
  [v16 openURL:v20];
  v17 = [(BRParticipantInfoViewController *)self staticTableView];
  v18 = [(BRParticipantInfoViewController *)self staticTableView];
  v19 = [v18 indexPathForSelectedRow];
  [v17 deselectRowAtIndexPath:v19 animated:1];
}

- (BOOL)isAllowedToInvite:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRParticipantInfoViewController *)self delegate];
  v9 = [v8 itemIsShareRoot];

  if (v9)
  {
    v10 = [v7 owner];
    v11 = [v10 isEqual:v6];

    v12 = [v6 role] == 2 && objc_msgSend(v6, "permission") == 3;
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
  v3 = [(BRParticipantInfoViewController *)self delegate];
  v4 = +[NSMutableArray array];
  v5 = [v3 viewControllerShare:self];
  v96 = [v3 itemIsShareRoot];
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = objc_opt_new();
  v7 = [(BRParticipantInfoViewController *)self contact];
  v8 = [v7 contact];

  v9 = &BRFormatPhoneNumber_ptr;
  v95 = v4;
  v97 = v5;
  v98 = v3;
  if (v8)
  {
    v10 = objc_opt_new();
    v11 = [(BRParticipantInfoViewController *)self contact];
    v12 = [v11 contact];
    [v10 setContact:v12];

    v13 = [(BRParticipantInfoViewController *)self contact];
    v14 = [v13 participant];
    v15 = [v13 contact];
    if (v15)
    {
      v16 = [v13 contact];
      v17 = [CNContactFormatter stringFromContact:v16 style:0];
    }

    else
    {
      v17 = 0;
    }

    if (![v17 length])
    {
      v18 = [v14 userIdentity];
      v19 = [v18 nameComponents];
      v20 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v19 style:1 options:0];

      v17 = v20;
    }

    if ([v17 length])
    {
      if ([v14 role] == 1)
      {
        v21 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v22 = v21;
        v23 = @"PARTICIPANT_OWNER_TEXT";
        v24 = @"%@ (Owner)";
      }

      else
      {
        if (![v14 isCurrentUser])
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
    v27 = [v10 title];

    v9 = &BRFormatPhoneNumber_ptr;
    if (v27)
    {
      v125[0] = @"value";
      v125[1] = @"celltype";
      v126[0] = v10;
      v126[1] = off_100060088;
      v28 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:2];
      [v6 addObject:v28];
    }

    v4 = v95;
    v3 = v98;
  }

  v29 = [(BRParticipantInfoViewController *)self contact];
  v30 = [v29 participant];
  v31 = [v30 userIdentity];
  v32 = [v31 lookupInfo];

  v33 = [v32 emailAddress];
  if (v33)
  {
  }

  else
  {
    v34 = [v32 phoneNumber];

    if (!v34)
    {
      goto LABEL_23;
    }
  }

  v123[0] = @"value";
  v35 = [(BRParticipantInfoViewController *)self contact];
  v124[0] = v35;
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

  v39 = [v3 participantInfoViewControllerAllowedPermissions:self];
  v5 = v97;
  v40 = [v97 owner];
  v41 = [v40 isCurrentUser];

  v42 = [v97 currentUserParticipant];
  v43 = [(BRParticipantInfoViewController *)self isAllowedToInvite:v42 share:v97];

  v44 = &selRef_shareViewControllerRootFolderTitle;
  if (v43)
  {
    v45 = [(CKShareParticipantContact *)self->_contact participant];
    if (([v45 isCurrentUser] & 1) == 0)
    {
      v46 = [v97 publicPermission];

      v47 = v46 == 1;
      v44 = &selRef_shareViewControllerRootFolderTitle;
      v4 = v95;
      if (!v47)
      {
        goto LABEL_38;
      }

      v48 = [(CKShareParticipantContact *)self->_contact participant];
      v49 = [v48 permission];

      v50 = [(CKShareParticipantContact *)self->_contact participant];
      [(BRParticipantInfoViewController *)self setAllowedToInvite:[(BRParticipantInfoViewController *)self isAllowedToInvite:v50 share:v97]];

      if (v41)
      {
        v82 = v49;
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
        v87 = [NSNumber numberWithInt:v83 & v96];
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
        v51 = [NSNumber numberWithInt:v83 & v96];
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
        v55 = [v98 shareViewControllerIsNotesOrRemindersOrDocSharing];
        v56 = +[UIShareFeature coOwners];
        v57 = [v56 isEnabled];

        if (v57 && v55)
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

      v64 = [v5 owner];
      v65 = [(CKShareParticipantContact *)self->_contact participant];
      v66 = [v64 isEqual:v65];

      v44 = &selRef_shareViewControllerRootFolderTitle;
      if (!v96 || (v66 & 1) != 0)
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
      v45 = v72 = v4;

      v44 = &selRef_shareViewControllerRootFolderTitle;
      v5 = v97;

      [v72 addObject:v45];
    }

    v4 = v95;
  }

LABEL_38:
  v3 = v98;
  if ((v41 & 1) == 0)
  {
    v73 = [*(&self->super.super.super.isa + *(v44 + 661)) participant];
    v74 = [v73 isCurrentUser] & v96;

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
  v2 = [(CKShareParticipantContact *)self->_contact participant];
  v3 = [v2 permission];

  return v3;
}

- (void)setParticipantPermission:(int64_t)a3
{
  v5 = [(CKShareParticipantContact *)self->_contact participant];
  if ([v5 permission] != a3)
  {
    v6 = [(BRParticipantInfoViewController *)self allowInviteToggle];

    if (!v6)
    {
      goto LABEL_9;
    }

    v5 = [(BRParticipantInfoViewController *)self allowInviteToggle];
    v7 = [(CKShareParticipantContact *)self->_contact participant];
    v8 = v7;
    if (a3 == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [v7 setRole:v9];

    if (v5)
    {
      [v5 setEnabled:a3 != 2];
      [v5 setUserInteractionEnabled:a3 != 2];
      [v5 setOn:a3 != 2];
    }
  }

LABEL_9:
  v10 = [(CKShareParticipantContact *)self->_contact participant];
  [v10 setPermission:a3];

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(CKShareParticipantContact *)self->_contact participant];
    v14 = 134217984;
    v15 = [v12 permission];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] participant permissions set to %li", &v14, 0xCu);
  }

  v13 = [(BRParticipantInfoViewController *)self delegate];
  [v13 participantInfoViewControllerDidChangeParticipant:self];
}

- (void)toggleParticipantAllowedToInvite:(id)a3
{
  if ([a3 isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = [(CKShareParticipantContact *)self->_contact participant];
  [v5 setRole:v4];

  v6 = cdui_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(CKShareParticipantContact *)self->_contact participant];
    v9 = 134217984;
    v10 = [v7 role];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] participant allowedToInvite (role) set to %li", &v9, 0xCu);
  }

  v8 = [(BRParticipantInfoViewController *)self delegate];
  [v8 participantInfoViewControllerDidChangeParticipant:self];
}

- (void)createdInviteToggle:(id)a3
{
  v6 = a3;
  [(BRParticipantInfoViewController *)self setAllowInviteToggle:?];
  v4 = [(CKShareParticipantContact *)self->_contact participant];
  v5 = [v4 permission];

  if (v5 == 2)
  {
    [v6 setUserInteractionEnabled:0];
  }
}

- (void)removeAccess:(id)a3
{
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(BRParticipantInfoViewController *)self contact];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] Remove requested for participant %@", &v7, 0xCu);
  }

  v6 = [(BRParticipantInfoViewController *)self delegate];
  [v6 participantInfoViewControllerRemoveParticipant:self];
}

- (void)leaveShare:(id)a3
{
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(BRParticipantInfoViewController *)self contact];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] Leave share requested for participant %@", &v7, 0xCu);
  }

  v6 = [(BRParticipantInfoViewController *)self delegate];
  [v6 participantInfoViewControllerLeaveShare:self];
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