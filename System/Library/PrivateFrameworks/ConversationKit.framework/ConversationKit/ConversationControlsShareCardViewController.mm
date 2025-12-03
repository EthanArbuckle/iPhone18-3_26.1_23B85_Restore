@interface ConversationControlsShareCardViewController
- (_TtC15ConversationKit43ConversationControlsShareCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)modalPresentationStyle;
- (void)didTapAskToScreenShareButton:(id)button;
- (void)didTapCloseButton;
- (void)didTapCollaborateButton;
- (void)didTapEndSharePlay;
- (void)didTapScreenShareButton;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ConversationControlsShareCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ConversationControlsShareCardViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  ConversationControlsShareCardViewController.viewDidDisappear(_:)(disappear);
}

- (int64_t)modalPresentationStyle
{
  selfCopy = self;
  v3 = ConversationControlsShareCardViewController.modalPresentationStyle.getter();

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)style
{
  selfCopy = self;
  ConversationControlsShareCardViewController.modalPresentationStyle.setter();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  ConversationControlsShareCardViewController.viewDidLayoutSubviews()();
}

- (void)didTapScreenShareButton
{
  selfCopy = self;
  ConversationControlsShareCardViewController.didTapScreenShareButton()();
}

- (void)didTapAskToScreenShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(button);
}

- (void)didTapCollaborateButton
{
  selfCopy = self;
  ConversationControlsShareCardViewController.didTapCollaborateButton()();
}

- (void)didTapCloseButton
{
  selfCopy = self;
  ConversationControlsShareCardViewController.didTapCloseButton()();
}

- (void)didTapEndSharePlay
{
  selfCopy = self;
  ConversationControlsShareCardViewController.didTapEndSharePlay()();
}

- (_TtC15ConversationKit43ConversationControlsShareCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ConversationControlsShareCardViewController.init(nibName:bundle:)();
}

@end