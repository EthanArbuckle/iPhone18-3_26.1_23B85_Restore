@interface HKMedicationNotificationMetric
- (HKMedicationNotificationMetric)initWithType:(int64_t)a3 areHealthNotificationsAuthorized:(id)a4 dataSource:(id)a5;
- (NSDictionary)eventPayload;
- (id)description;
- (id)interactionTypeValue;
- (id)typeValue;
@end

@implementation HKMedicationNotificationMetric

- (HKMedicationNotificationMetric)initWithType:(int64_t)a3 areHealthNotificationsAuthorized:(id)a4 dataSource:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKMedicationNotificationMetric;
  v11 = [(HKMedicationNotificationMetric *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_areHealthNotificationsAuthorized, a4);
    v12->_interactionType = 0;
    v13 = [[HKMedicationAnalyticsGenericFieldsProvider alloc] initWithDataSource:v10];
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

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKMedicationNotificationMetric.m" lineNumber:63 description:{@"Unexpected Interaction Type %ld", self->_interactionType}];

  return 0;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMedicationNotificationMetric *)self typeValue];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [(HKMedicationNotificationMetric *)self areHealthNotificationsAuthorized];

  if (v5)
  {
    v6 = [(HKMedicationNotificationMetric *)self areHealthNotificationsAuthorized];
    [v3 setObject:v6 forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  }

  v7 = [(HKMedicationAnalyticsGenericFieldsProvider *)self->_genericDataProvider biologicalSex];
  v8 = [(HKMedicationAnalyticsGenericFieldsProvider *)self->_genericDataProvider activePairedWatchProductType];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"biologicalSex"];
  }

  genericDataProvider = self->_genericDataProvider;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(HKMedicationAnalyticsGenericFieldsProvider *)genericDataProvider bucketedUserAgeForCurrentDate:v10];
  [v3 setObject:v11 forKeyedSubscript:@"age"];

  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"activePairedWatchProductType"];
  }

  v12 = [(HKMedicationNotificationMetric *)self interactionTypeValue];

  if (v12)
  {
    v13 = [(HKMedicationNotificationMetric *)self interactionTypeValue];
    [v3 setObject:v13 forKeyedSubscript:@"action"];
  }

  v14 = [v3 copy];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMedicationNotificationMetric *)self eventPayload];
  v6 = [v3 stringWithFormat:@"%@:%p payload: %@", v4, self, v5];

  return v6;
}

@end