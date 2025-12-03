@interface Session.FenceConnection.Trampoline
- (_TtCCC12FindMyLocate7Session15FenceConnection10Trampoline)init;
- (void)request:(id)request completion:(id)completion;
@end

@implementation Session.FenceConnection.Trampoline

- (void)request:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  v8 = sub_1B80C8D3C();
  v10 = v9;

  _Block_copy(v6);
  sub_1B7FC99AC(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1B7FC3CCC(v8, v10);
}

- (_TtCCC12FindMyLocate7Session15FenceConnection10Trampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end