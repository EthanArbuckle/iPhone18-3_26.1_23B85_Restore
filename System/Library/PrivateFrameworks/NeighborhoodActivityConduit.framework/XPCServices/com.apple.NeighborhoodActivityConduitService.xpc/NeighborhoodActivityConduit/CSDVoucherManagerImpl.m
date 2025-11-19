@interface CSDVoucherManagerImpl
- (CSDVoucherManagerImpl)init;
- (void)sign:(id)a3 as:(id)a4 completion:(id)a5;
- (void)verify:(id)a3 completion:(id)a4;
@end

@implementation CSDVoucherManagerImpl

- (void)sign:(id)a3 as:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v14 = self;
  v11 = sub_1000E0C88();
  v13 = v12;

  _Block_copy(v8);
  sub_1000B0F7C(v11, v13, v10, v14, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100006660(v11, v13);
}

- (void)verify:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000B1568(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (CSDVoucherManagerImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end