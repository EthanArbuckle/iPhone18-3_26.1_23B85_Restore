@interface GameLayerNavigationController
- (CGSize)preferredContentSize;
- (_TtC12GameCenterUI29GameLayerNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)didTapDone;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation GameLayerNavigationController

- (CGSize)preferredContentSize
{
  v2 = self;
  sub_24E05D8EC();
  v4 = v3;

  v5 = 0.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E05DCF8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E05DDE0(a3);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24E05DE80(v9, v8);
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v13 = sub_24E05E164(v8, v12, v10);

  return v13;
}

- (void)didTapDone
{
  v2 = self;
  sub_24E05E2E0();
}

- (_TtC12GameCenterUI29GameLayerNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  GameLayerNavigationController.init(nibName:bundle:)();
}

@end