@interface ConversationHUDViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC15ConversationKit29ConversationHUDViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissPeoplePicker;
- (void)handleFindoTap;
- (void)isTranslationStartedDidChange:(id)change;
- (void)loadView;
- (void)secondaryButtonTapped:(id)tapped;
- (void)showCallDetailsButtonTapped;
- (void)statusViewTapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ConversationHUDViewController

- (void)loadView
{
  selfCopy = self;
  ConversationHUDViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  ConversationHUDViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ConversationHUDViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ConversationHUDViewController.viewWillTransition(to:with:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)handleFindoTap
{
  selfCopy = self;
  ConversationHUDViewController.handleFindoTap()();
}

- (void)isTranslationStartedDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationHUDViewController.isTranslationStartedDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)statusViewTapped
{
  selfCopy = self;
  ConversationHUDViewController.statusViewTapped()();
}

- (void)showCallDetailsButtonTapped
{
  selfCopy = self;
  ConversationHUDViewController.showCallDetailsButtonTapped()();
}

- (void)secondaryButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  ConversationHUDViewController.secondaryButtonTapped(_:)(selfCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = ConversationHUDViewController.gestureRecognizer(_:shouldReceive:)(selfCopy, touchCopy);

  return v9;
}

- (_TtC15ConversationKit29ConversationHUDViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ConversationHUDViewController.init(nibName:bundle:)();
}

- (void)dismissPeoplePicker
{
  selfCopy = self;
  ConversationHUDViewController.dismissPeoplePicker()();
}

@end