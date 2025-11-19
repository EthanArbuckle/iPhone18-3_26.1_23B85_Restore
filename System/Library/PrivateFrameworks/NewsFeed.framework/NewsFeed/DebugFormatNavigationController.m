@interface DebugFormatNavigationController
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithCoder:(id)a3;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8NewsFeed31DebugFormatNavigationController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation DebugFormatNavigationController

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithRootViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(DebugFormatNavigationController *)&v7 initWithRootViewController:a3];
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithCoder:(id)a3
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
  v3 = [v2 navigationBar];
  [v3 setPreferredBehavioralStyle_];
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed31DebugFormatNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end