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
  selfCopy = self;
  v4 = sub_1AB460514();
  uRLForKey_ = [v2 URLForKey_];

  return uRLForKey_;
}

- (id)mescalSignSapRequests
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  dictionaryForKey_ = [v2 dictionaryForKey_];

  return dictionaryForKey_;
}

- (id)mescalSignSapResponses
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  dictionaryForKey_ = [v2 dictionaryForKey_];

  return dictionaryForKey_;
}

- (_TtC9JetEngine17MescalBagContract)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end