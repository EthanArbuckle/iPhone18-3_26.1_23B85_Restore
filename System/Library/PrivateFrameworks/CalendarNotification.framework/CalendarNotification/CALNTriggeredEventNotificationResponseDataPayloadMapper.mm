@interface CALNTriggeredEventNotificationResponseDataPayloadMapper
+ (id)_hypothesisDataForNotificationData:(id)data;
+ (id)_hypothesisFromPayload:(id)payload;
+ (id)notificationResponseDataForPayload:(id)payload;
+ (id)payloadForNotificationResponseData:(id)data;
+ (void)_setHypothesisDataFromNotificationData:(id)data inPayload:(id)payload;
+ (void)_setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:(id)data inPayload:(id)payload;
@end

@implementation CALNTriggeredEventNotificationResponseDataPayloadMapper

+ (id)payloadForNotificationResponseData:(id)data
{
  v4 = MEMORY[0x277CBEB38];
  dataCopy = data;
  dictionary = [v4 dictionary];
  [self _setHypothesisDataFromNotificationData:dataCopy inPayload:dictionary];
  [self _setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:dataCopy inPayload:dictionary];

  v7 = [dictionary copy];

  return v7;
}

+ (id)notificationResponseDataForPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [self _hypothesisFromPayload:payloadCopy];
  v6 = [self _lastFireTimeOfAlertOffsetFromTravelTimeFromPayload:payloadCopy];

  v7 = [[CALNTriggeredEventNotificationResponseData alloc] initWithHypothesis:v5 lastFireTimeOfAlertOffsetFromTravelTime:v6];

  return v7;
}

+ (id)_hypothesisFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataHypothesisDataPayloadKey"];
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CALNTriggeredEventNotificationResponseDataPayloadMapper *)v5 _hypothesisFromPayload:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_setHypothesisDataFromNotificationData:(id)data inPayload:(id)payload
{
  payloadCopy = payload;
  v6 = [self _hypothesisDataForNotificationData:data];
  if (v6)
  {
    [payloadCopy setObject:v6 forKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataHypothesisDataPayloadKey"];
  }
}

+ (id)_hypothesisDataForNotificationData:(id)data
{
  hypothesis = [data hypothesis];
  if (hypothesis)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:hypothesis requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CALNTriggeredEventNotificationResponseDataPayloadMapper *)v5 _hypothesisDataForNotificationData:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:(id)data inPayload:(id)payload
{
  payloadCopy = payload;
  lastFireTimeOfAlertOffsetFromTravelTime = [data lastFireTimeOfAlertOffsetFromTravelTime];
  if (lastFireTimeOfAlertOffsetFromTravelTime)
  {
    [payloadCopy setObject:lastFireTimeOfAlertOffsetFromTravelTime forKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataLastFireTimeOfAlertOffsetFromTravelTimePayloadKey"];
  }
}

+ (void)_hypothesisFromPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not unarchive hypothesis. error = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_hypothesisDataForNotificationData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not archive hypothesis. error = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end