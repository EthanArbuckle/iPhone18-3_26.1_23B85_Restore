@interface MarketingItemViewController
- (_TtC12GameStoreKit27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithCoder:(id)a3;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (_TtC12GameStoreKit27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC12GameStoreKit27MarketingItemViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridPresenter) = 0;
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView);
  *v3 = 0;
  v3[1] = 0;
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24F743D14();
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F91F428();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end