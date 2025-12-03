@interface CUFindMyLocateMeDeviceMonitor
+ (BOOL)supported;
- (CUFindMyLocateMeDeviceMonitor)init;
- (CUFindMyLocateMeDeviceMonitor)initWithDispatchQueue:(id)queue;
- (id)meDeviceUpdatedHandler;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setMeDeviceUpdatedHandler:(id)handler;
@end

@implementation CUFindMyLocateMeDeviceMonitor

- (id)meDeviceUpdatedHandler
{
  v2 = (self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor_meDeviceUpdatedHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247C0997C;
    aBlock[3] = &block_descriptor_16;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdatedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_247C0ED20;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor_meDeviceUpdatedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_247C09AA8(v7);
}

+ (BOOL)supported
{
  if (MEMORY[0x277D09478])
  {
    v2 = MEMORY[0x277D09480] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && MEMORY[0x277D09490] != 0 && MEMORY[0x277D09470] != 0 && MEMORY[0x277D09488] != 0;
}

- (CUFindMyLocateMeDeviceMonitor)initWithDispatchQueue:(id)queue
{
  *(self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask) = 0;
  v3 = (self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor_meDeviceUpdatedHandler);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__firstUnlockStarted) = 0;
  *(self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor) = 0;
  *(self + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__dispatchQueue) = queue;
  v6.receiver = self;
  v6.super_class = CUFindMyLocateMeDeviceMonitor;
  queueCopy = queue;
  return [(CUFindMyLocateMeDeviceMonitor *)&v6 init];
}

- (void)dealloc
{
  selfCopy = self;
  sub_247C09B84();
  v3.receiver = selfCopy;
  v3.super_class = CUFindMyLocateMeDeviceMonitor;
  [(CUFindMyLocateMeDeviceMonitor *)&v3 dealloc];
}

- (void)activate
{
  selfCopy = self;
  sub_247C0DC40(&unk_2859D1438, sub_247C09EF8, &block_descriptor);
}

- (void)invalidate
{
  selfCopy = self;
  sub_247C0DC40(&unk_2859D1488, sub_247C0DED4, &block_descriptor_6);
}

- (CUFindMyLocateMeDeviceMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end