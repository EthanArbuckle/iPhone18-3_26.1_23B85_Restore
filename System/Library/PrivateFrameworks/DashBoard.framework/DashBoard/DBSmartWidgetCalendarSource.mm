@interface DBSmartWidgetCalendarSource
+ (id)predictionClasses;
+ (void)load;
- (BOOL)_includeCalendar:(id)calendar;
- (BOOL)_includeEvent:(id)event forNow:(id)now;
- (BOOL)shouldKeepPrediction:(id)prediction;
- (DBSmartWidgetCalendarSource)initWithDelegate:(id)delegate resourceProvider:(id)provider;
- (id)freshPredictions;
- (void)_eventStoreDidChange:(id)change;
- (void)dealloc;
- (void)freshPredictions;
@end

@implementation DBSmartWidgetCalendarSource

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___DBSmartWidgetCalendarSource;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)predictionClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldKeepPrediction:(id)prediction
{
  predictions = [(DBSmartWidgetSource *)self predictions];
  firstObject = [predictions firstObject];
  validRanges = [firstObject validRanges];
  firstObject2 = [validRanges firstObject];

  v7 = [MEMORY[0x277CBEAA8] now];
  if ([firstObject2 containsDate:v7])
  {
    start = [firstObject2 start];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v10 = [start isEqualToDate:distantPast];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (DBSmartWidgetCalendarSource)initWithDelegate:(id)delegate resourceProvider:(id)provider
{
  delegateCopy = delegate;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = DBSmartWidgetCalendarSource;
  v8 = [(DBSmartWidgetSource *)&v23 initWithDelegate:delegateCopy resourceProvider:providerCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CC5A40]);
    eventStore = v8->_eventStore;
    v8->_eventStore = v9;

    objc_initWeak(&location, v8);
    v11 = objc_alloc(MEMORY[0x277CC59F0]);
    v12 = v8->_eventStore;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __65__DBSmartWidgetCalendarSource_initWithDelegate_resourceProvider___block_invoke;
    v20 = &unk_278F02300;
    objc_copyWeak(&v21, &location);
    v13 = [v11 initWithEventStore:v12 visibilityChangedCallback:&v17 queue:0];
    calendarVisibilityManager = v8->_calendarVisibilityManager;
    v8->_calendarVisibilityManager = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__eventStoreDidChange_ name:*MEMORY[0x277CC5948] object:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __65__DBSmartWidgetCalendarSource_initWithDelegate_resourceProvider___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__DBSmartWidgetCalendarSource_initWithDelegate_resourceProvider___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshPredictions];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = DBSmartWidgetCalendarSource;
  [(DBSmartWidgetCalendarSource *)&v5 dealloc];
}

- (id)freshPredictions
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = +[DBApplicationController sharedInstance];
  calendarApplication = [v3 calendarApplication];

  if (!calendarApplication)
  {
    date = DBLogForCategory(9uLL);
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource freshPredictions];
    }

    goto LABEL_7;
  }

  if ([calendarApplication isLockedOrHidden])
  {
    date = DBLogForCategory(9uLL);
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource freshPredictions];
    }

LABEL_7:
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_53;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetCalendarSource *)date freshPredictions];
  }

  [DBSmartWidgetCalendarPrediction setNow:date];
  v8 = +[DBSmartWidgetCalendarPrediction earliestStartDate];
  v9 = +[DBSmartWidgetCalendarPrediction latestStartDate];
  calendarVisibilityManager = [(DBSmartWidgetCalendarSource *)self calendarVisibilityManager];
  visibleCalendars = [calendarVisibilityManager visibleCalendars];

  v12 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = visibleCalendars;
  v13 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        if ([(DBSmartWidgetCalendarSource *)self _includeCalendar:v17])
        {
          [v12 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v14);
  }

  v51 = calendarApplication;

  eventStore = [(DBSmartWidgetCalendarSource *)self eventStore];
  v49 = v9;
  v50 = v8;
  v48 = v12;
  v19 = [eventStore predicateForEventsWithStartDate:v8 endDate:v9 calendars:v12];

  eventStore2 = [(DBSmartWidgetCalendarSource *)self eventStore];
  v47 = v19;
  v21 = [eventStore2 eventsMatchingPredicate:v19];

  v22 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v53 = v21;
  v23 = [v53 countByEnumeratingWithState:&v56 objects:v65 count:16];
  v55 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = *v57;
    do
    {
      v26 = 0;
      v52 = v24;
      do
      {
        if (*v57 != v25)
        {
          objc_enumerationMutation(v53);
        }

        v27 = *(*(&v56 + 1) + 8 * v26);
        startDate = [v27 startDate];
        endDate = [v27 endDate];
        if ([(DBSmartWidgetCalendarSource *)self _includeEvent:v27 forNow:date])
        {
          v30 = date;
          startDate2 = [v27 startDate];
          [v22 objectForKeyedSubscript:startDate2];
          v33 = v32 = v22;

          if (v33)
          {
            startDate3 = [v27 startDate];
            v35 = [v32 objectForKeyedSubscript:startDate3];
            [v35 addEvent:v27];
            date = v30;
          }

          else
          {
            date = v30;
            v35 = [v30 dateByAddingTimeInterval:900.0];
            if (([startDate compare:v30] == 1 || !objc_msgSend(startDate, "compare:", v30)) && (objc_msgSend(startDate, "compare:", v35) == -1 || !objc_msgSend(startDate, "compare:", v35)) || (objc_msgSend(startDate, "compare:", v30) == -1 || !objc_msgSend(startDate, "compare:", v30)) && (-[NSObject compare:](v30, "compare:", endDate) == -1 || !-[NSObject compare:](v30, "compare:", endDate)))
            {
              v36 = off_278EFF0B8;
            }

            else
            {
              v36 = off_278EFF0A0;
            }

            startDate3 = [objc_alloc(*v36) initWithEvent:v27];
            [startDate3 setDelegate:self];
            startDate4 = [v27 startDate];
            [v55 setObject:startDate3 forKeyedSubscript:startDate4];

            [startDate3 updateVirtualConferenceBundleIDIfNeeded];
          }

          v22 = v55;
          v24 = v52;
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v53 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v24);
  }

  allValues = [v22 allValues];
  v6 = [allValues sortedArrayUsingComparator:&__block_literal_global_18];

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngineCalendar_MaxCount", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v40 = AppIntegerValue;
  }

  else
  {
    v40 = 3;
  }

  if ([v6 count] <= v40)
  {
    v42 = v50;
    calendarApplication = v51;
  }

  else
  {
    v41 = DBLogForCategory(9uLL);
    v42 = v50;
    calendarApplication = v51;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetCalendarSource *)v6 freshPredictions];
    }

    v43 = [v6 subarrayWithRange:{0, v40}];

    v6 = v43;
  }

  if ([v6 count])
  {
    v44 = 0;
    do
    {
      v45 = [v6 objectAtIndexedSubscript:v44];
      [v45 setSoonestEvent:v44 == 0];

      ++v44;
    }

    while ([v6 count] > v44);
  }

LABEL_53:

  return v6;
}

uint64_t __47__DBSmartWidgetCalendarSource_freshPredictions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)_includeCalendar:(id)calendar
{
  calendarCopy = calendar;
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarSource _includeCalendar:];
  }

  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarSource _includeCalendar:];
  }

  return 1;
}

- (BOOL)_includeEvent:(id)event forNow:(id)now
{
  eventCopy = event;
  nowCopy = now;
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarSource _includeEvent:eventCopy forNow:?];
  }

  isAllDay = [eventCopy isAllDay];
  if (isAllDay)
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource _includeEvent:forNow:];
    }
  }

  endDate = [eventCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v12 = v11;
  [nowCopy timeIntervalSinceReferenceDate];
  v14 = v13;

  if (v12 <= v14)
  {
    v16 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource _includeEvent:forNow:];
    }

    v15 = 0;
  }

  else
  {
    v15 = isAllDay ^ 1u;
  }

  if ([eventCopy status] == 3)
  {
    v17 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource _includeEvent:forNow:];
    }

    v15 = 0;
  }

  selfAttendee = [eventCopy selfAttendee];
  if (selfAttendee)
  {
    v19 = selfAttendee;
    selfAttendee2 = [eventCopy selfAttendee];
    participantStatus = [selfAttendee2 participantStatus];

    if (participantStatus == 3)
    {
      v22 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetCalendarSource _includeEvent:forNow:];
      }

      v15 = 0;
    }
  }

  v23 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarSource _includeEvent:v15 forNow:eventCopy];
  }

  return v15;
}

- (void)_eventStoreDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CC5940]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarSource _eventStoreDidChange:];
    }

    [(DBSmartWidgetSource *)self refreshPredictions];
  }
}

void __65__DBSmartWidgetCalendarSource_initWithDelegate_resourceProvider___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)freshPredictions
{
  [self count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_includeCalendar:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_includeEvent:(void *)a1 forNow:.cold.1(void *a1)
{
  v1 = [a1 db_ShortDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_includeEvent:forNow:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_includeEvent:forNow:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_includeEvent:forNow:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_includeEvent:forNow:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_includeEvent:(uint64_t)a1 forNow:(void *)a2 .cold.6(uint64_t a1, void *a2)
{
  v7 = [a2 db_ShortDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_eventStoreDidChange:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end