@interface LACCompanionAuthenticationEnvironment
- (LACCompanionAuthenticationEnvironment)init;
- (LACCompanionAuthenticationEnvironment)initWithFeatureAvailable:(BOOL)available featureSupported:(BOOL)supported;
@end

@implementation LACCompanionAuthenticationEnvironment

- (LACCompanionAuthenticationEnvironment)initWithFeatureAvailable:(BOOL)available featureSupported:(BOOL)supported
{
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureAvailable) = available;
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureSupported) = supported;
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