@interface MultiwayViewController
- (BOOL)isCaptioningEnabled;
- (BOOL)isInVideoMessageFlow;
- (BOOL)isOnScreen;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isPresentingEffectsBrowser;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowingHUD;
- (BOOL)isShownAboveCoverSheet;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3;
- (BOOL)shouldDisconnectOnDismissal;
- (BOOL)wantsPIPRotationForLocalPreview;
- (CGRect)frameForRestoreAnimation;
- (CGRect)mediaPipFrameInWindowScene;
- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)a3;
- (CGSize)preferredPIPContentAspectRatio;
- (CGSize)preferredPiPContentAspectRatio;
- (CNKBannerPresentationManager)bannerPresentationManager;
- (CNKFaceTimeMultiwayConversationViewControllerDelegate)delegate;
- (CNKFaceTimeMultiwayViewControllerIOSDelegate)iOSDelegate;
- (NSTimer)inCallControlsDismissTimer;
- (TUCall)call;
- (UIImage)audioRouteGlyphForDevice;
- (UIView)localParticipantView;
- (_TtC15ConversationKit22MultiwayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15ConversationKit33VideoReactionPickerViewController)reactionsViewController;
- (id)accessibilityConstraintController;
- (id)audioRouteGlyphFor:(id)a3;
- (id)audioRouteMenu;
- (id)viewControllerForPiP;
- (int64_t)fullScreenFocusedParticipantOrientation;
- (void)bannerDidGetTap;
- (void)cameraViewController:(id)a3 didChangeEffectsState:(int64_t)a4;
- (void)cameraViewController:(id)a3 didRenderFrame:(id)a4;
- (void)cameraViewController:(id)a3 presentationRectWasPinchedWithState:(int64_t)a4 scale:(double)a5 velocity:(double)a6;
- (void)cameraViewControllerPresentationRectWasDoubleTapped:(id)a3;
- (void)cancelVideoRecordingWithCompletion:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)didCaptureVideoFrame:(id)a3;
- (void)didTapChangeLayoutButton;
- (void)didTapDeskViewButton;
- (void)didTapOneToOneShutterButton;
- (void)dismissContactCard;
- (void)dismissPeoplePicker;
- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4;
- (void)handleCameraFlipAnimationDidFinish:(id)a3;
- (void)hideEffectsBrowser;
- (void)muteVideo;
- (void)openMessagesConversation;
- (void)pipDidRotate;
- (void)prepareForAppSwitcher;
- (void)presentAddParticipantSheet;
- (void)presentContactCard;
- (void)resetEffectsState;
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)serverDidTimeout:(id)a3;
- (void)setBannerPresentationManager:(id)a3;
- (void)setControlsState:(int64_t)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setDidExpandIncomingCallBanner:(BOOL)a3;
- (void)setHasParticipantVideo:(BOOL)a3;
- (void)setIOSDelegate:(id)a3;
- (void)setInCallControlsDismissTimer:(id)a3;
- (void)setIsCaptioningEnabled:(BOOL)a3;
- (void)setIsDisplayedInBanner:(BOOL)a3;
- (void)setIsFullScreen:(BOOL)a3;
- (void)setIsInCallEndedBlockAndReportFlow:(BOOL)a3;
- (void)setIsOnScreen:(BOOL)a3;
- (void)setIsPipStashed:(BOOL)a3;
- (void)setMediaPipFrameInWindowScene:(CGRect)a3;
- (void)setPipState:(int64_t)a3;
- (void)testing_didFinishLocalPreviewRotationAnimation;
- (void)toggleAudioMute;
- (void)toggleCinematicFraming;
- (void)toggleLocalOrientation;
- (void)toggleReactionsView;
- (void)toggleVideoMuteWithShouldPauseIfStopped:(BOOL)a3;
- (void)updateVideoState;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MultiwayViewController

- (id)viewControllerForPiP
{
  v0 = MultiwayViewController.pipViewController.getter();

  return v0;
}

- (void)testing_didFinishLocalPreviewRotationAnimation
{
  v2 = self;
  MultiwayViewController.testing_didFinishLocalPreviewRotationAnimation()();
}

- (void)didTapChangeLayoutButton
{
  v2 = self;
  MultiwayViewController.didTapChangeLayoutButton()();
}

- (void)didTapDeskViewButton
{
  v2 = self;
  MultiwayViewController.didTapDeskViewButton()();
}

- (void)setIsInCallEndedBlockAndReportFlow:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(a3);
}

- (CNKBannerPresentationManager)bannerPresentationManager
{
  v2 = MultiwayViewController.bannerPresentationManagerBox.getter();

  return v2;
}

- (void)setBannerPresentationManager:(id)a3
{
  v5 = a3;
  v6 = self;
  MultiwayViewController.bannerPresentationManagerBox.setter(a3);
}

- (void)setDidExpandIncomingCallBanner:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.didExpandIncomingCallBanner.setter(a3);
}

- (NSTimer)inCallControlsDismissTimer
{
  v2 = MultiwayViewController.inCallControlsDismissTimer.getter();

  return v2;
}

- (void)setInCallControlsDismissTimer:(id)a3
{
  v5 = a3;
  v6 = self;
  MultiwayViewController.inCallControlsDismissTimer.setter(a3);
}

- (TUCall)call
{
  v2 = MultiwayViewController.call.getter();

  return v2;
}

- (void)setDeviceOrientation:(int64_t)a3
{
  v4 = self;
  MultiwayViewController.deviceOrientation.setter(a3);
}

- (BOOL)wantsPIPRotationForLocalPreview
{
  v2 = self;
  v3 = MultiwayViewController.wantsPIPRotationForLocalPreview.getter();

  return v3;
}

- (BOOL)isOnScreen
{
  v2 = self;
  v3 = MultiwayViewController.isOnScreen.getter();

  return v3 & 1;
}

- (void)setIsOnScreen:(BOOL)a3
{
  v3 = self;
  MultiwayViewController.isOnScreen.setter();
}

- (void)setHasParticipantVideo:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(a3, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
}

- (void)setIsDisplayedInBanner:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isDisplayedInBanner.setter(a3);
}

- (BOOL)isInVideoMessageFlow
{
  v2 = self;
  v3 = MultiwayViewController.isInVideoMessageFlow.getter();

  return v3 & 1;
}

- (BOOL)isShowingHUD
{
  v2 = self;
  v3 = MultiwayViewController.isShowingHUD.getter();

  return v3;
}

- (void)setIsFullScreen:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isFullScreen.setter(a3);
}

- (BOOL)isShownAboveCoverSheet
{
  v2 = self;
  v3 = MultiwayViewController.isShownAboveCoverSheet.getter();

  return v3 & 1;
}

- (void)setIsPipStashed:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isPipStashed.setter(a3);
}

- (void)setPipState:(int64_t)a3
{
  v4 = self;
  MultiwayViewController.pipState.setter(a3);
}

- (BOOL)isCaptioningEnabled
{
  v2 = self;
  v3 = MultiwayViewController.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)setIsCaptioningEnabled:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.isCaptioningEnabled.setter(a3);
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

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  MultiwayViewController.delegate.setter();
}

- (CNKFaceTimeMultiwayViewControllerIOSDelegate)iOSDelegate
{
  v2 = MultiwayViewController.iOSDelegate.getter();

  return v2;
}

- (void)setIOSDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  MultiwayViewController.iOSDelegate.setter();
}

- (CGSize)preferredPIPContentAspectRatio
{
  v2 = self;
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
  v2 = self;
  v3 = MultiwayViewController.fullScreenFocusedParticipantOrientation.getter();

  return v3;
}

- (BOOL)isOneToOneModeEnabled
{
  v2 = self;
  v3 = MultiwayViewController.isOneToOneModeEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldDisconnectOnDismissal
{
  v2 = self;
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

- (void)setMediaPipFrameInWindowScene:(CGRect)a3
{
  v3 = self;
  MultiwayViewController.mediaPipFrameInWindowScene.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  MultiwayViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.viewDidDisappear(_:)(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  MultiwayViewController.viewSafeAreaInsetsDidChange()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  MultiwayViewController.viewDidLayoutSubviews()();
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  MultiwayViewController.willMove(toParent:)(a3);
}

- (void)updateViewConstraints
{
  v2 = self;
  MultiwayViewController.updateViewConstraints()();
}

- (void)toggleAudioMute
{
  v2 = self;
  MultiwayViewController.toggleAudioMute()();
}

- (void)toggleVideoMuteWithShouldPauseIfStopped:(BOOL)a3
{
  v4 = self;
  MultiwayViewController.toggleVideoMute(shouldPauseIfStopped:)(a3);
}

- (void)toggleCinematicFraming
{
  v2 = self;
  MultiwayViewController.toggleCinematicFraming()();
}

- (void)muteVideo
{
  v2 = self;
  MultiwayViewController.muteVideo()();
}

- (void)openMessagesConversation
{
  v2 = self;
  MultiwayViewController.openMessagesConversation()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  MultiwayViewController.viewWillTransition(to:with:)(a4);
  swift_unknownObjectRelease();
}

- (void)handleCameraFlipAnimationDidFinish:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  MultiwayViewController.handleCameraFlipAnimationDidFinish(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)hideEffectsBrowser
{
  v2 = self;
  MultiwayViewController.hideEffectsBrowser()();
}

- (void)updateVideoState
{
  v2 = self;
  MultiwayViewController.updateVideoState()();
}

- (id)accessibilityConstraintController
{
  v2 = MultiwayViewController.accessibilityConstraintController()();

  return v2;
}

- (_TtC15ConversationKit22MultiwayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  MultiwayViewController.init(nibName:bundle:)();
}

- (BOOL)isReadyToShowCallDetails
{
  v2 = self;
  v3 = MultiwayViewController.isReadyToShowCallDetails.getter();

  return v3;
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  MultiwayViewController.screenSharingInteractionController(_:didUpdateRemoteControlStatus:)();
  swift_unknownObjectRelease();
}

- (void)toggleLocalOrientation
{
  v2 = self;
  MultiwayViewController.toggleLocalOrientation()();
}

- (void)pipDidRotate
{
  v2 = self;
  MultiwayViewController.pipDidRotate()();
}

- (void)toggleReactionsView
{
  v2 = self;
  MultiwayViewController.toggleReactionsView()();
}

- (void)didTapOneToOneShutterButton
{
  v2 = self;
  MultiwayViewController.didTapOneToOneShutterButton()();
}

- (BOOL)isPresentingEffectsBrowser
{
  v2 = self;
  v3 = MultiwayViewController.isPresentingEffectsBrowser.getter();

  return v3;
}

- (void)resetEffectsState
{
  v2 = self;
  MultiwayViewController.resetEffectsState()();
}

- (id)audioRouteMenu
{
  v2 = self;
  v3 = MultiwayViewController.audioRouteMenu()();

  return v3;
}

- (id)audioRouteGlyphFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MultiwayViewController.audioRouteGlyph(for:)(v4);

  return v6;
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = self;
  v3 = MultiwayViewController.audioRouteGlyphForDevice.getter();

  return v3;
}

- (void)cameraViewController:(id)a3 didRenderFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MultiwayViewController.cameraViewController(_:didRenderFrame:)(v6, v7);
}

- (void)cameraViewControllerPresentationRectWasDoubleTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiwayViewController.cameraViewControllerPresentationRectWasDoubleTapped(_:)(v5);
}

- (void)cameraViewController:(id)a3 presentationRectWasPinchedWithState:(int64_t)a4 scale:(double)a5 velocity:(double)a6
{
  v8 = a3;
  v9 = self;
  MultiwayViewController.cameraViewController(_:presentationRectWasPinchedWith:scale:velocity:)(a5);
}

- (void)cameraViewController:(id)a3 didChangeEffectsState:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  MultiwayViewController.cameraViewController(_:didChange:)();
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MultiwayViewController.shouldAlwaysPresentExpandedApps(for:)();

  return self & 1;
}

- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  MultiwayViewController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
}

- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = _sIeyB_Ieg_TRTA_0;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  MultiwayViewController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
}

- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MultiwayViewController.expandedAppViewControllerSize(for:)();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4
{
  v6 = a3;
  v7 = self;
  MultiwayViewController.effectBrowserViewController(_:willChangeDockHeight:)(a4);
}

- (void)didCaptureVideoFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiwayViewController.didCapture(_:)(v4);
}

- (void)serverDidTimeout:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiwayViewController.serverDidTimeout(_:)();
}

- (void)setControlsState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = self;
  MultiwayViewController.setControlsState(_:animated:)();
}

- (void)presentAddParticipantSheet
{
  v2 = self;
  MultiwayViewController.presentAddParticipantSheet()(specialized static SpringBoardUtilities.requestPasscodeUnlock(_:));
}

- (void)dismissPeoplePicker
{
  v2 = self;
  MultiwayViewController.dismissPeoplePicker()();
}

- (void)presentContactCard
{
  v2 = self;
  MultiwayViewController.presentAddParticipantSheet()(specialized static SpringBoardUtilities.requestPasscodeUnlock(_:));
}

- (void)dismissContactCard
{
  v2 = self;
  MultiwayViewController.dismissContactCard()();
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MultiwayViewController.contactViewController(_:didCompleteWith:)(v8, v10);
}

- (void)bannerDidGetTap
{
  v2 = self;
  MultiwayViewController.bannerDidGetTap()();
}

- (CGRect)frameForRestoreAnimation
{
  v2 = self;
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
  v2 = self;
  v3 = MultiwayViewController.preferredPiPContentAspectRatio()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareForAppSwitcher
{
  v2 = self;
  MultiwayViewController.prepareForAppSwitcher()();
}

- (void)cancelVideoRecordingWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = _s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  MultiwayViewController.cancelVideoRecording(completion:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

@end