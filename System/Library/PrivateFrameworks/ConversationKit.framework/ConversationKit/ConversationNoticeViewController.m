@interface ConversationNoticeViewController
- (_TtC15ConversationKit32ConversationNoticeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleSystemApertureTapGesture;
- (void)handleTapGesture;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConversationNoticeViewController

- (void)viewDidLoad
{
  v2 = self;
  ConversationNoticeViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ConversationNoticeViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  ConversationNoticeViewController.viewWillTransition(to:with:)(a4);
  swift_unknownObjectRelease();
}

- (void)handleTapGesture
{
  v2 = self;
  ConversationNoticeViewController.handleTapGesture()();
}

- (void)handleSystemApertureTapGesture
{
  v2 = self;
  ConversationNoticeViewController.handleSystemApertureTapGesture()();
}

- (_TtC15ConversationKit32ConversationNoticeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ConversationNoticeViewController.init(nibName:bundle:)();
}

@end