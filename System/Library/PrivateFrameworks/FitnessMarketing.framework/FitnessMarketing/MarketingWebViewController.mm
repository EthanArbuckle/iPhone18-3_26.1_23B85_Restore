@interface MarketingWebViewController
- (_TtC16FitnessMarketing26MarketingWebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MarketingWebViewController

- (_TtC16FitnessMarketing26MarketingWebViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  swift_unknownObjectRetain();
  accountCopy = account;
  infoCopy = info;
  return MarketingWebViewController.init(bag:account:clientInfo:)(bag, account, info);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MarketingWebViewController.willMove(toParent:)(controller);
}

@end