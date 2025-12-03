@interface MarketingItemViewController
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MarketingItemViewController

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  v6 = sub_20C64E050();
  v8 = v7;
  v9 = sub_20C64E050();
  v11 = v10;
  swift_unknownObjectRetain();
  return MarketingItemViewController.init(serviceType:placement:bag:)(v6, v8, v9, v11, bag);
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_20C64E050();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MarketingItemViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MarketingItemViewController.willMove(toParent:)(controller);
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end