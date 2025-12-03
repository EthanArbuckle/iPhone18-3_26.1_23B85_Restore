@interface InCallControlsViewController
- (BOOL)videoButtonIsEnabled;
- (NSString)description;
- (UIView)audioButton;
- (_TtC15ConversationKit28InCallControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
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
- (void)didMoveToParentViewController:(id)controller;
- (void)didTapFlipCameraButton:(id)button;
- (void)didTapJoinLeaveButton:(id)button;
- (void)didTapMuteButton:(id)button;
- (void)didTapScreenShareButton:(id)button;
- (void)didTapToggleCameraButton:(id)button;
- (void)didTapToggleCinematicFramingButton:(id)button;
- (void)embedEffectsBrowserViewController:(id)controller;
- (void)handleLegacyCallStatusDidChangeNotification:(id)notification;
- (void)loadView;
- (void)setAudioIsEnabled:(BOOL)enabled;
- (void)setCinematicFramingIsAvailable:(BOOL)available;
- (void)setCinematicFramingIsEnabled:(BOOL)enabled;
- (void)setIsExpanded:(BOOL)expanded;
- (void)setIsScreenSharing:(BOOL)sharing;
- (void)setShouldShowLeaveButton:(BOOL)button;
- (void)setVideoButtonIsEnabled:(BOOL)enabled;
- (void)setVideoIsEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAudioRouteButtonFor:(id)for;
- (void)updateControlsVisibilityForExpandedState:(BOOL)state;
- (void)updateToRepresentLegacyCall:(id)call;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation InCallControlsViewController

- (void)setIsExpanded:(BOOL)expanded
{
  selfCopy = self;
  InCallControlsViewController.isExpanded.setter(expanded);
}

- (void)setAudioIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  InCallControlsViewController.audioIsEnabled.setter(enabled);
}

- (void)setVideoIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  InCallControlsViewController.videoIsEnabled.setter(enabled);
}

- (void)setIsScreenSharing:(BOOL)sharing
{
  selfCopy = self;
  InCallControlsViewController.isScreenSharing.setter(sharing);
}

- (void)setCinematicFramingIsAvailable:(BOOL)available
{
  selfCopy = self;
  InCallControlsViewController.cinematicFramingIsAvailable.setter();
}

- (void)setCinematicFramingIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  InCallControlsViewController.cinematicFramingIsEnabled.setter();
}

- (void)setShouldShowLeaveButton:(BOOL)button
{
  selfCopy = self;
  InCallControlsViewController.shouldShowLeaveButton.setter(button);
}

- (UIView)audioButton
{
  v2 = InCallControlsViewController.audioButton.getter();

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  v3 = InCallControlsViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

- (void)embedEffectsBrowserViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  InCallControlsViewController.embedEffectsBrowserViewController(_:)(controllerCopy);
}

- (void)loadView
{
  selfCopy = self;
  InCallControlsViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  InCallControlsViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  InCallControlsViewController.viewDidAppear(_:)(appear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  InCallControlsViewController.willMove(toParent:)(controller);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  InCallControlsViewController.didMove(toParent:)(controller);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InCallControlsViewController.traitCollectionDidChange(_:)(v9);
}

- (void)updateViewConstraints
{
  selfCopy = self;
  InCallControlsViewController.updateViewConstraints()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  InCallControlsViewController.viewDidLayoutSubviews()();
}

- (void)didTapFlipCameraButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapJoinLeaveButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapJoinLeaveButton(_:)(buttonCopy);
}

- (void)didTapToggleCameraButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapScreenShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapToggleCinematicFramingButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)didTapMuteButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsViewController.didTapFlipCameraButton(_:)();
}

- (void)updateControlsVisibilityForExpandedState:(BOOL)state
{
  selfCopy = self;
  InCallControlsViewController.updateControlsVisibility(forExpandedState:)(state);
}

- (void)updateAudioRouteButtonFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  InCallControlsViewController.updateAudioRouteButton(for:)();
}

- (void)updateToRepresentLegacyCall:(id)call
{
  callCopy = call;
  selfCopy = self;
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

- (_TtC15ConversationKit28InCallControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  InCallControlsViewController.init(nibName:bundle:)();
}

- (void)handleLegacyCallStatusDidChangeNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  InCallControlsViewController.handleLegacyCallStatusDidChangeNotification(_:)();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)videoButtonIsEnabled
{
  selfCopy = self;
  v3 = InCallControlsViewController.videoButtonIsEnabled.getter();

  return v3 & 1;
}

- (void)setVideoButtonIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  InCallControlsViewController.videoButtonIsEnabled.setter(enabled);
}

@end