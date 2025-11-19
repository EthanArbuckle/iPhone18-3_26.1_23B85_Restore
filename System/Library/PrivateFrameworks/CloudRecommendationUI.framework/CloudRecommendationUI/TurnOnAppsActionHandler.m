@interface TurnOnAppsActionHandler
- (_TtC21CloudRecommendationUI23TurnOnAppsActionHandler)init;
- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5;
- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4;
@end

@implementation TurnOnAppsActionHandler

- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_243A75130(a5, "TurnOnApps flow completed with error %s");
}

- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_243A75130(a4, "TurnOnApps flow cancelled with error %s");
}

- (_TtC21CloudRecommendationUI23TurnOnAppsActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end