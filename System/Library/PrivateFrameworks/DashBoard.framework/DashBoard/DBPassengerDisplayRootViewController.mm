@interface DBPassengerDisplayRootViewController
- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier;
- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)invalidate;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation DBPassengerDisplayRootViewController

- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  v7 = sub_2482C537C(environment, identifierCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC9DashBoard36DBPassengerDisplayRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBPassengerDisplayRootViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  DBPassengerDisplayRootViewController.viewIsAppearing(_:)(appearing);
}

- (void)invalidate
{
  selfCopy = self;
  DBPassengerDisplayRootViewController.invalidate()();
}

@end