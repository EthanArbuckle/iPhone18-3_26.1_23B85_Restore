@interface ConversationHUDDetailsViewController
- (_TtC15ConversationKit36ConversationHUDDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapClose;
- (void)didTapMessages;
- (void)dismissPeoplePicker;
- (void)setIsOnScreen:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConversationHUDDetailsViewController

- (void)setIsOnScreen:(BOOL)a3
{
  v4 = self;
  ConversationHUDDetailsViewController.isOnScreen.setter(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  ConversationHUDDetailsViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  ConversationHUDDetailsViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit36ConversationHUDDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ConversationHUDDetailsViewController.init(nibName:bundle:)();
}

- (void)didTapClose
{
  v2 = self;
  ConversationHUDDetailsViewController.didTapClose()();
}

- (void)didTapMessages
{
  v2 = self;
  ConversationHUDDetailsViewController.didTapMessages()();
}

- (void)dismissPeoplePicker
{
  v2 = self;
  ConversationHUDDetailsViewController.dismissPeoplePicker()();
}

@end