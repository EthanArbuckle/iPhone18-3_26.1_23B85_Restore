@interface NotificationAgent
- (BOOL)isTracking;
- (BOOL)registerWithCallback:(id)a3;
- (void)dealloc;
- (void)deregister;
- (void)stateEventWithInfo:(id)a3 connectedState:(int64_t)a4 dockState:(int64_t)a5 trackingButtonState:(int64_t)a6;
@end

@implementation NotificationAgent

- (BOOL)registerWithCallback:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  LOBYTE(self) = sub_224610308(sub_224611614, v5);

  return self & 1;
}

- (BOOL)isTracking
{
  v2 = self;
  v3 = sub_2246106D4();

  return v3 & 1;
}

- (void)deregister
{
  v2 = self;
  sub_2246108CC();
}

- (void)dealloc
{
  v3 = OBJC_IVAR___NotificationAgent_manager;
  v4 = *(&self->super.isa + OBJC_IVAR___NotificationAgent_manager);
  v5 = self;
  if (v4)
  {
    v6 = v4;
    DockCoreManager.disconnect()();

    v7 = *(&self->super.isa + v3);
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.isa + v3) = 0;

  v8 = (&self->super.isa + OBJC_IVAR___NotificationAgent_callback);
  v9 = *(&self->super.isa + OBJC_IVAR___NotificationAgent_callback);
  *v8 = 0;
  v8[1] = 0;
  sub_224512308(v9);
  v10.receiver = self;
  v10.super_class = type metadata accessor for NotificationAgent();
  [(NotificationAgent *)&v10 dealloc];
}

- (void)stateEventWithInfo:(id)a3 connectedState:(int64_t)a4 dockState:(int64_t)a5 trackingButtonState:(int64_t)a6
{
  v10 = a3;
  v11 = self;
  sub_224610B88(v10, a4, a5, a6);
}

@end