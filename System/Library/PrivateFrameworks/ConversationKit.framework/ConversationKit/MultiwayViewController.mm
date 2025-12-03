@interface MultiwayViewController
- (BOOL)isCaptioningEnabled;
- (BOOL)isInVideoMessageFlow;
- (BOOL)isOnScreen;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isPresentingEffectsBrowser;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowingHUD;
- (BOOL)isShownAboveCoverSheet;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller;
- (BOOL)shouldDisconnectOnDismissal;
- (BOOL)wantsPIPRotationForLocalPreview;
- (CGRect)frameForRestoreAnimation;
- (CGRect)mediaPipFrameInWindowScene;
- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)controller;
- (CGSize)preferredPIPContentAspectRatio;
- (CGSize)preferredPiPContentAspectRatio;
- (CNKBannerPresentationManager)bannerPresentationManager;
- (CNKFaceTimeMultiwayConversationViewControllerDelegate)delegate;
- (CNKFaceTimeMultiwayViewControllerIOSDelegate)iOSDelegate;
- (NSTimer)inCallControlsDismissTimer;
- (TUCall)call;
- (UIImage)audioRouteGlyphForDevice;
- (UIView)localParticipantView;
- (_TtC15ConversationKit22MultiwayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15ConversationKit33VideoReactionPickerViewController)reactionsViewController;
- (id)accessibilityConstraintController;
- (id)audioRouteGlyphFor:(id)for;
- (id)audioRouteMenu;
- (id)viewControllerForPiP;
- (int64_t)fullScreenFocusedParticipantOrientation;
- (void)bannerDidGetTap;
- (void)cameraViewController:(id)controller didChangeEffectsState:(int64_t)state;
- (void)cameraViewController:(id)controller didRenderFrame:(id)frame;
- (void)cameraViewController:(id)controller presentationRectWasPinchedWithState:(int64_t)state scale:(double)scale velocity:(double)velocity;
- (void)cameraViewControllerPresentationRectWasDoubleTapped:(id)tapped;
- (void)cancelVideoRecordingWithCompletion:(id)completion;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)didCaptureVideoFrame:(id)frame;
- (void)didTapChangeLayoutButton;
- (void)didTapDeskViewButton;
- (void)didTapOneToOneShutterButton;
- (void)dismissContactCard;
- (void)dismissPeoplePicker;
- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height;
- (void)handleCameraFlipAnimationDidFinish:(id)finish;
- (void)hideEffectsBrowser;
- (void)muteVideo;
- (void)openMessagesConversation;
- (void)pipDidRotate;
- (void)prepareForAppSwitcher;
- (void)presentAddParticipantSheet;
- (void)presentContactCard;
- (void)resetEffectsState;
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)serverDidTimeout:(id)timeout;
- (void)setBannerPresentationManager:(id)manager;
- (void)setControlsState:(int64_t)state animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setDidExpandIncomingCallBanner:(BOOL)banner;
- (void)setHasParticipantVideo:(BOOL)video;
- (void)setIOSDelegate:(id)delegate;
- (void)setInCallControlsDismissTimer:(id)timer;
- (void)setIsCaptioningEnabled:(BOOL)enabled;
- (void)setIsDisplayedInBanner:(BOOL)banner;
- (void)setIsFullScreen:(BOOL)screen;
- (void)setIsInCallEndedBlockAndReportFlow:(BOOL)flow;
- (void)setIsOnScreen:(BOOL)screen;
- (void)setIsPipStashed:(BOOL)stashed;
- (void)setMediaPipFrameInWindowScene:(CGRect)scene;
- (void)setPipState:(int64_t)state;
- (void)testing_didFinishLocalPreviewRotationAnimation;
- (void)toggleAudioMute;
- (void)toggleCinematicFraming;
- (void)toggleLocalOrientation;
- (void)toggleReactionsView;
- (void)toggleVideoMuteWithShouldPauseIfStopped:(BOOL)stopped;
- (void)updateVideoState;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MultiwayViewController

- (id)viewControllerForPiP
{
  v0 = MultiwayViewController.pipViewController.getter();

  return v0;
}

- (void)testing_didFinishLocalPreviewRotationAnimation
{
  selfCopy = self;
  MultiwayViewController.testing_didFinishLocalPreviewRotationAnimation()();
}

- (void)didTapChangeLayoutButton
{
  selfCopy = self;
  MultiwayViewController.didTapChangeLayoutButton()();
}

- (void)didTapDeskViewButton
{
  selfCopy = self;
  MultiwayViewController.didTapDeskViewButton()();
}

- (void)setIsInCallEndedBlockAndReportFlow:(BOOL)flow
{
  selfCopy = self;
  MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(flow);
}

- (CNKBannerPresentationManager)bannerPresentationManager
{
  v2 = MultiwayViewController.bannerPresentationManagerBox.getter();

  return v2;
}

- (void)setBannerPresentationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  MultiwayViewController.bannerPresentationManagerBox.setter(manager);
}

- (void)setDidExpandIncomingCallBanner:(BOOL)banner
{
  selfCopy = self;
  MultiwayViewController.didExpandIncomingCallBanner.setter(banner);
}

- (NSTimer)inCallControlsDismissTimer
{
  v2 = MultiwayViewController.inCallControlsDismissTimer.getter();

  return v2;
}

- (void)setInCallControlsDismissTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  MultiwayViewController.inCallControlsDismissTimer.setter(timer);
}

- (TUCall)call
{
  v2 = MultiwayViewController.call.getter();

  return v2;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  selfCopy = self;
  MultiwayViewController.deviceOrientation.setter(orientation);
}

- (BOOL)wantsPIPRotationForLocalPreview
{
  selfCopy = self;
  v3 = MultiwayViewController.wantsPIPRotationForLocalPreview.getter();

  return v3;
}

- (BOOL)isOnScreen
{
  selfCopy = self;
  v3 = MultiwayViewController.isOnScreen.getter();

  return v3 & 1;
}

- (void)setIsOnScreen:(BOOL)screen
{
  selfCopy = self;
  MultiwayViewController.isOnScreen.setter();
}

- (void)setHasParticipantVideo:(BOOL)video
{
  selfCopy = self;
  MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(video, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
}

- (void)setIsDisplayedInBanner:(BOOL)banner
{
  selfCopy = self;
  MultiwayViewController.isDisplayedInBanner.setter(banner);
}

- (BOOL)isInVideoMessageFlow
{
  selfCopy = self;
  v3 = MultiwayViewController.isInVideoMessageFlow.getter();

  return v3 & 1;
}

- (BOOL)isShowingHUD
{
  selfCopy = self;
  v3 = MultiwayViewController.isShowingHUD.getter();

  return v3;
}

- (void)setIsFullScreen:(BOOL)screen
{
  selfCopy = self;
  MultiwayViewController.isFullScreen.setter(screen);
}

- (BOOL)isShownAboveCoverSheet
{
  selfCopy = self;
  v3 = MultiwayViewController.isShownAboveCoverSheet.getter();

  return v3 & 1;
}

- (void)setIsPipStashed:(BOOL)stashed
{
  selfCopy = self;
  MultiwayViewController.isPipStashed.setter(stashed);
}

- (void)setPipState:(int64_t)state
{
  selfCopy = self;
  MultiwayViewController.pipState.setter(state);
}

- (BOOL)isCaptioningEnabled
{
  selfCopy = self;
  v3 = MultiwayViewController.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)setIsCaptioningEnabled:(BOOL)enabled
{
  selfCopy = self;
  MultiwayViewController.isCaptioningEnabled.setter(enabled);
}

- (UIView)localParticipantView
{
  v2 = MultiwayViewController.localParticipantView.getter();

  return v2;
}

- (_TtC15ConversationKit33VideoReactionPickerViewController)reactionsViewController
{
  v2 = MultiwayViewController.reactionsViewController.getter();

  return v2;
}

- (CNKFaceTimeMultiwayConversationViewControllerDelegate)delegate
{
  v2 = MultiwayViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiwayViewController.delegate.setter();
}

- (CNKFaceTimeMultiwayViewControllerIOSDelegate)iOSDelegate
{
  v2 = MultiwayViewController.iOSDelegate.getter();

  return v2;
}

- (void)setIOSDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiwayViewController.iOSDelegate.setter();
}

- (CGSize)preferredPIPContentAspectRatio
{
  selfCopy = self;
  v3 = MultiwayViewController.preferredPIPContentAspectRatio.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (int64_t)fullScreenFocusedParticipantOrientation
{
  selfCopy = self;
  v3 = MultiwayViewController.fullScreenFocusedParticipantOrientation.getter();

  return v3;
}

- (BOOL)isOneToOneModeEnabled
{
  selfCopy = self;
  v3 = MultiwayViewController.isOneToOneModeEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldDisconnectOnDismissal
{
  selfCopy = self;
  v3 = MultiwayViewController.shouldDisconnectOnDismissal.getter();

  return v3 & 1;
}

- (CGRect)mediaPipFrameInWindowScene
{
  v2 = MultiwayViewController.mediaPipFrameInWindowScene.getter();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setMediaPipFrameInWindowScene:(CGRect)scene
{
  selfCopy = self;
  MultiwayViewController.mediaPipFrameInWindowScene.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  MultiwayViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  MultiwayViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MultiwayViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MultiwayViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  MultiwayViewController.viewSafeAreaInsetsDidChange()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  MultiwayViewController.viewDidLayoutSubviews()();
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MultiwayViewController.willMove(toParent:)(controller);
}

- (void)updateViewConstraints
{
  selfCopy = self;
  MultiwayViewController.updateViewConstraints()();
}

- (void)toggleAudioMute
{
  selfCopy = self;
  MultiwayViewController.toggleAudioMute()();
}

- (void)toggleVideoMuteWithShouldPauseIfStopped:(BOOL)stopped
{
  selfCopy = self;
  MultiwayViewController.toggleVideoMute(shouldPauseIfStopped:)(stopped);
}

- (void)toggleCinematicFraming
{
  selfCopy = self;
  MultiwayViewController.toggleCinematicFraming()();
}

- (void)muteVideo
{
  selfCopy = self;
  MultiwayViewController.muteVideo()();
}

- (void)openMessagesConversation
{
  selfCopy = self;
  MultiwayViewController.openMessagesConversation()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiwayViewController.viewWillTransition(to:with:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)handleCameraFlipAnimationDidFinish:(id)finish
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MultiwayViewController.handleCameraFlipAnimationDidFinish(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)hideEffectsBrowser
{
  selfCopy = self;
  MultiwayViewController.hideEffectsBrowser()();
}

- (void)updateVideoState
{
  selfCopy = self;
  MultiwayViewController.updateVideoState()();
}

- (id)accessibilityConstraintController
{
  v2 = MultiwayViewController.accessibilityConstraintController()();

  return v2;
}

- (_TtC15ConversationKit22MultiwayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  MultiwayViewController.init(nibName:bundle:)();
}

- (BOOL)isReadyToShowCallDetails
{
  selfCopy = self;
  v3 = MultiwayViewController.isReadyToShowCallDetails.getter();

  return v3;
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiwayViewController.screenSharingInteractionController(_:didUpdateRemoteControlStatus:)();
  swift_unknownObjectRelease();
}

- (void)toggleLocalOrientation
{
  selfCopy = self;
  MultiwayViewController.toggleLocalOrientation()();
}

- (void)pipDidRotate
{
  selfCopy = self;
  MultiwayViewController.pipDidRotate()();
}

- (void)toggleReactionsView
{
  selfCopy = self;
  MultiwayViewController.toggleReactionsView()();
}

- (void)didTapOneToOneShutterButton
{
  selfCopy = self;
  MultiwayViewController.didTapOneToOneShutterButton()();
}

- (BOOL)isPresentingEffectsBrowser
{
  selfCopy = self;
  v3 = MultiwayViewController.isPresentingEffectsBrowser.getter();

  return v3;
}

- (void)resetEffectsState
{
  selfCopy = self;
  MultiwayViewController.resetEffectsState()();
}

- (id)audioRouteMenu
{
  selfCopy = self;
  v3 = MultiwayViewController.audioRouteMenu()();

  return v3;
}

- (id)audioRouteGlyphFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = MultiwayViewController.audioRouteGlyph(for:)(forCopy);

  return v6;
}

- (UIImage)audioRouteGlyphForDevice
{
  selfCopy = self;
  v3 = MultiwayViewController.audioRouteGlyphForDevice.getter();

  return v3;
}

- (void)cameraViewController:(id)controller didRenderFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  selfCopy = self;
  MultiwayViewController.cameraViewController(_:didRenderFrame:)(controllerCopy, frameCopy);
}

- (void)cameraViewControllerPresentationRectWasDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  MultiwayViewController.cameraViewControllerPresentationRectWasDoubleTapped(_:)(selfCopy);
}

- (void)cameraViewController:(id)controller presentationRectWasPinchedWithState:(int64_t)state scale:(double)scale velocity:(double)velocity
{
  controllerCopy = controller;
  selfCopy = self;
  MultiwayViewController.cameraViewController(_:presentationRectWasPinchedWith:scale:velocity:)(scale);
}

- (void)cameraViewController:(id)controller didChangeEffectsState:(int64_t)state
{
  controllerCopy = controller;
  selfCopy = self;
  MultiwayViewController.cameraViewController(_:didChange:)();
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = MultiwayViewController.shouldAlwaysPresentExpandedApps(for:)();

  return self & 1;
}

- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  MultiwayViewController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
}

- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = _sIeyB_Ieg_TRTA_0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  MultiwayViewController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
}

- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = MultiwayViewController.expandedAppViewControllerSize(for:)();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height
{
  controllerCopy = controller;
  selfCopy = self;
  MultiwayViewController.effectBrowserViewController(_:willChangeDockHeight:)(height);
}

- (void)didCaptureVideoFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  MultiwayViewController.didCapture(_:)(frameCopy);
}

- (void)serverDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  selfCopy = self;
  MultiwayViewController.serverDidTimeout(_:)();
}

- (void)setControlsState:(int64_t)state animated:(BOOL)animated
{
  selfCopy = self;
  MultiwayViewController.setControlsState(_:animated:)();
}

- (void)presentAddParticipantSheet
{
  selfCopy = self;
  MultiwayViewController.presentAddParticipantSheet()(specialized static SpringBoardUtilities.requestPasscodeUnlock(_:));
}

- (void)dismissPeoplePicker
{
  selfCopy = self;
  MultiwayViewController.dismissPeoplePicker()();
}

- (void)presentContactCard
{
  selfCopy = self;
  MultiwayViewController.presentAddParticipantSheet()(specialized static SpringBoardUtilities.requestPasscodeUnlock(_:));
}

- (void)dismissContactCard
{
  selfCopy = self;
  MultiwayViewController.dismissContactCard()();
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  MultiwayViewController.contactViewController(_:didCompleteWith:)(selfCopy, v10);
}

- (void)bannerDidGetTap
{
  selfCopy = self;
  MultiwayViewController.bannerDidGetTap()();
}

- (CGRect)frameForRestoreAnimation
{
  selfCopy = self;
  v11 = MultiwayViewController.frameForRestoreAnimation()();
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)preferredPiPContentAspectRatio
{
  selfCopy = self;
  v3 = MultiwayViewController.preferredPiPContentAspectRatio()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareForAppSwitcher
{
  selfCopy = self;
  MultiwayViewController.prepareForAppSwitcher()();
}

- (void)cancelVideoRecordingWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = _s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  MultiwayViewController.cancelVideoRecording(completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

@end