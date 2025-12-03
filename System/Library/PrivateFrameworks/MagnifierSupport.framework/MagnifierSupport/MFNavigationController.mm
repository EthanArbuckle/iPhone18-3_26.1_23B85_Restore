@interface MFNavigationController
- (_TtC16MagnifierSupport22MFNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC16MagnifierSupport22MFNavigationController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MFNavigationController

- (_TtC16MagnifierSupport22MFNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MFNavigationController();
  return [(MFNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC16MagnifierSupport22MFNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_257ECF500();
    bundleCopy = bundle;
    v7 = sub_257ECF4C0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MFNavigationController();
  v9 = [(MFNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

@end