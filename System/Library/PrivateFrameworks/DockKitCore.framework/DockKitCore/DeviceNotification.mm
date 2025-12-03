@interface DeviceNotification
- (_TtC11DockKitCore18DeviceNotification)init;
- (_TtC11DockKitCore18DeviceNotification)initWithName:(id)name queue:(id)queue handler:(id)handler;
- (unint64_t)state;
- (void)dealloc;
- (void)setState:(unint64_t)state;
@end

@implementation DeviceNotification

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token);
  selfCopy = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(DeviceNotification *)&v6 dealloc];
}

- (unint64_t)state
{
  v3 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 4);

  v6 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*(&selfCopy->super.isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (selfCopy + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
  v7 = *(&selfCopy->super.isa + v6);
  v8 = *(&self->super.isa + v3);

  os_unfair_lock_unlock(v8 + 4);

  return v7;
}

- (void)setState:(unint64_t)state
{
  selfCopy = self;
  DeviceNotification.state.setter(state);
}

- (_TtC11DockKitCore18DeviceNotification)initWithName:(id)name queue:(id)queue handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_224627CD8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  return DeviceNotification.init(name:queue:handler:)(v7, v9, queue, sub_2245B5DEC, v10);
}

- (_TtC11DockKitCore18DeviceNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end