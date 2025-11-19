@interface EngagementInlineViewManager
- (_TtC14NewsEngagement27EngagementInlineViewManager)init;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
@end

@implementation EngagementInlineViewManager

- (_TtC14NewsEngagement27EngagementInlineViewManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  EngagementInlineViewManager.messageViewController(_:didUpdate:)(v7, width, height);
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  EngagementInlineViewManager.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  EngagementInlineViewManager.messageViewController(_:didFailWithError:)(v6, a4);
}

- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  EngagementInlineViewManager.messageViewController(_:didLoad:)(v6, v7);
}

@end