@interface ConversationHUDDetailsNavigationController
- (BOOL)isOnScreen;
- (_TtC15ConversationKit42ConversationHUDDetailsNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setIsOnScreen:(BOOL)a3;
- (void)tapDoneButton;
- (void)tapMessageButton;
- (void)viewDidLoad;
@end

@implementation ConversationHUDDetailsNavigationController

- (BOOL)isOnScreen
{
  v2 = self;
  v3 = ConversationHUDDetailsNavigationController.isOnScreen.getter();

  return v3 & 1;
}

- (void)setIsOnScreen:(BOOL)a3
{
  v4 = self;
  ConversationHUDDetailsNavigationController.isOnScreen.setter(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  ConversationHUDDetailsNavigationController.viewDidLoad()();
}

- (void)tapDoneButton
{
  v2 = self;
  ConversationHUDDetailsNavigationController.tapDoneButton()();
}

- (void)tapMessageButton
{
  v2 = self;
  ConversationHUDDetailsNavigationController.tapMessageButton()();
}

- (_TtC15ConversationKit42ConversationHUDDetailsNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ConversationHUDDetailsNavigationController.init(nibName:bundle:)();
}

@end