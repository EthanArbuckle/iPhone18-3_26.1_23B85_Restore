@interface _DKUserIsFirstBacklightOnAfterWakeupMonitor
+ (id)fetchMostRecentPastEventForStream:(id)a3;
+ (id)fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked;
+ (id)prettyPrintDateAsLocalTime:(id)a3;
+ (void)fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked;
- (BOOL)didQualifyingScreenLockEndInEligibilityPeriod;
- (BOOL)eligibleForFirstWakeUINotification;
- (BOOL)isFirstBacklightOn;
- (BOOL)isInternalBuild;
- (BOOL)isUINotificationEnabledForKey:(id)a3;
- (id)convertUTCToLocalTimeString:(id)a3;
- (id)firstWakeupEventWithValue:(BOOL)a3;
- (id)getNextSWUpdatePrediction;
- (void)deactivate;
- (void)dealloc;
- (void)didQualifyingScreenLockEndInEligibilityPeriod;
- (void)getNextSWUpdatePrediction;
- (void)handleBacklightTurnedOffEvent;
- (void)handleBacklightTurnedOnEvent;
- (void)handleScreenUnlockEvent;
- (void)receiveNotificationEvent:(id)a3;
- (void)recordFirstWakeup:(id)a3;
- (void)registerHandleBacklightEvents;
- (void)setInternalSettingsChangedNotficationHandler;
- (void)setUINotificationEligibility;
- (void)setupNotificationEligiblityPeriod;
- (void)showFirstWakeupUINotification;
- (void)showSoftwareUpdateUINotification;
- (void)showUINotification:(id)a3;
- (void)start;
- (void)stop;
- (void)unregisterHandleBacklightEvents;
@end

@implementation _DKUserIsFirstBacklightOnAfterWakeupMonitor

- (void)handleScreenUnlockEvent
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self firstWakeupEventWithValue:0];
  if ([(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self eligibleForFirstWakeUINotification])
  {
    if ([(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self SoftwareUpdateUINotificationEnabled])
    {
      [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self showSoftwareUpdateUINotification];
    }

    if ([(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self FirstWakeUINotificationEnabled])
    {
      [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self showFirstWakeupUINotification];
    }
  }

  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self recordFirstWakeup:v4];
}

- (BOOL)eligibleForFirstWakeUINotification
{
  v2 = [(_DKMonitor *)self currentEvent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 value];
    v5 = [v4 integerValue];
    v6 = [MEMORY[0x277CFE1A0] yes];
    v7 = v5 == [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKUserIsFirstBacklightOnAfterWakeupMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)prettyPrintDateAsLocalTime:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v4 setTimeZone:v5];

  [v4 setDateStyle:2];
  [v4 setTimeStyle:3];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 stringFromDate:v3];

  v8 = [v6 stringWithFormat:@"%@", v7];

  return v8;
}

+ (id)fetchMostRecentPastEventForStream:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCAC30];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 predicateWithFormat:@"(startDate < %@)", v5];

  v7 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v8 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  [v8 setPredicate:v6];
  v20[0] = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v8 setEventStreams:v9];

  v19 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [v8 setSortDescriptors:v10];

  [v8 setLimit:1];
  v11 = [MEMORY[0x277CFE208] knowledgeStore];
  v18 = 0;
  v12 = [v11 executeQuery:v8 error:&v18];
  v13 = v18;

  if (v13)
  {
    v14 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_DKUserIsFirstBacklightOnAfterWakeupMonitor fetchMostRecentPastEventForStream:v3];
    }

    v15 = 0;
  }

  else
  {
    v15 = [v12 firstObject];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isFirstBacklightOn
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEAA8] date];
  if ([(NSDateInterval *)self->eligibleForNotification containsDate:v4])
  {
    v5 = [objc_opt_class() fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 endDate];
      [v7 timeIntervalSinceNow];
      if (v8 >= -14400.0)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = ![(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self didQualifyingScreenLockEndInEligibilityPeriod];
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [objc_opt_class() prettyPrintDateAsLocalTime:v4];
      eligibleForNotification = self->eligibleForNotification;
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = eligibleForNotification;
      _os_log_debug_impl(&dword_22595A000, v10, OS_LOG_TYPE_DEBUG, "%@ is not in First wakeup of the Day Eligible notification period %@", &v15, 0x16u);
    }

    LOBYTE(v9) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)firstWakeupEventWithValue:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v5 = [MEMORY[0x277CFE318] userContext];
  v6 = [MEMORY[0x277CFE338] keyPathForFirstWakeupStatus];
  [v5 setObject:v4 forKeyedSubscript:v6];

  if (a3)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v7 = ;
  v8 = MEMORY[0x277CFE1D8];
  v9 = [MEMORY[0x277CFE298] userIsFirstBacklightOnAfterWakeup];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  v12 = [v8 eventWithStream:v9 startDate:v10 endDate:v11 value:v7];

  return v12;
}

- (void)setupNotificationEligiblityPeriod
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordFirstWakeup:(id)a3
{
  if (a3)
  {
    [(_DKMonitor *)self setCurrentEvent:a3 inferHistoricalState:1];
  }
}

- (BOOL)isInternalBuild
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 == v3;
}

- (BOOL)isUINotificationEnabledForKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreDuet"];
  [v4 synchronize];
  v5 = [MEMORY[0x277CFE0C8] instrumentationChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_DKUserIsFirstBacklightOnAfterWakeupMonitor isUINotificationEnabledForKey:];
  }

  v6 = [v4 objectForKey:@"DKCFirstWakeUINotification"];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v22 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v6 error:&v22];
  v13 = v22;
  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [_DKUserIsFirstBacklightOnAfterWakeupMonitor isUINotificationEnabledForKey:];
  }

  if (v12)
  {
    v14 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_DKUserIsFirstBacklightOnAfterWakeupMonitor isUINotificationEnabledForKey:];
    }
  }

  else
  {
LABEL_11:
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_DKUserIsFirstBacklightOnAfterWakeupMonitor isUINotificationEnabledForKey:];
    }

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  v16 = [v12 objectForKey:v3];
  v17 = v16 == 0;

  if (v17)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v18 = [v12 objectForKey:v3];
  v19 = [v18 BOOLValue];

LABEL_17:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)setUINotificationEligibility
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setInternalSettingsChangedNotficationHandler
{
  if ([(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self isInternalBuild])
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __91___DKUserIsFirstBacklightOnAfterWakeupMonitor_setInternalSettingsChangedNotficationHandler__block_invoke;
    v9 = &unk_27856F1C8;
    objc_copyWeak(&v10, &location);
    v3 = MEMORY[0x22AA6AF50](&v6);
    v4 = [@"com.apple.CoreDuet.UINotificationsettingsChanged" UTF8String];
    v5 = [(_DKMonitor *)self queue];
    notify_register_dispatch(v4, &self->internalSettingChangedNotificationToken, v5, v3);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)convertUTCToLocalTimeString:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"LLL d, yyyy - HH:mm:ss"];
  v6 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 stringFromDate:v4];

  return v7;
}

- (id)getNextSWUpdatePrediction
{
  v3 = objc_alloc_init(MEMORY[0x277CFE118]);
  v4 = [v3 getUnlockAndSoftwareUpdateTimes];
  v5 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)v4 getNextSWUpdatePrediction];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v4 objectForKey:@"su_start"];
  v8 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self convertUTCToLocalTimeString:v7];
  [v6 setObject:v8 forKey:@"start_time"];

  v9 = [v4 objectForKey:@"su_end"];
  v10 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self convertUTCToLocalTimeString:v9];
  [v6 setObject:v10 forKey:@"end_time"];

  v11 = [v4 objectForKey:@"unlock_start"];
  v12 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self convertUTCToLocalTimeString:v11];
  [v6 setObject:v12 forKey:@"unlock_time"];

  v13 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)v6 getNextSWUpdatePrediction];
  }

  return v6;
}

- (void)showUINotification:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(2, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___DKUserIsFirstBacklightOnAfterWakeupMonitor_showUINotification___block_invoke;
  v9[3] = &unk_27856F060;
  v10 = v3;
  v5 = v9;
  v6 = v3;
  v7 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_27856F178;
  v12 = v7;
  v13 = v5;
  v8 = v7;
  dispatch_async(v4, block);
}

- (void)showSoftwareUpdateUINotification
{
  v9 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self getNextSWUpdatePrediction];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v9 objectForKey:@"start_time"];
  v5 = [v9 objectForKey:@"end_time"];
  v6 = [v9 objectForKey:@"unlock_time"];
  v7 = [v3 stringWithFormat:@"%@\n%@ - %@\n %@ - %@\n %@ - %@\n\n %@", @"Duet detected an opportunity for software update\n", @"Update Start:", v4, @"Update End:", v5, @"Last Unlock:", v6, @"Is this a good time for automatic software update to occur tonight?\n"];

  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"alert_title", v7, @"alert_msg", @"Yes", @"alert_option_one", @"No", @"alert_option_two", @"Duet - Auto Software Update Prediction", @"response_alert_title", @"Please file a radar under component Duet | all", @"response_alert_msg", 0}];
  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self showUINotification:v8];
}

- (void)showFirstWakeupUINotification
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"alert_title", @"Was this your first unlock of the day after waking up?\n\n [Internal Only - provided by CoreDuet]", @"alert_msg", @"Yes", @"alert_option_one", @"No", @"alert_option_two", @"First unlock after wakeup", @"response_alert_title", @"Please file a radar under component DuetExpertCenter | Magic Moments", @"response_alert_msg", 0}];
  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self showUINotification:v3];
}

- (void)handleBacklightTurnedOffEvent
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self firstWakeupEventWithValue:0];
  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self recordFirstWakeup:v4];
}

- (void)handleBacklightTurnedOnEvent
{
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self firstWakeupEventWithValue:[(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self isFirstBacklightOn]];
  [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self recordFirstWakeup:v4];
}

- (void)receiveNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v6 = [v4 objectForKeyedSubscript:@"Notification"];
    v7 = [v6 isEqual:@"com.apple.springboard.lockstate"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"_State"];
      v9 = [v8 BOOLValue];

      if ((v9 & 1) == 0)
      {
        v10 = [(_DKMonitor *)self queue];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __72___DKUserIsFirstBacklightOnAfterWakeupMonitor_receiveNotificationEvent___block_invoke;
        v14[3] = &unk_27856F060;
        v14[4] = self;
        v11 = v14;
        v12 = os_transaction_create();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
        block[3] = &unk_27856F178;
        v16 = v12;
        v17 = v11;
        v13 = v12;
        dispatch_async(v10, block);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)registerHandleBacklightEvents
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("com.apple.coreduetd.firstBacklightHandler", v4);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke;
  v7[3] = &unk_27856F5B0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v6 = MEMORY[0x22AA6AF50](v7);
  notify_register_dispatch([@"com.apple.iokit.hid.displayStatus" UTF8String], &self->displayStatusNotifyToken, v5, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)unregisterHandleBacklightEvents
{
  displayStatusNotifyToken = self->displayStatusNotifyToken;
  if (displayStatusNotifyToken)
  {
    notify_cancel(displayStatusNotifyToken);
    self->displayStatusNotifyToken = 0;
  }
}

+ (id)fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked
{
  v3 = [MEMORY[0x277CFE298] deviceIsLockedStream];
  v4 = [a1 fetchMostRecentPastEventForStream:v3];

  v5 = [v4 value];
  v6 = [v5 integerValue];
  v7 = [MEMORY[0x277CFE1A0] yes];
  v8 = [v7 integerValue];

  if (v6 == v8)
  {
    v9 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[_DKUserIsFirstBacklightOnAfterWakeupMonitor fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_10;
  }

  if (v4)
  {
    v10 = [v4 endDate];
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 compare:v11];

    if (v12 == 1)
    {
      v9 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[_DKUserIsFirstBacklightOnAfterWakeupMonitor fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked];
      }

      goto LABEL_8;
    }
  }

  v13 = v4;
LABEL_10:

  return v13;
}

- (BOOL)didQualifyingScreenLockEndInEligibilityPeriod
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CFE260];
  v5 = [(NSDateInterval *)self->eligibleForNotification startDate];
  v6 = [(NSDateInterval *)self->eligibleForNotification endDate];
  v7 = [v4 predicateForEventsWithEndInDateRangeFrom:v5 to:v6];

  v8 = MEMORY[0x277CFE260];
  v9 = [MEMORY[0x277CFE1A0] yes];
  v10 = [v8 predicateForEventsWithCategoryValue:v9];

  v11 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v12 = MEMORY[0x277CCA920];
  v37[0] = v7;
  v37[1] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];
  [v11 setPredicate:v14];

  v15 = [MEMORY[0x277CFE298] deviceIsLockedStream];
  v36 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v11 setEventStreams:v16];

  v17 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v35 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [v11 setSortDescriptors:v18];

  [v11 setResultType:2];
  v19 = [MEMORY[0x277CFE208] knowledgeStore];
  v33 = 0;
  v20 = [v19 executeQuery:v11 error:&v33];
  v21 = v33;

  if (v21)
  {
    v22 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_DKUserIsFirstBacklightOnAfterWakeupMonitor didQualifyingScreenLockEndInEligibilityPeriod];
    }

    LOBYTE(v23) = 0;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v24 = *v30;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v29 + 1) + 8 * i) duration];
          if (v26 > 14400.0)
          {
            LOBYTE(v23) = 1;
            goto LABEL_15;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKUserIsFirstBacklightOnAfterWakeupMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self setupNotificationEligiblityPeriod];
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self registerHandleBacklightEvents];
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self setInternalSettingsChangedNotficationHandler];
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self setUINotificationEligibility];
    self->_enabled = 1;
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKUserIsFirstBacklightOnAfterWakeupMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  if (self->displayStatusNotifyToken)
  {
    [(_DKUserIsFirstBacklightOnAfterWakeupMonitor *)self unregisterHandleBacklightEvents];
  }

  self->_enabled = 0;
}

+ (void)fetchMostRecentPastEventForStream:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isUINotificationEnabledForKey:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isUINotificationEnabledForKey:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_22595A000, log, OS_LOG_TYPE_DEBUG, "Incompatible state type: %@", buf, 0xCu);
}

- (void)isUINotificationEnabledForKey:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_22595A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error unarchiving state: %@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)isUINotificationEnabledForKey:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isUINotificationEnabledForKey:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getNextSWUpdatePrediction
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMostRecentlyStoredScreenLockEventOnlyIfValueIsUnlocked
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)didQualifyingScreenLockEndInEligibilityPeriod
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end