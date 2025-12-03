@interface HDHRHypertensionNotificationDeliveryEvent
- (HDHRHypertensionNotificationDeliveryEvent)initWithProfile:(id)profile type:(int64_t)type;
- (id)_payloadForEventType:(int64_t)type;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDHRHypertensionNotificationDeliveryEvent

- (HDHRHypertensionNotificationDeliveryEvent)initWithProfile:(id)profile type:(int64_t)type
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDHRHypertensionNotificationDeliveryEvent;
  v7 = [(HDHRHypertensionNotificationDeliveryEvent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_profile, profileCopy);
    notificationManager = [profileCopy notificationManager];
    v8->_areHealthNotificationsAuthorized = [notificationManager areHealthNotificationsAuthorized];

    v8->_type = type;
  }

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_areHealthNotificationsAuthorized];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  [dictionary setObject:@"delivered" forKeyedSubscript:@"action"];
  v8 = [(HDHRHypertensionNotificationDeliveryEvent *)self _payloadForEventType:self->_type];
  [dictionary setObject:v8 forKeyedSubscript:@"type"];

  healthDataSource = [sourceCopy healthDataSource];
  v10 = [healthDataSource biologicalSexWithError:0];

  if (v10)
  {
    v11 = HKAnalyticsPropertyValueForBiologicalSex();
    [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [dictionary setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v15 = [healthDataSource2 ageWithCurrentDate:currentDate error:0];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &unk_283CD3208;
  }

  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  environmentDataSource2 = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource2 activePairedDeviceProductType];
  [dictionary setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  return dictionary;
}

- (id)_payloadForEventType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return @"possibleHypertension";
  }

  else
  {
    return off_278660C20[type - 1];
  }
}

@end