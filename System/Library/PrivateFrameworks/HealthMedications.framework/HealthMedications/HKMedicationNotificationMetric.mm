@interface HKMedicationNotificationMetric
- (HKMedicationNotificationMetric)initWithType:(int64_t)type areHealthNotificationsAuthorized:(id)authorized dataSource:(id)source;
- (NSDictionary)eventPayload;
- (id)description;
- (id)interactionTypeValue;
- (id)typeValue;
@end

@implementation HKMedicationNotificationMetric

- (HKMedicationNotificationMetric)initWithType:(int64_t)type areHealthNotificationsAuthorized:(id)authorized dataSource:(id)source
{
  authorizedCopy = authorized;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HKMedicationNotificationMetric;
  v11 = [(HKMedicationNotificationMetric *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_areHealthNotificationsAuthorized, authorized);
    v12->_interactionType = 0;
    v13 = [[HKMedicationAnalyticsGenericFieldsProvider alloc] initWithDataSource:sourceCopy];
    genericDataProvider = v12->_genericDataProvider;
    v12->_genericDataProvider = v13;
  }

  return v12;
}

- (id)typeValue
{
  if (self->_type == 1)
  {
    return @"NotificationSent";
  }

  else
  {
    return @"NotificationInteractedWith";
  }
}

- (id)interactionTypeValue
{
  interactionType = self->_interactionType;
  if (interactionType < 7)
  {
    return qword_2796CAD40[interactionType];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKMedicationNotificationMetric.m" lineNumber:63 description:{@"Unexpected Interaction Type %ld", self->_interactionType}];

  return 0;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  typeValue = [(HKMedicationNotificationMetric *)self typeValue];
  [v3 setObject:typeValue forKeyedSubscript:@"type"];

  areHealthNotificationsAuthorized = [(HKMedicationNotificationMetric *)self areHealthNotificationsAuthorized];

  if (areHealthNotificationsAuthorized)
  {
    areHealthNotificationsAuthorized2 = [(HKMedicationNotificationMetric *)self areHealthNotificationsAuthorized];
    [v3 setObject:areHealthNotificationsAuthorized2 forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  }

  biologicalSex = [(HKMedicationAnalyticsGenericFieldsProvider *)self->_genericDataProvider biologicalSex];
  activePairedWatchProductType = [(HKMedicationAnalyticsGenericFieldsProvider *)self->_genericDataProvider activePairedWatchProductType];
  if (biologicalSex)
  {
    [v3 setObject:biologicalSex forKeyedSubscript:@"biologicalSex"];
  }

  genericDataProvider = self->_genericDataProvider;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(HKMedicationAnalyticsGenericFieldsProvider *)genericDataProvider bucketedUserAgeForCurrentDate:date];
  [v3 setObject:v11 forKeyedSubscript:@"age"];

  if (activePairedWatchProductType)
  {
    [v3 setObject:activePairedWatchProductType forKeyedSubscript:@"activePairedWatchProductType"];
  }

  interactionTypeValue = [(HKMedicationNotificationMetric *)self interactionTypeValue];

  if (interactionTypeValue)
  {
    interactionTypeValue2 = [(HKMedicationNotificationMetric *)self interactionTypeValue];
    [v3 setObject:interactionTypeValue2 forKeyedSubscript:@"action"];
  }

  v14 = [v3 copy];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  eventPayload = [(HKMedicationNotificationMetric *)self eventPayload];
  v6 = [v3 stringWithFormat:@"%@:%p payload: %@", v4, self, eventPayload];

  return v6;
}

@end