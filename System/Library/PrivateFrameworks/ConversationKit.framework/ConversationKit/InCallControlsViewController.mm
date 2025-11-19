@interface InCallControlsViewController
- (BOOL)videoButtonIsEnabled;
- (NSString)description;
- (UIView)audioButton;
- (_TtC15ConversationKit28InCallControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accessibilityCameraButton;
- (id)accessibilityCameraLabel;
- (id)accessibilityDisableVideoButton;
- (id)accessibilityDisableVideoLabel;
- (id)accessibilityHotdog;
- (id)accessibilityJoinLeaveButton;
- (id)accessibilityMuteAudioButton;
- (id)accessibilityMuteAudioLabel;
- (id)accessibilityRouteButton;
- (id)accessibilityRouteLabel;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapFlipCameraButton:(id)a3;
- (void)didTapJoinLeaveButton:(id)a3;
- (void)didTapMuteButton:(id)a3;
- (void)didTapScreenShareButton:(id)a3;
- (void)didTapToggleCameraButton:(id)a3;
- (void)didTapToggleCinematicFramingButton:(id)a3;
- (void)embedEffectsBrowserViewController:(id)a3;
- (void)handleLegacyCallStatusDidChangeNotification:(id)a3;
- (void)loadView;
- (void)setAudioIsEnabled:(BOOL)a3;
- (void)setCinematicFramingIsAvailable:(BOOL)a3;
- (void)setCinematicFramingIsEnabled:(BOOL)a3;
- (void)setIsExpanded:(BOOL)a3;
- (void)setIsScreenSharing:(BOOL)a3;
- (void)setShouldShowLeaveButton:(BOOL)a3;
- (void)setVideoButtonIsEnabled:(BOOL)a3;
- (void)setVideoIsEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAudioRouteButtonFor:(id)a3;
- (void)updateControlsVisibilityForExpandedState:(BOOL)a3;
- (void)updateToRepresentLegacyCall:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation InCallControlsViewController

- (void)setIsExpanded:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.isExpanded.setter(a3);
}

- (void)setAudioIsEnabled:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.audioIsEnabled.setter(a3);
}

- (void)setVideoIsEnabled:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.videoIsEnabled.setter(a3);
}

- (void)setIsScreenSharing:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.isScreenSharing.setter(a3);
}

- (void)setCinematicFramingIsAvailable:(BOOL)a3
{
  v3 = self;
  InCallControlsViewController.cinematicFramingIsAvailable.setter();
}

- (void)setCinematicFramingIsEnabled:(BOOL)a3
{
  v3 = self;
  InCallControlsViewController.cinematicFramingIsEnabled.setter();
}

- (void)setShouldShowLeaveButton:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.shouldShowLeaveButton.setter(a3);
}

- (UIView)audioButton
{
  v2 = InCallControlsViewController.audioButton.getter();

  return v2;
}

- (NSString)description
{
  v2 = self;
  v3 = InCallControlsViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

- (void)embedEffectsBrowserViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.embedEffectsBrowserViewController(_:)(v4);
}

- (void)loadView
{
  v2 = self;
  InCallControlsViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  InCallControlsViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.viewDidAppear(_:)(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  InCallControlsViewController.willMove(toParent:)(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  InCallControlsViewController.didMove(toParent:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InCallControlsViewController.traitCollectionDidChange(_:)(v9);
}

- (void)updateViewConstraints
{
  v2 = self;
  InCallControlsViewController.updateViewConstraints()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  InCallControlsViewController.viewDidLayoutSubviews()();
}

- (void)didTapFlipCameraButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapJoinLeaveButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapJoinLeaveButton(_:)(v4);
}

- (void)didTapToggleCameraButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapScreenShareButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapToggleCinematicFramingButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapMuteButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)updateControlsVisibilityForExpandedState:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.updateControlsVisibility(forExpandedState:)(a3);
}

- (void)updateAudioRouteButtonFor:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.updateAudioRouteButton(for:)();
}

- (void)updateToRepresentLegacyCall:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsViewController.updateToRepresentLegacyCall(_:)();
}

- (id)accessibilityHotdog
{
  v2 = InCallControlsViewController.accessibilityHotdog()();

  return v2;
}

- (id)accessibilityJoinLeaveButton
{
  v2 = InCallControlsViewController.accessibilityJoinLeaveButton()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton);

  return v2;
}

- (id)accessibilityCameraButton
{
  v2 = InCallControlsViewController.accessibilityJoinLeaveButton()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton);

  return v2;
}

- (id)accessibilityCameraLabel
{
  v2 = InCallControlsViewController.accessibilityCameraLabel()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton);

  return v2;
}

- (id)accessibilityMuteAudioButton
{
  v2 = InCallControlsViewController.accessibilityJoinLeaveButton()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton);

  return v2;
}

- (id)accessibilityMuteAudioLabel
{
  v2 = InCallControlsViewController.accessibilityCameraLabel()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton);

  return v2;
}

- (id)accessibilityRouteButton
{
  v2 = InCallControlsViewController.accessibilityJoinLeaveButton()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);

  return v2;
}

- (id)accessibilityRouteLabel
{
  v2 = InCallControlsViewController.accessibilityCameraLabel()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);

  return v2;
}

- (id)accessibilityDisableVideoButton
{
  v2 = InCallControlsViewController.accessibilityJoinLeaveButton()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton);

  return v2;
}

- (id)accessibilityDisableVideoLabel
{
  v2 = InCallControlsViewController.accessibilityCameraLabel()(&OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton);

  return v2;
}

- (_TtC15ConversationKit28InCallControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  InCallControlsViewController.init(nibName:bundle:)();
}

- (void)handleLegacyCallStatusDidChangeNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  InCallControlsViewController.handleLegacyCallStatusDidChangeNotification(_:)();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)videoButtonIsEnabled
{
  v2 = self;
  v3 = InCallControlsViewController.videoButtonIsEnabled.getter();

  return v3 & 1;
}

- (void)setVideoButtonIsEnabled:(BOOL)a3
{
  v4 = self;
  InCallControlsViewController.videoButtonIsEnabled.setter(a3);
}

@end