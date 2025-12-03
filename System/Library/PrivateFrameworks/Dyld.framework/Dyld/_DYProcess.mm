@interface _DYProcess
+ (id)processForCurrentTask;
- (OS_dispatch_queue)queue;
- (_DYProcess)init;
- (id)getCurrentSnapshotAndReturnError:(id *)error;
- (id)registerChangeNotificationsWithError:(id *)error handler:(id)handler;
- (void)setQueue:(id)queue;
- (void)unregisterForEvent:(id)event;
@end

@implementation _DYProcess

- (id)getCurrentSnapshotAndReturnError:(id *)error
{
  selfCopy = self;
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

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_1AE4E48E0(queue);
}

+ (id)processForCurrentTask
{
  swift_getObjCClassMetadata();
  v2 = sub_1AE4E49B0();

  return v2;
}

- (id)registerChangeNotificationsWithError:(id *)error handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  if (*(&self->super.isa + v7))
  {

    selfCopy = self;

    sub_1AE4D2730(v10, sub_1AE4E4FCC, v6);
    v12 = v11;

    initWithValue_ = [objc_allocWithZone(_DYEventHandlerToken) initWithValue_];

    return initWithValue_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)unregisterForEvent:(id)event
{
  v5 = OBJC_IVAR____DYProcess_impl;
  swift_beginAccess();
  if (*(&self->super.isa + v5))
  {
    eventCopy = event;
    selfCopy = self;

    sub_1AE4D3440([eventCopy value]);
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