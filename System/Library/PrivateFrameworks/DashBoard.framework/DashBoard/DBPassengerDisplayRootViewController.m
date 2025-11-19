@interface DBPassengerDisplayRootViewController
- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4;
- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)invalidate;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation DBPassengerDisplayRootViewController

- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_2482C537C(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DBPassengerDisplayRootViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  DBPassengerDisplayRootViewController.viewIsAppearing(_:)(a3);
}

- (void)invalidate
{
  v2 = self;
  DBPassengerDisplayRootViewController.invalidate()();
}

@end