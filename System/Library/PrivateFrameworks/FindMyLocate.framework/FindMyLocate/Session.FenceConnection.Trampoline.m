@interface Session.FenceConnection.Trampoline
- (_TtCCC12FindMyLocate7Session15FenceConnection10Trampoline)init;
- (void)request:(id)a3 completion:(id)a4;
@end

@implementation Session.FenceConnection.Trampoline

- (void)request:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1B80C8D3C();
  v10 = v9;

  _Block_copy(v6);
  sub_1B7FC99AC(v8, v10, v11, v6);
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