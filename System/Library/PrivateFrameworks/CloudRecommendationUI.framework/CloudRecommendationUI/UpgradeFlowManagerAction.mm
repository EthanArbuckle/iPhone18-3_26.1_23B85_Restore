@interface UpgradeFlowManagerAction
- (_TtC21CloudRecommendationUI24UpgradeFlowManagerAction)init;
- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error;
@end

@implementation UpgradeFlowManagerAction

- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  selfCopy = self;
  sub_243A23600();
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  sub_243A2380C();
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_243A238E0();
}

- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error
{
  failCopy = fail;
  selfCopy = self;
  errorCopy = error;
  sub_243A239B0(error);
}

- (_TtC21CloudRecommendationUI24UpgradeFlowManagerAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end