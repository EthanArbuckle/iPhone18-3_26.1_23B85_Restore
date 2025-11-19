@interface DynamicViewController
- (_TtC12GameStoreKit21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC12GameStoreKit21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4;
- (_TtC12GameStoreKit21DynamicViewController)initWithCoder:(id)a3;
- (_TtC12GameStoreKit21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DynamicViewController

- (_TtC12GameStoreKit21DynamicViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_dynamicDelegate) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridPresenter) = 0;
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView);
  *v3 = 0;
  v3[1] = 0;
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24F745E4C();
}

- (_TtC12GameStoreKit21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end