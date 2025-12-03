@interface GameLayerNavigationController
- (CGSize)preferredContentSize;
- (_TtC12GameCenterUI29GameLayerNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)didTapDone;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation GameLayerNavigationController

- (CGSize)preferredContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  sub_24E05DCF8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E05DDE0(appear);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_24E05DE80(selfCopy, viewControllerCopy);
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v13 = sub_24E05E164(controllerCopy, v12, sourceViewControllerCopy);

  return v13;
}

- (void)didTapDone
{
  selfCopy = self;
  sub_24E05E2E0();
}

- (_TtC12GameCenterUI29GameLayerNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  GameLayerNavigationController.init(nibName:bundle:)();
}

@end