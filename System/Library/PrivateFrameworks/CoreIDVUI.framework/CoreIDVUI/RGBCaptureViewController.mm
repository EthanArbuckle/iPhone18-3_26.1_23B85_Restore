@interface RGBCaptureViewController
- (void)cancelBarButtonClicked;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RGBCaptureViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_245860F58(appear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2458611B4(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_245861388();
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_2458681BC(viewControllerCopy);
}

- (void)cancelBarButtonClicked
{
  selfCopy = self;
  sub_2458677E0();
}

@end