@interface EmojiForegroundGridLayersViewController
- (_TtC11EmojiPoster39EmojiForegroundGridLayersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundGridLayersViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FE2A20();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_249FE2D18();
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249FE2E68();
  v6.receiver = v5;
  v6.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  [(EmojiForegroundGridLayersViewController *)&v6 didMoveToParentViewController:v4];
}

- (_TtC11EmojiPoster39EmojiForegroundGridLayersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end