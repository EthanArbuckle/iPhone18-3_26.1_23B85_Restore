@interface HUCameraActivityZoneEditorViewController
- (BOOL)hasActivityZoneChanges;
- (HUCameraActivityZoneCanvasView)activityZoneCanvas;
- (HUCameraActivityZoneEditorViewController)initWithCameraProfile:(id)profile;
- (UILabel)tutorialLabel;
- (id)_addZoneButton;
- (void)_displayProgressIndicatorWhileLoading;
- (void)_refreshUI;
- (void)_updateNavigationBar;
- (void)_updateToolbar;
- (void)_updateTutorialText;
- (void)_updateViewsForTraitCollection;
- (void)cancelEditing;
- (void)commitChangesAndDismissEditor;
- (void)dealloc;
- (void)didUpdateActivityZone:(id)zone;
- (void)displayActivityZoneState;
- (void)displayAlertWithTitle:(id)title message:(id)message;
- (void)displayErrorAlert;
- (void)displayLineOverlapAlert;
- (void)displayMoveOverlapAlert;
- (void)displayUnCommittedChangesAlert;
- (void)displayZoneOverlapAlert;
- (void)invertZones;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUCameraActivityZoneEditorViewController

- (HUCameraActivityZoneEditorViewController)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HUCameraActivityZoneEditorViewController;
  v6 = [(HUCameraActivityZoneEditorViewController *)&v16 init];
  if (v6)
  {
    v7 = [[HUCameraLiveStreamViewController alloc] initWithCameraProfile:profileCopy];
    liveStreamViewController = v6->_liveStreamViewController;
    v6->_liveStreamViewController = v7;

    [(HUCameraLiveStreamViewController *)v6->_liveStreamViewController setLiveStreamControllerDelegate:v6];
    [(HUCameraLiveStreamViewController *)v6->_liveStreamViewController setShouldRespectAspectRatio:1];
    objc_storeStrong(&v6->_cameraProfile, profile);
    userSettings = [profileCopy userSettings];
    activityZones = [userSettings activityZones];
    allObjects = [activityZones allObjects];
    initialActivityZones = v6->_initialActivityZones;
    v6->_initialActivityZones = allObjects;

    if ([(NSArray *)v6->_initialActivityZones count])
    {
      cameraProfile = [(HUCameraActivityZoneEditorViewController *)v6 cameraProfile];
      userSettings2 = [cameraProfile userSettings];
      v6->_initialSettingDetectsInclusionZones = [userSettings2 areActivityZonesIncludedForSignificantEventDetection];
    }

    else
    {
      v6->_initialSettingDetectsInclusionZones = 1;
    }
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = HUCameraActivityZoneEditorViewController;
  [(HUCameraActivityZoneEditorViewController *)&v22 viewDidAppear:appear];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    view = [(HUCameraActivityZoneEditorViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    view2 = [(HUCameraActivityZoneEditorViewController *)self view];
    window = [view2 window];
    windowScene = [window windowScene];
    sizeRestrictions = [windowScene sizeRestrictions];
    [sizeRestrictions setMinimumSize:{v6, v8}];

    view3 = [(HUCameraActivityZoneEditorViewController *)self view];
    [view3 bounds];
    v15 = v14;
    v17 = v16;
    view4 = [(HUCameraActivityZoneEditorViewController *)self view];
    window2 = [view4 window];
    windowScene2 = [window2 windowScene];
    sizeRestrictions2 = [windowScene2 sizeRestrictions];
    [sizeRestrictions2 setMaximumSize:{v15, v17}];
  }
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = HUCameraActivityZoneEditorViewController;
  [(HUCameraActivityZoneEditorViewController *)&v34 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUCameraActivityZoneEditorViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(HUCameraActivityZoneEditorViewController *)self view];
  liveStreamViewController = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  view3 = [liveStreamViewController view];
  [view2 addSubview:view3];

  liveStreamViewController2 = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  [(HUCameraActivityZoneEditorViewController *)self addChildViewController:liveStreamViewController2];

  liveStreamViewController3 = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  [liveStreamViewController3 didMoveToParentViewController:self];

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  v11 = 1;
  v12 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorTitle", @"HUCameraActivityZoneEditorTitle", 1);
  [v10 setText:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v10 setFont:v13];

  navigationItem = [(HUCameraActivityZoneEditorViewController *)self navigationItem];
  [navigationItem setTitleView:v10];

  view4 = [(HUCameraActivityZoneEditorViewController *)self view];
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [view4 addSubview:activityZoneCanvas];

  view5 = [(HUCameraActivityZoneEditorViewController *)self view];
  [view5 center];
  v19 = v18;
  v21 = v20;
  activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [activityZoneCanvas2 setCenter:{v19, v21}];

  view6 = [(HUCameraActivityZoneEditorViewController *)self view];
  tutorialLabel = [(HUCameraActivityZoneEditorViewController *)self tutorialLabel];
  [view6 addSubview:tutorialLabel];

  cameraProfile = [(HUCameraActivityZoneEditorViewController *)self cameraProfile];
  accessory = [cameraProfile accessory];
  home = [accessory home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if ((hf_currentUserIsAdministrator & 1) == 0)
  {
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_INFO, "Bypassing admin controls for shared users", v33, 2u);
    }

    activityZoneCanvas3 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    [activityZoneCanvas3 setUserInteractionEnabled:0];

    [(HUCameraActivityZoneEditorViewController *)self displayActivityZoneState];
    v11 = 0;
  }

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:v11 target:self action:sel_cancelEditing];
  navigationItem2 = [(HUCameraActivityZoneEditorViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v31];

  [(HUCameraActivityZoneEditorViewController *)self _refreshUI];
}

- (void)didUpdateActivityZone:(id)zone
{
  v8 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = zoneCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Did receive update for activity zone:%@", &v6, 0xCu);
  }

  [(HUCameraActivityZoneEditorViewController *)self _refreshUI];
}

- (void)_refreshUI
{
  cameraProfile = [(HUCameraActivityZoneEditorViewController *)self cameraProfile];
  accessory = [cameraProfile accessory];
  home = [accessory home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    [(HUCameraActivityZoneEditorViewController *)self _updateToolbar];
    [(HUCameraActivityZoneEditorViewController *)self _updateNavigationBar];

    [(HUCameraActivityZoneEditorViewController *)self _updateTutorialText];
  }
}

- (void)_updateToolbar
{
  v19[1] = *MEMORY[0x277D85DE8];
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  activityZones = [activityZoneCanvas activityZones];
  v5 = [activityZones count];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    if (v5 == 1)
    {
      v7 = @"HUCameraActivityZoneInvertZoneText";
    }

    else
    {
      v7 = @"HUCameraActivityZoneInvertZonesText";
    }

    v8 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
    v18 = [v6 initWithTitle:v8 style:2 target:self action:sel_invertZones];

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v10 = [MEMORY[0x277CBEB18] arrayWithObjects:{v9, v18, 0}];
    activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    isCreatingActivityZone = [activityZoneCanvas2 isCreatingActivityZone];

    if (isCreatingActivityZone)
    {
      _addZoneButton = [(HUCameraActivityZoneEditorViewController *)self _addZoneButton];
      [v10 insertObject:_addZoneButton atIndex:0];
    }

    [(HUCameraActivityZoneEditorViewController *)self setToolbarItems:v10];
  }

  else
  {
    activityZoneCanvas3 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    isCreatingActivityZone2 = [activityZoneCanvas3 isCreatingActivityZone];

    if (isCreatingActivityZone2)
    {
      _addZoneButton2 = [(HUCameraActivityZoneEditorViewController *)self _addZoneButton];
      v19[0] = _addZoneButton2;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [(HUCameraActivityZoneEditorViewController *)self setToolbarItems:v17];
    }

    else
    {

      [(HUCameraActivityZoneEditorViewController *)self setToolbarItems:0];
    }
  }
}

- (void)_updateNavigationBar
{
  if ([(HUCameraActivityZoneEditorViewController *)self hasActivityZoneChanges])
  {
    [(HUCameraActivityZoneEditorViewController *)self setModalInPresentation:1];
    navigationItem2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_commitChangesAndDismissEditor];
    navigationItem = [(HUCameraActivityZoneEditorViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2];
  }

  else
  {
    [(HUCameraActivityZoneEditorViewController *)self setModalInPresentation:0];
    navigationItem2 = [(HUCameraActivityZoneEditorViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_updateTutorialText
{
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  activityZones = [activityZoneCanvas activityZones];
  v5 = [activityZones count];

  if (v5)
  {

    [(HUCameraActivityZoneEditorViewController *)self displayActivityZoneState];
  }

  else
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneTutorialLabelText", @"HUCameraActivityZoneTutorialLabelText", 1);
    tutorialLabel = [(HUCameraActivityZoneEditorViewController *)self tutorialLabel];
    [tutorialLabel setText:v7];
  }
}

- (void)displayActivityZoneState
{
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  activityZones = [activityZoneCanvas activityZones];
  v5 = [activityZones count];

  activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  LODWORD(activityZones) = [activityZoneCanvas2 displaysInclusionZones];

  if (activityZones)
  {
    if (v5 == 1)
    {
      v7 = @"HUCameraActivityZoneInclusionZoneText";
    }

    else
    {
      v7 = @"HUCameraActivityZoneInclusionZonesText";
    }
  }

  else if (v5 == 1)
  {
    v7 = @"HUCameraActivityZoneExclusionZoneText";
  }

  else
  {
    v7 = @"HUCameraActivityZoneExclusionZonesText";
  }

  v9 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  tutorialLabel = [(HUCameraActivityZoneEditorViewController *)self tutorialLabel];
  [tutorialLabel setText:v9];
}

- (id)_addZoneButton
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneAddZoneText", @"HUCameraActivityZoneAddZoneText", 1);
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  v6 = [v3 initWithTitle:v4 style:2 target:activityZoneCanvas action:sel_createActivityZone];

  return v6;
}

- (void)displayUnCommittedChangesAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZonesCancelWithoutSavingAlertTitle", @"HUCameraActivityZonesCancelWithoutSavingAlertTitle", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZonesCancelWithoutSavingAlertMessage", @"HUCameraActivityZonesCancelWithoutSavingAlertMessage", 1);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  view = [(HUCameraActivityZoneEditorViewController *)self view];
  popoverPresentationController = [v6 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  navigationController = [(HUCameraActivityZoneEditorViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  popoverPresentationController2 = [v6 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

  v20 = MEMORY[0x277D750F8];
  v21 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZonesProceedWithoutSavingText", @"HUCameraActivityZonesProceedWithoutSavingText", 1);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__HUCameraActivityZoneEditorViewController_displayUnCommittedChangesAlert__block_invoke;
  v27[3] = &unk_277DB7600;
  v27[4] = self;
  v22 = [v20 actionWithTitle:v21 style:2 handler:v27];

  [v6 addAction:v22];
  v23 = MEMORY[0x277D750F8];
  v24 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZonesSaveBeforeProceedingText", @"HUCameraActivityZonesSaveBeforeProceedingText", 1);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__HUCameraActivityZoneEditorViewController_displayUnCommittedChangesAlert__block_invoke_2;
  v26[3] = &unk_277DB7600;
  v26[4] = self;
  v25 = [v23 actionWithTitle:v24 style:1 handler:v26];

  [v6 addAction:v25];
  [(HUCameraActivityZoneEditorViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)displayAlertWithTitle:(id)title message:(id)message
{
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v7 = [v5 actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(HUCameraActivityZoneEditorViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)displayErrorAlert
{
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorErrorTitle", @"HUCameraActivityZoneEditorErrorTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorErrorMessage", @"HUCameraActivityZoneEditorErrorMessage", 1);
  [(HUCameraActivityZoneEditorViewController *)self displayAlertWithTitle:v4 message:v3];
}

- (void)displayZoneOverlapAlert
{
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorZoneOverlapErrorTitle", @"HUCameraActivityZoneEditorZoneOverlapErrorTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorZoneOverlapErrorMessage", @"HUCameraActivityZoneEditorZoneOverlapErrorMessage", 1);
  [(HUCameraActivityZoneEditorViewController *)self displayAlertWithTitle:v4 message:v3];
}

- (void)displayLineOverlapAlert
{
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorLineOverlapErrorTitle", @"HUCameraActivityZoneEditorLineOverlapErrorTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorLineOverlapErrorMessage", @"HUCameraActivityZoneEditorLineOverlapErrorMessage", 1);
  [(HUCameraActivityZoneEditorViewController *)self displayAlertWithTitle:v4 message:v3];
}

- (void)displayMoveOverlapAlert
{
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorMoveOverlapErrorTitle", @"HUCameraActivityZoneEditorMoveOverlapErrorTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneEditorMoveOverlapErrorMessage", @"HUCameraActivityZoneEditorMoveOverlapErrorMessage", 1);
  [(HUCameraActivityZoneEditorViewController *)self displayAlertWithTitle:v4 message:v3];
}

- (void)_updateViewsForTraitCollection
{
  tutorialLabel = [(HUCameraActivityZoneEditorViewController *)self tutorialLabel];
  [tutorialLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  traitCollection = [(HUCameraActivityZoneEditorViewController *)self traitCollection];
  if ([traitCollection hu_hasExtendedWidth])
  {
    v11 = 40.0;
  }

  else
  {
    v11 = 60.0;
  }

  tutorialLabel2 = [(HUCameraActivityZoneEditorViewController *)self tutorialLabel];
  [tutorialLabel2 setFrame:{v5, v11, v7, v9}];

  view = [(HUCameraActivityZoneEditorViewController *)self view];
  [view bounds];
  v15 = v14;
  v61.origin.x = v5;
  v61.origin.y = v11;
  v61.size.width = v7;
  v61.size.height = v9;
  v16 = v15 - CGRectGetMaxY(v61);

  view2 = [(HUCameraActivityZoneEditorViewController *)self view];
  [view2 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (v23 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  if (v26 >= v16)
  {
    v27 = v16;
  }

  else
  {
    v27 = v26;
  }

  cameraProfile = [(HUCameraActivityZoneEditorViewController *)self cameraProfile];
  snapshotControl = [cameraProfile snapshotControl];
  mostRecentSnapshot = [snapshotControl mostRecentSnapshot];
  [mostRecentSnapshot aspectRatio];
  if (v31 == 0.0)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = v31;
  }

  if (v32 == 1.0)
  {
    v33 = HFLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v60 = 0;
      _os_log_error_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_ERROR, "Invalid aspect ratio. Using 1:1.", v60, 2u);
    }
  }

  if (v32 >= 1.0)
  {
    v34 = v27 / v32;
  }

  else
  {
    v34 = v27 * v32;
  }

  liveStreamViewController = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  view3 = [liveStreamViewController view];
  [view3 setFrame:{v19, v21, v27, v34}];

  view4 = [(HUCameraActivityZoneEditorViewController *)self view];
  [view4 center];
  v39 = v38;
  v41 = v40;
  liveStreamViewController2 = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  view5 = [liveStreamViewController2 view];
  [view5 setCenter:{v39, v41}];

  liveStreamViewController3 = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  [liveStreamViewController3 setShouldRespectAspectRatio:1];

  if (v32 < 1.0)
  {
    v27 = v32 * v34;
  }

  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [activityZoneCanvas setFrame:{v19, v21, v27, v34}];

  view6 = [(HUCameraActivityZoneEditorViewController *)self view];
  [view6 center];
  v48 = v47;
  v50 = v49;
  activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [activityZoneCanvas2 setCenter:{v48, v50}];

  activityZoneCanvas3 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [activityZoneCanvas3 updateAfterVideoBoundsChange];

  view7 = [(HUCameraActivityZoneEditorViewController *)self view];
  [view7 center];
  v55 = v54;
  v57 = v56;
  liveStreamViewController4 = [(HUCameraActivityZoneEditorViewController *)self liveStreamViewController];
  view8 = [liveStreamViewController4 view];
  [view8 setCenter:{v55, v57}];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUCameraActivityZoneEditorViewController;
  [(HUCameraActivityZoneEditorViewController *)&v3 viewDidLayoutSubviews];
  [(HUCameraActivityZoneEditorViewController *)self _updateViewsForTraitCollection];
}

- (void)invertZones
{
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  displaysInclusionZones = [activityZoneCanvas displaysInclusionZones];
  activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  [activityZoneCanvas2 setDisplaysInclusionZones:displaysInclusionZones ^ 1u];

  [(HUCameraActivityZoneEditorViewController *)self _updateTutorialText];

  [(HUCameraActivityZoneEditorViewController *)self _updateNavigationBar];
}

- (void)cancelEditing
{
  if ([(HUCameraActivityZoneEditorViewController *)self hasActivityZoneChanges])
  {

    [(HUCameraActivityZoneEditorViewController *)self displayUnCommittedChangesAlert];
  }

  else
  {

    [(HUCameraActivityZoneEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)hasActivityZoneChanges
{
  v26 = *MEMORY[0x277D85DE8];
  initialSettingDetectsInclusionZones = [(HUCameraActivityZoneEditorViewController *)self initialSettingDetectsInclusionZones];
  activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
  displaysInclusionZones = [activityZoneCanvas displaysInclusionZones];

  if (initialSettingDetectsInclusionZones == displaysInclusionZones)
  {
    initialActivityZones = [(HUCameraActivityZoneEditorViewController *)self initialActivityZones];
    v8 = [initialActivityZones count];
    activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    activityZones = [activityZoneCanvas2 activityZones];
    v11 = [activityZones count];

    if (v8 == v11)
    {
      activityZoneCanvas3 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
      activityZones2 = [activityZoneCanvas3 activityZones];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      initialActivityZones2 = [(HUCameraActivityZoneEditorViewController *)self initialActivityZones];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__HUCameraActivityZoneEditorViewController_hasActivityZoneChanges__block_invoke;
      v21[3] = &unk_277DB9318;
      v15 = activityZones2;
      v22 = v15;
      v23 = buf;
      [initialActivityZones2 enumerateObjectsUsingBlock:v21];

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        initialActivityZones3 = [(HUCameraActivityZoneEditorViewController *)self initialActivityZones];
        v17 = [initialActivityZones3 count];
        activityZoneCanvas4 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
        activityZones3 = [activityZoneCanvas4 activityZones];
        *buf = 134218240;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = [activityZones3 count];
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Activity zones have changed. Total count changed from:%lu to:%lu", buf, 0x16u);
      }

      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __66__HUCameraActivityZoneEditorViewController_hasActivityZoneChanges__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = [v7 points];
  v10 = [v9 count];
  v11 = [v8 count];

  if (v10 == v11)
  {
    v12 = [v7 points];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__HUCameraActivityZoneEditorViewController_hasActivityZoneChanges__block_invoke_88;
    v17[3] = &unk_277DB92F0;
    v13 = v8;
    v14 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    [v12 enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 points];
      *buf = 134218240;
      v21 = [v16 count];
      v22 = 2048;
      v23 = [v8 count];
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Activity zones have changed. Number of points changed from:%lu to:%lu", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __66__HUCameraActivityZoneEditorViewController_hasActivityZoneChanges__block_invoke_88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  [v8 point];
  v10 = v9;
  [v7 point];
  if (vabdd_f64(v10, v11) > 0.001)
  {
    [v8 point];
    v13 = v12;
    [v7 point];
    if (vabdd_f64(v13, v14) > 0.001)
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412802;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        v20 = 2048;
        v21 = a3;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Activity zone has changed. Points differ:%@ vs %@ at index:%lu.", &v16, 0x20u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)commitChangesAndDismissEditor
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(HUCameraActivityZoneEditorViewController *)self hasActivityZoneChanges])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    activityZoneCanvas = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    activityZones = [activityZoneCanvas activityZones];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HUCameraActivityZoneEditorViewController_commitChangesAndDismissEditor__block_invoke;
    v18[3] = &unk_277DB9340;
    v6 = v3;
    v19 = v6;
    [activityZones enumerateObjectsUsingBlock:v18];
    [(HUCameraActivityZoneEditorViewController *)self _displayProgressIndicatorWhileLoading];
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      activityZoneCanvas2 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
      displaysInclusionZones = [activityZoneCanvas2 displaysInclusionZones];
      *buf = 138412802;
      selfCopy = self;
      v22 = 1024;
      v23 = displaysInclusionZones;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Editor: Submitting zoneType inclusion:%{BOOL}d zones:%@", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    cameraProfile = [(HUCameraActivityZoneEditorViewController *)self cameraProfile];
    userSettings = [cameraProfile userSettings];
    activityZoneCanvas3 = [(HUCameraActivityZoneEditorViewController *)self activityZoneCanvas];
    displaysInclusionZones2 = [activityZoneCanvas3 displaysInclusionZones];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__HUCameraActivityZoneEditorViewController_commitChangesAndDismissEditor__block_invoke_94;
    v15[3] = &unk_277DB9368;
    objc_copyWeak(&v17, buf);
    v14 = v6;
    v16 = v14;
    [userSettings updateActivityZones:v14 areActivityZonesIncludedForSignificantEventDetection:displaysInclusionZones2 completionHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {

    [(HUCameraActivityZoneEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

void __73__HUCameraActivityZoneEditorViewController_commitChangesAndDismissEditor__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v3 lastObject];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Editor: Appending first point to the end of the array of points:%@", &v10, 0xCu);
      }

      v8 = [v3 firstObject];
      [v3 addObject:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277CD18B0]) initWithPoints:v3];
    [*(a1 + 32) addObject:v9];
  }
}

void __73__HUCameraActivityZoneEditorViewController_commitChangesAndDismissEditor__block_invoke_94(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Failure to update activity zones with error:%@", &v8, 0xCu);
    }

    [WeakRetained _updateNavigationBar];
    [WeakRetained displayErrorAlert];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) count];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Saved activity zones %lu without error.", &v8, 0xCu);
    }

    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_displayProgressIndicatorWhileLoading
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(HUCameraActivityZoneEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (HUCameraActivityZoneCanvasView)activityZoneCanvas
{
  activityZoneCanvas = self->_activityZoneCanvas;
  if (!activityZoneCanvas)
  {
    v4 = [HUCameraActivityZoneCanvasView alloc];
    view = [(HUCameraActivityZoneEditorViewController *)self view];
    [view bounds];
    v6 = [(HUCameraActivityZoneCanvasView *)v4 initWithFrame:?];

    [(HUCameraActivityZoneCanvasView *)v6 setDelegate:self];
    [(HUCameraActivityZoneCanvasView *)v6 setDisplaysInclusionZones:[(HUCameraActivityZoneEditorViewController *)self initialSettingDetectsInclusionZones]];
    initialActivityZones = [(HUCameraActivityZoneEditorViewController *)self initialActivityZones];
    [(HUCameraActivityZoneCanvasView *)v6 loadActivityZones:initialActivityZones];

    v8 = self->_activityZoneCanvas;
    self->_activityZoneCanvas = v6;

    activityZoneCanvas = self->_activityZoneCanvas;
  }

  return activityZoneCanvas;
}

- (UILabel)tutorialLabel
{
  tutorialLabel = self->_tutorialLabel;
  if (!tutorialLabel)
  {
    view = [(HUCameraActivityZoneEditorViewController *)self view];
    [view bounds];
    v6 = v5 + -20.0;

    v7 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{10.0, 60.0, v6, 50.0}];
    v8 = _HULocalizedStringWithDefaultValue(@"HUCameraActivityZoneTutorialLabelText", @"HUCameraActivityZoneTutorialLabelText", 1);
    [(UILabel *)v7 setText:v8];

    [(UILabel *)v7 setTextAlignment:1];
    [(UILabel *)v7 setNumberOfLines:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v7 setFont:v9];

    [(UILabel *)v7 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v7 setAutoresizingMask:2];
    v10 = self->_tutorialLabel;
    self->_tutorialLabel = v7;

    tutorialLabel = self->_tutorialLabel;
  }

  return tutorialLabel;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Editing complete. Dealloc.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = HUCameraActivityZoneEditorViewController;
  [(HUCameraActivityZoneEditorViewController *)&v4 dealloc];
}

@end