@interface LACCompanionAuthenticationEnvironment
- (LACCompanionAuthenticationEnvironment)init;
- (LACCompanionAuthenticationEnvironment)initWithFeatureAvailable:(BOOL)a3 featureSupported:(BOOL)a4;
@end

@implementation LACCompanionAuthenticationEnvironment

- (LACCompanionAuthenticationEnvironment)initWithFeatureAvailable:(BOOL)a3 featureSupported:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureAvailable) = a3;
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureSupported) = a4;
  v5.receiver = self;
  v5.super_class = LACCompanionAuthenticationEnvironment;
  return [(LACCompanionAuthenticationEnvironment *)&v5 init];
}

- (LACCompanionAuthenticationEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end