@interface CCUIMainViewController
+ (id)_controlCenterBringupEventStream;
+ (id)_controlCenterDismissOrbActionsEventStream;
+ (id)_presentationProviderForDevice;
+ (void)_addBlockForSignpost:(unint64_t)signpost block:(id)block;
+ (void)_executeAndCleanupBlocksForAllSignposts;
+ (void)_executeBlocksForSignpost:(unint64_t)signpost;
+ (void)_playEventStream:(id)stream withCompletion:(id)completion;
- (BOOL)_dismissalFlickGestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)_dismissalFlickGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_dismissalPanGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_dismissalTapGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_editingLongPressGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_forceModuleEnabled:(id)enabled;
- (BOOL)_includesModuleWithIdentifier:(id)identifier consideringObscureness:(BOOL)obscureness;
- (BOOL)_interpretsGestureLocationAsContent:(id)content;
- (BOOL)_isSensorActivityData:(id)data relevantForSensorType:(unint64_t)type;
- (BOOL)_scrollPanGestureRecognizerCanBeginForGestureVelocity:(CGPoint)velocity;
- (BOOL)_scrollPanGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_scrollViewCanAcceptDownwardsPan;
- (BOOL)_scrollViewIsScrollable;
- (BOOL)canDismissPresentedContent;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)context;
- (BOOL)isEditing;
- (BOOL)isSystemRestoringForPagingViewController:(id)controller;
- (BOOL)pagingViewController:(id)controller shouldPauseCheckingInvalidControlsForApplicationIdentifier:(id)identifier;
- (BOOL)runTest:(id)test options:(id)options delegate:(id)delegate;
- (CCUIControlCenterSystemAgent)systemAgent;
- (CCUIHostStatusBarStyleProvider)hostStatusBarStyleProvider;
- (CCUILayoutRect)_layoutRectForIconCoordinate:(SEL)coordinate gridSize:(SBIconCoordinate)size;
- (CCUIMainViewController)initWithSystemAgent:(id)agent moduleInstanceManager:(id)manager moduleSettingsManager:(id)settingsManager sensorActivityDataProvider:(id)provider gameModeActivityDataProvider:(id)dataProvider presentationProvider:(id)presentationProvider;
- (CCUIMainViewControllerDelegate)delegate;
- (CGPoint)_centerPointOfModuleWithIdentifier:(id)identifier;
- (CGRect)compactAvoidanceFrameForStatusBar:(id)bar;
- (CGRect)expandedAvoidanceFrameForStatusBar:(id)bar;
- (CGRect)overlayBackgroundFrame;
- (CGRect)overlayContainerFrame;
- (CGSize)overlayContentSize;
- (UIEdgeInsets)overlayAdditionalEdgeInsets;
- (UIEdgeInsets)overlayContentLayoutInset;
- (double)overlayReachabilityHeight;
- (id)_beginDismissalAnimated:(BOOL)animated interactive:(BOOL)interactive;
- (id)_beginPresentationAnimated:(BOOL)animated interactive:(BOOL)interactive;
- (id)_controlCenterEnterEditModeEventStream;
- (id)_controlCenterShowOrbActionsEventStream:(id)stream;
- (id)_safePagingViewContainerView;
- (id)_safeStatusLabelViewContainerView;
- (id)_statusLabelViewContainerView;
- (id)compactTrailingStyleRequestForStatusBar:(id)bar;
- (id)contentModuleContext:(id)context requestsSensorActivityDataForActiveSensorType:(unint64_t)type;
- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)data;
- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)selection;
- (id)existingControlKindFromWidgetExtension:(id)extension;
- (id)fallbackDragHitTestViewForScrollView:(id)view;
- (id)pagingViewControllerDidAddModuleView:(id)view;
- (id)reasonToDisallowEditing:(id)editing;
- (int64_t)_interfaceOrientation;
- (unint64_t)_fetchModuleEnabledState:(id)state;
- (void)_askToAirDropPendingOrActiveConnectionsDidChange;
- (void)_becomeActive;
- (void)_cancelDismissalPanGestures;
- (void)_disableModule:(id)module;
- (void)_dismissalPanGestureRecognizerBegan:(id)began;
- (void)_dismissalPanGestureRecognizerChanged:(id)changed;
- (void)_dismissalPanGestureRecognizerEnded:(id)ended;
- (void)_endDismissalWithUUID:(id)d animated:(BOOL)animated;
- (void)_endPresentationWithUUID:(id)d;
- (void)_evaluatePresentationContinuationIntoPagingWithLocation:(CGPoint)location;
- (void)_getCameraSensorActivityData:(id *)data micSensorActivityData:(id *)activityData isMutedMic:(BOOL *)mic isInactiveMicModeSelection:(BOOL *)selection;
- (void)_handleDismissalFlickGestureRecognizer:(id)recognizer;
- (void)_handleDismissalPanGestureRecognizer:(id)recognizer;
- (void)_handleDismissalTapGestureRecognizer:(id)recognizer;
- (void)_handleEditingLongPressGestureRecognizer:(id)recognizer;
- (void)_presentAnimated:(BOOL)animated withInitialVelocity:(CGPoint)velocity completionHandler:(id)handler;
- (void)_resignActive;
- (void)_safePagingViewContainerView;
- (void)_safeStatusLabelViewContainerView;
- (void)_setupPanGestureFailureRequirements;
- (void)_updateAskToAirDropModuleVisibility;
- (void)_updateChevronStateForTransitionState:(id)state;
- (void)_updateHotPocket:(BOOL)pocket animated:(BOOL)animated;
- (void)_updateHotPocketAnimated:(BOOL)animated;
- (void)_updatePresentationForTransitionState:(id)state gestureVelocity:(CGPoint)velocity withCompletionHander:(id)hander;
- (void)_updatePresentationForTransitionType:(unint64_t)type translation:(CGPoint)translation velocity:(CGPoint)velocity interactive:(BOOL)interactive;
- (void)_updateSensorActivityStatusForHeaderPocketView;
- (void)_willPresentViewControllerContainedInPages;
- (void)beginPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity touches:(id)touches;
- (void)cancelPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)contentModuleContext:(id)context enqueueStatusUpdate:(id)update;
- (void)dealloc;
- (void)didCloseExpandedSensorAttributionViewController;
- (void)didReceiveSignpost:(unint64_t)signpost;
- (void)didTriggerPowerButtonPrimaryAction;
- (void)dismissAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)dismissControlCenterForContentModuleContext:(id)context;
- (void)dismissExpandedModuleAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissExpandedViewForContentModuleContext:(id)context;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)displayWillTurnOff;
- (void)endPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)enumerateOverlayModuleViewsWithBlock:(id)block;
- (void)expandModuleWithIdentifier:(id)identifier;
- (void)gameModeActivitiesDidChange;
- (void)gameModeStateDidChange:(unint64_t)change;
- (void)handleControlCenterOperationTypeWithOperationService:(id)service operationType:(int64_t)type completionHandler:(id)handler;
- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)context;
- (void)loadView;
- (void)moduleInstancesChangedForModuleInstanceManager:(id)manager;
- (void)overlayBackgroundViewTapped:(id)tapped;
- (void)pagingViewController:(id)controller didAdd:(id)add;
- (void)pagingViewController:(id)controller didClose:(id)close;
- (void)pagingViewController:(id)controller editingDidChange:(BOOL)change;
- (void)pagingViewController:(id)controller willExpand:(id)expand;
- (void)pagingViewController:(id)controller willRemove:(id)remove;
- (void)performIfDisplayingModuleView:(id)view subview:(id)subview block:(id)block;
- (void)requestExpandModuleForContentModuleContext:(id)context;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler;
- (void)runTest:(id)test subtests:(id)subtests eventStream:(id)stream completionHandler:(id)handler;
- (void)setCurrentTransitionUUID:(id)d;
- (void)setEditing:(BOOL)editing;
- (void)setOverlayPageContentAlpha:(double)alpha;
- (void)setOverlayPageContentScale:(CGPoint)scale;
- (void)setOverlayPageContentTranslation:(CGPoint)translation;
- (void)setOverlayStatusBarHidden:(BOOL)hidden;
- (void)setPresentationState:(unint64_t)state;
- (void)setReachabilityActive:(BOOL)active;
- (void)setSensorActivityDataProvider:(id)provider;
- (void)setTransitionState:(unint64_t)state;
- (void)updatePresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willOpenExpandedSensorAttributionViewController;
@end

@implementation CCUIMainViewController

- (void)_updateSensorActivityStatusForHeaderPocketView
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v27 = 0;
  v28 = 0;
  [(CCUIMainViewController *)self _getCameraSensorActivityData:&v28 micSensorActivityData:&v27 isMutedMic:&v29 + 1 isInactiveMicModeSelection:&v29];
  v3 = v28;
  v4 = v27;
  v5 = v4;
  v6 = MEMORY[0x277CFC8F8];
  if (v3)
  {
    v7 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v3 debugDescription];
      *buf = 138543362;
      *v31 = v9;
      _os_log_impl(&dword_21E9F5000, v8, OS_LOG_TYPE_DEFAULT, "[AV Modules] Adding sensor usage data for CAMERA [%{public}@]", buf, 0xCu);
    }

    v10 = v3;
    v11 = v5 != 0;
  }

  else if (v4)
  {
    v12 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v5 debugDescription];
      *buf = 138543362;
      *v31 = v14;
      _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "[AV Modules] Adding sensor usage data for MICROPHONE [%{public}@]", buf, 0xCu);
    }

    v10 = v5;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  bundleIdentifier = [v10 bundleIdentifier];
  v16 = *v6;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v31 = v11;
    *&v31[4] = 1024;
    *&v31[6] = v3 != 0;
    v32 = 2114;
    v33 = bundleIdentifier;
    _os_log_impl(&dword_21E9F5000, v16, OS_LOG_TYPE_DEFAULT, "[AV Modules] Setting visibility of AV modules (audio: %{BOOL}d, video: %{BOOL}d) for bundle identifier %{public}@", buf, 0x18u);
  }

  mEMORY[0x277CFC830] = [MEMORY[0x277CFC830] sharedInstance];
  [mEMORY[0x277CFC830] setVisibility:v11 forModuleWithIdentifier:@"com.apple.replaykit.AudioConferenceControlCenterModule" completionHandler:0];

  mEMORY[0x277CFC830]2 = [MEMORY[0x277CFC830] sharedInstance];
  [mEMORY[0x277CFC830]2 setVisibility:v3 != 0 forModuleWithIdentifier:@"com.apple.replaykit.VideoConferenceControlCenterModule" completionHandler:0];

  [(CCUIHeaderPocketView *)self->_headerPocketView setAudioControlsEnabled:v11 videoControlsEnabled:v3 != 0 forBundleIdentifier:bundleIdentifier];
  [(CCUIHeaderPocketView *)self->_headerPocketView setAudioVideoModeSelectionAttribution:v10];
  if ((v29 & 0x100) != 0 || v29 == 1)
  {
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  headerPocketView = self->_headerPocketView;
  v21 = v19;
  [(CCUIHeaderPocketView *)headerPocketView inactiveMicrophoneAttributionChanged:v21];
  [(CCUIHeaderPocketView *)self->_headerPocketView setGameModeActivityDataProvider:self->_gameModeActivityDataProvider];
  [(CCUIHeaderPocketView *)self->_headerPocketView gameModeStateDidChange:[(CCUIGameModeActivityDataProvider *)self->_gameModeActivityDataProvider gameModeState]];
  v22 = objc_alloc_init(MEMORY[0x277CBEB98]);
  activeSensorActivityData = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
  v24 = [v22 setByAddingObjectsFromSet:activeSensorActivityData];

  activityData = [(CCUIGameModeActivityDataProvider *)self->_gameModeActivityDataProvider activityData];
  v26 = [v24 setByAddingObjectsFromSet:activityData];

  [(CCUIHeaderPocketView *)self->_headerPocketView sensorAttributionsChanged:v26];
  [(CCUIHeaderPocketView *)self->_headerPocketView layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v3 viewWillLayoutSubviews];
  [(CCUIOverlayPresentationProvider *)self->_presentationProvider layoutViews];
}

- (int64_t)_interfaceOrientation
{
  view = [(CCUIMainViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  if (interfaceOrientation <= 1)
  {
    return 1;
  }

  else
  {
    return interfaceOrientation;
  }
}

- (double)overlayReachabilityHeight
{
  if (![(CCUIMainViewController *)self isReachabilityActive])
  {
    return 0.0;
  }

  delegate = [(CCUIMainViewController *)self delegate];
  [delegate reachabilityOffsetForControlCenterViewController:self];
  v5 = v4;

  return v5;
}

- (CGRect)overlayContainerFrame
{
  view = [(CCUIMainViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)overlayContentSize
{
  [(CCUIPagingViewController *)self->_pagingViewController contentLayoutSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)isEditing
{
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  isEditing = [pagingViewController isEditing];

  return isEditing;
}

- (CGRect)overlayBackgroundFrame
{
  view = [(CCUIMainViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)runTest:(id)test options:(id)options delegate:(id)delegate
{
  v65[1] = *MEMORY[0x277D85DE8];
  testCopy = test;
  optionsCopy = options;
  delegateCopy = delegate;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v35 = optionsCopy;
  if ([testCopy isEqualToString:@"ControlCenterBringup"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:testCopy];
    v65[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    _controlCenterBringupEventStream = [objc_opt_class() _controlCenterBringupEventStream];
    v13 = v54[5];
    v54[5] = _controlCenterBringupEventStream;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_3:
    v19 = 1;
    goto LABEL_8;
  }

  if ([testCopy isEqualToString:@"ControlCenterBringupOverSafari"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:testCopy];
    v64 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    _controlCenterBringupEventStream2 = [objc_opt_class() _controlCenterBringupEventStream];
    v21 = v54[5];
    v54[5] = _controlCenterBringupEventStream2;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
  }

  else if ([testCopy isEqualToString:@"ControlCenterBringupOnLockScreen"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:testCopy];
    v63 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    _controlCenterBringupEventStream3 = [objc_opt_class() _controlCenterBringupEventStream];
    v23 = v54[5];
    v54[5] = _controlCenterBringupEventStream3;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    if ([testCopy isEqualToString:@"ControlCenterDismiss"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:3 endSignpost:4];
      v10 = [CCUIPPTRootTest testWithName:testCopy];
      v62 = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      _controlCenterDismissEventStream = [objc_opt_class() _controlCenterDismissEventStream];
      v31 = v54[5];
      v54[5] = _controlCenterDismissEventStream;

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_3;
    }

    if ([testCopy isEqualToString:@"ControlCenterShowOrbActions"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:5 endSignpost:6];
      v10 = [CCUIPPTRootTest testWithName:testCopy];
      v61 = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke;
      v51[3] = &unk_278382088;
      v51[4] = self;
      v52 = @"com.apple.control-center.QuickNoteModule";
      v14 = _Block_copy(v51);

      v17 = 0;
      v16 = @"com.apple.control-center.QuickNoteModule";
      v15 = 1;
      v18 = 1;
      goto LABEL_3;
    }

    if ([testCopy isEqualToString:@"ControlCenterDismissOrbActions"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:7 endSignpost:8];
      v10 = [CCUIPPTRootTest testWithName:testCopy];
      v60 = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      _controlCenterDismissOrbActionsEventStream = [objc_opt_class() _controlCenterDismissOrbActionsEventStream];
      v33 = v54[5];
      v54[5] = _controlCenterDismissOrbActionsEventStream;

      v14 = 0;
      v16 = @"com.apple.control-center.QuickNoteModule";
      v17 = 1;
      v15 = 1;
      v18 = 1;
      goto LABEL_3;
    }

    if (![testCopy isEqualToString:@"ControlCenterBringupAndEnterEditMode"])
    {
      v25 = 0;
      v26 = 0;
      v14 = 0;
      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_15;
    }

    v9 = [CCUIPPTTest testWithName:@"editModeEnter" beginSignpost:11 endSignpost:12];
    v34 = [CCUIPPTTest testWithName:@"editModeExit" beginSignpost:13 endSignpost:14];
    v10 = [CCUIPPTRootTest testWithName:testCopy];
    v59[0] = v9;
    v59[1] = v34;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_2;
    v50[3] = &unk_2783820B0;
    v50[4] = self;
    v14 = _Block_copy(v50);

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 1;
    v18 = 1;
  }

LABEL_8:

  if (v10)
  {
    if (v15)
    {
      v24 = [(CCUIMainViewController *)self _fetchModuleEnabledState:v16];
      if (v24 != 3)
      {
        [(CCUIMainViewController *)self _forceModuleEnabled:v16];
      }
    }

    else
    {
      v24 = 0;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_3;
    aBlock[3] = &unk_278382100;
    aBlock[4] = self;
    v26 = v10;
    v46 = v26;
    v11 = v11;
    v47 = v11;
    v48 = v16;
    v49 = v24;
    v27 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_5;
    v38[3] = &unk_278382178;
    v43 = v18;
    v38[4] = self;
    v14 = v14;
    v42 = &v53;
    v44 = v17;
    v39 = v16;
    v40 = v14;
    v28 = v27;
    v41 = v28;
    [delegateCopy prepareForControlCenterPPTHostState:v19 completionHandler:v38];

    v25 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

LABEL_15:

  _Block_object_dispose(&v53, 8);
  return v25;
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_4;
  v9[3] = &unk_2783820D8;
  v9[4] = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  [v4 runTest:v5 subtests:v6 eventStream:a2 completionHandler:v9];
}

uint64_t __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) dismissAnimated:0 withCompletionHandler:0];
  if (*(a1 + 40) && *(a1 + 48) != 3)
  {
    v3 = *(a1 + 32);

    return [v3 _disableModule:?];
  }

  return result;
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_6;
    v13[3] = &unk_278382150;
    v3 = &v15;
    v4 = *(a1 + 48);
    v16 = *(a1 + 64);
    v17 = *(a1 + 73);
    v10 = *(a1 + 32);
    v5 = *(&v10 + 1);
    v6 = *(a1 + 56);
    *&v7 = v4;
    *(&v7 + 1) = v6;
    v14 = v10;
    v15 = v7;
    [v2 presentAnimated:0 withCompletionHandler:v13];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_10;
    v11[3] = &unk_278382128;
    v3 = v12;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v12[0] = v8;
    v12[1] = v9;
    [v2 dismissAnimated:0 withCompletionHandler:v11];
  }
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_6(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_7;
  block[3] = &unk_278382150;
  v3 = *(a1 + 48);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v4 = *(&v7 + 1);
  v5 = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = (*(v2 + 16))();
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (*(a1 + 72) == 1)
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) _controlCenterShowOrbActionsEventStream:*(a1 + 40)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_8;
    v11[3] = &unk_278382128;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v12 = v8;
    v13 = v9;
    [v6 _playEventStream:v7 withCompletion:v11];
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);

    v10();
  }
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_8(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_9;
  v5[3] = &unk_278382128;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, MEMORY[0x277D85CD0], v5);
}

void __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_10(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CCUIMainViewController_PPT__runTest_options_delegate___block_invoke_11;
  v5[3] = &unk_278382128;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, MEMORY[0x277D85CD0], v5);
}

+ (id)_controlCenterBringupEventStream
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = [mEMORY[0x277D75128] _keyWindowForScreen:mainScreen];

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (SBFEffectiveHomeButtonType() == 2 || ([MEMORY[0x277D75418] currentDevice], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, v14 == 1))
  {
    v52.origin.x = v6;
    v52.origin.y = v8;
    v52.size.width = v10;
    v52.size.height = v12;
    MaxX = CGRectGetMaxX(v52);
    v53.origin.x = v6;
    v53.origin.y = v8;
    v53.size.width = v10;
    v53.size.height = v12;
    [v4 convertPoint:0 toView:{MaxX, CGRectGetMinY(v53)}];
    [v4 _convertPointToSceneReferenceSpace:?];
    v17 = v16;
    v19 = v18;
    v54.origin.x = v6;
    v54.origin.y = v8;
    v54.size.width = v10;
    v54.size.height = v12;
    v20 = CGRectGetMaxX(v54);
    v55.origin.x = v6;
    v55.origin.y = v8;
    v55.size.width = v10;
    v55.size.height = v12;
    [v4 convertPoint:0 toView:{v20, CGRectGetMaxY(v55)}];
    [v4 _convertPointToSceneReferenceSpace:?];
    v21 = MEMORY[0x277D44358];
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __63__CCUIMainViewController_PPT___controlCenterBringupEventStream__block_invoke;
    v46 = &__block_descriptor_64_e34_v16__0___RCPEventStreamComposer__8l;
    v47 = v17;
    v48 = v19;
    v49 = v22;
    v50 = v23;
    v24 = &v43;
  }

  else
  {
    v56.origin.x = v6;
    v56.origin.y = v8;
    v56.size.width = v10;
    v56.size.height = v12;
    MidX = CGRectGetMidX(v56);
    v57.origin.x = v6;
    v57.origin.y = v8;
    v57.size.width = v10;
    v57.size.height = v12;
    [v4 convertPoint:0 toView:{MidX, CGRectGetMaxY(v57)}];
    [v4 _convertPointToSceneReferenceSpace:?];
    v27 = v26;
    v29 = v28;
    v58.origin.x = v6;
    v58.origin.y = v8;
    v58.size.width = v10;
    v58.size.height = v12;
    v30 = CGRectGetMidX(v58);
    v59.origin.x = v6;
    v59.origin.y = v8;
    v59.size.width = v10;
    v59.size.height = v12;
    [v4 convertPoint:0 toView:{v30, CGRectGetMinY(v59)}];
    [v4 _convertPointToSceneReferenceSpace:?];
    v21 = MEMORY[0x277D44358];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __63__CCUIMainViewController_PPT___controlCenterBringupEventStream__block_invoke_2;
    v38 = &__block_descriptor_64_e34_v16__0___RCPEventStreamComposer__8l;
    v39 = v27;
    v40 = v29;
    v41 = v31;
    v42 = v32;
    v24 = &v35;
  }

  v33 = [v21 eventStreamWithEventActions:{v24, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];

  return v33;
}

- (CGPoint)_centerPointOfModuleWithIdentifier:(id)identifier
{
  UIRectGetCenter();
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_controlCenterShowOrbActionsEventStream:(id)stream
{
  [(CCUIMainViewController *)self _centerPointOfModuleWithIdentifier:stream];
  v4 = v3;
  v6 = v5;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v9 = [mEMORY[0x277D75128] _keyWindowForScreen:mainScreen];

  [v9 convertPoint:0 toView:{v4, v6}];
  [v9 _convertPointToSceneReferenceSpace:?];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CCUIMainViewController_PPT___controlCenterShowOrbActionsEventStream___block_invoke;
  v14[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v14[4] = v10;
  v14[5] = v11;
  v12 = [MEMORY[0x277D44358] eventStreamWithEventActions:v14];

  return v12;
}

void __71__CCUIMainViewController_PPT___controlCenterShowOrbActionsEventStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 touchDown:{v2, v3}];
  [v4 advanceTime:3.0];
  [v4 liftUpAtAllActivePoints];
}

+ (id)_controlCenterDismissOrbActionsEventStream
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = [mEMORY[0x277D75128] _keyWindowForScreen:mainScreen];

  [v4 bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v9 = CGRectGetWidth(v16) * 0.1;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [v4 convertPoint:0 toView:{v9, CGRectGetHeight(v17) * 0.1}];
  [v4 _convertPointToSceneReferenceSpace:?];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CCUIMainViewController_PPT___controlCenterDismissOrbActionsEventStream__block_invoke;
  v14[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v14[4] = v10;
  v14[5] = v11;
  v12 = [MEMORY[0x277D44358] eventStreamWithEventActions:v14];

  return v12;
}

- (id)_controlCenterEnterEditModeEventStream
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = [mEMORY[0x277D75128] _keyWindowForScreen:mainScreen];

  [v4 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [v4 convertPoint:0 toView:{MidX, CGRectGetMidY(v21)}];
  [v4 _convertPointToSceneReferenceSpace:?];
  v11 = v10;
  v13 = v12;
  [v4 convertPoint:0 toView:{0.0, 0.0}];
  [v4 _convertPointToSceneReferenceSpace:?];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__CCUIMainViewController_PPT___controlCenterEnterEditModeEventStream__block_invoke;
  v18[3] = &__block_descriptor_64_e34_v16__0___RCPEventStreamComposer__8l;
  v18[4] = v11;
  v18[5] = v13;
  v18[6] = v14;
  v18[7] = v15;
  v16 = [MEMORY[0x277D44358] eventStreamWithEventActions:v18];

  return v16;
}

void __69__CCUIMainViewController_PPT___controlCenterEnterEditModeEventStream__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 touchDown:{v3, v4}];
  [v5 advanceTime:1.0];
  [v5 liftUpAtAllActivePoints];
  [v5 advanceTime:3.0];
  [v5 tap:{a1[6], a1[7]}];
}

+ (void)_playEventStream:(id)stream withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277D44350];
  streamCopy = stream;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277D44348];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CCUIMainViewController_PPT___playEventStream_withCompletion___block_invoke;
  v11[3] = &unk_2783821E0;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 playEventStream:streamCopy options:v8 completion:v11];
}

uint64_t __63__CCUIMainViewController_PPT___playEventStream_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)_fetchModuleEnabledState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    mEMORY[0x277CFC830] = [MEMORY[0x277CFC830] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__CCUIMainViewController_PPT___fetchModuleEnabledState___block_invoke;
    v10[3] = &unk_278382208;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [mEMORY[0x277CFC830] getEnabledStateOfModuleWithIdentifier:stateCopy completionHandler:v10];

    v7 = dispatch_time(0, 5000000000);
    v8 = 0;
    if (!dispatch_group_wait(v6, v7))
    {
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_forceModuleEnabled:(id)enabled
{
  enabledCopy = enabled;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  mEMORY[0x277CFC830] = [MEMORY[0x277CFC830] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__CCUIMainViewController_PPT___forceModuleEnabled___block_invoke;
  v10[3] = &unk_278382230;
  v12 = &v13;
  v6 = v4;
  v11 = v6;
  [mEMORY[0x277CFC830] requestEnableModuleWithIdentifier:enabledCopy force:1 completionHandler:v10];

  v7 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  return v8 & 1;
}

- (void)_disableModule:(id)module
{
  if (module)
  {
    v3 = MEMORY[0x277CFC830];
    moduleCopy = module;
    sharedInstance = [v3 sharedInstance];
    [sharedInstance requestDisableModuleWithIdentifier:moduleCopy completionHandler:0];
  }
}

- (void)runTest:(id)test subtests:(id)subtests eventStream:(id)stream completionHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  testCopy = test;
  subtestsCopy = subtests;
  streamCopy = stream;
  handlerCopy = handler;
  [objc_opt_class() _executeAndCleanupBlocksForAllSignposts];
  if (gSignpostListener)
  {
    v13 = gSignpostListener == self;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [CCUIMainViewController(PPTInternal) runTest:a2 subtests:self eventStream:? completionHandler:?];
  }

  objc_storeStrong(&gSignpostListener, self);
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3810000000;
  v58[3] = &unk_21EAD0A52;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__1;
  v56[4] = __Block_byref_object_dispose__1;
  v14 = MEMORY[0x277CBEBB8];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke;
  v53[3] = &unk_278382440;
  v55 = v58;
  v35 = testCopy;
  v54 = v35;
  v57 = [v14 scheduledTimerWithTimeInterval:0 repeats:v53 block:10.0];
  group = dispatch_group_create();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = subtestsCopy;
  v15 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v15)
  {
    v16 = *v50;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        dispatch_group_enter(group);
        v19 = objc_opt_class();
        beginSignpost = [v18 beginSignpost];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_2;
        v47[3] = &unk_278381DC8;
        v47[4] = v18;
        v21 = v35;
        v48 = v21;
        [v19 _addBlockForSignpost:beginSignpost block:v47];
        v22 = objc_opt_class();
        endSignpost = [v18 endSignpost];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_3;
        v44[3] = &unk_278381FC8;
        v44[4] = v18;
        v45 = v21;
        v46 = group;
        [v22 _addBlockForSignpost:endSignpost block:v44];
      }

      v15 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v15);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_4;
  aBlock[3] = &unk_278382468;
  v42 = v58;
  v43 = v56;
  v24 = v35;
  v40 = v24;
  v25 = handlerCopy;
  v41 = v25;
  v26 = _Block_copy(aBlock);
  if ([v24 endSignpost])
  {
    [objc_opt_class() _addBlockForSignpost:objc_msgSend(v24 block:{"endSignpost"), v26}];
  }

  else
  {
    dispatch_group_notify(group, MEMORY[0x277D85CD0], v26);
  }

  if ([v24 beginSignpost])
  {
    v27 = objc_opt_class();
    beginSignpost2 = [v24 beginSignpost];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_6;
    v37[3] = &unk_278381DF0;
    v38 = v24;
    [v27 _addBlockForSignpost:beginSignpost2 block:v37];
    mEMORY[0x277D75128] = v38;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    name = [v24 name];
    [mEMORY[0x277D75128] startedTest:name];
  }

  v31 = objc_alloc_init(MEMORY[0x277D44350]);
  [MEMORY[0x277D44348] playEventStream:streamCopy options:v31 completion:&__block_literal_global_3];

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
}

void __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 40) + 8) + 48), 1u) & 1) == 0)
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [*(a1 + 32) name];
    [v2 failedTest:v3 withFailure:@"Signpost timeout" withResults:0];

    v4 = gSignpostListener;
    gSignpostListener = 0;
  }
}

void __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [*(a1 + 32) name];
  v3 = [*(a1 + 40) name];
  [v4 startedSubTest:v2 forTest:v3];
}

void __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 40) name];
  [v2 finishedSubTest:v3 forTest:v4];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_4(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 48) + 8) + 48), 1u) & 1) == 0)
  {
    [*(*(*(a1 + 56) + 8) + 40) invalidate];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [*(a1 + 32) name];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_5;
    v6[3] = &unk_2783821E0;
    v7 = *(a1 + 40);
    [v4 finishedTest:v5 extraResults:0 withTeardownBlock:v6];
  }
}

uint64_t __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = gSignpostListener;
  gSignpostListener = 0;

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_6(uint64_t a1)
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [*(a1 + 32) name];
  [v3 startedTest:v2];
}

void __56__CCUIMainViewController_PPTInternal___blocksBySignpost__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _blocksBySignpost_blocksBySignpost;
  _blocksBySignpost_blocksBySignpost = v0;
}

+ (void)_addBlockForSignpost:(unint64_t)signpost block:(id)block
{
  v14[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  _blocksBySignpost = [self _blocksBySignpost];
  objc_sync_enter(_blocksBySignpost);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:signpost];
  v9 = [_blocksBySignpost objectForKey:v8];

  v10 = _Block_copy(blockCopy);
  v11 = v10;
  if (v9)
  {
    v12 = [v9 arrayByAddingObject:v10];
  }

  else
  {
    v14[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:signpost];
  [_blocksBySignpost setObject:v12 forKey:v13];

  objc_sync_exit(_blocksBySignpost);
}

+ (void)_executeAndCleanupBlocksForAllSignposts
{
  v24 = *MEMORY[0x277D85DE8];
  _blocksBySignpost = [self _blocksBySignpost];
  objc_sync_enter(_blocksBySignpost);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = _blocksBySignpost;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKey:*(*(&v18 + 1) + 8 * v7)];
        v6 = [v8 arrayByAddingObjectsFromArray:v9];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  [v3 removeAllObjects];
  objc_sync_exit(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i));
      }

      v11 = [v10 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

+ (void)_executeBlocksForSignpost:(unint64_t)signpost
{
  v16 = *MEMORY[0x277D85DE8];
  _blocksBySignpost = [self _blocksBySignpost];
  objc_sync_enter(_blocksBySignpost);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:signpost];
  v6 = [_blocksBySignpost bs_takeObjectForKey:v5];

  objc_sync_exit(_blocksBySignpost);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)didReceiveSignpost:(unint64_t)signpost
{
  v4 = objc_opt_class();

  [v4 _executeBlocksForSignpost:signpost];
}

+ (id)_presentationProviderForDevice
{
  v2 = objc_opt_class();
  standardDefaults = [MEMORY[0x277CFC820] standardDefaults];
  presentationGesture = [standardDefaults presentationGesture];

  if (presentationGesture == 1)
  {
    v2 = objc_opt_class();
  }

  v5 = objc_alloc_init(v2);

  return v5;
}

- (CCUIMainViewController)initWithSystemAgent:(id)agent moduleInstanceManager:(id)manager moduleSettingsManager:(id)settingsManager sensorActivityDataProvider:(id)provider gameModeActivityDataProvider:(id)dataProvider presentationProvider:(id)presentationProvider
{
  agentCopy = agent;
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  presentationProviderCopy = presentationProvider;
  v43.receiver = self;
  v43.super_class = CCUIMainViewController;
  v20 = [(CCUIMainViewController *)&v43 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    [(CCUIMainViewController *)v20 setModuleInstanceManager:managerCopy];
    [managerCopy setContextDelegate:v21];
    [managerCopy addObserver:v21];
    [(CCUIMainViewController *)v21 setModuleSettingsManager:settingsManagerCopy];
    v22 = objc_alloc_init(CCUIStatusLabelViewController);
    statusLabelViewController = v21->_statusLabelViewController;
    v21->_statusLabelViewController = v22;

    [(CCUIMainViewController *)v21 setDefinesPresentationContext:1];
    objc_storeStrong(&v21->_presentationProvider, presentationProvider);
    [(CCUIOverlayPresentationProvider *)v21->_presentationProvider setViewProvider:v21];
    [(CCUIOverlayPresentationProvider *)v21->_presentationProvider setMetricsProvider:v21];
    v24 = +[CCUIAnimationRunner runner];
    primaryAnimationRunner = v21->_primaryAnimationRunner;
    v21->_primaryAnimationRunner = v24;

    v26 = +[CCUIAnimationRunner runner];
    secondaryAnimationRunner = v21->_secondaryAnimationRunner;
    v21->_secondaryAnimationRunner = v26;

    v28 = +[CCUIAnimationRunner runner];
    editingAnimationRunner = v21->_editingAnimationRunner;
    v21->_editingAnimationRunner = v28;

    v30 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    blockingGestureRecognizers = v21->_blockingGestureRecognizers;
    v21->_blockingGestureRecognizers = v30;

    statusLabelViewController = [(CCUIMainViewController *)v21 statusLabelViewController];
    [statusLabelViewController setDelegate:v21];

    mEMORY[0x277CFC828] = [MEMORY[0x277CFC828] sharedService];
    controlCenterOperationService = v21->_controlCenterOperationService;
    v21->_controlCenterOperationService = mEMORY[0x277CFC828];

    [(CCSControlCenterOperationService *)v21->_controlCenterOperationService setDelegate:v21];
    objc_storeStrong(&v21->_sensorActivityDataProvider, provider);
    objc_storeStrong(&v21->_gameModeActivityDataProvider, dataProvider);
    [dataProviderCopy addObserver:v21];
    v21->_showingRootView = 1;
    if (_os_feature_enabled_impl())
    {
      v35 = SFCreateAskToAirDropReceiverController();
      askToAirDropController = v21->_askToAirDropController;
      v21->_askToAirDropController = v35;

      objc_initWeak(&location, v21);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __167__CCUIMainViewController_initWithSystemAgent_moduleInstanceManager_moduleSettingsManager_sensorActivityDataProvider_gameModeActivityDataProvider_presentationProvider___block_invoke;
      v40[3] = &unk_278382038;
      objc_copyWeak(&v41, &location);
      [(SFAskToAirDropReceiverControllerProtocol *)v21->_askToAirDropController setPendingOrActiveConnectionsChangedHandler:v40];
      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
    }

    objc_storeWeak(&v21->_systemAgent, agentCopy);
    v37 = objc_alloc_init(CCUIAnalyticsEventsController);
    analyticsEventsController = v21->_analyticsEventsController;
    v21->_analyticsEventsController = v37;
  }

  return v21;
}

void __167__CCUIMainViewController_initWithSystemAgent_moduleInstanceManager_moduleSettingsManager_sensorActivityDataProvider_gameModeActivityDataProvider_presentationProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _askToAirDropPendingOrActiveConnectionsDidChange];
}

- (void)dealloc
{
  [(CCUIGameModeActivityDataProvider *)self->_gameModeActivityDataProvider removeObserver:self];
  v3.receiver = self;
  v3.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v3 dealloc];
}

- (id)_safeStatusLabelViewContainerView
{
  _statusLabelViewContainerView = [(CCUIMainViewController *)self _statusLabelViewContainerView];
  if (!_statusLabelViewContainerView)
  {
    [CCUIMainViewController _safeStatusLabelViewContainerView];
  }

  return _statusLabelViewContainerView;
}

- (void)_becomeActive
{
  if (!self->_active)
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    [pagingViewController willBecomeActive];
  }

  self->_active = 1;

  [(CCUIMainViewController *)self _setupPanGestureFailureRequirements];
}

- (id)_statusLabelViewContainerView
{
  headerPocketView = self->_headerPocketView;
  if (!headerPocketView)
  {
    headerPocketView = self->_containerView;
  }

  return headerPocketView;
}

- (id)_safePagingViewContainerView
{
  _pagingViewContainerView = [(CCUIMainViewController *)self _pagingViewContainerView];
  if (!_pagingViewContainerView)
  {
    [CCUIMainViewController _safePagingViewContainerView];
  }

  return _pagingViewContainerView;
}

- (void)setPresentationState:(unint64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_presentationState != state)
  {
    v5 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      presentationState = self->_presentationState;
      if (presentationState > 3)
      {
        v7 = @"<invalid>";
      }

      else
      {
        v7 = off_278382860[presentationState];
      }

      if (state > 3)
      {
        v8 = @"<invalid>";
      }

      else
      {
        v8 = off_278382860[state];
      }

      *v11 = 138543618;
      *&v11[4] = v7;
      *&v11[12] = 2114;
      *&v11[14] = v8;
      v9 = v5;
      _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "Transitioning presentation state: fromState=%{public}@, toState=%{public}@", v11, 0x16u);
    }

    self->_presentationState = state;
    v10 = [(CCUIMainViewController *)self delegate:*v11];
    if (objc_opt_respondsToSelector())
    {
      [v10 controlCenterViewController:self didChangePresentationState:self->_presentationState];
    }

    [(CCUIHeaderPocketView *)self->_headerPocketView setPresentationState:state];
  }
}

- (void)setTransitionState:(unint64_t)state
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_transitionState != state)
  {
    v5 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      transitionState = self->_transitionState;
      if (transitionState > 2)
      {
        v7 = @"<invalid>";
      }

      else
      {
        v7 = off_278382848[transitionState];
      }

      if (state > 2)
      {
        v8 = @"<invalid>";
      }

      else
      {
        v8 = off_278382848[state];
      }

      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v9 = v5;
      _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "Transitioning transition state: fromState=%{public}@, toState=%{public}@", &v10, 0x16u);
    }

    self->_transitionState = state;
  }
}

- (void)setReachabilityActive:(BOOL)active
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_reachabilityActive != active)
  {
    activeCopy = active;
    v5 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      reachabilityActive = self->_reachabilityActive;
      *buf = 67109376;
      v12 = reachabilityActive;
      v13 = 1024;
      v14 = activeCopy;
      _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Toggling reachability active: from=%{BOOL}d, to=%{BOOL}d", buf, 0xEu);
    }

    self->_reachabilityActive = activeCopy;
    _scrollView = [(CCUIMainViewController *)self _scrollView];
    [_scrollView setScrollEnabled:!activeCopy];

    delegate = [(CCUIMainViewController *)self delegate];
    v9 = [delegate reachabilitySpringAnimationBehaviorForControlCenterViewController:self];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__CCUIMainViewController_setReachabilityActive___block_invoke;
    v10[3] = &unk_278381DF0;
    v10[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringBehavior:v9 tracking:0 animations:v10 completion:0];
  }
}

uint64_t __48__CCUIMainViewController_setReachabilityActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);

  return [v4 _updateHotPocket:0 animated:0];
}

- (void)setCurrentTransitionUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    currentTransitionUUID = self->_currentTransitionUUID;
    v9 = 138543618;
    v10 = currentTransitionUUID;
    v11 = 2114;
    v12 = dCopy;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Changed transition UUID: from=%{public}@, to=%{public}@", &v9, 0x16u);
  }

  v7 = [dCopy copy];
  v8 = self->_currentTransitionUUID;
  self->_currentTransitionUUID = v7;
}

- (void)setSensorActivityDataProvider:(id)provider
{
  providerCopy = provider;
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Updated sensor activity data provider", v7, 2u);
  }

  sensorActivityDataProvider = self->_sensorActivityDataProvider;
  self->_sensorActivityDataProvider = providerCopy;

  if (![(CCUIMainViewController *)self presentationState])
  {
    [(CCUIMainViewController *)self _updateSensorActivityStatusForHeaderPocketView];
  }
}

- (void)willOpenExpandedSensorAttributionViewController
{
  delegate = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willOpenExpandedModuleForControlCenterViewController:self];
  }
}

- (void)didCloseExpandedSensorAttributionViewController
{
  delegate = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didCloseExpandedModuleForControlCenterViewController:self];
  }
}

- (void)didTriggerPowerButtonPrimaryAction
{
  delegate = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didRequestPowerDownTransientOverlayForControlCenterViewController:self];
  }
}

- (BOOL)canDismissPresentedContent
{
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  v4 = ([pagingViewController canDismissPresentedContent] & 1) != 0 || -[CCUIMainViewController isSensorAttributionViewControllerExpanded](self, "isSensorAttributionViewControllerExpanded");

  return v4;
}

- (void)expandModuleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  [pagingViewController expandModuleWithIdentifier:identifierCopy];
}

- (void)dismissExpandedModuleAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded])
  {
    [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:animatedCopy completion:completionCopy];
  }

  else
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    [pagingViewController dismissExpandedModuleAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded])
  {
    [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:animatedCopy completion:completionCopy];
  }

  else
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    [pagingViewController dismissPresentedContentAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)displayWillTurnOff
{
  if ([(CCUIMainViewController *)self _appearState]== 2)
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    [pagingViewController displayWillTurnOff];
  }
}

- (void)_presentAnimated:(BOOL)animated withInitialVelocity:(CGPoint)velocity completionHandler:(id)handler
{
  y = velocity.y;
  x = velocity.x;
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  presentationState = [(CCUIMainViewController *)self presentationState];
  v11 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    if (presentationState > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[presentationState];
    }

    *buf = 67109378;
    v24 = animatedCopy;
    v25 = 2114;
    v26 = v12;
    v13 = v11;
    _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "Requested presentation: animated=%{BOOL}d, presentationState=%{public}@", buf, 0x12u);
  }

  if (presentationState == 2)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v14 = [(CCUIMainViewController *)self _beginPresentationAnimated:animatedCopy interactive:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__CCUIMainViewController__presentAnimated_withInitialVelocity_completionHandler___block_invoke;
    aBlock[3] = &unk_278382608;
    aBlock[4] = self;
    v21 = x;
    v22 = y;
    v15 = v14;
    v19 = v15;
    v20 = handlerCopy;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (animatedCopy)
    {
      (*(v16 + 2))(v16);
    }

    else
    {
      [MEMORY[0x277D75D18] performWithoutAnimation:v16];
    }
  }
}

void __81__CCUIMainViewController__presentAnimated_withInitialVelocity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CCUIOverlayTransitionState fullyPresentedState];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__CCUIMainViewController__presentAnimated_withInitialVelocity_completionHandler___block_invoke_2;
  v6[3] = &unk_2783825E0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 _updatePresentationForTransitionState:v3 gestureVelocity:v6 withCompletionHander:{*(a1 + 56), *(a1 + 64)}];
}

uint64_t __81__CCUIMainViewController__presentAnimated_withInitialVelocity_completionHandler___block_invoke_2(uint64_t a1, int a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "Presentation complete: presentationUUID=%{public}@, finished=%{BOOL}d, retargeted=%{BOOL}d", &v9, 0x18u);
  }

  [*(a1 + 40) _endPresentationWithUUID:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_beginPresentationAnimated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v44 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFC8F8];
  v7 = *MEMORY[0x277CFC8F8];
  if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E9F5000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_CONTROL_CENTER_PRESENTATION_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  if (gSignpostListener)
  {
    [gSignpostListener didReceiveSignpost:1];
  }

  presentationState = [(CCUIMainViewController *)self presentationState];
  if (interactiveCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  transitionState = [(CCUIMainViewController *)self transitionState];
  v11 = *v6;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (presentationState > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[presentationState];
    }

    v13 = @"animating";
    if (interactiveCopy)
    {
      v13 = @"interactive";
    }

    v14 = v13;
    *buf = 67110402;
    v33 = animatedCopy;
    v34 = 1024;
    v35 = interactiveCopy;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v14;
    v40 = 1024;
    v41 = presentationState != 1;
    v42 = 1024;
    v43 = transitionState != v9;
    v15 = v11;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "Begin presentation: animated=%{BOOL}d, interactive=%{BOOL}d, currentState=%{public}@, transitionState=%{public}@, presentationStateWillChange=%{BOOL}d, transitionStateWillChange=%{BOOL}d", buf, 0x2Eu);
  }

  if (presentationState != 1 || transitionState != v9)
  {
    if (objc_opt_respondsToSelector())
    {
      headerMode = [(CCUIOverlayPresentationProvider *)self->_presentationProvider headerMode];
    }

    else
    {
      headerMode = 0;
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    [(CCUIMainViewController *)self setCurrentTransitionUUID:uUID];

    [(CCUIMainViewController *)self setTransitionState:v9];
    [(CCUIMainViewController *)self _updateAskToAirDropModuleVisibility];
    if ((headerMode - 1) > 1 || presentationState)
    {
      [(CCUIMainViewController *)self setPresentationState:1];
      if (presentationState)
      {
        if (presentationState != 3)
        {
LABEL_28:
          if (presentationState != 1)
          {
            if (objc_opt_respondsToSelector())
            {
              prepareForPresentation = [(CCUIOverlayPresentationProvider *)self->_presentationProvider prepareForPresentation];
              v24 = prepareForPresentation;
              if (animatedCopy)
              {
                [(CCUIAnimationRunner *)self->_primaryAnimationRunner runAnimationBatch:prepareForPresentation withCompletionBlock:0];
              }

              else
              {
                v25 = MEMORY[0x277D75D18];
                v29[0] = MEMORY[0x277D85DD0];
                v29[1] = 3221225472;
                v29[2] = __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke_3;
                v29[3] = &unk_278381DC8;
                v29[4] = self;
                v30 = prepareForPresentation;
                [v25 performWithoutAnimation:v29];
              }
            }

            [(UIViewController *)self ccui_safelyBeginAppearanceTransitionForChildViewControllers:1 animated:animatedCopy];
          }

          goto LABEL_35;
        }

LABEL_27:
        [(CCUIOverlayBackgroundPresenting *)self->_backgroundView bs_setHitTestingDisabled:0];
        goto LABEL_28;
      }
    }

    else
    {
      hostStatusBarStyleProvider = [(CCUIMainViewController *)self hostStatusBarStyleProvider];
      hostStatusBarStyle = [hostStatusBarStyleProvider hostStatusBarStyle];
      v20 = [hostStatusBarStyle copy];
      hostStatusBarStyleSnapshot = self->_hostStatusBarStyleSnapshot;
      self->_hostStatusBarStyleSnapshot = v20;

      [(CCUIMainViewController *)self setPresentationState:1];
    }

    [(CCUIMainViewController *)self _becomeActive];
    view = [(CCUIMainViewController *)self view];
    [view setHidden:0];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke;
    v31[3] = &unk_278382060;
    v31[4] = self;
    v31[5] = headerMode;
    [MEMORY[0x277D75D18] performWithoutAnimation:v31];
    goto LABEL_27;
  }

LABEL_35:
  currentTransitionUUID = [(CCUIMainViewController *)self currentTransitionUUID];

  return currentTransitionUUID;
}

void __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) overlayHeaderView];
  [v2 setMode:*(a1 + 40) orientationHint:{objc_msgSend(*(a1 + 32), "_interfaceOrientation")}];

  if (([*(a1 + 32) _interfaceOrientation] - 1) >= 2)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v3 = (v5 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  else
  {
    v3 = 0;
  }

  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    if ((([*(*(a1 + 32) + 1152) isHidden] | v3) & 1) == 0)
    {
      v8 = objc_alloc(+[CCUIStatusBar statusBarClass]);
      v9 = [v8 initWithFrame:1 showForegroundView:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v10 = *(a1 + 32);
      v11 = *(v10 + 1056);
      *(v10 + 1056) = v9;

      v12 = [*(a1 + 32) view];
      [v12 insertSubview:*(*(a1 + 32) + 1056) atIndex:0];

      v13 = *(*(a1 + 32) + 1056);
      v35[0] = *MEMORY[0x277D775D0];
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      [v13 setEnabledPartIdentifiers:v14];

      v15 = *(a1 + 32);
      v16 = *(v15 + 1056);
      v17 = [*(v15 + 1152) leadingStyleRequest];
      [v16 setStyleRequest:v17];

      v18 = *(a1 + 32);
      v19 = *(v18 + 1056);
      [*(v18 + 1152) avoidanceFrame];
      [v19 setAvoidanceFrame:?];
      v20 = [*(*(a1 + 32) + 1152) hiddenPartIdentifier];
      v7 = v20;
      if (v20)
      {
        v21 = *(*(a1 + 32) + 1056);
        v34 = v20;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        [v21 setDisabledPartIdentifiers:v22];
      }

      if (objc_opt_respondsToSelector())
      {
        v23 = [*(*(a1 + 32) + 1056) statusBar];
        v24 = [*(*(a1 + 32) + 1152) overlayData];
        [v23 setOverlayData:v24];

        v25 = [*(*(a1 + 32) + 1152) actionsByPartIdentifier];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke_2;
        v33[3] = &unk_278382630;
        v33[4] = *(a1 + 32);
        [v25 enumerateKeysAndObjectsUsingBlock:v33];
      }

      v26 = [*(*(a1 + 32) + 1032) statusBar];
      [v26 prepareForPresentation];

      goto LABEL_14;
    }

    v6 = *(a1 + 40);
  }

  if ((v6 - 1) <= 1)
  {
    v7 = [*(*(a1 + 32) + 1032) statusBar];
    [v7 prepareForPresentation];
LABEL_14:
  }

  v27 = [*(a1 + 32) view];
  [v27 setNeedsLayout];

  v28 = [*(a1 + 32) view];
  [v28 layoutIfNeeded];

  v29 = *(a1 + 32);
  v30 = *(v29 + 1144);
  *(v29 + 1144) = 0;

  v31 = *(a1 + 32);
  v32 = +[CCUIOverlayTransitionState fullyDismissedState];
  [v31 _updatePresentationForTransitionState:v32 gestureVelocity:0 withCompletionHander:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)_endPresentationWithUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentTransitionUUID = [(CCUIMainViewController *)self currentTransitionUUID];
  presentationState = [(CCUIMainViewController *)self presentationState];
  v7 = MEMORY[0x277CFC8F8];
  if (dCopy && [currentTransitionUUID isEqual:dCopy])
  {
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (presentationState > 3)
      {
        v9 = @"<invalid>";
      }

      else
      {
        v9 = off_278382860[presentationState];
      }

      *v15 = 138543874;
      *&v15[4] = dCopy;
      *&v15[12] = 2114;
      *&v15[14] = currentTransitionUUID;
      *&v15[22] = 2114;
      v16 = v9;
      v13 = v8;
      _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "End presentation: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v15, 0x20u);
    }

    [(CCUIMainViewController *)self setCurrentTransitionUUID:0, *v15, *&v15[16], v16];
    [(CCUIMainViewController *)self setTransitionState:0];
    [(CCUIMainViewController *)self setPresentationState:2];
    if (presentationState != 2)
    {
      [(UIViewController *)self ccui_safelyEndAppearanceTransitionForChildViewControllers];
    }
  }

  else
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (presentationState > 3)
      {
        v11 = @"<invalid>";
      }

      else
      {
        v11 = off_278382860[presentationState];
      }

      *v15 = 138543874;
      *&v15[4] = dCopy;
      *&v15[12] = 2114;
      *&v15[14] = currentTransitionUUID;
      *&v15[22] = 2114;
      v16 = v11;
      v12 = v10;
      _os_log_impl(&dword_21E9F5000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring end presentation as UUID is stale: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v15, 0x20u);
    }
  }

  v14 = *v7;
  if (os_signpost_enabled(*v7))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E9F5000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_CONTROL_CENTER_PRESENTATION_END", " enableTelemetry=YES ", v15, 2u);
  }

  kdebug_trace();
  if (gSignpostListener)
  {
    [gSignpostListener didReceiveSignpost:2];
  }
}

- (void)dismissAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  presentationState = [(CCUIMainViewController *)self presentationState];
  v8 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    if (presentationState > 3)
    {
      v9 = @"<invalid>";
    }

    else
    {
      v9 = off_278382860[presentationState];
    }

    *buf = 67109378;
    v18 = animatedCopy;
    v19 = 2114;
    v20 = v9;
    v10 = v8;
    _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "Requested dismissal: animated=%{BOOL}d, presentationState=%{public}@", buf, 0x12u);
  }

  if (presentationState)
  {
    [(CCUIMainViewController *)self _cancelDismissalPanGestures];
    [(CCUIMainViewController *)self setEditing:0];
    v11 = [(CCUIMainViewController *)self _beginDismissalAnimated:animatedCopy interactive:0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke;
    v13[3] = &unk_278382680;
    v13[4] = self;
    v14 = v11;
    v16 = animatedCopy;
    v15 = handlerCopy;
    v12 = v11;
    [(CCUIMainViewController *)self dismissExpandedModuleAnimated:animatedCopy completion:v13];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E9F5000, v2, OS_LOG_TYPE_DEFAULT, "Modules dismissed", buf, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 _deactivateReachability];

  [*(*(a1 + 32) + 1024) bs_setHitTestingDisabled:1];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_63;
  v10 = &unk_278382680;
  v4 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v4;
  v14 = *(a1 + 56);
  v13 = *(a1 + 48);
  v5 = _Block_copy(&v7);
  v6 = v5;
  if (*(a1 + 56) == 1)
  {
    (*(v5 + 2))(v5);
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:{v5, v7, v8, v9, v10, v11, v12}];
  }
}

void __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_63(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CCUIOverlayTransitionState fullyDismissedState];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_278382658;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  [v2 _updatePresentationForTransitionState:v3 gestureVelocity:v6 withCompletionHander:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

void __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, int a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543874;
    v22 = v7;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "Dismissal complete: dismissalUUID=%{public}@, finished=%{BOOL}d, retargeted=%{BOOL}d", buf, 0x18u);
  }

  if (*(a1 + 32) && ([*(a1 + 40) currentTransitionUUID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *(a1 + 32)), v8, v9) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [*(*(a1 + 40) + 992) cleanupForDismissal];
    v11 = *(*(a1 + 40) + 1000);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_66;
    v16[3] = &unk_278382658;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v17 = v12;
    v18 = v13;
    v20 = *(a1 + 56);
    v19 = v14;
    [v11 additivelyRunAnimationBatch:v10 withCompletionBlock:v16];
  }

  else
  {
    [*(a1 + 40) _endDismissalWithUUID:*(a1 + 32) animated:*(a1 + 56)];
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))();
    }
  }
}

uint64_t __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke_66(uint64_t a1, int a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "Dismissal cleanup complete: dismissalUUID=%{public}@, finished=%{BOOL}d, retargeted=%{BOOL}d", &v9, 0x18u);
  }

  [*(a1 + 40) _endDismissalWithUUID:*(a1 + 32) animated:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_beginDismissalAnimated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v39 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFC8F8];
  v7 = *MEMORY[0x277CFC8F8];
  if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E9F5000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_CONTROL_CENTER_DISMISSAL_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  if (gSignpostListener)
  {
    [gSignpostListener didReceiveSignpost:3];
  }

  presentationState = [(CCUIMainViewController *)self presentationState];
  if (interactiveCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  transitionState = [(CCUIMainViewController *)self transitionState];
  v11 = *v6;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (presentationState > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[presentationState];
    }

    v13 = @"animating";
    if (interactiveCopy)
    {
      v13 = @"interactive";
    }

    v14 = v13;
    *buf = 67110402;
    v28 = animatedCopy;
    v29 = 1024;
    v30 = interactiveCopy;
    v31 = 2114;
    v32 = v12;
    v33 = 2114;
    v34 = v14;
    v35 = 1024;
    v36 = presentationState != 3;
    v37 = 1024;
    v38 = transitionState != v9;
    v15 = v11;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "Begin dismissal: animated=%{BOOL}d, interactive=%{BOOL}d, currentState=%{public}@, transitionState=%{public}@, presentationStateWillChange=%{BOOL}d, transitionStateWillChange=%{BOOL}d", buf, 0x2Eu);
  }

  if (presentationState != 3 || transitionState != v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider headerMode]- 1;
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(CCUIMainViewController *)self setCurrentTransitionUUID:uUID];

      [(CCUIMainViewController *)self setTransitionState:v9];
      if (v16 <= 1)
      {
        hostStatusBarStyleProvider = [(CCUIMainViewController *)self hostStatusBarStyleProvider];
        hostStatusBarStyle = [hostStatusBarStyleProvider hostStatusBarStyle];
        v20 = [hostStatusBarStyle copy];
        hostStatusBarStyleSnapshot = self->_hostStatusBarStyleSnapshot;
        self->_hostStatusBarStyleSnapshot = v20;

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__CCUIMainViewController__beginDismissalAnimated_interactive___block_invoke;
        v26[3] = &unk_278381DF0;
        v26[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v26];
      }
    }

    else
    {
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      [(CCUIMainViewController *)self setCurrentTransitionUUID:uUID2];

      [(CCUIMainViewController *)self setTransitionState:v9];
    }

    [(CCUIMainViewController *)self setPresentationState:3];
    if (presentationState != 3)
    {
      [(UIViewController *)self ccui_safelyBeginAppearanceTransitionForChildViewControllers:0 animated:animatedCopy];
    }
  }

  currentTransitionUUID = [(CCUIMainViewController *)self currentTransitionUUID];

  return currentTransitionUUID;
}

void __62__CCUIMainViewController__beginDismissalAnimated_interactive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1056);
  v3 = [*(v1 + 1152) leadingStyleRequest];
  [v2 setStyleRequest:v3];
}

- (void)_endDismissalWithUUID:(id)d animated:(BOOL)animated
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentTransitionUUID = [(CCUIMainViewController *)self currentTransitionUUID];
  presentationState = [(CCUIMainViewController *)self presentationState];
  v8 = MEMORY[0x277CFC8F8];
  if (dCopy && [currentTransitionUUID isEqual:dCopy])
  {
    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if (presentationState > 3)
      {
        v10 = @"<invalid>";
      }

      else
      {
        v10 = off_278382860[presentationState];
      }

      *v19 = 138543874;
      *&v19[4] = dCopy;
      *&v19[12] = 2114;
      *&v19[14] = currentTransitionUUID;
      *&v19[22] = 2114;
      v20 = v10;
      v14 = v9;
      _os_log_impl(&dword_21E9F5000, v14, OS_LOG_TYPE_DEFAULT, "End dismissal: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v19, 0x20u);
    }

    [(CCUIMainViewController *)self setCurrentTransitionUUID:0, *v19, *&v19[16], v20];
    overlayHeaderView = [(CCUIMainViewController *)self overlayHeaderView];
    [overlayHeaderView setMode:0 orientationHint:0];

    [(UIStatusBar *)self->_compactLeadingStatusBar removeFromSuperview];
    compactLeadingStatusBar = self->_compactLeadingStatusBar;
    self->_compactLeadingStatusBar = 0;

    [(CCUIMainViewController *)self _resignActive];
    view = [(CCUIMainViewController *)self view];
    [view setHidden:1];

    [(CCUIMainViewController *)self setTransitionState:0];
    [(CCUIMainViewController *)self setPresentationState:0];
    [(CCUIOverlayBackgroundPresenting *)self->_backgroundView bs_setHitTestingDisabled:1];
    if (presentationState)
    {
      [(UIViewController *)self ccui_safelyEndAppearanceTransitionForChildViewControllers];
    }

    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    [pagingViewController scrollToDefaultPageAnimated:0 completion:0];
  }

  else
  {
    v11 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (presentationState > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[presentationState];
    }

    *v19 = 138543874;
    *&v19[4] = dCopy;
    *&v19[12] = 2114;
    *&v19[14] = currentTransitionUUID;
    *&v19[22] = 2114;
    v20 = v12;
    pagingViewController = v11;
    _os_log_impl(&dword_21E9F5000, pagingViewController, OS_LOG_TYPE_DEFAULT, "Ignoring end dismissal as UUID is stale: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v19, 0x20u);
  }

LABEL_17:
  v18 = *v8;
  if (os_signpost_enabled(*v8))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E9F5000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_CONTROL_CENTER_DISMISSAL_END", " enableTelemetry=YES ", v19, 2u);
  }

  kdebug_trace();
  if (gSignpostListener)
  {
    [gSignpostListener didReceiveSignpost:4];
  }
}

- (void)_updatePresentationForTransitionType:(unint64_t)type translation:(CGPoint)translation velocity:(CGPoint)velocity interactive:(BOOL)interactive
{
  y = velocity.y;
  x = velocity.x;
  v9 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider transitionStateForType:type interactive:interactive translation:translation.x, translation.y];
  [(CCUIMainViewController *)self _updatePresentationForTransitionState:v9 gestureVelocity:0 withCompletionHander:x, y];
}

- (void)_updatePresentationForTransitionState:(id)state gestureVelocity:(CGPoint)velocity withCompletionHander:(id)hander
{
  y = velocity.y;
  x = velocity.x;
  stateCopy = state;
  presentationProvider = self->_presentationProvider;
  previousTransitionState = self->_previousTransitionState;
  handerCopy = hander;
  v12 = [(CCUIOverlayPresentationProvider *)presentationProvider animationBatchForTransitionState:stateCopy previousTransitionState:previousTransitionState gestureVelocity:x, y];
  [(CCUIAnimationRunner *)self->_primaryAnimationRunner additivelyRunAnimationBatch:v12 withCompletionBlock:handerCopy];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider secondaryAnimationBatchForTransitionState:stateCopy previousTransitionState:self->_previousTransitionState gestureVelocity:x, y];
    [(CCUIAnimationRunner *)self->_secondaryAnimationRunner additivelyRunAnimationBatch:v13 withCompletionBlock:0];
  }

  [(CCUIMainViewController *)self _updateChevronStateForTransitionState:stateCopy];
  v14 = [CCUIOverlayTransitionState isSignificantTransitionFrom:self->_previousTransitionState to:stateCopy];
  delegate = [(CCUIMainViewController *)self delegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [stateCopy presentationProgress];
    [delegate controlCenterViewController:self significantPresentationProgressChange:?];
  }

  v16 = [stateCopy copyWithZone:0];
  v17 = self->_previousTransitionState;
  self->_previousTransitionState = v16;
}

- (void)_evaluatePresentationContinuationIntoPagingWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(CCUIOverlayTransitionState *)self->_previousTransitionState pagingProgress];
  v7 = v6;
  v8 = self->_presentationTouchIdentifiers;
  v9 = v8;
  if (v7 > 0.0 && [(NSArray *)v8 count])
  {
    [(CCUIOverlayTransitionState *)self->_previousTransitionState presentationProgress];
    v11 = v10;
    interactivePagingCoordinator = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
    if (v11 > 1.0)
    {
      view = [(CCUIMainViewController *)self view];
      v14 = [interactivePagingCoordinator canBeginPagingAtLocation:view inView:{x, y}];

      if (v14)
      {
        [interactivePagingCoordinator willBeginPagingInteractively:1];
        presentationTouchIdentifiers = self->_presentationTouchIdentifiers;
        self->_presentationTouchIdentifiers = 0;

        delegate = [(CCUIMainViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate controlCenterViewControllerWillContinuePresentationIntoPaging:self];
        }

        overlayPageControl = [(CCUIMainViewController *)self overlayPageControl];
        window = [overlayPageControl window];
        [window _contextId];

        v19 = *MEMORY[0x277CFC8F8];
        if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_21E9F5000, v19, OS_LOG_TYPE_DEFAULT, "Control Center transferred presentation touches into paging", v20, 2u);
        }

        BKSHIDEventTransferTouchesToDifferentCAContext();
      }
    }
  }
}

- (void)_resignActive
{
  self->_active = 0;
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  [pagingViewController willResignActive];
}

- (BOOL)_includesModuleWithIdentifier:(id)identifier consideringObscureness:(BOOL)obscureness
{
  obscurenessCopy = obscureness;
  identifierCopy = identifier;
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  v8 = [pagingViewController moduleViewForIdentifier:identifierCopy];
  if (!v8)
  {
    goto LABEL_8;
  }

  if (!obscurenessCopy)
  {
LABEL_7:
    LOBYTE(window) = 1;
    goto LABEL_9;
  }

  if ([pagingViewController expandedModuleCount] >= 1 && !objc_msgSend(pagingViewController, "isModuleExpandedForIdentifier:", identifierCopy))
  {
LABEL_8:
    LOBYTE(window) = 0;
    goto LABEL_9;
  }

  window = [v8 window];
  if (window)
  {
    [v8 bounds];
    [v8 convertRect:window toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [window bounds];
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    v18 = CGRectIntersectsRect(v20, v21);

    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_9:

  return window;
}

- (void)loadView
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

LABEL_4:
    parentViewController = [(CCUIMainViewController *)self parentViewController];
    if ([parentViewController isViewLoaded])
    {
      view = [parentViewController view];
      [view bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v7 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v11 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
    }

    v14 = objc_alloc(MEMORY[0x277CFC9D0]);
    goto LABEL_8;
  }

  v4 = SBFEffectiveHomeButtonType();

  if (v4 == 2)
  {
    goto LABEL_4;
  }

  parentViewController = [MEMORY[0x277D759A0] mainScreen];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [parentViewController bounds];
  v7 = v16;
  v9 = v17;
  v11 = v18;
  v13 = v19;
LABEL_8:
  v15 = [v14 initWithFrame:{v7, v9, v11, v13}];
  [(CCUIMainViewController *)self setView:v15];
}

- (void)viewDidLoad
{
  v67.receiver = self;
  v67.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v67 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277CFC9A8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v8;

  [(CCUIOverlayBackgroundPresenting *)self->_backgroundView setAutoresizingMask:18];
  [(CCUIOverlayBackgroundPresenting *)self->_backgroundView setDelegate:self];
  v10 = self->_backgroundView;
  view = [(CCUIMainViewController *)self view];
  [view bounds];
  [(CCUIOverlayBackgroundPresenting *)v10 setFrame:?];

  view2 = [(CCUIMainViewController *)self view];
  [view2 addSubview:self->_backgroundView];

  view3 = [(CCUIMainViewController *)self view];
  [view3 setHidden:1];

  v14 = objc_alloc_init(MEMORY[0x277CFC9D0]);
  containerView = self->_containerView;
  self->_containerView = v14;

  view4 = [(CCUIMainViewController *)self view];
  [view4 addSubview:self->_containerView];

  view5 = [(CCUIMainViewController *)self view];
  [view5 _setSafeAreaInsetsFrozen:1];

  moduleInstanceManager = [(CCUIMainViewController *)self moduleInstanceManager];
  moduleSettingsManager = [(CCUIMainViewController *)self moduleSettingsManager];
  v20 = objc_alloc_init(CCUIControlIntentStore);
  v21 = objc_alloc(MEMORY[0x277CFA3B8]);
  visibleControls = [MEMORY[0x277CFA3C0] visibleControls];
  v23 = [v21 initWithOptions:visibleControls];

  v63 = moduleInstanceManager;
  v62 = v23;
  v61 = [[CCUIControlDescriptorProvider alloc] initWithWidgetExtensionProvider:v23];
  v24 = [[CCUIPagingViewController alloc] initWithModuleInstanceManager:moduleInstanceManager moduleSettingsManager:moduleSettingsManager controlIntentStore:v20 controlDescriptorProvider:v61 controlExtensionProvider:v23];
  pagingViewController = self->_pagingViewController;
  self->_pagingViewController = v24;

  [(CCUIPagingViewController *)self->_pagingViewController setPagingDelegate:self];
  [(CCUIPagingViewController *)self->_pagingViewController setContextDelegate:self];
  v26 = self->_pagingViewController;
  _safePagingViewContainerView = [(CCUIMainViewController *)self _safePagingViewContainerView];
  [(CCUIMainViewController *)self bs_addChildViewController:v26 withSuperview:_safePagingViewContainerView];

  scrollView = [(CCUIPagingViewController *)self->_pagingViewController scrollView];
  [scrollView setHostingDelegate:self];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  pagingViewScrollPanGesture = self->_pagingViewScrollPanGesture;
  self->_pagingViewScrollPanGesture = panGestureRecognizer;

  viewForInstallingDismissGestureRecognizers = [(CCUIPagingViewController *)self->_pagingViewController viewForInstallingDismissGestureRecognizers];
  objc_initWeak(&location, self);
  interactivePagingCoordinator = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __37__CCUIMainViewController_viewDidLoad__block_invoke;
  v64[3] = &unk_2783826A8;
  objc_copyWeak(&v65, &location);
  [interactivePagingCoordinator addPagingDidChangeHandler:v64];
  if (objc_opt_respondsToSelector())
  {
    v33 = [[CCUIHeaderPocketView alloc] initWithFrame:v63 moduleInstanceManager:v4, v5, v6, v7];
    headerPocketView = self->_headerPocketView;
    self->_headerPocketView = v33;

    [(CCUIHeaderPocketView *)self->_headerPocketView setStatusBarDelegate:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView setActionsDelegate:self];
    view6 = [(CCUIMainViewController *)self view];
    [view6 addSubview:self->_headerPocketView];

    [(CCUIHeaderPocketView *)self->_headerPocketView addSensorAttributionViewControllerAsChildOfViewController:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView addDynamicControlsViewControllerAsChildOfViewController:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView setHeaderPocketViewDelegate:self];
  }

  _safeStatusLabelViewContainerView = [(CCUIMainViewController *)self _safeStatusLabelViewContainerView];
  [(CCUIMainViewController *)self bs_addChildViewController:self->_statusLabelViewController withSuperview:_safeStatusLabelViewContainerView];
  view7 = [(CCUIStatusLabelViewController *)self->_statusLabelViewController view];
  [view7 setUserInteractionEnabled:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = _safeStatusLabelViewContainerView;
    view8 = [(CCUIStatusLabelViewController *)self->_statusLabelViewController view];
    [v38 setStatusLabelView:view8];
  }

  view9 = [(CCUIMainViewController *)self view];
  [view9 _setIgnoreBackdropViewsWhenHiding:1];

  if (self->_headerPocketView)
  {
    if ([(CCUIOverlayPresentationProvider *)self->_presentationProvider isPanDismissalAvailable])
    {
      v41 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleDismissalPanGestureRecognizer_];
      headerPocketViewDismissalPanGesture = self->_headerPocketViewDismissalPanGesture;
      self->_headerPocketViewDismissalPanGesture = v41;

      [(UIPanGestureRecognizer *)self->_headerPocketViewDismissalPanGesture setMaximumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)self->_headerPocketViewDismissalPanGesture setDelegate:self];
      [(CCUIHeaderPocketView *)self->_headerPocketView addGestureRecognizer:self->_headerPocketViewDismissalPanGesture];
    }

    v43 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDismissalTapGestureRecognizer_];
    headerPocketViewDismissalTapGesture = self->_headerPocketViewDismissalTapGesture;
    self->_headerPocketViewDismissalTapGesture = v43;

    [(UITapGestureRecognizer *)self->_headerPocketViewDismissalTapGesture setDelegate:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView addGestureRecognizer:self->_headerPocketViewDismissalTapGesture];
  }

  if (objc_opt_respondsToSelector())
  {
    flickGestureBehavior = [(CCUIOverlayPresentationProvider *)self->_presentationProvider flickGestureBehavior];
    if (flickGestureBehavior)
    {
      v46 = [[CCUIFlickGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalFlickGestureRecognizer_];
      pagingViewDismissalFlickGesture = self->_pagingViewDismissalFlickGesture;
      self->_pagingViewDismissalFlickGesture = v46;

      [(CCUIFlickGestureRecognizer *)self->_pagingViewDismissalFlickGesture setDelegate:self];
      v48 = self->_pagingViewDismissalFlickGesture;
      [flickGestureBehavior dismissalFlickMaximumTime];
      [(CCUIFlickGestureRecognizer *)v48 setMaximumFlickTime:?];
      v49 = self->_pagingViewDismissalFlickGesture;
      [flickGestureBehavior dismissalFlickMinimumVelocity];
      [(CCUIFlickGestureRecognizer *)v49 setMinimumFlickVelocity:?];
      -[CCUIFlickGestureRecognizer setAllowedFlickDirections:](self->_pagingViewDismissalFlickGesture, "setAllowedFlickDirections:", [flickGestureBehavior dismissalFlickAllowedDirections]);
      [viewForInstallingDismissGestureRecognizers addGestureRecognizer:self->_pagingViewDismissalFlickGesture];
    }
  }

  else
  {
    flickGestureBehavior = 0;
  }

  if ([(CCUIOverlayPresentationProvider *)self->_presentationProvider isPanDismissalAvailable])
  {
    v50 = [[CCUIDismissalGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalPanGestureRecognizer_];
    pagingViewDismissalPanGesture = self->_pagingViewDismissalPanGesture;
    self->_pagingViewDismissalPanGesture = &v50->super;

    [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setDelegate:self];
    [viewForInstallingDismissGestureRecognizers addGestureRecognizer:self->_pagingViewDismissalPanGesture];
  }

  v52 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDismissalTapGestureRecognizer_];
  pagingViewDismissalTapGesture = self->_pagingViewDismissalTapGesture;
  self->_pagingViewDismissalTapGesture = v52;

  [(UITapGestureRecognizer *)self->_pagingViewDismissalTapGesture setDelegate:self];
  [viewForInstallingDismissGestureRecognizers addGestureRecognizer:self->_pagingViewDismissalTapGesture];
  v54 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleEditingLongPressGestureRecognizer_];
  editingLongPressGesture = self->_editingLongPressGesture;
  self->_editingLongPressGesture = v54;

  [(UILongPressGestureRecognizer *)self->_editingLongPressGesture setDelegate:self];
  [(CCUIPagingViewController *)self->_pagingViewController setLongPressToEditGestureRecognizer:self->_editingLongPressGesture];
  view10 = [(CCUIMainViewController *)self view];
  [view10 addGestureRecognizer:self->_editingLongPressGesture];

  headerBackgroundView = [(CCUIHeaderPocketView *)self->_headerPocketView headerBackgroundView];

  if (headerBackgroundView)
  {
    pagingView = [(CCUIMainViewController *)self pagingView];
    v59 = [MEMORY[0x277D65E58] configureGradientMaskForFeatherBlurRecipe:7 onContentView:pagingView];
    headerPocketGradientMaskLayers = self->_headerPocketGradientMaskLayers;
    self->_headerPocketGradientMaskLayers = v59;
  }

  objc_destroyWeak(&v65);
  objc_destroyWeak(&location);
}

void __37__CCUIMainViewController_viewDidLoad__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained overlayHeaderView];
  v4 = v3;
  v5 = 1.0;
  if (a2)
  {
    v5 = 0.0;
  }

  [v3 setAdditionalContentAlphaMultiplier:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v5 viewDidAppear:appear];
  analyticsEventsController = [(CCUIMainViewController *)self analyticsEventsController];
  [analyticsEventsController analyticsLogMainViewControllerPresent];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v5 viewDidDisappear:disappear];
  analyticsEventsController = [(CCUIMainViewController *)self analyticsEventsController];
  [analyticsEventsController analyticsLogMainViewControllerDismiss];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CCUIMainViewController;
  coordinatorCopy = coordinator;
  [(CCUIMainViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:1 completion:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__CCUIMainViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783826D0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

uint64_t __77__CCUIMainViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__CCUIMainViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v4[3] = &unk_278381DF0;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:2031617 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __77__CCUIMainViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  isEditing = [(CCUIMainViewController *)self isEditing];
  v6 = isEditing;
  v7 = !editingCopy || isEditing;
  v8 = MEMORY[0x277CFC8F8];
  if (v7)
  {
    if (!editingCopy && isEditing)
    {
      v9 = *MEMORY[0x277CFC8F8];
      if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21E9F5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_EDIT_MODE_EXIT_BEGIN", " enableTelemetry=YES ", buf, 2u);
      }

      kdebug_trace();
      v10 = gSignpostListener;
      if (gSignpostListener)
      {
        v11 = 13;
LABEL_23:
        [v10 didReceiveSignpost:v11];
      }
    }
  }

  else
  {
    v12 = *MEMORY[0x277CFC8F8];
    if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_21E9F5000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_EDIT_MODE_ENTER_BEGIN", " enableTelemetry=YES ", v21, 2u);
    }

    kdebug_trace();
    v10 = gSignpostListener;
    if (gSignpostListener)
    {
      v11 = 11;
      goto LABEL_23;
    }
  }

  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  [pagingViewController setEditing:editingCopy];
  if (v7)
  {
    if (!editingCopy && v6)
    {
      v14 = *v8;
      if (os_signpost_enabled(*v8))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_21E9F5000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_EDIT_MODE_EXIT_END", " enableTelemetry=YES ", v18, 2u);
      }

      kdebug_trace();
      v15 = gSignpostListener;
      if (gSignpostListener)
      {
        v16 = 14;
LABEL_25:
        [v15 didReceiveSignpost:v16];
      }
    }
  }

  else
  {
    v17 = *v8;
    if (os_signpost_enabled(*v8))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_21E9F5000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_EDIT_MODE_ENTER_END", " enableTelemetry=YES ", v19, 2u);
    }

    kdebug_trace();
    v15 = gSignpostListener;
    if (gSignpostListener)
    {
      v16 = 12;
      goto LABEL_25;
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_pagingViewDismissalFlickGesture == beginCopy)
  {
    v7 = [(CCUIMainViewController *)self _dismissalFlickGestureRecognizerShouldBegin:?];
    goto LABEL_11;
  }

  if (self->_headerPocketViewDismissalTapGesture == beginCopy || self->_pagingViewDismissalTapGesture == beginCopy)
  {
    v7 = [(CCUIMainViewController *)self _dismissalTapGestureRecognizerShouldBegin:beginCopy];
LABEL_11:
    v6 = v7;
    goto LABEL_12;
  }

  if (self->_headerPocketViewDismissalPanGesture == beginCopy || self->_pagingViewDismissalPanGesture == beginCopy)
  {
    v7 = [(CCUIMainViewController *)self _dismissalPanGestureRecognizerShouldBegin:beginCopy];
    goto LABEL_11;
  }

  if (self->_editingLongPressGesture == beginCopy)
  {
    v7 = [(CCUIMainViewController *)self _editingLongPressGestureRecognizerShouldBegin:beginCopy];
    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->_headerPocketViewDismissalPanGesture == recognizerCopy)
  {
    view = [gestureRecognizerCopy view];
    statusBar = [(CCUIHeaderPocketView *)self->_headerPocketView statusBar];
    if ([view isDescendantOfView:statusBar])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  if (self->_pagingViewDismissalTapGesture == recognizerCopy && (-[CCUIMainViewController pagingViewController](self, "pagingViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEditing], v12, !v13))
  {
    isKindOfClass = 1;
  }

  else if (self->_editingLongPressGesture == recognizerCopy)
  {
    view2 = [v8 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [v8 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (id)fallbackDragHitTestViewForScrollView:(id)view
{
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  currentIconlistView = [pagingViewController currentIconlistView];

  return currentIconlistView;
}

- (void)pagingViewController:(id)controller didAdd:(id)add
{
  addCopy = add;
  if (self->_active)
  {
    v5 = objc_opt_class();
    v6 = addCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 willBecomeActive];
  }

  [(CCUIMainViewController *)self _setupPanGestureFailureRequirements];
}

- (void)pagingViewController:(id)controller willRemove:(id)remove
{
  removeCopy = remove;
  if (self->_active)
  {
    v10 = removeCopy;
    v6 = objc_opt_class();
    v7 = v10;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v9 willResignActive];
    removeCopy = v10;
  }
}

- (void)pagingViewController:(id)controller willExpand:(id)expand
{
  v5 = [(CCUIMainViewController *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v5 willOpenExpandedModuleForControlCenterViewController:self];
  }

  [(CCUIMainViewController *)self _willPresentViewControllerContainedInPages];
  self->_showingRootView = 0;
}

- (void)pagingViewController:(id)controller didClose:(id)close
{
  v5 = [(CCUIMainViewController *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v5 didCloseExpandedModuleForControlCenterViewController:self];
  }

  self->_showingRootView = 1;
  [(CCUIMainViewController *)self _updateAskToAirDropModuleVisibility];
}

- (void)_willPresentViewControllerContainedInPages
{
  [(CCUIMainViewController *)self presentAnimated:1 withCompletionHandler:0];
  headerPocketView = self->_headerPocketView;

  [(CCUIHeaderPocketView *)headerPocketView setAlpha:0.0];
}

- (void)pagingViewController:(id)controller editingDidChange:(BOOL)change
{
  v5 = objc_opt_respondsToSelector();
  presentationProvider = self->_presentationProvider;
  if (v5)
  {
    transitionBetweenEditing = [(CCUIOverlayPresentationProvider *)presentationProvider transitionBetweenEditing];
    [(CCUIAnimationRunner *)self->_editingAnimationRunner runAnimationBatch:transitionBetweenEditing withCompletionBlock:0];
  }

  else
  {

    [(CCUIOverlayPresentationProvider *)presentationProvider layoutViews];
  }
}

- (id)reasonToDisallowEditing:(id)editing
{
  systemAgent = [(CCUIMainViewController *)self systemAgent];
  reasonToDisallowEditing = [systemAgent reasonToDisallowEditing];

  return reasonToDisallowEditing;
}

- (id)pagingViewControllerDidAddModuleView:(id)view
{
  if ([(CCUIMainViewController *)self presentationState]== 3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__CCUIMainViewController_pagingViewControllerDidAddModuleView___block_invoke;
    aBlock[3] = &unk_2783826F8;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __63__CCUIMainViewController_pagingViewControllerDidAddModuleView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = a2;
  v15 = 0u;
  v16 = 0u;
  [*(a1 + 32) _layoutRectForIconCoordinate:a3 gridSize:{a4, a5}];
  v10 = *(a1 + 32);
  v11 = *(v10 + 992);
  v12 = *(v10 + 1144);
  v14[0] = v15;
  v14[1] = v16;
  v13 = [v11 moduleViewAnimationBatchForTransitionState:v12 moduleView:v9 layoutRect:v14 gestureVelocity:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [*(*(a1 + 32) + 1008) additivelyRunAnimationBatch:v13 withCompletionBlock:0];
}

- (BOOL)isSystemRestoringForPagingViewController:(id)controller
{
  systemAgent = [(CCUIMainViewController *)self systemAgent];
  isRestoring = [systemAgent isRestoring];

  return isRestoring;
}

- (BOOL)pagingViewController:(id)controller shouldPauseCheckingInvalidControlsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  systemAgent = [(CCUIMainViewController *)self systemAgent];
  v7 = [systemAgent hasApplicationPlaceholderForDisplayID:identifierCopy];

  systemAgent2 = [(CCUIMainViewController *)self systemAgent];
  LOBYTE(systemAgent) = [systemAgent2 hasApplicationForDisplayID:identifierCopy];

  return (v7 | systemAgent) & 1;
}

- (void)handleControlCenterOperationTypeWithOperationService:(id)service operationType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__CCUIMainViewController_handleControlCenterOperationTypeWithOperationService_operationType_completionHandler___block_invoke;
  block[3] = &unk_278382720;
  v11[1] = type;
  objc_copyWeak(v11, &location);
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

uint64_t __111__CCUIMainViewController_handleControlCenterOperationTypeWithOperationService_operationType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained presentAnimated:1 withCompletionHandler:0];

    v2 = *(a1 + 56);
  }

  if (v2 <= 3)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_16;
      }

      v4 = objc_loadWeakRetained((a1 + 48));
      if ([v4 presentationState])
      {
        v5 = objc_loadWeakRetained((a1 + 48));
        v6 = [v5 presentationState];

        if (v6 != 3)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v7 = objc_loadWeakRetained((a1 + 48));
      [v7 presentAnimated:1 withCompletionHandler:0];
      goto LABEL_15;
    }

LABEL_8:
    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 dismissAnimated:1 withCompletionHandler:0];
LABEL_15:

    goto LABEL_16;
  }

  if (v2 == 4)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 presentAnimated:1 withCompletionHandler:0];

    v9 = [*(a1 + 32) view];
    [v9 layoutIfNeeded];

    [*(*(a1 + 32) + 1032) presentSensorAttributionExpandedView:1];
  }

  else if (v2 == 5)
  {
    [*(*(a1 + 32) + 1032) dismissSensorAttributionExpandedView:1 completion:&__block_literal_global_6];
  }

LABEL_16:
  v10 = *(*(a1 + 40) + 16);

  return v10();
}

- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CCUIMainViewController_resetToDefaultLayoutWithCompletionHandler___block_invoke;
  v6[3] = &unk_278382748;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __68__CCUIMainViewController_resetToDefaultLayoutWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pagingViewController];
  [v2 resetToDefaultLayout];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)moduleInstancesChangedForModuleInstanceManager:(id)manager
{
  view = [(CCUIMainViewController *)self view];
  [view setNeedsLayout];
}

- (void)setOverlayStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(CCUIMainViewController *)self delegate];
  [delegate controlCenterViewController:self wantsHostStatusBarHidden:!hiddenCopy];

  if (hiddenCopy)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(UIStatusBar *)self->_compactLeadingStatusBar setAlpha:v6];
  statusBar = [(CCUIHeaderPocketView *)self->_headerPocketView statusBar];
  [statusBar setAlpha:v6];
}

- (void)setOverlayPageContentAlpha:(double)alpha
{
  interactivePagingCoordinator = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [interactivePagingCoordinator setPageContentAlpha:alpha];
}

- (void)setOverlayPageContentScale:(CGPoint)scale
{
  y = scale.y;
  x = scale.x;
  interactivePagingCoordinator = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [interactivePagingCoordinator setPageContentScale:{x, y}];
}

- (void)setOverlayPageContentTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  interactivePagingCoordinator = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [interactivePagingCoordinator setPageContentTranslation:{x, y}];
}

- (void)enumerateOverlayModuleViewsWithBlock:(id)block
{
  blockCopy = block;
  pagingViewController = self->_pagingViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CCUIMainViewController_enumerateOverlayModuleViewsWithBlock___block_invoke;
  v7[3] = &unk_278382770;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(CCUIPagingViewController *)pagingViewController enumerateDisplayedModuleViewsWithBlock:v7];
}

void __63__CCUIMainViewController_enumerateOverlayModuleViewsWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a2;
  v15 = 0u;
  v16 = 0u;
  v11 = *(a1 + 32);
  if (v11)
  {
    [v11 _layoutRectForIconCoordinate:a3 gridSize:{a4, a5}];
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 16);
  v14[0] = v15;
  v14[1] = v16;
  v13(v12, v10, v14, v9);
}

- (void)performIfDisplayingModuleView:(id)view subview:(id)subview block:(id)block
{
  viewCopy = view;
  blockCopy = block;
  pagingViewController = self->_pagingViewController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__CCUIMainViewController_performIfDisplayingModuleView_subview_block___block_invoke;
  v13[3] = &unk_278382798;
  v14 = viewCopy;
  v15 = blockCopy;
  v13[4] = self;
  v11 = viewCopy;
  v12 = blockCopy;
  [(CCUIPagingViewController *)pagingViewController performIfDisplayingModuleView:v11 subview:subview block:v13];
}

uint64_t __70__CCUIMainViewController_performIfDisplayingModuleView_subview_block___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0u;
  v12 = 0u;
  v5 = a1[4];
  if (v5)
  {
    [v5 _layoutRectForIconCoordinate:a2 gridSize:{a3, a4}];
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = *(v6 + 16);
  v10[0] = v11;
  v10[1] = v12;
  return v8(v6, v7, v10, a4);
}

- (CCUILayoutRect)_layoutRectForIconCoordinate:(SEL)coordinate gridSize:(SBIconCoordinate)size
{
  var1 = size.var1;
  var0 = size.var0;
  if (SBIconCoordinateIsNotFound())
  {
    [CCUIMainViewController _layoutRectForIconCoordinate:gridSize:];
  }

  result = SBHIconGridSizeIsEmpty();
  if (result)
  {
    [CCUIMainViewController _layoutRectForIconCoordinate:gridSize:];
  }

  retstr->var0.var0 = var0 - 1;
  retstr->var0.var1 = var1 - 1;
  retstr->var1.width = a5.var0;
  retstr->var1.height = a5.var1;
  return result;
}

- (UIEdgeInsets)overlayAdditionalEdgeInsets
{
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  if ([(CCUIMainViewController *)self isReachabilityActive])
  {
    delegate = [(CCUIMainViewController *)self delegate];
    [delegate reachabilityOffsetForControlCenterViewController:self];
    v4 = v4 + v8;
  }

  v9 = v4;
  v10 = v3;
  v11 = v5;
  v12 = v6;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)overlayContentLayoutInset
{
  [(CCUIPagingViewController *)self->_pagingViewController additionalContentInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)compactTrailingStyleRequestForStatusBar:(id)bar
{
  trailingStyleRequest = [(CCUIStatusBarStyleSnapshot *)self->_hostStatusBarStyleSnapshot trailingStyleRequest];
  if ([(CCUIStatusBarStyleSnapshot *)self->_hostStatusBarStyleSnapshot isHidden])
  {
    v5 = [objc_alloc(MEMORY[0x277D75AA8]) initWithStyle:1 legacy:0 legibilityStyle:_UILegibilityStyleFromStatusBarStyle() foregroundColor:0];

    trailingStyleRequest = v5;
  }

  return trailingStyleRequest;
}

- (CGRect)compactAvoidanceFrameForStatusBar:(id)bar
{
  if (([(CCUIMainViewController *)self _interfaceOrientation]- 1) > 1)
  {
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(CCUIStatusBarStyleSnapshot *)self->_hostStatusBarStyleSnapshot avoidanceFrame];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)expandedAvoidanceFrameForStatusBar:(id)bar
{
  v4 = [(CCUIMainViewController *)self _interfaceOrientation]- 3;
  isDisplayingSensorStatus = [(CCUIHeaderPocketView *)self->_headerPocketView isDisplayingSensorStatus];
  if (v4 <= 0xFFFFFFFFFFFFFFFDLL && isDisplayingSensorStatus)
  {
    [(CCUIHeaderPocketView *)self->_headerPocketView sensorAttributionFrame];
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)contentModuleContext:(id)context enqueueStatusUpdate:(id)update
{
  contextCopy = context;
  updateCopy = update;
  if (self->_active)
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    expandedModuleCount = [pagingViewController expandedModuleCount];

    if (!expandedModuleCount)
    {
      statusLabelViewController = [(CCUIMainViewController *)self statusLabelViewController];
      moduleIdentifier = [contextCopy moduleIdentifier];
      [statusLabelViewController enqueueStatusUpdate:updateCopy forIdentifier:moduleIdentifier];
    }
  }
}

- (void)requestExpandModuleForContentModuleContext:(id)context
{
  contextCopy = context;
  if (self->_active)
  {
    v10 = contextCopy;
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    expandedModuleCount = [pagingViewController expandedModuleCount];

    contextCopy = v10;
    if (!expandedModuleCount)
    {
      pagingViewController2 = [(CCUIMainViewController *)self pagingViewController];
      moduleIdentifier = [v10 moduleIdentifier];
      uniqueIdentifier = [v10 uniqueIdentifier];
      [pagingViewController2 expandModuleWithIdentifier:moduleIdentifier uniqueIdentifier:uniqueIdentifier];

      contextCopy = v10;
    }
  }
}

- (void)dismissExpandedViewForContentModuleContext:(id)context
{
  if (self->_active)
  {
    contextCopy = context;
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    moduleIdentifier = [contextCopy moduleIdentifier];

    LODWORD(contextCopy) = [pagingViewController isModuleExpandedForIdentifier:moduleIdentifier];
    if (contextCopy)
    {

      [(CCUIMainViewController *)self dismissPresentedContentAnimated:1 completion:0];
    }
  }
}

- (void)dismissControlCenterForContentModuleContext:(id)context
{
  if ([(CCUIMainViewController *)self isActive])
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (id)contentModuleContext:(id)context requestsSensorActivityDataForActiveSensorType:(unint64_t)type
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = MEMORY[0x277CFC8F8];
  v8 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E9F5000, v8, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context requesting ACTIVE sensor activity data...", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  if (type > 1)
  {
    activeSensorActivityData = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __93__CCUIMainViewController_contentModuleContext_requestsSensorActivityDataForActiveSensorType___block_invoke;
    v20[3] = &unk_2783827C0;
    v20[4] = self;
    v20[5] = buf;
    v20[6] = type;
    [activeSensorActivityData enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    [(CCUIMainViewController *)self _getCameraSensorActivityData:&v22 micSensorActivityData:&v21 isMutedMic:&v23 + 1 isInactiveMicModeSelection:&v23];
    v9 = v22;
    v10 = v22;
    v11 = v21;
    v12 = v21;
    if (type)
    {
      if (v23 & 0x100) != 0 || (v23)
      {
        v13 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "[AV Modules] Found MUTED or INACTIVE MICROPHONE, excluding because we're looking for ACTIVE sensor activity data", v30, 2u);
        }
      }

      else
      {
        objc_storeStrong(v25 + 5, v11);
      }
    }

    else
    {
      objc_storeStrong(v25 + 5, v9);
    }
  }

  v15 = *v7;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CFC9B8] stringFromSensorType:type];
    v17 = [*(v25 + 5) debugDescription];
    *v30 = 138543618;
    v31 = v16;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context returning ACTIVE sensor activity data for requested sensor type: %{public}@, data: %{public}@", v30, 0x16u);
  }

  v18 = *(v25 + 5);
  _Block_object_dispose(buf, 8);

  return v18;
}

void __93__CCUIMainViewController_contentModuleContext_requestsSensorActivityDataForActiveSensorType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "[AV Modules] Looking for OTHER matching sensor types, bundleIdentifier: %{public}@", &v14, 0xCu);
  }

  v9 = [*(a1 + 32) _isSensorActivityData:v5 relevantForSensorType:0];
  v10 = [*(a1 + 32) _isSensorActivityData:v5 relevantForSensorType:1];
  if ([v5 usedRecently] & 1) == 0 && objc_msgSend(v5, "sensorType") == *(a1 + 48) && ((v9 | v10))
  {
    v11 = [v5 copy];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a3 = 1;
  }
}

- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = MEMORY[0x277CFC8F8];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context requesting MUTED MICROPHONE sensor activity data...", buf, 2u);
  }

  v15 = 0;
  v14 = 0;
  [(CCUIMainViewController *)self _getCameraSensorActivityData:0 micSensorActivityData:&v14 isMutedMic:&v15 isInactiveMicModeSelection:0];
  v7 = v14;
  v8 = v7;
  v9 = 0;
  if (v15 == 1)
  {
    v9 = v7;
  }

  v10 = *v5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 debugDescription];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_21E9F5000, v11, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context returning MUTED MICROPHONE sensor activity data: %{public}@", buf, 0xCu);
  }

  return v9;
}

- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)selection
{
  v18 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v5 = MEMORY[0x277CFC8F8];
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context requesting INACTIVE MICROPHONE sensor activity data...", buf, 2u);
  }

  v15 = 0;
  v14 = 0;
  [(CCUIMainViewController *)self _getCameraSensorActivityData:0 micSensorActivityData:&v14 isMutedMic:0 isInactiveMicModeSelection:&v15];
  v7 = v14;
  v8 = v7;
  v9 = 0;
  if (v15 == 1)
  {
    v9 = v7;
  }

  v10 = *v5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 debugDescription];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_21E9F5000, v11, OS_LOG_TYPE_DEFAULT, "[AV Modules] Context module context returning INACTIVE MICROPHONE sensor activity data: %{public}@", buf, 0xCu);
  }

  return v9;
}

- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)context
{
  systemAgent = [(CCUIMainViewController *)self systemAgent];
  isPasscodeLocked = [systemAgent isPasscodeLocked];

  return isPasscodeLocked;
}

- (void)_getCameraSensorActivityData:(id *)data micSensorActivityData:(id *)activityData isMutedMic:(BOOL *)mic isInactiveMicModeSelection:(BOOL *)selection
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  activeSensorActivityData = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
  v12 = [activeSensorActivityData bs_filter:&__block_literal_global_129];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_2;
  v45[3] = &unk_278382808;
  v45[4] = self;
  v45[5] = &v46;
  [v12 enumerateObjectsUsingBlock:v45];
  v13 = v47[5];
  if (v13)
  {
    attributionGroup = [v13 attributionGroup];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__2;
    v43 = __Block_byref_object_dispose__2;
    v44 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_130;
    v36[3] = &unk_278382808;
    v15 = attributionGroup;
    v37 = v15;
    v38 = &v39;
    [v12 enumerateObjectsUsingBlock:v36];
    v16 = v40[5];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider mutedMicrophoneSensorActivityData];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v31 = ;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_2_134;
      v33[3] = &unk_278382808;
      v22 = v15;
      v34 = v22;
      v35 = &v39;
      [v31 enumerateObjectsUsingBlock:v33];
      v23 = v40[5];
      v19 = v23 != 0;
      if (v23)
      {
        v17 = v23;
        v18 = 0;
      }

      else if (CCUIFeatureEnabled() && (-[CCUISensorActivityDataProvider inactiveSensorActivityDataEligibleForMicModeSelection](self->_sensorActivityDataProvider, "inactiveSensorActivityDataEligibleForMicModeSelection"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 copy], v25, v26))
      {
        attributionGroup2 = [v26 attributionGroup];
        if (!attributionGroup2)
        {
          attributionGroup2 = [v26 bundleIdentifier];
        }

        v30 = attributionGroup2;
        v28 = [attributionGroup2 isEqualToString:v22];
        v18 = v28;
        if (v28)
        {
          v17 = v26;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }
    }

    _Block_object_dispose(&v39, 8);
    if (data)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__2;
    v43 = __Block_byref_object_dispose__2;
    v44 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_3;
    v32[3] = &unk_278382808;
    v32[4] = self;
    v32[5] = &v39;
    [v12 enumerateObjectsUsingBlock:v32];
    v20 = v40[5];
    if (v20)
    {
      v17 = v20;
      v18 = 0;
      v19 = 0;
    }

    else if ((objc_opt_respondsToSelector() & 1) != 0 && (-[CCUISensorActivityDataProvider mutedMicrophoneSensorActivityData](self->_sensorActivityDataProvider, "mutedMicrophoneSensorActivityData"), v21 = objc_claimAutoreleasedReturnValue(), [v21 anyObject], v17 = objc_claimAutoreleasedReturnValue(), v21, v17))
    {
      v18 = 0;
      v19 = 1;
    }

    else if (CCUIFeatureEnabled())
    {
      inactiveSensorActivityDataEligibleForMicModeSelection = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider inactiveSensorActivityDataEligibleForMicModeSelection];
      v17 = [inactiveSensorActivityDataEligibleForMicModeSelection copy];

      v19 = 0;
      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    _Block_object_dispose(&v39, 8);

    if (data)
    {
LABEL_30:
      *data = v47[5];
    }
  }

  if (activityData)
  {
    v29 = v17;
    *activityData = v17;
  }

  if (mic)
  {
    *mic = v19;
  }

  if (selection)
  {
    *selection = v18;
  }

  _Block_object_dispose(&v46, 8);
}

void __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "[AV Modules] Looking for CAMERA matching sensor types, bundleIdentifier: %{public}@", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) _isSensorActivityData:v5 relevantForSensorType:0];
  if (![v5 sensorType] && v9)
  {
    v10 = [v5 copy];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a3 = 1;
  }
}

void __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_130(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if ([v10 sensorType] == 1)
  {
    v5 = [v10 attributionGroup];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      v7 = [v10 copy];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *a3 = 1;
    }
  }
}

void __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_2_134(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 attributionGroup];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = [v10 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a3 = 1;
  }
}

void __115__CCUIMainViewController__getCameraSensorActivityData_micSensorActivityData_isMutedMic_isInactiveMicModeSelection___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "[AV Modules] Looking for MICROPHONE matching sensor types, bundleIdentifier: %{public}@", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) _isSensorActivityData:v5 relevantForSensorType:1];
  if ([v5 sensorType] == 1 && v9)
  {
    v10 = [v5 copy];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a3 = 1;
  }
}

- (BOOL)_isSensorActivityData:(id)data relevantForSensorType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [data bundleIdentifier];
  if (!bundleIdentifier)
  {
    v9 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
    {
      [CCUIMainViewController _isSensorActivityData:v9 relevantForSensorType:?];
    }

    os_fault_with_payload();
    goto LABEL_12;
  }

  if (type != 1)
  {
    if (!type)
    {
      ShouldBeShownForBundleID = AVControlCenterVideoEffectsModuleShouldBeShownForBundleID();
      v7 = *MEMORY[0x277CFC8F8];
      if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        v12 = ShouldBeShownForBundleID;
        v8 = "[AV Modules] AVFoundation says video module should be shown: %{BOOL}d";
LABEL_8:
        _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 8u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(ShouldBeShownForBundleID) = 0;
    goto LABEL_13;
  }

  ShouldBeShownForBundleID = AVControlCenterMicrophoneModuleShouldBeShownForBundleID();
  v7 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = ShouldBeShownForBundleID;
    v8 = "[AV Modules] AVFoundation says audio module should be shown: %{BOOL}d";
    goto LABEL_8;
  }

LABEL_13:

  return ShouldBeShownForBundleID;
}

- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)context
{
  moduleIdentifier = [context moduleIdentifier];
  [(CCUIPagingViewController *)self->_pagingViewController invalidateContainerViewsForPlatterTreatmentWithIdentifier:moduleIdentifier];
}

- (id)existingControlKindFromWidgetExtension:(id)extension
{
  v33 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  iconModel = [(CCUIPagingViewController *)self->_pagingViewController iconModel];
  [iconModel iconsOfClass:objc_opt_class()];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v30 = 0u;
  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v20 = *v28;
    v21 = iconModel;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [*(*(&v27 + 1) + 8 * i) iconDataSourcesOfClass:objc_opt_class()];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              extensionBundleIdentifier = [v15 extensionBundleIdentifier];
              v17 = [extensionBundleIdentifier isEqualToString:extensionCopy];

              if (v17)
              {
                kind = [v15 kind];

                iconModel = v21;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20;
      }

      kind = 0;
      iconModel = v21;
      v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    kind = 0;
  }

LABEL_19:

  return kind;
}

- (void)overlayBackgroundViewTapped:(id)tapped
{
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  isEditing = [pagingViewController isEditing];

  if (isEditing)
  {

    [(CCUIMainViewController *)self setEditing:0];
  }

  else
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (void)beginPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity touches:(id)touches
{
  y = velocity.y;
  x = velocity.x;
  v8 = translation.y;
  v9 = translation.x;
  v10 = location.y;
  v11 = location.x;
  touchesCopy = touches;
  if ([(CCUIMainViewController *)self presentationState]!= 1 && [(CCUIMainViewController *)self presentationState]!= 2)
  {
    [(CCUIMainViewController *)self _setPresentationPanGestureActive:1];
    v13 = [touchesCopy bs_compactMap:&__block_literal_global_140];
    presentationTouchIdentifiers = self->_presentationTouchIdentifiers;
    self->_presentationTouchIdentifiers = v13;

    v15 = [(CCUIMainViewController *)self _beginPresentationAnimated:1 interactive:1];
    [(CCUIMainViewController *)self _updateSensorActivityStatusForHeaderPocketView];
    [(CCUIMainViewController *)self updatePresentationWithLocation:v11 translation:v10 velocity:v9, v8, x, y];
    [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  }
}

uint64_t __85__CCUIMainViewController_beginPresentationWithLocation_translation_velocity_touches___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 _touchIdentifier];

  return [v2 numberWithUnsignedInt:v3];
}

- (void)updatePresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = translation.y;
  v8 = translation.x;
  v9 = location.y;
  v10 = location.x;
  if ([(CCUIMainViewController *)self presentationState]== 1 && [(CCUIMainViewController *)self transitionState]== 1)
  {
    [(CCUIMainViewController *)self _updatePresentationForTransitionType:1 translation:1 velocity:v8 interactive:v7, x, y];

    [(CCUIMainViewController *)self _evaluatePresentationContinuationIntoPagingWithLocation:v10, v9];
  }
}

- (void)endPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = translation.y;
  v8 = translation.x;
  [(CCUIMainViewController *)self _setPresentationPanGestureActive:0, location.x, location.y];
  if ([(CCUIMainViewController *)self presentationState]== 1 && [(CCUIMainViewController *)self transitionState]== 1)
  {
    v12 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider transitionStateForType:1 interactive:1 translation:v8, v7];
    v10 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider finalTransitionTypeForState:v8 gestureTranslation:v7 gestureVelocity:x, y];
    if (v10)
    {
      v11 = v10 == 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
    }

    else if (v10 == 1)
    {
      [(CCUIMainViewController *)self _presentAnimated:1 withInitialVelocity:0 completionHandler:x, y];
    }
  }
}

- (void)cancelPresentationWithLocation:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  [(CCUIMainViewController *)self _setPresentationPanGestureActive:0, location.x, location.y, translation.x, translation.y, velocity.x, velocity.y];
  if ([(CCUIMainViewController *)self presentationState]== 1)
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (BOOL)_interpretsGestureLocationAsContent:(id)content
{
  contentCopy = content;
  view = [(CCUIMainViewController *)self view];
  pagingViewController = self->_pagingViewController;
  [contentCopy locationInView:view];
  if ([(CCUIPagingViewController *)pagingViewController interpretsLocationAsContent:view in:?])
  {
    v7 = 1;
  }

  else
  {
    headerPocketView = self->_headerPocketView;
    [contentCopy locationInView:headerPocketView];
    v9 = [(CCUIHeaderPocketView *)headerPocketView hitTest:0 withEvent:?];
    if (v9)
    {
      v7 = [(CCUIHeaderPocketView *)self->_headerPocketView hitTestedViewWantsToBlockGestures:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_dismissalTapGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(CCUIMainViewController *)self presentationState]== 3 || ![(CCUIMainViewController *)self presentationState])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CCUIMainViewController *)self _interpretsGestureLocationAsContent:beginCopy];
  }

  return v5;
}

- (void)_handleDismissalTapGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    isEditing = [pagingViewController isEditing];

    if (isEditing)
    {

      [(CCUIMainViewController *)self setEditing:0];
    }

    else
    {

      [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
    }
  }
}

- (BOOL)_dismissalFlickGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(CCUIMainViewController *)self _scrollViewIsScrollable])
  {
    [beginCopy minimumFlickVelocity];
    v6 = ![(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:0.0, v5];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)_dismissalFlickGestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v18 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  if ([(CCUIMainViewController *)self _scrollViewCanAcceptDownwardsPan])
  {
    v6 = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    gestureRecognizers = [touchCopy gestureRecognizers];
    v8 = [gestureRecognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          if ([(NSHashTable *)self->_blockingGestureRecognizers containsObject:*(*(&v13 + 1) + 8 * i)])
          {
            v6 = 1;
            goto LABEL_13;
          }
        }

        v9 = [gestureRecognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

- (void)_handleDismissalFlickGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    isEditing = [pagingViewController isEditing];

    if (isEditing)
    {

      [(CCUIMainViewController *)self setEditing:0];
    }

    else
    {

      [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
    }
  }
}

- (void)_cancelDismissalPanGestures
{
  [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setEnabled:0];
  [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_headerPocketViewDismissalPanGesture setEnabled:0];
  headerPocketViewDismissalPanGesture = self->_headerPocketViewDismissalPanGesture;

  [(UIPanGestureRecognizer *)headerPocketViewDismissalPanGesture setEnabled:1];
}

- (BOOL)_dismissalPanGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  presentationState = [(CCUIMainViewController *)self presentationState];
  LOBYTE(v6) = 0;
  if (presentationState && presentationState != 3)
  {
    if (!self->_presentationPanGestureActive)
    {
      if (self->_pagingViewDismissalPanGesture == beginCopy)
      {
        if (![(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_headerPocketViewDismissalPanGesture]&& ![(CCUIMainViewController *)self isEditing])
        {
          view = [(CCUIMainViewController *)self view];
          [(UIPanGestureRecognizer *)beginCopy velocityInView:view];
          v10 = v9;
          v12 = v11;

          v6 = ![(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:v10, v12];
          goto LABEL_8;
        }
      }

      else
      {
        if (self->_headerPocketViewDismissalPanGesture != beginCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_8;
        }

        if (![(CCUIMainViewController *)self _gestureRecognizerIsActive:?]&& ![(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded])
        {
          LOBYTE(v6) = [(CCUIPagingViewController *)self->_pagingViewController isOnDefaultPage];
          goto LABEL_8;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

LABEL_8:

  return v6;
}

- (void)_handleDismissalPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerBegan:recognizerCopy];
    }

    else
    {
      v5 = recognizerCopy;
      if (state != 2)
      {
        goto LABEL_13;
      }

      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerChanged:recognizerCopy];
    }
  }

  else if (state == 3)
  {
    [(CCUIMainViewController *)self _dismissalPanGestureRecognizerEnded:recognizerCopy];
  }

  else
  {
    v5 = recognizerCopy;
    if (state == 4)
    {
      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerCancelled:recognizerCopy];
    }

    else
    {
      if (state != 5)
      {
        goto LABEL_13;
      }

      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerFailed:recognizerCopy];
    }
  }

  v5 = recognizerCopy;
LABEL_13:
}

- (void)_dismissalPanGestureRecognizerBegan:(id)began
{
  beganCopy = began;
  v4 = [(CCUIMainViewController *)self _beginDismissalAnimated:1 interactive:1];
  view = [(CCUIMainViewController *)self view];
  [beganCopy setTranslation:view inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  [(CCUIMainViewController *)self _dismissalPanGestureRecognizerChanged:beganCopy];
}

- (void)_dismissalPanGestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  view = [(CCUIMainViewController *)self view];
  [changedCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(CCUIMainViewController *)self view];
  [changedCopy velocityInView:view2];
  v12 = v11;
  v14 = v13;

  [(CCUIMainViewController *)self _updatePresentationForTransitionType:2 translation:1 velocity:v7 interactive:v9, v12, v14];
}

- (void)_dismissalPanGestureRecognizerEnded:(id)ended
{
  endedCopy = ended;
  view = [(CCUIMainViewController *)self view];
  [endedCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(CCUIMainViewController *)self view];
  [endedCopy velocityInView:view2];
  v12 = v11;
  v14 = v13;

  v16 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider transitionStateForType:2 interactive:1 translation:v7, v9];
  v15 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider finalTransitionTypeForState:v7 gestureTranslation:v9 gestureVelocity:v12, v14];
  if (v15 >= 2)
  {
    if (v15 == 2)
    {
      [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
    }
  }

  else
  {
    [(CCUIMainViewController *)self presentAnimated:1 withCompletionHandler:0];
  }
}

- (BOOL)_editingLongPressGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(CCUIMainViewController *)self isEditing]|| [(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded]|| [(CCUIPagingViewController *)self->_pagingViewController expandedModuleCount]> 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    presentationState = [(CCUIMainViewController *)self presentationState];
    LOBYTE(v5) = 0;
    if (presentationState && presentationState != 3)
    {
      v5 = ![(CCUIMainViewController *)self _interpretsGestureLocationAsContent:beginCopy];
    }
  }

  return v5;
}

- (void)_handleEditingLongPressGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    [(CCUIMainViewController *)self setEditing:1];
    [recognizerCopy setEnabled:0];
    [recognizerCopy setEnabled:1];
  }
}

- (BOOL)_scrollPanGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(CCUIMainViewController *)self presentationState]== 3 || self->_presentationPanGestureActive || [(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_headerPocketViewDismissalPanGesture]|| [(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_pagingViewDismissalPanGesture])
  {
    v5 = 0;
  }

  else
  {
    view = [(CCUIMainViewController *)self view];
    [beginCopy velocityInView:view];
    v9 = v8;
    v11 = v10;

    v5 = [(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:v9, v11];
  }

  return v5;
}

- (BOOL)_scrollPanGestureRecognizerCanBeginForGestureVelocity:(CGPoint)velocity
{
  if (BSFloatGreaterThanFloat() && ![(CCUIMainViewController *)self _scrollViewCanAcceptDownwardsPan])
  {
    _scrollViewIsScrollable = [(CCUIMainViewController *)self _scrollViewIsScrollable];
    if (_scrollViewIsScrollable)
    {
      LOBYTE(_scrollViewIsScrollable) = BSFloatGreaterThanFloat() ^ 1;
    }
  }

  else
  {
    LOBYTE(_scrollViewIsScrollable) = 1;
  }

  return _scrollViewIsScrollable;
}

- (BOOL)_scrollViewIsScrollable
{
  _scrollView = [(CCUIMainViewController *)self _scrollView];
  if ([_scrollView isScrollEnabled])
  {
    [_scrollView contentSize];
    [_scrollView contentInset];
    [_scrollView contentInset];
    [_scrollView bounds];
    v3 = BSFloatGreaterThanFloat();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_scrollViewCanAcceptDownwardsPan
{
  _scrollViewIsScrollable = [(CCUIMainViewController *)self _scrollViewIsScrollable];
  if (_scrollViewIsScrollable)
  {
    _scrollView = [(CCUIMainViewController *)self _scrollView];
    [_scrollView ccui_relativeContentOffset];

    LOBYTE(_scrollViewIsScrollable) = BSFloatLessThanOrEqualToFloat() ^ 1;
  }

  return _scrollViewIsScrollable;
}

- (void)_updateChevronStateForTransitionState:(id)state
{
  [state presentationProgress];
  v4 = BSFloatGreaterThanOrEqualToFloat();
  headerPocketView = self->_headerPocketView;

  [(CCUIHeaderPocketView *)headerPocketView setChevronState:v4];
}

- (void)_updateHotPocketAnimated:(BOOL)animated
{
  if (self->_headerPocketView)
  {
    animatedCopy = animated;
    pagingViewController = [(CCUIMainViewController *)self pagingViewController];
    topmostContentView = [pagingViewController topmostContentView];

    [(CCUIHeaderPocketView *)self->_headerPocketView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [topmostContentView bounds];
    [topmostContentView convertRect:self->_headerPocketView toView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    Height = CGRectGetHeight(v28);
    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    MinY = CGRectGetMinY(v29);
    v24 = vabdd_f64(MinY, Height) > 0.05;
    v25 = MinY < Height && v24;
    [(CCUIMainViewController *)self _updateHotPocket:v25 animated:animatedCopy];
  }
}

- (void)_updateHotPocket:(BOOL)pocket animated:(BOOL)animated
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_headerPocketView)
  {
    pocketCopy = pocket;
    if (self->_showHotPocket != pocket)
    {
      self->_showHotPocket = pocket;
      v6 = 0.0;
      if (pocket)
      {
        v6 = 1.0;
      }

      if (animated)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __52__CCUIMainViewController__updateHotPocket_animated___block_invoke;
        v17[3] = &unk_278382060;
        v17[4] = self;
        *&v17[5] = v6;
        [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.3];
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __52__CCUIMainViewController__updateHotPocket_animated___block_invoke_2;
        v16[3] = &unk_278382060;
        v16[4] = self;
        *&v16[5] = v6;
        [MEMORY[0x277D75D18] performWithoutAnimation:v16];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_headerPocketGradientMaskLayers;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) setHidden:{!pocketCopy, v12}];
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)_setupPanGestureFailureRequirements
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSHashTable *)self->_blockingGestureRecognizers removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  pagingViewController = [(CCUIMainViewController *)self pagingViewController];
  queryAllTopLevelBlockingGestureRecognizers = [pagingViewController queryAllTopLevelBlockingGestureRecognizers];

  v5 = [queryAllTopLevelBlockingGestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(queryAllTopLevelBlockingGestureRecognizers);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(NSHashTable *)self->_blockingGestureRecognizers addObject:v9];
        [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture requireGestureRecognizerToFail:v9];
        [(UIPanGestureRecognizer *)self->_pagingViewScrollPanGesture requireGestureRecognizerToFail:v9];
      }

      v6 = [queryAllTopLevelBlockingGestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)gameModeStateDidChange:(unint64_t)change
{
  if ([(CCUIMainViewController *)self presentationState]- 1 >= 2)
  {
    headerPocketView = self->_headerPocketView;

    [(CCUIHeaderPocketView *)headerPocketView gameModeStateDidChange:change];
  }
}

- (void)gameModeActivitiesDidChange
{
  if ([(CCUIMainViewController *)self presentationState]- 1 >= 2)
  {

    [(CCUIMainViewController *)self _updateSensorActivityStatusForHeaderPocketView];
  }
}

- (void)_askToAirDropPendingOrActiveConnectionsDidChange
{
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "AskToAirDrop: pendingOrActiveConnectionsChanged", v4, 2u);
  }

  [(CCUIMainViewController *)self _updateAskToAirDropModuleVisibility];
}

- (void)_updateAskToAirDropModuleVisibility
{
  v14 = *MEMORY[0x277D85DE8];
  askToAirDropController = [(CCUIMainViewController *)self askToAirDropController];
  hasPendingOrActiveConnections = [askToAirDropController hasPendingOrActiveConnections];

  if (([(CCUIMainViewController *)self _interfaceOrientation]- 1) >= 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    hasPendingOrActiveConnections = ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1) & hasPendingOrActiveConnections;
  }

  if ([(CCUIMainViewController *)self isShowingRootView]|| !hasPendingOrActiveConnections)
  {
    v7 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (hasPendingOrActiveConnections)
      {
        v8 = @"YES";
      }

      v10 = 138412546;
      v11 = @"com.apple.sharing.AskToAirDropControlCenterModule";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "AskToAirDrop: update module visibility with identifier:%@ visible:%@", &v10, 0x16u);
    }

    mEMORY[0x277CFC830] = [MEMORY[0x277CFC830] sharedInstance];
    [mEMORY[0x277CFC830] setVisibility:hasPendingOrActiveConnections forModuleWithIdentifier:@"com.apple.sharing.AskToAirDropControlCenterModule" completionHandler:0];
  }
}

- (CCUIControlCenterSystemAgent)systemAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_systemAgent);

  return WeakRetained;
}

- (CCUIMainViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CCUIHostStatusBarStyleProvider)hostStatusBarStyleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_hostStatusBarStyleProvider);

  return WeakRetained;
}

- (void)_safeStatusLabelViewContainerView
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_safePagingViewContainerView
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_layoutRectForIconCoordinate:gridSize:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_layoutRectForIconCoordinate:gridSize:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end