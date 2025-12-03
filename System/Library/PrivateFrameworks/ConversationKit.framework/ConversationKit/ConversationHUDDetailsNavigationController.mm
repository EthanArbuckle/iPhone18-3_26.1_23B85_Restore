@interface ConversationHUDDetailsNavigationController
- (BOOL)isOnScreen;
- (_TtC15ConversationKit42ConversationHUDDetailsNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setIsOnScreen:(BOOL)screen;
- (void)tapDoneButton;
- (void)tapMessageButton;
- (void)viewDidLoad;
@end

@implementation ConversationHUDDetailsNavigationController

- (BOOL)isOnScreen
{
  selfCopy = self;
  v3 = ConversationHUDDetailsNavigationController.isOnScreen.getter();

  return v3 & 1;
}

- (void)setIsOnScreen:(BOOL)screen
{
  selfCopy = self;
  ConversationHUDDetailsNavigationController.isOnScreen.setter(screen);
}

- (void)viewDidLoad
{
  selfCopy = self;
  ConversationHUDDetailsNavigationController.viewDidLoad()();
}

- (void)tapDoneButton
{
  selfCopy = self;
  ConversationHUDDetailsNavigationController.tapDoneButton()();
}

- (void)tapMessageButton
{
  selfCopy = self;
  ConversationHUDDetailsNavigationController.tapMessageButton()();
}

- (_TtC15ConversationKit42ConversationHUDDetailsNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ConversationHUDDetailsNavigationController.init(nibName:bundle:)();
}

@end