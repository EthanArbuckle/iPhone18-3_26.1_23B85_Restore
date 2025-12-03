@interface _UIShareInvitationSettingsController
- (BOOL)allowOthersToInvite;
- (BOOL)shouldShowAllowInviting;
- (UISwitch)allowInviteToggle;
- (_UIShareInvitationSettingsController)init;
- (_UIShareInvitationSettingsDelegate)delegate;
- (_UIShareOverviewController)proxiedOverviewController;
- (_UIShareOverviewControllerDelegate)overviewControllerDelegate;
- (id)_sections;
- (id)share;
- (int64_t)currentParticipantsState;
- (void)_sendSettingsControllerDidChange;
- (void)_sendSettingsControllerDidChangeAllowInviters;
- (void)auxiliaryAction:(id)action;
- (void)copyLink:(id)link;
- (void)setAllowInviters:(int64_t)inviters;
- (void)setDefaultPermission:(int64_t)permission;
- (void)setPublicPermission:(int64_t)permission;
- (void)setSettings:(id)settings;
- (void)updateSections;
@end

@implementation _UIShareInvitationSettingsController

- (_UIShareInvitationSettingsController)init
{
  v32.receiver = self;
  v32.super_class = _UIShareInvitationSettingsController;
  v2 = [(_UIShareInvitationSettingsController *)&v32 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_opt_new();
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(_UIShareInvitationSettingsController *)v2 setStaticTableView:v5];

    staticTableView = [(_UIShareInvitationSettingsController *)v2 staticTableView];
    [staticTableView setTranslatesAutoresizingMaskIntoConstraints:0];

    staticTableView2 = [(_UIShareInvitationSettingsController *)v2 staticTableView];
    [staticTableView2 setSectionFooterHeight:UITableViewAutomaticDimension];

    staticTableView3 = [(_UIShareInvitationSettingsController *)v2 staticTableView];
    [staticTableView3 setEstimatedSectionFooterHeight:25.0];

    view = [(_UIShareInvitationSettingsController *)v2 view];
    [view addSubview:v2->_staticTableView];

    view2 = [(_UIShareInvitationSettingsController *)v2 view];
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [(UITableView *)v2->_staticTableView bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[0] = v28;
    view3 = [(_UIShareInvitationSettingsController *)v2 view];
    rightAnchor = [view3 rightAnchor];
    rightAnchor2 = [(UITableView *)v2->_staticTableView rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v33[1] = v24;
    view4 = [(_UIShareInvitationSettingsController *)v2 view];
    leftAnchor = [view4 leftAnchor];
    leftAnchor2 = [(UITableView *)v2->_staticTableView leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v33[2] = v12;
    view5 = [(_UIShareInvitationSettingsController *)v2 view];
    topAnchor = [view5 topAnchor];
    topAnchor2 = [(UITableView *)v2->_staticTableView topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[3] = v16;
    v17 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = [[_UIShareTableStaticDataSource alloc] initWithTableView:v2->_staticTableView];
    [(_UIShareInvitationSettingsController *)v2 setStaticTableDataSource:v18];

    staticTableDataSource = [(_UIShareInvitationSettingsController *)v2 staticTableDataSource];
    [staticTableDataSource setDefaultTarget:v2];

    v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v21 = [v20 localizedStringForKey:@"SETTINGS_TITLE_TEXT" value:@"Share Options" table:@"Localizable"];
    [(_UIShareInvitationSettingsController *)v2 setTitle:v21];
  }

  return v2;
}

- (void)updateSections
{
  _sections = [(_UIShareInvitationSettingsController *)self _sections];
  staticTableDataSource = [(_UIShareInvitationSettingsController *)self staticTableDataSource];
  [staticTableDataSource setSections:_sections];

  staticTableView = [(_UIShareInvitationSettingsController *)self staticTableView];
  [staticTableView reloadData];
}

- (id)share
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  v4 = [overviewControllerDelegate viewControllerShare:self];

  return v4;
}

- (id)_sections
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  proxiedOverviewController = [(_UIShareInvitationSettingsController *)self proxiedOverviewController];
  v114 = +[NSMutableArray array];
  v81 = [overviewControllerDelegate shareViewControllerIsInitialShare:proxiedOverviewController];
  hasACL = [(BRShareSettings *)self->_settings hasACL];
  v3 = [overviewControllerDelegate viewControllerShare:self];
  v100 = v3;
  if (v3)
  {
    owner = [v3 owner];
    isCurrentUser = [owner isCurrentUser];
  }

  else
  {
    isCurrentUser = 1;
  }

  selfCopy = self;
  v101 = isCurrentUser;
  v6 = [(BRShareSettings *)self->_settings shouldShowMode]& isCurrentUser;
  v158[0] = @"title";
  v109 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v107 = [v109 localizedStringForKey:@"Who can access" value:@"Who can access" table:@"Localizable"];
  v159[0] = v107;
  v159[1] = &off_100050EE0;
  v158[1] = @"fheight";
  v158[2] = @"items";
  v155[0] = @"title";
  v104 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v96 = [v104 localizedStringForKey:@"Only people you invite" value:@"Only people you invite" table:@"Localizable"];
  v156[0] = v96;
  v156[1] = @"radio";
  v155[1] = @"type";
  v155[2] = @"key";
  v156[2] = @"hasACL";
  v156[3] = &__kCFBooleanTrue;
  v155[3] = @"value";
  v155[4] = @"enabled";
  v7 = v6;
  v93 = [NSNumber numberWithBool:v6];
  v155[5] = @"axIdentifier";
  v156[4] = v93;
  v156[5] = @"aclPrivateCell";
  v90 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:6];
  v157[0] = v90;
  v153[0] = @"title";
  v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"Anyone with the link" value:@"Anyone with the link" table:@"Localizable"];
  v154[0] = v9;
  v154[1] = @"radio";
  v153[1] = @"type";
  v153[2] = @"key";
  v154[2] = @"hasACL";
  v154[3] = &__kCFBooleanFalse;
  v153[3] = @"value";
  v153[4] = @"enabled";
  v10 = [NSNumber numberWithBool:v6];
  v153[5] = @"axIdentifier";
  v154[4] = v10;
  v154[5] = @"aclPublicCell";
  v11 = [NSDictionary dictionaryWithObjects:v154 forKeys:v153 count:6];
  v157[1] = v11;
  v12 = [NSArray arrayWithObjects:v157 count:2];
  v159[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v159 forKeys:v158 count:3];

  if (v7 == 1)
  {
    [v114 addObject:v13];
  }

  v105 = [(BRShareSettings *)self->_settings shouldShowPermissions]& v101;
  v14 = @"publicPermission";
  if (hasACL)
  {
    v14 = @"defaultPermission";
  }

  v108 = v14;
  v99 = v13;
  if (hasACL)
  {
    v97 = [(BRShareSettings *)self->_settings defaultPermission]== 0;
  }

  else
  {
    v97 = 0;
  }

  v151[0] = @"title";
  v94 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v91 = [v94 localizedStringForKey:@"Permission" value:@"Permission" table:@"Localizable"];
  v152[0] = v91;
  v151[1] = @"items";
  v148[0] = @"title";
  v88 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v86 = [v88 localizedStringForKey:@"Can make changes" value:@"Can make changes" table:@"Localizable"];
  v149[0] = v86;
  v149[1] = @"radio";
  v148[1] = @"type";
  v148[2] = @"key";
  v149[2] = v108;
  v149[3] = &off_100050E68;
  v148[3] = @"value";
  v148[4] = @"enabled";
  v85 = [NSNumber numberWithBool:v105];
  v148[5] = @"axIdentifier";
  v149[4] = v85;
  v149[5] = @"readWritePermissionCell";
  v84 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:6];
  v150[0] = v84;
  v146[0] = @"title";
  v83 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v82 = [v83 localizedStringForKey:@"View only" value:@"View only" table:@"Localizable"];
  v147[0] = v82;
  v147[1] = @"radio";
  v146[1] = @"type";
  v146[2] = @"key";
  v147[2] = v108;
  v147[3] = &off_100050E80;
  v146[3] = @"value";
  v146[4] = @"enabled";
  v15 = [NSNumber numberWithBool:v105];
  v146[5] = @"axIdentifier";
  v147[4] = v15;
  v147[5] = @"readOnlyPermissionCell";
  v16 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:6];
  v150[1] = v16;
  v17 = [NSArray arrayWithObjects:v150 count:2];
  v152[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:2];
  v110 = [v18 mutableCopy];

  v19 = &BRFormatPhoneNumber_ptr;
  v20 = overviewControllerDelegate;
  selfCopy2 = self;
  v22 = v97;
  if (v97 || self->_hasEverBeenInMixedPermissionState)
  {
    self->_hasEverBeenInMixedPermissionState = 1;
    v23 = [NSAttributedString alloc];
    v24 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v25 = [v24 localizedStringForKey:@"Some people can make changes value:others can only view." table:{@"Some people can make changes, others can only view.", @"Localizable"}];
    v144 = NSForegroundColorAttributeName;
    if (v97)
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      +[UIColor clearColor];
    }
    v26 = ;
    v145 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
    v28 = [v23 initWithString:v25 attributes:v27];

    [v110 setObject:v28 forKey:@"footer"];
    selfCopy->_permissionSectionIndex = [v114 count];

    v22 = v97;
  }

  if (v105)
  {
    [v114 addObject:v110];
  }

  v29 = (hasACL & 1) != 0 || selfCopy->_settings == 0;
  v30 = [(_UIShareInvitationSettingsController *)selfCopy defaultPermission]== 3 || selfCopy->_settings == 0;
  if (([overviewControllerDelegate shareViewControllerIsNotesOrRemindersOrDocSharing:proxiedOverviewController] & v29) == 1)
  {
    v31 = v101 & (v30 || v22);
  }

  else
  {
    v31 = 0;
  }

  v32 = +[UIShareFeature coOwners];
  isEnabled = [v32 isEnabled];

  if (isEnabled && v31)
  {
    editableParticipants = [overviewControllerDelegate editableParticipants];
    v35 = [editableParticipants count];

    selfCopy->_allowInviters = [(_UIShareInvitationSettingsController *)selfCopy currentParticipantsState];
    if (v35 < 2 || [overviewControllerDelegate isShowAddPeople])
    {
      shareViewControllerAllowOthersToInvite = [overviewControllerDelegate shareViewControllerAllowOthersToInvite];
      v142 = @"items";
      v139[0] = @"title";
      v37 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v38 = [v37 localizedStringForKey:@"Anyone can add people" value:@"Anyone can add people" table:@"Localizable"];
      v140[0] = v38;
      v140[1] = @"toggle";
      v139[1] = @"type";
      v139[2] = @"key";
      v140[2] = @"allowOthersToInvite";
      v139[3] = @"enabled";
      v39 = [NSNumber numberWithInt:v29 & v30];
      v140[3] = v39;
      v139[4] = @"value";
      v40 = [NSNumber numberWithBool:shareViewControllerAllowOthersToInvite];
      v140[4] = v40;
      v139[5] = @"toggleCreationCallback";
      v41 = NSStringFromSelector("createdInviteToggle:");
      v140[5] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:6];
      v141 = v42;
      v43 = [NSArray arrayWithObjects:&v141 count:1];
      v143 = v43;
      v44 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    }

    else
    {
      v137[0] = @"title";
      v106 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v102 = [v106 localizedStringForKey:@"Adding People" value:@"Adding People" table:@"Localizable"];
      v138[0] = v102;
      v137[1] = @"items";
      v134[0] = @"title";
      v98 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v95 = [v98 localizedStringForKey:@"Anyone can add people" value:@"Anyone can add people" table:@"Localizable"];
      v135[0] = v95;
      v135[1] = @"radio";
      v134[1] = @"type";
      v134[2] = @"key";
      v135[2] = @"allowInviters";
      v135[3] = &off_100050E98;
      v134[3] = @"value";
      v134[4] = @"enabled";
      v92 = [NSNumber numberWithInt:v29 & v30];
      v134[5] = @"axIdentifier";
      v135[4] = v92;
      v135[5] = @"anyoneCanInviteCell";
      v89 = [NSDictionary dictionaryWithObjects:v135 forKeys:v134 count:6];
      v136[0] = v89;
      v132[0] = @"title";
      v87 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v71 = [v87 localizedStringForKey:@"Only you can add people" value:@"Only you can add people" table:@"Localizable"];
      v133[0] = v71;
      v133[1] = @"radio";
      v132[1] = @"type";
      v132[2] = @"key";
      v133[2] = @"allowInviters";
      v133[3] = &off_100050E80;
      v132[3] = @"value";
      v132[4] = @"enabled";
      v72 = [NSNumber numberWithInt:v29 & v30];
      v132[5] = @"axIdentifier";
      v133[4] = v72;
      v133[5] = @"onlyYouCanInviteCell";
      v73 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:6];
      v136[1] = v73;
      v74 = [NSArray arrayWithObjects:v136 count:2];
      v138[1] = v74;
      v75 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:2];
      v44 = [v75 mutableCopy];

      if (selfCopy->_allowInviters != 3)
      {
        v20 = overviewControllerDelegate;
        v19 = &BRFormatPhoneNumber_ptr;
        goto LABEL_34;
      }

      v76 = [NSAttributedString alloc];
      v19 = &BRFormatPhoneNumber_ptr;
      v77 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v78 = [v77 localizedStringForKey:@"Some people can add others." value:@"Some people can add others." table:@"Localizable"];
      v130 = NSForegroundColorAttributeName;
      v79 = +[UIColor secondaryLabelColor];
      v131 = v79;
      v80 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
      v37 = [v76 initWithString:v78 attributes:v80];

      [v44 setObject:v37 forKey:@"footer"];
      selfCopy->_hasEverBeenInMixedAllowInvitersState = 1;
      selfCopy->_allowInvitersSectionIndex = [v114 count];
      v20 = overviewControllerDelegate;
    }

LABEL_34:
    [v114 addObject:v44];

    selfCopy2 = selfCopy;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v45 = [v20 viewControllerShare:selfCopy2];
  participants = [v45 participants];

  v47 = [participants countByEnumeratingWithState:&v115 objects:v129 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v116;
    while (2)
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v116 != v49)
        {
          objc_enumerationMutation(participants);
        }

        v51 = *(*(&v115 + 1) + 8 * i);
        if ([v51 role] == 3 || objc_msgSend(v51, "role") == 2)
        {
          v52 = 0;
          goto LABEL_47;
        }
      }

      v48 = [participants countByEnumeratingWithState:&v115 objects:v129 count:16];
      v52 = 1;
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v52 = 1;
  }

LABEL_47:

  shouldHideCopyLink = [(BRShareSettings *)selfCopy2->_settings shouldHideCopyLink];
  if ((v52 & 1) == 0 && ((shouldHideCopyLink | v81) & 1) == 0 && ((hasACL ^ 1) & 1) == 0)
  {
    v127[0] = @"items";
    v124[0] = @"title";
    v54 = [v19[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v55 = [v54 localizedStringForKey:@"COPY_LINK_ACTION_TEXT" value:@"Copy Link" table:@"Localizable"];
    v125[0] = v55;
    v125[1] = @"action";
    v124[1] = @"type";
    v124[2] = @"action";
    v56 = NSStringFromSelector("copyLink:");
    v124[3] = @"celltype";
    v125[2] = v56;
    v125[3] = @"centered";
    v57 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:4];
    v126 = v57;
    v58 = [NSArray arrayWithObjects:&v126 count:1];
    v128[0] = v58;
    v127[1] = @"footer";
    v59 = [v19[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v60 = [v59 localizedStringForKey:@"SETTINGS_COPY_LINK_SUBTITLE" value:@"Only added people will have access." table:@"Localizable"];
    v61 = [v20 shareViewControllerItemUTI:proxiedOverviewController];
    v62 = _CDAdaptLocalizedStringForItemType();
    v128[1] = v62;
    v63 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:2];

    v20 = overviewControllerDelegate;
    [v114 addObject:v63];
  }

  v64 = [v20 shareViewControllerAuxiliaryActionTitle:proxiedOverviewController];
  v65 = v64;
  if (!((v64 == 0) | hasACL & 1))
  {
    v122 = @"items";
    v119[0] = @"title";
    v119[1] = @"type";
    v120[0] = v64;
    v120[1] = @"action";
    v119[2] = @"action";
    v66 = NSStringFromSelector("auxiliaryAction:");
    v119[3] = @"celltype";
    v120[2] = v66;
    v120[3] = @"centered";
    v67 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:4];
    v121 = v67;
    v68 = [NSArray arrayWithObjects:&v121 count:1];
    v123 = v68;
    v69 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];

    [v114 addObject:v69];
  }

  return v114;
}

- (void)_sendSettingsControllerDidChange
{
  delegate = [(_UIShareInvitationSettingsController *)self delegate];
  [delegate settingsControllerDidChange:self changedAllowInviters:0];
}

- (void)_sendSettingsControllerDidChangeAllowInviters
{
  delegate = [(_UIShareInvitationSettingsController *)self delegate];
  [delegate settingsControllerDidChange:self changedAllowInviters:1];
}

- (void)setAllowInviters:(int64_t)inviters
{
  if (self->_allowInviters != inviters)
  {
    overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
    editableParticipants = [overviewControllerDelegate editableParticipants];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [editableParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      if (inviters == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(editableParticipants);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([v12 isCurrentUser] & 1) == 0)
          {
            [v12 setRole:v10];
          }
        }

        v8 = [editableParticipants countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    self->_allowInviters = inviters;
    [(_UIShareInvitationSettingsController *)self _sendSettingsControllerDidChangeAllowInviters];
    if (self->_hasEverBeenInMixedAllowInvitersState)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000AFA0;
      block[3] = &unk_10004C920;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (int64_t)currentParticipantsState
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  shareViewControllerCurrentParticipantsState = [overviewControllerDelegate shareViewControllerCurrentParticipantsState];

  return shareViewControllerCurrentParticipantsState;
}

- (BOOL)allowOthersToInvite
{
  WeakRetained = objc_loadWeakRetained(&self->_overviewControllerDelegate);
  shareViewControllerAllowOthersToInvite = [WeakRetained shareViewControllerAllowOthersToInvite];

  return shareViewControllerAllowOthersToInvite;
}

- (BOOL)shouldShowAllowInviting
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  v4 = [overviewControllerDelegate viewControllerShare:self];
  v5 = v4;
  if (v4)
  {
    owner = [v4 owner];
    isCurrentUser = [owner isCurrentUser];
  }

  else
  {
    isCurrentUser = 1;
  }

  hasACL = [(BRShareSettings *)self->_settings hasACL];
  settings = self->_settings;
  if (settings)
  {
    v10 = hasACL;
  }

  else
  {
    v10 = 1;
  }

  if ([(BRShareSettings *)settings defaultPermission]== 3)
  {
    v11 = 1;
    if (!hasACL)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = self->_settings == 0;
    if (!hasACL)
    {
      goto LABEL_9;
    }
  }

  v12 = [(BRShareSettings *)self->_settings defaultPermission]== 0;
LABEL_12:
  proxiedOverviewController = [(_UIShareInvitationSettingsController *)self proxiedOverviewController];
  v14 = [overviewControllerDelegate shareViewControllerIsNotesOrRemindersOrDocSharing:proxiedOverviewController];

  if ((v14 & v10) == 1)
  {
    v15 = isCurrentUser & (v11 || v12);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setDefaultPermission:(int64_t)permission
{
  if ([(BRShareSettings *)self->_settings defaultPermission]!= permission)
  {
    allowInviteToggle = [(_UIShareInvitationSettingsController *)self allowInviteToggle];

    if (allowInviteToggle)
    {
      overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
      if ((permission != 2) != [overviewControllerDelegate shareViewControllerAllowOthersToInvite])
      {
        [overviewControllerDelegate shareViewControllerSetAllowOthersToInvite:permission != 2];
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B41C;
      block[3] = &unk_10004C920;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    shouldShowAllowInviting = [(_UIShareInvitationSettingsController *)self shouldShowAllowInviting];
    [(BRShareSettings *)self->_settings setDefaultPermission:permission];
    [(_UIShareInvitationSettingsController *)self _sendSettingsControllerDidChange];
    shouldShowAllowInviting2 = [(_UIShareInvitationSettingsController *)self shouldShowAllowInviting];
    if (self->_hasEverBeenInMixedPermissionState || shouldShowAllowInviting != shouldShowAllowInviting2)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000B458;
      v9[3] = &unk_10004CC28;
      v9[4] = self;
      v10 = shouldShowAllowInviting;
      v11 = shouldShowAllowInviting2;
      v12 = allowInviteToggle != 0;
      dispatch_async(&_dispatch_main_q, v9);
    }
  }
}

- (void)setPublicPermission:(int64_t)permission
{
  if ([(BRShareSettings *)self->_settings publicPermission]!= permission)
  {
    [(BRShareSettings *)self->_settings setPublicPermission:permission];

    [(_UIShareInvitationSettingsController *)self _sendSettingsControllerDidChange];
  }
}

- (void)setSettings:(id)settings
{
  if (self->_settings != settings)
  {
    v4 = [settings copy];
    settings = self->_settings;
    self->_settings = v4;

    [(_UIShareInvitationSettingsController *)self updateSections];
  }
}

- (void)copyLink:(id)link
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  proxiedOverviewController = [(_UIShareInvitationSettingsController *)self proxiedOverviewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B880;
  v6[3] = &unk_10004CAD0;
  v6[4] = self;
  [overviewControllerDelegate shareViewControllerCopyShareURL:proxiedOverviewController completion:v6];
}

- (void)auxiliaryAction:(id)action
{
  overviewControllerDelegate = [(_UIShareInvitationSettingsController *)self overviewControllerDelegate];
  proxiedOverviewController = [(_UIShareInvitationSettingsController *)self proxiedOverviewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B9F4;
  v6[3] = &unk_10004C920;
  v6[4] = self;
  [overviewControllerDelegate shareViewControllerPerformAuxiliaryAction:proxiedOverviewController completion:v6];
}

- (_UIShareInvitationSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIShareOverviewControllerDelegate)overviewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overviewControllerDelegate);

  return WeakRetained;
}

- (_UIShareOverviewController)proxiedOverviewController
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedOverviewController);

  return WeakRetained;
}

- (UISwitch)allowInviteToggle
{
  WeakRetained = objc_loadWeakRetained(&self->_allowInviteToggle);

  return WeakRetained;
}

@end