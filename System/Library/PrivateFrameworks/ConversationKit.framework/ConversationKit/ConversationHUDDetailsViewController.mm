@interface ConversationHUDDetailsViewController
- (_TtC15ConversationKit36ConversationHUDDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapClose;
- (void)didTapMessages;
- (void)dismissPeoplePicker;
- (void)setIsOnScreen:(BOOL)screen;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ConversationHUDDetailsViewController

- (void)setIsOnScreen:(BOOL)screen
{
  selfCopy = self;
  ConversationHUDDetailsViewController.isOnScreen.setter(screen);
}

- (void)viewDidLoad
{
  selfCopy = self;
  ConversationHUDDetailsViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  ConversationHUDDetailsViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit36ConversationHUDDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ConversationHUDDetailsViewController.init(nibName:bundle:)();
}

- (void)didTapClose
{
  selfCopy = self;
  ConversationHUDDetailsViewController.didTapClose()();
}

- (void)didTapMessages
{
  selfCopy = self;
  ConversationHUDDetailsViewController.didTapMessages()();
}

- (void)dismissPeoplePicker
{
  selfCopy = self;
  ConversationHUDDetailsViewController.dismissPeoplePicker()();
}

@end