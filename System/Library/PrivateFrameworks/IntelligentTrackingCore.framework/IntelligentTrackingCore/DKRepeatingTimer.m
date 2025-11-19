@interface DKRepeatingTimer
- (_TtC23IntelligentTrackingCore16DKRepeatingTimer)init;
- (void)dealloc;
@end

@implementation DKRepeatingTimer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock);
  v5 = self;

  os_unfair_lock_lock(v4 + 4);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1BB6BB0D4();
  swift_unknownObjectRelease();
  v6 = *(&self->super.isa + v3);

  os_unfair_lock_unlock(v6 + 4);

  sub_1BB671FA4();
  v7.receiver = v5;
  v7.super_class = type metadata accessor for DKRepeatingTimer();
  [(DKRepeatingTimer *)&v7 dealloc];
}

- (_TtC23IntelligentTrackingCore16DKRepeatingTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end