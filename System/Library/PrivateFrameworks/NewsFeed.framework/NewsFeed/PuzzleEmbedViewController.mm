@interface PuzzleEmbedViewController
- (UIView)inputAccessoryView;
- (_TtC8NewsFeed25PuzzleEmbedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardWillChangeFrameWithNotification:(id)notification;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PuzzleEmbedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PuzzleEmbedViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  PuzzleEmbedViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(PuzzleEmbedViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  [*&v7[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] setPresentationState_];

  swift_unknownObjectRelease();
}

- (UIView)inputAccessoryView
{
  inputAccessoryView = [*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) inputAccessoryView];

  return inputAccessoryView;
}

- (_TtC8NewsFeed25PuzzleEmbedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)keyboardWillChangeFrameWithNotification:(id)notification
{
  v4 = sub_1D7257B1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257AEC();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  selfCopy = self;
  v11 = sub_1D726265C();
  v12 = sub_1D726265C();
  [v9 setShortcutsBarWithLeadingGroups:v11 trailingGroups:v12];

  (*(v5 + 8))(v8, v4);
}

@end