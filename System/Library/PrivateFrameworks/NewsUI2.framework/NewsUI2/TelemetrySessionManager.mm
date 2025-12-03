@interface TelemetrySessionManager
- (void)networkEventMonitor:(id)monitor loggedEvent:(id)event inSession:(id)session;
@end

@implementation TelemetrySessionManager

- (void)networkEventMonitor:(id)monitor loggedEvent:(id)event inSession:(id)session
{
  eventCopy = event;
  sessionCopy = session;

  sub_219BDCDE4();
  v8 = swift_allocObject();
  *(v8 + 16) = eventCopy;
  *(v8 + 24) = sessionCopy;
  v9 = eventCopy;
  v10 = sessionCopy;
  sub_219BDD164();
}

@end