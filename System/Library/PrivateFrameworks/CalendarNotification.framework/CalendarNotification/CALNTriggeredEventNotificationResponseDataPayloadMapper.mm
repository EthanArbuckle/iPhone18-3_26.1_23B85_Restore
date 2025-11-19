@interface CALNTriggeredEventNotificationResponseDataPayloadMapper
+ (id)_hypothesisDataForNotificationData:(id)a3;
+ (id)_hypothesisFromPayload:(id)a3;
+ (id)notificationResponseDataForPayload:(id)a3;
+ (id)payloadForNotificationResponseData:(id)a3;
+ (void)_setHypothesisDataFromNotificationData:(id)a3 inPayload:(id)a4;
+ (void)_setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:(id)a3 inPayload:(id)a4;
@end

@implementation CALNTriggeredEventNotificationResponseDataPayloadMapper

+ (id)payloadForNotificationResponseData:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  [a1 _setHypothesisDataFromNotificationData:v5 inPayload:v6];
  [a1 _setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:v5 inPayload:v6];

  v7 = [v6 copy];

  return v7;
}

+ (id)notificationResponseDataForPayload:(id)a3
{
  v4 = a3;
  v5 = [a1 _hypothesisFromPayload:v4];
  v6 = [a1 _lastFireTimeOfAlertOffsetFromTravelTimeFromPayload:v4];

  v7 = [[CALNTriggeredEventNotificationResponseData alloc] initWithHypothesis:v5 lastFireTimeOfAlertOffsetFromTravelTime:v6];

  return v7;
}

+ (id)_hypothesisFromPayload:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataHypothesisDataPayloadKey"];
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

+ (void)_setHypothesisDataFromNotificationData:(id)a3 inPayload:(id)a4
{
  v7 = a4;
  v6 = [a1 _hypothesisDataForNotificationData:a3];
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataHypothesisDataPayloadKey"];
  }
}

+ (id)_hypothesisDataForNotificationData:(id)a3
{
  v3 = [a3 hypothesis];
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
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

+ (void)_setLastFireTimeOfAlertOffsetFromTravelTimeFromNotificationData:(id)a3 inPayload:(id)a4
{
  v6 = a4;
  v5 = [a3 lastFireTimeOfAlertOffsetFromTravelTime];
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"com.apple.calendar.notifications.CALNTriggeredEventNotificationResponseDataLastFireTimeOfAlertOffsetFromTravelTimePayloadKey"];
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