@interface HDHRNotificationMetric
- (HDHRNotificationMetric)initWithNotificationType:(id)a3 areHealthNotificationsAuthorized:(BOOL)a4;
- (id)eventPayload;
- (void)submit;
@end

@implementation HDHRNotificationMetric

- (HDHRNotificationMetric)initWithNotificationType:(id)a3 areHealthNotificationsAuthorized:(BOOL)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HDHRNotificationMetric;
  v7 = [(HDHRNotificationMetric *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    notificationType = v7->_notificationType;
    v7->_notificationType = v8;

    doNotDisturbOn = v7->_doNotDisturbOn;
    v7->_doNotDisturbOn = &unk_283CD27D0;

    notificationThreshold = v7->_notificationThreshold;
    v7->_notificationThreshold = &unk_283CD27D0;

    cardioFitnessNotificationType = v7->_cardioFitnessNotificationType;
    v7->_cardioFitnessNotificationType = @"-1";

    v7->_irregularRhythmNotificationsAlgorithmVersion = -1;
    v7->_areHealthNotificationsAuthorized = a4;
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
    v4 = [objc_opt_class() eventName];
    v3 = [(HDHRNotificationMetric *)self eventPayload];
    AnalyticsSendEvent();
  }
}

@end