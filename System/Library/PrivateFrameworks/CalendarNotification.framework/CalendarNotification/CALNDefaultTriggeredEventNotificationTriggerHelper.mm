@interface CALNDefaultTriggeredEventNotificationTriggerHelper
- (BOOL)_eventWillEndBeforeUserArrivesForHypothesis:(id)a3 eventEndDate:(id)a4;
- (BOOL)_exceededMaximumTravelTimeThresholdForHypothesis:(id)a3;
- (BOOL)_shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (BOOL)_shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:(id)a3 oldNotificationData:(id)a4;
- (BOOL)_shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5;
- (BOOL)_shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:(id)a3 hypothesis:(id)a4 sourceNotificationInfo:(id)a5 oldNotificationData:(id)a6 hasExistingTravelAdvice:(BOOL)a7 satisfiesMinimumTravelTimeThreshold:(BOOL)a8;
- (BOOL)shouldTriggerForSourceClientIdentifier:(id)a3 trigger:(unint64_t)a4 sourceNotificationInfo:(id)a5 oldNotificationData:(id)a6;
- (CALNDefaultTriggeredEventNotificationTriggerHelper)initWithTravelAdvisoryAuthority:(id)a3 dateProvider:(id)a4 eventStoreProvider:(id)a5;
@end

@implementation CALNDefaultTriggeredEventNotificationTriggerHelper

- (CALNDefaultTriggeredEventNotificationTriggerHelper)initWithTravelAdvisoryAuthority:(id)a3 dateProvider:(id)a4 eventStoreProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CALNDefaultTriggeredEventNotificationTriggerHelper;
  v12 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_travelAdvisoryAuthority, a3);
    objc_storeStrong(&v13->_dateProvider, a4);
    objc_storeStrong(&v13->_eventStoreProvider, a5);
  }

  return v13;
}

- (BOOL)shouldTriggerForSourceClientIdentifier:(id)a3 trigger:(unint64_t)a4 sourceNotificationInfo:(id)a5 oldNotificationData:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v33 = 138544130;
    v34 = v10;
    v35 = 2114;
    v36 = v14;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Determining whether or not to trigger for source client identifier = %{public}@, trigger = %{public}@, source notification info = %@, old notification data = %@", &v33, 0x2Au);
  }

  v15 = [(EKEventStoreProvider *)self->_eventStoreProvider eventStore];
  v16 = [v15 blockList];

  v17 = [v11 organizerEmailAddress];
  if (v17)
  {
    v18 = v17;
    v19 = [v11 organizerEmailAddress];
    v20 = [v16 isBlockedWithEmail:v19];

    if (v20)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v11 organizerEmailAddress];
        v33 = 138412290;
        v34 = v22;
        v23 = "Should not trigger for notification. email = %@ is blocked";
LABEL_11:
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, v23, &v33, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  v24 = [v11 organizerPhoneNumber];
  if (v24)
  {
    v25 = v24;
    v26 = [v11 organizerPhoneNumber];
    v27 = [v16 isBlockedWithPhoneNumber:v26];

    if (v27)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v11 organizerEmailAddress];
        v33 = 138412290;
        v34 = v22;
        v23 = "Should not trigger for notification. phone number = %@ is blocked";
        goto LABEL_11;
      }

LABEL_12:

LABEL_13:
      v28 = 0;
      goto LABEL_23;
    }
  }

  if (a4 == 2)
  {
    v30 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:v10 sourceNotificationInfo:v11 oldNotificationData:v12];
    goto LABEL_22;
  }

  if (a4 == 1)
  {
    v30 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:v10 sourceNotificationInfo:v11 oldNotificationData:v12];
LABEL_22:
    v28 = v30;
    goto LABEL_23;
  }

  if (a4)
  {
    goto LABEL_13;
  }

  v29 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138543362;
    v34 = v10;
    _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Should trigger for alarm. source client identifier = %{public}@", &v33, 0xCu);
  }

  v28 = 1;
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 138543362;
    v57 = v8;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Determining if notification source should trigger for source client identifier = %{public}@", &v56, 0xCu);
  }

  if (![v9 forceDisplayOfNewTravelAdvisoryHypotheses])
  {
    if (([v9 allowsLocationAlerts] & 1) == 0)
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138543362;
        v57 = v8;
        v14 = "Should not trigger because location alerts are disabled. source client identifier = %{public}@";
        goto LABEL_13;
      }

LABEL_14:
      v13 = 0;
      goto LABEL_34;
    }

    if ([v9 travelAdvisoryDisabled])
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138543362;
        v57 = v8;
        v14 = "Should not trigger because event had its Time To Leave alarm removed. source client identifier = %{public}@";
LABEL_13:
        _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, v14, &v56, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v15 = [v9 hypothesis];
    v12 = v15;
    if (!(v10 | v15))
    {
      v16 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        v13 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v56 = 138543362;
      v57 = v8;
      v17 = "Should not trigger because nil hypothesis received and no existing notification data, source client identifier = %{public}@";
LABEL_18:
      _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, v17, &v56, 0xCu);
      goto LABEL_19;
    }

    v13 = v10 != 0;
    if (v10 && !v15)
    {
      v18 = [v10 hypothesis];

      if (!v18)
      {
        v16 = +[CALNLogSubsystem calendar];
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v56 = 138543362;
        v57 = v8;
        v17 = "Should not trigger because nil hypothesis received and existing notification data has no travel advice, source client identifier = %{public}@";
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    if (!v15)
    {
LABEL_29:
      v16 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:
        v13 = 1;
        goto LABEL_33;
      }

      v56 = 138543362;
      v57 = v8;
      v20 = "Should trigger because nil hypothesis received and notification data has existing travel advice for source client identifier = %{public}@";
LABEL_31:
      _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, v20, &v56, 0xCu);
      goto LABEL_32;
    }

    if ([v15 travelState] == 5)
    {
      v16 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 0];
        v56 = 138543618;
        v57 = v8;
        v58 = 2114;
        v59 = v19;
        _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "We've detected that the user has arrived at the event's location. source client url = %{public}@, has existing notification data = %{public}@", &v56, 0x16u);
      }

      goto LABEL_33;
    }

    if (v10)
    {
      v23 = [v10 hypothesis];
      if (v23)
      {
        v24 = v23;
        v25 = [v10 hypothesis];
        v26 = [v25 suggestedDepartureDate];

        if (v26)
        {
          v16 = +[CALNLogSubsystem calendar];
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          v56 = 138543362;
          v57 = v8;
          v20 = "Should trigger because notification has existing travel advice. source client identifier = %{public}@";
          goto LABEL_31;
        }
      }
    }

    v16 = [v9 endDate];
    if ([(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _eventWillEndBeforeUserArrivesForHypothesis:v12 eventEndDate:v16])
    {
      v27 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:

        goto LABEL_19;
      }

      v28 = MEMORY[0x277CCABB0];
      [v12 aggressiveTravelTime];
      v29 = [v28 numberWithDouble:?];
      v56 = 138543874;
      v57 = v8;
      v58 = 2114;
      v59 = v29;
      v60 = 2114;
      v61 = v16;
      _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Should not trigger because the user has not seen travel advisory information for this event yet and we've detected the user will not arrive until the event is over. Will not show travel advisory information. source client identifier = %{public}@ \nAggressive travel time: [%{public}@] is after event end date: [%{public}@].", &v56, 0x20u);
LABEL_43:

      goto LABEL_44;
    }

    if ([(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _exceededMaximumTravelTimeThresholdForHypothesis:v12])
    {
      v30 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = MEMORY[0x277CCABB0];
        [v12 conservativeTravelTime];
        v32 = [v31 numberWithDouble:?];
        v33 = MEMORY[0x277CCABB0];
        v34 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
        [v34 maximumAllowableTravelTime];
        v35 = [v33 numberWithDouble:?];
        v56 = 138543618;
        v57 = v32;
        v58 = 2114;
        v59 = v35;
        _os_log_impl(&dword_242909000, v30, OS_LOG_TYPE_DEFAULT, "Conservative Travel time [%{public}@] does not satisfy the initial emission travel time requirement since it is more than the maximum allowable travel time: [%{public}@]. Will not emit hypothesis as a result.", &v56, 0x16u);
      }

      goto LABEL_19;
    }

    v36 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
    v37 = [v36 doesHypothesisSatisfyMinimumAllowableTravelTime:v12];

    if (v10)
    {
      v38 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138543362;
        v57 = v8;
        _os_log_impl(&dword_242909000, v38, OS_LOG_TYPE_DEFAULT, "Found existing notification data for event. source client identifier = %{public}@", &v56, 0xCu);
      }

      v13 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:v8 hypothesis:v12 sourceNotificationInfo:v9 oldNotificationData:v10 hasExistingTravelAdvice:0 satisfiesMinimumTravelTimeThreshold:v37];
      goto LABEL_33;
    }

    if ((v37 & 1) == 0)
    {
      [v12 estimatedTravelTime];
      v46 = v45;
      v47 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
      [v47 minimumAllowableTravelTime];
      v49 = v48;

      v27 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
      v56 = 138543874;
      v57 = v8;
      v58 = 2114;
      v59 = v29;
      v60 = 2114;
      v61 = v50;
      _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Should not trigger because the predicated travel time is less than the minimum allowable travel time threshold so we can't provide a time to leave alert. source client identifier = %{public}@, predicated travel time = %{public}@, minimum allowable travel time threshold = %{public}@", &v56, 0x20u);

      goto LABEL_43;
    }

    v39 = [v9 startDate];
    v40 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
    v41 = [v40 now];
    v42 = [v39 CalIsBeforeDate:v41];

    if (v42)
    {
      v43 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v56 = 138543362;
        v57 = v8;
        v44 = "Should not trigger because the event's start date is before now and we don't have any existing notification data. source client identifier = %{public}@";
LABEL_57:
        _os_log_impl(&dword_242909000, v43, OS_LOG_TYPE_DEFAULT, v44, &v56, 0xCu);
      }
    }

    else
    {
      v51 = [v12 travelState];
      if (v51 == 2)
      {
        v43 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [MEMORY[0x277CCABB0] numberWithInteger:2];
          v56 = 138543618;
          v57 = v8;
          v58 = 2114;
          v59 = v52;
          _os_log_impl(&dword_242909000, v43, OS_LOG_TYPE_DEFAULT, "Should not trigger because the user is definitely traveling to the destination and we don't have any existing notification data for this event. source client identifier = %{public}@, travel state = %{public}@", &v56, 0x16u);
        }

        goto LABEL_67;
      }

      v53 = v51;
      v54 = [v9 eventHasAlarms];
      v43 = +[CALNLogSubsystem calendar];
      v55 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v53 != 3 || !v54)
      {
        if (v55)
        {
          v56 = 138543362;
          v57 = v8;
          _os_log_impl(&dword_242909000, v43, OS_LOG_TYPE_DEFAULT, "Should trigger because new travel advice received and no existing notification data for this event exists already. source client identifier = %{public}@", &v56, 0xCu);
        }

        v13 = 1;
        goto LABEL_68;
      }

      if (v55)
      {
        v56 = 138543362;
        v57 = v8;
        v44 = "Should not trigger because the user is traveling towards the destination, we don't have any existing notification data for this event and the event already has normal alarms on it, so the user will be alerted of this event at some point. source client identifier = %{public}@";
        goto LABEL_57;
      }
    }

LABEL_67:
    v13 = 0;
LABEL_68:

    goto LABEL_33;
  }

  v12 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 138543362;
    v57 = v8;
    _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Should trigger because forcing display of new travel advisory hypotheses for source client identifier = %{public}@", &v56, 0xCu);
  }

  v13 = 1;
LABEL_34:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:(id)a3 hypothesis:(id)a4 sourceNotificationInfo:(id)a5 oldNotificationData:(id)a6 hasExistingTravelAdvice:(BOOL)a7 satisfiesMinimumTravelTimeThreshold:(BOOL)a8
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [a5 isOffsetFromTravelTimeStart];
  v17 = [v15 lastFireTimeOfAlertOffsetFromTravelTime];

  if (v17)
  {
    v18 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
    v19 = [v18 now];
    v20 = [CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:v17 withinEightMinutesOfDate:v19];

    if ((v16 & v20) == 1)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543362;
        v29 = v13;
        v22 = "Should trigger because notification recently fired due to a travel time alert. source client identifier = %{public}@";
LABEL_8:
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, v22, &v28, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  v23 = [v14 travelState];
  v24 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
  LODWORD(v23) = [v24 travelStateIndicatesTravelingTowardDestination:v23];

  if (v23)
  {
    v21 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = v13;
      v22 = "Should trigger because an alert was already fired for the event and the user is traveling to the destination. source client identifier = %{public}@";
      goto LABEL_8;
    }

LABEL_9:
    v25 = 1;
LABEL_15:

    goto LABEL_16;
  }

  if (!a8)
  {
    v21 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = v13;
      _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Should not trigger because new travel hypothesis received for event that does not satisfy minimum travel time threshold. source client identifier = %{public}@", &v28, 0xCu);
    }

    v25 = 0;
    goto LABEL_15;
  }

  v25 = 1;
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)_shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 oldNotificationData:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (([v9 allowsLocationAlerts] & 1) == 0)
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v8;
        v12 = "Should not trigger for time to leave refresh timer fired because location alerts are disabled. source client identifier = %{public}@";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if ([v9 travelAdvisoryDisabled])
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v8;
        v12 = "Should not trigger because event had its Time To Leave alarm removed. source client identifier = %{public}@";
LABEL_10:
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, v12, &v22, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v16 = [v9 hypothesis];
    v11 = v16;
    if (v16)
    {
      v17 = [v16 travelState];
      v18 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
      v19 = [v18 travelStateIndicatesTravelingTowardDestination:v17];

      if ((v19 & 1) == 0 && v17 != 5)
      {
        if ([v9 travelAdvisoryTimelinessPeriod] == 2)
        {
          v13 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:v8 oldNotificationData:v10];
          goto LABEL_12;
        }

LABEL_24:
        v13 = 1;
        goto LABEL_12;
      }

      v20 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v8;
        v21 = "Should trigger because the user is traveling to the destination or has arrived. source client identifier = %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      v20 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v8;
        v21 = "Should trigger for time to leave refresh timer fired because we have no travel advice. source client identifier = %{public}@";
LABEL_22:
        _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, v21, &v22, 0xCu);
      }
    }

    goto LABEL_24;
  }

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = v8;
    v12 = "Should not trigger for time to leave refresh timer fired because no existing notification data. source client identifier = %{public}@";
    goto LABEL_10;
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:(id)a3 oldNotificationData:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 hasDisplayedLeaveNowMessage];
  v7 = +[CALNLogSubsystem calendar];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138543362;
      v13 = v5;
      v9 = "Should not trigger for time to leave because an alert was already fired for this event and showed a 'Leave Now' message. source client identifier = %{public}@";
LABEL_6:
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  else if (v8)
  {
    v12 = 138543362;
    v13 = v5;
    v9 = "Should trigger for time to leave because the user needs to see the 'Leave Now' alert. source client identifier = %{public}@";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 ^ 1;
}

- (BOOL)_eventWillEndBeforeUserArrivesForHypothesis:(id)a3 eventEndDate:(id)a4
{
  v6 = a4;
  [a3 aggressiveTravelTime];
  v8 = v7;
  v9 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
  v10 = [v9 now];
  v11 = [v10 dateByAddingTimeInterval:v8];

  LOBYTE(v9) = [v11 CalIsAfterDate:v6];
  return v9;
}

- (BOOL)_exceededMaximumTravelTimeThresholdForHypothesis:(id)a3
{
  [a3 conservativeTravelTime];
  v5 = v4;
  v6 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
  [v6 maximumAllowableTravelTime];
  v8 = v7;

  return v5 > v8;
}

@end