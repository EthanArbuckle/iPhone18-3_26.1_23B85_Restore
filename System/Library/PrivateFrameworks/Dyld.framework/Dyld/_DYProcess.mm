@interface _DYProcess
+ (id)processForCurrentTask;
- (OS_dispatch_queue)queue;
- (_DYProcess)init;
- (id)getCurrentSnapshotAndReturnError:(id *)a3;
- (id)registerChangeNotificationsWithError:(id *)a3 handler:(id)a4;
- (void)setQueue:(id)a3;
- (void)unregisterForEvent:(id)a3;
@end

@implementation _DYProcess

- (id)getCurrentSnapshotAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_1AE4B486C();

  return v4;
}

- (OS_dispatch_queue)queue
{
  v3 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  v5 = *(&self->super.isa + v3);
  if (v5)
  {
    return *(v5 + 64);
  }

  __break(1u);
  return result;
}

- (void)setQueue:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AE4E48E0(a3);
}

+ (id)processForCurrentTask
{
  swift_getObjCClassMetadata();
  v2 = sub_1AE4E49B0();

  return v2;
}

- (id)registerChangeNotificationsWithError:(id *)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  if (*(&self->super.isa + v7))
  {

    v9 = self;

    sub_1AE4D2730(v10, sub_1AE4E4FCC, v6);
    v12 = v11;

    v13 = [objc_allocWithZone(_DYEventHandlerToken) initWithValue_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)unregisterForEvent:(id)a3
{
  v5 = OBJC_IVAR____DYProcess_impl;
  swift_beginAccess();
  if (*(&self->super.isa + v5))
  {
    v6 = a3;
    v7 = self;

    sub_1AE4D3440([v6 value]);
  }

  else
  {
    __break(1u);
  }
}

- (_DYProcess)init
{
  *(&self->super.isa + OBJC_IVAR____DYProcess_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end