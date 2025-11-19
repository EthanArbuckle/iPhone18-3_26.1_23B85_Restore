@interface DummyOperationClient
- (_TtC18FileProviderDaemon20DummyOperationClient)init;
- (id)proxifiedDescription;
- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)setCancellationHandler:(id)a3;
@end

@implementation DummyOperationClient

- (id)proxifiedDescription
{
  v2 = sub_1CF9E6888();

  return v2;
}

- (void)setCancellationHandler:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1CF9E6638();
  _Block_copy(v7);
  v9 = self;
  v10 = a4;
  sub_1CF2F3C10(v8, a4, v9, v7);
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