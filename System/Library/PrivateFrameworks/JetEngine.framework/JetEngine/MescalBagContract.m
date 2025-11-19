@interface MescalBagContract
- (_TtC9JetEngine17MescalBagContract)init;
- (id)mescalCertificateURL;
- (id)mescalSignSapRequests;
- (id)mescalSignSapResponses;
@end

@implementation MescalBagContract

- (id)mescalCertificateURL
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 URLForKey_];

  return v5;
}

- (id)mescalSignSapRequests
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 dictionaryForKey_];

  return v5;
}

- (id)mescalSignSapResponses
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 dictionaryForKey_];

  return v5;
}

- (_TtC9JetEngine17MescalBagContract)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end