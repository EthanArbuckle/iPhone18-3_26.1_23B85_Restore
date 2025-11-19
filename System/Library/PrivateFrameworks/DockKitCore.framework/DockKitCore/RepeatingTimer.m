@interface RepeatingTimer
- (_TtC11DockKitCore14RepeatingTimer)init;
- (void)dealloc;
@end

@implementation RepeatingTimer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock);
  v5 = self;

  os_unfair_lock_lock(v4 + 4);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_224628128();
  swift_unknownObjectRelease();
  v6 = *(&self->super.isa + v3);

  os_unfair_lock_unlock(v6 + 4);

  sub_2245B6854();
  v7.receiver = v5;
  v7.super_class = type metadata accessor for RepeatingTimer();
  [(RepeatingTimer *)&v7 dealloc];
}

- (_TtC11DockKitCore14RepeatingTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end