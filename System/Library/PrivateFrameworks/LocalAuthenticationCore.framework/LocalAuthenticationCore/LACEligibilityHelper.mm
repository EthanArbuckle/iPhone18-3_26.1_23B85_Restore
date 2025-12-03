@interface LACEligibilityHelper
+ (LACEligibilityHelper)sharedInstance;
- (BOOL)isEligibleForDomain:(id)domain;
- (LACEligibilityHelper)init;
- (NSArray)registeredNotificationsForDomains;
- (void)dealloc;
- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification;
- (void)setRegisteredNotificationsForDomains:(id)domains;
@end

@implementation LACEligibilityHelper

+ (LACEligibilityHelper)sharedInstance
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = static LACEligibilityHelper.sharedInstance;

  return v3;
}

- (NSArray)registeredNotificationsForDomains
{
  v2 = *(self + OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains);
  type metadata accessor for LACEligibilityDomain(0);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setRegisteredNotificationsForDomains:(id)domains
{
  type metadata accessor for LACEligibilityDomain(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains);
  *(self + OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains) = v4;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___LACEligibilityHelper_darwinNotificationCenter);
  selfCopy = self;
  [v2 removeObserver_];
  v4.receiver = selfCopy;
  v4.super_class = LACEligibilityHelper;
  [(LACEligibilityHelper *)&v4 dealloc];
}

- (BOOL)isEligibleForDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  LOBYTE(self) = LACEligibilityHelper.isEligible(forDomain:)(domainCopy);

  return self & 1;
}

- (LACEligibilityHelper)init
{
  v3 = self + OBJC_IVAR___LACEligibilityHelper_cache;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20LACEligibilityDomaina_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v3 = 0;
  *(v3 + 1) = v5;
  *(self + OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains) = v4;
  v6 = OBJC_IVAR___LACEligibilityHelper_darwinNotificationCenter;
  *(self + v6) = [objc_opt_self() sharedInstance];
  v8.receiver = self;
  v8.super_class = LACEligibilityHelper;
  return [(LACEligibilityHelper *)&v8 init];
}

- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification
{
  notificationCopy = notification;
  selfCopy = self;
  if (LACDarwinNotificationsEqual(notificationCopy, @"com.apple.os-eligibility-domain.change.tellurium"))
  {
    v6 = (selfCopy + OBJC_IVAR___LACEligibilityHelper_cache);
    os_unfair_lock_lock((selfCopy + OBJC_IVAR___LACEligibilityHelper_cache));
    specialized Dictionary.subscript.setter(2, @"LACEligibilityDomainPhoneIntegration");
    os_unfair_lock_unlock(v6);
  }
}

@end