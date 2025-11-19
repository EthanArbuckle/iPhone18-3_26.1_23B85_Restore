@interface CALNTriggeredEventNotificationFeedbackHelper
+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(id)a3 event:(id)a4 hypothesis:(id)a5 travelAdvisoryTimelinessPeriod:(unint64_t)a6 foundInAppsEventTracker:(id)a7 suggestionsServiceLogger:(id)a8 ttlEventTracker:(id)a9;
+ (void)sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:(unint64_t)a3 sourceClientIdentifier:(id)a4 travelEngine:(id)a5;
@end

@implementation CALNTriggeredEventNotificationFeedbackHelper

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(id)a3 event:(id)a4 hypothesis:(id)a5 travelAdvisoryTimelinessPeriod:(unint64_t)a6 foundInAppsEventTracker:(id)a7 suggestionsServiceLogger:(id)a8 ttlEventTracker:(id)a9
{
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (a6)
  {
    v20 = [CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:a6];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 unsignedIntegerValue];
      v23 = v22;
      if (v15)
      {
        v48 = v22;
        v24 = [v15 suggestionInfo];

        if (v24)
        {
          [v17 trackPseudoEventInitialTimeToLeaveFired];
          v25 = [v15 suggestionInfo];
          v26 = [v25 uniqueKey];

          [v18 logEventShowedTimeToLeaveNotificationWithUniqueKey:v26];
          v27 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v51 = v14;
            v52 = 2112;
            v53 = v26;
            _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Tracked pseudo event initial time to leave fired and logged event showed time to leave notification for source client identifier = %{public}@, unique key = %@", buf, 0x16u);
          }
        }

        if (v16)
        {
          v45 = v18;
          v46 = v17;
          v44 = v14;
          v28 = +[CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerTransportTypeForGEOTransportType:](CALNTimeToLeaveEventTrackerUtilities, "ttlEventTrackerTransportTypeForGEOTransportType:", [v16 transportType]);
          v29 = [CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerETATypeForHypothesis:v16];
          v30 = v19;
          v31 = +[CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerTravelStateForHypothesisTravelState:](CALNTimeToLeaveEventTrackerUtilities, "ttlEventTrackerTravelStateForHypothesisTravelState:", [v16 travelState]);
          v32 = [v15 hasPredictedLocation];
          v33 = [v15 calendar];
          v34 = [v33 sharingStatus];
          v41 = v28;
          v43 = v30;
          v35 = v28;
          v14 = v44;
          [v30 trackEventFiredTTLAlertWithAlertType:v48 transportType:v35 etaType:v29 travelState:v31 hasSuggestedLocation:v32 isOnSharedCalendar:v34 != 0];
          v47 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
            v38 = [MEMORY[0x277CCABB0] numberWithBool:v32];
            v39 = [MEMORY[0x277CCABB0] numberWithBool:v34 != 0];
            *buf = 138544898;
            v51 = v44;
            v52 = 2114;
            v53 = v49;
            v54 = 2114;
            v55 = v42;
            v56 = 2114;
            v57 = v36;
            v58 = 2114;
            v59 = v37;
            v60 = 2114;
            v61 = v38;
            v62 = 2114;
            v63 = v39;
            _os_log_impl(&dword_242909000, v47, OS_LOG_TYPE_DEFAULT, "Tracked event fired ttl alert with source client identifier = %{public}@, alert type = %{public}@, transport type = %{public}@, eta type = %{public}@, travel state = %{public}@, has suggested location = %{public}@, is on shared calendar = %{public}@", buf, 0x48u);
          }

          v18 = v45;
          v17 = v46;
          v19 = v43;
        }

        else
        {
          v33 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:v14 event:v48 hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
          }
        }
      }

      else
      {
        v33 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:v14 event:v23 hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
        }
      }
    }

    else
    {
      v33 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:a6 event:? hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
      }
    }
  }

  else
  {
    v21 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:event:hypothesis:travelAdvisoryTimelinessPeriod:foundInAppsEventTracker:suggestionsServiceLogger:ttlEventTracker:];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (void)sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:(unint64_t)a3 sourceClientIdentifier:(id)a4 travelEngine:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Preparing to send feedback for posting notification with source client identifier = %{public}@, travel advisory timeliness status = %{public}@", &v15, 0x16u);
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [v8 sendFeedbackForPostingLeaveByNotificationForEventWithExternalURL:v7];
        v11 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = v7;
          v12 = "Sent feedback for posting leave by notification for event with external URL = %{public}@";
LABEL_14:
          _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_10:
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Determined not to send feedback for added notification with source client identifier = %{public}@, travel advisory timeliness status = %{public}@", &v15, 0x16u);
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    [v8 sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:v7];
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v7;
      v12 = "Sent feedback for posting leave now notification for event with external URL = %{public}@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (a3 == 3)
  {
    goto LABEL_10;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(uint64_t)a1 event:(uint64_t)a2 hypothesis:travelAdvisoryTimelinessPeriod:foundInAppsEventTracker:suggestionsServiceLogger:ttlEventTracker:.cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_242909000, v3, v4, "Cannot record display of initial time to leave alert because no hypothesis available to compute required supporting metrics for source client identifier = %{public}@, alert type = %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(uint64_t)a1 event:(uint64_t)a2 hypothesis:travelAdvisoryTimelinessPeriod:foundInAppsEventTracker:suggestionsServiceLogger:ttlEventTracker:.cold.2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_242909000, v3, v4, "Cannot record display of initial time to leave alert because could not get event to compute required supporting metrics for source client identifier = %{public}@, alert type = %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(uint64_t)a1 event:hypothesis:travelAdvisoryTimelinessPeriod:foundInAppsEventTracker:suggestionsServiceLogger:ttlEventTracker:.cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_242909000, v2, v3, "Could not get ttl event tracker alert type for travel advisory timeliness status = %{public}@, source client identifier = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:event:hypothesis:travelAdvisoryTimelinessPeriod:foundInAppsEventTracker:suggestionsServiceLogger:ttlEventTracker:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_242909000, v1, v2, "Cannot record display of initial time to leave alert with travel advisory status = %{public}@, source client identifier = %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end