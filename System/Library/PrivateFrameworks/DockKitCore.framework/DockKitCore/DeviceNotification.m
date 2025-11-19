@interface DeviceNotification
- (_TtC11DockKitCore18DeviceNotification)init;
- (_TtC11DockKitCore18DeviceNotification)initWithName:(id)a3 queue:(id)a4 handler:(id)a5;
- (unint64_t)state;
- (void)dealloc;
- (void)setState:(unint64_t)a3;
@end

@implementation DeviceNotification

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token);
  v5 = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(DeviceNotification *)&v6 dealloc];
}

- (unint64_t)state
{
  v3 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);
  v5 = self;

  os_unfair_lock_lock(v4 + 4);

  v6 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*(&v5->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (v5 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
  v7 = *(&v5->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  os_unfair_lock_unlock(v8 + 4);

  return v7;
}

- (void)setState:(unint64_t)a3
{
  v4 = self;
  DeviceNotification.state.setter(a3);
}

- (_TtC11DockKitCore18DeviceNotification)initWithName:(id)a3 queue:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_224627CD8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  return DeviceNotification.init(name:queue:handler:)(v7, v9, a4, sub_2245B5DEC, v10);
}

- (_TtC11DockKitCore18DeviceNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end