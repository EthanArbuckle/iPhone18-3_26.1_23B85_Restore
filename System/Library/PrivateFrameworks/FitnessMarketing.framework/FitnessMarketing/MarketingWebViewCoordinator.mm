@interface MarketingWebViewCoordinator
- (_TtC16FitnessMarketing27MarketingWebViewCoordinator)init;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
@end

@implementation MarketingWebViewCoordinator

- (_TtC16FitnessMarketing27MarketingWebViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_20C641CE4(result, error);
}

@end