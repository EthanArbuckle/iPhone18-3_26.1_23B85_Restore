@interface MFNavigationController
- (_TtC16MagnifierSupport22MFNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC16MagnifierSupport22MFNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation MFNavigationController

- (_TtC16MagnifierSupport22MFNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MFNavigationController();
  return [(MFNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC16MagnifierSupport22MFNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_257ECF500();
    v6 = a4;
    v7 = sub_257ECF4C0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MFNavigationController();
  v9 = [(MFNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

@end