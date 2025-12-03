@interface DebugFormatNavigationController
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithCoder:(id)coder;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation DebugFormatNavigationController

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(DebugFormatNavigationController *)&v7 initWithRootViewController:controller];
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithCoder:(id)coder
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DebugFormatNavigationController *)&v4 viewDidLoad];
  navigationBar = [v2 navigationBar];
  [navigationBar setPreferredBehavioralStyle_];
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end