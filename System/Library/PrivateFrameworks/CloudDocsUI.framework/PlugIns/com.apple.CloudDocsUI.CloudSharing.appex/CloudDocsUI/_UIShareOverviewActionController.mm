@interface _UIShareOverviewActionController
- (BOOL)isHomeroomID:(id)d;
- (BOOL)shareActivityControllerShouldAddParticipants:(id)participants;
- (BOOL)shareActivityControllerShouldPresentActivity:(id)activity;
- (_UIShareOverviewActionController)initWithDelegate:(id)delegate;
- (id)_ownerLabelTextForName:(id)name displayHandle:(id)handle;
- (id)_setupProgressView;
- (id)activityViewControllerOperation:(id)operation;
- (id)addPeopleTitleWithDelegate:(id)delegate isInitial:(BOOL)initial;
- (int)popoverPresentationMode;
- (void)_updateInfo;
- (void)_updateSubviewsForNewGeometry;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setItemName:(id)name;
- (void)settingsControllerDidChange:(id)change changedAllowInviters:(BOOL)inviters;
- (void)shareActivityController:(id)controller prepareActivityPresentation:(id)presentation completion:(id)completion;
- (void)shareActivityController:(id)controller prepareForActivity:(id)activity completion:(id)completion;
- (void)shareDidChange;
- (void)shareViewController:(id)controller addParticipants:(id)participants activityType:(id)type completion:(id)completion;
- (void)showShareSettings:(id)settings;
- (void)updatePermissionOptions;
- (void)updatePreferredContentSize:(id)size;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waitForShareCreationWithActivityType:(id)type progressView:(id)view completion:(id)completion;
- (void)willNavigateFromViewController:(id)controller;
@end

@implementation _UIShareOverviewActionController

- (_UIShareOverviewActionController)initWithDelegate:(id)delegate
{
  v155.receiver = self;
  v155.super_class = _UIShareOverviewActionController;
  delegateCopy = delegate;
  v3 = [(_UIShareOverviewController *)&v155 initWithDelegate:?];
  if (v3)
  {
    v145 = objc_opt_new();
    [v145 setParentViewController:v3];
    [(_UIShareOverviewActionController *)v3 setView:v145];
    v4 = +[UIColor systemGroupedBackgroundColor];
    view = [(_UIShareOverviewActionController *)v3 view];
    [view setBackgroundColor:v4];

    v149 = objc_opt_new();
    v148 = objc_alloc_init(UIScrollView);
    [v148 setClipsToBounds:0];
    [v148 setAlwaysBounceVertical:0];
    [v148 setShowsVerticalScrollIndicator:0];
    [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v148 setDelegate:v3];
    [(_UIShareOverviewActionController *)v3 setScrollView:v148];
    topAnchor = [v148 topAnchor];
    view2 = [(_UIShareOverviewActionController *)v3 view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v149 addObject:v10];

    trailingAnchor = [v148 trailingAnchor];
    view3 = [(_UIShareOverviewActionController *)v3 view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v149 addObject:v15];

    leadingAnchor = [v148 leadingAnchor];
    view4 = [(_UIShareOverviewActionController *)v3 view];
    safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v149 addObject:v20];

    bottomAnchor = [v148 bottomAnchor];
    view5 = [(_UIShareOverviewActionController *)v3 view];
    safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v149 addObject:v25];

    view6 = [(_UIShareOverviewActionController *)v3 view];
    [view6 addSubview:v148];

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
    topAnchor3 = [v147 topAnchor];
    contentLayoutGuide = [v148 contentLayoutGuide];
    topAnchor4 = [contentLayoutGuide topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v149 addObject:v32];

    trailingAnchor3 = [v147 trailingAnchor];
    contentLayoutGuide2 = [v148 contentLayoutGuide];
    trailingAnchor4 = [contentLayoutGuide2 trailingAnchor];
    v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v149 addObject:v36];

    leadingAnchor3 = [v147 leadingAnchor];
    contentLayoutGuide3 = [v148 contentLayoutGuide];
    leadingAnchor4 = [contentLayoutGuide3 leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v149 addObject:v40];

    bottomAnchor3 = [v147 bottomAnchor];
    contentLayoutGuide4 = [v148 contentLayoutGuide];
    bottomAnchor4 = [contentLayoutGuide4 bottomAnchor];
    v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v149 addObject:v44];

    contentLayoutGuide5 = [v148 contentLayoutGuide];
    widthAnchor = [contentLayoutGuide5 widthAnchor];
    frameLayoutGuide = [v148 frameLayoutGuide];
    widthAnchor2 = [frameLayoutGuide widthAnchor];
    v49 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v149 addObject:v49];

    [(_UIShareOverviewActionController *)v3 setVContainer:v147];
    v50 = objc_opt_new();
    infoView = v3->_infoView;
    v3->_infoView = v50;

    [(BRShareDocumentInfoView *)v3->_infoView setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor5 = [(BRShareDocumentInfoView *)v3->_infoView leadingAnchor];
    vContainer = [(_UIShareOverviewActionController *)v3 vContainer];
    leadingAnchor6 = [vContainer leadingAnchor];
    v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v149 addObject:v55];

    trailingAnchor5 = [(BRShareDocumentInfoView *)v3->_infoView trailingAnchor];
    vContainer2 = [(_UIShareOverviewActionController *)v3 vContainer];
    trailingAnchor6 = [vContainer2 trailingAnchor];
    v59 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v149 addObject:v59];

    v60 = [delegateCopy shareViewControllerIsInitialShare:v3];
    share = [(_UIShareOverviewController *)v3 share];
    publicPermission = [share publicPermission];

    if (v60)
    {
      v63 = [(_UIShareOverviewActionController *)v3 addPeopleTitleWithDelegate:delegateCopy isInitial:1];
      titleLabel = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
      [titleLabel setText:v63];

      infoTextLabel2 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v66 = [infoTextLabel2 localizedStringForKey:@"SHARE_INITIAL_INFO_LABEL" value:@"Add people to this iCloud Drive file and everyone will see the latest changes." table:@"Localizable"];
      v67 = [delegateCopy shareViewControllerItemUTI:v3];
      v68 = _CDAdaptLocalizedStringForItemType();
      infoTextLabel = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
      [infoTextLabel setText:v68];
    }

    else
    {
      if (publicPermission == 1)
      {
        v70 = [(_UIShareOverviewActionController *)v3 addPeopleTitleWithDelegate:delegateCopy isInitial:0];
        titleLabel2 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
        [titleLabel2 setText:v70];
      }

      else
      {
        v70 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        titleLabel2 = [v70 localizedStringForKey:@"SHARE_RESEND_PUBLIC_TITLE" value:@"Send Link" table:@"Localizable"];
        titleLabel3 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
        [titleLabel3 setText:titleLabel2];
      }

      infoTextLabel2 = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
      [infoTextLabel2 setText:&stru_10004DE38];
    }

    infoTextLabel3 = [(BRShareDocumentInfoView *)v3->_infoView infoTextLabel];
    [infoTextLabel3 setHidden:v60 ^ 1];

    titleLabel4 = [(BRShareDocumentInfoView *)v3->_infoView titleLabel];
    text = [titleLabel4 text];
    navigationItem = [(_UIShareOverviewActionController *)v3 navigationItem];
    [navigationItem setBackButtonTitle:text];

    [v147 addArrangedSubview:v3->_infoView];
    itemURL = [(_UIShareOverviewController *)v3 itemURL];
    if (itemURL)
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
    leadingAnchor7 = [(UIView *)v79 leadingAnchor];
    view7 = [(_UIShareOverviewActionController *)v3 view];
    leadingAnchor8 = [view7 leadingAnchor];
    v83 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v149 addObject:v83];

    trailingAnchor7 = [(UIView *)v79 trailingAnchor];
    view8 = [(_UIShareOverviewActionController *)v3 view];
    trailingAnchor8 = [view8 trailingAnchor];
    v87 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
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
    LODWORD(v93) = [delegateCopy shareViewControllerIsFolderShare:v3];
    v94 = [delegateCopy shareViewControllerFolderShareIsPrepared:v3];
    v95 = [BRTransportRegionView alloc];
    view9 = [(_BRShareOverviewActivityViewController *)v92 view];
    v97 = [(BRTransportRegionView *)v95 initWithTransportView:view9];
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
    leadingAnchor9 = [(BRTransportRegionView *)v3->_transportRegion leadingAnchor];
    vContainer3 = [(_UIShareOverviewActionController *)v3 vContainer];
    leadingAnchor10 = [vContainer3 leadingAnchor];
    v106 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v149 addObject:v106];

    trailingAnchor9 = [(BRTransportRegionView *)v3->_transportRegion trailingAnchor];
    vContainer4 = [(_UIShareOverviewActionController *)v3 vContainer];
    trailingAnchor10 = [vContainer4 trailingAnchor];
    v110 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v149 addObject:v110];

    objc_destroyWeak(&v151);
    objc_destroyWeak(&location);

    v111 = objc_opt_new();
    leadingAnchor11 = [(UIView *)v111 leadingAnchor];
    view10 = [(_UIShareOverviewActionController *)v3 view];
    leadingAnchor12 = [view10 leadingAnchor];
    v115 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v149 addObject:v115];

    trailingAnchor11 = [(UIView *)v111 trailingAnchor];
    view11 = [(_UIShareOverviewActionController *)v3 view];
    trailingAnchor12 = [view11 trailingAnchor];
    v119 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [v149 addObject:v119];

    [v147 addArrangedSubview:v111];
    transportRegionBottomSeparator = v3->_transportRegionBottomSeparator;
    v3->_transportRegionBottomSeparator = v111;

    v121 = objc_alloc_init(BRShareSettingsButton);
    [(BRShareSettingsButton *)v121 addTarget:v3 action:"showShareSettings:" forControlEvents:64];
    [(BRShareSettingsButton *)v121 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v147 addArrangedSubview:v121];
    trailingAnchor13 = [(BRShareSettingsButton *)v121 trailingAnchor];
    view12 = [(_UIShareOverviewActionController *)v3 view];
    trailingAnchor14 = [view12 trailingAnchor];
    v125 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    [v149 addObject:v125];

    leadingAnchor13 = [(BRShareSettingsButton *)v121 leadingAnchor];
    view13 = [(_UIShareOverviewActionController *)v3 view];
    leadingAnchor14 = [view13 leadingAnchor];
    v129 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    [v149 addObject:v129];

    hContainer = [(BRShareSettingsButton *)v121 hContainer];
    trailingAnchor15 = [hContainer trailingAnchor];
    vContainer5 = [(_UIShareOverviewActionController *)v3 vContainer];
    trailingAnchor16 = [vContainer5 trailingAnchor];
    v134 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
    [v149 addObject:v134];

    hContainer2 = [(BRShareSettingsButton *)v121 hContainer];
    leadingAnchor15 = [hContainer2 leadingAnchor];
    vContainer6 = [(_UIShareOverviewActionController *)v3 vContainer];
    leadingAnchor16 = [vContainer6 leadingAnchor];
    v139 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
    [v149 addObject:v139];

    shareSettingsButton = v3->_shareSettingsButton;
    v3->_shareSettingsButton = v121;

    v3->_lastPermissionOptions = -1;
    [(_UIShareOverviewActionController *)v3 updatePermissionOptions];
    shareViewControllerCurrentParticipantsState = [delegateCopy shareViewControllerCurrentParticipantsState];
    if ([delegateCopy shareViewControllerAllowOthersToInvite] != shareViewControllerCurrentParticipantsState < 2)
    {
      [delegateCopy shareViewControllerSetAllowOthersToInvite:shareViewControllerCurrentParticipantsState < 2];
    }

    [NSLayoutConstraint activateConstraints:v149];
  }

  return v3;
}

- (id)addPeopleTitleWithDelegate:(id)delegate isInitial:(BOOL)initial
{
  delegateCopy = delegate;
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_INITIAL_TITLE" value:@"Add People" table:@"Localizable"];

  if (initial)
  {
    v9 = [delegateCopy shareViewControllerItemUTI:self];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = [v10 localizedStringForKey:@"SHARE_INITIAL_TITLE" value:@"Add People" table:@"Localizable"];
    v12 = _CDAdaptLocalizedStringForItemType();

    v13 = [delegateCopy shareViewControllerIsDocumentShare:self];
    if (([delegateCopy shareViewControllerIsFolderShare:self] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.notes.folder"))
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
  view = [(_UIShareOverviewActionController *)self view];
  [view frame];
  v5 = v4;
  [(_UIShareOverviewActionController *)self preferredContentSize];
  v7 = v6;
  v8 = v5 < v6;

  infoView = [(_UIShareOverviewActionController *)self infoView];
  [infoView setCompactMode:v8];

  transportRegion = [(_UIShareOverviewActionController *)self transportRegion];
  [transportRegion setCompactMode:v8];

  vContainer = [(_UIShareOverviewActionController *)self vContainer];
  v12 = vContainer;
  infoView = self->_infoView;
  if (v5 >= v7)
  {
    [vContainer setCustomSpacing:infoView afterView:23.0];

    vContainer2 = [(_UIShareOverviewActionController *)self vContainer];
    [vContainer2 setCustomSpacing:self->_transportRegionTopSeparator afterView:23.0];

    vContainer3 = [(_UIShareOverviewActionController *)self vContainer];
    v19 = vContainer3;
    top = 0.0;
    v21 = 0.0;
    v22 = 16.0;
    v23 = 0.0;
  }

  else
  {
    [vContainer setCustomSpacing:infoView afterView:11.0];

    vContainer4 = [(_UIShareOverviewActionController *)self vContainer];
    [vContainer4 setCustomSpacing:self->_transportRegionTopSeparator afterView:11.0];

    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    vContainer3 = [(_UIShareOverviewActionController *)self vContainer];
    v19 = vContainer3;
    top = NSDirectionalEdgeInsetsZero.top;
    v21 = leading;
    v22 = bottom;
    v23 = trailing;
  }

  [vContainer3 setDirectionalLayoutMargins:{top, v21, v22, v23}];
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
  delegate = [(_UIShareOverviewController *)self delegate];
  shareViewControllerAllowOthersToInvite = [delegate shareViewControllerAllowOthersToInvite];
  share = [(_UIShareOverviewController *)self share];
  currentUserParticipant = [share currentUserParticipant];
  if (share && ([share owner], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", currentUserParticipant), v6, (v7 & 1) == 0))
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
  v11 = [delegate shareViewControllerItemUTI:self];
  v12 = [v11 isEqualToString:@"com.apple.reminders.list"];
  v13 = [delegate shareViewControllerIsInitialShare:self];
  hasACL = [(BRShareSettings *)self->_settings hasACL];
  settings = self->_settings;
  if (!v13)
  {
    if (hasACL)
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
      if (shareViewControllerAllowOthersToInvite)
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
      detailLabel = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
      [detailLabel setText:v31];

      if (shareViewControllerAllowOthersToInvite)
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
    publicPermission = [(BRShareSettings *)settings publicPermission];
    v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = v25;
    if (publicPermission == 3)
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

  if (!hasACL)
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
  if (shareViewControllerAllowOthersToInvite)
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
  detailLabel2 = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
  [detailLabel2 setText:v29];

  if (!shareViewControllerAllowOthersToInvite)
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
  detailLabel3 = [(BRShareSettingsButton *)self->_shareSettingsButton detailLabel];
  [detailLabel3 setText:v33];

LABEL_42:
  v35 = [delegate shareViewControllerIsFolderShare:self];
  v36 = [delegate shareViewControllerThumbnail:self];
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

  itemName = [(_UIShareOverviewController *)self itemName];
  v40 = itemName;
  if (itemName)
  {
    v41 = itemName;
  }

  else
  {
    v41 = @" ";
  }

  itemTitleLabel = [(BRShareDocumentInfoView *)self->_infoView itemTitleLabel];
  [itemTitleLabel setText:v41];

  thumbnailView = [(BRShareDocumentInfoView *)self->_infoView thumbnailView];
  [thumbnailView setImage:v37];

  traitCollection = [(_UIShareOverviewActionController *)self traitCollection];
  [(_UIShareOverviewActionController *)self updatePreferredContentSize:traitCollection];
}

- (void)setItemName:(id)name
{
  v4.receiver = self;
  v4.super_class = _UIShareOverviewActionController;
  [(_UIShareOverviewController *)&v4 setItemName:name];
  [(_UIShareOverviewActionController *)self _updateInfo];
}

- (id)_ownerLabelTextForName:(id)name displayHandle:(id)handle
{
  handleCopy = handle;
  v6 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:name style:0 options:0];
  v7 = +[UIFontMetrics defaultMetrics];
  v8 = [UIFont systemFontOfSize:12.0];
  v9 = [v7 scaledFontForFont:v8];

  v10 = [NSMutableAttributedString alloc];
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_INVITE_SHARE_AS_OWNER_TEXT" value:@"%@ (%@)" table:@"Localizable"];
  handleCopy = [NSString localizedStringWithFormat:v12, v6, handleCopy];

  v18[0] = NSFontAttributeName;
  v18[1] = NSForegroundColorAttributeName;
  v19[0] = v9;
  v14 = +[UIColor secondaryLabelColor];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v10 initWithString:handleCopy attributes:v15];

  return v16;
}

- (void)updatePreferredContentSize:(id)size
{
  v4 = [size verticalSizeClass] == 1;
  infoView = [(_UIShareOverviewActionController *)self infoView];
  infoTextLabel = [infoView infoTextLabel];
  [infoTextLabel setHidden:v4];

  infoView2 = [(_UIShareOverviewActionController *)self infoView];
  thumbnailView = [infoView2 thumbnailView];
  [thumbnailView setHidden:v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _UIShareOverviewActionController;
  coordinatorCopy = coordinator;
  [(_UIShareOverviewActionController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026B18;
  v8[3] = &unk_10004D800;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10004D840];
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

  settings = [(_UIShareOverviewActionController *)self settings];
  share = [(_UIShareOverviewController *)self share];
  [settings applyToShare:share];
}

- (void)updatePermissionOptions
{
  delegate = [(_UIShareOverviewController *)self delegate];
  share = [(_UIShareOverviewController *)self share];
  v5 = [delegate shareViewControllerAllowedPermissions:self];
  v6 = v5;
  if (v5 == -1 || v5 != self->_lastPermissionOptions)
  {
    if ([delegate shareViewControllerIsInitialShare:self])
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

      settings = [(_UIShareOverviewActionController *)self settings];
      share2 = [(_UIShareOverviewController *)self share];
      [settings applyToShare:share2];
    }

    else
    {
      if ([share publicPermission] == 1)
      {
        v12 = v6 | 2;
        v13 = [[BRShareSettings alloc] initWithShare:share permissions:v12];
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
        if ([share publicPermission] == 2)
        {
          v16 = 5;
        }

        else
        {
          v16 = 9;
        }

        v17 = [[BRShareSettings alloc] initWithShare:share permissions:v16];
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
  view = [(_UIShareOverviewActionController *)self view];
  [view addSubview:v7];

  view2 = [(_UIShareOverviewActionController *)self view];
  [view2 bringSubviewToFront:v7];

  v10 = objc_opt_new();
  topAnchor = [(BRShareProgressView *)v7 topAnchor];
  bottomAnchor = [(BRShareDocumentInfoView *)self->_infoView bottomAnchor];
  v13 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v10 addObject:v13];

  leadingAnchor = [(BRShareProgressView *)v7 leadingAnchor];
  view3 = [(_UIShareOverviewActionController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 addObject:v17];

  trailingAnchor = [(BRShareProgressView *)v7 trailingAnchor];
  view4 = [(_UIShareOverviewActionController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 addObject:v21];

  bottomAnchor2 = [(BRShareProgressView *)v7 bottomAnchor];
  view5 = [(_UIShareOverviewActionController *)self view];
  bottomAnchor3 = [view5 bottomAnchor];
  v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v10 addObject:v25];

  heightAnchor = [(BRShareProgressView *)v7 heightAnchor];
  v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:v6];
  [v10 addObject:v27];

  [NSLayoutConstraint activateConstraints:v10];

  return v7;
}

- (void)waitForShareCreationWithActivityType:(id)type progressView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  typeCopy = type;
  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] waiting for share to be ready", buf, 2u);
  }

  v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v13 = [v12 localizedStringForKey:@"PROGRESS_UPLOADING_TEXT" value:@"Uploading" table:@"Localizable"];
  [viewCopy setTitle:v13];

  delegate = [(_UIShareOverviewController *)self delegate];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100027344;
  v19[3] = &unk_10004D868;
  v20 = viewCopy;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100027350;
  v17[3] = &unk_10004D890;
  v17[4] = self;
  v18 = completionCopy;
  v15 = completionCopy;
  v16 = viewCopy;
  [delegate shareViewController:self activityType:typeCopy waitForUploadWithProgress:v19 completion:v17];
}

- (int)popoverPresentationMode
{
  delegate = [(_UIShareOverviewController *)self delegate];
  popoverPresentationMode = [delegate popoverPresentationMode];

  return popoverPresentationMode;
}

- (BOOL)shareActivityControllerShouldPresentActivity:(id)activity
{
  error = [(_UIShareOverviewController *)self error];
  v4 = error == 0;

  return v4;
}

- (BOOL)shareActivityControllerShouldAddParticipants:(id)participants
{
  share = [(_UIShareOverviewController *)self share];
  v4 = [share publicPermission] == 1;

  return v4;
}

- (void)shareActivityController:(id)controller prepareActivityPresentation:(id)presentation completion:(id)completion
{
  completionCopy = completion;
  presentationCopy = presentation;
  delegate = [(_UIShareOverviewController *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000275E8;
  v11[3] = &unk_10004D168;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [delegate shareViewController:self prepareActivity:presentationCopy completion:v11];
}

- (void)shareViewController:(id)controller addParticipants:(id)participants activityType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  participantsCopy = participants;
  delegate = [(_UIShareOverviewController *)self delegate];
  [delegate shareViewController:self addParticipants:participantsCopy activityType:typeCopy permission:-[BRShareSettings defaultPermission](self->_settings completion:{"defaultPermission"), completionCopy}];
}

- (void)shareActivityController:(id)controller prepareForActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  activityCopy = activity;
  _setupProgressView = [(_UIShareOverviewActionController *)self _setupProgressView];
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] existing subshare preflight check finished, activity controller preparation starts", buf, 2u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  activityType = [activityCopy activityType];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027838;
  v13[3] = &unk_10004D2D0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(_UIShareOverviewActionController *)self waitForShareCreationWithActivityType:activityType progressView:_setupProgressView completion:v13];
}

- (void)willNavigateFromViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    settings = [(_UIShareInvitationSettingsController *)self->_settingsViewController settings];
    [(_UIShareOverviewActionController *)self setSettings:settings];

    [(_UIShareOverviewActionController *)self _updateInfo];
  }
}

- (void)showShareSettings:(id)settings
{
  if (!self->_settingsViewController)
  {
    v4 = objc_alloc_init(_UIShareInvitationSettingsController);
    settingsViewController = self->_settingsViewController;
    self->_settingsViewController = v4;

    v6 = self->_settingsViewController;
    selfCopy = self;
    [(_UIShareInvitationSettingsController *)v6 setDelegate:selfCopy];
    settings = [(_UIShareOverviewActionController *)selfCopy settings];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setSettings:settings];

    delegate = [(_UIShareOverviewController *)selfCopy delegate];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setOverviewControllerDelegate:delegate];
    [(_UIShareInvitationSettingsController *)self->_settingsViewController setProxiedOverviewController:selfCopy];

    shareViewControllerCurrentParticipantsState = [delegate shareViewControllerCurrentParticipantsState];
    if ([delegate shareViewControllerAllowOthersToInvite] != shareViewControllerCurrentParticipantsState < 2)
    {
      [delegate shareViewControllerSetAllowOthersToInvite:shareViewControllerCurrentParticipantsState < 2];
    }
  }

  navigationController = [(_UIShareOverviewActionController *)self navigationController];
  [navigationController pushViewController:self->_settingsViewController animated:1];
}

- (void)settingsControllerDidChange:(id)change changedAllowInviters:(BOOL)inviters
{
  settings = [change settings];
  v6 = [settings copy];
  [(_UIShareOverviewActionController *)self setSettings:v6];

  v7 = cdui_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D548(self);
  }

  [(_UIShareOverviewActionController *)self _updateInfo];
  share = [(_UIShareOverviewController *)self share];

  if (share)
  {
    settings2 = [(_UIShareOverviewActionController *)self settings];
    share2 = [(_UIShareOverviewController *)self share];
    [settings2 applyToShare:share2];
  }
}

- (BOOL)isHomeroomID:(id)d
{
  v3 = off_100060090;
  dCopy = d;
  v5 = [NSPredicate predicateWithFormat:@"self LIKE %@", v3];
  LOBYTE(v3) = [v5 evaluateWithObject:dCopy];

  return v3;
}

- (id)activityViewControllerOperation:(id)operation
{
  operationCopy = operation;
  error = [(_UIShareOverviewController *)self error];

  if (error)
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
    v9 = operationCopy;
    v6 = [NSBlockOperation blockOperationWithBlock:v8];
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
  v5 = v4;
  v6 = v4 > 0.0;
  navigationItem = [(_UIShareOverviewActionController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  _hidden = [rightBarButtonItem _hidden];

  if (v6 != _hidden)
  {
    navigationController = [(_UIShareOverviewActionController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100028554;
    v12[3] = &unk_10004D208;
    v12[4] = self;
    v13 = v5 > 0.0;
    [UIView transitionWithView:navigationBar duration:5242880 options:v12 animations:0 completion:0.3];
  }
}

@end