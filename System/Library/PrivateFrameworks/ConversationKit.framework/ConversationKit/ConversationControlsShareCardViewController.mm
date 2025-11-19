@interface ConversationControlsShareCardViewController
- (_TtC15ConversationKit43ConversationControlsShareCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)modalPresentationStyle;
- (void)didTapAskToScreenShareButton:(id)a3;
- (void)didTapCloseButton;
- (void)didTapCollaborateButton;
- (void)didTapEndSharePlay;
- (void)didTapScreenShareButton;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ConversationControlsShareCardViewController

- (void)viewDidLoad
{
  v2 = self;
  ConversationControlsShareCardViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  ConversationControlsShareCardViewController.viewDidDisappear(_:)(a3);
}

- (int64_t)modalPresentationStyle
{
  v2 = self;
  v3 = ConversationControlsShareCardViewController.modalPresentationStyle.getter();

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v3 = self;
  ConversationControlsShareCardViewController.modalPresentationStyle.setter();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  ConversationControlsShareCardViewController.viewDidLayoutSubviews()();
}

- (void)didTapScreenShareButton
{
  v2 = self;
  ConversationControlsShareCardViewController.didTapScreenShareButton()();
}

- (void)didTapAskToScreenShareButton:(id)a3
{
  v5 = a3;
  v6 = self;
  ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(a3);
}

- (void)didTapCollaborateButton
{
  v2 = self;
  ConversationControlsShareCardViewController.didTapCollaborateButton()();
}

- (void)didTapCloseButton
{
  v2 = self;
  ConversationControlsShareCardViewController.didTapCloseButton()();
}

- (void)didTapEndSharePlay
{
  v2 = self;
  ConversationControlsShareCardViewController.didTapEndSharePlay()();
}

- (_TtC15ConversationKit43ConversationControlsShareCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ConversationControlsShareCardViewController.init(nibName:bundle:)();
}

@end