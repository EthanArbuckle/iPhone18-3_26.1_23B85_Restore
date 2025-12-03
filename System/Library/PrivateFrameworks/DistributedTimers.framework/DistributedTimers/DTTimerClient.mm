@interface DTTimerClient
+ (id)fetchTimersAndReturnError:(id *)error;
+ (unint64_t)statusFlags;
- (DTTimerClient)initWithDispatchQueue:(id)queue;
- (DTTimerClient)initWithDispatchQueue:(id)queue homeKitAccessoryID:(id)d;
- (NSArray)mtAlarms;
- (NSArray)mtTimers;
- (NSArray)timers;
- (NSDictionary)_timerMap;
- (NSError)_error;
- (NSError)error;
- (id)eventHandler;
- (void)activate;
- (void)dealloc;
- (void)fetchTimersWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)setEventHandler:(id)handler;
- (void)set_error:(id)set_error;
- (void)set_timerMap:(id)map;
@end

@implementation DTTimerClient

- (NSError)_error
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__error);
  if (v2)
  {
    v3 = v2;
    v4 = sub_249076B2C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_error:(id)set_error
{
  v4 = *(self + OBJC_IVAR___DTTimerClient__error);
  *(self + OBJC_IVAR___DTTimerClient__error) = set_error;
  selfCopy = self;
  set_errorCopy = set_error;
}

- (NSError)error
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_24906C388(&v7);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v7;

  if (v4)
  {
    v5 = sub_249076B2C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)eventHandler
{
  v2 = (self + OBJC_IVAR___DTTimerClient_eventHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249064878;
    aBlock[3] = &block_descriptor_79;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEventHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24906BFDC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___DTTimerClient_eventHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_24906A4F0(v7);
}

- (NSDictionary)_timerMap
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__timerMap);
  type metadata accessor for DTTimer(0);

  v3 = sub_249076DDC();

  return v3;
}

- (void)set_timerMap:(id)map
{
  type metadata accessor for DTTimer(0);
  v4 = sub_249076DEC();
  v5 = *(self + OBJC_IVAR___DTTimerClient__timerMap);
  *(self + OBJC_IVAR___DTTimerClient__timerMap) = v4;
}

- (DTTimerClient)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_24906A6B8();

  return v4;
}

- (DTTimerClient)initWithDispatchQueue:(id)queue homeKitAccessoryID:(id)d
{
  v5 = sub_249076E1C();
  v7 = v6;
  queueCopy = queue;
  v9 = sub_24906A8CC(queueCopy, v5, v7);

  return v9;
}

- (void)dealloc
{
  v3 = OBJC_IVAR___DTTimerClient__monitorMode;
  v4 = *(self + OBJC_IVAR___DTTimerClient__monitorMode);
  selfCopy = self;
  if (v4 == 1)
  {
    sub_249064F58();
    *(self + v3) = 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = DTTimerClient;
  [(DTTimerClient *)&v6 dealloc];
}

- (void)activate
{
  selfCopy = self;
  sub_2490657D4(&unk_285C1C560, sub_24906AB28, &block_descriptor);
}

- (void)invalidate
{
  selfCopy = self;
  sub_2490657D4(&unk_285C1C5D8, sub_24906AC34, &block_descriptor_9);
}

- (NSArray)timers
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_24906C388(&v6);
  os_unfair_lock_unlock(v2 + 4);

  type metadata accessor for DTTimer(0);
  v4 = sub_249076EEC();

  return v4;
}

- (NSArray)mtAlarms
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_24906C388(&v6);
  os_unfair_lock_unlock(v2 + 4);

  sub_249063FF0(0, &qword_27EECF540, 0x277D296D0);
  v4 = sub_249076EEC();

  return v4;
}

- (NSArray)mtTimers
{
  v2 = *(self + OBJC_IVAR___DTTimerClient__lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_24906C388(&v6);
  os_unfair_lock_unlock(v2 + 4);

  sub_249063FF0(0, &qword_27EECF538, 0x277D29730);
  v4 = sub_249076EEC();

  return v4;
}

- (void)fetchTimersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2490667C8(sub_24906BE8C, v5);
}

+ (id)fetchTimersAndReturnError:(id *)error
{
  sub_24906B968();
  type metadata accessor for DTTimer(0);
  v3 = sub_249076EEC();

  return v3;
}

+ (unint64_t)statusFlags
{
  type metadata accessor for DTXPCClient();
  v5 = 0uLL;
  v6.n128_u64[0] = 0;
  v6.n128_u8[8] = 10;
  v13[0] = 0uLL;
  DTRequestContext.init(endpoint:)(v13, &v11);
  v9 = v11;
  v10 = v12;
  DTXPCRequest.init(request:context:)(&v5, &v9, v13);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v13[2];
  v8 = v14;
  v0 = sub_24905AF4C();
  static DTXPCClient.sendSync<A>(request:)(&v5, &type metadata for DTFetchStatusResponse, v0);
  v1 = v6.n128_u64[1];
  v2 = v7;
  v3 = v8;

  sub_24904E358(v1, v2.n128_i64[0], v2.n128_i64[1], v3);
  return v11.n128_u64[0];
}

@end