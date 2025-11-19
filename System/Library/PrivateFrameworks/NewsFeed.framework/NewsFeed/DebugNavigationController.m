@interface DebugNavigationController
- (_TtC8NewsFeed25DebugNavigationController)initWithCoder:(id)a3;
- (_TtC8NewsFeed25DebugNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC8NewsFeed25DebugNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8NewsFeed25DebugNavigationController)initWithRootViewController:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
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
  v3 = [v2 navigationBar];
  [v3 setPreferredBehavioralStyle_];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(DebugNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(DebugNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC8NewsFeed25DebugNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1D726207C();
    v8 = a4;
    a3 = sub_1D726203C();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DebugNavigationController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC8NewsFeed25DebugNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(DebugNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1D5EF2238(v7);
}

@end