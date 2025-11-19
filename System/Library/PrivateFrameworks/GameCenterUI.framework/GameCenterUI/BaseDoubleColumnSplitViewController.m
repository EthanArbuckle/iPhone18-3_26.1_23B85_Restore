@interface BaseDoubleColumnSplitViewController
- (_TtC12GameCenterUI35BaseDoubleColumnSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)setViewController:(id)a3 forColumn:(int64_t)a4;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation BaseDoubleColumnSplitViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24E26D778();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E26D964(a3);
}

- (void)setViewController:(id)a3 forColumn:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_24E26DA18(a3, a4);
}

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_24E26DBDC(a3);

  sub_24DF8894C(v10);
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_24E26C9C0(v7, a4);

  return v8;
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24E26CB38(v7, a4);

  return a4;
}

- (_TtC12GameCenterUI35BaseDoubleColumnSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  BaseDoubleColumnSplitViewController.init(nibName:bundle:)();
}

@end