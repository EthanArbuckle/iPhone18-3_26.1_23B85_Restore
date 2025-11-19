@interface MarketingItemViewController
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MarketingItemViewController

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  v6 = sub_20C64E050();
  v8 = v7;
  v9 = sub_20C64E050();
  v11 = v10;
  swift_unknownObjectRetain();
  return MarketingItemViewController.init(serviceType:placement:bag:)(v6, v8, v9, v11, a5);
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_20C64E050();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MarketingItemViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  MarketingItemViewController.willMove(toParent:)(a3);
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end