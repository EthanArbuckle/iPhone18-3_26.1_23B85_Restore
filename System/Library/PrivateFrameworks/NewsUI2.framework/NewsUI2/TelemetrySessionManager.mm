@interface TelemetrySessionManager
- (void)networkEventMonitor:(id)a3 loggedEvent:(id)a4 inSession:(id)a5;
@end

@implementation TelemetrySessionManager

- (void)networkEventMonitor:(id)a3 loggedEvent:(id)a4 inSession:(id)a5
{
  v6 = a4;
  v7 = a5;

  sub_219BDCDE4();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = v6;
  v10 = v7;
  sub_219BDD164();
}

@end