@interface HDHRHypertensionNotificationDeliveryEvent
- (HDHRHypertensionNotificationDeliveryEvent)initWithProfile:(id)a3 type:(int64_t)a4;
- (id)_payloadForEventType:(int64_t)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HDHRHypertensionNotificationDeliveryEvent

- (HDHRHypertensionNotificationDeliveryEvent)initWithProfile:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HDHRHypertensionNotificationDeliveryEvent;
  v7 = [(HDHRHypertensionNotificationDeliveryEvent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_profile, v6);
    v10 = [v6 notificationManager];
    v8->_areHealthNotificationsAuthorized = [v10 areHealthNotificationsAuthorized];

    v8->_type = a4;
  }

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_areHealthNotificationsAuthorized];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  [v6 setObject:@"delivered" forKeyedSubscript:@"action"];
  v8 = [(HDHRHypertensionNotificationDeliveryEvent *)self _payloadForEventType:self->_type];
  [v6 setObject:v8 forKeyedSubscript:@"type"];

  v9 = [v5 healthDataSource];
  v10 = [v9 biologicalSexWithError:0];

  if (v10)
  {
    v11 = HKAnalyticsPropertyValueForBiologicalSex();
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [v6 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  v12 = [v5 healthDataSource];
  v13 = [v5 environmentDataSource];
  v14 = [v13 currentDate];
  v15 = [v12 ageWithCurrentDate:v14 error:0];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &unk_283CD3208;
  }

  [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v17 = [v5 environmentDataSource];
  v18 = [v17 activePairedDeviceProductType];
  [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  return v6;
}

- (id)_payloadForEventType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"possibleHypertension";
  }

  else
  {
    return off_278660C20[a3 - 1];
  }
}

@end