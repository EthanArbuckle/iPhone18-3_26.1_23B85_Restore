@interface LACOnenessEnvironmentProvider
- (LACCompanionAuthenticationEnvironment)environment;
- (LACOnenessEnvironmentProvider)init;
@end

@implementation LACOnenessEnvironmentProvider

- (LACCompanionAuthenticationEnvironment)environment
{
  selfCopy = self;
  v3 = [objc_allocWithZone(LACCompanionAuthenticationEnvironment) initWithFeatureAvailable:-[LACOnenessEnvironmentProvider isFeatureAvailable](selfCopy featureSupported:{sel_isFeatureAvailable), -[LACOnenessEnvironmentProvider isFeatureSupported](selfCopy, sel_isFeatureSupported)}];

  return v3;
}

- (LACOnenessEnvironmentProvider)init
{
  *(&self->super.isa + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureAvailable) = 1;
  *(&self->super.isa + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureSupported) = 1;
  v3.receiver = self;
  v3.super_class = LACOnenessEnvironmentProvider;
  return [(LACOnenessEnvironmentProvider *)&v3 init];
}

@end