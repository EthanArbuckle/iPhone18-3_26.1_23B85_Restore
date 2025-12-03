@interface _EKAlarmEngine
+ (_EKAlarmEngine)sharedInstance;
+ (id)requestedDarwinNotifications;
- (BOOL)_haveAlarmsChanged:(id)changed;
- (BOOL)_isAlarmAcknowledgedWithAcknowledgedDate:(id)date fireDate:(id)fireDate;
- (BOOL)_isDataProtected;
- (BOOL)_populateAlarmTable:(id)table;
- (_EKAlarmEngine)init;
- (id)_alertInfoAlarmIDFromEKAlarm:(id)alarm;
- (id)_alertInfoAlarmIDFromSideAlarm:(id)alarm;
- (id)_dateFormatter;
- (void)_calendarNotificationSettingChanged;
- (void)_databaseChanged;
- (void)_globalAlarmPreferencesChanged;
- (void)_installTimerWithFireDate:(id)date;
- (void)_killSyncTimer;
- (void)_killTimer;
- (void)_notifyAlarmsFired:(id)fired;
- (void)_populateFinished;
- (void)_protectedDataDidBecomeAvailable;
- (void)_rescheduleTimer;
- (void)_resetSyncTimer;
- (void)_simulatedOffsetChanged:(id)changed;
- (void)_storeAlarms:(id)alarms nextScheduleLimit:(id)limit eventStore:(id)store;
- (void)_syncDidEnd;
- (void)_syncDidStart;
- (void)_syncTimerFired:(id)fired;
- (void)_timeDidChangeSignificantly;
- (void)_timeZoneChanged:(id)changed;
- (void)_timerFired;
- (void)_updateWithForceForAlarmTable:(BOOL)table;
- (void)dealloc;
- (void)didRegisterForAlarms;
- (void)handleDarwinNotification:(id)notification;
- (void)receivedAlarmNamed:(id)named;
- (void)start;
@end

@implementation _EKAlarmEngine

+ (id)requestedDarwinNotifications
{
  v6[7] = *MEMORY[0x277D85DE8];
  stateChangedNotificationName = [MEMORY[0x277CC5A10] stateChangedNotificationName];
  v6[4] = stateChangedNotificationName;
  v6[5] = @"com.apple.mobilecal.preference.notification.calendarsExcludedFromNotifications";
  v6[6] = @"com.apple.calendar.defaultAlarmChangedNotification";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (_EKAlarmEngine)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[_EKAlarmEngine sharedInstance];
  }

  v3 = sharedInstance___shared;

  return v3;
}

- (_EKAlarmEngine)init
{
  v6.receiver = self;
  v6.super_class = _EKAlarmEngine;
  v2 = [(_EKAlarmEngine *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC5AE8]);
    timedEventStorePurger = v2->_timedEventStorePurger;
    v2->_timedEventStorePurger = v3;

    [(EKTimedEventStorePurger *)v2->_timedEventStorePurger setTimeout:4.0];
    [(EKTimedEventStorePurger *)v2->_timedEventStorePurger setPurgingAllowed:1];
    [(EKTimedEventStorePurger *)v2->_timedEventStorePurger setCreationBlock:&__block_literal_global_19];
  }

  return v2;
}

- (void)dealloc
{
  [(_EKAlarmEngine *)self _killSyncTimer];
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Stopping", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF7918] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(_EKAlarmEngine *)self _killTimer];

  v6.receiver = self;
  v6.super_class = _EKAlarmEngine;
  [(_EKAlarmEngine *)&v6 dealloc];
}

- (void)start
{
  v3 = +[EKSideTableContext sideTableContext];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __23___EKAlarmEngine_start__block_invoke;
  v12 = &unk_278D6F278;
  v13 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 performBlockAndWait:&v9];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.calendar.notification.alarmengine", v5);
  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = v6;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__timeZoneChanged_ name:*MEMORY[0x277CF7918] object:0];
}

- (void)handleDarwinNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy isEqualToString:*MEMORY[0x277CF7560]])
  {
    [(_EKAlarmEngine *)self _databaseChanged];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7708]])
  {
    [(_EKAlarmEngine *)self _syncDidStart];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7710]])
  {
    [(_EKAlarmEngine *)self _syncDidEnd];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7908]])
  {
    [(_EKAlarmEngine *)self _timeDidChangeSignificantly];
  }

  else
  {
    stateChangedNotificationName = [MEMORY[0x277CC5A10] stateChangedNotificationName];
    v5 = [notificationCopy isEqualToString:stateChangedNotificationName];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CC5A10]);
      dataIsAccessible = [v6 dataIsAccessible];

      if (dataIsAccessible)
      {
        [(_EKAlarmEngine *)self _protectedDataDidBecomeAvailable];
      }
    }

    else if ([notificationCopy isEqualToString:@"com.apple.mobilecal.preference.notification.calendarsExcludedFromNotifications"])
    {
      [(_EKAlarmEngine *)self _calendarNotificationSettingChanged];
    }

    else if ([notificationCopy isEqual:@"com.apple.calendar.defaultAlarmChangedNotification"])
    {
      [(_EKAlarmEngine *)self _globalAlarmPreferencesChanged];
    }
  }
}

- (void)didRegisterForAlarms
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Alarm engine handling did register for alarms message", buf, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:0];
  if ([(_EKAlarmEngine *)self _isDataProtected])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38___EKAlarmEngine_didRegisterForAlarms__block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)receivedAlarmNamed:(id)named
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  namedCopy = named;
  v6 = [v4 stringWithUTF8String:"com.apple.calaccessd.alarmEngine.alarm.name"];
  v7 = [namedCopy isEqualToString:v6];

  if (v7)
  {
    v8 = *MEMORY[0x277CF7880];
    v9 = xpc_copy_event();
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{(xpc_dictionary_get_date(v9, "com.apple.calaccessd.alarmEngine.alarm.context.date") / 0x3B9ACA00uLL)}];
    v11 = MEMORY[0x245D1CF80](v9);
    v12 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = v11;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Received alarm notification. XPC Alarm context: %s. XPC Alarm context date: %@.", buf, 0x16u);
    }

    free(v11);
    dispatchQueue = self->_dispatchQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37___EKAlarmEngine_receivedAlarmNamed___block_invoke;
    v16[3] = &unk_278D6F278;
    v16[4] = self;
    v17 = v10;
    v14 = v10;
    dispatch_async(dispatchQueue, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_protectedDataDidBecomeAvailable
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Protected data now available.", buf, 2u);
  }

  if (self->_pendingChanges)
  {
    self->_pendingChanges = 0;
    [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___EKAlarmEngine__protectedDataDidBecomeAvailable__block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (BOOL)_isDataProtected
{
  v2 = objc_alloc_init(MEMORY[0x277CC5A10]);
  dataIsAccessible = [v2 dataIsAccessible];

  return dataIsAccessible ^ 1;
}

- (void)_updateWithForceForAlarmTable:(BOOL)table
{
  v5 = os_transaction_create();
  if ([(_EKAlarmEngine *)self _isDataProtected])
  {
    v6 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Data protection enabled. Waiting for unlock before updating.";
LABEL_7:
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    if (!self->_syncTimer)
    {
      dispatchQueue = self->_dispatchQueue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __48___EKAlarmEngine__updateWithForceForAlarmTable___block_invoke;
      v9[3] = &unk_278D6F7E0;
      v9[4] = self;
      tableCopy = table;
      dispatch_async(dispatchQueue, v9);
      goto LABEL_9;
    }

    v6 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Sync running. Waiting for it to finish before updating.";
      goto LABEL_7;
    }
  }

  self->_pendingChanges = 1;
  self->_shouldUpdateWithForceForAlarmTable = table;
LABEL_9:
}

- (void)_databaseChanged
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Database changed.", v4, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:0];
}

- (BOOL)_haveAlarmsChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  lastDBSequenceToken = self->_lastDBSequenceToken;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37___EKAlarmEngine__haveAlarmsChanged___block_invoke;
  v11[3] = &unk_278D6F890;
  v11[4] = &v12;
  [changedCopy changesSinceSequenceToken:lastDBSequenceToken completion:v11];
  v6 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v13 + 24))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    *buf = 136315138;
    v17 = v7;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Alarms may have changed: %s", buf, 0xCu);
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (void)_timeZoneChanged:(id)changed
{
  v4 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Time zone changed.", v5, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
}

- (void)_simulatedOffsetChanged:(id)changed
{
  v4 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Simulated offset changed.", v5, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
}

- (void)_storeAlarms:(id)alarms nextScheduleLimit:(id)limit eventStore:(id)store
{
  alarmsCopy = alarms;
  limitCopy = limit;
  storeCopy = store;
  v11 = +[EKSideTableContext sideTableContext];
  if (v11)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60___EKAlarmEngine__storeAlarms_nextScheduleLimit_eventStore___block_invoke;
    v20[3] = &unk_278D6F8B8;
    v21 = alarmsCopy;
    v22 = v11;
    selfCopy = self;
    v24 = storeCopy;
    v25 = limitCopy;
    [v22 performBlockAndWait:v20];

    v12 = v21;
  }

  else
  {
    v12 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_EKAlarmEngine *)v12 _storeAlarms:v13 nextScheduleLimit:v14 eventStore:v15, v16, v17, v18, v19];
    }
  }
}

- (BOOL)_populateAlarmTable:(id)table
{
  v75 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  populating = self->_populating;
  if (!populating)
  {
    self->_populating = 1;
    calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    populateStart = self->_populateStart;
    self->_populateStart = calSimulatedDateForNow;

    v8 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Populating alarm table", buf, 2u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults synchronize];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = *MEMORY[0x277CF7A58];
    v12 = [standardUserDefaults2 persistentDomainForName:*MEMORY[0x277CF7A58]];

    v63 = v12;
    if (v12)
    {
      v59 = v11;
      v13 = *MEMORY[0x277CF7920];
      v14 = [v12 objectForKey:*MEMORY[0x277CF7920]];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = +[CALNLogSubsystem alarmEngine];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          *buf = 138412290;
          v70 = v41;
          v42 = v41;
          _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Time Zone Support pref is suspect (%@)", buf, 0xCu);
        }
      }

      else
      {
        v15 = [v12 objectForKey:v13];
        v16 = v15;
        v17 = @"OFF";
        v18 = populating;
        if (v15 && ![v15 BOOLValue])
        {
          v17 = @"ON";
        }

        v19 = CalCopyTimeZone();
        v20 = CalCopySystemTimeZone();
        v21 = +[CALNLogSubsystem alarmEngine];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = MEMORY[0x245D1C8A0](v19);
          v61 = tableCopy;
          v23 = v22;
          v24 = MEMORY[0x245D1C8A0](v20);
          *buf = 138412802;
          v70 = v22;
          v71 = 2112;
          v72 = v24;
          v73 = 2112;
          v74 = v17;
          v25 = v24;
          _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Calendar TZ = %@; System TZ = %@; Time Zone Support = %@", buf, 0x20u);

          tableCopy = v61;
        }

        CFRelease(v19);
        CFRelease(v20);
        populating = v18;
        v12 = v63;
      }

      v11 = v59;
    }

    p_lastCheckpoint = &self->_lastCheckpoint;
    if (!self->_lastCheckpoint)
    {
      calSimulatedDateForNow2 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      v28 = *p_lastCheckpoint;
      *p_lastCheckpoint = calSimulatedDateForNow2;
    }

    calSimulatedDateForNow3 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    if ([*p_lastCheckpoint CalIsAfterDate:calSimulatedDateForNow3])
    {
      objc_storeStrong(&self->_lastCheckpoint, calSimulatedDateForNow3);
    }

    v30 = [calSimulatedDateForNow3 dateByAddingTimeInterval:-259200.0];
    if ([v30 CalIsAfterDate:*p_lastCheckpoint])
    {
      objc_storeStrong(&self->_lastCheckpoint, v30);
    }

    v31 = [calSimulatedDateForNow3 dateByAddingTimeInterval:1296000.0];
    if ([*p_lastCheckpoint CalIsBeforeDate:v31])
    {
      v57 = v30;
      v58 = calSimulatedDateForNow3;
      v32 = +[CALNLogSubsystem alarmEngine];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        _dateFormatter = [(_EKAlarmEngine *)self _dateFormatter];
        v34 = [_dateFormatter stringFromDate:self->_lastCheckpoint];
        [(_EKAlarmEngine *)self _dateFormatter];
        v36 = v35 = tableCopy;
        v37 = [v36 stringFromDate:v31];
        *buf = 138412546;
        v70 = v34;
        v71 = 2112;
        v72 = v37;
        _os_log_impl(&dword_242909000, v32, OS_LOG_TYPE_DEFAULT, "Searching for alarms between [%@] and [%@]", buf, 0x16u);

        tableCopy = v35;
      }

      v60 = populating;

      CFPreferencesAppSynchronize(v11);
      v38 = CFPreferencesCopyAppValue(@"CalendarsExcludedFromNotifications", v11);
      if (v38)
      {
        v39 = v38;
        v40 = [MEMORY[0x277CBEB98] setWithArray:v38];
      }

      else
      {
        v40 = 0;
      }

      v62 = tableCopy;
      v43 = [tableCopy calendarsForEntityType:{0, v31}];
      v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v43, "count")}];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v65;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v65 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v64 + 1) + 8 * i);
            calendarIdentifier = [v50 calendarIdentifier];
            v52 = [v40 containsObject:calendarIdentifier];

            if ((v52 & 1) == 0)
            {
              [v44 addObject:v50];
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v47);
      }

      tableCopy = v62;
      alarmOccurrencesFromAlarmCache = [v62 alarmOccurrencesFromAlarmCache];
      v31 = v56;
      [(_EKAlarmEngine *)self _storeAlarms:alarmOccurrencesFromAlarmCache nextScheduleLimit:v56 eventStore:v62];
      [(_EKAlarmEngine *)self _populateFinished];

      populating = v60;
      v12 = v63;
      v30 = v57;
      calSimulatedDateForNow3 = v58;
    }

    else
    {
      [(_EKAlarmEngine *)self _populateFinished];
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return !populating;
}

- (void)_populateFinished
{
  v12 = *MEMORY[0x277D85DE8];
  self->_populating = 0;
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    [calSimulatedDateForNow timeIntervalSinceDate:self->_populateStart];
    *buf = 134217984;
    v11 = v5;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Alarm Table populated in %f", buf, 0xCu);
  }

  if (self->_needsAlarmTablePopulation)
  {
    self->_needsAlarmTablePopulation = 0;
    v6 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Retrying alarm table population due to previous request to do so.", buf, 2u);
    }

    [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___EKAlarmEngine__populateFinished__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_killTimer
{
  nextFireDate = self->_nextFireDate;
  self->_nextFireDate = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:3];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:3];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)_rescheduleTimer
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Rescheduling timer", buf, 2u);
  }

  [(_EKAlarmEngine *)self _killTimer];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v4 = +[EKSideTableContext sideTableContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34___EKAlarmEngine__rescheduleTimer__block_invoke;
  v15[3] = &unk_278D6F2C8;
  v18 = buf;
  v5 = v4;
  v16 = v5;
  selfCopy = self;
  [v5 performBlockAndWait:v15];
  v6 = *(v20 + 5);
  if (v6)
  {
    v7 = [v6 copy];
    nextFireDate = self->_nextFireDate;
    self->_nextFireDate = v7;

    v9 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_nextFireDate;
      *v25 = 138412290;
      v26 = v10;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Set _nextFireDate to [%@]", v25, 0xCu);
    }

    dateBySubtractingCalSimulatedOffset = [*(v20 + 5) dateBySubtractingCalSimulatedOffset];
    v12 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v20 + 5);
      *v25 = 138412546;
      v26 = v13;
      v27 = 2112;
      v28 = dateBySubtractingCalSimulatedOffset;
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Adjusted fire date from [%@] to [%@]", v25, 0x16u);
    }

    [(_EKAlarmEngine *)self _installTimerWithFireDate:dateBySubtractingCalSimulatedOffset];
  }

  else
  {
    dateBySubtractingCalSimulatedOffset = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(dateBySubtractingCalSimulatedOffset, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 136315394;
      v26 = "[_EKAlarmEngine _rescheduleTimer]";
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_242909000, dateBySubtractingCalSimulatedOffset, OS_LOG_TYPE_DEFAULT, "%s - refire date was nil and a new timer won't be scheduled, context was %@", v25, 0x16u);
    }
  }

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_installTimerWithFireDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = dateCopy;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Installing timer with fire date: [%@]", &v15, 0xCu);
  }

  [dateCopy timeIntervalSinceNow];
  v6 = ((ceil(v5) + time(0)) * 1000000000.0);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v7, *MEMORY[0x277CF7888], v6);
  xpc_dictionary_set_date(v7, "com.apple.calaccessd.alarmEngine.alarm.context.date", v6);
  v8 = *MEMORY[0x277CF7880];
  xpc_set_event();
  if (_installTimerWithFireDate__onceToken != -1)
  {
    [_EKAlarmEngine _installTimerWithFireDate:];
  }

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v6 / 0x3B9ACA00)];
  v10 = [_installTimerWithFireDate__dateFormatter stringFromDate:v9];
  v11 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Formatted scheduled alarm trigger date: %@.", &v15, 0xCu);
  }

  v12 = MEMORY[0x245D1CF80](v7);
  v13 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = v12;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Scheduled XPC alarm event: %s.", &v15, 0xCu);
  }

  free(v12);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAlarmsFired:(id)fired
{
  firedCopy = fired;
  if ([firedCopy count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37___EKAlarmEngine__notifyAlarmsFired___block_invoke;
    v5[3] = &unk_278D6F278;
    v6 = firedCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)_timerFired
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Timer Fired.", buf, 2u);
  }

  calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v6 = [calSimulatedDateForNow dateByAddingTimeInterval:30.0];

  calSimulatedDateForNow2 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v8 = [calSimulatedDateForNow2 dateByAddingTimeInterval:-60.0];
  if ([v8 CalIsAfterDate:self->_nextFireDate])
  {
    objc_storeStrong(&self->_nextFireDate, v8);
    v9 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Fire date suspiciously old. Resetting to one minute before now.", buf, 2u);
    }
  }

  v10 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    nextFireDate = self->_nextFireDate;
    *buf = 138412546;
    v22 = nextFireDate;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Looking for alarms between %@ and %@", buf, 0x16u);
  }

  v12 = +[EKSideTableContext sideTableContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29___EKAlarmEngine__timerFired__block_invoke;
  v17[3] = &unk_278D6F318;
  v18 = v12;
  selfCopy = self;
  v20 = v6;
  v13 = v6;
  v14 = v12;
  [v14 performBlockAndWait:v17];
  v15 = self->_nextFireDate;
  self->_nextFireDate = 0;

  [(_EKAlarmEngine *)self _rescheduleTimer];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_alertInfoAlarmIDFromSideAlarm:(id)alarm
{
  alarmCopy = alarm;
  externalID = [alarmCopy externalID];

  if (externalID)
  {
    externalID2 = [alarmCopy externalID];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    alarmID = [alarmCopy alarmID];

    externalID2 = [v6 stringWithFormat:@"%d", objc_msgSend(alarmID, "intValue")];
    alarmCopy = alarmID;
  }

  return externalID2;
}

- (id)_alertInfoAlarmIDFromEKAlarm:(id)alarm
{
  alarmCopy = alarm;
  externalID = [alarmCopy externalID];

  if (externalID)
  {
    externalID2 = [alarmCopy externalID];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    objectID = [alarmCopy objectID];

    externalID2 = [v6 stringWithFormat:@"%d", objc_msgSend(objectID, "rowID")];
    alarmCopy = objectID;
  }

  return externalID2;
}

- (BOOL)_isAlarmAcknowledgedWithAcknowledgedDate:(id)date fireDate:(id)fireDate
{
  dateCopy = date;
  fireDateCopy = fireDate;
  if (fireDateCopy)
  {
    if (dateCopy)
    {
      [dateCopy timeIntervalSinceDate:fireDateCopy];
      if (v7 < 0.0)
      {
        v7 = -v7;
      }

      v8 = v7 < 300.0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = dateCopy != 0;
  }

  return v8;
}

- (void)_resetSyncTimer
{
  syncTimer = self->_syncTimer;
  if (syncTimer)
  {
    currentRunLoop = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:240.0];
    [(NSTimer *)syncTimer setFireDate:?];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CBEBB8]);
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:240.0];
    v6 = [v4 initWithFireDate:v5 interval:self target:sel__syncTimerFired_ selector:0 userInfo:0 repeats:0.0];
    v7 = self->_syncTimer;
    self->_syncTimer = v6;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_syncTimer forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_killSyncTimer
{
  [(NSTimer *)self->_syncTimer invalidate];
  syncTimer = self->_syncTimer;
  self->_syncTimer = 0;
}

- (void)_syncTimerFired:(id)fired
{
  v4 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Sync timer fired.", v5, 2u);
  }

  [(_EKAlarmEngine *)self _syncDidEnd];
}

- (void)_syncDidStart
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Sync started. Suppressing updates while it runs.", v4, 2u);
  }

  [(_EKAlarmEngine *)self _resetSyncTimer];
}

- (void)_syncDidEnd
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Sync done.", v4, 2u);
  }

  [(_EKAlarmEngine *)self _killSyncTimer];
  if (self->_pendingChanges)
  {
    self->_pendingChanges = 0;
    [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:self->_shouldUpdateWithForceForAlarmTable];
  }
}

- (void)_timeDidChangeSignificantly
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Significant time change.", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___EKAlarmEngine__timeDidChangeSignificantly__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:0];
}

- (void)_calendarNotificationSettingChanged
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Per-calendar notification suppression setting changed.", v4, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
}

- (void)_globalAlarmPreferencesChanged
{
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "_globalAlarmPreferencesChanged called", v4, 2u);
  }

  [(_EKAlarmEngine *)self _updateWithForceForAlarmTable:1];
}

- (void)_storeAlarms:(uint64_t)a3 nextScheduleLimit:(uint64_t)a4 eventStore:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_242909000, a1, a3, "%s - EKSideTableContext failed to be created, nothing will be stored", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end