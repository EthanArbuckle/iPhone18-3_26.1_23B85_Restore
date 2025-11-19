@interface ProxyOperationClient
- (_TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient)init;
- (id)proxifiedDescription;
- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)setCancellationHandler:(id)a3;
@end

@implementation ProxyOperationClient

- (id)proxifiedDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
  v3 = self;
  v4 = [v2 proxifiedDescription];
  if (!v4)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v4 = sub_1CF9E6888();
  }

  return v4;
}

- (void)setCancellationHandler:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1CF919C90(a3);
  swift_unknownObjectRelease();
}

- (void)operationDidProgressWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1CF9E6638();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  v11 = a4;
  sub_1CF919DF0(v8, a4, sub_1CF744650, v9);
}

- (_TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end