@interface LACAuthenticatorHelper
+ (LACAuthenticatorHelper)sharedInstance;
- (BOOL)isAdministratorRequiredForUserID:(id)a3 authenticator:(int64_t)a4;
- (BOOL)isRequirementMetForUserID:(id)a3 authenticator:(int64_t)a4;
- (LACADMUserProviding)userProvider;
- (LACAuthenticatorHelper)init;
- (LACAuthenticatorHelper)initWithUserProvider:(id)a3;
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

- (LACAuthenticatorHelper)initWithUserProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___LACAuthenticatorHelper_userProvider) = a3;
  v4.receiver = self;
  v4.super_class = LACAuthenticatorHelper;
  swift_unknownObjectRetain();
  return [(LACAuthenticatorHelper *)&v4 init];
}

- (BOOL)isAdministratorRequiredForUserID:(id)a3 authenticator:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  LOBYTE(a4) = LACAuthenticatorHelper.isAdministratorRequired(forUserID:authenticator:)(a3, a4);

  return a4 & 1;
}

- (BOOL)isRequirementMetForUserID:(id)a3 authenticator:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  LOBYTE(a4) = LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(a3, a4);

  return a4 & 1;
}

- (LACAuthenticatorHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end