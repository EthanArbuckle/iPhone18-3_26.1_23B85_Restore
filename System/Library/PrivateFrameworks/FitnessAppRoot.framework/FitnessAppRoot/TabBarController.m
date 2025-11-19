@interface TabBarController
- (_TtC14FitnessAppRoot16TabBarController)init;
- (_TtC14FitnessAppRoot16TabBarController)initWithCoder:(id)a3;
- (_TtC14FitnessAppRoot16TabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC14FitnessAppRoot16TabBarController)initWithTabs:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
@end

@implementation TabBarController

- (_TtC14FitnessAppRoot16TabBarController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TabBarController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC14FitnessAppRoot16TabBarController)initWithCoder:(id)a3
{
  result = sub_1E5AD0168();
  __break(1u);
  return result;
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(TabBarController *)&v6 didMoveToParentViewController:v4];
  sub_1E5AAB260();
}

- (_TtC14FitnessAppRoot16TabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14FitnessAppRoot16TabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end