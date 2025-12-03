@interface DummyOperationClient
- (_TtC18FileProviderDaemon20DummyOperationClient)init;
- (id)proxifiedDescription;
- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler;
- (void)setCancellationHandler:(id)handler;
@end

@implementation DummyOperationClient

- (id)proxifiedDescription
{
  v2 = sub_1CF9E6888();

  return v2;
}

- (void)setCancellationHandler:(id)handler
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler) = handler;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1CF9E6638();
  _Block_copy(v7);
  selfCopy = self;
  errorCopy = error;
  sub_1CF2F3C10(v8, error, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (_TtC18FileProviderDaemon20DummyOperationClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end