@interface HomeState.Stream.MatterDelegate
- (_TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate)init;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
@end

@implementation HomeState.Stream.MatterDelegate

- (_TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  deviceCopy = device;
  selfCopy = self;
  sub_1D1AB1FE4(deviceCopy, changed);
}

- (void)deviceBecameActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1D1AB43C4(activeCopy, "Received MTRDevice delegate deviceBecameActive for device:%{public}@");
}

- (void)deviceCachePrimed:(id)primed
{
  primedCopy = primed;
  selfCopy = self;
  sub_1D1AB43C4(primedCopy, "Received MTRDevice delegate deviceCachePrimed for device:%{public}@");
}

- (void)deviceConfigurationChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1D1AB43C4(changedCopy, "Received MTRDevice delegate deviceConfigurationChanged for device:%{public}@");
}

@end