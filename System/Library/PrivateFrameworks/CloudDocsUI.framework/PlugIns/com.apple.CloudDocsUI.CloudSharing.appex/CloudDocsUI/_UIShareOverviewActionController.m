@interface _UIShareOverviewActionController
- (BOOL)isHomeroomID:(id)a3;
- (BOOL)shareActivityControllerShouldAddParticipants:(id)a3;
- (BOOL)shareActivityControllerShouldPresentActivity:(id)a3;
- (_UIShareOverviewActionController)initWithDelegate:(id)a3;
- (id)_ownerLabelTextForName:(id)a3 displayHandle:(id)a4;
- (id)_setupProgressView;
- (id)activityViewControllerOperation:(id)a3;
- (id)addPeopleTitleWithDelegate:(id)a3 isInitial:(BOOL)a4;
- (int)popoverPresentationMode;
- (void)_updateInfo;
- (void)_updateSubviewsForNewGeometry;
- (void)scrollViewDidScroll:(id)a3;
- (void)setItemName:(id)a3;
- (void)settingsControllerDidChange:(id)a3 changedAllowInviters:(BOOL)a4;
- (void)shareActivityController:(id)a3 prepareActivityPresentation:(id)a4 completion:(id)a5;
- (void)shareActivityController:(id)a3 prepareForActivity:(id)a4 completion:(id)a5;
- (void)shareDidChange;
- (void)shareViewController:(id)a3 addParticipants:(id)a4 activityType:(id)a5 completion:(id)a6;
- (void)showShareSettings:(id)a3;
- (void)updatePermissionOptions;
- (void)updatePreferredContentSize:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)waitForShareCreationWithActivityType:(id)a3 progressView:(id)a4 completion:(id)a5;
- (void)willNavigateFromViewController:(id)a3;
@end

@implementation _UIShareOverviewActionController

- (_UIShareOverviewActionController)initWithDelegate:(id)a3
{
  v155.receiver = self;
  v155.super_class = _UIShareOverviewActionController;
  v146 = a3;
  v3 = [(_UIShareOverviewController *)&v155 initWithDelegate:?];
  if (v3)
  {
    v145 = objc_opt_new();
    [v145 setParentViewController:v3];
    [(_UIShareOverviewActionController *)v3 setView:v145];
    v4 = +[UIColor systemGroupedBackgroundColor];
    v5 = [(_UIShareOverviewActionController *)v3 view];
    [v5 setBackgroundColor:v4];

    v149 = objc_opt_new();
    v148 = objc_alloc_init(UIScrollView);
    [v148 setClipsToBounds:0];
    [v148 setAlwaysBounceVertical:0];
    [v148 setShowsVerticalScrollIndicator:0];
    [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v148 setDelegate:v3];
    [(_UIShareOverviewActionController *)v3 setScrollView:v148];
    v6 = [v148 topAnchor];
    v7 = [(_UIShareOverviewActionController *)v3 view];
    v8 = [v7 safeAreaLayoutGuide];
    v9 = [v8 topAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];
    [v149 addObject:v10];

    v11 = [v148 trailingAnchor];
    v12 = [(_UIShareOverviewActionController *)v3 view];
    v13 = [v12 safeAreaLayoutGuide];
    v14 = [v13 trailingAnchor];
    v15 = [v11 constraintEqualToAnchor:v14];
    [v149 addObject:v15];

    v16 = [v148 leadingAnchor];
    v17 = [(_UIShareOverviewActionController *)v3 view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 leadingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19];
    [v149 addObject:v20];

    v21 = [v148 bottomAnchor];
    v22 = [(_UIShareOverviewActionController *)v3 view];
    v23 = [v22 safeAreaLayoutGuide];
    v24 = [v23 bottomAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    [v149 addObject:v25];

    v26 = [(_UIShareOverviewActionController *)v3 view];
    [v26 addSubview:v148];

    v147 = objc_alloc_init(UIStackView);
    [v147 setAxis:1];
    [v147 setDistribution:0];
    [v147 setAlignment:3];
    [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v147 setLayoutMarginsRelativeArrangement:1];
    LODWORD(v27) = 1148846080;
    [v147 setContentCompressionResistancePriority:1 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [v147 setContentHuggingPriority:1 forAxis:v28];
    [v148 addSubview:v147];
    v29 = [v147 topAnchor];
    v30 = [v148 contentLayoutGuide];
    v31 = [v30 topAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v149 addObject:v32];

    v33 = [v147 trailingAnchor];
    v34 = [v148 contentLayoutGuide];
    v35 = [v34 trailingAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v149 addObject:v36];

    v37 = [v147 leadingAnchor];
    v38 = [v148 contentLayoutGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v149 addObject:v40];

    v41 = [v147 bottomAnchor];
    v42 = [v148 contentLayoutGuide];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    [v149 addObject:v44];

    v45 = [v148 contentLayoutGuide];
    v46 = [v45 widthAnchor];
    v47 = [v148 frameLayoutGuide];
    v48 = [v47 widthAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [v149 addObject:v49];

    [(_UIShareOverviewActionController *)v3 setVContainer:v147];
    v50 = objc_opt_new();
    infoView = v3->_infoView;
    v3->_infoView = v50;

    [(BRShareDocumentInfoView *)v3->_infoView setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [(BRShareDocumentInfoView *)v3->_infoView leadingAnchor];
    v53 = [(_UIShareOverviewActionController *)v3 vContainer];
    v54 = [v53 leadingAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
    [v149 addObject:v55];

    v56 = [(BRShareDocumentInfoView *)v3->_infoView trailingAnchor];
    v57 = [(_UIShareOverviewActionController *)v3 vContainer];
    v58 = [v57 trailingAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    [v149 addObject:v59];

    v60 = [v146 shareViewControllerIsInitialShare:v3];
    v61 = [(_UIShareOverviewController *)v3 share];
    v62 = [v61 publicPermission];

    if (v60)
    {
      v63 = [(_UIShareOverviewActionController *)v3 addPeopleTitleWithDelegate:v146 isInitial:1];
      v64 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
      [v64 setText:v63];

      v65 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v66 = [v65 localizedStringForKey:@"SHARE_INITIAL_INFO_LABEL" value:@"Add people to this iCloud Drive file and everyone will see the latest changes." table:@"Localizable"];
      v67 = [v146 shareViewControllerItemUTI:v3];
      v68 = _CDAdaptLocalizedStringForItemType();
      v69 = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
      [v69 setText:v68];
    }

    else
    {
      if (v62 == 1)
      {
        v70 = [(_UIShareOverviewActionController *)v3 addPeopleTitleWithDelegate:v146 isInitial:0];
        v71 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
        [v71 setText:v70];
      }

      else
      {
        v70 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v71 = [v70 localizedStringForKey:@"SHARE_RESEND_PUBLIC_TITLE" value:@"Send Link" table:@"Localizable"];
        v72 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
        [v72 setText:v71];
      }

      v65 = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
      [v65 setText:&stru_10004DE38];
    }

    v73 = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
    [v73 setHidden:v60 ^ 1];

    v74 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
    v75 = [v74 text];
    v76 = [(_UIShareOverviewActionController *)v3 navigationItem];
    [v76 setBackButtonTitle:v75];

    [v147 addArrangedSubview:v3->_infoView];
    v77 = [(_UIShareOverviewController *)v3 itemURL];
    if (v77)
    {
      v78 = v153;
      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_1000259C0;
      v153[3] = &unk_10004D7B0;
      v153[4] = v3;
      BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
    }

    else
    {
      v78 = v154;
      v154[0] = _NSConcreteStackBlock;
      v154[1] = 3221225472;
      v154[2] = sub_1000258F4;
      v154[3] = &unk_10004D788;
      v154[4] = v3;
      BRSharingCopyCurrentUserNameAndDisplayHandle();
    }

    BRTelemetryReportAddPeopleDisplayed();
    v79 = objc_opt_new();
    v80 = [(UIView *)v79 leadingAnchor];
    v81 = [(_UIShareOverviewActionController *)v3 view];
    v82 = [v81 leadingAnchor];
    v83 = [v80 constraintEqualToAnchor:v82];
    [v149 addObject:v83];

    v84 = [(UIView *)v79 trailingAnchor];
    v85 = [(_UIShareOverviewActionController *)v3 view];
    v86 = [v85 trailingAnchor];
    v87 = [v84 constraintEqualToAnchor:v86];
    [v149 addObject:v87];

    [v147 addArrangedSubview:v79];
    transportRegionTopSeparator = v3->_transportRegionTopSeparator;
    v3->_transportRegionTopSeparator = v79;

    v143 = objc_alloc_init(BRShareCopyLinkActivity);
    v89 = [_BRShareOverviewActivityViewController alloc];
    v159 = v3;
    v90 = [NSArray arrayWithObjects:&v159 count:1];
    v158 = v143;
    v91 = [NSArray arrayWithObjects:&v158 count:1];
    v92 = [(_BRShareOverviewActivityViewController *)v89 initWithActivityItems:v90 applicationActivities:v91];

    [(_BRShareOverviewActivityViewController *)v92 setAllowsEmbedding:1];
    [(_BRShareOverviewActivityViewController *)v92 setDelegate:v3];
    [(_BRShareOverviewActivityViewController *)v92 setExcludedActivityCategories:1];
    v157[0] = UIActivityTypeAirDrop;
    v157[1] = UIActivityTypeAddToReadingList;
    v157[2] = UIActivityTypeCreateReminder;
    v157[3] = UIActivityTypeSaveToNotes;
    v93 = [NSArray arrayWithObjects:v157 count:4];
    [(_BRShareOverviewActivityViewController *)v92 setExcludedActivityTypes:v93];

    objc_initWeak(&location, v3);
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_100025B18;
    v150[3] = &unk_10004D7D8;
    objc_copyWeak(&v151, &location);
    [(_BRShareOverviewActivityViewController *)v92 setCompletionWithItemsHandler:v150];
    [(_UIShareOverviewActionController *)v3 setEmbeddedActivityViewController:v92];
    [(_BRShareOverviewActivityViewController *)v92 beginAppearanceTransition:1 animated:0];
    [(_UIShareOverviewActionController *)v3 addChildViewController:v92];
    LODWORD(v93) = [v146 shareViewControllerIsFolderShare:v3];
    v94 = [v146 shareViewControllerFolderShareIsPrepared:v3];
    v95 = [BRTransportRegionView alloc];
    v96 = [(_BRShareOverviewActivityViewController *)v92 view];
    v97 = [(BRTransportRegionView *)v95 initWithTransportView:v96];
    transportRegion = v3->_transportRegion;
    v3->_transportRegion = v97;

    if (v93)
    {
      [(BRTransportRegionView *)v3->_transportRegion setIsPreparingForFolderSharing:v94 ^ 1];
    }

    [v147 addArrangedSubview:{v3->_transportRegion, v143}];
    [(_BRShareOverviewActivityViewController *)v92 didMoveToParentViewController:v3];
    v99 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
    v100 = [UITraitCollection traitCollectionWithVerticalSizeClass:1];
    v156[0] = v99;
    v156[1] = v100;
    v101 = [NSArray arrayWithObjects:v156 count:2];
    v102 = [UITraitCollection traitCollectionWithTraitsFromCollections:v101];

    [(_UIShareOverviewActionController *)v3 setOverrideTraitCollection:v102 forChildViewController:v92];
    [(_BRShareOverviewActivityViewController *)v92 endAppearanceTransition];
    [(BRTransportRegionView *)v3->_transportRegion setTranslatesAutoresizingMaskIntoConstraints:0];
    v103 = [(BRTransportRegionView *)v3->_transportRegion leadingAnchor];
    v104 = [(_UIShareOverviewActionController *)v3 vContainer];
    v105 = [v104 leadingAnchor];
    v106 = [v103 constraintEqualToAnchor:v105];
    [v149 addObject:v106];

    v107 = [(BRTransportRegionView *)v3->_transportRegion trailingAnchor];
    v108 = [(_UIShareOverviewActionController *)v3 vContainer];
    v109 = [v108 trailingAnchor];
    v110 = [v107 constraintEqualToAnchor:v109];
    [v149 addObject:v110];

    objc_destroyWeak(&v151);
    objc_destroyWeak(&location);

    v111 = objc_opt_new();
    v112 = [(UIView *)v111 leadingAnchor];
    v113 = [(_UIShareOverviewActionController *)v3 view];
    v114 = [v113 leadingAnchor];
    v115 = [v112 constraintEqualToAnchor:v114];
    [v149 addObject:v115];

    v116 = [(UIView *)v111 trailingAnchor];
    v117 = [(_UIShareOverviewActionController *)v3 view];
    v118 = [v117 trailingAnchor];
    v119 = [v116 constraintEqualToAnchor:v118];
    [v149 addObject:v119];

    [v147 addArrangedSubview:v111];
    transportRegionBottomSeparator = v3->_transportRegionBottomSeparator;
    v3->_transportRegionBottomSeparator = v111;

    v121 = objc_alloc_init(BRShareSettingsButton);
    [(BRShareSettingsButton *)v121 addTarget:v3 action:"showShareSettings:" forControlEvents:64];
    [(BRShareSettingsButton *)v121 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v147 addArrangedSubview:v121];
    v122 = [(BRShareSettingsButton *)v121 trailingAnchor];
    v123 = [(_UIShareOverviewActionController *)v3 view];
    v124 = [v123 trailingAnchor];
    v125 = [v122 constraintEqualToAnchor:v124];
    [v149 addObject:v125];

    v126 = [(BRShareSettingsButton *)v121 leadingAnchor];
    v127 = [(_UIShareOverviewActionController *)v3 view];
    v128 = [v127 leadingAnchor];
    v129 = [v126 constraintEqualToAnchor:v128];
    [v149 addObject:v129];

    v130 = [(BRShareSettingsButton *)v121 hContainer];
    v131 = [v130 trailingAnchor];
    v132 = [(_UIShareOverviewActionController *)v3 vContainer];
    v133 = [v132 trailingAnchor];
    v134 = [v131 constraintEqualToAnchor:v133];
    [v149 addObject:v134];

    v135 = [(BRShareSettingsButton *)v121 hContainer];
    v136 = [v135 leadingAnchor];
    v137 = [(_UIShareOverviewActionController *)v3 vContainer];
    v138 = [v137 leadingAnchor];
    v139 = [v136 constraintEqualToAnchor:v138];
    [v149 addObject:v139];

    shareSettingsButton = v3->_shareSettingsButton;
    v3->_shareSettingsButton = v121;

    v3->_lastPermissionOptions = -1;
    [(_UIShareOverviewActionController *)v3 updatePermissionOptions];
    v141 = [v146 shareViewControllerCurrentParticipantsState];
    if ([v146 shareViewControllerAllowOthersToInvite] != v141 < 2)
    {
      [v146 shareViewControllerSetAllowOthersToInvite:v141 < 2];
    }

    [NSLayoutConstraint activateConstraints:v149];
  }

  return v3;
}

- (id)addPeopleTitleWithDelegate:(id)a3 isInitial:(BOOL)a4
{
  v6 = a3;
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_INITIAL_TITLE" value:@"Add People" table:@"Localizable"];

  if (a4)
  {
    v9 = [v6 shareViewControllerItemUTI:self];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = [v10 localizedStringForKey:@"SHARE_INITIAL_TITLE" value:@"Add People" table:@"Localizable"];
    v12 = _CDAdaptLocalizedStringForItemType();

    v13 = [v6 shareViewControllerIsDocumentShare:self];
    if (([v6 shareViewControllerIsFolderShare:self] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.notes.folder"))
    {
      v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v15 = v14;
      v16 = @"SHARE_INITIAL_TITLE_FOLDER";
      v17 = @"Share Folder";
    }

    else if (v13)
    {
      v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v15 = v14;
      v16 = @"SHARE_INITIAL_TITLE_FILE";
      v17 = @"Share File";
    }

    else
    {
      if ([v9 isEqualToString:@"com.apple.notes.note"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.reminders.list"))
      {
        goto LABEL_6;
      }

      v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v15 = v14;
      v16 = @"SHARE_INITIAL_TITLE";
      v17 = @"Add People";
    }

    v18 = [v14 localizedStringForKey:v16 value:v17 table:@"Localizable"];

    v12 = v18;
LABEL_6:
    v19 = v12;

    goto LABEL_8;
  }

  v19 = v8;
LABEL_8:

  return v19;
}

- (void)viewWillLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = _UIShareOverviewActionController;
  [(_UIShareOverviewActionController *)&v25 viewWillLayoutSubviews];
  v3 = [(_UIShareOverviewActionController *)self view];
  [v3 frame];
  v5 = v4;
  [(_UIShareOverviewActionController *)self preferredContentSize];
  v7 = v6;
  v8 = v5 < v6;

  v9 = [(_UIShareOverviewActionController *)self infoView];
  [v9 setCompactMode:v8];

  v10 = [(_UIShareOverviewActionController *)self transportRegion];
  [v10 setCompactMode:v8];

  v11 = [(_UIShareOverviewActionController *)self vContainer];
  v12 = v11;
  infoView = self->_infoView;
  if (v5 >= v7)
  {
    [v11 setCustomSpacing:infoView afterView:23.0];

    v24 = [(_UIShareOverviewActionController *)self vContainer];
    [v24 setCustomSpacing:self->_transportRegionTopSeparator afterView:23.0];

    v18 = [(_UIShareOverviewActionController *)self vContainer];
    v19 = v18;
    top = 0.0;
    v21 = 0.0;
    v22 = 16.0;
    v23 = 0.0;
  }

  else
  {
    [v11 setCustomSpacing:infoView afterView:11.0];

    v14 = [(_UIShareOverviewActionController *)self vContainer];
    [v14 setCustomSpacing:self->_transportRegionTopSeparator afterView:11.0];

    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    v18 = [(_UIShareOverviewActionController *)self vContainer];
    v19 = v18;
    top = NSDirectionalEdgeInsetsZero.top;
    v21 = leading;
    v22 = bottom;
    v23 = trailing;
  }

  [v18 setDirectionalLayoutMargins:{top, v21, v22, v23}];
}

- (void)_updateSubviewsForNewGeometry
{
  infoView = self->_infoView;
  v14[0] = self->_scrollView;
  v14[1] = infoView;
  transportRegion = self->_transportRegion;
  shareSettingsButton = self->_shareSettingsButton;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14[2] = transportRegion;
  v14[3] = shareSettingsButton;
  v5 = [NSArray arrayWithObjects:v14 count:4, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setNeedsUpdateConstraints];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateInfo
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v45 = [(_UIShareOverviewController *)self delegate];
  v3 = [v45 shareViewControllerAllowOthersToInvite];
  v4 = [(_UIShareOverviewController *)self share];
  v5 = [v4 currentUserParticipant];
  if (v4 && ([v4 owner], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v5), v6, (v7 & 1) == 0))
  {
    v8 = 1;
  }

  else
  {
    if ([(BRShareSettings *)self->_settings hasACL])
    {
      v8 = 0;
      v9 = [(BRShareSettings *)self->_settings defaultPermission]!= 3;
      goto LABEL_8;
    }

    v8 = 0;
  }

  v9 = 1;
LABEL_8:
  if ([(BRShareSettings *)self->_settings shouldShowMode])
  {
    v10 = 0;
  }

  else
  {
    v10 = ![(BRShareSettings *)self->_settings shouldShowPermissions]&& v9;
  }

  [(BRShareSettingsButton *)self->_shareSettingsButton setHidden:v8 | v10];
  v11 = [v45 shareViewControllerItemUTI:self];
  v12 = [v11 isEqualToString:@"com.apple.reminders.list"];
  v13 = [v45 shareViewControllerIsInitialShare:self];
  v14 = [(BRShareSettings *)self->_settings hasACL];
  settings = self->_settings;
  if (!v13)
  {
    if (v14)
    {
      if ([(BRShareSettings *)settings defaultPermission]!= 3)
      {
        if ([(BRShareSettings *)self->_settings defaultPermission]!= 2)
        {
          goto LABEL_42;
        }

        v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v26 = v25;
        v27 = @"SETTINGS_DETAIL_ACL_RO_SUMMARY_TEXT";
        v28 = @"Only people you invite can view.";
        goto LABEL_41;
      }

      v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = v20;
      if (v3)
      {
        v22 = @"SETTINGS_DETAIL_ACL_RW_ADD_OTHERS_SUMMARY_TEXT";
        v23 = @"People you invite can make changes and add others.";
      }

      else
      {
        v22 = @"SETTINGS_DETAIL_ACL_RW_SUMMARY_TEXT";
        v23 = @"Only people you invite can make changes.";
      }

      v31 = [v20 localizedStringForKey:v22 value:v23 table:@"Localizable"];
      v32 = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
      [v32 setText:v31];

      if (v3)
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_42;
        }

        v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v26 = v25;
        v27 = @"SETTINGS_DETAIL_ADD_OTHERS_REMINDERS_SUMMARY_TEXT";
        goto LABEL_35;
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_42;
      }

      v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v26 = v25;
      v27 = @"SETTINGS_DETAIL_REMINDERS_SUMMARY_TEXT";
LABEL_40:
      v28 = @"Only people you invite have access.";
      goto LABEL_41;
    }

LABEL_20:
    v24 = [(BRShareSettings *)settings publicPermission];
    v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = v25;
    if (v24 == 3)
    {
      v27 = @"SETTINGS_DETAIL_PUBLIC_RW_TEXT";
      v28 = @"Anyone with the link can make changes.";
    }

    else
    {
      v27 = @"SETTINGS_DETAIL_PUBLIC_RO_TEXT";
      v28 = @"Anyone with the link can view.";
    }

    goto LABEL_41;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  if ([(BRShareSettings *)settings defaultPermission]!= 3)
  {
    if ([(BRShareSettings *)self->_settings defaultPermission]!= 2)
    {
      goto LABEL_42;
    }

    v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = v25;
    v27 = @"SETTINGS_DETAIL_ACL_RO_TEXT";
    v28 = @"People you invite can view.";
    goto LABEL_41;
  }

  v16 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v17 = v16;
  if (v3)
  {
    v18 = @"SETTINGS_DETAIL_ACL_RW_ADD_OTHERS_TEXT";
    v19 = @"People you invite can make changes and add others.";
  }

  else
  {
    v18 = @"SETTINGS_DETAIL_ACL_RW_TEXT";
    v19 = @"People you invite can make changes.";
  }

  v29 = [v16 localizedStringForKey:v18 value:v19 table:@"Localizable"];
  v30 = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
  [v30 setText:v29];

  if (!v3)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_42;
    }

    v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = v25;
    v27 = @"SETTINGS_DETAIL_REMINDERS_TEXT";
    goto LABEL_40;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_42;
  }

  v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v26 = v25;
  v27 = @"SETTINGS_DETAIL_REMINDERS_ADD_OTHERS_TEXT";
LABEL_35:
  v28 = @"People you invite can add others.";
LABEL_41:
  v33 = [v25 localizedStringForKey:v27 value:v28 table:@"Localizable"];
  v34 = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
  [v34 setText:v33];

LABEL_42:
  v35 = [v45 shareViewControllerIsFolderShare:self];
  v36 = [v45 shareViewControllerThumbnail:self];
  v37 = v36;
  if (v35)
  {
    v38 = [UIImage imageNamed:@"Folder140pt"];

    v37 = v38;
  }

  else if (!v36)
  {
    v37 = [UIImage imageNamed:@"DefaultThumbnail"];
  }

  v39 = [(_UIShareOverviewController *)self itemName];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = @" ";
  }

  v42 = [(BRShareDocumentInfoView *)self->_infoView itemTitleLabel];
  [v42 setText:v41];

  v43 = [(BRShareDocumentInfoView *)self->_infoView thumbnailView];
  [v43 setImage:v37];

  v44 = [(_UIShareOverviewActionController *)self traitCollection];
  [(_UIShareOverviewActionController *)self updatePreferredContentSize:v44];
}

- (void)setItemName:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIShareOverviewActionController;
  [(_UIShareOverviewController *)&v4 setItemName:a3];
  [(_UIShareOverviewActionController *)self _updateInfo];
}

- (id)_ownerLabelTextForName:(id)a3 displayHandle:(id)a4
{
  v5 = a4;
  v6 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:a3 style:0 options:0];
  v7 = +[UIFontMetrics defaultMetrics];
  v8 = [UIFont systemFontOfSize:12.0];
  v9 = [v7 scaledFontForFont:v8];

  v10 = [NSMutableAttributedString alloc];
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_INVITE_SHARE_AS_OWNER_TEXT" value:@"%@ (%@)" table:@"Localizable"];
  v13 = [NSString localizedStringWithFormat:v12, v6, v5];

  v18[0] = NSFontAttributeName;
  v18[1] = NSForegroundColorAttributeName;
  v19[0] = v9;
  v14 = +[UIColor secondaryLabelColor];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v10 initWithString:v13 attributes:v15];

  return v16;
}

- (void)updatePreferredContentSize:(id)a3
{
  v4 = [a3 verticalSizeClass] == 1;
  v5 = [(_UIShareOverviewActionController *)self infoView];
  v6 = [v5 infoTextLabel];
  [v6 setHidden:v4];

  v8 = [(_UIShareOverviewActionController *)self infoView];
  v7 = [v8 thumbnailView];
  [v7 setHidden:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _UIShareOverviewActionController;
  v7 = a4;
  [(_UIShareOverviewActionController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026B18;
  v8[3] = &unk_10004D800;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10004D840];
}

- (void)shareDidChange
{
  v3 = cdui_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    settings = self->_settings;
    v7 = 138412290;
    v8 = settings;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] got a new share, applying settings (%@) to share", &v7, 0xCu);
  }

  v5 = [(_UIShareOverviewActionController *)self settings];
  v6 = [(_UIShareOverviewController *)self share];
  [v5 applyToShare:v6];
}

- (void)updatePermissionOptions
{
  v3 = [(_UIShareOverviewController *)self delegate];
  v4 = [(_UIShareOverviewController *)self share];
  v5 = [v3 shareViewControllerAllowedPermissions:self];
  v6 = v5;
  if (v5 == -1 || v5 != self->_lastPermissionOptions)
  {
    if ([v3 shareViewControllerIsInitialShare:self])
    {
      v7 = [[BRShareSettings alloc] initWithPermissions:v6];
      settings = self->_settings;
      self->_settings = v7;

      self->_lastPermissionOptions = v6;
      v9 = cdui_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10002D4A0(&self->_settings);
      }

      v10 = [(_UIShareOverviewActionController *)self settings];
      v11 = [(_UIShareOverviewController *)self share];
      [v10 applyToShare:v11];
    }

    else
    {
      if ([v4 publicPermission] == 1)
      {
        v12 = v6 | 2;
        v13 = [[BRShareSettings alloc] initWithShare:v4 permissions:v12];
        v14 = self->_settings;
        self->_settings = v13;

        self->_lastPermissionOptions = v12;
        if (![(BRShareSettings *)self->_settings defaultPermission])
        {
          [(BRShareSettings *)self->_settings setDefaultPermission:3];
        }

        v15 = cdui_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_10002D414(&self->_settings);
        }
      }

      else
      {
        if ([v4 publicPermission] == 2)
        {
          v16 = 5;
        }

        else
        {
          v16 = 9;
        }

        v17 = [[BRShareSettings alloc] initWithShare:v4 permissions:v16];
        v18 = self->_settings;
        self->_settings = v17;

        self->_lastPermissionOptions = v16;
        v15 = cdui_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_10002D388(&self->_settings);
        }
      }

      [(BRShareSettings *)self->_settings setShouldHideCopyLink:1];
    }

    [(_UIShareOverviewActionController *)self _updateInfo];
  }
}

- (id)_setupProgressView
{
  [(BRShareSettingsButton *)self->_shareSettingsButton size];
  v4 = v3;
  [(BRTransportRegionView *)self->_transportRegion size];
  v6 = v4 + v5;
  [(BRShareSettingsButton *)self->_shareSettingsButton setHidden:1];
  [(BRTransportRegionView *)self->_transportRegion setHidden:1];
  [(UIView *)self->_transportRegionTopSeparator setHidden:1];
  [(UIView *)self->_transportRegionBottomSeparator setHidden:1];
  v7 = [[BRShareProgressView alloc] initWithProgress:0];
  [(BRShareProgressView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(_UIShareOverviewActionController *)self view];
  [v8 addSubview:v7];

  v9 = [(_UIShareOverviewActionController *)self view];
  [v9 bringSubviewToFront:v7];

  v10 = objc_opt_new();
  v11 = [(BRShareProgressView *)v7 topAnchor];
  v12 = [(BRShareDocumentInfoView *)self->_infoView bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v10 addObject:v13];

  v14 = [(BRShareProgressView *)v7 leadingAnchor];
  v15 = [(_UIShareOverviewActionController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v10 addObject:v17];

  v18 = [(BRShareProgressView *)v7 trailingAnchor];
  v19 = [(_UIShareOverviewActionController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v10 addObject:v21];

  v22 = [(BRShareProgressView *)v7 bottomAnchor];
  v23 = [(_UIShareOverviewActionController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v10 addObject:v25];

  v26 = [(BRShareProgressView *)v7 heightAnchor];
  v27 = [v26 constraintGreaterThanOrEqualToConstant:v6];
  [v10 addObject:v27];

  [NSLayoutConstraint activateConstraints:v10];

  return v7;
}

- (void)waitForShareCreationWithActivityType:(id)a3 progressView:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] waiting for share to be ready", buf, 2u);
  }

  v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v13 = [v12 localizedStringForKey:@"PROGRESS_UPLOADING_TEXT" value:@"Uploading" table:@"Localizable"];
  [v8 setTitle:v13];

  v14 = [(_UIShareOverviewController *)self delegate];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100027344;
  v19[3] = &unk_10004D868;
  v20 = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100027350;
  v17[3] = &unk_10004D890;
  v17[4] = self;
  v18 = v9;
  v15 = v9;
  v16 = v8;
  [v14 shareViewController:self activityType:v10 waitForUploadWithProgress:v19 completion:v17];
}

- (int)popoverPresentationMode
{
  v2 = [(_UIShareOverviewController *)self delegate];
  v3 = [v2 popoverPresentationMode];

  return v3;
}

- (BOOL)shareActivityControllerShouldPresentActivity:(id)a3
{
  v3 = [(_UIShareOverviewController *)self error];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shareActivityControllerShouldAddParticipants:(id)a3
{
  v3 = [(_UIShareOverviewController *)self share];
  v4 = [v3 publicPermission] == 1;

  return v4;
}

- (void)shareActivityController:(id)a3 prepareActivityPresentation:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIShareOverviewController *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000275E8;
  v11[3] = &unk_10004D168;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 shareViewController:self prepareActivity:v8 completion:v11];
}

- (void)shareViewController:(id)a3 addParticipants:(id)a4 activityType:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(_UIShareOverviewController *)self delegate];
  [v12 shareViewController:self addParticipants:v11 activityType:v10 permission:-[BRShareSettings defaultPermission](self->_settings completion:{"defaultPermission"), v9}];
}

- (void)shareActivityController:(id)a3 prepareForActivity:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIShareOverviewActionController *)self _setupProgressView];
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] existing subshare preflight check finished, activity controller preparation starts", buf, 2u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = [v8 activityType];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027838;
  v13[3] = &unk_10004D2D0;
  v14 = v7;
  v12 = v7;
  [(_UIShareOverviewActionController *)self waitForShareCreationWithActivityType:v11 progressView:v9 completion:v13];
}

- (void)willNavigateFromViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(_UIShareInvitationSettingsController *)self->_settingsViewController settings];
    [(_UIShareOverviewActionController *)self setSettings:v6];

    [(_UIShareOverviewActionController *)self _updateInfo];
  }
}

- (void)showShareSettings:(id)a3
{
  if (!self->_settingsViewController)
  {
    v4 = objc_alloc_init(_UIShareInvitationSettingsController);
    settingsViewController = self->_settingsViewController;
    self->_settingsViewController = v4;

    v6 = self->_settingsViewController;
    v7 = self;
    [(_UIShareInvitationSettingsController *)v6 setDelegate:v7];
    v8 = [(_UIShareOverviewActionController *)v7 settings];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setSettings:v8];

    v9 = [(_UIShareOverviewController *)v7 delegate];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setOverviewControllerDelegate:v9];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setProxiedOverviewController:v7];

    v10 = [v9 shareViewControllerCurrentParticipantsState];
    if ([v9 shareViewControllerAllowOthersToInvite] != v10 < 2)
    {
      [v9 shareViewControllerSetAllowOthersToInvite:v10 < 2];
    }
  }

  v11 = [(_UIShareOverviewActionController *)self navigationController];
  [v11 pushViewController:self->_settingsViewController animated:1];
}

- (void)settingsControllerDidChange:(id)a3 changedAllowInviters:(BOOL)a4
{
  v5 = [a3 settings];
  v6 = [v5 copy];
  [(_UIShareOverviewActionController *)self setSettings:v6];

  v7 = cdui_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D548(self);
  }

  [(_UIShareOverviewActionController *)self _updateInfo];
  v8 = [(_UIShareOverviewController *)self share];

  if (v8)
  {
    v9 = [(_UIShareOverviewActionController *)self settings];
    v10 = [(_UIShareOverviewController *)self share];
    [v9 applyToShare:v10];
  }
}

- (BOOL)isHomeroomID:(id)a3
{
  v3 = off_100060090;
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"self LIKE %@", v3];
  LOBYTE(v3) = [v5 evaluateWithObject:v4];

  return v3;
}

- (id)activityViewControllerOperation:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareOverviewController *)self error];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100027CB8;
    v8[3] = &unk_10004CA08;
    v8[4] = self;
    v9 = v4;
    v6 = [NSBlockOperation blockOperationWithBlock:v8];
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  v5 = v4;
  v6 = v4 > 0.0;
  v7 = [(_UIShareOverviewActionController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  v9 = [v8 _hidden];

  if (v6 != v9)
  {
    v10 = [(_UIShareOverviewActionController *)self navigationController];
    v11 = [v10 navigationBar];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100028554;
    v12[3] = &unk_10004D208;
    v12[4] = self;
    v13 = v5 > 0.0;
    [UIView transitionWithView:v11 duration:5242880 options:v12 animations:0 completion:0.3];
  }
}

@end