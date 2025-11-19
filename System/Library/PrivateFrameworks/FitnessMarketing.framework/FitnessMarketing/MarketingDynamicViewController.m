@interface MarketingDynamicViewController
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 URL:(id)a4;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MarketingDynamicViewController

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = sub_20C64CF10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C64CEF0();
  v8 = swift_unknownObjectRetain();
  return MarketingDynamicViewController.init(bag:url:)(v8, v7);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  MarketingDynamicViewController.willMove(toParent:)(a3);
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end