@interface LACPhoneIntegrationEnvironmentProvider
- (BOOL)isFeatureAvailable;
- (LACCompanionAuthenticationEnvironment)environment;
- (LACEligibilityHelping)eligibilityHelper;
- (LACPhoneIntegrationEnvironmentProvider)init;
- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)a3 sharingManager:(id)a4 workQueue:(id)a5;
- (LACSharingManaging)sharingManager;
- (void)dealloc;
@end

@implementation LACPhoneIntegrationEnvironmentProvider

- (LACCompanionAuthenticationEnvironment)environment
{
  v2 = self;
  v3 = [objc_allocWithZone(LACCompanionAuthenticationEnvironment) initWithFeatureAvailable:-[LACPhoneIntegrationEnvironmentProvider isFeatureAvailable](v2 featureSupported:{sel_isFeatureAvailable), LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter() & 1}];

  return v3;
}

- (BOOL)isFeatureAvailable
{
  v2 = self;
  if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
  {
    v3 = [(LACPhoneIntegrationEnvironmentProvider *)v2 hasPairedDevices];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (LACSharingManaging)sharingManager
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_sharingManager);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACEligibilityHelping)eligibilityHelper
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_eligibilityHelper);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)a3 sharingManager:(id)a4 workQueue:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return LACPhoneIntegrationEnvironmentProvider.init(eligibilityHelper:sharingManager:work:)(a3, a4, a5);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_subscription);
  v3 = self;
  AKSEventsUnregister();
  v4.receiver = v3;
  v4.super_class = LACPhoneIntegrationEnvironmentProvider;
  [(LACPhoneIntegrationEnvironmentProvider *)&v4 dealloc];
}

- (LACPhoneIntegrationEnvironmentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end