@interface HDHRNotificationMetric
- (HDHRNotificationMetric)initWithNotificationType:(id)type areHealthNotificationsAuthorized:(BOOL)authorized;
- (id)eventPayload;
- (void)submit;
@end

@implementation HDHRNotificationMetric

- (HDHRNotificationMetric)initWithNotificationType:(id)type areHealthNotificationsAuthorized:(BOOL)authorized
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HDHRNotificationMetric;
  v7 = [(HDHRNotificationMetric *)&v14 init];
  if (v7)
  {
    v8 = [typeCopy copy];
    notificationType = v7->_notificationType;
    v7->_notificationType = v8;

    doNotDisturbOn = v7->_doNotDisturbOn;
    v7->_doNotDisturbOn = &unk_283CD27D0;

    notificationThreshold = v7->_notificationThreshold;
    v7->_notificationThreshold = &unk_283CD27D0;

    cardioFitnessNotificationType = v7->_cardioFitnessNotificationType;
    v7->_cardioFitnessNotificationType = @"-1";

    v7->_irregularRhythmNotificationsAlgorithmVersion = -1;
    v7->_areHealthNotificationsAuthorized = authorized;
  }

  return v7;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_notificationType forKeyedSubscript:@"notificationType"];
  [v3 setObject:self->_doNotDisturbOn forKeyedSubscript:@"isDoNotDisturbOn"];
  [v3 setObject:self->_notificationThreshold forKeyedSubscript:@"notificationThreshold"];
  [v3 setObject:self->_cardioFitnessNotificationType forKeyedSubscript:@"cardioFitnessNotificationType"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_irregularRhythmNotificationsAlgorithmVersion];
  [v3 setObject:v4 forKeyedSubscript:@"versionIRN"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_areHealthNotificationsAuthorized];
  [v3 setObject:v5 forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  v6 = [v3 copy];

  return v6;
}

- (void)submit
{
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    eventName = [objc_opt_class() eventName];
    eventPayload = [(HDHRNotificationMetric *)self eventPayload];
    AnalyticsSendEvent();
  }
}

@end