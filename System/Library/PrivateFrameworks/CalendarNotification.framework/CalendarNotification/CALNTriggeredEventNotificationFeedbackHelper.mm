@interface CALNTriggeredEventNotificationFeedbackHelper
+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(id)identifier event:(id)event hypothesis:(id)hypothesis travelAdvisoryTimelinessPeriod:(unint64_t)period foundInAppsEventTracker:(id)tracker suggestionsServiceLogger:(id)logger ttlEventTracker:(id)eventTracker;
+ (void)sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:(unint64_t)period sourceClientIdentifier:(id)identifier travelEngine:(id)engine;
@end

@implementation CALNTriggeredEventNotificationFeedbackHelper

+ (void)recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:(id)identifier event:(id)event hypothesis:(id)hypothesis travelAdvisoryTimelinessPeriod:(unint64_t)period foundInAppsEventTracker:(id)tracker suggestionsServiceLogger:(id)logger ttlEventTracker:(id)eventTracker
{
  v64 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventCopy = event;
  hypothesisCopy = hypothesis;
  trackerCopy = tracker;
  loggerCopy = logger;
  eventTrackerCopy = eventTracker;
  if (period)
  {
    v20 = [CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:period];
    v21 = v20;
    if (v20)
    {
      unsignedIntegerValue = [v20 unsignedIntegerValue];
      v23 = unsignedIntegerValue;
      if (eventCopy)
      {
        v48 = unsignedIntegerValue;
        suggestionInfo = [eventCopy suggestionInfo];

        if (suggestionInfo)
        {
          [trackerCopy trackPseudoEventInitialTimeToLeaveFired];
          suggestionInfo2 = [eventCopy suggestionInfo];
          uniqueKey = [suggestionInfo2 uniqueKey];

          [loggerCopy logEventShowedTimeToLeaveNotificationWithUniqueKey:uniqueKey];
          v27 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v51 = identifierCopy;
            v52 = 2112;
            v53 = uniqueKey;
            _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Tracked pseudo event initial time to leave fired and logged event showed time to leave notification for source client identifier = %{public}@, unique key = %@", buf, 0x16u);
          }
        }

        if (hypothesisCopy)
        {
          v45 = loggerCopy;
          v46 = trackerCopy;
          v44 = identifierCopy;
          v28 = +[CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerTransportTypeForGEOTransportType:](CALNTimeToLeaveEventTrackerUtilities, "ttlEventTrackerTransportTypeForGEOTransportType:", [hypothesisCopy transportType]);
          v29 = [CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerETATypeForHypothesis:hypothesisCopy];
          v30 = eventTrackerCopy;
          v31 = +[CALNTimeToLeaveEventTrackerUtilities ttlEventTrackerTravelStateForHypothesisTravelState:](CALNTimeToLeaveEventTrackerUtilities, "ttlEventTrackerTravelStateForHypothesisTravelState:", [hypothesisCopy travelState]);
          hasPredictedLocation = [eventCopy hasPredictedLocation];
          calendar = [eventCopy calendar];
          sharingStatus = [calendar sharingStatus];
          v41 = v28;
          v43 = v30;
          v35 = v28;
          identifierCopy = v44;
          [v30 trackEventFiredTTLAlertWithAlertType:v48 transportType:v35 etaType:v29 travelState:v31 hasSuggestedLocation:hasPredictedLocation isOnSharedCalendar:sharingStatus != 0];
          v47 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
            v38 = [MEMORY[0x277CCABB0] numberWithBool:hasPredictedLocation];
            v39 = [MEMORY[0x277CCABB0] numberWithBool:sharingStatus != 0];
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

          loggerCopy = v45;
          trackerCopy = v46;
          eventTrackerCopy = v43;
        }

        else
        {
          calendar = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(calendar, OS_LOG_TYPE_ERROR))
          {
            [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:identifierCopy event:v48 hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
          }
        }
      }

      else
      {
        calendar = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(calendar, OS_LOG_TYPE_ERROR))
        {
          [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:identifierCopy event:v23 hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
        }
      }
    }

    else
    {
      calendar = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(calendar, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:period event:? hypothesis:? travelAdvisoryTimelinessPeriod:? foundInAppsEventTracker:? suggestionsServiceLogger:? ttlEventTracker:?];
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

+ (void)sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:(unint64_t)period sourceClientIdentifier:(id)identifier travelEngine:(id)engine
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  engineCopy = engine;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:period];
    v15 = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Preparing to send feedback for posting notification with source client identifier = %{public}@, travel advisory timeliness status = %{public}@", &v15, 0x16u);
  }

  if (period <= 1)
  {
    if (period)
    {
      if (period == 1)
      {
        [engineCopy sendFeedbackForPostingLeaveByNotificationForEventWithExternalURL:identifierCopy];
        v11 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = identifierCopy;
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
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:period];
      v15 = 138543618;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Determined not to send feedback for added notification with source client identifier = %{public}@, travel advisory timeliness status = %{public}@", &v15, 0x16u);
    }

    goto LABEL_15;
  }

  if (period == 2)
  {
    [engineCopy sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:identifierCopy];
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = identifierCopy;
      v12 = "Sent feedback for posting leave now notification for event with external URL = %{public}@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (period == 3)
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