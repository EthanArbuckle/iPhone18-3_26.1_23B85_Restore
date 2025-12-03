@interface TurnOnAppsActionHandler
- (_TtC21CloudRecommendationUI23TurnOnAppsActionHandler)init;
- (void)remoteUIFlowManager:(id)manager didCompleteFlowWithSuccess:(BOOL)success error:(id)error;
- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error;
@end

@implementation TurnOnAppsActionHandler

- (void)remoteUIFlowManager:(id)manager didCompleteFlowWithSuccess:(BOOL)success error:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_243A75130(error, "TurnOnApps flow completed with error %s");
}

- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_243A75130(error, "TurnOnApps flow cancelled with error %s");
}

- (_TtC21CloudRecommendationUI23TurnOnAppsActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end