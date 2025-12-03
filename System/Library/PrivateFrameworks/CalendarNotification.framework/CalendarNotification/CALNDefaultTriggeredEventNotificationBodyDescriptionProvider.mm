@interface CALNDefaultTriggeredEventNotificationBodyDescriptionProvider
- (CALNDefaultTriggeredEventNotificationBodyDescriptionProvider)initWithTravelAdvisoryDescriptionGenerator:(id)generator dateProvider:(id)provider;
- (id)_bodyWithTravelAdvisoryForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info;
- (id)_bodyWithoutTravelAdvisoryForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info;
- (id)_ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:(unint64_t)period;
- (id)bodyForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info bodyContainsTravelAdvice:(BOOL *)advice;
@end

@implementation CALNDefaultTriggeredEventNotificationBodyDescriptionProvider

- (CALNDefaultTriggeredEventNotificationBodyDescriptionProvider)initWithTravelAdvisoryDescriptionGenerator:(id)generator dateProvider:(id)provider
{
  generatorCopy = generator;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CALNDefaultTriggeredEventNotificationBodyDescriptionProvider;
  v9 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_travelAdvisoryDescriptionGenerator, generator);
    objc_storeStrong(&v10->_dateProvider, provider);
  }

  return v10;
}

- (id)bodyForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info bodyContainsTravelAdvice:(BOOL *)advice
{
  identifierCopy = identifier;
  infoCopy = info;
  hypothesis = [infoCopy hypothesis];

  if (hypothesis && ([(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _bodyWithTravelAdvisoryForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    if (advice)
    {
      *advice = 1;
    }

    v13 = v12;
  }

  else
  {
    v13 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _bodyWithoutTravelAdvisoryForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy];
    v12 = 0;
  }

  return v13;
}

- (id)_bodyWithTravelAdvisoryForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  hypothesis = [infoCopy hypothesis];
  travelAdvisoryTimelinessPeriod = [infoCopy travelAdvisoryTimelinessPeriod];
  if (!hypothesis)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationBodyDescriptionProvider _bodyWithTravelAdvisoryForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v17];
    }

    goto LABEL_12;
  }

  v10 = travelAdvisoryTimelinessPeriod;
  if (!travelAdvisoryTimelinessPeriod)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationBodyDescriptionProvider _bodyWithTravelAdvisoryForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v17];
    }

    goto LABEL_12;
  }

  if (([MEMORY[0x277CF7CD8] shouldIncludeTravelAdvisoryDescription:hypothesis] & 1) == 0)
  {
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = infoCopy;
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Cannot create route hypothesis body for notification because it was determined that it should not be included. source client identifier = %{public}@, Notification info: %@.", buf, 0x16u);
    }

LABEL_12:

    v16 = 0;
    goto LABEL_13;
  }

  location = [infoCopy location];
  v12 = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self _ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:v10];
  v13 = v12;
  if (v12)
  {
    unsignedIntegerValue = [v12 unsignedIntegerValue];
    travelAdvisoryDescriptionGenerator = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self travelAdvisoryDescriptionGenerator];
    v16 = [travelAdvisoryDescriptionGenerator travelAdvisoryDescriptionOfType:unsignedIntegerValue hypothesis:hypothesis location:location];
  }

  else
  {
    v16 = 0;
  }

  if ([infoCopy hasSuggestedLocation] && objc_msgSend(v16, "length"))
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

- (id)_bodyWithoutTravelAdvisoryForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info
{
  infoCopy = info;
  startDate = [infoCopy startDate];
  isAllDay = [infoCopy isAllDay];
  dateProvider = [(CALNDefaultTriggeredEventNotificationBodyDescriptionProvider *)self dateProvider];
  v9 = [CALNDateStringUtils dateTimeStringForEventDate:startDate alwaysIncludeDate:1 allDayEvent:isAllDay dateProvider:dateProvider];

  v10 = MEMORY[0x277CF7CA0];
  location = [infoCopy location];
  locationWithoutPrediction = [infoCopy locationWithoutPrediction];
  preferredLocation = [infoCopy preferredLocation];
  conferenceURL = [infoCopy conferenceURL];
  conferenceURLIsBroadcast = [infoCopy conferenceURLIsBroadcast];

  v16 = [v10 locationStringForLocation:location locationWithoutPrediction:locationWithoutPrediction preferredLocation:preferredLocation conferenceURL:conferenceURL conferenceURLIsBroadcast:conferenceURLIsBroadcast options:32];
  string = [v16 string];

  v18 = v9;
  v19 = v18;
  if ([string length])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v18, string];
  }

  return v19;
}

- (id)_ttlDescriptionTypeNumberForTravelAdvisoryTimelinessPeriod:(unint64_t)period
{
  if (period > 1)
  {
    v4 = &unk_2855309F8;
    if (period != 3)
    {
      v4 = 0;
    }

    if (period == 2)
    {
      return &unk_2855309E0;
    }

    else
    {
      return v4;
    }
  }

  else if (period)
  {
    if (period == 1)
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