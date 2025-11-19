@interface CALNDefaultTriggeredEventNotificationTransitionProvider
- (BOOL)_shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (BOOL)_shouldModifyForAlarmFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (BOOL)_shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (BOOL)_timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:(id)a3 oldNotificationData:(id)a4;
- (CALNDefaultTriggeredEventNotificationTransitionProvider)initWithTravelAdvisoryAuthority:(id)a3 dateProvider:(id)a4;
- (unint64_t)_transitionForAlarmFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (unint64_t)_transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (unint64_t)_transitionForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (unint64_t)transitionForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5 trigger:(unint64_t)a6;
@end

@implementation CALNDefaultTriggeredEventNotificationTransitionProvider

- (CALNDefaultTriggeredEventNotificationTransitionProvider)initWithTravelAdvisoryAuthority:(id)a3 dateProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CALNDefaultTriggeredEventNotificationTransitionProvider;
  v9 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_travelAdvisoryAuthority, a3);
    objc_storeStrong(&v10->_dateProvider, a4);
  }

  return v10;
}

- (unint64_t)transitionForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5 trigger:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == 2)
  {
    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:v10 sourceNotificationInfo:v11 oldNotificationData:v12];
  }

  else if (a6 == 1)
  {
    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForTravelAdviceReceivedForSourceClientIdentifier:v10 sourceNotificationInfo:v11 oldNotificationData:v12];
  }

  else
  {
    if (a6)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v13 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _transitionForAlarmFiredForSourceClientIdentifier:v10 sourceNotificationInfo:v11 oldNotificationData:v12];
  }

  v14 = v13;
LABEL_9:

  return v14;
}

- (unint64_t)_transitionForAlarmFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 alarmID];
  if (v11)
  {
    if ([(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldModifyForAlarmFiredForSourceClientIdentifier:v8 sourceNotificationInfo:v9 oldNotificationData:v10])
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

- (BOOL)_shouldModifyForAlarmFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      v16 = "Should not modify for alarm fired because old notification data is nil. source client identifier = %{public}@";
LABEL_11:
      _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_17;
  }

  if (([v9 isOffsetFromTravelTimeStart] & 1) == 0)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      v16 = "Should not modify for alarm fired that is not offset from travel time start. source client identifier = %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = [v10 lastTimeNotificationAdded];
  if (v11)
  {
    v12 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self dateProvider];
    v13 = [v12 now];

    v14 = [CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:v11 withinEightMinutesOfDate:v13];
    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Should modify for alarm fired that is offset from travel time start because last fire time of alert is within eight minutes. source client identifier = %{public}@", &v19, 0xCu);
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Should not modify for alarm fired that is offset from travel time start because last time notification added is nil. source client identifier = %{public}@", &v19, 0xCu);
    }

    v14 = 0;
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)_transitionForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:v10 sourceNotificationInfo:v9 oldNotificationData:v8];
  LODWORD(self) = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:v10 sourceNotificationInfo:v9 oldNotificationData:v8];

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

- (BOOL)_shouldAddNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 hypothesis];

  v12 = [v9 hypothesis];
  v13 = v12;
  if (!v11)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = v8;
      v15 = "Should not add notification because no new travel advice received, source client identifier = %{public}@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v12 && [v12 travelState] == 5)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = v8;
      v15 = "We've detected that the user has arrived at the event's location, source client identifier = %{public}@";
LABEL_12:
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, v15, &v27, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    if ([(CALNDefaultTriggeredEventNotificationTransitionProvider *)self _timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:v9 oldNotificationData:v10])
    {
      v14 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = v8;
        v15 = "Should not add notification because time to leave status has already been displayed. source client identifier = %{public}@";
        goto LABEL_12;
      }

LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    v19 = [v10 isOffsetFromTravelTimeStart];
    v14 = [v10 lastFireTimeOfAlertOffsetFromTravelTime];
    if (v14 && (-[CALNDefaultTriggeredEventNotificationTransitionProvider dateProvider](self, "dateProvider"), v20 = objc_claimAutoreleasedReturnValue(), [v20 now], v21 = objc_claimAutoreleasedReturnValue(), v22 = +[CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:withinEightMinutesOfDate:](CALNTravelAdvisoryUtilities, "isLastFireTimeOfAlert:withinEightMinutesOfDate:", v14, v21), v21, v20, (v19 & v22) == 1))
    {
      v23 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = v8;
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
          v28 = v8;
          _os_log_impl(&dword_242909000, v23, OS_LOG_TYPE_DEFAULT, "Should add notification because new travel advice received for existing alert. source client identifier = %{public}@", &v27, 0xCu);
        }

        v16 = 1;
        goto LABEL_31;
      }

      v23 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = v8;
        v24 = "Should not add notification because an alert already fired for the event and the user is traveling to the destination. source client identifier = %{public}@";
        goto LABEL_26;
      }
    }

    v16 = 0;
LABEL_31:

    goto LABEL_14;
  }

  v14 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543362;
    v28 = v8;
    _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Should add notification because new travel advice received and no associated notification data exists already, source client identifier = %{public}@", &v27, 0xCu);
  }

  v16 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_shouldRemoveNotificationForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [a4 hypothesis];
  v10 = [v9 travelState];
  v11 = 0;
  if (v8 && v10 == 5)
  {
    v12 = [v8 alarmID];

    if (v12)
    {
      v11 = 0;
    }

    else
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v7;
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Should remove notification because the user has arrived and we've only shown pure 'Time to Leave' alerts and no manual alerts for this event. Source client identifier to remove = %{public}@", &v16, 0xCu);
      }

      v11 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v9 hypothesis];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    v13 = [v11 travelState];
    v14 = [(CALNDefaultTriggeredEventNotificationTransitionProvider *)self travelAdvisoryAuthority];
    v15 = [v14 travelStateIndicatesTravelingTowardDestination:v13];

    v16 = 2;
    if ((v15 & 1) != 0 || v13 == 5)
    {
      goto LABEL_13;
    }

    if ([v9 travelAdvisoryTimelinessPeriod] == 2)
    {
      if ([v10 hasDisplayedLeaveNowMessage])
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
    [CALNDefaultTriggeredEventNotificationTransitionProvider _transitionForTimeToLeaveRefreshTimerFiredForSourceClientIdentifier:v8 sourceNotificationInfo:v17 oldNotificationData:?];
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (BOOL)_timeToLeaveStateAlreadyDisplayedBasedOnSourceNotificationInfo:(id)a3 oldNotificationData:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!v5)
  {
    LOBYTE(v9) = 0;
    goto LABEL_26;
  }

  v6 = [a3 travelAdvisoryTimelinessPeriod];
  v7 = v6;
  switch(v6)
  {
    case 3:
      v8 = [v5 hasDisplayedRunningLateMessage];
      break;
    case 2:
      v8 = [v5 hasDisplayedLeaveNowMessage];
      break;
    case 1:
      v8 = [v5 hasDisplayedLeaveByMessage];
      break;
    default:
      v9 = 0;
      goto LABEL_11;
  }

  v9 = v8;
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

    if ([v5 hasDisplayedLeaveByMessage])
    {
      v12 = @"Yes";
    }

    else
    {
      v12 = @"No";
    }

    if ([v5 hasDisplayedLeaveNowMessage])
    {
      v13 = @"Yes";
    }

    else
    {
      v13 = @"No";
    }

    v17 = 138544386;
    if ([v5 hasDisplayedRunningLateMessage])
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