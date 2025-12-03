@interface LACPhoneIntegrationEnvironmentProvider
- (BOOL)isFeatureAvailable;
- (LACCompanionAuthenticationEnvironment)environment;
- (LACEligibilityHelping)eligibilityHelper;
- (LACPhoneIntegrationEnvironmentProvider)init;
- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)helper sharingManager:(id)manager workQueue:(id)queue;
- (LACSharingManaging)sharingManager;
- (void)dealloc;
@end

@implementation LACPhoneIntegrationEnvironmentProvider

- (LACCompanionAuthenticationEnvironment)environment
{
  selfCopy = self;
  v3 = [objc_allocWithZone(LACCompanionAuthenticationEnvironment) initWithFeatureAvailable:-[LACPhoneIntegrationEnvironmentProvider isFeatureAvailable](selfCopy featureSupported:{sel_isFeatureAvailable), LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter() & 1}];

  return v3;
}

- (BOOL)isFeatureAvailable
{
  selfCopy = self;
  if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
  {
    hasPairedDevices = [(LACPhoneIntegrationEnvironmentProvider *)selfCopy hasPairedDevices];
  }

  else
  {
    hasPairedDevices = 0;
  }

  return hasPairedDevices;
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

- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)helper sharingManager:(id)manager workQueue:(id)queue
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return LACPhoneIntegrationEnvironmentProvider.init(eligibilityHelper:sharingManager:work:)(helper, manager, queue);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_subscription);
  selfCopy = self;
  AKSEventsUnregister();
  v4.receiver = selfCopy;
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