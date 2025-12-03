@interface PersonalizedMediaTokenService
- (_TtC12GameStoreKit29PersonalizedMediaTokenService)init;
- (id)fetchMediaToken;
- (void)accountsDidChange;
@end

@implementation PersonalizedMediaTokenService

- (void)accountsDidChange
{
  selfCopy = self;
  sub_24EECFC68();
}

- (id)fetchMediaToken
{
  fetchMediaToken = [*(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return fetchMediaToken;
}

- (_TtC12GameStoreKit29PersonalizedMediaTokenService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end