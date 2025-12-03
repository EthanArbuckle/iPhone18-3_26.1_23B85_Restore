@interface LACAuthenticatorHelper
+ (LACAuthenticatorHelper)sharedInstance;
- (BOOL)isAdministratorRequiredForUserID:(id)d authenticator:(int64_t)authenticator;
- (BOOL)isRequirementMetForUserID:(id)d authenticator:(int64_t)authenticator;
- (LACADMUserProviding)userProvider;
- (LACAuthenticatorHelper)init;
- (LACAuthenticatorHelper)initWithUserProvider:(id)provider;
@end

@implementation LACAuthenticatorHelper

- (LACADMUserProviding)userProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACAuthenticatorHelper_userProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

+ (LACAuthenticatorHelper)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static LACAuthenticatorHelper.sharedInstance;

  return v3;
}

- (LACAuthenticatorHelper)initWithUserProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR___LACAuthenticatorHelper_userProvider) = provider;
  v4.receiver = self;
  v4.super_class = LACAuthenticatorHelper;
  swift_unknownObjectRetain();
  return [(LACAuthenticatorHelper *)&v4 init];
}

- (BOOL)isAdministratorRequiredForUserID:(id)d authenticator:(int64_t)authenticator
{
  dCopy = d;
  selfCopy = self;
  LOBYTE(authenticator) = LACAuthenticatorHelper.isAdministratorRequired(forUserID:authenticator:)(d, authenticator);

  return authenticator & 1;
}

- (BOOL)isRequirementMetForUserID:(id)d authenticator:(int64_t)authenticator
{
  dCopy = d;
  selfCopy = self;
  LOBYTE(authenticator) = LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(d, authenticator);

  return authenticator & 1;
}

- (LACAuthenticatorHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end