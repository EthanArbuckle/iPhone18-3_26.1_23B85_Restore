@interface CCUIMainViewController
+ (id)_controlCenterBringupEventStream;
+ (id)_controlCenterDismissOrbActionsEventStream;
+ (id)_presentationProviderForDevice;
+ (void)_addBlockForSignpost:(unint64_t)a3 block:(id)a4;
+ (void)_executeAndCleanupBlocksForAllSignposts;
+ (void)_executeBlocksForSignpost:(unint64_t)a3;
+ (void)_playEventStream:(id)a3 withCompletion:(id)a4;
- (BOOL)_dismissalFlickGestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)_dismissalFlickGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_dismissalPanGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_dismissalTapGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_editingLongPressGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_forceModuleEnabled:(id)a3;
- (BOOL)_includesModuleWithIdentifier:(id)a3 consideringObscureness:(BOOL)a4;
- (BOOL)_interpretsGestureLocationAsContent:(id)a3;
- (BOOL)_isSensorActivityData:(id)a3 relevantForSensorType:(unint64_t)a4;
- (BOOL)_scrollPanGestureRecognizerCanBeginForGestureVelocity:(CGPoint)a3;
- (BOOL)_scrollPanGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_scrollViewCanAcceptDownwardsPan;
- (BOOL)_scrollViewIsScrollable;
- (BOOL)canDismissPresentedContent;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)a3;
- (BOOL)isEditing;
- (BOOL)isSystemRestoringForPagingViewController:(id)a3;
- (BOOL)pagingViewController:(id)a3 shouldPauseCheckingInvalidControlsForApplicationIdentifier:(id)a4;
- (BOOL)runTest:(id)a3 options:(id)a4 delegate:(id)a5;
- (CCUIControlCenterSystemAgent)systemAgent;
- (CCUIHostStatusBarStyleProvider)hostStatusBarStyleProvider;
- (CCUILayoutRect)_layoutRectForIconCoordinate:(SEL)a3 gridSize:(SBIconCoordinate)a4;
- (CCUIMainViewController)initWithSystemAgent:(id)a3 moduleInstanceManager:(id)a4 moduleSettingsManager:(id)a5 sensorActivityDataProvider:(id)a6 gameModeActivityDataProvider:(id)a7 presentationProvider:(id)a8;
- (CCUIMainViewControllerDelegate)delegate;
- (CGPoint)_centerPointOfModuleWithIdentifier:(id)a3;
- (CGRect)compactAvoidanceFrameForStatusBar:(id)a3;
- (CGRect)expandedAvoidanceFrameForStatusBar:(id)a3;
- (CGRect)overlayBackgroundFrame;
- (CGRect)overlayContainerFrame;
- (CGSize)overlayContentSize;
- (UIEdgeInsets)overlayAdditionalEdgeInsets;
- (UIEdgeInsets)overlayContentLayoutInset;
- (double)overlayReachabilityHeight;
- (id)_beginDismissalAnimated:(BOOL)a3 interactive:(BOOL)a4;
- (id)_beginPresentationAnimated:(BOOL)a3 interactive:(BOOL)a4;
- (id)_controlCenterEnterEditModeEventStream;
- (id)_controlCenterShowOrbActionsEventStream:(id)a3;
- (id)_safePagingViewContainerView;
- (id)_safeStatusLabelViewContainerView;
- (id)_statusLabelViewContainerView;
- (id)compactTrailingStyleRequestForStatusBar:(id)a3;
- (id)contentModuleContext:(id)a3 requestsSensorActivityDataForActiveSensorType:(unint64_t)a4;
- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)a3;
- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)a3;
- (id)existingControlKindFromWidgetExtension:(id)a3;
- (id)fallbackDragHitTestViewForScrollView:(id)a3;
- (id)pagingViewControllerDidAddModuleView:(id)a3;
- (id)reasonToDisallowEditing:(id)a3;
- (int64_t)_interfaceOrientation;
- (unint64_t)_fetchModuleEnabledState:(id)a3;
- (void)_askToAirDropPendingOrActiveConnectionsDidChange;
- (void)_becomeActive;
- (void)_cancelDismissalPanGestures;
- (void)_disableModule:(id)a3;
- (void)_dismissalPanGestureRecognizerBegan:(id)a3;
- (void)_dismissalPanGestureRecognizerChanged:(id)a3;
- (void)_dismissalPanGestureRecognizerEnded:(id)a3;
- (void)_endDismissalWithUUID:(id)a3 animated:(BOOL)a4;
- (void)_endPresentationWithUUID:(id)a3;
- (void)_evaluatePresentationContinuationIntoPagingWithLocation:(CGPoint)a3;
- (void)_getCameraSensorActivityData:(id *)a3 micSensorActivityData:(id *)a4 isMutedMic:(BOOL *)a5 isInactiveMicModeSelection:(BOOL *)a6;
- (void)_handleDismissalFlickGestureRecognizer:(id)a3;
- (void)_handleDismissalPanGestureRecognizer:(id)a3;
- (void)_handleDismissalTapGestureRecognizer:(id)a3;
- (void)_handleEditingLongPressGestureRecognizer:(id)a3;
- (void)_presentAnimated:(BOOL)a3 withInitialVelocity:(CGPoint)a4 completionHandler:(id)a5;
- (void)_resignActive;
- (void)_safePagingViewContainerView;
- (void)_safeStatusLabelViewContainerView;
- (void)_setupPanGestureFailureRequirements;
- (void)_updateAskToAirDropModuleVisibility;
- (void)_updateChevronStateForTransitionState:(id)a3;
- (void)_updateHotPocket:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateHotPocketAnimated:(BOOL)a3;
- (void)_updatePresentationForTransitionState:(id)a3 gestureVelocity:(CGPoint)a4 withCompletionHander:(id)a5;
- (void)_updatePresentationForTransitionType:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5 interactive:(BOOL)a6;
- (void)_updateSensorActivityStatusForHeaderPocketView;
- (void)_willPresentViewControllerContainedInPages;
- (void)beginPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5 touches:(id)a6;
- (void)cancelPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (void)contentModuleContext:(id)a3 enqueueStatusUpdate:(id)a4;
- (void)dealloc;
- (void)didCloseExpandedSensorAttributionViewController;
- (void)didReceiveSignpost:(unint64_t)a3;
- (void)didTriggerPowerButtonPrimaryAction;
- (void)dismissAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)dismissControlCenterForContentModuleContext:(id)a3;
- (void)dismissExpandedModuleAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissExpandedViewForContentModuleContext:(id)a3;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)displayWillTurnOff;
- (void)endPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (void)enumerateOverlayModuleViewsWithBlock:(id)a3;
- (void)expandModuleWithIdentifier:(id)a3;
- (void)gameModeActivitiesDidChange;
- (void)gameModeStateDidChange:(unint64_t)a3;
- (void)handleControlCenterOperationTypeWithOperationService:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5;
- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)a3;
- (void)loadView;
- (void)moduleInstancesChangedForModuleInstanceManager:(id)a3;
- (void)overlayBackgroundViewTapped:(id)a3;
- (void)pagingViewController:(id)a3 didAdd:(id)a4;
- (void)pagingViewController:(id)a3 didClose:(id)a4;
- (void)pagingViewController:(id)a3 editingDidChange:(BOOL)a4;
- (void)pagingViewController:(id)a3 willExpand:(id)a4;
- (void)pagingViewController:(id)a3 willRemove:(id)a4;
- (void)performIfDisplayingModuleView:(id)a3 subview:(id)a4 block:(id)a5;
- (void)requestExpandModuleForContentModuleContext:(id)a3;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3;
- (void)runTest:(id)a3 subtests:(id)a4 eventStream:(id)a5 completionHandler:(id)a6;
- (void)setCurrentTransitionUUID:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setOverlayPageContentAlpha:(double)a3;
- (void)setOverlayPageContentScale:(CGPoint)a3;
- (void)setOverlayPageContentTranslation:(CGPoint)a3;
- (void)setOverlayStatusBarHidden:(BOOL)a3;
- (void)setPresentationState:(unint64_t)a3;
- (void)setReachabilityActive:(BOOL)a3;
- (void)setSensorActivityDataProvider:(id)a3;
- (void)setTransitionState:(unint64_t)a3;
- (void)updatePresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

  v15 = [v10 bundleIdentifier];
  v16 = *v6;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v31 = v11;
    *&v31[4] = 1024;
    *&v31[6] = v3 != 0;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_21E9F5000, v16, OS_LOG_TYPE_DEFAULT, "[AV Modules] Setting visibility of AV modules (audio: %{BOOL}d, video: %{BOOL}d) for bundle identifier %{public}@", buf, 0x18u);
  }

  v17 = [MEMORY[0x277CFC830] sharedInstance];
  [v17 setVisibility:v11 forModuleWithIdentifier:@"com.apple.replaykit.AudioConferenceControlCenterModule" completionHandler:0];

  v18 = [MEMORY[0x277CFC830] sharedInstance];
  [v18 setVisibility:v3 != 0 forModuleWithIdentifier:@"com.apple.replaykit.VideoConferenceControlCenterModule" completionHandler:0];

  [(CCUIHeaderPocketView *)self->_headerPocketView setAudioControlsEnabled:v11 videoControlsEnabled:v3 != 0 forBundleIdentifier:v15];
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
  v23 = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
  v24 = [v22 setByAddingObjectsFromSet:v23];

  v25 = [(CCUIGameModeActivityDataProvider *)self->_gameModeActivityDataProvider activityData];
  v26 = [v24 setByAddingObjectsFromSet:v25];

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
  v2 = [(CCUIMainViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 interfaceOrientation];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (double)overlayReachabilityHeight
{
  if (![(CCUIMainViewController *)self isReachabilityActive])
  {
    return 0.0;
  }

  v3 = [(CCUIMainViewController *)self delegate];
  [v3 reachabilityOffsetForControlCenterViewController:self];
  v5 = v4;

  return v5;
}

- (CGRect)overlayContainerFrame
{
  v2 = [(CCUIMainViewController *)self view];
  [v2 bounds];
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
  v2 = [(CCUIMainViewController *)self pagingViewController];
  v3 = [v2 isEditing];

  return v3;
}

- (CGRect)overlayBackgroundFrame
{
  v2 = [(CCUIMainViewController *)self view];
  [v2 bounds];
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

- (BOOL)runTest:(id)a3 options:(id)a4 delegate:(id)a5
{
  v65[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v36 = a5;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v35 = v8;
  if ([v7 isEqualToString:@"ControlCenterBringup"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:v7];
    v65[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    v12 = [objc_opt_class() _controlCenterBringupEventStream];
    v13 = v54[5];
    v54[5] = v12;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_3:
    v19 = 1;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"ControlCenterBringupOverSafari"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:v7];
    v64 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v20 = [objc_opt_class() _controlCenterBringupEventStream];
    v21 = v54[5];
    v54[5] = v20;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
  }

  else if ([v7 isEqualToString:@"ControlCenterBringupOnLockScreen"])
  {
    v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:1 endSignpost:2];
    v10 = [CCUIPPTRootTest testWithName:v7];
    v63 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v22 = [objc_opt_class() _controlCenterBringupEventStream];
    v23 = v54[5];
    v54[5] = v22;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    if ([v7 isEqualToString:@"ControlCenterDismiss"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:3 endSignpost:4];
      v10 = [CCUIPPTRootTest testWithName:v7];
      v62 = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      v30 = [objc_opt_class() _controlCenterDismissEventStream];
      v31 = v54[5];
      v54[5] = v30;

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      goto LABEL_3;
    }

    if ([v7 isEqualToString:@"ControlCenterShowOrbActions"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:5 endSignpost:6];
      v10 = [CCUIPPTRootTest testWithName:v7];
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

    if ([v7 isEqualToString:@"ControlCenterDismissOrbActions"])
    {
      v9 = [CCUIPPTTest testWithName:@"animation" beginSignpost:7 endSignpost:8];
      v10 = [CCUIPPTRootTest testWithName:v7];
      v60 = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      v32 = [objc_opt_class() _controlCenterDismissOrbActionsEventStream];
      v33 = v54[5];
      v54[5] = v32;

      v14 = 0;
      v16 = @"com.apple.control-center.QuickNoteModule";
      v17 = 1;
      v15 = 1;
      v18 = 1;
      goto LABEL_3;
    }

    if (![v7 isEqualToString:@"ControlCenterBringupAndEnterEditMode"])
    {
      v25 = 0;
      v26 = 0;
      v14 = 0;
      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_15;
    }

    v9 = [CCUIPPTTest testWithName:@"editModeEnter" beginSignpost:11 endSignpost:12];
    v34 = [CCUIPPTTest testWithName:@"editModeExit" beginSignpost:13 endSignpost:14];
    v10 = [CCUIPPTRootTest testWithName:v7];
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
    [v36 prepareForControlCenterPPTHostState:v19 completionHandler:v38];

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
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v2 _keyWindowForScreen:v3];

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

- (CGPoint)_centerPointOfModuleWithIdentifier:(id)a3
{
  UIRectGetCenter();
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_controlCenterShowOrbActionsEventStream:(id)a3
{
  [(CCUIMainViewController *)self _centerPointOfModuleWithIdentifier:a3];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  v9 = [v7 _keyWindowForScreen:v8];

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
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v2 _keyWindowForScreen:v3];

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
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v2 _keyWindowForScreen:v3];

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

+ (void)_playEventStream:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D44350];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277D44348];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CCUIMainViewController_PPT___playEventStream_withCompletion___block_invoke;
  v11[3] = &unk_2783821E0;
  v12 = v5;
  v10 = v5;
  [v9 playEventStream:v7 options:v8 completion:v11];
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

- (unint64_t)_fetchModuleEnabledState:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [MEMORY[0x277CFC830] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__CCUIMainViewController_PPT___fetchModuleEnabledState___block_invoke;
    v10[3] = &unk_278382208;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [v5 getEnabledStateOfModuleWithIdentifier:v3 completionHandler:v10];

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

- (BOOL)_forceModuleEnabled:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = [MEMORY[0x277CFC830] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__CCUIMainViewController_PPT___forceModuleEnabled___block_invoke;
  v10[3] = &unk_278382230;
  v12 = &v13;
  v6 = v4;
  v11 = v6;
  [v5 requestEnableModuleWithIdentifier:v3 force:1 completionHandler:v10];

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

- (void)_disableModule:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CFC830];
    v4 = a3;
    v5 = [v3 sharedInstance];
    [v5 requestDisableModuleWithIdentifier:v4 completionHandler:0];
  }
}

- (void)runTest:(id)a3 subtests:(id)a4 eventStream:(id)a5 completionHandler:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v33 = a5;
  v32 = a6;
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
  v35 = v11;
  v54 = v35;
  v57 = [v14 scheduledTimerWithTimeInterval:0 repeats:v53 block:10.0];
  group = dispatch_group_create();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v12;
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
        v20 = [v18 beginSignpost];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_2;
        v47[3] = &unk_278381DC8;
        v47[4] = v18;
        v21 = v35;
        v48 = v21;
        [v19 _addBlockForSignpost:v20 block:v47];
        v22 = objc_opt_class();
        v23 = [v18 endSignpost];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_3;
        v44[3] = &unk_278381FC8;
        v44[4] = v18;
        v45 = v21;
        v46 = group;
        [v22 _addBlockForSignpost:v23 block:v44];
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
  v25 = v32;
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
    v28 = [v24 beginSignpost];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __86__CCUIMainViewController_PPTInternal__runTest_subtests_eventStream_completionHandler___block_invoke_6;
    v37[3] = &unk_278381DF0;
    v38 = v24;
    [v27 _addBlockForSignpost:v28 block:v37];
    v29 = v38;
  }

  else
  {
    v29 = [MEMORY[0x277D75128] sharedApplication];
    v30 = [v24 name];
    [v29 startedTest:v30];
  }

  v31 = objc_alloc_init(MEMORY[0x277D44350]);
  [MEMORY[0x277D44348] playEventStream:v33 options:v31 completion:&__block_literal_global_3];

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

+ (void)_addBlockForSignpost:(unint64_t)a3 block:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 _blocksBySignpost];
  objc_sync_enter(v7);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v7 objectForKey:v8];

  v10 = _Block_copy(v6);
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

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v12 forKey:v13];

  objc_sync_exit(v7);
}

+ (void)_executeAndCleanupBlocksForAllSignposts
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1 _blocksBySignpost];
  objc_sync_enter(v2);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v2;
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

+ (void)_executeBlocksForSignpost:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 _blocksBySignpost];
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 bs_takeObjectForKey:v5];

  objc_sync_exit(v4);
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

- (void)didReceiveSignpost:(unint64_t)a3
{
  v4 = objc_opt_class();

  [v4 _executeBlocksForSignpost:a3];
}

+ (id)_presentationProviderForDevice
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277CFC820] standardDefaults];
  v4 = [v3 presentationGesture];

  if (v4 == 1)
  {
    v2 = objc_opt_class();
  }

  v5 = objc_alloc_init(v2);

  return v5;
}

- (CCUIMainViewController)initWithSystemAgent:(id)a3 moduleInstanceManager:(id)a4 moduleSettingsManager:(id)a5 sensorActivityDataProvider:(id)a6 gameModeActivityDataProvider:(id)a7 presentationProvider:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v43.receiver = self;
  v43.super_class = CCUIMainViewController;
  v20 = [(CCUIMainViewController *)&v43 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    [(CCUIMainViewController *)v20 setModuleInstanceManager:v15];
    [v15 setContextDelegate:v21];
    [v15 addObserver:v21];
    [(CCUIMainViewController *)v21 setModuleSettingsManager:v16];
    v22 = objc_alloc_init(CCUIStatusLabelViewController);
    statusLabelViewController = v21->_statusLabelViewController;
    v21->_statusLabelViewController = v22;

    [(CCUIMainViewController *)v21 setDefinesPresentationContext:1];
    objc_storeStrong(&v21->_presentationProvider, a8);
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

    v32 = [(CCUIMainViewController *)v21 statusLabelViewController];
    [v32 setDelegate:v21];

    v33 = [MEMORY[0x277CFC828] sharedService];
    controlCenterOperationService = v21->_controlCenterOperationService;
    v21->_controlCenterOperationService = v33;

    [(CCSControlCenterOperationService *)v21->_controlCenterOperationService setDelegate:v21];
    objc_storeStrong(&v21->_sensorActivityDataProvider, a6);
    objc_storeStrong(&v21->_gameModeActivityDataProvider, a7);
    [v18 addObserver:v21];
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

    objc_storeWeak(&v21->_systemAgent, v14);
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
  v2 = [(CCUIMainViewController *)self _statusLabelViewContainerView];
  if (!v2)
  {
    [CCUIMainViewController _safeStatusLabelViewContainerView];
  }

  return v2;
}

- (void)_becomeActive
{
  if (!self->_active)
  {
    v3 = [(CCUIMainViewController *)self pagingViewController];
    [v3 willBecomeActive];
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
  v2 = [(CCUIMainViewController *)self _pagingViewContainerView];
  if (!v2)
  {
    [CCUIMainViewController _safePagingViewContainerView];
  }

  return v2;
}

- (void)setPresentationState:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_presentationState != a3)
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

      if (a3 > 3)
      {
        v8 = @"<invalid>";
      }

      else
      {
        v8 = off_278382860[a3];
      }

      *v11 = 138543618;
      *&v11[4] = v7;
      *&v11[12] = 2114;
      *&v11[14] = v8;
      v9 = v5;
      _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "Transitioning presentation state: fromState=%{public}@, toState=%{public}@", v11, 0x16u);
    }

    self->_presentationState = a3;
    v10 = [(CCUIMainViewController *)self delegate:*v11];
    if (objc_opt_respondsToSelector())
    {
      [v10 controlCenterViewController:self didChangePresentationState:self->_presentationState];
    }

    [(CCUIHeaderPocketView *)self->_headerPocketView setPresentationState:a3];
  }
}

- (void)setTransitionState:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_transitionState != a3)
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

      if (a3 > 2)
      {
        v8 = @"<invalid>";
      }

      else
      {
        v8 = off_278382848[a3];
      }

      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v9 = v5;
      _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "Transitioning transition state: fromState=%{public}@, toState=%{public}@", &v10, 0x16u);
    }

    self->_transitionState = a3;
  }
}

- (void)setReachabilityActive:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_reachabilityActive != a3)
  {
    v3 = a3;
    v5 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      reachabilityActive = self->_reachabilityActive;
      *buf = 67109376;
      v12 = reachabilityActive;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Toggling reachability active: from=%{BOOL}d, to=%{BOOL}d", buf, 0xEu);
    }

    self->_reachabilityActive = v3;
    v7 = [(CCUIMainViewController *)self _scrollView];
    [v7 setScrollEnabled:!v3];

    v8 = [(CCUIMainViewController *)self delegate];
    v9 = [v8 reachabilitySpringAnimationBehaviorForControlCenterViewController:self];

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

- (void)setCurrentTransitionUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    currentTransitionUUID = self->_currentTransitionUUID;
    v9 = 138543618;
    v10 = currentTransitionUUID;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Changed transition UUID: from=%{public}@, to=%{public}@", &v9, 0x16u);
  }

  v7 = [v4 copy];
  v8 = self->_currentTransitionUUID;
  self->_currentTransitionUUID = v7;
}

- (void)setSensorActivityDataProvider:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "Updated sensor activity data provider", v7, 2u);
  }

  sensorActivityDataProvider = self->_sensorActivityDataProvider;
  self->_sensorActivityDataProvider = v4;

  if (![(CCUIMainViewController *)self presentationState])
  {
    [(CCUIMainViewController *)self _updateSensorActivityStatusForHeaderPocketView];
  }
}

- (void)willOpenExpandedSensorAttributionViewController
{
  v3 = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 willOpenExpandedModuleForControlCenterViewController:self];
  }
}

- (void)didCloseExpandedSensorAttributionViewController
{
  v3 = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 didCloseExpandedModuleForControlCenterViewController:self];
  }
}

- (void)didTriggerPowerButtonPrimaryAction
{
  v3 = [(CCUIMainViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 didRequestPowerDownTransientOverlayForControlCenterViewController:self];
  }
}

- (BOOL)canDismissPresentedContent
{
  v3 = [(CCUIMainViewController *)self pagingViewController];
  v4 = ([v3 canDismissPresentedContent] & 1) != 0 || -[CCUIMainViewController isSensorAttributionViewControllerExpanded](self, "isSensorAttributionViewControllerExpanded");

  return v4;
}

- (void)expandModuleWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMainViewController *)self pagingViewController];
  [v5 expandModuleWithIdentifier:v4];
}

- (void)dismissExpandedModuleAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded])
  {
    [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:v4 completion:v7];
  }

  else
  {
    v6 = [(CCUIMainViewController *)self pagingViewController];
    [v6 dismissExpandedModuleAnimated:v4 completion:v7];
  }
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded])
  {
    [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:v4 completion:v7];
  }

  else
  {
    v6 = [(CCUIMainViewController *)self pagingViewController];
    [v6 dismissPresentedContentAnimated:v4 completion:v7];
  }
}

- (void)displayWillTurnOff
{
  if ([(CCUIMainViewController *)self _appearState]== 2)
  {
    v3 = [(CCUIMainViewController *)self pagingViewController];
    [v3 displayWillTurnOff];
  }
}

- (void)_presentAnimated:(BOOL)a3 withInitialVelocity:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [(CCUIMainViewController *)self presentationState];
  v11 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    if (v10 > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[v10];
    }

    *buf = 67109378;
    v24 = v7;
    v25 = 2114;
    v26 = v12;
    v13 = v11;
    _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "Requested presentation: animated=%{BOOL}d, presentationState=%{public}@", buf, 0x12u);
  }

  if (v10 == 2)
  {
    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v14 = [(CCUIMainViewController *)self _beginPresentationAnimated:v7 interactive:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__CCUIMainViewController__presentAnimated_withInitialVelocity_completionHandler___block_invoke;
    aBlock[3] = &unk_278382608;
    aBlock[4] = self;
    v21 = x;
    v22 = y;
    v15 = v14;
    v19 = v15;
    v20 = v9;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (v7)
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

- (id)_beginPresentationAnimated:(BOOL)a3 interactive:(BOOL)a4
{
  v4 = a4;
  v28 = a3;
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

  v8 = [(CCUIMainViewController *)self presentationState];
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [(CCUIMainViewController *)self transitionState];
  v11 = *v6;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[v8];
    }

    v13 = @"animating";
    if (v4)
    {
      v13 = @"interactive";
    }

    v14 = v13;
    *buf = 67110402;
    v33 = v28;
    v34 = 1024;
    v35 = v4;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v14;
    v40 = 1024;
    v41 = v8 != 1;
    v42 = 1024;
    v43 = v10 != v9;
    v15 = v11;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "Begin presentation: animated=%{BOOL}d, interactive=%{BOOL}d, currentState=%{public}@, transitionState=%{public}@, presentationStateWillChange=%{BOOL}d, transitionStateWillChange=%{BOOL}d", buf, 0x2Eu);
  }

  if (v8 != 1 || v10 != v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider headerMode];
    }

    else
    {
      v16 = 0;
    }

    v17 = [MEMORY[0x277CCAD78] UUID];
    [(CCUIMainViewController *)self setCurrentTransitionUUID:v17];

    [(CCUIMainViewController *)self setTransitionState:v9];
    [(CCUIMainViewController *)self _updateAskToAirDropModuleVisibility];
    if ((v16 - 1) > 1 || v8)
    {
      [(CCUIMainViewController *)self setPresentationState:1];
      if (v8)
      {
        if (v8 != 3)
        {
LABEL_28:
          if (v8 != 1)
          {
            if (objc_opt_respondsToSelector())
            {
              v23 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider prepareForPresentation];
              v24 = v23;
              if (v28)
              {
                [(CCUIAnimationRunner *)self->_primaryAnimationRunner runAnimationBatch:v23 withCompletionBlock:0];
              }

              else
              {
                v25 = MEMORY[0x277D75D18];
                v29[0] = MEMORY[0x277D85DD0];
                v29[1] = 3221225472;
                v29[2] = __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke_3;
                v29[3] = &unk_278381DC8;
                v29[4] = self;
                v30 = v23;
                [v25 performWithoutAnimation:v29];
              }
            }

            [(UIViewController *)self ccui_safelyBeginAppearanceTransitionForChildViewControllers:1 animated:v28];
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
      v18 = [(CCUIMainViewController *)self hostStatusBarStyleProvider];
      v19 = [v18 hostStatusBarStyle];
      v20 = [v19 copy];
      hostStatusBarStyleSnapshot = self->_hostStatusBarStyleSnapshot;
      self->_hostStatusBarStyleSnapshot = v20;

      [(CCUIMainViewController *)self setPresentationState:1];
    }

    [(CCUIMainViewController *)self _becomeActive];
    v22 = [(CCUIMainViewController *)self view];
    [v22 setHidden:0];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__CCUIMainViewController__beginPresentationAnimated_interactive___block_invoke;
    v31[3] = &unk_278382060;
    v31[4] = self;
    v31[5] = v16;
    [MEMORY[0x277D75D18] performWithoutAnimation:v31];
    goto LABEL_27;
  }

LABEL_35:
  v26 = [(CCUIMainViewController *)self currentTransitionUUID];

  return v26;
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

- (void)_endPresentationWithUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CCUIMainViewController *)self currentTransitionUUID];
  v6 = [(CCUIMainViewController *)self presentationState];
  v7 = MEMORY[0x277CFC8F8];
  if (v4 && [v5 isEqual:v4])
  {
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 3)
      {
        v9 = @"<invalid>";
      }

      else
      {
        v9 = off_278382860[v6];
      }

      *v15 = 138543874;
      *&v15[4] = v4;
      *&v15[12] = 2114;
      *&v15[14] = v5;
      *&v15[22] = 2114;
      v16 = v9;
      v13 = v8;
      _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "End presentation: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v15, 0x20u);
    }

    [(CCUIMainViewController *)self setCurrentTransitionUUID:0, *v15, *&v15[16], v16];
    [(CCUIMainViewController *)self setTransitionState:0];
    [(CCUIMainViewController *)self setPresentationState:2];
    if (v6 != 2)
    {
      [(UIViewController *)self ccui_safelyEndAppearanceTransitionForChildViewControllers];
    }
  }

  else
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 3)
      {
        v11 = @"<invalid>";
      }

      else
      {
        v11 = off_278382860[v6];
      }

      *v15 = 138543874;
      *&v15[4] = v4;
      *&v15[12] = 2114;
      *&v15[14] = v5;
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

- (void)dismissAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CCUIMainViewController *)self presentationState];
  v8 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    if (v7 > 3)
    {
      v9 = @"<invalid>";
    }

    else
    {
      v9 = off_278382860[v7];
    }

    *buf = 67109378;
    v18 = v4;
    v19 = 2114;
    v20 = v9;
    v10 = v8;
    _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "Requested dismissal: animated=%{BOOL}d, presentationState=%{public}@", buf, 0x12u);
  }

  if (v7)
  {
    [(CCUIMainViewController *)self _cancelDismissalPanGestures];
    [(CCUIMainViewController *)self setEditing:0];
    v11 = [(CCUIMainViewController *)self _beginDismissalAnimated:v4 interactive:0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__CCUIMainViewController_dismissAnimated_withCompletionHandler___block_invoke;
    v13[3] = &unk_278382680;
    v13[4] = self;
    v14 = v11;
    v16 = v4;
    v15 = v6;
    v12 = v11;
    [(CCUIMainViewController *)self dismissExpandedModuleAnimated:v4 completion:v13];
  }

  else if (v6)
  {
    v6[2](v6);
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

- (id)_beginDismissalAnimated:(BOOL)a3 interactive:(BOOL)a4
{
  v4 = a4;
  v25 = a3;
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

  v8 = [(CCUIMainViewController *)self presentationState];
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [(CCUIMainViewController *)self transitionState];
  v11 = *v6;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[v8];
    }

    v13 = @"animating";
    if (v4)
    {
      v13 = @"interactive";
    }

    v14 = v13;
    *buf = 67110402;
    v28 = v25;
    v29 = 1024;
    v30 = v4;
    v31 = 2114;
    v32 = v12;
    v33 = 2114;
    v34 = v14;
    v35 = 1024;
    v36 = v8 != 3;
    v37 = 1024;
    v38 = v10 != v9;
    v15 = v11;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "Begin dismissal: animated=%{BOOL}d, interactive=%{BOOL}d, currentState=%{public}@, transitionState=%{public}@, presentationStateWillChange=%{BOOL}d, transitionStateWillChange=%{BOOL}d", buf, 0x2Eu);
  }

  if (v8 != 3 || v10 != v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider headerMode]- 1;
      v17 = [MEMORY[0x277CCAD78] UUID];
      [(CCUIMainViewController *)self setCurrentTransitionUUID:v17];

      [(CCUIMainViewController *)self setTransitionState:v9];
      if (v16 <= 1)
      {
        v18 = [(CCUIMainViewController *)self hostStatusBarStyleProvider];
        v19 = [v18 hostStatusBarStyle];
        v20 = [v19 copy];
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
      v22 = [MEMORY[0x277CCAD78] UUID];
      [(CCUIMainViewController *)self setCurrentTransitionUUID:v22];

      [(CCUIMainViewController *)self setTransitionState:v9];
    }

    [(CCUIMainViewController *)self setPresentationState:3];
    if (v8 != 3)
    {
      [(UIViewController *)self ccui_safelyBeginAppearanceTransitionForChildViewControllers:0 animated:v25];
    }
  }

  v23 = [(CCUIMainViewController *)self currentTransitionUUID];

  return v23;
}

void __62__CCUIMainViewController__beginDismissalAnimated_interactive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1056);
  v3 = [*(v1 + 1152) leadingStyleRequest];
  [v2 setStyleRequest:v3];
}

- (void)_endDismissalWithUUID:(id)a3 animated:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CCUIMainViewController *)self currentTransitionUUID];
  v7 = [(CCUIMainViewController *)self presentationState];
  v8 = MEMORY[0x277CFC8F8];
  if (v5 && [v6 isEqual:v5])
  {
    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 > 3)
      {
        v10 = @"<invalid>";
      }

      else
      {
        v10 = off_278382860[v7];
      }

      *v19 = 138543874;
      *&v19[4] = v5;
      *&v19[12] = 2114;
      *&v19[14] = v6;
      *&v19[22] = 2114;
      v20 = v10;
      v14 = v9;
      _os_log_impl(&dword_21E9F5000, v14, OS_LOG_TYPE_DEFAULT, "End dismissal: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v19, 0x20u);
    }

    [(CCUIMainViewController *)self setCurrentTransitionUUID:0, *v19, *&v19[16], v20];
    v15 = [(CCUIMainViewController *)self overlayHeaderView];
    [v15 setMode:0 orientationHint:0];

    [(UIStatusBar *)self->_compactLeadingStatusBar removeFromSuperview];
    compactLeadingStatusBar = self->_compactLeadingStatusBar;
    self->_compactLeadingStatusBar = 0;

    [(CCUIMainViewController *)self _resignActive];
    v17 = [(CCUIMainViewController *)self view];
    [v17 setHidden:1];

    [(CCUIMainViewController *)self setTransitionState:0];
    [(CCUIMainViewController *)self setPresentationState:0];
    [(CCUIOverlayBackgroundPresenting *)self->_backgroundView bs_setHitTestingDisabled:1];
    if (v7)
    {
      [(UIViewController *)self ccui_safelyEndAppearanceTransitionForChildViewControllers];
    }

    v13 = [(CCUIMainViewController *)self pagingViewController];
    [v13 scrollToDefaultPageAnimated:0 completion:0];
  }

  else
  {
    v11 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (v7 > 3)
    {
      v12 = @"<invalid>";
    }

    else
    {
      v12 = off_278382860[v7];
    }

    *v19 = 138543874;
    *&v19[4] = v5;
    *&v19[12] = 2114;
    *&v19[14] = v6;
    *&v19[22] = 2114;
    v20 = v12;
    v13 = v11;
    _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring end dismissal as UUID is stale: UUID=%{public}@ currentTransitionUUID=%{public}@, currentPresentationState=%{public}@", v19, 0x20u);
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

- (void)_updatePresentationForTransitionType:(unint64_t)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5 interactive:(BOOL)a6
{
  y = a5.y;
  x = a5.x;
  v9 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider transitionStateForType:a3 interactive:a6 translation:a4.x, a4.y];
  [(CCUIMainViewController *)self _updatePresentationForTransitionState:v9 gestureVelocity:0 withCompletionHander:x, y];
}

- (void)_updatePresentationForTransitionState:(id)a3 gestureVelocity:(CGPoint)a4 withCompletionHander:(id)a5
{
  y = a4.y;
  x = a4.x;
  v18 = a3;
  presentationProvider = self->_presentationProvider;
  previousTransitionState = self->_previousTransitionState;
  v11 = a5;
  v12 = [(CCUIOverlayPresentationProvider *)presentationProvider animationBatchForTransitionState:v18 previousTransitionState:previousTransitionState gestureVelocity:x, y];
  [(CCUIAnimationRunner *)self->_primaryAnimationRunner additivelyRunAnimationBatch:v12 withCompletionBlock:v11];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider secondaryAnimationBatchForTransitionState:v18 previousTransitionState:self->_previousTransitionState gestureVelocity:x, y];
    [(CCUIAnimationRunner *)self->_secondaryAnimationRunner additivelyRunAnimationBatch:v13 withCompletionBlock:0];
  }

  [(CCUIMainViewController *)self _updateChevronStateForTransitionState:v18];
  v14 = [CCUIOverlayTransitionState isSignificantTransitionFrom:self->_previousTransitionState to:v18];
  v15 = [(CCUIMainViewController *)self delegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 presentationProgress];
    [v15 controlCenterViewController:self significantPresentationProgressChange:?];
  }

  v16 = [v18 copyWithZone:0];
  v17 = self->_previousTransitionState;
  self->_previousTransitionState = v16;
}

- (void)_evaluatePresentationContinuationIntoPagingWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CCUIOverlayTransitionState *)self->_previousTransitionState pagingProgress];
  v7 = v6;
  v8 = self->_presentationTouchIdentifiers;
  v9 = v8;
  if (v7 > 0.0 && [(NSArray *)v8 count])
  {
    [(CCUIOverlayTransitionState *)self->_previousTransitionState presentationProgress];
    v11 = v10;
    v12 = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
    if (v11 > 1.0)
    {
      v13 = [(CCUIMainViewController *)self view];
      v14 = [v12 canBeginPagingAtLocation:v13 inView:{x, y}];

      if (v14)
      {
        [v12 willBeginPagingInteractively:1];
        presentationTouchIdentifiers = self->_presentationTouchIdentifiers;
        self->_presentationTouchIdentifiers = 0;

        v16 = [(CCUIMainViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v16 controlCenterViewControllerWillContinuePresentationIntoPaging:self];
        }

        v17 = [(CCUIMainViewController *)self overlayPageControl];
        v18 = [v17 window];
        [v18 _contextId];

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
  v2 = [(CCUIMainViewController *)self pagingViewController];
  [v2 willResignActive];
}

- (BOOL)_includesModuleWithIdentifier:(id)a3 consideringObscureness:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CCUIMainViewController *)self pagingViewController];
  v8 = [v7 moduleViewForIdentifier:v6];
  if (!v8)
  {
    goto LABEL_8;
  }

  if (!v4)
  {
LABEL_7:
    LOBYTE(v9) = 1;
    goto LABEL_9;
  }

  if ([v7 expandedModuleCount] >= 1 && !objc_msgSend(v7, "isModuleExpandedForIdentifier:", v6))
  {
LABEL_8:
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  v9 = [v8 window];
  if (v9)
  {
    [v8 bounds];
    [v8 convertRect:v9 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v9 bounds];
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

  return v9;
}

- (void)loadView
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {

LABEL_4:
    v20 = [(CCUIMainViewController *)self parentViewController];
    if ([v20 isViewLoaded])
    {
      v5 = [v20 view];
      [v5 bounds];
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

  v20 = [MEMORY[0x277D759A0] mainScreen];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [v20 bounds];
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
  v11 = [(CCUIMainViewController *)self view];
  [v11 bounds];
  [(CCUIOverlayBackgroundPresenting *)v10 setFrame:?];

  v12 = [(CCUIMainViewController *)self view];
  [v12 addSubview:self->_backgroundView];

  v13 = [(CCUIMainViewController *)self view];
  [v13 setHidden:1];

  v14 = objc_alloc_init(MEMORY[0x277CFC9D0]);
  containerView = self->_containerView;
  self->_containerView = v14;

  v16 = [(CCUIMainViewController *)self view];
  [v16 addSubview:self->_containerView];

  v17 = [(CCUIMainViewController *)self view];
  [v17 _setSafeAreaInsetsFrozen:1];

  v18 = [(CCUIMainViewController *)self moduleInstanceManager];
  v19 = [(CCUIMainViewController *)self moduleSettingsManager];
  v20 = objc_alloc_init(CCUIControlIntentStore);
  v21 = objc_alloc(MEMORY[0x277CFA3B8]);
  v22 = [MEMORY[0x277CFA3C0] visibleControls];
  v23 = [v21 initWithOptions:v22];

  v63 = v18;
  v62 = v23;
  v61 = [[CCUIControlDescriptorProvider alloc] initWithWidgetExtensionProvider:v23];
  v24 = [[CCUIPagingViewController alloc] initWithModuleInstanceManager:v18 moduleSettingsManager:v19 controlIntentStore:v20 controlDescriptorProvider:v61 controlExtensionProvider:v23];
  pagingViewController = self->_pagingViewController;
  self->_pagingViewController = v24;

  [(CCUIPagingViewController *)self->_pagingViewController setPagingDelegate:self];
  [(CCUIPagingViewController *)self->_pagingViewController setContextDelegate:self];
  v26 = self->_pagingViewController;
  v27 = [(CCUIMainViewController *)self _safePagingViewContainerView];
  [(CCUIMainViewController *)self bs_addChildViewController:v26 withSuperview:v27];

  v28 = [(CCUIPagingViewController *)self->_pagingViewController scrollView];
  [v28 setHostingDelegate:self];
  v29 = [v28 panGestureRecognizer];
  pagingViewScrollPanGesture = self->_pagingViewScrollPanGesture;
  self->_pagingViewScrollPanGesture = v29;

  v31 = [(CCUIPagingViewController *)self->_pagingViewController viewForInstallingDismissGestureRecognizers];
  objc_initWeak(&location, self);
  v32 = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __37__CCUIMainViewController_viewDidLoad__block_invoke;
  v64[3] = &unk_2783826A8;
  objc_copyWeak(&v65, &location);
  [v32 addPagingDidChangeHandler:v64];
  if (objc_opt_respondsToSelector())
  {
    v33 = [[CCUIHeaderPocketView alloc] initWithFrame:v63 moduleInstanceManager:v4, v5, v6, v7];
    headerPocketView = self->_headerPocketView;
    self->_headerPocketView = v33;

    [(CCUIHeaderPocketView *)self->_headerPocketView setStatusBarDelegate:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView setActionsDelegate:self];
    v35 = [(CCUIMainViewController *)self view];
    [v35 addSubview:self->_headerPocketView];

    [(CCUIHeaderPocketView *)self->_headerPocketView addSensorAttributionViewControllerAsChildOfViewController:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView addDynamicControlsViewControllerAsChildOfViewController:self];
    [(CCUIHeaderPocketView *)self->_headerPocketView setHeaderPocketViewDelegate:self];
  }

  v36 = [(CCUIMainViewController *)self _safeStatusLabelViewContainerView];
  [(CCUIMainViewController *)self bs_addChildViewController:self->_statusLabelViewController withSuperview:v36];
  v37 = [(CCUIStatusLabelViewController *)self->_statusLabelViewController view];
  [v37 setUserInteractionEnabled:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v36;
    v39 = [(CCUIStatusLabelViewController *)self->_statusLabelViewController view];
    [v38 setStatusLabelView:v39];
  }

  v40 = [(CCUIMainViewController *)self view];
  [v40 _setIgnoreBackdropViewsWhenHiding:1];

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
    v45 = [(CCUIOverlayPresentationProvider *)self->_presentationProvider flickGestureBehavior];
    if (v45)
    {
      v46 = [[CCUIFlickGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalFlickGestureRecognizer_];
      pagingViewDismissalFlickGesture = self->_pagingViewDismissalFlickGesture;
      self->_pagingViewDismissalFlickGesture = v46;

      [(CCUIFlickGestureRecognizer *)self->_pagingViewDismissalFlickGesture setDelegate:self];
      v48 = self->_pagingViewDismissalFlickGesture;
      [v45 dismissalFlickMaximumTime];
      [(CCUIFlickGestureRecognizer *)v48 setMaximumFlickTime:?];
      v49 = self->_pagingViewDismissalFlickGesture;
      [v45 dismissalFlickMinimumVelocity];
      [(CCUIFlickGestureRecognizer *)v49 setMinimumFlickVelocity:?];
      -[CCUIFlickGestureRecognizer setAllowedFlickDirections:](self->_pagingViewDismissalFlickGesture, "setAllowedFlickDirections:", [v45 dismissalFlickAllowedDirections]);
      [v31 addGestureRecognizer:self->_pagingViewDismissalFlickGesture];
    }
  }

  else
  {
    v45 = 0;
  }

  if ([(CCUIOverlayPresentationProvider *)self->_presentationProvider isPanDismissalAvailable])
  {
    v50 = [[CCUIDismissalGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalPanGestureRecognizer_];
    pagingViewDismissalPanGesture = self->_pagingViewDismissalPanGesture;
    self->_pagingViewDismissalPanGesture = &v50->super;

    [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture setDelegate:self];
    [v31 addGestureRecognizer:self->_pagingViewDismissalPanGesture];
  }

  v52 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDismissalTapGestureRecognizer_];
  pagingViewDismissalTapGesture = self->_pagingViewDismissalTapGesture;
  self->_pagingViewDismissalTapGesture = v52;

  [(UITapGestureRecognizer *)self->_pagingViewDismissalTapGesture setDelegate:self];
  [v31 addGestureRecognizer:self->_pagingViewDismissalTapGesture];
  v54 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleEditingLongPressGestureRecognizer_];
  editingLongPressGesture = self->_editingLongPressGesture;
  self->_editingLongPressGesture = v54;

  [(UILongPressGestureRecognizer *)self->_editingLongPressGesture setDelegate:self];
  [(CCUIPagingViewController *)self->_pagingViewController setLongPressToEditGestureRecognizer:self->_editingLongPressGesture];
  v56 = [(CCUIMainViewController *)self view];
  [v56 addGestureRecognizer:self->_editingLongPressGesture];

  v57 = [(CCUIHeaderPocketView *)self->_headerPocketView headerBackgroundView];

  if (v57)
  {
    v58 = [(CCUIMainViewController *)self pagingView];
    v59 = [MEMORY[0x277D65E58] configureGradientMaskForFeatherBlurRecipe:7 onContentView:v58];
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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v5 viewDidAppear:a3];
  v4 = [(CCUIMainViewController *)self analyticsEventsController];
  [v4 analyticsLogMainViewControllerPresent];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CCUIMainViewController;
  [(CCUIMainViewController *)&v5 viewDidDisappear:a3];
  v4 = [(CCUIMainViewController *)self analyticsEventsController];
  [v4 analyticsLogMainViewControllerDismiss];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CCUIMainViewController;
  v7 = a4;
  [(CCUIMainViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(CCUIHeaderPocketView *)self->_headerPocketView dismissSensorAttributionExpandedView:1 completion:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__CCUIMainViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783826D0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CCUIMainViewController *)self isEditing];
  v6 = v5;
  v7 = !v3 || v5;
  v8 = MEMORY[0x277CFC8F8];
  if (v7)
  {
    if (!v3 && v5)
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

  v13 = [(CCUIMainViewController *)self pagingViewController];
  [v13 setEditing:v3];
  if (v7)
  {
    if (!v3 && v6)
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pagingViewDismissalFlickGesture == v4)
  {
    v7 = [(CCUIMainViewController *)self _dismissalFlickGestureRecognizerShouldBegin:?];
    goto LABEL_11;
  }

  if (self->_headerPocketViewDismissalTapGesture == v4 || self->_pagingViewDismissalTapGesture == v4)
  {
    v7 = [(CCUIMainViewController *)self _dismissalTapGestureRecognizerShouldBegin:v4];
LABEL_11:
    v6 = v7;
    goto LABEL_12;
  }

  if (self->_headerPocketViewDismissalPanGesture == v4 || self->_pagingViewDismissalPanGesture == v4)
  {
    v7 = [(CCUIMainViewController *)self _dismissalPanGestureRecognizerShouldBegin:v4];
    goto LABEL_11;
  }

  if (self->_editingLongPressGesture == v4)
  {
    v7 = [(CCUIMainViewController *)self _editingLongPressGestureRecognizerShouldBegin:v4];
    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_headerPocketViewDismissalPanGesture == v6)
  {
    v10 = [v7 view];
    v11 = [(CCUIHeaderPocketView *)self->_headerPocketView statusBar];
    if ([v10 isDescendantOfView:v11])
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

  if (self->_pagingViewDismissalTapGesture == v6 && (-[CCUIMainViewController pagingViewController](self, "pagingViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEditing], v12, !v13))
  {
    isKindOfClass = 1;
  }

  else if (self->_editingLongPressGesture == v6)
  {
    v14 = [v8 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v8 delegate];
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

- (id)fallbackDragHitTestViewForScrollView:(id)a3
{
  v3 = [(CCUIMainViewController *)self pagingViewController];
  v4 = [v3 currentIconlistView];

  return v4;
}

- (void)pagingViewController:(id)a3 didAdd:(id)a4
{
  v9 = a4;
  if (self->_active)
  {
    v5 = objc_opt_class();
    v6 = v9;
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

- (void)pagingViewController:(id)a3 willRemove:(id)a4
{
  v5 = a4;
  if (self->_active)
  {
    v10 = v5;
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
    v5 = v10;
  }
}

- (void)pagingViewController:(id)a3 willExpand:(id)a4
{
  v5 = [(CCUIMainViewController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 willOpenExpandedModuleForControlCenterViewController:self];
  }

  [(CCUIMainViewController *)self _willPresentViewControllerContainedInPages];
  self->_showingRootView = 0;
}

- (void)pagingViewController:(id)a3 didClose:(id)a4
{
  v5 = [(CCUIMainViewController *)self delegate:a3];
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

- (void)pagingViewController:(id)a3 editingDidChange:(BOOL)a4
{
  v5 = objc_opt_respondsToSelector();
  presentationProvider = self->_presentationProvider;
  if (v5)
  {
    v7 = [(CCUIOverlayPresentationProvider *)presentationProvider transitionBetweenEditing];
    [(CCUIAnimationRunner *)self->_editingAnimationRunner runAnimationBatch:v7 withCompletionBlock:0];
  }

  else
  {

    [(CCUIOverlayPresentationProvider *)presentationProvider layoutViews];
  }
}

- (id)reasonToDisallowEditing:(id)a3
{
  v3 = [(CCUIMainViewController *)self systemAgent];
  v4 = [v3 reasonToDisallowEditing];

  return v4;
}

- (id)pagingViewControllerDidAddModuleView:(id)a3
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

- (BOOL)isSystemRestoringForPagingViewController:(id)a3
{
  v3 = [(CCUIMainViewController *)self systemAgent];
  v4 = [v3 isRestoring];

  return v4;
}

- (BOOL)pagingViewController:(id)a3 shouldPauseCheckingInvalidControlsForApplicationIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CCUIMainViewController *)self systemAgent];
  v7 = [v6 hasApplicationPlaceholderForDisplayID:v5];

  v8 = [(CCUIMainViewController *)self systemAgent];
  LOBYTE(v6) = [v8 hasApplicationForDisplayID:v5];

  return (v7 | v6) & 1;
}

- (void)handleControlCenterOperationTypeWithOperationService:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__CCUIMainViewController_handleControlCenterOperationTypeWithOperationService_operationType_completionHandler___block_invoke;
  block[3] = &unk_278382720;
  v11[1] = a4;
  objc_copyWeak(v11, &location);
  block[4] = self;
  v10 = v7;
  v8 = v7;
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

- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CCUIMainViewController_resetToDefaultLayoutWithCompletionHandler___block_invoke;
  v6[3] = &unk_278382748;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __68__CCUIMainViewController_resetToDefaultLayoutWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pagingViewController];
  [v2 resetToDefaultLayout];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)moduleInstancesChangedForModuleInstanceManager:(id)a3
{
  v3 = [(CCUIMainViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)setOverlayStatusBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CCUIMainViewController *)self delegate];
  [v5 controlCenterViewController:self wantsHostStatusBarHidden:!v3];

  if (v3)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(UIStatusBar *)self->_compactLeadingStatusBar setAlpha:v6];
  v7 = [(CCUIHeaderPocketView *)self->_headerPocketView statusBar];
  [v7 setAlpha:v6];
}

- (void)setOverlayPageContentAlpha:(double)a3
{
  v4 = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [v4 setPageContentAlpha:a3];
}

- (void)setOverlayPageContentScale:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [v5 setPageContentScale:{x, y}];
}

- (void)setOverlayPageContentTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CCUIPagingViewController *)self->_pagingViewController interactivePagingCoordinator];
  [v5 setPageContentTranslation:{x, y}];
}

- (void)enumerateOverlayModuleViewsWithBlock:(id)a3
{
  v4 = a3;
  pagingViewController = self->_pagingViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CCUIMainViewController_enumerateOverlayModuleViewsWithBlock___block_invoke;
  v7[3] = &unk_278382770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)performIfDisplayingModuleView:(id)a3 subview:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  pagingViewController = self->_pagingViewController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__CCUIMainViewController_performIfDisplayingModuleView_subview_block___block_invoke;
  v13[3] = &unk_278382798;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  [(CCUIPagingViewController *)pagingViewController performIfDisplayingModuleView:v11 subview:a4 block:v13];
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

- (CCUILayoutRect)_layoutRectForIconCoordinate:(SEL)a3 gridSize:(SBIconCoordinate)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
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
    v7 = [(CCUIMainViewController *)self delegate];
    [v7 reachabilityOffsetForControlCenterViewController:self];
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

- (id)compactTrailingStyleRequestForStatusBar:(id)a3
{
  v4 = [(CCUIStatusBarStyleSnapshot *)self->_hostStatusBarStyleSnapshot trailingStyleRequest];
  if ([(CCUIStatusBarStyleSnapshot *)self->_hostStatusBarStyleSnapshot isHidden])
  {
    v5 = [objc_alloc(MEMORY[0x277D75AA8]) initWithStyle:1 legacy:0 legibilityStyle:_UILegibilityStyleFromStatusBarStyle() foregroundColor:0];

    v4 = v5;
  }

  return v4;
}

- (CGRect)compactAvoidanceFrameForStatusBar:(id)a3
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

- (CGRect)expandedAvoidanceFrameForStatusBar:(id)a3
{
  v4 = [(CCUIMainViewController *)self _interfaceOrientation]- 3;
  v5 = [(CCUIHeaderPocketView *)self->_headerPocketView isDisplayingSensorStatus];
  if (v4 <= 0xFFFFFFFFFFFFFFFDLL && v5)
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

- (void)contentModuleContext:(id)a3 enqueueStatusUpdate:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_active)
  {
    v7 = [(CCUIMainViewController *)self pagingViewController];
    v8 = [v7 expandedModuleCount];

    if (!v8)
    {
      v9 = [(CCUIMainViewController *)self statusLabelViewController];
      v10 = [v11 moduleIdentifier];
      [v9 enqueueStatusUpdate:v6 forIdentifier:v10];
    }
  }
}

- (void)requestExpandModuleForContentModuleContext:(id)a3
{
  v4 = a3;
  if (self->_active)
  {
    v10 = v4;
    v5 = [(CCUIMainViewController *)self pagingViewController];
    v6 = [v5 expandedModuleCount];

    v4 = v10;
    if (!v6)
    {
      v7 = [(CCUIMainViewController *)self pagingViewController];
      v8 = [v10 moduleIdentifier];
      v9 = [v10 uniqueIdentifier];
      [v7 expandModuleWithIdentifier:v8 uniqueIdentifier:v9];

      v4 = v10;
    }
  }
}

- (void)dismissExpandedViewForContentModuleContext:(id)a3
{
  if (self->_active)
  {
    v4 = a3;
    v5 = [(CCUIMainViewController *)self pagingViewController];
    v6 = [v4 moduleIdentifier];

    LODWORD(v4) = [v5 isModuleExpandedForIdentifier:v6];
    if (v4)
    {

      [(CCUIMainViewController *)self dismissPresentedContentAnimated:1 completion:0];
    }
  }
}

- (void)dismissControlCenterForContentModuleContext:(id)a3
{
  if ([(CCUIMainViewController *)self isActive])
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (id)contentModuleContext:(id)a3 requestsSensorActivityDataForActiveSensorType:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  if (a4 > 1)
  {
    v14 = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __93__CCUIMainViewController_contentModuleContext_requestsSensorActivityDataForActiveSensorType___block_invoke;
    v20[3] = &unk_2783827C0;
    v20[4] = self;
    v20[5] = buf;
    v20[6] = a4;
    [v14 enumerateObjectsUsingBlock:v20];
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
    if (a4)
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
    v16 = [MEMORY[0x277CFC9B8] stringFromSensorType:a4];
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

- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)a3
{
  v3 = [(CCUIMainViewController *)self systemAgent];
  v4 = [v3 isPasscodeLocked];

  return v4;
}

- (void)_getCameraSensorActivityData:(id *)a3 micSensorActivityData:(id *)a4 isMutedMic:(BOOL *)a5 isInactiveMicModeSelection:(BOOL *)a6
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  v11 = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider activeSensorActivityData];
  v12 = [v11 bs_filter:&__block_literal_global_129];

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
    v14 = [v13 attributionGroup];
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
    v15 = v14;
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
        v27 = [v26 attributionGroup];
        if (!v27)
        {
          v27 = [v26 bundleIdentifier];
        }

        v30 = v27;
        v28 = [v27 isEqualToString:v22];
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
    if (a3)
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
      v24 = [(CCUISensorActivityDataProvider *)self->_sensorActivityDataProvider inactiveSensorActivityDataEligibleForMicModeSelection];
      v17 = [v24 copy];

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

    if (a3)
    {
LABEL_30:
      *a3 = v47[5];
    }
  }

  if (a4)
  {
    v29 = v17;
    *a4 = v17;
  }

  if (a5)
  {
    *a5 = v19;
  }

  if (a6)
  {
    *a6 = v18;
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

- (BOOL)_isSensorActivityData:(id)a3 relevantForSensorType:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a3 bundleIdentifier];
  if (!v5)
  {
    v9 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
    {
      [CCUIMainViewController _isSensorActivityData:v9 relevantForSensorType:?];
    }

    os_fault_with_payload();
    goto LABEL_12;
  }

  if (a4 != 1)
  {
    if (!a4)
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

- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)a3
{
  v4 = [a3 moduleIdentifier];
  [(CCUIPagingViewController *)self->_pagingViewController invalidateContainerViewsForPlatterTreatmentWithIdentifier:v4];
}

- (id)existingControlKindFromWidgetExtension:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CCUIPagingViewController *)self->_pagingViewController iconModel];
  [v5 iconsOfClass:objc_opt_class()];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v30 = 0u;
  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v20 = *v28;
    v21 = v5;
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
              v16 = [v15 extensionBundleIdentifier];
              v17 = [v16 isEqualToString:v4];

              if (v17)
              {
                v18 = [v15 kind];

                v5 = v21;
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

      v18 = 0;
      v5 = v21;
      v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (void)overlayBackgroundViewTapped:(id)a3
{
  v4 = [(CCUIMainViewController *)self pagingViewController];
  v5 = [v4 isEditing];

  if (v5)
  {

    [(CCUIMainViewController *)self setEditing:0];
  }

  else
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (void)beginPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5 touches:(id)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4.y;
  v9 = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v16 = a6;
  if ([(CCUIMainViewController *)self presentationState]!= 1 && [(CCUIMainViewController *)self presentationState]!= 2)
  {
    [(CCUIMainViewController *)self _setPresentationPanGestureActive:1];
    v13 = [v16 bs_compactMap:&__block_literal_global_140];
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

- (void)updatePresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  if ([(CCUIMainViewController *)self presentationState]== 1 && [(CCUIMainViewController *)self transitionState]== 1)
  {
    [(CCUIMainViewController *)self _updatePresentationForTransitionType:1 translation:1 velocity:v8 interactive:v7, x, y];

    [(CCUIMainViewController *)self _evaluatePresentationContinuationIntoPagingWithLocation:v10, v9];
  }
}

- (void)endPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  [(CCUIMainViewController *)self _setPresentationPanGestureActive:0, a3.x, a3.y];
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

- (void)cancelPresentationWithLocation:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  [(CCUIMainViewController *)self _setPresentationPanGestureActive:0, a3.x, a3.y, a4.x, a4.y, a5.x, a5.y];
  if ([(CCUIMainViewController *)self presentationState]== 1)
  {

    [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
  }
}

- (BOOL)_interpretsGestureLocationAsContent:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMainViewController *)self view];
  pagingViewController = self->_pagingViewController;
  [v4 locationInView:v5];
  if ([(CCUIPagingViewController *)pagingViewController interpretsLocationAsContent:v5 in:?])
  {
    v7 = 1;
  }

  else
  {
    headerPocketView = self->_headerPocketView;
    [v4 locationInView:headerPocketView];
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

- (BOOL)_dismissalTapGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(CCUIMainViewController *)self presentationState]== 3 || ![(CCUIMainViewController *)self presentationState])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CCUIMainViewController *)self _interpretsGestureLocationAsContent:v4];
  }

  return v5;
}

- (void)_handleDismissalTapGestureRecognizer:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(CCUIMainViewController *)self pagingViewController];
    v5 = [v4 isEditing];

    if (v5)
    {

      [(CCUIMainViewController *)self setEditing:0];
    }

    else
    {

      [(CCUIMainViewController *)self dismissAnimated:1 withCompletionHandler:0];
    }
  }
}

- (BOOL)_dismissalFlickGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(CCUIMainViewController *)self _scrollViewIsScrollable])
  {
    [v4 minimumFlickVelocity];
    v6 = ![(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:0.0, v5];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)_dismissalFlickGestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
    v7 = [v5 gestureRecognizers];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          if ([(NSHashTable *)self->_blockingGestureRecognizers containsObject:*(*(&v13 + 1) + 8 * i)])
          {
            v6 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_handleDismissalFlickGestureRecognizer:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(CCUIMainViewController *)self pagingViewController];
    v5 = [v4 isEditing];

    if (v5)
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

- (BOOL)_dismissalPanGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMainViewController *)self presentationState];
  LOBYTE(v6) = 0;
  if (v5 && v5 != 3)
  {
    if (!self->_presentationPanGestureActive)
    {
      if (self->_pagingViewDismissalPanGesture == v4)
      {
        if (![(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_headerPocketViewDismissalPanGesture]&& ![(CCUIMainViewController *)self isEditing])
        {
          v8 = [(CCUIMainViewController *)self view];
          [(UIPanGestureRecognizer *)v4 velocityInView:v8];
          v10 = v9;
          v12 = v11;

          v6 = ![(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:v10, v12];
          goto LABEL_8;
        }
      }

      else
      {
        if (self->_headerPocketViewDismissalPanGesture != v4)
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

- (void)_handleDismissalPanGestureRecognizer:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerBegan:v6];
    }

    else
    {
      v5 = v6;
      if (v4 != 2)
      {
        goto LABEL_13;
      }

      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerChanged:v6];
    }
  }

  else if (v4 == 3)
  {
    [(CCUIMainViewController *)self _dismissalPanGestureRecognizerEnded:v6];
  }

  else
  {
    v5 = v6;
    if (v4 == 4)
    {
      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerCancelled:v6];
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      [(CCUIMainViewController *)self _dismissalPanGestureRecognizerFailed:v6];
    }
  }

  v5 = v6;
LABEL_13:
}

- (void)_dismissalPanGestureRecognizerBegan:(id)a3
{
  v6 = a3;
  v4 = [(CCUIMainViewController *)self _beginDismissalAnimated:1 interactive:1];
  v5 = [(CCUIMainViewController *)self view];
  [v6 setTranslation:v5 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  [(CCUIMainViewController *)self _dismissalPanGestureRecognizerChanged:v6];
}

- (void)_dismissalPanGestureRecognizerChanged:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMainViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CCUIMainViewController *)self view];
  [v4 velocityInView:v10];
  v12 = v11;
  v14 = v13;

  [(CCUIMainViewController *)self _updatePresentationForTransitionType:2 translation:1 velocity:v7 interactive:v9, v12, v14];
}

- (void)_dismissalPanGestureRecognizerEnded:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMainViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CCUIMainViewController *)self view];
  [v4 velocityInView:v10];
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

- (BOOL)_editingLongPressGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(CCUIMainViewController *)self isEditing]|| [(CCUIMainViewController *)self isSensorAttributionViewControllerExpanded]|| [(CCUIPagingViewController *)self->_pagingViewController expandedModuleCount]> 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v7 = [(CCUIMainViewController *)self presentationState];
    LOBYTE(v5) = 0;
    if (v7 && v7 != 3)
    {
      v5 = ![(CCUIMainViewController *)self _interpretsGestureLocationAsContent:v4];
    }
  }

  return v5;
}

- (void)_handleEditingLongPressGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(CCUIMainViewController *)self setEditing:1];
    [v4 setEnabled:0];
    [v4 setEnabled:1];
  }
}

- (BOOL)_scrollPanGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(CCUIMainViewController *)self presentationState]== 3 || self->_presentationPanGestureActive || [(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_headerPocketViewDismissalPanGesture]|| [(CCUIMainViewController *)self _gestureRecognizerIsActive:self->_pagingViewDismissalPanGesture])
  {
    v5 = 0;
  }

  else
  {
    v7 = [(CCUIMainViewController *)self view];
    [v4 velocityInView:v7];
    v9 = v8;
    v11 = v10;

    v5 = [(CCUIMainViewController *)self _scrollPanGestureRecognizerCanBeginForGestureVelocity:v9, v11];
  }

  return v5;
}

- (BOOL)_scrollPanGestureRecognizerCanBeginForGestureVelocity:(CGPoint)a3
{
  if (BSFloatGreaterThanFloat() && ![(CCUIMainViewController *)self _scrollViewCanAcceptDownwardsPan])
  {
    v4 = [(CCUIMainViewController *)self _scrollViewIsScrollable];
    if (v4)
    {
      LOBYTE(v4) = BSFloatGreaterThanFloat() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)_scrollViewIsScrollable
{
  v2 = [(CCUIMainViewController *)self _scrollView];
  if ([v2 isScrollEnabled])
  {
    [v2 contentSize];
    [v2 contentInset];
    [v2 contentInset];
    [v2 bounds];
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
  v3 = [(CCUIMainViewController *)self _scrollViewIsScrollable];
  if (v3)
  {
    v4 = [(CCUIMainViewController *)self _scrollView];
    [v4 ccui_relativeContentOffset];

    LOBYTE(v3) = BSFloatLessThanOrEqualToFloat() ^ 1;
  }

  return v3;
}

- (void)_updateChevronStateForTransitionState:(id)a3
{
  [a3 presentationProgress];
  v4 = BSFloatGreaterThanOrEqualToFloat();
  headerPocketView = self->_headerPocketView;

  [(CCUIHeaderPocketView *)headerPocketView setChevronState:v4];
}

- (void)_updateHotPocketAnimated:(BOOL)a3
{
  if (self->_headerPocketView)
  {
    v3 = a3;
    v5 = [(CCUIMainViewController *)self pagingViewController];
    v26 = [v5 topmostContentView];

    [(CCUIHeaderPocketView *)self->_headerPocketView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v26 bounds];
    [v26 convertRect:self->_headerPocketView toView:?];
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
    [(CCUIMainViewController *)self _updateHotPocket:v25 animated:v3];
  }
}

- (void)_updateHotPocket:(BOOL)a3 animated:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_headerPocketView)
  {
    v4 = a3;
    if (self->_showHotPocket != a3)
    {
      self->_showHotPocket = a3;
      v6 = 0.0;
      if (a3)
      {
        v6 = 1.0;
      }

      if (a4)
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

            [*(*(&v12 + 1) + 8 * i) setHidden:{!v4, v12}];
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
  v3 = [(CCUIMainViewController *)self pagingViewController];
  v4 = [v3 queryAllTopLevelBlockingGestureRecognizers];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(NSHashTable *)self->_blockingGestureRecognizers addObject:v9];
        [(UIPanGestureRecognizer *)self->_pagingViewDismissalPanGesture requireGestureRecognizerToFail:v9];
        [(UIPanGestureRecognizer *)self->_pagingViewScrollPanGesture requireGestureRecognizerToFail:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)gameModeStateDidChange:(unint64_t)a3
{
  if ([(CCUIMainViewController *)self presentationState]- 1 >= 2)
  {
    headerPocketView = self->_headerPocketView;

    [(CCUIHeaderPocketView *)headerPocketView gameModeStateDidChange:a3];
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
  v3 = [(CCUIMainViewController *)self askToAirDropController];
  v4 = [v3 hasPendingOrActiveConnections];

  if (([(CCUIMainViewController *)self _interfaceOrientation]- 1) >= 2)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v4 = ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1) & v4;
  }

  if ([(CCUIMainViewController *)self isShowingRootView]|| !v4)
  {
    v7 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      v10 = 138412546;
      v11 = @"com.apple.sharing.AskToAirDropControlCenterModule";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "AskToAirDrop: update module visibility with identifier:%@ visible:%@", &v10, 0x16u);
    }

    v9 = [MEMORY[0x277CFC830] sharedInstance];
    [v9 setVisibility:v4 forModuleWithIdentifier:@"com.apple.sharing.AskToAirDropControlCenterModule" completionHandler:0];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_safePagingViewContainerView
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
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