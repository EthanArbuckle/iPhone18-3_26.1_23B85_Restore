@interface ConversationNoticeViewController
- (_TtC15ConversationKit32ConversationNoticeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleSystemApertureTapGesture;
- (void)handleTapGesture;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ConversationNoticeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ConversationNoticeViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ConversationNoticeViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ConversationNoticeViewController.viewWillTransition(to:with:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)handleTapGesture
{
  selfCopy = self;
  ConversationNoticeViewController.handleTapGesture()();
}

- (void)handleSystemApertureTapGesture
{
  selfCopy = self;
  ConversationNoticeViewController.handleSystemApertureTapGesture()();
}

- (_TtC15ConversationKit32ConversationNoticeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ConversationNoticeViewController.init(nibName:bundle:)();
}

@end