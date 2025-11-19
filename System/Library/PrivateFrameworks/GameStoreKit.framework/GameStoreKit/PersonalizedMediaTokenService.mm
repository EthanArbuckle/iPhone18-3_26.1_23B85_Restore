@interface PersonalizedMediaTokenService
- (_TtC12GameStoreKit29PersonalizedMediaTokenService)init;
- (id)fetchMediaToken;
- (void)accountsDidChange;
@end

@implementation PersonalizedMediaTokenService

- (void)accountsDidChange
{
  v2 = self;
  sub_24EECFC68();
}

- (id)fetchMediaToken
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return v2;
}

- (_TtC12GameStoreKit29PersonalizedMediaTokenService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end