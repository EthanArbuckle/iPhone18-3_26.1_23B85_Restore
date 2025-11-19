@interface AccessPointRootViewController
- (_TtC12GameCenterUI29AccessPointRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)supportedInterfaceOrientations;
@end

@implementation AccessPointRootViewController

- (id)supportedInterfaceOrientations
{
  v1 = a1;
  v2 = sub_24DFFAD08();

  return v2;
}

- (_TtC12GameCenterUI29AccessPointRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_24DFFADA4(v5, v7, a4);
}

@end