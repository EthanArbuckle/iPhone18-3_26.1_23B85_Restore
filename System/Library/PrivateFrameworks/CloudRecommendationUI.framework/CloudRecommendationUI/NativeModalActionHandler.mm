@interface NativeModalActionHandler
- (_TtC21CloudRecommendationUI24NativeModalActionHandler)init;
- (void)userDidCancelAction;
- (void)userDidCompleteAction:(id)action;
@end

@implementation NativeModalActionHandler

- (void)userDidCompleteAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_243A71408(actionCopy);
}

- (void)userDidCancelAction
{
  selfCopy = self;
  sub_243A71540();
}

- (_TtC21CloudRecommendationUI24NativeModalActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end