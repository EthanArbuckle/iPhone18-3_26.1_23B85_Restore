@interface NativeModalActionHandler
- (_TtC21CloudRecommendationUI24NativeModalActionHandler)init;
- (void)userDidCancelAction;
- (void)userDidCompleteAction:(id)a3;
@end

@implementation NativeModalActionHandler

- (void)userDidCompleteAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243A71408(v4);
}

- (void)userDidCancelAction
{
  v2 = self;
  sub_243A71540();
}

- (_TtC21CloudRecommendationUI24NativeModalActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end