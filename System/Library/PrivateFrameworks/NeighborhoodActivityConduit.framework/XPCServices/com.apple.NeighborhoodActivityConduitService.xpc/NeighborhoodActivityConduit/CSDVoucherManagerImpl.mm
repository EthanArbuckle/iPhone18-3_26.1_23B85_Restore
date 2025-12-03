@interface CSDVoucherManagerImpl
- (CSDVoucherManagerImpl)init;
- (void)sign:(id)sign as:(id)as completion:(id)completion;
- (void)verify:(id)verify completion:(id)completion;
@end

@implementation CSDVoucherManagerImpl

- (void)sign:(id)sign as:(id)as completion:(id)completion
{
  v8 = _Block_copy(completion);
  signCopy = sign;
  asCopy = as;
  selfCopy = self;
  v11 = sub_1000E0C88();
  v13 = v12;

  _Block_copy(v8);
  sub_1000B0F7C(v11, v13, asCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100006660(v11, v13);
}

- (void)verify:(id)verify completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  verifyCopy = verify;
  selfCopy = self;
  sub_1000B1568(verifyCopy, selfCopy, v6);
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