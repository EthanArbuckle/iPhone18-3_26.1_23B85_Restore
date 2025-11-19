@interface TSBridgedNewsActivityNavigator
- (TSBridgedNewsActivityNavigator)init;
- (void)navigateWithActivityData:(id)a3;
- (void)navigateWithoutAnimationWithActivityData:(id)a3;
@end

@implementation TSBridgedNewsActivityNavigator

- (void)navigateWithActivityData:(id)a3
{
  v4 = a3;
  v5 = self;
  BridgedNewsActivityNavigator.navigate(with:)();
}

- (void)navigateWithoutAnimationWithActivityData:(id)a3
{
  v4 = a3;
  v5 = self;
  BridgedNewsActivityNavigator.navigateWithoutAnimation(with:)();
}

- (TSBridgedNewsActivityNavigator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end