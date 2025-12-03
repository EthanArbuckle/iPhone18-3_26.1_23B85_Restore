@interface EngagementInlineViewManager
- (_TtC14NewsEngagement27EngagementInlineViewManager)init;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
@end

@implementation EngagementInlineViewManager

- (_TtC14NewsEngagement27EngagementInlineViewManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  EngagementInlineViewManager.messageViewController(_:didUpdate:)(controllerCopy, width, height);
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  EngagementInlineViewManager.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  EngagementInlineViewManager.messageViewController(_:didFailWithError:)(controllerCopy, error);
}

- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  EngagementInlineViewManager.messageViewController(_:didLoad:)(controllerCopy, requestCopy);
}

@end