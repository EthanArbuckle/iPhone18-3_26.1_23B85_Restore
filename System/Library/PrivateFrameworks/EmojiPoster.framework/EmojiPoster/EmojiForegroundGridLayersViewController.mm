@interface EmojiForegroundGridLayersViewController
- (_TtC11EmojiPoster39EmojiForegroundGridLayersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundGridLayersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FE2A20();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_249FE2D18();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_249FE2E68();
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  [(EmojiForegroundGridLayersViewController *)&v6 didMoveToParentViewController:controllerCopy];
}

- (_TtC11EmojiPoster39EmojiForegroundGridLayersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end