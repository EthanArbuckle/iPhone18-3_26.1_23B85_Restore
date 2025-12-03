@interface AccessPointRootViewController
- (_TtC12GameCenterUI29AccessPointRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)supportedInterfaceOrientations;
@end

@implementation AccessPointRootViewController

- (id)supportedInterfaceOrientations
{
  selfCopy = self;
  v2 = sub_24DFFAD08();

  return v2;
}

- (_TtC12GameCenterUI29AccessPointRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_24DFFADA4(v5, v7, bundle);
}

@end