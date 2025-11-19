@interface UpgradeFlowManagerAction
- (_TtC21CloudRecommendationUI24UpgradeFlowManagerAction)init;
- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4;
@end

@implementation UpgradeFlowManagerAction

- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243A23600();
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243A2380C();
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243A238E0();
}

- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_243A239B0(a4);
}

- (_TtC21CloudRecommendationUI24UpgradeFlowManagerAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end