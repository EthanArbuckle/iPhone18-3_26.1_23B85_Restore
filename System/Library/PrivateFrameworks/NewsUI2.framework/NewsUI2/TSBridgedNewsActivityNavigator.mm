@interface TSBridgedNewsActivityNavigator
- (TSBridgedNewsActivityNavigator)init;
- (void)navigateWithActivityData:(id)data;
- (void)navigateWithoutAnimationWithActivityData:(id)data;
@end

@implementation TSBridgedNewsActivityNavigator

- (void)navigateWithActivityData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  BridgedNewsActivityNavigator.navigate(with:)();
}

- (void)navigateWithoutAnimationWithActivityData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  BridgedNewsActivityNavigator.navigateWithoutAnimation(with:)();
}

- (TSBridgedNewsActivityNavigator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end