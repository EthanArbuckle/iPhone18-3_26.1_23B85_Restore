@interface DebugNavigationController
- (_TtC8NewsFeed25DebugNavigationController)initWithCoder:(id)coder;
- (_TtC8NewsFeed25DebugNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC8NewsFeed25DebugNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8NewsFeed25DebugNavigationController)initWithRootViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation DebugNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DebugNavigationController *)&v4 viewDidLoad];
  [v2 setDelegate_];
  navigationBar = [v2 navigationBar];
  [navigationBar setPreferredBehavioralStyle_];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(DebugNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(DebugNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_1D726207C();
    bundleCopy = bundle;
    name = sub_1D726203C();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DebugNavigationController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC8NewsFeed25DebugNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DebugNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1D5EF2238(controllerCopy);
}

@end