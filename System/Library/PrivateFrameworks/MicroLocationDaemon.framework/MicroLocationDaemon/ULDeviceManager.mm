@interface ULDeviceManager
- (void)deviceConnectedWithDeviceClass:(unint64_t)class;
- (void)deviceDisconnectedWithDeviceClass:(unint64_t)class;
- (void)setDeviceConnectedHandler:(id)handler;
- (void)setDeviceDisconnectedHandler:(id)handler;
- (void)updateTrackedDevice;
@end

@implementation ULDeviceManager

- (void)setDeviceConnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2591FF588;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2591EBD18(v7);
}

- (void)setDeviceDisconnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2591FF4E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2591EBD18(v7);
}

- (void)updateTrackedDevice
{
  selfCopy = self;
  sub_2591FE4E8();
}

- (void)deviceConnectedWithDeviceClass:(unint64_t)class
{
  swift_beginAccess();
  selfCopy = self;
  sub_2591FE854(&v9, class);
  swift_endAccess();
  sub_2591FE4E8();
  v6 = selfCopy + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 1);

    v7(class);

    sub_2591EBD18(v7);
  }

  else
  {
  }
}

- (void)deviceDisconnectedWithDeviceClass:(unint64_t)class
{
  swift_beginAccess();
  selfCopy = self;
  sub_2591FF234(class);
  swift_endAccess();
  sub_2591FE4E8();
  v6 = selfCopy + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 1);

    v7(class);

    sub_2591EBD18(v7);
  }

  else
  {
  }
}

@end