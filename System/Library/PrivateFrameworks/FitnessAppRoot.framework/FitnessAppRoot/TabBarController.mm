@interface TabBarController
- (_TtC14FitnessAppRoot16TabBarController)init;
- (_TtC14FitnessAppRoot16TabBarController)initWithCoder:(id)coder;
- (_TtC14FitnessAppRoot16TabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC14FitnessAppRoot16TabBarController)initWithTabs:(id)tabs;
- (void)didMoveToParentViewController:(id)controller;
@end

@implementation TabBarController

- (_TtC14FitnessAppRoot16TabBarController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TabBarController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC14FitnessAppRoot16TabBarController)initWithCoder:(id)coder
{
  result = sub_1E5AD0168();
  __break(1u);
  return result;
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(TabBarController *)&v6 didMoveToParentViewController:controllerCopy];
  sub_1E5AAB260();
}

- (_TtC14FitnessAppRoot16TabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14FitnessAppRoot16TabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end