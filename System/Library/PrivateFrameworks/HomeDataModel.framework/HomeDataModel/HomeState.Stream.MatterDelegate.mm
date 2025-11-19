@interface HomeState.Stream.MatterDelegate
- (_TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate)init;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)deviceBecameActive:(id)a3;
- (void)deviceCachePrimed:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
@end

@implementation HomeState.Stream.MatterDelegate

- (_TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D1AB1FE4(v6, a4);
}

- (void)deviceBecameActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceBecameActive for device:%{public}@");
}

- (void)deviceCachePrimed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceCachePrimed for device:%{public}@");
}

- (void)deviceConfigurationChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceConfigurationChanged for device:%{public}@");
}

@end