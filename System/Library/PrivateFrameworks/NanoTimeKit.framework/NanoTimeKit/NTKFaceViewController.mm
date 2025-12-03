@interface NTKFaceViewController
+ (id)_controllerForComplication:(id)complication face:(id)face slot:(id)slot;
+ (id)_createNormalDisplayForComplicationController:(id)controller slot:(id)slot face:(id)face faceView:(id)view;
+ (void)initialize;
- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event;
- (BOOL)_shouldHideFaceUI;
- (BOOL)_shouldWidgetComplicationsEnableTap;
- (BOOL)_shouldWidgetComplicationsShowSnapshots;
- (BOOL)_wheelChangedWithEvent:(id)event;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)faceView:(id)view wantsToDismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (BOOL)faceViewComplicationIsEmptyForSlot:(id)slot;
- (BOOL)shouldLoadLiveFaceAtNextScreenOff;
- (CGRect)launchRectForComplicationApplicationIdentifier:(id)identifier;
- (NSString)description;
- (NTKFaceViewController)initWithFace:(id)face configuration:(id)configuration;
- (NTKFaceViewControllerDelegate)delegate;
- (NTKFaceViewControllerStatusBarDelegate)statusBarDelegate;
- (double)editViewDarkeningViewAlphaForEditMode:(int64_t)mode;
- (id)PPTDescriptionForComplication:(id)complication;
- (id)PPTUniqueComplicationsToSlotForCurrentFace;
- (id)_dailySnapshot;
- (id)_newNormalDisplayForComplicationController:(id)controller slot:(id)slot;
- (id)_overrideDateForWake:(BOOL)wake;
- (id)_selectedVisibleSlotForEditMode:(int64_t)mode;
- (id)acquireComplicationTouchCancellationAssertion;
- (id)currentClockComplicationCountSet;
- (id)faceViewComplicationAppIdentifierForSlot:(id)slot;
- (id)faceViewComplicationControllerForSlot:(id)slot;
- (id)faceViewWantsFaceColorPalette;
- (id)removeStatusBarViewController;
- (id)tritium_complicationControllerForSlot:(id)slot;
- (int64_t)faceViewComplicationFamilyForSlot:(id)slot;
- (unint64_t)effectiveWidgetContentOverride;
- (void)PPTCleanupLastComplication;
- (void)PPTCreateComplication:(id)complication forSlot:(id)slot synchronously:(BOOL)synchronously;
- (void)PPTPrepareComplicationTest;
- (void)_applyConfigurationWithDuration:(double)duration;
- (void)_clearFaceLaunchRect;
- (void)_clearLastTappedComplication;
- (void)_configureDarkeningViewAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_ensureDetachedComplication:(id)complication;
- (void)_ensureNormalComplication:(id)complication forSlot:(id)slot;
- (void)_ensureNotLive;
- (void)_ensurePauseDate;
- (void)_faceSnapshotDidChange:(id)change;
- (void)_handleDeviceLockChange;
- (void)_handleStatusBarChange;
- (void)_insertDetachedComplicationDisplay:(id)display controller:(id)controller forSlot:(id)slot;
- (void)_insertNormalComplicationDisplay:(id)display controller:(id)controller forSlot:(id)slot;
- (void)_loadInitialComplicationVisibilityFromFace;
- (void)_removeDetachedComplicationForSlot:(id)slot andDisconnectDisplay:(BOOL)display;
- (void)_removeNormalComplicationForSlot:(id)slot andDisconnectDisplay:(BOOL)display;
- (void)_setDataMode:(int64_t)mode becomeLiveOnUnfreeze:(BOOL)unfreeze;
- (void)_setFaceViewResourceDirectoryFromFace;
- (void)_showStatusBarAfterWake;
- (void)_updateInteractivityOfComplicationDisplays;
- (void)_updateWidgetComplicationSnapshotState;
- (void)_validateIfCurrentSelectedColorStillExists;
- (void)_wrapperViewTapped:(id)tapped;
- (void)cleanupAfterZoom;
- (void)configureWithDuration:(double)duration block:(id)block;
- (void)dealloc;
- (void)enumerateComplicationControllersAndDisplaysWithBlock:(id)block;
- (void)faceConfigurationDidChange:(id)change;
- (void)faceResourceDirectoryDidChange:(id)change;
- (void)faceViewDidChangePaddingForStatusBar;
- (void)faceViewDidChangeStatusBarOverrideColor:(BOOL)color;
- (void)faceViewDidChangeWantsStatusBarIconShadow;
- (void)faceViewDidScrubToDate:(id)date forced:(BOOL)forced;
- (void)faceViewRequestedLaunchFromRect:(CGRect)rect;
- (void)faceViewUpdatedResourceDirectory:(id)directory wantsToTransferOwnership:(BOOL)ownership;
- (void)faceViewWantsComplicationKeylineFramesReloaded;
- (void)faceViewWantsStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)faceViewWantsToPresentViewController:(id)controller;
- (void)faceViewWantsUnadornedSnapshotViewRemoved;
- (void)faceViewWillEnterTimeTravel;
- (void)faceViewWillExitTimeTravel;
- (void)finalizeForSnapshottingWithMetrics:(id)metrics completion:(id)completion;
- (void)freeze;
- (void)freezeAfterDelay:(double)delay;
- (void)getComplicationController:(id *)controller andDisplay:(id *)display forSlot:(id)slot;
- (void)handleOrdinaryScreenWake;
- (void)handleWristRaiseScreenWake;
- (void)hideFaceEditingUIAnimated:(BOOL)animated destination:(unint64_t)destination completion:(id)completion;
- (void)loadView;
- (void)prepareForOrb;
- (void)prepareForSnapshotting;
- (void)prepareToZoomWithIconView:(id)view minDiameter:(double)diameter maxDiameter:(double)maxDiameter;
- (void)setDataMode:(int64_t)mode;
- (void)setIgnoreSnapshotImages:(BOOL)images;
- (void)setPauseDate:(id)date;
- (void)setShouldShowSnapshot:(BOOL)snapshot;
- (void)setShouldUseSampleTemplate:(BOOL)template;
- (void)setShowContentForUnadornedSnapshot:(BOOL)snapshot;
- (void)setShowsCanonicalContent:(BOOL)content;
- (void)setShowsLockedUI:(BOOL)i;
- (void)setSnapshotWidgetsAsPlaceholders:(BOOL)placeholders;
- (void)setStatusBarViewController:(id)controller;
- (void)setSuppressFaceViewInteraction:(BOOL)interaction;
- (void)setSupressesNonSnapshotUI:(BOOL)i;
- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot;
- (void)setZoomFraction:(double)fraction iconDiameter:(double)diameter;
- (void)traitCollectionDidChange:(id)change;
- (void)unfreeze;
- (void)viewDidLayoutSubviews;
@end

@implementation NTKFaceViewController

+ (void)initialize
{
  if (objc_opt_class() == self && NTKConfigureFaceDefaultsChangedNotification_onceToken != -1)
  {
    NTKConfigureFaceDefaultsChangedNotification_cold_1();
  }
}

- (NTKFaceViewController)initWithFace:(id)face configuration:(id)configuration
{
  faceCopy = face;
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = NTKFaceViewController;
  v9 = [(NTKFaceViewController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, face);
    [(NTKFace *)v10->_face addObserver:v10];
    [(NTKFace *)v10->_face performComplicationTypeMigration];
    v10->_normalComplicationControllersLock._os_unfair_lock_opaque = 0;
    v10->_detachedComplicationControllersLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    normalComplicationControllers = v10->_normalComplicationControllers;
    v10->_normalComplicationControllers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detachedComplicationControllers = v10->_detachedComplicationControllers;
    v10->_detachedComplicationControllers = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleDeviceLockChange name:*MEMORY[0x277CBB690] object:0];

    mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
    [mEMORY[0x277CBBB70] addSensitiveUIObserver:v10];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__faceSnapshotDidChange_ name:@"NTKFaceSnapshotChangedNotification" object:0];

    device = [faceCopy device];
    v10->_deviceLocked = [device isLocked];

    v22 = *(MEMORY[0x277CBF398] + 16);
    v23 = *MEMORY[0x277CBF398];
    v10->_faceLaunchRect.origin = *MEMORY[0x277CBF398];
    v10->_faceLaunchRect.size = v22;
    view = [(NTKFaceViewController *)v10 view];
    [(NTKFaceViewController *)v10 setDefinesPresentationContext:1];
    v10->_dataMode = 1;
    [(NTKFaceViewController *)v10 configureWithDuration:configurationCopy block:0.0];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v10 selector:sel__faceColorEditOptionsChanged name:@"NTKColorEditOptionsChangedNotificationName" object:v10->_face];

    v10->_editingFromFaceContainerFrame.origin = v23;
    v10->_editingFromFaceContainerFrame.size = v22;
  }

  return v10;
}

- (void)dealloc
{
  [(NTKFace *)self->_face removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBB690] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"NTKFaceSnapshotChangedNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"NTKColorEditOptionsChangedNotificationName" object:self->_face];

  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_19];
  removeStatusBarViewController = [(NTKFaceViewController *)self removeStatusBarViewController];
  if (removeStatusBarViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);
    [WeakRetained makeStatusBarViewControllerAvailableForReuse:removeStatusBarViewController];
  }

  v8.receiver = self;
  v8.super_class = NTKFaceViewController;
  [(NTKFaceViewController *)&v8 dealloc];
}

- (void)loadView
{
  v6 = objc_opt_new();
  faceView = [(NTKFace *)self->_face faceView];
  v4 = faceView;
  if (!faceView)
  {
    v4 = [NTKFaceView newFaceViewForFace:0];
  }

  objc_storeStrong(&self->_faceView, v4);
  if (!faceView)
  {
  }

  [(NTKFaceView *)self->_faceView setWidgetHostPriorityTransientSnapshot:self->_widgetHostPriorityTransientSnapshot];
  [(NTKFaceView *)self->_faceView setDelegate:self];
  [(NTKFaceViewController *)self _setFaceViewResourceDirectoryFromFace];
  [(NTKFaceView *)self->_faceView populateFaceViewEditOptionsFromFace:self->_face];
  [(NTKFaceViewController *)self _loadInitialComplicationVisibilityFromFace];
  if ([(NTKFaceViewController *)self _shouldHideFaceUI])
  {
    layer = [v6 layer];
    [layer setAllowsGroupOpacity:1];
  }

  [(NTKFaceView *)self->_faceView bounds];
  [v6 setBounds:?];
  [v6 addSubview:self->_faceView];
  [(NTKFaceViewController *)self setView:v6];
}

- (id)tritium_complicationControllerForSlot:(id)slot
{
  v5 = 0;
  [(NTKFaceViewController *)self getComplicationController:&v5 andDisplay:0 forSlot:slot];
  v3 = v5;

  return v3;
}

- (BOOL)_shouldHideFaceUI
{
  uiSensitivity = [objc_opt_class() uiSensitivity];
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(uiSensitivity) = [mEMORY[0x277CBBB70] shouldHideForSensitivity:uiSensitivity];

  return uiSensitivity;
}

- (void)setStatusBarViewController:(id)controller
{
  controllerCopy = controller;
  statusBarViewController = self->_statusBarViewController;
  if (statusBarViewController != controllerCopy)
  {
    v14 = controllerCopy;
    [(NTKClockStatusBarViewController *)statusBarViewController willMoveToParentViewController:0];
    view = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
    [view removeFromSuperview];

    [(NTKClockStatusBarViewController *)self->_statusBarViewController removeFromParentViewController];
    objc_storeStrong(&self->_statusBarViewController, controller);
    v8 = self->_statusBarViewController;
    [(NTKFaceView *)self->_faceView horizontalPaddingForStatusBar];
    [(NTKClockStatusBarViewController *)v8 setHorizontalPadding:?];
    v9 = self->_statusBarViewController;
    [(NTKFaceView *)self->_faceView verticalPaddingForStatusBar];
    [(NTKClockStatusBarViewController *)v9 setVerticalPadding:?];
    if (objc_opt_respondsToSelector())
    {
      v10 = self->_statusBarViewController;
      overrideColorForStatusBar = [(NTKFaceView *)self->_faceView overrideColorForStatusBar];
      [(NTKClockStatusBarViewController *)v10 setOverrideColor:overrideColorForStatusBar];
    }

    [(NTKFaceViewController *)self _handleStatusBarChange];
    if (objc_opt_respondsToSelector())
    {
      [(NTKClockStatusBarViewController *)self->_statusBarViewController setWantsIconShadow:[(NTKFaceView *)self->_faceView wantsStatusBarIconShadow]];
    }

    [(NTKFaceViewController *)self addChildViewController:self->_statusBarViewController];
    view2 = [(NTKFaceViewController *)self view];
    view3 = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
    [view2 addSubview:view3];

    [(NTKClockStatusBarViewController *)self->_statusBarViewController didMoveToParentViewController:self];
    controllerCopy = v14;
  }
}

- (id)removeStatusBarViewController
{
  statusBarViewController = self->_statusBarViewController;
  if (statusBarViewController)
  {
    [(NTKClockStatusBarViewController *)statusBarViewController willMoveToParentViewController:0];
    view = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
    [view removeFromSuperview];

    [(NTKClockStatusBarViewController *)self->_statusBarViewController removeFromParentViewController];
    v5 = self->_statusBarViewController;
    v6 = self->_statusBarViewController;
    self->_statusBarViewController = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)freeze
{
  [(NTKDelayedBlock *)self->_delayedFreezeBlock cancel];
  delayedFreezeBlock = self->_delayedFreezeBlock;
  self->_delayedFreezeBlock = 0;

  [(NTKFaceViewController *)self _ensureNotLive];
  self->_frozen = 1;
  faceView = self->_faceView;

  [(NTKFaceView *)faceView setFrozen:1];
}

- (void)freezeAfterDelay:(double)delay
{
  delayedFreezeBlock = self->_delayedFreezeBlock;
  if (delayedFreezeBlock)
  {

    [(NTKDelayedBlock *)delayedFreezeBlock resetWithDelay:?];
  }

  else
  {
    v6 = [NTKDelayedBlock alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__NTKFaceViewController_freezeAfterDelay___block_invoke;
    v9[3] = &unk_27877F2D8;
    v9[4] = self;
    v7 = [(NTKDelayedBlock *)v6 initWithDelay:v9 action:delay];
    v8 = self->_delayedFreezeBlock;
    self->_delayedFreezeBlock = v7;
  }
}

- (void)unfreeze
{
  [(NTKDelayedBlock *)self->_delayedFreezeBlock cancel];
  delayedFreezeBlock = self->_delayedFreezeBlock;
  self->_delayedFreezeBlock = 0;

  self->_frozen = 0;
  [(NTKFaceView *)self->_faceView setFrozen:0];
  if (self->_becomeLiveOnUnfreeze)
  {

    [(NTKFaceViewController *)self setDataMode:1];
  }
}

- (void)prepareForOrb
{
  [(NTKFaceViewController *)self dismissViewControllerAnimated:0 completion:0];
  faceView = self->_faceView;

  [(NTKFaceView *)faceView prepareForOrb];
}

- (void)setShowsLockedUI:(BOOL)i
{
  if (self->_showsLockedUI != i)
  {
    self->_showsLockedUI = i;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)_handleDeviceLockChange
{
  v12 = *MEMORY[0x277D85DE8];
  device = [(NTKFace *)self->_face device];
  isLocked = [device isLocked];

  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    device2 = [(NTKFace *)self->_face device];
    isLocked2 = [device2 isLocked];
    deviceLocked = self->_deviceLocked;
    v9[0] = 67109376;
    v9[1] = isLocked2;
    v10 = 1024;
    v11 = deviceLocked;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "FaceViewController received CLKDeviceLockStateChangedNotification locked?%i _deviceLocked?%i", v9, 0xEu);
  }

  if (self->_deviceLocked != isLocked)
  {
    self->_deviceLocked = isLocked;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)_faceSnapshotDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  object = [change object];
  face = [(NTKFaceViewController *)self face];
  dailySnapshotKey = [face dailySnapshotKey];
  v7 = [object isEqual:dailySnapshotKey];

  if ((v7 & 1) != 0 || [face wantsUnadornedSnapshot] && (objc_msgSend(face, "unadornedSnapshotKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(object, "isEqual:", v11), v11, v12))
  {
    faceView = [(NTKFaceViewController *)self faceView];
    editing = [faceView editing];

    if ((editing & 1) == 0)
    {
      v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = face;
        _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "FVC reloading snapshot for face %@", &v13, 0xCu);
      }

      [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(NTKFaceViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKFaceView *)self->_faceView setBounds:?];
  if (![(NTKFaceView *)self->_faceView zooming])
  {
    faceView = self->_faceView;
    MEMORY[0x2318D8E70](v4, v6, v8, v10);
    [(NTKFaceView *)faceView setCenter:?];
  }

  statusBarViewController = self->_statusBarViewController;
  if (statusBarViewController)
  {
    view2 = [(NTKClockStatusBarViewController *)statusBarViewController view];
    [view2 ntk_setBoundsAndPositionFromFrame:{v4, v6, v8, v10}];
    [view bringSubviewToFront:view2];
  }

  editView = self->_editView;
  v15 = view;
  if (editView)
  {
    [(NTKFaceEditView *)editView setFrame:v4, v6, v8, v10];
    [view bringSubviewToFront:self->_editView];
    v15 = view;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = NTKFaceViewController;
  [(NTKFaceViewController *)&v5 traitCollectionDidChange:change];
  [(NTKFaceView *)self->_faceView setNeedsLayout];
  view = [(NTKFaceViewController *)self view];
  [view setNeedsLayout];

  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_35];
}

- (void)prepareForSnapshotting
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(NTKFaceViewController *)self view];
  [view setBackgroundColor:clearColor];

  faceView = self->_faceView;

  [(NTKFaceView *)faceView _prepareForSnapshotting];
}

- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot
{
  if (self->_widgetHostPriorityTransientSnapshot != snapshot)
  {
    self->_widgetHostPriorityTransientSnapshot = snapshot;
    [(NTKFaceView *)self->_faceView setWidgetHostPriorityTransientSnapshot:?];
  }
}

- (void)finalizeForSnapshottingWithMetrics:(id)metrics completion:(id)completion
{
  metricsCopy = metrics;
  completionCopy = completion;
  v8 = self->_faceView;
  if (v8)
  {
    effectiveWidgetContentOverride = [(NTKFaceViewController *)self effectiveWidgetContentOverride];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_2;
    v28[3] = &__block_descriptor_40_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
    v28[4] = effectiveWidgetContentOverride;
    [(NTKFaceView *)v8 enumerateComplicationDisplayWrappersWithBlock:v28];
    if (metricsCopy)
    {
      v27 = 0;
      v10 = [metricsCopy childTaskNamed:@"Widgets" error:&v27];
      v11 = v27;
      if (!v10)
      {
        v12 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(NTKFaceViewController *)v11 finalizeForSnapshottingWithMetrics:v12 completion:v13, v14, v15, v16, v17, v18];
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_44;
    v22[3] = &unk_27877EAC8;
    v23 = metricsCopy;
    v24 = v10;
    v25 = v8;
    v26 = completionCopy;
    v21 = completionCopy;
    v20 = v10;
    [(NTKFaceView *)v25 ensureWidgetContentWithMetrics:v20 timeout:v22 completion:5.0];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke;
    block[3] = &unk_27877E960;
    v30 = completionCopy;
    v19 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v20 = v30;
  }
}

void __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:0 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v6;
    [v5 setContentOverride:v4];
    [v5 setContentPaused:0];
    [v5 setShowSnapshot:0];
  }
}

void __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    v29 = 0;
    v5 = [v4 finishWithError:&v29];
    v6 = v29;
    if ((v5 & 1) == 0)
    {
      v7 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_44_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  if (v3)
  {
    v14 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_44_cold_2(v3, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = dispatch_group_create();
  [*(a1 + 48) renderSynchronouslyWithImageQueueDiscard:1 inGroup:v21];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_45;
  v25[3] = &unk_27877DC88;
  v26 = v21;
  v27 = v3;
  v22 = *(a1 + 48);
  v28 = *(a1 + 56);
  v23 = v3;
  v24 = v21;
  [v22 _finalizeForSnapshotting:v25];
}

void __71__NTKFaceViewController_finalizeForSnapshottingWithMetrics_completion___block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [*(a1 + 40) userInfo];
    v6 = [v4 errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:1 userInfo:v5];
  }

  else
  {
    v6 = *(a1 + 40);
  }

  (*(*(a1 + 48) + 16))();
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKFaceViewController;
  v4 = [(NTKFaceViewController *)&v8 description];
  v5 = [(NTKFace *)self->_face description];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

- (void)getComplicationController:(id *)controller andDisplay:(id *)display forSlot:(id)slot
{
  slotCopy = slot;
  if (controller)
  {
    os_unfair_lock_lock(&self->_normalComplicationControllersLock);
    *controller = [(NSMutableDictionary *)self->_normalComplicationControllers objectForKey:slotCopy];
    os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
  }

  if (display)
  {
    *display = [(NTKFaceView *)self->_faceView normalComplicationDisplayWrapperForSlot:slotCopy];
  }
}

- (void)enumerateComplicationControllersAndDisplaysWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_normalComplicationControllersLock);
  v5 = [(NSMutableDictionary *)self->_normalComplicationControllers copy];
  os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NTKFaceViewController_enumerateComplicationControllersAndDisplaysWithBlock___block_invoke;
  v11[3] = &unk_27877F320;
  v6 = blockCopy;
  v11[4] = self;
  v12 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
  os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
  v7 = [(NSMutableDictionary *)self->_detachedComplicationControllers copy];
  os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__NTKFaceViewController_enumerateComplicationControllersAndDisplaysWithBlock___block_invoke_2;
  v9[3] = &unk_27877F320;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __78__NTKFaceViewController_enumerateComplicationControllersAndDisplaysWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 1312);
  v6 = a3;
  v7 = a2;
  v8 = [v5 normalComplicationDisplayWrapperForSlot:v7];
  (*(v4 + 16))(v4, v7, v6, v8);
}

void __78__NTKFaceViewController_enumerateComplicationControllersAndDisplaysWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 1312);
  v6 = a3;
  v7 = a2;
  v8 = [v5 detachedComplicationDisplayWrapperForSlot:v7];
  (*(v4 + 16))(v4, v7, v6, v8);
}

- (void)_updateWidgetComplicationSnapshotState
{
  _shouldWidgetComplicationsShowSnapshots = [(NTKFaceViewController *)self _shouldWidgetComplicationsShowSnapshots];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__NTKFaceViewController__updateWidgetComplicationSnapshotState__block_invoke;
  v4[3] = &__block_descriptor_33_e86_v32__0__NSString_8__NTKComplicationController_16__NTKComplicationDisplayWrapperView_24l;
  v5 = _shouldWidgetComplicationsShowSnapshots;
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v4];
}

uint64_t __63__NTKFaceViewController__updateWidgetComplicationSnapshotState__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__NTKFaceViewController__updateWidgetComplicationSnapshotState__block_invoke_2;
  v5[3] = &__block_descriptor_33_e59_v16__0__NTKMutableComplicationControllerDisplayProperties_8l;
  v6 = *(a1 + 32);
  return [a3 updatePropertiesForDisplayWrapper:a4 withBlock:v5];
}

- (BOOL)_shouldWidgetComplicationsShowSnapshots
{
  dataMode = self->_dataMode;
  if (dataMode <= 4 && ((0x1Du >> dataMode) & 1) != 0)
  {
    v3 = *(&self->super.super.super.isa + *off_27877F5E0[dataMode]);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)configureWithDuration:(double)duration block:(id)block
{
  self->_readyToApplyConfiguration = 0;
  if (block)
  {
    (*(block + 2))(block, self);
  }

  self->_readyToApplyConfiguration = 1;

  [(NTKFaceViewController *)self _applyConfigurationWithDuration:duration];
}

- (void)setShouldShowSnapshot:(BOOL)snapshot
{
  if (self->_shouldShowSnapshot != snapshot)
  {
    self->_shouldShowSnapshot = snapshot;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)setSupressesNonSnapshotUI:(BOOL)i
{
  if (self->_supressesNonSnapshotUI != i)
  {
    self->_supressesNonSnapshotUI = i;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)setShowsCanonicalContent:(BOOL)content
{
  if (self->_showsCanonicalContent != content)
  {
    self->_showsCanonicalContent = content;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)setShowContentForUnadornedSnapshot:(BOOL)snapshot
{
  if (self->_showContentForUnadornedSnapshot != snapshot)
  {
    self->_showContentForUnadornedSnapshot = snapshot;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)setIgnoreSnapshotImages:(BOOL)images
{
  if (self->_ignoreSnapshotImages != images)
  {
    self->_ignoreSnapshotImages = images;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)setDataMode:(int64_t)mode
{
  if (mode == 1 && self->_frozen)
  {
    v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Frozen NTKFaceViewController can't show live data. View will become live without animation after unfreeze.", v5, 2u);
    }

    self->_becomeLiveOnUnfreeze = 1;
  }

  else
  {

    [NTKFaceViewController _setDataMode:"_setDataMode:becomeLiveOnUnfreeze:" becomeLiveOnUnfreeze:?];
  }
}

- (void)setPauseDate:(id)date
{
  objc_storeStrong(&self->_pauseDate, date);
  if (self->_dataMode == 2)
  {

    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (void)_ensureNotLive
{
  if (self->_dataMode == 1)
  {
    [(NTKFaceViewController *)self _ensurePauseDate];

    [(NTKFaceViewController *)self _setDataMode:2 becomeLiveOnUnfreeze:1];
  }
}

- (void)_ensurePauseDate
{
  if (!self->_pauseDate)
  {
    v3 = [MEMORY[0x277CBB700] now];
    pauseDate = self->_pauseDate;
    self->_pauseDate = v3;
  }
}

- (id)_overrideDateForWake:(BOOL)wake
{
  v5 = NTKNilOrDateOverrideInDemoMode();
  dataMode = self->_dataMode;
  if (dataMode == 3)
  {
    v7 = NTKIdealizedDate();
    goto LABEL_6;
  }

  if (dataMode == 2 && !wake)
  {
    [(NTKFaceViewController *)self _ensurePauseDate];
    v7 = self->_pauseDate;
LABEL_6:
    v8 = v7;

    v5 = v8;
  }

  v9 = CLKForcedTime();

  if (v9)
  {
    v10 = NTKIdealizedDate();

    v5 = v10;
  }

  return v5;
}

- (void)_setDataMode:(int64_t)mode becomeLiveOnUnfreeze:(BOOL)unfreeze
{
  unfreezeCopy = unfreeze;
  v15 = *MEMORY[0x277D85DE8];
  v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    face = self->_face;
    v9 = 134218498;
    modeCopy = mode;
    v11 = 1024;
    v12 = unfreezeCopy;
    v13 = 2112;
    v14 = face;
    _os_log_debug_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEBUG, "Set Data Mode: %ld, become live: %d, %@", &v9, 0x1Cu);
  }

  self->_becomeLiveOnUnfreeze = unfreezeCopy;
  if (self->_dataMode != mode)
  {
    self->_dataMode = mode;
    self->_hasGoneLive |= mode != 3;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
    if (self->_dataMode == 1)
    {
      [(NTKFaceView *)self->_faceView setNeedsRender];
    }
  }
}

- (void)_applyConfigurationWithDuration:(double)duration
{
  v107 = *MEMORY[0x277D85DE8];
  if (!self->_readyToApplyConfiguration)
  {
    return;
  }

  kdebug_trace();
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = __Block_byref_object_copy__4;
  v89[4] = __Block_byref_object_dispose__4;
  v90 = 0;
  v86 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v88 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = __Block_byref_object_copy__4;
  v85[4] = __Block_byref_object_dispose__4;
  if (self->_ignoreSnapshotImages)
  {
    v66 = &__block_literal_global_62;
    v67 = &__block_literal_global_60;
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_3;
    aBlock[3] = &unk_27877F3A8;
    aBlock[5] = v89;
    aBlock[6] = v91;
    aBlock[4] = self;
    v67 = _Block_copy(aBlock);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_4;
    v83[3] = &unk_27877F3A8;
    v83[5] = v85;
    v83[6] = v87;
    v83[4] = self;
    v66 = _Block_copy(v83);
  }

  if (self->_hasGoneLive)
  {
    v5 = 0;
  }

  else
  {
    v6 = v67[2]();
    v5 = v6 != 0;
  }

  v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hasGoneLive = self->_hasGoneLive;
    *buf = 134218240;
    v96 = v5;
    v97 = 2048;
    v98 = hasGoneLive;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Applying usingSwitcherSnapshot:%lu _hasGoneLive:%lu", buf, 0x16u);
  }

  faceView = self->_faceView;
  if (v5)
  {
    switcherSnapshotView = [(NTKFaceView *)faceView switcherSnapshotView];
    v11 = switcherSnapshotView == 0;

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x277D755E8]);
      if (NTKDebugShowVisualIndicatorOnSnapshot())
      {
        layer = [v12 layer];
        [layer setBorderWidth:3.0];

        yellowColor = [MEMORY[0x277D75348] yellowColor];
        v15 = yellowColor;
        cGColor = [yellowColor CGColor];
        layer2 = [v12 layer];
        [layer2 setBorderColor:cGColor];
      }

      [(NTKFaceView *)self->_faceView setSwitcherSnapshotView:v12];
    }

    switcherSnapshotView2 = [(NTKFaceView *)self->_faceView switcherSnapshotView];
    v19 = v67[2]();
    [switcherSnapshotView2 setImage:v19];

    v20 = 0;
  }

  else
  {
    [(NTKFaceView *)faceView setSwitcherSnapshotView:0];
    if (![(NTKFaceView *)self->_faceView supportsUnadornedSnapshot]|| self->_hasRemovedUnadornedSnapshot || self->_wantsRemoveUnadorned)
    {
      v20 = 0;
      goto LABEL_21;
    }

    switcherSnapshotView2 = v66[2]();
    v20 = switcherSnapshotView2 != 0;
  }

LABEL_21:
  v21 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = self->_faceView;
    supportsUnadornedSnapshot = [(NTKFaceView *)v23 supportsUnadornedSnapshot];
    hasRemovedUnadornedSnapshot = self->_hasRemovedUnadornedSnapshot;
    wantsRemoveUnadorned = self->_wantsRemoveUnadorned;
    *buf = 138413570;
    v96 = v22;
    v97 = 2048;
    v98 = v23;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = supportsUnadornedSnapshot;
    v103 = 2048;
    v104 = hasRemovedUnadornedSnapshot;
    v105 = 2048;
    v106 = wantsRemoveUnadorned;
    _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "[%@-%p] Applying usingSwitcherSnapshot:%lu supportsUnadornedSnapshot:%lu _hasRemovedUnadornedSnapshot:%lu _wantsRemoveUnadorned:%lu", buf, 0x3Eu);
  }

  if (v20)
  {
    if (!self->_hasUsedUnadornedSnapshot)
    {
      unadornedSnapshotView = [(NTKFaceView *)self->_faceView unadornedSnapshotView];
      v28 = unadornedSnapshotView == 0;

      if (v28)
      {
        v29 = objc_alloc_init(MEMORY[0x277D755E8]);
        if (NTKDebugShowVisualIndicatorOnSnapshot())
        {
          layer3 = [v29 layer];
          [layer3 setBorderWidth:3.0];

          redColor = [MEMORY[0x277D75348] redColor];
          v32 = redColor;
          cGColor2 = [redColor CGColor];
          layer4 = [v29 layer];
          [layer4 setBorderColor:cGColor2];
        }

        [(NTKFaceView *)self->_faceView setUnadornedSnapshotView:v29];
        [(NTKFaceView *)self->_faceView addSubview:v29];
        [(NTKFaceView *)self->_faceView sendSubviewToBack:v29];
        self->_hasUsedUnadornedSnapshot = 1;
      }
    }

    unadornedSnapshotView2 = [(NTKFaceView *)self->_faceView unadornedSnapshotView];
    v36 = v66[2]();
    [unadornedSnapshotView2 setImage:v36];
  }

  else
  {
    v37 = self->_hasUsedUnadornedSnapshot && !self->_hasRemovedUnadornedSnapshot;
    v38 = self->_wantsRemoveUnadorned;
    if ([(NTKFaceView *)self->_faceView supportsUnadornedSnapshot])
    {
      v39 = v66[2]();
      v40 = v39 == 0;
    }

    else
    {
      v40 = 1;
    }

    if (v37 || v38 || !v5 && v40)
    {
      unadornedSnapshotView3 = [(NTKFaceView *)self->_faceView unadornedSnapshotView];
      [unadornedSnapshotView3 removeFromSuperview];

      [(NTKFaceView *)self->_faceView setUnadornedSnapshotView:0];
      [(NTKFaceView *)self->_faceView loadContentToReplaceUnadornedSnapshot];
      [(NTKFaceView *)self->_faceView handleUnadornedSnapshotRemoved];
      self->_hasRemovedUnadornedSnapshot = 1;
      self->_wantsRemoveUnadorned = 0;
    }
  }

  if (self->_supressesNonSnapshotUI)
  {
    v42 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v42, OS_LOG_TYPE_DEFAULT, "Applying _supressesNonSnapshotUI", buf, 2u);
    }

    [(NTKFaceView *)self->_faceView loadContentToReplaceUnadornedSnapshot];
  }

  [(NTKFaceView *)self->_faceView setShowContentForUnadornedSnapshot:self->_showContentForUnadornedSnapshot];
  [(NTKFaceView *)self->_faceView setShouldShowUnsnapshotableContent:!v5];
  if (!v5 && NTKSnapshotSwitchingEnabled() && [(NTKFaceView *)self->_faceView dataMode]== 3)
  {
    v43 = self->_faceView;
    v44 = NTKIdealizedDate();
    [(NTKFaceView *)v43 setOverrideDate:v44 duration:0.0];
  }

  [(NTKFaceView *)self->_faceView setDataMode:self->_dataMode];
  [(NTKFaceView *)self->_faceView setShowsCanonicalContent:self->_showsCanonicalContent];
  if (self->_dataMode == 3)
  {
    [(NTKClockStatusBarViewController *)self->_statusBarViewController hideAnimated:0];
  }

  v45 = [(NTKFaceViewController *)self _overrideDateForWake:0];
  [(NTKFaceView *)self->_faceView setOverrideDate:v45 duration:duration];
  v65 = v45;
  v46 = self->_showsLockedUI || self->_deviceLocked;
  v47 = v46;
  [(NTKFaceView *)self->_faceView setShowsLockedUI:v46];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_64;
  v81[3] = &unk_27877F3D0;
  v81[4] = self;
  v82 = v5;
  v48 = _Block_copy(v81);
  face = self->_face;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_2_66;
  v79[3] = &unk_27877F3F8;
  v79[4] = self;
  v64 = v48;
  v80 = v64;
  [(NTKFace *)face enumerateComplicationSlotsWithBlock:v79];
  _detachedComplicationDisplays = [(NTKFaceView *)self->_faceView _detachedComplicationDisplays];
  v51 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v52 = _detachedComplicationDisplays;
  v53 = [v52 countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (v53)
  {
    v54 = *v76;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v76 != v54)
        {
          objc_enumerationMutation(v52);
        }

        identifier = [*(*(&v75 + 1) + 8 * i) identifier];
        [v51 addObject:identifier];
      }

      v53 = [v52 countByEnumeratingWithState:&v75 objects:v94 count:16];
    }

    while (v53);
  }

  os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
  allKeys = [(NSMutableDictionary *)self->_detachedComplicationControllers allKeys];
  v58 = [allKeys copy];

  os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
  v74 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v59 = v58;
  v60 = [v59 countByEnumeratingWithState:&v71 objects:v93 count:16];
  if (v60)
  {
    v61 = *v72;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v72 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = *(*(&v71 + 1) + 8 * j);
        if (([v51 containsObject:v63] & 1) == 0)
        {
          [(NTKFaceViewController *)self _removeDetachedComplicationForSlot:v63 andDisconnectDisplay:1];
        }
      }

      v60 = [v59 countByEnumeratingWithState:&v71 objects:v93 count:16];
    }

    while (v60);
  }

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_3_69;
  v70[3] = &unk_27877F420;
  v70[4] = self;
  [v52 enumerateObjectsUsingBlock:v70];
  kdebug_trace();
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_4_71;
  v68[3] = &unk_27877F470;
  v68[4] = self;
  v69 = v47;
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v68];
  [(NTKFaceViewController *)self _updateInteractivityOfComplicationDisplays];
  [(NTKFaceViewController *)self _updateWidgetVisibilityOfComplicationDisplays];
  kdebug_trace();
  [(NTKFaceView *)self->_faceView setNeedsLayout];
  kdebug_trace();

  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(v91, 8);
}

id __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    v3 = *(*(a1 + 48) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      v4 = [*(a1 + 32) _dailySnapshot];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1 + 48) + 8);
    }

    *(v3 + 24) = 1;
    v1 = *(*(*(a1 + 40) + 8) + 40);
  }

  v7 = v1;

  return v7;
}

id __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    v3 = *(*(a1 + 48) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      v4 = [*(a1 + 32) _unadornedSnapshot];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1 + 48) + 8);
    }

    *(v3 + 24) = 1;
    v1 = *(*(*(a1 + 40) + 8) + 40);
  }

  v7 = v1;

  return v7;
}

uint64_t __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ((*(v7 + 1249) & 1) != 0 || *(a1 + 40) == 1)
  {
    if (*(v7 + 1252) & 1) != 0 || ([*(v7 + 1312) complicationIsHiddenAtSlot:v6])
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40) ^ 1;
    }
  }

  else if ([*(v7 + 1312) complicationIsHiddenAtSlot:v6])
  {
    v8 = [*(*(a1 + 32) + 1312) editing];
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_2_66(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 1304) complicationForSlot:?];
  if (v3 && (*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) _ensureComplication:v3 forSlot:v4];
  }

  else
  {
    [*(a1 + 32) _removeComplicationForSlot:v4];
  }
}

void __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_4_71(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 1288);
  v7 = a4;
  v8 = a3;
  [v8 setPauseDate:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NTKFaceViewController__applyConfigurationWithDuration___block_invoke_5;
  v9[3] = &unk_27877F448;
  v9[4] = *(a1 + 32);
  [v8 updatePropertiesForDisplayWrapper:v7 withBlock:v9];

  [v8 setShowsLockedUI:*(a1 + 40)];
}

- (void)hideFaceEditingUIAnimated:(BOOL)animated destination:(unint64_t)destination completion:(id)completion
{
  animatedCopy = animated;
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = _NTKLoggingObjectForDomain(11, "NTKLoggingDomainFaceLibraryViewController");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11[0] = 67109634;
    v11[1] = animatedCopy;
    v12 = 2048;
    destinationCopy = destination;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "#events hideFaceEditingUIAnimated: %d, destination: %lu, for %@", v11, 0x1Cu);
  }

  completionCopy[2](completionCopy);
}

- (BOOL)canBecomeFirstResponder
{
  presentedViewController = [(NTKFaceViewController *)self presentedViewController];

  if (presentedViewController && (-[NTKFaceViewController faceView](self, "faceView"), v4 = objc_claimAutoreleasedReturnValue(), -[NTKFaceViewController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 presentedViewControllerShouldBecomeFirstResponder:v5], v5, v4, v6))
  {
    presentedViewController2 = [(NTKFaceViewController *)self presentedViewController];
    canBecomeFirstResponder = [presentedViewController2 canBecomeFirstResponder];

    return canBecomeFirstResponder;
  }

  else
  {
    faceView = [(NTKFaceViewController *)self faceView];
    canBecomeFirstResponder2 = [faceView canBecomeFirstResponder];

    if (canBecomeFirstResponder2)
    {
      return 1;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = NTKFaceViewController;
      return [(NTKFaceViewController *)&v12 canBecomeFirstResponder];
    }
  }
}

- (BOOL)becomeFirstResponder
{
  presentedViewController = [(NTKFaceViewController *)self presentedViewController];

  if (presentedViewController && (-[NTKFaceViewController faceView](self, "faceView"), v4 = objc_claimAutoreleasedReturnValue(), -[NTKFaceViewController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 presentedViewControllerShouldBecomeFirstResponder:v5], v5, v4, v6))
  {
    presentedViewController2 = [(NTKFaceViewController *)self presentedViewController];
    becomeFirstResponder = [presentedViewController2 becomeFirstResponder];

    return becomeFirstResponder;
  }

  else
  {
    faceView = [(NTKFaceViewController *)self faceView];
    becomeFirstResponder2 = [faceView becomeFirstResponder];

    if (becomeFirstResponder2)
    {
      return 1;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = NTKFaceViewController;
      return [(NTKFaceViewController *)&v12 becomeFirstResponder];
    }
  }
}

- (void)_loadInitialComplicationVisibilityFromFace
{
  _complicationSlotsHiddenByCurrentConfiguration = [(NTKFaceView *)self->_faceView _complicationSlotsHiddenByCurrentConfiguration];
  if ([_complicationSlotsHiddenByCurrentConfiguration count])
  {
    face = self->_face;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__NTKFaceViewController__loadInitialComplicationVisibilityFromFace__block_invoke;
    v5[3] = &unk_27877F498;
    v5[4] = self;
    v6 = _complicationSlotsHiddenByCurrentConfiguration;
    [(NTKFace *)face enumerateComplicationSlotsWithBlock:v5];
  }
}

void __67__NTKFaceViewController__loadInitialComplicationVisibilityFromFace__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1312);
  v4 = a2;
  [v3 setComplicationHidden:objc_msgSend(v2 atSlot:{"containsObject:", v4), v4}];
}

- (void)_setFaceViewResourceDirectoryFromFace
{
  faceView = self->_faceView;
  resourceDirectory = [(NTKFace *)self->_face resourceDirectory];
  [(NTKFaceView *)faceView setResourceDirectory:resourceDirectory];
}

- (void)faceViewWantsStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  statusBarViewController = self->_statusBarViewController;
  if (hidden)
  {
    [(NTKClockStatusBarViewController *)statusBarViewController hideAnimated:animated];
  }

  else
  {
    [(NTKClockStatusBarViewController *)statusBarViewController showAnimated:animated];
  }
}

- (void)faceViewDidChangeWantsStatusBarIconShadow
{
  if (objc_opt_respondsToSelector())
  {
    statusBarViewController = self->_statusBarViewController;
    wantsStatusBarIconShadow = [(NTKFaceView *)self->_faceView wantsStatusBarIconShadow];

    [(NTKClockStatusBarViewController *)statusBarViewController setWantsIconShadow:wantsStatusBarIconShadow];
  }
}

- (void)faceViewDidChangePaddingForStatusBar
{
  if (objc_opt_respondsToSelector())
  {
    statusBarViewController = self->_statusBarViewController;
    [(NTKFaceView *)self->_faceView horizontalPaddingForStatusBar];
    [(NTKClockStatusBarViewController *)statusBarViewController setHorizontalPadding:?];
    v4 = self->_statusBarViewController;
    [(NTKFaceView *)self->_faceView verticalPaddingForStatusBar];

    [(NTKClockStatusBarViewController *)v4 setVerticalPadding:?];
  }
}

- (void)faceViewDidChangeStatusBarOverrideColor:(BOOL)color
{
  if (objc_opt_respondsToSelector())
  {
    statusBarViewController = self->_statusBarViewController;
    overrideColorForStatusBar = [(NTKFaceView *)self->_faceView overrideColorForStatusBar];
    [(NTKClockStatusBarViewController *)statusBarViewController setOverrideColor:overrideColorForStatusBar];
  }
}

- (void)faceViewWantsComplicationKeylineFramesReloaded
{
  v3 = objc_opt_class();
  device = [(NTKFace *)self->_face device];
  v5 = [v3 fixedComplicationSlotsForDevice:device];

  face = self->_face;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__NTKFaceViewController_faceViewWantsComplicationKeylineFramesReloaded__block_invoke;
  v8[3] = &unk_27877F498;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  [(NTKFace *)face enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v8];
}

void __71__NTKFaceViewController_faceViewWantsComplicationKeylineFramesReloaded__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = NTKFaceLibraryTabEditorEnabled();
    v4 = *(a1 + 40);
    v5 = *(v4 + 1024);
    [*(v4 + 1312) keylineFrameForComplicationSlot:v8 selected:v3 ^ 1u];
    [v5 setSelectedKeylineFrame:v8 forKey:1 editMode:?];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1024);
    [*(v6 + 1312) keylineFrameForComplicationSlot:v8 selected:0];
    [v7 setDeselectedKeylineFrame:v8 forKey:1 editMode:?];
  }
}

- (void)faceViewWillEnterTimeTravel
{
  [(NTKFaceViewController *)self faceViewWantsStatusBarHidden:1 animated:1];

  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_80];
}

void __52__NTKFaceViewController_faceViewWillEnterTimeTravel__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  if (([a3 conformsToProtocol:&unk_28A7FC4D8] & 1) == 0)
  {
    [v5 setDimmed:1];
  }
}

- (void)faceViewDidScrubToDate:(id)date forced:(BOOL)forced
{
  dateCopy = date;
  v7 = NTKRoundDateDownToNearestMinute();
  if (forced)
  {
    objc_storeStrong(&self->_scrubDate, v7);
LABEL_3:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__NTKFaceViewController_faceViewDidScrubToDate_forced___block_invoke_2;
    v13[3] = &unk_27877F4C0;
    v14 = dateCopy;
    [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v13];

    goto LABEL_6;
  }

  if (![(NSDate *)self->_scrubDate isEqualToDate:v7])
  {
    objc_storeStrong(&self->_scrubDate, v7);
    if (!self->_time_travel_update_timer)
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      time_travel_update_timer = self->_time_travel_update_timer;
      self->_time_travel_update_timer = v8;

      v10 = self->_time_travel_update_timer;
      v11 = dispatch_time(0, 32000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      v12 = self->_time_travel_update_timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __55__NTKFaceViewController_faceViewDidScrubToDate_forced___block_invoke;
      handler[3] = &unk_27877DB10;
      handler[4] = self;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(self->_time_travel_update_timer);
      goto LABEL_3;
    }
  }

LABEL_6:
}

void __55__NTKFaceViewController_faceViewDidScrubToDate_forced___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1120);
  *(v1 + 1120) = 0;
}

void __55__NTKFaceViewController_faceViewDidScrubToDate_forced___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if ([v7 conformsToProtocol:&unk_28A7FC4D8])
  {
    [v7 setTimeTravelDate:*(a1 + 32) animated:0];
    [v6 setTimeTravelDate:*(a1 + 32) animated:0];
  }
}

- (void)faceViewWillExitTimeTravel
{
  faceView = [(NTKFaceViewController *)self faceView];
  -[NTKFaceViewController faceViewWantsStatusBarHidden:animated:](self, "faceViewWantsStatusBarHidden:animated:", [faceView wantsStatusBarHidden], 1);

  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_85];
}

void __51__NTKFaceViewController_faceViewWillExitTimeTravel__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  if (([a3 conformsToProtocol:&unk_28A7FC4D8] & 1) == 0)
  {
    [v5 setDimmed:0];
  }
}

- (void)faceViewWantsUnadornedSnapshotViewRemoved
{
  if (!self->_hasRemovedUnadornedSnapshot)
  {
    self->_wantsRemoveUnadorned = 1;
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
  }
}

- (BOOL)faceViewComplicationIsEmptyForSlot:(id)slot
{
  v3 = [(NTKFace *)self->_face complicationForSlot:slot];
  v4 = [v3 complicationType] == 0;

  return v4;
}

- (void)faceViewUpdatedResourceDirectory:(id)directory wantsToTransferOwnership:(BOOL)ownership
{
  face = self->_face;
  if (ownership)
  {
    [(NTKFace *)face setResourceDirectoryByTransferringOwnership:directory];
  }

  else
  {
    [(NTKFace *)face setResourceDirectory:directory];
  }
}

- (void)faceViewWantsToPresentViewController:(id)controller
{
  v8 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:6];
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = controllerCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Presenting view controller %@", &v6, 0xCu);
  }

  [(NTKFaceViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (BOOL)faceView:(id)view wantsToDismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(NTKFaceViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [(NTKFaceViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  return presentedViewController != 0;
}

- (id)faceViewComplicationAppIdentifierForSlot:(id)slot
{
  v3 = [(NTKFace *)self->_face complicationForSlot:slot];
  if ([v3 complicationType])
  {
    appIdentifier = [v3 appIdentifier];
  }

  else
  {
    appIdentifier = 0;
  }

  return appIdentifier;
}

- (int64_t)faceViewComplicationFamilyForSlot:(id)slot
{
  face = self->_face;
  slotCopy = slot;
  v6 = [(NTKFaceViewController *)self faceViewComplicationForSlot:slotCopy];
  v7 = [(NTKFace *)face preferredComplicationFamilyForComplication:v6 withSlot:slotCopy];

  return v7;
}

- (id)faceViewComplicationControllerForSlot:(id)slot
{
  v5 = 0;
  [(NTKFaceViewController *)self getComplicationController:&v5 andDisplay:0 forSlot:slot];
  v3 = v5;

  return v3;
}

- (id)faceViewWantsFaceColorPalette
{
  if ([(NTKFace *)self->_face supportsPigmentEditOption])
  {
    v2 = [NTKFaceColorPalette alloc];
    pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [(NTKFaceColorPalette *)v2 initWithDomainName:pigmentFaceDomain inBundle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)PPTUniqueComplicationsToSlotForCurrentFace
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  face = self->_face;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__NTKFaceViewController_PPTUniqueComplicationsToSlotForCurrentFace__block_invoke;
  v11[3] = &unk_27877F4E8;
  v11[4] = self;
  v12 = dictionary2;
  v6 = dictionary;
  v13 = v6;
  v7 = dictionary2;
  [(NTKFace *)face enumerateComplicationSlotsWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __67__NTKFaceViewController_PPTUniqueComplicationsToSlotForCurrentFace__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(*(a1 + 32) + 1304) allowedComplicationsForSlot:v3];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v13 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 1304), "preferredComplicationFamilyForComplication:withSlot:", v7, v3)}];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "complicationType")}];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v8];
        if (!v10)
        {
          v10 = [MEMORY[0x277CBEB38] dictionary];
          [*(a1 + 40) setObject:v10 forKeyedSubscript:v8];
        }

        v11 = [v10 objectForKeyedSubscript:v9];

        if (!v11)
        {
          [v10 setObject:v7 forKeyedSubscript:v9];
          [*(a1 + 48) setObject:v3 forKeyedSubscript:v7];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)PPTPrepareComplicationTest
{
  [(NTKFaceView *)self->_faceView removeFromSuperview];
  [MEMORY[0x277CD9FF0] flush];
  v2 = MEMORY[0x277CD9FF0];

  [v2 synchronize];
}

- (void)PPTCreateComplication:(id)complication forSlot:(id)slot synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  complicationCopy = complication;
  slotCopy = slot;
  [(NTKFace *)self->_face faceStyle];
  [(NTKFace *)self->_face preferredComplicationFamilyForComplication:complicationCopy withSlot:slotCopy];
  [complicationCopy complicationType];
  kdebug_trace();
  dataMode = [(NTKFaceViewController *)self dataMode];
  if (synchronouslyCopy)
  {
    [(NTKFaceViewController *)self setDataMode:3];
  }

  v10 = [objc_opt_class() _controllerForComplication:complicationCopy face:self->_face slot:slotCopy];
  pptComplicationController = self->_pptComplicationController;
  self->_pptComplicationController = v10;

  v12 = [(NTKFaceViewController *)self _newNormalDisplayForComplicationController:self->_pptComplicationController slot:slotCopy];
  pptComplicationDisplay = self->_pptComplicationDisplay;
  self->_pptComplicationDisplay = v12;

  view = [(NTKFaceViewController *)self view];
  [view addSubview:self->_pptComplicationDisplay];

  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] synchronize];
  if (synchronouslyCopy)
  {
    [(NTKFaceViewController *)self setDataMode:dataMode];
  }

  [(NTKFace *)self->_face faceStyle];
  [(NTKFace *)self->_face preferredComplicationFamilyForComplication:complicationCopy withSlot:slotCopy];
  [complicationCopy complicationType];
  kdebug_trace();
}

- (void)PPTCleanupLastComplication
{
  [(NTKComplicationDisplayWrapperView *)self->_pptComplicationDisplay removeFromSuperview];
  [(NTKComplicationController *)self->_pptComplicationController removeDisplayWrapper:self->_pptComplicationDisplay];
  pptComplicationDisplay = self->_pptComplicationDisplay;
  self->_pptComplicationDisplay = 0;

  pptComplicationController = self->_pptComplicationController;
  self->_pptComplicationController = 0;

  view = [(NTKFaceViewController *)self view];
  [view addSubview:self->_faceView];

  view2 = [(NTKFaceViewController *)self view];
  [view2 setNeedsLayout];
}

- (id)PPTDescriptionForComplication:(id)complication
{
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(complication, "complicationType")}];
  v4 = NTKComplicationTypeDescription(v3);

  return v4;
}

- (void)faceConfigurationDidChange:(id)change
{
  if (self->_face == change)
  {
    colorPickerConfig = self->_colorPickerConfig;
    self->_colorPickerConfig = 0;
    changeCopy = change;

    [(NTKFaceView *)self->_faceView populateFaceViewEditOptionsFromFace:changeCopy];
    [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
    [(NTKFaceViewController *)self _clearFaceLaunchRect];

    [(NTKFaceViewController *)self _clearLastTappedComplication];
  }
}

- (void)faceResourceDirectoryDidChange:(id)change
{
  [(NTKFaceViewController *)self _setFaceViewResourceDirectoryFromFace];

  [(NTKFaceViewController *)self _applyConfigurationWithDuration:0.0];
}

- (void)prepareToZoomWithIconView:(id)view minDiameter:(double)diameter maxDiameter:(double)maxDiameter
{
  kdebug_trace();
  self->_zoomingMinDiameter = diameter;
  self->_zoomingMaxDiameter = maxDiameter;
  view = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
  view2 = [(NTKFaceViewController *)self view];
  [(NTKFaceView *)self->_faceView center];
  [view2 convertPoint:view toView:?];
  v10 = v9;
  v12 = v11;

  [view bounds];
  v13 = v10 / CGRectGetWidth(v19);
  [view bounds];
  v14 = v12 / CGRectGetHeight(v20);
  layer = [view layer];
  [layer setAnchorPoint:{v13, v14}];

  [(NTKFaceView *)self->_faceView prepareToZoom];
  view3 = [(NTKFaceViewController *)self view];
  [view3 layoutIfNeeded];

  [(NTKFaceView *)self->_faceView layoutIfNeeded];
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_92];
}

- (void)setZoomFraction:(double)fraction iconDiameter:(double)diameter
{
  kdebug_trace();
  zoomingMaxDiameter = self->_zoomingMaxDiameter;
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, diameter / zoomingMaxDiameter, diameter / zoomingMaxDiameter);
  v9 = v10;
  [(NTKFaceView *)self->_faceView setTransform:&v9];
  v8 = v10;
  view = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
  v9 = v8;
  [view setTransform:&v9];

  CLKInterpolateBetweenFloatsClipped();
  [(NTKFaceView *)self->_faceView setAlpha:?];
}

- (void)cleanupAfterZoom
{
  view = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
  layer = [view layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  view2 = [(NTKClockStatusBarViewController *)self->_statusBarViewController view];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v12 = *MEMORY[0x277CBF2C0];
  v11 = v12;
  v13 = v10;
  v14 = *(MEMORY[0x277CBF2C0] + 32);
  v9 = v14;
  [view2 setTransform:&v12];

  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:&__block_literal_global_94];
  [(NTKFaceView *)self->_faceView cleanupAfterZoom];
  [(NTKFaceView *)self->_faceView setAlpha:1.0];
  faceView = self->_faceView;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(NTKFaceView *)faceView setTransform:&v12];
  view3 = [(NTKFaceViewController *)self view];
  [view3 bounds];
  [(NTKFaceView *)self->_faceView setFrame:?];

  view4 = [(NTKFaceViewController *)self view];
  [view4 setNeedsLayout];

  kdebug_trace();
}

- (BOOL)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  editView = self->_editView;
  if (editView)
  {
    goto LABEL_7;
  }

  if (!NTKStarbearEnabled() || [(NTKFaceView *)self->_faceView dataMode]!= 3 && ([(NTKFaceViewController *)self presentedViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    editView = self->_faceView;
LABEL_7:
    v8 = editView;
    v7 = [v8 _wheelChangedWithEvent:eventCopy];

    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event
{
  editView = self->_editView;
  if (!editView)
  {
    editView = self->_faceView;
  }

  v7 = editView;
  v8 = [v7 _handlePhysicalButton:button event:event];

  return v8;
}

- (void)handleWristRaiseScreenWake
{
  [(NTKFaceViewController *)self _showStatusBarAfterWake];
  v3 = [(NTKFaceViewController *)self _overrideDateForWake:1];
  [(NTKFaceView *)self->_faceView setOverrideDate:v3 duration:0.0];
  [(NTKFaceView *)self->_faceView handleWristRaiseScreenWake];
}

- (void)handleOrdinaryScreenWake
{
  [(NTKFaceViewController *)self _showStatusBarAfterWake];
  v3 = [(NTKFaceViewController *)self _overrideDateForWake:1];
  [(NTKFaceView *)self->_faceView setOverrideDate:v3 duration:0.0];
  [(NTKFaceView *)self->_faceView handleOrdinaryScreenWake];
}

- (id)currentClockComplicationCountSet
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__NTKFaceViewController_currentClockComplicationCountSet__block_invoke;
  v17[3] = &unk_27877F4C0;
  v4 = v3;
  v18 = v4;
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v17];
  _additionalPrelaunchApplicationIdentifiers = [(NTKFaceView *)self->_faceView _additionalPrelaunchApplicationIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [_additionalPrelaunchApplicationIdentifiers countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_additionalPrelaunchApplicationIdentifiers);
        }

        v10 = [objc_alloc(MEMORY[0x277CBB6F0]) initWithApplicationIdentifier:*(*(&v13 + 1) + 8 * v9) countOnFace:1 isWidget:1];
        [v4 appendCount:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [_additionalPrelaunchApplicationIdentifiers countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = v4;

  return v4;
}

void __57__NTKFaceViewController_currentClockComplicationCountSet__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 complication];
  v5 = [v8 complicationType];
  v6 = [v4 complicationApplicationIdentifier];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBB6F0]) initWithApplicationIdentifier:v6 countOnFace:1 isWidget:v5 == 56];
    [*(a1 + 32) appendCount:v7];
  }
}

- (void)_showStatusBarAfterWake
{
  if (![(NTKFaceView *)self->_faceView wantsStatusBarHidden])
  {
    statusBarViewController = [(NTKFaceViewController *)self statusBarViewController];
    view = [statusBarViewController view];
    [view setAlpha:1.0];

    statusBarViewController2 = [(NTKFaceViewController *)self statusBarViewController];
    [statusBarViewController2 showAnimated:0];

    statusBarViewController3 = [(NTKFaceViewController *)self statusBarViewController];
    [statusBarViewController3 prepareToAnimate];

    statusBarViewController4 = [(NTKFaceViewController *)self statusBarViewController];
    [statusBarViewController4 animate];
  }
}

- (void)_handleStatusBarChange
{
  isDisplayingStatus = [(NTKClockStatusBarViewController *)self->_statusBarViewController isDisplayingStatus];
  faceView = self->_faceView;

  [(NTKFaceView *)faceView prepareForStatusChange:isDisplayingStatus];
}

- (void)_ensureNormalComplication:(id)complication forSlot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  os_unfair_lock_lock(&self->_normalComplicationControllersLock);
  v7 = [(NSMutableDictionary *)self->_normalComplicationControllers objectForKey:slotCopy];
  os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
  if (!v7 || ([v7 complication], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", complicationCopy), v8, (v9 & 1) == 0))
  {
    [(NTKFaceViewController *)self _removeNormalComplicationForSlot:slotCopy andDisconnectDisplay:1];
    v10 = [objc_opt_class() _controllerForComplication:complicationCopy face:self->_face slot:slotCopy];
    v11 = [(NTKFaceViewController *)self _newNormalDisplayForComplicationController:v10 slot:slotCopy];
    [(NTKFaceViewController *)self _insertNormalComplicationDisplay:v11 controller:v10 forSlot:slotCopy];
    device = [(NTKFaceView *)self->_faceView device];
    if ((NTKShowGossamerUI(device) & 1) == 0)
    {
      _legacyShouldSwapGraphicCircularComplicationColors = [(NTKFaceView *)self->_faceView _legacyShouldSwapGraphicCircularComplicationColors];

      if (!_legacyShouldSwapGraphicCircularComplicationColors)
      {
LABEL_7:

        goto LABEL_8;
      }

      faceView = self->_faceView;
      device = [v11 display];
      [(NTKFaceView *)faceView _configureComplicationView:device forSlot:slotCopy];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_ensureDetachedComplication:(id)complication
{
  complicationCopy = complication;
  identifier = [complicationCopy identifier];
  complication = [complicationCopy complication];
  os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
  v6 = [(NSMutableDictionary *)self->_detachedComplicationControllers objectForKey:identifier];
  os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
  if (!v6 || ([v6 complication], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", complication), v7, (v8 & 1) == 0))
  {
    [(NTKFaceViewController *)self _removeDetachedComplicationForSlot:identifier andDisconnectDisplay:1];
    family = [complicationCopy family];
    face = [(NTKFaceViewController *)self face];
    device = [face device];
    v12 = [NTKComplicationVariant defaultVariantForFamily:family device:device];

    face2 = [(NTKFaceViewController *)self face];
    device2 = [face2 device];
    v15 = [NTKComplicationController controllerForComplication:complication variant:v12 device:device2];

    v16 = [NTKComplicationDisplayWrapperView alloc];
    display = [complicationCopy display];
    v18 = -[NTKComplicationDisplayWrapperView initWithCustomTemplateDisplay:isDetachedDisplay:family:](v16, "initWithCustomTemplateDisplay:isDetachedDisplay:family:", display, 1, [complicationCopy family]);

    [(NTKComplicationDisplayWrapperView *)v18 setComplicationSlotIdentifier:identifier];
    v19 = objc_opt_new();
    [v19 setFaceDataMode:self->_dataMode];
    [v15 setPauseDate:self->_pauseDate];
    [v15 addDisplayWrapper:v18 withDisplayProperties:v19];
    [(NTKFaceViewController *)self _insertDetachedComplicationDisplay:v18 controller:v15 forSlot:identifier];
  }
}

- (void)_insertDetachedComplicationDisplay:(id)display controller:(id)controller forSlot:(id)slot
{
  controllerCopy = controller;
  faceView = self->_faceView;
  slotCopy = slot;
  displayCopy = display;
  v11 = [(NTKFaceView *)faceView detachedComplicationDisplayWrapperForSlot:slotCopy];
  [(NTKFaceView *)self->_faceView setDetachedComplicationDisplayWrapper:displayCopy forSlot:slotCopy];

  os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
  [(NSMutableDictionary *)self->_detachedComplicationControllers setObject:controllerCopy forKey:slotCopy];
  os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
  v12 = [(NTKFaceView *)self->_faceView detachedComplicationDisplayWrapperForSlot:slotCopy];

  if (v11 != v12)
  {
    [controllerCopy removeDisplayWrapper:v11];
  }
}

- (void)_insertNormalComplicationDisplay:(id)display controller:(id)controller forSlot:(id)slot
{
  controllerCopy = controller;
  faceView = self->_faceView;
  slotCopy = slot;
  displayCopy = display;
  v11 = [(NTKFaceView *)faceView normalComplicationDisplayWrapperForSlot:slotCopy];
  [(NTKFaceView *)self->_faceView setNormalComplicationDisplayWrapper:displayCopy forSlot:slotCopy];

  os_unfair_lock_lock(&self->_normalComplicationControllersLock);
  [(NSMutableDictionary *)self->_normalComplicationControllers setObject:controllerCopy forKey:slotCopy];
  os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
  v12 = [(NTKFaceView *)self->_faceView normalComplicationDisplayWrapperForSlot:slotCopy];

  if (v11 != v12)
  {
    [controllerCopy removeDisplayWrapper:v11];
  }

  [(NTKFaceViewController *)self _updateInteractivityOfComplicationDisplays];
  [(NTKFaceViewController *)self _updateWidgetVisibilityOfComplicationDisplays];
}

- (void)_removeDetachedComplicationForSlot:(id)slot andDisconnectDisplay:(BOOL)display
{
  displayCopy = display;
  slotCopy = slot;
  v6 = [(NTKFaceView *)self->_faceView detachedComplicationDisplayWrapperForSlot:?];
  if (v6)
  {
    [(NTKFaceView *)self->_faceView setDetachedComplicationDisplayWrapper:0 forSlot:slotCopy];
    os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
    v7 = [(NSMutableDictionary *)self->_detachedComplicationControllers objectForKey:slotCopy];
    os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
    if (displayCopy)
    {
      [v7 removeDisplayWrapper:v6];
    }

    else
    {
      [v7 updatePropertiesForDisplayWrapper:v6 withBlock:&__block_literal_global_102];
    }
  }

  os_unfair_lock_lock(&self->_detachedComplicationControllersLock);
  [(NSMutableDictionary *)self->_detachedComplicationControllers removeObjectForKey:slotCopy];
  os_unfair_lock_unlock(&self->_detachedComplicationControllersLock);
}

- (void)_removeNormalComplicationForSlot:(id)slot andDisconnectDisplay:(BOOL)display
{
  displayCopy = display;
  slotCopy = slot;
  v6 = [(NTKFaceView *)self->_faceView normalComplicationDisplayWrapperForSlot:?];
  if (v6)
  {
    [(NTKFaceView *)self->_faceView setNormalComplicationDisplayWrapper:0 forSlot:slotCopy];
    os_unfair_lock_lock(&self->_normalComplicationControllersLock);
    v7 = [(NSMutableDictionary *)self->_normalComplicationControllers objectForKey:slotCopy];
    os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
    if (displayCopy)
    {
      [v7 removeDisplayWrapper:v6];
    }

    else
    {
      [v7 updatePropertiesForDisplayWrapper:v6 withBlock:&__block_literal_global_104];
    }
  }

  os_unfair_lock_lock(&self->_normalComplicationControllersLock);
  [(NSMutableDictionary *)self->_normalComplicationControllers removeObjectForKey:slotCopy];
  os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
}

- (void)setSuppressFaceViewInteraction:(BOOL)interaction
{
  if (self->_suppressFaceViewInteraction != interaction)
  {
    self->_suppressFaceViewInteraction = interaction;
    [(NTKFaceView *)self->_faceView setUserInteractionEnabled:!interaction];
  }
}

- (void)_updateInteractivityOfComplicationDisplays
{
  _shouldWidgetComplicationsEnableTap = [(NTKFaceViewController *)self _shouldWidgetComplicationsEnableTap];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NTKFaceViewController__updateInteractivityOfComplicationDisplays__block_invoke;
  v4[3] = &__block_descriptor_33_e86_v32__0__NSString_8__NTKComplicationController_16__NTKComplicationDisplayWrapperView_24l;
  v5 = _shouldWidgetComplicationsEnableTap;
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v4];
}

void __67__NTKFaceViewController__updateInteractivityOfComplicationDisplays__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__NTKFaceViewController__updateInteractivityOfComplicationDisplays__block_invoke_2;
  v8[3] = &unk_27877F530;
  v10 = *(a1 + 32);
  v9 = v6;
  v7 = v6;
  [v7 updatePropertiesForDisplayWrapper:a4 withBlock:v8];
}

void __67__NTKFaceViewController__updateInteractivityOfComplicationDisplays__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) hasTapAction];
  }

  else
  {
    v3 = 0;
  }

  [v4 setTapEnabled:v3];
  [v4 setDefaultTapAnimationEnabled:1];
}

- (BOOL)_shouldWidgetComplicationsEnableTap
{
  dataMode = self->_dataMode;
  if ((dataMode - 3) < 2 || dataMode == 0)
  {
    return 0;
  }

  else
  {
    return dataMode != 2 || !self->_pausedForObstruction;
  }
}

- (id)_newNormalDisplayForComplicationController:(id)controller slot:(id)slot
{
  slotCopy = slot;
  controllerCopy = controller;
  v8 = [objc_opt_class() _createNormalDisplayForComplicationController:controllerCopy slot:slotCopy face:self->_face faceView:self->_faceView];
  [v8 addTarget:self action:sel__wrapperViewTapped_ forControlEvents:64];
  [(NTKFaceView *)self->_faceView configureComplicationViewDisplayWrapper:v8 forSlot:slotCopy];

  v9 = objc_opt_new();
  [v9 setContentOverride:{-[NTKFaceViewController effectiveWidgetContentOverride](self, "effectiveWidgetContentOverride")}];
  [v9 setFaceDataMode:self->_dataMode];
  [v9 setWidgetShowsSnapshot:{-[NTKFaceViewController _shouldWidgetComplicationsShowSnapshots](self, "_shouldWidgetComplicationsShowSnapshots")}];
  [v9 setWidgetHostPriorityTransientSnapshot:{-[NTKFaceViewController widgetHostPriorityTransientSnapshot](self, "widgetHostPriorityTransientSnapshot")}];
  [controllerCopy setPauseDate:self->_pauseDate];
  [controllerCopy addDisplayWrapper:v8 withDisplayProperties:v9];

  return v8;
}

+ (id)_createNormalDisplayForComplicationController:(id)controller slot:(id)slot face:(id)face faceView:(id)view
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  slotCopy = slot;
  faceCopy = face;
  viewCopy = view;
  complication = [controllerCopy complication];
  v14 = [faceCopy preferredComplicationFamilyForComplication:complication withSlot:slotCopy];
  v15 = [viewCopy _filterProviderForSlot:slotCopy];
  if ([controllerCopy wantsLegacyDisplay])
  {
    v16 = [viewCopy newLegacyComplicationViewForSlot:slotCopy family:v14 complication:complication];
    if (!v16)
    {
      v17 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v31 = 138412802;
        v32 = complication;
        v33 = 2112;
        v34 = slotCopy;
        v35 = 2048;
        v36 = v14;
        _os_log_error_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_ERROR, "Missing legacy complication view for %@ slot %@ family %ld", &v31, 0x20u);
      }
    }

    v18 = -[NTKComplicationDisplayWrapperView initWithLegacyDisplay:layoutOverride:]([NTKComplicationDisplayWrapperView alloc], "initWithLegacyDisplay:layoutOverride:", v16, [viewCopy legacyComplicationLayoutOverrideForSlot:slotCopy complication:complication]);
    [viewCopy configureComplicationView:v16 forSlot:slotCopy];
  }

  else
  {
    v19 = objc_opt_class();
    device = [faceCopy device];
    v21 = [v19 richComplicationSlotsForDevice:device];
    v22 = [v21 containsObject:slotCopy];

    richComplicationDisplayViewClass = [controllerCopy richComplicationDisplayViewClass];
    if (v22 && (v24 = richComplicationDisplayViewClass) != 0)
    {
      if ([richComplicationDisplayViewClass instancesRespondToSelector:sel_initWithFamily_])
      {
        v25 = [[v24 alloc] initWithFamily:v14];
      }

      else
      {
        v25 = objc_alloc_init(v24);
      }

      v27 = v25;
      [v25 setFilterProvider:v15];
      [viewCopy configureComplicationView:v27 forSlot:slotCopy];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v29 = [NTKComplicationDisplayWrapperView alloc];
      if (isKindOfClass)
      {
        v30 = [(NTKComplicationDisplayWrapperView *)v29 initWithCustomTemplateDisplay:v27 isDetachedDisplay:0 family:v14];
      }

      else
      {
        v30 = [(NTKComplicationDisplayWrapperView *)v29 initWithCustomRichDisplay:v27];
      }

      v18 = v30;
    }

    else
    {
      v18 = [[NTKComplicationDisplayWrapperView alloc] initWithFamily:v14];
      if (!v22)
      {
        goto LABEL_13;
      }
    }

    [(NTKComplicationDisplayWrapperView *)v18 setFilterProvider:v15];
  }

LABEL_13:
  [(NTKComplicationDisplayWrapperView *)v18 setComplicationSlotIdentifier:slotCopy];

  return v18;
}

+ (id)_controllerForComplication:(id)complication face:(id)face slot:(id)slot
{
  complicationCopy = complication;
  faceCopy = face;
  slotCopy = slot;
  v10 = [faceCopy complicationVariantForComplication:complicationCopy withSlot:slotCopy];
  v11 = [faceCopy customComplicationControllerForComplication:complicationCopy variant:v10 slot:slotCopy];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    device = [faceCopy device];
    v12 = [NTKComplicationController controllerForComplication:complicationCopy variant:v10 device:device];
  }

  return v12;
}

- (void)setShouldUseSampleTemplate:(BOOL)template
{
  if (self->_shouldUseSampleTemplate != template)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_shouldUseSampleTemplate = template;
    effectiveWidgetContentOverride = [(NTKFaceViewController *)self effectiveWidgetContentOverride];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__NTKFaceViewController_setShouldUseSampleTemplate___block_invoke;
    v7[3] = &__block_descriptor_40_e86_v32__0__NSString_8__NTKComplicationController_16__NTKComplicationDisplayWrapperView_24l;
    v7[4] = effectiveWidgetContentOverride;
    [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v7];
  }
}

uint64_t __52__NTKFaceViewController_setShouldUseSampleTemplate___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NTKFaceViewController_setShouldUseSampleTemplate___block_invoke_2;
  v5[3] = &__block_descriptor_40_e59_v16__0__NTKMutableComplicationControllerDisplayProperties_8l;
  v5[4] = *(a1 + 32);
  return [a3 updatePropertiesForDisplayWrapper:a4 withBlock:v5];
}

- (void)setSnapshotWidgetsAsPlaceholders:(BOOL)placeholders
{
  if (self->_snapshotWidgetsAsPlaceholders != placeholders)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_snapshotWidgetsAsPlaceholders = placeholders;
    effectiveWidgetContentOverride = [(NTKFaceViewController *)self effectiveWidgetContentOverride];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__NTKFaceViewController_setSnapshotWidgetsAsPlaceholders___block_invoke;
    v7[3] = &__block_descriptor_40_e86_v32__0__NSString_8__NTKComplicationController_16__NTKComplicationDisplayWrapperView_24l;
    v7[4] = effectiveWidgetContentOverride;
    [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v7];
  }
}

uint64_t __58__NTKFaceViewController_setSnapshotWidgetsAsPlaceholders___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__NTKFaceViewController_setSnapshotWidgetsAsPlaceholders___block_invoke_2;
  v5[3] = &__block_descriptor_40_e59_v16__0__NTKMutableComplicationControllerDisplayProperties_8l;
  v5[4] = *(a1 + 32);
  return [a3 updatePropertiesForDisplayWrapper:a4 withBlock:v5];
}

- (unint64_t)effectiveWidgetContentOverride
{
  if (!self->_shouldUseSampleTemplate)
  {
    return 0;
  }

  if (self->_snapshotWidgetsAsPlaceholders)
  {
    return 2;
  }

  return 1;
}

- (id)_selectedVisibleSlotForEditMode:(int64_t)mode
{
  faceView = self->_faceView;
  v5 = [(NTKFace *)self->_face selectedSlotForEditMode:?];
  v6 = [(NTKFaceView *)faceView closestVisibleSlotToSlot:v5 editMode:mode];

  return v6;
}

- (void)_validateIfCurrentSelectedColorStillExists
{
  v17 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__NTKFaceViewController__validateIfCurrentSelectedColorStillExists__block_invoke;
  aBlock[3] = &unk_27877F598;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  face = [(NTKFaceViewController *)self face];
  v5 = [face slotsForCustomEditMode:10];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v3[2](v3, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v3[2](v3, 0);
  }
}

void __67__NTKFaceViewController__validateIfCurrentSelectedColorStillExists__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) face];
  v4 = [v3 selectedOptionForCustomEditMode:10 slot:v8];

  v5 = [*(a1 + 32) faceView];
  v6 = [v5 optionForCustomEditMode:10 slot:v8];

  if (([v4 isEqual:v6] & 1) == 0)
  {
    v7 = [*(a1 + 32) faceView];
    [v7 setOption:v4 forCustomEditMode:10 slot:v8];
  }
}

- (void)_configureDarkeningViewAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKFaceViewController *)self editViewDarkeningViewAlphaForEditMode:mode];
  [(NTKFaceViewController *)self editViewDarkeningViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  editView = self->_editView;

  [(NTKFaceEditView *)editView setDarkeningViewAlpha:?];
}

- (double)editViewDarkeningViewAlphaForEditMode:(int64_t)mode
{
  v5 = (mode == 1) & [(NTKFaceView *)self->_faceView isEveryComplicationHidden];
  _editModesDisabledByCurrentConfiguration = [(NTKFaceView *)self->_faceView _editModesDisabledByCurrentConfiguration];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v8 = [_editModesDisabledByCurrentConfiguration containsObject:v7];

  if (v8 | v5)
  {
    v9 = &NTKFaceEditViewDimmedAlpha;
  }

  else
  {
    v9 = &NTKFaceEditViewNormalAlpha;
  }

  v10 = *v9;

  return v10;
}

- (CGRect)launchRectForComplicationApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = &v32;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = &unk_22DD390E3;
  v6 = *(MEMORY[0x277CBF398] + 16);
  v36 = *MEMORY[0x277CBF398];
  v37 = v6;
  if (self->_lastTappedSlotIdentifier)
  {
    os_unfair_lock_lock(&self->_normalComplicationControllersLock);
    v7 = [(NSMutableDictionary *)self->_normalComplicationControllers objectForKeyedSubscript:self->_lastTappedSlotIdentifier];
    os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
    complicationApplicationIdentifier = [v7 complicationApplicationIdentifier];
    v9 = [complicationApplicationIdentifier isEqualToString:identifierCopy];

    if (v9)
    {
      v10 = [(NTKFaceView *)self->_faceView normalComplicationDisplayWrapperForSlot:self->_lastTappedSlotIdentifier];
      [v10 frame];
      v11 = v33;
      v33[4] = v12;
      v11[5] = v13;
      v11[6] = v14;
      v11[7] = v15;
    }

    v5 = v33;
  }

  IsNull = CGRectIsNull(v5[1]);
  v17 = v33;
  if (IsNull)
  {
    size = self->_faceLaunchRect.size;
    *(v33 + 2) = self->_faceLaunchRect.origin;
    v17[1].size = size;
  }

  if (CGRectIsNull(v17[1]))
  {
    os_unfair_lock_lock(&self->_normalComplicationControllersLock);
    v19 = [(NSMutableDictionary *)self->_normalComplicationControllers copy];
    os_unfair_lock_unlock(&self->_normalComplicationControllersLock);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__NTKFaceViewController_launchRectForComplicationApplicationIdentifier___block_invoke;
    v28[3] = &unk_27877F5C0;
    selfCopy = self;
    v31 = &v32;
    v29 = identifierCopy;
    [v19 enumerateKeysAndObjectsUsingBlock:v28];
  }

  v20 = *(v33 + 4);
  v21 = *(v33 + 5);
  v22 = *(v33 + 6);
  v23 = *(v33 + 7);
  _Block_object_dispose(&v32, 8);

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

void __72__NTKFaceViewController_launchRectForComplicationApplicationIdentifier___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [a3 complicationApplicationIdentifier];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    v9 = [*(a1[5] + 1312) normalComplicationDisplayWrapperForSlot:v15];
    [v9 frame];
    v10 = *(a1[6] + 8);
    v10[4] = v11;
    v10[5] = v12;
    v10[6] = v13;
    v10[7] = v14;

    *a4 = 1;
  }
}

- (void)_clearLastTappedComplication
{
  lastTappedSlotIdentifier = self->_lastTappedSlotIdentifier;
  self->_lastTappedSlotIdentifier = 0;
}

- (void)_clearFaceLaunchRect
{
  v2 = *(MEMORY[0x277CBF398] + 16);
  self->_faceLaunchRect.origin = *MEMORY[0x277CBF398];
  self->_faceLaunchRect.size = v2;
}

- (void)faceViewRequestedLaunchFromRect:(CGRect)rect
{
  self->_faceLaunchRect = rect;
  lastTappedSlotIdentifier = self->_lastTappedSlotIdentifier;
  self->_lastTappedSlotIdentifier = 0;
}

- (void)_wrapperViewTapped:(id)tapped
{
  complicationSlotIdentifier = [tapped complicationSlotIdentifier];
  lastTappedSlotIdentifier = self->_lastTappedSlotIdentifier;
  self->_lastTappedSlotIdentifier = complicationSlotIdentifier;

  [(NTKFaceViewController *)self _clearFaceLaunchRect];
}

- (BOOL)shouldLoadLiveFaceAtNextScreenOff
{
  _unadornedSnapshot = [(NTKFaceViewController *)self _unadornedSnapshot];
  if (_unadornedSnapshot)
  {
    _wantsOpportunisticLiveFaceLoading = [(NTKFaceView *)self->_faceView _wantsOpportunisticLiveFaceLoading];
  }

  else
  {
    _wantsOpportunisticLiveFaceLoading = 0;
  }

  return _wantsOpportunisticLiveFaceLoading;
}

- (id)_dailySnapshot
{
  if (self->_shouldShowSnapshot)
  {
    if (NTKDebugNoSnapshotsInSwitcher())
    {
      v4 = 0;
    }

    else
    {
      v4 = NTKSnapshotForFace(self->_face);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)acquireComplicationTouchCancellationAssertion
{
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NTKFaceViewController_acquireComplicationTouchCancellationAssertion__block_invoke;
  v7[3] = &unk_27877F4C0;
  v8 = v3;
  v4 = v3;
  [(NTKFaceViewController *)self enumerateComplicationControllersAndDisplaysWithBlock:v7];
  v5 = [[NTKInvalidatableGroup alloc] initWithInvalidatables:v4];

  return v5;
}

void __70__NTKFaceViewController_acquireComplicationTouchCancellationAssertion__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a4 display];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v7 acquireTouchCancellationAssertion];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (NTKFaceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NTKFaceViewControllerStatusBarDelegate)statusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);

  return WeakRetained;
}

@end