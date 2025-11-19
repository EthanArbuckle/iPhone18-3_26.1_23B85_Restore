@interface LACPhoneIntegrationSessionProcessor
- (BOOL)canProcessRequest:(id)a3;
- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider;
- (LACCompanionAuthenticationSessionMonitoring)monitor;
- (LACPhoneIntegrationSessionProcessor)init;
- (LACPhoneIntegrationSessionProcessor)initWithEnvironmentProvider:(id)a3 monitor:(id)a4;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACPhoneIntegrationSessionProcessor

- (BOOL)canProcessRequest:(id)a3
{
  v3 = self;
  v4 = [(LACCompanionAuthenticationEnvironmentProviding *)[(LACPhoneIntegrationSessionProcessor *)v3 environmentProvider] environment];
  swift_unknownObjectRelease();
  v5 = [v4 isFeatureAvailable];

  return v5;
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

- (LACPhoneIntegrationSessionProcessor)initWithEnvironmentProvider:(id)a3 monitor:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_environmentProvider) = a3;
  *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_monitor) = a4;
  v5.receiver = self;
  v5.super_class = LACPhoneIntegrationSessionProcessor;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(LACPhoneIntegrationSessionProcessor *)&v5 init];
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  specialized LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(a3, v10, v8);
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