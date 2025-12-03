@interface BaseDoubleColumnSplitViewController
- (_TtC12GameCenterUI35BaseDoubleColumnSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)setViewController:(id)controller forColumn:(int64_t)column;
- (void)showDetailViewController:(id)controller sender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation BaseDoubleColumnSplitViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E26D778();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E26D964(change);
}

- (void)setViewController:(id)controller forColumn:(int64_t)column
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E26DA18(controller, column);
}

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  sub_24E26DBDC(controller);

  sub_24DF8894C(v10);
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_24E26C9C0(selfCopy, column);

  return v8;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E26CB38(selfCopy, mode);

  return mode;
}

- (_TtC12GameCenterUI35BaseDoubleColumnSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  BaseDoubleColumnSplitViewController.init(nibName:bundle:)();
}

@end