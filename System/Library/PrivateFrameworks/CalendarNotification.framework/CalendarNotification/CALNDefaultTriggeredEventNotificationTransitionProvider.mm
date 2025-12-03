@interface CALNDefaultTriggeredEventNotificationTransitionProvider
- (BOOL)_shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (BOOL)_shouldModifyForAlarmFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (BOOL)_shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (BOOL)_timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (CALNDefaultTriggeredEventNotificationTransitionProvider)initWithTravelAdvisoryAuthority:(id)authority dateProvider:(id)provider;
- (unint64_t)_transitionForAlarmFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (unint64_t)_transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (unint64_t)_transitionForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (unint64_t)transitionForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data trigger:(unint64_t)trigger;
@end

@implementation CALNDefaultTriggeredEventNotificationTransitionProvider

- (CALNDefaultTriggeredEventNotificationTransitionProvider)initWithTravelAdvisoryAuthority:(id)authority dateProvider:(id)provider
{
  authorityCopy = authority;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CALNDefaultTriggeredEventNotificationTransitionProvider;
  v9 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_travelAdvisoryAuthority, authority);
    objc_storeStrong(&v10->_dateProvider, provider);
  }

  return v10;
}

- (unint64_t)transitionForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data trigger:(unint64_t)trigger
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  if (trigger == 2)
  {
    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
  }

  else if (trigger == 1)
  {
    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForTravelAdviceReceivedForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
  }

  else
  {
    if (trigger)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForAlarmFiredForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
  }

  v14 = v13;
LABEL_9:

  return v14;
}

- (unint64_t)_transitionForAlarmFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  alarmID = [infoCopy alarmID];
  if (alarmID)
  {
    if ([(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldModifyForAlarmFiredForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTriggeredEventNotificationTransitionProvider _transitionForAlarmFiredForSourceClientIdentifier:v13 sourceNotificationInfo:? oldNotificationData:?];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldModifyForAlarmFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  if (!dataCopy)
  {
    lastTimeNotificationAdded = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(lastTimeNotificationAdded, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = identifierCopy;
      v16 = "Should not modify for alarm fired because old notification data is nil. source client identifier = %{public}@";
LABEL_11:
      _os_log_impl(&dword_242909000, lastTimeNotificationAdded, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_17;
  }

  if (([infoCopy isOffsetFromTravelTimeStart] & 1) == 0)
  {
    lastTimeNotificationAdded = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(lastTimeNotificationAdded, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = identifierCopy;
      v16 = "Should not modify for alarm fired that is not offset from travel time start. source client identifier = %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  lastTimeNotificationAdded = [dataCopy lastTimeNotificationAdded];
  if (lastTimeNotificationAdded)
  {
    dateProvider = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self dateProvider];
    v13 = [dateProvider now];

    v14 = [CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:lastTimeNotificationAdded withinEightMinutesOfDate:v13];
    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = identifierCopy;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Should modify for alarm fired that is offset from travel time start because last fire time of alert is within eight minutes. source client identifier = %{public}@", &v19, 0xCu);
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = identifierCopy;
      _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Should not modify for alarm fired that is offset from travel time start because last time notification added is nil. source client identifier = %{public}@", &v19, 0xCu);
    }

    v14 = 0;
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)_transitionForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  dataCopy = data;
  infoCopy = info;
  identifierCopy = identifier;
  v11 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
  LODWORD(self) = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];

  v12 = 1;
  if (!self)
  {
    v12 = 2;
  }

  if (v11)
  {
    return 3;
  }

  else
  {
    return v12;
  }
}

- (BOOL)_shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  hypothesis = [infoCopy hypothesis];

  hypothesis2 = [infoCopy hypothesis];
  v13 = hypothesis2;
  if (!hypothesis)
  {
    lastFireTimeOfAlertOffsetFromTravelTime = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = identifierCopy;
      v15 = "Should not add notification because no new travel advice received, source client identifier = %{public}@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (hypothesis2 && [hypothesis2 travelState] == 5)
  {
    lastFireTimeOfAlertOffsetFromTravelTime = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = identifierCopy;
      v15 = "We've detected that the user has arrived at the event's location, source client identifier = %{public}@";
LABEL_12:
      _os_log_impl(&dword_242909000, lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT, v15, &v27, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (dataCopy)
  {
    if ([(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:infoCopy oldNotificationData:dataCopy])
    {
      lastFireTimeOfAlertOffsetFromTravelTime = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = identifierCopy;
        v15 = "Should not add notification because time to leave status has already been displayed. source client identifier = %{public}@";
        goto LABEL_12;
      }

LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    isOffsetFromTravelTimeStart = [dataCopy isOffsetFromTravelTimeStart];
    lastFireTimeOfAlertOffsetFromTravelTime = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];
    if (lastFireTimeOfAlertOffsetFromTravelTime && (-[CALNDefaultTriggeredEventNotificationTransitionProvider dateProvider](self, "dateProvider"), v20 = objc_claimAutoreleasedReturnValue(), [v20 now], v21 = objc_claimAutoreleasedReturnValue(), v22 = +[CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:withinEightMinutesOfDate:](CALNTravelAdvisoryUtilities, "isLastFireTimeOfAlert:withinEightMinutesOfDate:", lastFireTimeOfAlertOffsetFromTravelTime, v21), v21, v20, (isOffsetFromTravelTimeStart & v22) == 1))
    {
      v23 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = identifierCopy;
        v24 = "Should not add notification because notification recently fired due to a travel time alert. source client identifier = %{public}@";
LABEL_26:
        _os_log_impl(&dword_242909000, v23, OS_LOG_TYPE_DEFAULT, v24, &v27, 0xCu);
      }
    }

    else
    {
      if (!v13 || (v25 = [v13 travelState], -[CALNDefaultTriggeredEventNotificationTransitionProvider travelAdvisoryAuthority](self, "travelAdvisoryAuthority"), v26 = objc_claimAutoreleasedReturnValue(), LODWORD(v25) = objc_msgSend(v26, "travelStateIndicatesTravelingTowardDestination:", v25), v26, !v25))
      {
        v23 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = identifierCopy;
          _os_log_impl(&dword_242909000, v23, OS_LOG_TYPE_DEFAULT, "Should add notification because new travel advice received for existing alert. source client identifier = %{public}@", &v27, 0xCu);
        }

        v16 = 1;
        goto LABEL_31;
      }

      v23 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = identifierCopy;
        v24 = "Should not add notification because an alert already fired for the event and the user is traveling to the destination. source client identifier = %{public}@";
        goto LABEL_26;
      }
    }

    v16 = 0;
LABEL_31:

    goto LABEL_14;
  }

  lastFireTimeOfAlertOffsetFromTravelTime = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543362;
    v28 = identifierCopy;
    _os_log_impl(&dword_242909000, lastFireTimeOfAlertOffsetFromTravelTime, OS_LOG_TYPE_DEFAULT, "Should add notification because new travel advice received and no associated notification data exists already, source client identifier = %{public}@", &v27, 0xCu);
  }

  v16 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  hypothesis = [info hypothesis];
  travelState = [hypothesis travelState];
  v11 = 0;
  if (dataCopy && travelState == 5)
  {
    alarmID = [dataCopy alarmID];

    if (alarmID)
    {
      v11 = 0;
    }

    else
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = identifierCopy;
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Should remove notification because the user has arrived and we've only shown pure 'Time to Leave' alerts and no manual alerts for this event. Source client identifier to remove = %{public}@", &v16, 0xCu);
      }

      v11 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  if (dataCopy)
  {
    hypothesis = [infoCopy hypothesis];
    v12 = hypothesis;
    if (!hypothesis)
    {
      goto LABEL_12;
    }

    travelState = [hypothesis travelState];
    travelAdvisoryAuthority = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self travelAdvisoryAuthority];
    v15 = [travelAdvisoryAuthority travelStateIndicatesTravelingTowardDestination:travelState];

    v16 = 2;
    if ((v15 & 1) != 0 || travelState == 5)
    {
      goto LABEL_13;
    }

    if ([infoCopy travelAdvisoryTimelinessPeriod] == 2)
    {
      if ([dataCopy hasDisplayedLeaveNowMessage])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
LABEL_12:
      v16 = 2;
    }

LABEL_13:

    goto LABEL_14;
  }

  v17 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [CALNDefaultTriggeredEventNotificationTransitionProvider _transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v17 oldNotificationData:?];
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (BOOL)_timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    LOBYTE(v9) = 0;
    goto LABEL_26;
  }

  travelAdvisoryTimelinessPeriod = [info travelAdvisoryTimelinessPeriod];
  v7 = travelAdvisoryTimelinessPeriod;
  switch(travelAdvisoryTimelinessPeriod)
  {
    case 3:
      hasDisplayedRunningLateMessage = [dataCopy hasDisplayedRunningLateMessage];
      break;
    case 2:
      hasDisplayedRunningLateMessage = [dataCopy hasDisplayedLeaveNowMessage];
      break;
    case 1:
      hasDisplayedRunningLateMessage = [dataCopy hasDisplayedLeaveByMessage];
      break;
    default:
      v9 = 0;
      goto LABEL_11;
  }

  v9 = hasDisplayedRunningLateMessage;
LABEL_11:
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v11 = @"Yes";
    }

    else
    {
      v11 = @"No";
    }

    if ([dataCopy hasDisplayedLeaveByMessage])
    {
      v12 = @"Yes";
    }

    else
    {
      v12 = @"No";
    }

    if ([dataCopy hasDisplayedLeaveNowMessage])
    {
      v13 = @"Yes";
    }

    else
    {
      v13 = @"No";
    }

    v17 = 138544386;
    if ([dataCopy hasDisplayedRunningLateMessage])
    {
      v14 = @"Yes";
    }

    else
    {
      v14 = @"No";
    }

    v18 = v11;
    v19 = 2048;
    v20 = v7;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Time to leave status already displayed based on travel advisory timeliness period: (%{public}@), period = %lu, hasDisplayedLeaveByMessage = (%{public}@), hasDisplayedLeaveNowMessage = (%{public}@), hasDisplayedRunningLateMessage = (%{public}@)", &v17, 0x34u);
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:(uint64_t)a1 sourceNotificationInfo:(NSObject *)a2 oldNotificationData:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not compute transition for time to leave refresh timer fired because could not find existing notification data. source client identifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end