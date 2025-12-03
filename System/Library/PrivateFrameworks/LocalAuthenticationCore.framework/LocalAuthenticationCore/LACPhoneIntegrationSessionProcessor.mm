@interface LACPhoneIntegrationSessionProcessor
- (BOOL)canProcessRequest:(id)request;
- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider;
- (LACCompanionAuthenticationSessionMonitoring)monitor;
- (LACPhoneIntegrationSessionProcessor)init;
- (LACPhoneIntegrationSessionProcessor)initWithEnvironmentProvider:(id)provider monitor:(id)monitor;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACPhoneIntegrationSessionProcessor

- (BOOL)canProcessRequest:(id)request
{
  selfCopy = self;
  environment = [(LACCompanionAuthenticationEnvironmentProviding *)[(LACPhoneIntegrationSessionProcessor *)selfCopy environmentProvider] environment];
  swift_unknownObjectRelease();
  isFeatureAvailable = [environment isFeatureAvailable];

  return isFeatureAvailable;
}

- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_environmentProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACCompanionAuthenticationSessionMonitoring)monitor
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_monitor);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACPhoneIntegrationSessionProcessor)initWithEnvironmentProvider:(id)provider monitor:(id)monitor
{
  *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_environmentProvider) = provider;
  *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_monitor) = monitor;
  v5.receiver = self;
  v5.super_class = LACPhoneIntegrationSessionProcessor;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(LACPhoneIntegrationSessionProcessor *)&v5 init];
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  specialized LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(request, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (LACPhoneIntegrationSessionProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end