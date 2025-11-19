@interface ConversationHUDViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC15ConversationKit29ConversationHUDViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissPeoplePicker;
- (void)handleFindoTap;
- (void)isTranslationStartedDidChange:(id)a3;
- (void)loadView;
- (void)secondaryButtonTapped:(id)a3;
- (void)showCallDetailsButtonTapped;
- (void)statusViewTapped;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConversationHUDViewController

- (void)loadView
{
  v2 = self;
  ConversationHUDViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  ConversationHUDViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ConversationHUDViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  ConversationHUDViewController.viewWillTransition(to:with:)(a4);
  swift_unknownObjectRelease();
}

- (void)handleFindoTap
{
  v2 = self;
  ConversationHUDViewController.handleFindoTap()();
}

- (void)isTranslationStartedDidChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ConversationHUDViewController.isTranslationStartedDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)statusViewTapped
{
  v2 = self;
  ConversationHUDViewController.statusViewTapped()();
}

- (void)showCallDetailsButtonTapped
{
  v2 = self;
  ConversationHUDViewController.showCallDetailsButtonTapped()();
}

- (void)secondaryButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationHUDViewController.secondaryButtonTapped(_:)(v5);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ConversationHUDViewController.gestureRecognizer(_:shouldReceive:)(v8, v7);

  return v9;
}

- (_TtC15ConversationKit29ConversationHUDViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ConversationHUDViewController.init(nibName:bundle:)();
}

- (void)dismissPeoplePicker
{
  v2 = self;
  ConversationHUDViewController.dismissPeoplePicker()();
}

@end