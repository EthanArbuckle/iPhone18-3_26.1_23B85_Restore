@interface DRTouchDetacher
- (BOOL)detachTouchesWithTouchIdentifiers:(id)identifiers session:(id)session routingPolicy:(id)policy touchOffset:(CGPoint)offset;
- (_TtC5druid15DRTouchDetacher)init;
- (void)updateRoutingPolicy:(id)policy forSession:(id)session;
@end

@implementation DRTouchDetacher

- (BOOL)detachTouchesWithTouchIdentifiers:(id)identifiers session:(id)session routingPolicy:(id)policy touchOffset:(CGPoint)offset
{
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  policyCopy = policy;
  selfCopy = self;
  v13 = sub_10002F5E8(v9, sessionCopy);

  return v13 & 1;
}

- (void)updateRoutingPolicy:(id)policy forSession:(id)session
{
  policyCopy = policy;
  sessionCopy = session;
  [sessionCopy identifier];
  v6 = sub_10002EC40(sessionCopy);
  BKSHIDEventDigitizerSetTouchRoutingPolicy();
}

- (_TtC5druid15DRTouchDetacher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DRTouchDetacher();
  return [(DRTouchDetacher *)&v3 init];
}

@end