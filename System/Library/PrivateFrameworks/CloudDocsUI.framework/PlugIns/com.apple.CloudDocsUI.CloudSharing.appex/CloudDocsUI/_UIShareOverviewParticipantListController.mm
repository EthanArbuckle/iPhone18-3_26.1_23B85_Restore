@interface _UIShareOverviewParticipantListController
- (_UIShareOverviewActionController)addPeopleViewController;
- (_UIShareOverviewParticipantListController)initWithDelegate:(id)a3;
- (id)_sections;
- (id)settingsSectionWithText:(id)a3;
- (id)viewControllerItemURL:(id)a3;
- (id)viewControllerShare:(id)a3;
- (unint64_t)participantInfoViewControllerAllowedPermissions:(id)a3;
- (void)_dismissAddPeople:(id)a3;
- (void)_updateOverrideTraitsForModallyPresentedAddPeopleController;
- (void)addPeople:(id)a3;
- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5;
- (void)copyLink:(id)a3;
- (void)dealloc;
- (void)leaveShare:(id)a3;
- (void)participantInfoViewControllerDidChangeParticipant:(id)a3;
- (void)participantInfoViewControllerLeaveShare:(id)a3;
- (void)participantInfoViewControllerRemoveParticipant:(id)a3;
- (void)removeParticipant:(id)a3;
- (void)settingsControllerDidChange:(id)a3 changedAllowInviters:(BOOL)a4;
- (void)shareDidChange;
- (void)showParticipantInfo:(id)a3;
- (void)showSettings:(id)a3;
- (void)showSettingsAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)showSharedFolder:(id)a3;
- (void)stopSharing:(id)a3;
- (void)togglePrimarySwitch:(id)a3;
- (void)toggleSecondarySwitch:(id)a3;
- (void)updateSections;
- (void)updateThumbnail;
- (void)willNavigateFromViewController:(id)a3;
@end

@implementation _UIShareOverviewParticipantListController

- (_UIShareOverviewParticipantListController)initWithDelegate:(id)a3
{
  v41.receiver = self;
  v41.super_class = _UIShareOverviewParticipantListController;
  v3 = [(_UIShareOverviewController *)&v41 initWithDelegate:a3];
  if (v3)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v5 = [v4 localizedStringForKey:@"POST_SHARE_LIST_TITLE_BACK_BUTTON_TEXT" value:@"People" table:@"Localizable"];
    v6 = [(_UIShareOverviewParticipantListController *)v3 navigationItem];
    [v6 setBackButtonTitle:v5];

    if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
    {
      [(_UIShareOverviewParticipantListController *)v3 setEdgesForExtendedLayout:0];
    }

    v7 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(_UIShareOverviewParticipantListController *)v3 setStaticTableView:v7];

    v8 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v9 setRowHeight:UITableViewAutomaticDimension];

    v10 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v10 setEstimatedRowHeight:56.0];

    v11 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v11 setSectionFooterHeight:UITableViewAutomaticDimension];

    v12 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v12 setEstimatedSectionFooterHeight:25.0];

    v13 = [(_UIShareOverviewParticipantListController *)v3 view];
    [v13 addSubview:v3->_staticTableView];

    v14 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v14 registerClass:objc_opt_class() forCellReuseIdentifier:off_100060088];

    v15 = [(_UIShareOverviewParticipantListController *)v3 staticTableView];
    [v15 registerClass:objc_opt_class() forCellReuseIdentifier:off_10005F840];

    v40 = [(_UIShareOverviewParticipantListController *)v3 view];
    v39 = [v40 bottomAnchor];
    v38 = [(UITableView *)v3->_staticTableView bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v42[0] = v37;
    v36 = [(_UIShareOverviewParticipantListController *)v3 view];
    v35 = [v36 rightAnchor];
    v34 = [(UITableView *)v3->_staticTableView rightAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v42[1] = v33;
    v32 = [(_UIShareOverviewParticipantListController *)v3 view];
    v16 = [v32 leftAnchor];
    v17 = [(UITableView *)v3->_staticTableView leftAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v42[2] = v18;
    v19 = [(_UIShareOverviewParticipantListController *)v3 view];
    v20 = [v19 topAnchor];
    v21 = [(UITableView *)v3->_staticTableView topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v42[3] = v22;
    v23 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    v24 = [[_UIShareTableStaticDataSource alloc] initWithTableView:v3->_staticTableView];
    [(_UIShareOverviewParticipantListController *)v3 setStaticTableDataSource:v24];

    v25 = [(_UIShareOverviewParticipantListController *)v3 staticTableDataSource];
    [v25 setDefaultTarget:v3];

    v26 = [CKShareParticipantArrayController alloc];
    v27 = [(_UIShareOverviewController *)v3 share];
    v28 = [(CKShareParticipantArrayController *)v26 initWithDelegate:v3 share:v27];
    [(_UIShareOverviewParticipantListController *)v3 setParticipantArrayController:v28];

    v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v30 = [v29 localizedStringForKey:@"POST_SHARE_LIST_TITLE_TEXT" value:@"People" table:@"Localizable"];
    [(_UIShareOverviewParticipantListController *)v3 setTitle:v30];

    [(_UIShareOverviewParticipantListController *)v3 updateSections];
  }

  return v3;
}

- (void)shareDidChange
{
  v3 = [(_UIShareOverviewController *)self share];
  v4 = [(_UIShareOverviewParticipantListController *)self participantArrayController];
  [v4 setShare:v3];

  v5 = [(_UIShareOverviewParticipantListController *)self participantArrayController];
  [v5 forceParticipantUpdate];

  v6 = [(_UIShareOverviewParticipantListController *)self addPeopleViewController];
  v7 = v6;
  if (v6)
  {
    [v6 shareDidChange];
  }

  else
  {
    [(_UIShareOverviewParticipantListController *)self updateSections];
  }
}

- (void)updateSections
{
  v3 = [BRShareSettings alloc];
  v4 = [(_UIShareOverviewController *)self share];
  v5 = [(_UIShareOverviewController *)self delegate];
  v6 = -[BRShareSettings initWithShare:permissions:](v3, "initWithShare:permissions:", v4, [v5 shareViewControllerAllowedPermissions:self]);
  settings = self->_settings;
  self->_settings = v6;

  v8 = [(_UIShareOverviewParticipantListController *)self _sections];
  v9 = [(_UIShareOverviewParticipantListController *)self staticTableDataSource];
  [v9 setSections:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003FD0;
  v10[3] = &unk_10004C920;
  v10[4] = self;
  [UIView performWithoutAnimation:v10];
}

- (void)updateThumbnail
{
  v2 = [(_UIShareOverviewParticipantListController *)self addPeopleViewController];
  [v2 updateThumbnail];
}

- (void)dealloc
{
  [(CKShareParticipantArrayController *)self->_participantArrayController invalidate];
  v3.receiver = self;
  v3.super_class = _UIShareOverviewParticipantListController;
  [(_UIShareOverviewParticipantListController *)&v3 dealloc];
}

- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004140;
  v6[3] = &unk_10004CA08;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)showParticipantInfo:(id)a3
{
  v4 = a3;
  v9 = [[BRParticipantInfoViewController alloc] initWithParticipantContact:v4];

  [(BRParticipantInfoViewController *)v9 setDelegate:self];
  v5 = [(_UIShareOverviewParticipantListController *)self navigationController];
  [v5 pushViewController:v9 animated:1];

  v6 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v7 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v8 = [v7 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v8 animated:1];
}

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareOverviewController *)self share];
  v6 = [v5 participants];
  v7 = [v6 count];

  if (v7 > 2)
  {
    [(_UIShareOverviewController *)self setNavigationItemSpinner:1];
    v14 = [(_UIShareOverviewController *)self delegate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000046E0;
    v16[3] = &unk_10004CA58;
    v16[4] = self;
    v17 = v4;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000474C;
    v15[3] = &unk_10004CA80;
    v15[4] = self;
    [v14 shareViewController:self modifyShare:v16 completion:v15];
  }

  else
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v9 = [v8 localizedStringForKey:@"Remove “%@”?" value:@"Remove “%@”?" table:@"Localizable"];
    v10 = sub_1000044D4(v4);
    v11 = [NSString localizedStringWithFormat:v9, v10];

    v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v12 localizedStringForKey:@"Removing the only invited participant will stop sharing." value:@"Removing the only invited participant will stop sharing." table:@"Localizable"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004680;
    v18[3] = &unk_10004CA30;
    v18[4] = self;
    [(_UIShareOverviewParticipantListController *)self showSettingsAlertWithTitle:v11 message:v13 completion:v18];
  }
}

- (void)addPeople:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareOverviewController *)self delegate];
  [v5 turnShowAddPeopleOn:1];
  if ([v5 shareViewControllerIsFolderShare:self] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 shareViewController:self setFolderShareIsPrepared:1];
  }

  v6 = [_UIShareOverviewActionController alloc];
  v7 = [(_UIShareOverviewController *)self delegate];
  v8 = [(_UIShareOverviewActionController *)v6 initWithDelegate:v7];

  [(_UIShareOverviewActionController *)v8 updatePermissionOptions];
  v9 = [(_UIShareOverviewController *)self itemName];
  [(_UIShareOverviewActionController *)v8 setItemName:v9];

  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissAddPeople:"];
  [(_UIShareOverviewController *)v8 setCloseButton:v10];

  [(_UIShareOverviewParticipantListController *)self setAddPeopleViewController:v8];
  v11 = [[_UIPreferredContentSizeRelayingNavigationController alloc] initWithRootViewController:v8];
  v12 = [(_UIShareOverviewParticipantListController *)self navigationController];
  v13 = [v12 delegate];
  [v11 setDelegate:v13];

  [v11 setModalPresentationStyle:6];
  v14 = [(_UIShareOverviewParticipantListController *)self navigationController];
  [v14 presentViewController:v11 animated:1 completion:0];

  [(_UIShareOverviewParticipantListController *)self _updateOverrideTraitsForModallyPresentedAddPeopleController];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004A04;
  v15[3] = &unk_10004CAA8;
  objc_copyWeak(&v16, &location);
  [v11 setPreferredContentSizeDidChange:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)showSharedFolder:(id)a3
{
  v3 = [(_UIShareOverviewController *)self delegate];
  [v3 changeToTopLevelSharedFolderURL];
}

- (void)togglePrimarySwitch:(id)a3
{
  v4 = a3;
  v6 = [(_UIShareOverviewController *)self delegate];
  v5 = [v4 isOn];

  [v6 shareViewControllerDidTogglePrimarySwitch:v5];
}

- (void)toggleSecondarySwitch:(id)a3
{
  v4 = a3;
  v6 = [(_UIShareOverviewController *)self delegate];
  v5 = [v4 isOn];

  [v6 shareViewControllerDidToggleSecondarySwitch:v5];
}

- (void)_updateOverrideTraitsForModallyPresentedAddPeopleController
{
  v5 = [UITraitCollection _traitCollectionWithValue:&__kCFBooleanTrue forTraitNamed:@"_BRNeedsCancelNavigationButtonTrait"];
  v3 = [(_UIShareOverviewParticipantListController *)self presentedViewController];
  v4 = [(_UIShareOverviewParticipantListController *)self addPeopleViewController];
  [v3 setOverrideTraitCollection:v5 forChildViewController:v4];
}

- (void)_dismissAddPeople:(id)a3
{
  v4 = [(_UIShareOverviewController *)self delegate];
  [v4 turnShowAddPeopleOn:0];
  v5 = [(_UIShareOverviewParticipantListController *)self navigationController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004CF4;
  v6[3] = &unk_10004C920;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)stopSharing:(id)a3
{
  [(_UIShareOverviewController *)self setNavigationItemSpinner:1];
  v4 = [(_UIShareOverviewController *)self delegate];
  [v4 shareViewControllerStopSharing:self overrideAlert:0];

  v7 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v5 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v6 = [v5 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)leaveShare:(id)a3
{
  [(_UIShareOverviewController *)self setNavigationItemSpinner:1];
  v4 = [(_UIShareOverviewController *)self delegate];
  [v4 shareViewControllerLeaveShare:self];

  v7 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v5 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v6 = [v5 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)copyLink:(id)a3
{
  [(_UIShareOverviewController *)self setNavigationItemSpinner:1];
  v4 = [(_UIShareOverviewController *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004F58;
  v5[3] = &unk_10004CAD0;
  v5[4] = self;
  [v4 shareViewControllerCopyShareURL:self completion:v5];
}

- (id)_sections
{
  v3 = [(_UIShareOverviewController *)self delegate];
  v4 = [v3 viewControllerShare:self];
  v5 = +[NSMutableArray array];
  v6 = v5;
  if (!v4)
  {
    v11 = v5;
    goto LABEL_156;
  }

  v186 = v5;
  v7 = [v4 currentUserParticipant];
  v8 = [v4 owner];
  v9 = [v8 isEqual:v7];

  v184 = v9;
  v10 = (v9 & 1) != 0 || [v7 role] == 2;
  v197 = v10;
  v191 = v7;
  v190 = [v7 permission];
  [v3 shareViewControllerAllowOthersToInvite];
  v188 = [(_UIShareOverviewController *)self itemIsShareRoot];
  v12 = [v3 itemIsInsideFolderShare];
  v13 = [v3 shareViewControllerIsFolderShare:self];
  v14 = v13;
  v15 = &BRFormatPhoneNumber_ptr;
  v185 = v3;
  v200 = v4;
  v203 = self;
  v187 = v12;
  if (v12)
  {
    v16 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v17 = [v16 localizedStringForKey:@"SHARED_WITHIN_TEXT" value:@"Shared Folder: %@" table:@"Localizable"];
    v18 = [(_UIShareOverviewController *)self rootItemName];
    v183 = [NSString localizedStringWithFormat:v17, v18];
  }

  else
  {
    v183 = &stru_10004DE38;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  v19 = &stru_10004DE38;
  if (((v188 | v14) & 1) == 0)
  {
    v19 = @"Folder140pt";
  }

  v20 = v19;
  v21 = [v3 shareViewControllerThumbnail:v203];
  v22 = v21;
  if (v14)
  {
    v23 = [v3 shareViewControllerHeaderPrimaryImage];

    v22 = v23;
    if (!v23)
    {
      v24 = @"Folder140pt";
LABEL_16:
      v22 = [UIImage imageNamed:v24];
    }
  }

  else if (!v21)
  {
    v24 = @"DefaultThumbnail";
    goto LABEL_16;
  }

  v25 = [v3 shareViewControllerHeaderSecondaryImage];
  if (!v25)
  {
    if ([(__CFString *)v20 length])
    {
      v25 = [UIImage imageNamed:v20];
    }

    else
    {
      v25 = 0;
    }
  }

  v271[0] = @"hheight";
  v271[1] = @"fheight";
  v272[0] = &off_100050DD8;
  v272[1] = &off_100050DD8;
  v271[2] = @"items";
  v268[0] = @"title";
  v26 = [v3 itemName];
  v269[0] = v26;
  v269[1] = v183;
  v268[1] = @"detail";
  v268[2] = @"sharedByModifiedBy";
  v27 = [v3 sharedByModifiedByText];
  v269[2] = v27;
  v269[3] = @"header";
  v268[3] = @"celltype";
  v268[4] = @"shareElementImage";
  v269[4] = v22;
  v268[5] = @"shareElementBadge";
  v28 = v25;
  if (!v25)
  {
    v28 = +[NSNull null];
  }

  v269[5] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v269 forKeys:v268 count:6];
  v270 = v29;
  v30 = [NSArray arrayWithObjects:&v270 count:1];
  v272[2] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v272 forKeys:v271 count:3];

  if (!v25)
  {
  }

  [v186 addObject:v31];
  v3 = v185;
  v4 = v200;
  v15 = &BRFormatPhoneNumber_ptr;
LABEL_26:
  v202 = +[NSMutableArray array];
  v32 = [v4 publicPermission];
  v33 = [(BRShareSettings *)v203->_settings defaultPermission];
  v34 = [v3 shareViewControllerIsNotesOrRemindersOrDocSharing:v203];
  v209 = v32;
  if (v32 == 1)
  {
    v35 = v184;
  }

  else
  {
    v35 = 0;
  }

  v189 = v35;
  if (v34 && v33 == 3 && (v35 & 1) != 0 || [(BRShareSettings *)v203->_settings shouldShowMode])
  {
    v182 = 1;
  }

  else
  {
    v182 = [(BRShareSettings *)v203->_settings shouldShowPermissions];
  }

  v201 = [v3 shareViewControllerParticipantDetails];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  obj = [(_UIShareOverviewParticipantListController *)v203 modelSnapshot];
  v206 = [obj countByEnumeratingWithState:&v215 objects:v267 count:16];
  if (v206)
  {
    v199 = 0;
    v204 = *v216;
    while (1)
    {
      for (i = 0; i != v206; i = i + 1)
      {
        if (*v216 != v204)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v215 + 1) + 8 * i);
        v38 = [v37 participant];
        v39 = [v38 role] != 3 && objc_msgSend(v38, "role") != 2;
        if (v209 == 1 || v39 || [v38 acceptanceStatus] == 2)
        {
          v40 = sub_1000044D4(v37);
          if ([v40 length])
          {
            v41 = 1;
          }

          else
          {
            v42 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v43 = [v42 localizedStringForKey:@"Unknown participant" value:@"Unknown participant" table:@"Localizable"];

            v40 = v43;
            v41 = v189;
          }

          v208 = v41;
          if ([v38 acceptanceStatus] == 1)
          {
            v44 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v213 = [v44 localizedStringForKey:@"PARTICIPANT_STATUS_TEXT_WAITING" value:@"Invited" table:@"Localizable"];
          }

          else
          {
            v213 = 0;
          }

          if ([v38 permission] == 2 || objc_msgSend(v4, "publicPermission") == 2 && (objc_msgSend(v4, "owner"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v38, "isEqual:", v46), v46, (v47 & 1) == 0))
          {
            v45 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v212 = [v45 localizedStringForKey:@"PARTICIPANT_STATUS_TEXT_VIEW_ONLY" value:@"View only" table:@"Localizable"];
          }

          else
          {
            v212 = 0;
          }

          v48 = [v38 acceptanceStatus];
          v49 = &off_100050E08;
          if (v48 == 2)
          {
            v49 = &off_100050DF0;
          }

          v50 = v49;
          v51 = [v4 owner];
          v52 = [v38 isEqual:v51];

          if (v52)
          {
            v53 = v40;

            v54 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v55 = [v54 localizedStringForKey:@"PARTICIPANT_OWNER_TEXT" value:@"%@ (Owner)" table:@"Localizable"];
            v56 = [NSString localizedStringWithFormat:v55, v53];

            v50 = &off_100050E20;
            v199 = v53;
          }

          else if ([v38 isEqual:v191])
          {
            v57 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v58 = [v57 localizedStringForKey:@"PARTICIPANT_ME_TEXT" value:@"%@ (Me)" table:@"Localizable"];
            v56 = [NSString localizedStringWithFormat:v58, v40];

            v50 = &off_100050E38;
          }

          else
          {
            v56 = v40;
          }

          v211 = v40;
          if (v197)
          {
            v59 = (v209 == 1) & ~[v38 isCurrentUser] & (v187 ^ 1);
            if (v190 != 3)
            {
              v59 = 0;
            }

            v210 = v59;
          }

          else
          {
            v210 = 0;
          }

          v60 = objc_opt_new();
          v61 = [v38 userIdentity];
          v62 = [v61 userRecordID];
          v63 = [v62 recordName];
          v64 = [v201 objectForKeyedSubscript:v63];

          v65 = [v37 contact];
          [v60 setContact:v65];

          [v60 setTitle:v56];
          if (v213)
          {
            v66 = v213;
          }

          else
          {
            v66 = v212;
          }

          [v60 setSubtitle:v66];
          [v60 setGrayedOut:{objc_msgSend(v38, "acceptanceStatus") != 2}];
          v67 = [v64 participantColor];
          [v60 setParticipantColor:v67];

          if ([(_UIShareOverviewParticipantListController *)v203 _isOrgAdminParticipant:v38])
          {
            [v60 setIsOrgAdmin:1];
            v68 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v69 = [v68 localizedStringForKey:@"PARTICIPANT_ORG_ADMIN_TEXT" value:@"Your Organization" table:@"Localizable"];
            v70 = [NSString localizedStringWithFormat:v69, v211];
            [v60 setSubtitle:v70];

            v50 = &off_100050DD8;
            goto LABEL_76;
          }

          if (v208)
          {
            v265[0] = @"sortTitle";
            v265[1] = @"type";
            v266[0] = v56;
            v266[1] = @"action";
            v266[2] = off_100060088;
            v265[2] = @"celltype";
            v265[3] = @"action";
            v71 = NSStringFromSelector("showParticipantInfo:");
            v266[3] = v71;
            v266[4] = v37;
            v265[4] = @"param";
            v265[5] = @"value";
            v265[6] = @"prio";
            v266[5] = v60;
            v266[6] = v50;
            v72 = [NSDictionary dictionaryWithObjects:v266 forKeys:v265 count:7];
            v73 = [v72 mutableCopy];
          }

          else
          {
LABEL_76:
            v263[0] = @"sortTitle";
            v263[1] = @"type";
            v264[0] = v56;
            v264[1] = @"action";
            v263[2] = @"celltype";
            v263[3] = @"param";
            v264[2] = off_100060088;
            v264[3] = v37;
            v263[4] = @"value";
            v263[5] = @"prio";
            v264[4] = v60;
            v264[5] = v50;
            v71 = [NSDictionary dictionaryWithObjects:v264 forKeys:v263 count:6];
            v73 = [v71 mutableCopy];
          }

          if (v210)
          {
            v261 = @"remact";
            v74 = NSStringFromSelector("removeParticipant:");
            v262 = v74;
            v75 = [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
            [v73 addEntriesFromDictionary:v75];
          }

          [v202 addObject:v73];

          v4 = v200;
          v15 = &BRFormatPhoneNumber_ptr;
        }
      }

      v206 = [obj countByEnumeratingWithState:&v215 objects:v267 count:16];
      if (!v206)
      {
        goto LABEL_84;
      }
    }
  }

  v199 = 0;
LABEL_84:

  v76 = [NSSortDescriptor sortDescriptorWithKey:@"prio" ascending:1];
  v260[0] = v76;
  v77 = [NSSortDescriptor sortDescriptorWithKey:@"sortTitle" ascending:1];
  v260[1] = v77;
  v78 = [NSArray arrayWithObjects:v260 count:2];
  [v202 sortUsingDescriptors:v78];

  if (((v209 == 1) & v197 & v188) == 1 && v190 == 3)
  {
    v259[0] = @"action";
    v258[0] = @"type";
    v258[1] = @"action";
    v79 = NSStringFromSelector("addPeople:");
    v259[1] = v79;
    v259[2] = off_10005F840;
    v258[2] = @"celltype";
    v258[3] = @"value";
    v80 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v81 = [v80 localizedStringForKey:@"ADD_PEOPLE_ACTION_TEXT" value:@"Add People" table:@"Localizable"];
    v259[3] = v81;
    v82 = [NSDictionary dictionaryWithObjects:v259 forKeys:v258 count:4];
    [v202 addObject:v82];
  }

  if ([(BRShareSettings *)v203->_settings hasACL])
  {
    if ((v184 & v182 & v188) == 1)
    {
      v83 = [v185 shareViewControllerItemUTI:v203];
      v84 = [v83 isEqualToString:@"com.apple.reminders.list"];
      v85 = [v185 shareViewControllerCurrentParticipantsState];
      if ([(BRShareSettings *)v203->_settings defaultPermission]== 2)
      {
        v86 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v196 = [v86 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RO_SUMMARY_TEXT" value:@"Only people you invite can view." table:@"Localizable"];

        v87 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v88 = [v87 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RO_POST_SHARE_TEXT" value:@"Invited people can view only." table:@"Localizable"];
LABEL_115:
        v205 = v88;

        goto LABEL_116;
      }

      v96 = [(BRShareSettings *)v203->_settings defaultPermission];
      v97 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v98 = v97;
      if (v96 != 3)
      {
        v196 = [v97 localizedStringForKey:@"SETTINGS_DETAIL_ACL_MIXED_SUMMARY_TEXT" value:@"Only people you invite can open." table:@"Localizable"];

        v102 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v101 = [v102 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RW_MIXED_EDIT_N_ADD_POST_SHARE_TEXT" value:@"Some invited people can make changes and add others." table:@"Localizable"];

        if (v84)
        {
          v103 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v87 = v103;
          if (v85 == 2)
          {
            v104 = @"SETTINGS_DETAIL_REMINDERS_POST_SHARE_TEXT";
            v105 = @"Only people you invited have access.";
          }

          else
          {
            v104 = @"SETTINGS_DETAIL_REMINDERS_MIXED_ADD_POST_SHARE_TEXT";
            v105 = @"Some people you invited can add others.";
          }

          goto LABEL_114;
        }

        goto LABEL_112;
      }

      v196 = [v97 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RW_SUMMARY_TEXT" value:@"Only people you invite can make changes." table:@"Localizable"];

      v99 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v100 = v99;
      if (v85 == 1)
      {
        v101 = [v99 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RW_ADD_OTHERS_POST_SHARE_TEXT" value:@"Invited people can make changes and add others." table:@"Localizable"];
      }

      else
      {
        v101 = [v99 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RW_MIXED_ADD_POST_SHARE_TEXT" value:@"Some invited people can add others." table:@"Localizable"];

        if (v85 != 2)
        {
          goto LABEL_110;
        }

        v100 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v106 = [v100 localizedStringForKey:@"SETTINGS_DETAIL_ACL_RW_MIXED_NO_ADD_POST_SHARE_TEXT" value:@"Only people you invited can make changes." table:@"Localizable"];

        v101 = v106;
      }

LABEL_110:
      if (v84)
      {
        v103 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v87 = v103;
        v104 = @"SETTINGS_DETAIL_REMINDERS_ADD_OTHERS_POST_SHARE_TEXT";
        v105 = @"People you invited can add others.";
LABEL_114:
        v107 = [v103 localizedStringForKey:v104 value:v105 table:@"Localizable"];

        v88 = v107;
        goto LABEL_115;
      }

LABEL_112:
      v205 = v101;
      goto LABEL_116;
    }

    v83 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v93 = [v83 localizedStringForKey:@"SETTINGS_ONLY_OWNER_CAN_CHANGE" value:@"Error: don't expect this ONLY_OWNER_CAN_CHANGE to show." table:@"Localizable"];
    v196 = [NSString localizedStringWithFormat:v93, v199];

    v205 = 0;
  }

  else
  {
    v89 = [(BRShareSettings *)v203->_settings publicPermission];
    v90 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v83 = v90;
    if (v184)
    {
      if (v89 == 2)
      {
        v91 = @"SETTINGS_DETAIL_PUBLIC_RO_TEXT";
        v92 = @"Anyone with the link can view.";
      }

      else
      {
        v91 = @"SETTINGS_DETAIL_PUBLIC_RW_TEXT";
        v92 = @"Anyone with the link can make changes.";
      }

      v205 = [v90 localizedStringForKey:v91 value:v92 table:@"Localizable"];
      v196 = 0;
    }

    else
    {
      if (v89 == 2)
      {
        v94 = @"SETTINGS_DETAIL_PUBLIC_RO_TEXT";
        v95 = @"Anyone with the link can view.";
      }

      else
      {
        v94 = @"SETTINGS_DETAIL_PUBLIC_RW_TEXT";
        v95 = @"Anyone with the link can make changes.";
      }

      v196 = [v90 localizedStringForKey:v94 value:v95 table:@"Localizable"];
      v205 = 0;
    }
  }

LABEL_116:

  v256[0] = @"hheight";
  v256[1] = @"items";
  v257[0] = &off_100050DD8;
  v257[1] = v202;
  v256[2] = @"fheight";
  v257[2] = &off_100050DD8;
  v214 = [NSDictionary dictionaryWithObjects:v257 forKeys:v256 count:3];
  v254[0] = @"title";
  v108 = [v15[240] bundleWithIdentifier:?];
  v109 = [v108 localizedStringForKey:@"COPY_LINK_ACTION_TEXT" value:@"Copy Link" table:@"Localizable"];
  v255[0] = v109;
  v255[1] = @"action";
  v254[1] = @"type";
  v254[2] = @"action";
  v110 = NSStringFromSelector("copyLink:");
  v255[2] = v110;
  v255[3] = @"centered";
  v254[3] = @"celltype";
  v254[4] = @"accessibilityLabel";
  v111 = [v15[240] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v112 = [v111 localizedStringForKey:@"COPY_LINK_ACTION_ACCESSIBILITY_LABEL" value:@"Copy Link button" table:@"Localizable"];
  v255[4] = v112;
  v254[5] = @"accessibilityHint";
  v113 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v114 = [v113 localizedStringForKey:@"COPY_LINK_ACTION_ACCESSIBILITY_HINT" value:@"copy shared link to clipboard" table:@"Localizable"];
  v255[5] = v114;
  v207 = [NSDictionary dictionaryWithObjects:v255 forKeys:v254 count:6];

  v252[0] = @"title";
  v115 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v116 = [v115 localizedStringForKey:@"SEND_LINK_ACTION_TEXT" value:@"Send Link" table:@"Localizable"];
  v253[0] = v116;
  v253[1] = @"action";
  v252[1] = @"type";
  v252[2] = @"action";
  v117 = NSStringFromSelector("sendLink:");
  v252[3] = @"celltype";
  v253[2] = v117;
  v253[3] = @"centered";
  v198 = [NSDictionary dictionaryWithObjects:v253 forKeys:v252 count:4];

  v250[0] = @"title";
  v118 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v119 = [v118 localizedStringForKey:@"STOP_SHARING_ACTION_TEXT" value:@"Stop Sharing" table:@"Localizable"];
  v251[0] = v119;
  v251[1] = @"action";
  v250[1] = @"type";
  v250[2] = @"action";
  v120 = NSStringFromSelector("stopSharing:");
  v251[2] = v120;
  v251[3] = &__kCFBooleanTrue;
  v250[3] = @"destructive";
  v250[4] = @"celltype";
  v251[4] = @"centered";
  v195 = [NSDictionary dictionaryWithObjects:v251 forKeys:v250 count:5];

  [v186 addObject:v214];
  v3 = v185;
  v4 = v200;
  p_isa = &v203->super.super.super.super.isa;
  if (v187)
  {
    v122 = [(_UIShareOverviewParticipantListController *)v203 _documentsApplicationProxy];
    v123 = [v122 appState];
    v124 = [v123 isInstalled];

    if (v124)
    {
      v248[0] = @"title";
      v125 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v126 = [v125 localizedStringForKey:@"SHOW_FOLDER_ACTION_TEXT" value:@"Show Shared Folder" table:@"Localizable"];
      v249[0] = v126;
      v249[1] = @"action";
      v248[1] = @"type";
      v248[2] = @"action";
      v127 = NSStringFromSelector("showSharedFolder:");
      v248[3] = @"celltype";
      v249[2] = v127;
      v249[3] = @"centered";
      v128 = [NSDictionary dictionaryWithObjects:v249 forKeys:v248 count:4];

      if (v184)
      {
        v129 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v130 = [v129 localizedStringForKey:@"NON_ROOT_ITEM_FOLDER_INFORMATION_TEXT" value:@"Go to the folder’s share options to add people or change editing permissions." table:@"Localizable"];

        v131 = [v185 shareViewControllerItemUTI:v203];
        v132 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v133 = [v132 localizedStringForKey:@"NON_ROOT_ITEM_INFORMATION_TEXT" value:@"This item is in a shared folder. %@" table:@"Localizable"];
        v134 = _CDAdaptLocalizedStringForItemType();
        v135 = [NSString localizedStringWithFormat:v134, v130];

        v3 = v185;
        v247[0] = &off_100050E50;
        v246[0] = @"hheight";
        v246[1] = @"items";
        v245 = v128;
        v136 = [NSArray arrayWithObjects:&v245 count:1];
        v246[2] = @"footer";
        v247[1] = v136;
        v247[2] = v135;
        v137 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:3];
        [v186 addObject:v137];
      }

      else
      {
        v244[0] = &off_100050E50;
        v243[0] = @"hheight";
        v243[1] = @"items";
        v242 = v128;
        v130 = [NSArray arrayWithObjects:&v242 count:1];
        v243[2] = @"fheight";
        v244[1] = v130;
        v244[2] = &off_100050DD8;
        v131 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:3];
        [v186 addObject:v131];
      }

      p_isa = &v203->super.super.super.super.isa;
    }
  }

  v6 = v186;
  if (v201)
  {
    v194 = [v3 shareViewControllerPrimaryAuxilarySwitchTitle];
    obja = [v3 shareViewControllerSecondaryAuxilarySwitchTitle];
    [p_isa setShowParticipantEdits:{objc_msgSend(v3, "shareViewControllerPrimaryAuxiliarySwitchState")}];
    [p_isa setDoNotDisturb:{objc_msgSend(v3, "shareViewControllerSecondaryAuxiliarySwitchState")}];
    v240[0] = @"title";
    v240[1] = @"type";
    v241[0] = v194;
    v241[1] = @"toggle";
    v241[2] = @"showParticipantEdits";
    v240[2] = @"key";
    v240[3] = @"action";
    v138 = NSStringFromSelector("togglePrimarySwitch:");
    v241[3] = v138;
    v139 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:4];

    v238[0] = @"title";
    v238[1] = @"type";
    v239[0] = obja;
    v239[1] = @"toggle";
    v239[2] = @"doNotDisturb";
    v238[2] = @"key";
    v238[3] = @"action";
    v140 = NSStringFromSelector("toggleSecondarySwitch:");
    v239[3] = v140;
    v141 = [NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:4];

    v237[0] = &off_100050E50;
    v236[0] = @"hheight";
    v236[1] = @"items";
    v235[0] = v139;
    v235[1] = v141;
    v142 = [NSArray arrayWithObjects:v235 count:2];
    v236[2] = @"fheight";
    v237[1] = v142;
    v237[2] = &off_100050DD8;
    v143 = [NSDictionary dictionaryWithObjects:v237 forKeys:v236 count:3];

    [v186 addObject:v143];
    p_isa = &v203->super.super.super.super.isa;
  }

  v144 = v191;
  if (((v188 | v187) & 1) == 0)
  {
    goto LABEL_155;
  }

  if (v184)
  {
    if ((v182 & v188) == 1)
    {
      v145 = [p_isa settingsSectionWithText:v205];
      [v186 addObject:v145];
      if (v187)
      {
        v230[0] = &off_100050E50;
        v229[0] = @"hheight";
        v229[1] = @"items";
        v228 = v198;
        v146 = [NSArray arrayWithObjects:&v228 count:1];
        v229[2] = @"footer";
        v230[1] = v146;
        v230[2] = v196;
        v147 = v230;
        v148 = v229;
      }

      else
      {
        v234[0] = &off_100050E50;
        v233[0] = @"hheight";
        v233[1] = @"items";
        if (v209 == 1)
        {
          v232 = v195;
          v165 = &v232;
          v166 = 1;
        }

        else
        {
          v231[0] = v198;
          v231[1] = v195;
          v165 = v231;
          v166 = 2;
        }

        v146 = [NSArray arrayWithObjects:v165 count:v166];
        v233[2] = @"fheight";
        v234[1] = v146;
        v234[2] = &off_100050E50;
        v147 = v234;
        v148 = v233;
      }

      v149 = [NSDictionary dictionaryWithObjects:v147 forKeys:v148 count:3];

      [v186 addObject:v149];
      goto LABEL_154;
    }

    v149 = [v3 shareViewControllerItemUTI:p_isa];
    if (v187)
    {
      v154 = p_isa;
      v155 = [p_isa[7] hasACL];
      v156 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v157 = v156;
      if (v155)
      {
        v158 = @"SETTINGS_COPY_LINK_SUBFOLDERTITLE_PRIVATE";
        v159 = @"Only people added to the shared folder “%@” can use the link to access this item.";
      }

      else
      {
        v158 = @"SETTINGS_COPY_LINK_SUBFOLDERTITLE_PUBLIC";
        v159 = @"Only people in the shared folder “%@” can use the link to access this item.";
      }

      v170 = [v156 localizedStringForKey:v158 value:v159 table:@"Localizable"];
      v176 = _CDAdaptLocalizedStringForItemType();
      v177 = [v154 rootItemName];
      v145 = [NSString localizedStringWithFormat:v176, v177];
    }

    else
    {
      v157 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v170 = [v157 localizedStringForKey:@"SETTINGS_COPY_LINK_SUBTITLE" value:@"Only added people will have access." table:@"Localizable"];
      v145 = _CDAdaptLocalizedStringForItemType();
    }

    v227[0] = &off_100050E50;
    v226[0] = @"hheight";
    v226[1] = @"items";
    v225 = v207;
    v178 = [NSArray arrayWithObjects:&v225 count:1];
    v226[2] = @"footer";
    v227[1] = v178;
    v227[2] = v145;
    v179 = [NSDictionary dictionaryWithObjects:v227 forKeys:v226 count:3];
    [v186 addObject:v179];

    if (v187)
    {
      goto LABEL_154;
    }

    v224[0] = &off_100050DD8;
    v223[0] = @"hheight";
    v223[1] = @"items";
    v222 = v195;
    v172 = [NSArray arrayWithObjects:&v222 count:1];
    v223[2] = @"fheight";
    v224[1] = v172;
    v224[2] = &off_100050DD8;
    v173 = v224;
    v174 = v223;
  }

  else
  {
    v149 = [v3 shareViewControllerItemUTI:p_isa];
    if (v187)
    {
      v150 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v151 = v150;
      if (v209 == 1)
      {
        v152 = @"SETTINGS_COPY_LINK_SUBFOLDERTITLE_COLLAB_PRIVATE";
        v153 = @"Only people added to the shared folder “%@” will have access to this item.";
      }

      else
      {
        v152 = @"SETTINGS_COPY_LINK_SUBFOLDERTITLE_PUBLIC";
        v153 = @"Only people in the shared folder “%@” can use the link to access this item.";
      }

      v167 = [v150 localizedStringForKey:v152 value:v153 table:@"Localizable"];
      v168 = _CDAdaptLocalizedStringForItemType();
      v169 = [(_UIShareOverviewController *)v203 rootItemName];
      v145 = [NSString localizedStringWithFormat:v168, v169];

      v164 = v207;
    }

    else if (v209 == 1)
    {
      v160 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v161 = [v160 localizedStringForKey:@"SETTINGS_ONLY_PEOPLE_INVITED_CAN_ACCESS" value:@"Only people added to this item will have access." table:@"Localizable"];
      v162 = [v3 shareViewControllerItemUTI:p_isa];
      v163 = _CDAdaptLocalizedStringForItemType();
      v145 = [NSString localizedStringWithFormat:v163];

      v164 = v207;
    }

    else
    {
      v171 = v196;
      if (!v196)
      {
        v171 = v205;
      }

      v145 = v171;
      v164 = v198;
    }

    v221[0] = &off_100050E50;
    v220[0] = @"hheight";
    v220[1] = @"items";
    v219 = v164;
    v172 = [NSArray arrayWithObjects:&v219 count:1];
    v220[2] = @"footer";
    v221[1] = v172;
    v221[2] = v145;
    v173 = v221;
    v174 = v220;
  }

  v175 = [NSDictionary dictionaryWithObjects:v173 forKeys:v174 count:3];
  [v186 addObject:v175];

LABEL_154:
  v144 = v191;

LABEL_155:
  v180 = v186;

LABEL_156:

  return v6;
}

- (id)settingsSectionWithText:(id)a3
{
  v15[0] = &off_100050E50;
  v14[0] = @"hheight";
  v14[1] = @"items";
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI", @"title"];
  v5 = [v4 localizedStringForKey:@"SETTINGS_ACTION_TEXT" value:@"Share Options" table:@"Localizable"];
  v12[0] = v5;
  v12[1] = v3;
  v11[1] = @"detail";
  v11[2] = @"type";
  v12[2] = @"action";
  v12[3] = @"subtitle";
  v11[3] = @"celltype";
  v11[4] = @"action";
  v6 = NSStringFromSelector("showSettings:");
  v12[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v14[2] = @"fheight";
  v15[1] = v8;
  v15[2] = &off_100050DD8;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v9;
}

- (void)willNavigateFromViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIShareOverviewParticipantListController *)self updateSections];
  }

  v8 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v6 = [(_UIShareOverviewParticipantListController *)self staticTableView];
  v7 = [v6 indexPathForSelectedRow];
  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (void)showSettings:(id)a3
{
  v7 = objc_alloc_init(_UIShareInvitationSettingsController);
  [(_UIShareInvitationSettingsController *)v7 setDelegate:self];
  v4 = [(_UIShareOverviewParticipantListController *)self settings];
  [(_UIShareInvitationSettingsController *)v7 setSettings:v4];

  v5 = [(_UIShareOverviewController *)self delegate];
  [(_UIShareInvitationSettingsController *)v7 setOverviewControllerDelegate:v5];

  [(_UIShareInvitationSettingsController *)v7 setProxiedOverviewController:self];
  v6 = [(_UIShareOverviewParticipantListController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (void)showSettingsAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_UIShareOverviewParticipantListController *)self traitCollection];
  v12 = [v11 userInterfaceIdiom] != 1;

  v13 = [UIAlertController alertControllerWithTitle:v10 message:v9 preferredStyle:v12];

  v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = [v14 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100007B84;
  v26[3] = &unk_10004CB20;
  v16 = v8;
  v27 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:1 handler:v26];
  [v13 addAction:v17];

  v18 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v19 = [v18 localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007B98;
  v24[3] = &unk_10004CB20;
  v25 = v16;
  v20 = v16;
  v21 = [UIAlertAction actionWithTitle:v19 style:0 handler:v24];
  [v13 addAction:v21];

  v22 = [(_UIShareOverviewParticipantListController *)self navigationController];
  [v22 presentViewController:v13 animated:1 completion:0];
}

- (void)settingsControllerDidChange:(id)a3 changedAllowInviters:(BOOL)a4
{
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10000835C;
  v73[3] = &unk_10004CA08;
  v73[4] = self;
  v6 = a3;
  v74 = v6;
  v7 = objc_retainBlock(v73);
  v8 = [(_UIShareOverviewParticipantListController *)self settings];
  v9 = [v8 hasACL];
  v10 = [v6 settings];
  v11 = [v10 hasACL];

  if (v9 == v11)
  {
    v34 = [(_UIShareOverviewParticipantListController *)self settings];
    v35 = [v34 hasACL];

    v36 = cdui_default_log();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (!v35)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[INFO] public permissions changed", buf, 2u);
      }

      goto LABEL_36;
    }

    if (v37)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[INFO] default permissions or allowInviters changed, applying to all participants", buf, 2u);
    }

    if (a4)
    {
LABEL_36:
      (v7[2])(v7);
      goto LABEL_37;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = [(_UIShareOverviewController *)self share];
    v39 = [v38 participants];

    v40 = [v39 countByEnumeratingWithState:&v60 objects:v75 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v61;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v61 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v60 + 1) + 8 * i);
          if (([v44 isCurrentUser] & 1) == 0)
          {
            v45 = [v6 settings];
            [v44 setPermission:{objc_msgSend(v45, "defaultPermission")}];

            v46 = [v6 settings];
            v47 = [v46 defaultPermission];

            if (v47 == 2)
            {
              [v44 setRole:3];
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v60 objects:v75 count:16];
      }

      while (v41);
    }

LABEL_32:

    goto LABEL_36;
  }

  v12 = cdui_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] ACL setting changed", buf, 2u);
  }

  v13 = [v6 settings];
  v14 = [v13 hasACL];

  v15 = cdui_default_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (!v14)
  {
    if (v16)
    {
      v48 = [(_UIShareOverviewParticipantListController *)self settings];
      v49 = [v48 publicPermission];
      *buf = 134217984;
      v78 = v49;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[INFO] to off, copying permissions from public (%lu)", buf, 0xCu);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = [(_UIShareOverviewController *)self share];
    v39 = [v50 participants];

    v51 = [v39 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v65;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v65 != v53)
          {
            objc_enumerationMutation(v39);
          }

          v55 = *(*(&v64 + 1) + 8 * j);
          v56 = [v6 settings];
          [v55 setPermission:{objc_msgSend(v56, "publicPermission")}];
        }

        v52 = [v39 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v52);
    }

    goto LABEL_32;
  }

  v58 = v7;
  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[INFO] ...to on, asking permission", buf, 2u);
  }

  v17 = [(_UIShareOverviewParticipantListController *)self traitCollection];
  v18 = [v17 userInterfaceIdiom] != 1;

  v19 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v59 = [v19 localizedStringForKey:@"SETTINGS_SWITCH_TO_ACL_TITLE" value:@"Change to Invite Only?" table:@"Localizable"];

  v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v21 = [v20 localizedStringForKey:@"SETTINGS_SWITCH_TO_ACL_MESSAGE" value:@"Only you will have access to “%@” until you invite people." table:@"Localizable"];
  v22 = [(_UIShareOverviewController *)self delegate];
  v23 = [v22 shareViewControllerItemUTI:self];
  v24 = _CDAdaptLocalizedStringForItemType();
  v25 = [(_UIShareOverviewController *)self itemName];
  v57 = [NSString localizedStringWithFormat:v24, v25];

  v26 = [UIAlertController alertControllerWithTitle:v59 message:v57 preferredStyle:v18];
  v27 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v28 = [v27 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000084CC;
  v70[3] = &unk_10004CB70;
  v71 = v6;
  v72 = self;
  v29 = [UIAlertAction actionWithTitle:v28 style:1 handler:v70];
  [v26 addAction:v29];

  v30 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v31 = [v30 localizedStringForKey:@"Continue" value:@"Continue" table:@"Localizable"];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100008558;
  v68[3] = &unk_10004CB20;
  v7 = v58;
  v69 = v58;
  v32 = [UIAlertAction actionWithTitle:v31 style:0 handler:v68];
  [v26 addAction:v32];

  v33 = [(_UIShareOverviewParticipantListController *)self navigationController];
  [v33 presentViewController:v26 animated:1 completion:0];

LABEL_37:
}

- (id)viewControllerShare:(id)a3
{
  v4 = [(_UIShareOverviewController *)self delegate];
  v5 = [v4 viewControllerShare:self];

  return v5;
}

- (id)viewControllerItemURL:(id)a3
{
  v4 = [(_UIShareOverviewController *)self delegate];
  v5 = [v4 viewControllerItemURL:self];

  return v5;
}

- (void)participantInfoViewControllerDidChangeParticipant:(id)a3
{
  v4 = a3;
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 contact];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] Saving share for modified participant %@", buf, 0xCu);
  }

  [(_UIShareOverviewController *)self setNavigationItemSpinner:1];
  v7 = [(_UIShareOverviewController *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000087DC;
  v9[3] = &unk_10004CC00;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 shareViewController:self modifyShare:&stru_10004CBB0 completion:v9];
}

- (void)participantInfoViewControllerLeaveShare:(id)a3
{
  [(_UIShareOverviewParticipantListController *)self leaveShare:0];
  v5 = [(_UIShareOverviewParticipantListController *)self navigationController];
  v4 = [v5 popToViewController:self animated:1];
}

- (void)participantInfoViewControllerRemoveParticipant:(id)a3
{
  v4 = [a3 contact];
  [(_UIShareOverviewParticipantListController *)self removeParticipant:v4];

  v6 = [(_UIShareOverviewParticipantListController *)self navigationController];
  v5 = [v6 popToViewController:self animated:1];
}

- (unint64_t)participantInfoViewControllerAllowedPermissions:(id)a3
{
  v4 = [(_UIShareOverviewController *)self delegate];
  v5 = [v4 shareViewControllerAllowedPermissions:self];

  return v5;
}

- (_UIShareOverviewActionController)addPeopleViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_addPeopleViewController);

  return WeakRetained;
}

@end