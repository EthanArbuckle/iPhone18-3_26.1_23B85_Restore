@interface MarketingWebViewController
- (_TtC16FitnessMarketing26MarketingWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MarketingWebViewController

- (_TtC16FitnessMarketing26MarketingWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  return MarketingWebViewController.init(bag:account:clientInfo:)(a3, a4, a5);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  MarketingWebViewController.willMove(toParent:)(a3);
}

@end