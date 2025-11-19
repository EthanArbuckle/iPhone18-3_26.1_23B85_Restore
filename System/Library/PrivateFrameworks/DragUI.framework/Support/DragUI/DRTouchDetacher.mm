@interface DRTouchDetacher
- (BOOL)detachTouchesWithTouchIdentifiers:(id)a3 session:(id)a4 routingPolicy:(id)a5 touchOffset:(CGPoint)a6;
- (_TtC5druid15DRTouchDetacher)init;
- (void)updateRoutingPolicy:(id)a3 forSession:(id)a4;
@end

@implementation DRTouchDetacher

- (BOOL)detachTouchesWithTouchIdentifiers:(id)a3 session:(id)a4 routingPolicy:(id)a5 touchOffset:(CGPoint)a6
{
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a5;
  v12 = self;
  v13 = sub_10002F5E8(v9, v10);

  return v13 & 1;
}

- (void)updateRoutingPolicy:(id)a3 forSession:(id)a4
{
  v5 = a3;
  v7 = a4;
  [v7 identifier];
  v6 = sub_10002EC40(v7);
  BKSHIDEventDigitizerSetTouchRoutingPolicy();
}

- (_TtC5druid15DRTouchDetacher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DRTouchDetacher();
  return [(DRTouchDetacher *)&v3 init];
}

@end