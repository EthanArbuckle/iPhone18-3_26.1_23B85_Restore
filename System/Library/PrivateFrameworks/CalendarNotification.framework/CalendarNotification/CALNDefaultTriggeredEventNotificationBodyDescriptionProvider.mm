@interface CALNDefaultTriggeredEventNotificationBodyDescriptionProvider
- (CALNDefaultTriggeredEventNotificationBodyDescriptionProvider)initWithTravelAdvisoryDescriptionGenerator:(id)a3 dateProvider:(id)a4;
- (id)_bodyWithTravelAdvisoryForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4;
- (id)_bodyWithoutTravelAdvisoryForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4;
- (id)_ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:(unint64_t)a3;
- (id)bodyForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 bodyContainsTravelAdvice:(BOOL *)a5;
@end

@implementation CALNDefaultTriggeredEventNotificationBodyDescriptionProvider

- (CALNDefaultTriggeredEventNotificationBodyDescriptionProvider)initWithTravelAdvisoryDescriptionGenerator:(id)a3 dateProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CALNDefaultTriggeredEventNotificationBodyDescriptionProvider;
  v9 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_travelAdvisoryDescriptionGenerator, a3);
    objc_storeStrong(&v10->_dateProvider, a4);
  }

  return v10;
}

- (id)bodyForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 bodyContainsTravelAdvice:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 hypothesis];

  if (v10 && ([(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _bodyWithTravelAdvisoryForSourceClientIdentifier:v8 sourceNotificationInfo:v9], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    if (a5)
    {
      *a5 = 1;
    }

    v13 = v12;
  }

  else
  {
    v13 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _bodyWithoutTravelAdvisoryForSourceClientIdentifier:v8 sourceNotificationInfo:v9];
    v12 = 0;
  }

  return v13;
}

- (id)_bodyWithTravelAdvisoryForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 hypothesis];
  v9 = [v7 travelAdvisoryTimelinessPeriod];
  if (!v8)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationBodyDescriptionProvider _bodyWithTravelAdvisoryForSourceClientIdentifier:v6 sourceNotificationInfo:v17];
    }

    goto LABEL_12;
  }

  v10 = v9;
  if (!v9)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationBodyDescriptionProvider _bodyWithTravelAdvisoryForSourceClientIdentifier:v6 sourceNotificationInfo:v17];
    }

    goto LABEL_12;
  }

  if (([MEMORY[0x277CF7CD8] shouldIncludeTravelAdvisoryDescription:v8] & 1) == 0)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Cannot create route hypothesis body for notification because it was determined that it should not be included. source client identifier = %{public}@, Notification info: %@.", buf, 0x16u);
    }

LABEL_12:

    v16 = 0;
    goto LABEL_13;
  }

  v11 = [v7 location];
  v12 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:v10];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 unsignedIntegerValue];
    v15 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self travelAdvisoryDescriptionGenerator];
    v16 = [v15 travelAdvisoryDescriptionOfType:v14 hypothesis:v8 location:v11];
  }

  else
  {
    v16 = 0;
  }

  if ([v7 hasSuggestedLocation] && objc_msgSend(v16, "length"))
  {
    v20 = +[CALNBundle bundle];
    v21 = [v20 localizedStringForKey:@"Suggested Location: %@" value:&stru_28551FB98 table:0];
    v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, v16];

    v16 = v22;
  }

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_bodyWithoutTravelAdvisoryForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 startDate];
  v7 = [v5 isAllDay];
  v8 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self dateProvider];
  v9 = [CALNDateStringUtils dateTimeStringForEventDate:v6 alwaysIncludeDate:1 allDayEvent:v7 dateProvider:v8];

  v10 = MEMORY[0x277CF7CA0];
  v11 = [v5 location];
  v12 = [v5 locationWithoutPrediction];
  v13 = [v5 preferredLocation];
  v14 = [v5 conferenceURL];
  v15 = [v5 conferenceURLIsBroadcast];

  v16 = [v10 locationStringForLocation:v11 locationWithoutPrediction:v12 preferredLocation:v13 conferenceURL:v14 conferenceURLIsBroadcast:v15 options:32];
  v17 = [v16 string];

  v18 = v9;
  v19 = v18;
  if ([v17 length])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v18, v17];
  }

  return v19;
}

- (id)_ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:(unint64_t)a3
{
  if (a3 > 1)
  {
    v4 = &unk_2855309F8;
    if (a3 != 3)
    {
      v4 = 0;
    }

    if (a3 == 2)
    {
      return &unk_2855309E0;
    }

    else
    {
      return v4;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return &unk_2855309C8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationBodyDescriptionProvider _ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:v5];
    }

    return 0;
  }
}

- (void)_bodyWithTravelAdvisoryForSourceClientIdentifier:(uint64_t)a1 sourceNotificationInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Cannot create body with travel advisory for notification without travel advisory timeliness status. source client identifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_bodyWithTravelAdvisoryForSourceClientIdentifier:(uint64_t)a1 sourceNotificationInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Cannot create route hypothesis body for notification without a hypothesis. source client identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end