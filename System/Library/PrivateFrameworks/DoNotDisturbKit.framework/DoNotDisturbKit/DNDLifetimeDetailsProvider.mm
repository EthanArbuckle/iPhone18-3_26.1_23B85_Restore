@interface DNDLifetimeDetailsProvider
- (DNDLifetimeDetailsProvider)init;
- (DNDLifetimeDetailsProviderDelegate)delegate;
- (id)_eventStoreQueue_eventForCalendarEventLifetime:(id)lifetime;
- (id)_lifetimeDetailsUntilEveningOrMorningForDate:(id)date;
- (id)_nextRefreshTimerFireDate;
- (id)lifetimeDetailsForAssertionDetails:(id)details error:(id *)error;
- (id)lifetimeForLifetimeDetails:(id)details error:(id *)error;
- (void)_eventStoreQueue_requestRelevantEvent;
- (void)_queue_gotPlaceInferences:(id)inferences;
- (void)_queue_rebuildAvailableLifetimeDetails;
- (void)_queue_requestLifetimeDetails;
- (void)_queue_resetLifetimeDetails;
- (void)_queue_scheduleRefreshTimerIfNeeded;
- (void)_requestRelevantLocationMetadata;
- (void)_scheduleRefreshTimerIfNeeded;
- (void)_systemTimeChanged;
- (void)dealloc;
- (void)lifetimeDetailsWithMetadataForAssertionDetails:(id)details completionHandler:(id)handler;
- (void)requestLifetimeDetails;
- (void)resetLifetimeDetails;
- (void)startUpdatingLifetimeDetails;
- (void)stopUpdatingLifetimeDetails;
@end

@implementation DNDLifetimeDetailsProvider

- (DNDLifetimeDetailsProvider)init
{
  v23.receiver = self;
  v23.super_class = DNDLifetimeDetailsProvider;
  v2 = [(DNDLifetimeDetailsProvider *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.donotdisturb.kit.LifetimeDetailsProvider", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.kit.LifetimeDetailsProvider.event-store", v6);
    eventStoreQueue = v2->_eventStoreQueue;
    v2->_eventStoreQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.donotdisturb.kit.LifetimeDetailsProvider.call-out", v9);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v10;

    v12 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DNDLifetimeDetailsProvider_init__block_invoke;
    block[3] = &unk_278F884B8;
    v13 = v2;
    v22 = v13;
    dispatch_sync(v12, block);
    v14 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    eventStore = v13->_eventStore;
    v13->_eventStore = v14;

    [(EKEventStore *)v13->_eventStore requestFullAccessToEventsWithCompletion:&__block_literal_global_3];
    v16 = [objc_alloc(MEMORY[0x277CC59F0]) initWithEventStore:v13->_eventStore visibilityChangedCallback:&__block_literal_global_10 queue:v2->_queue];
    calendarVisibilityManager = v13->_calendarVisibilityManager;
    v13->_calendarVisibilityManager = v16;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, DNDHandleSignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__systemTimeChanged name:*MEMORY[0x277CBE778] object:0];
  }

  return v2;
}

void __34__DNDLifetimeDetailsProvider_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v7 = [MEMORY[0x277CCA8D8] dnd_locationBundle];
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 8)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE778] object:0];

  [(NSTimer *)self->_refreshTimer invalidate];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = 0;

  v6.receiver = self;
  v6.super_class = DNDLifetimeDetailsProvider;
  [(DNDLifetimeDetailsProvider *)&v6 dealloc];
}

- (void)requestLifetimeDetails
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DNDLifetimeDetailsProvider_requestLifetimeDetails__block_invoke;
  block[3] = &unk_278F884B8;
  block[4] = self;
  dispatch_async(queue, block);
  objc_initWeak(&location, self);
  eventStoreQueue = self->_eventStoreQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__DNDLifetimeDetailsProvider_requestLifetimeDetails__block_invoke_2;
  v5[3] = &unk_278F88628;
  objc_copyWeak(&v6, &location);
  dispatch_async(eventStoreQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__DNDLifetimeDetailsProvider_requestLifetimeDetails__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _eventStoreQueue_requestRelevantEvent];
    WeakRetained = v2;
  }
}

- (void)resetLifetimeDetails
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DNDLifetimeDetailsProvider_resetLifetimeDetails__block_invoke;
  block[3] = &unk_278F884B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startUpdatingLifetimeDetails
{
  if (!self->_monitoringLifetimes)
  {
    self->_monitoringLifetimes = 1;
    [(DNDLifetimeDetailsProvider *)self requestLifetimeDetails];

    [(DNDLifetimeDetailsProvider *)self _scheduleRefreshTimerIfNeeded];
  }
}

- (void)stopUpdatingLifetimeDetails
{
  if (self->_monitoringLifetimes)
  {
    self->_monitoringLifetimes = 0;
    [(NSTimer *)self->_refreshTimer invalidate];
  }
}

- (id)lifetimeForLifetimeDetails:(id)details error:(id *)error
{
  detailsCopy = details;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  identifier = [detailsCopy identifier];
  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.one-hour"])
  {
    lifetimeWithCurrentLocation = [MEMORY[0x277D05970] lifetimeWithDuration:3600.0];
LABEL_3:
    v8 = v23[5];
    v23[5] = lifetimeWithCurrentLocation;

    goto LABEL_15;
  }

  if (([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.evening"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.donotdisturb.kit.lifetime.morning"))
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v21 = 0;
    [currentCalendar getHour:&v21 minute:0 second:0 nanosecond:0 fromDate:date];
    if (v21 >= 4)
    {
      if (v21 > 0x11)
      {
        v13 = [currentCalendar dateBySettingHour:7 minute:0 second:0 ofDate:date options:1];
        v12 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v13 options:0];

        goto LABEL_14;
      }

      v11 = 19;
    }

    else
    {
      v11 = 7;
    }

    v12 = [currentCalendar dateBySettingHour:v11 minute:0 second:0 ofDate:date options:1];
LABEL_14:
    v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date endDate:v12];
    v15 = [MEMORY[0x277D05970] lifetimeWithDateInterval:v14];
    v16 = v23[5];
    v23[5] = v15;

    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.location"])
  {
    lifetimeWithCurrentLocation = [MEMORY[0x277D05970] lifetimeWithCurrentLocation];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.event"])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__DNDLifetimeDetailsProvider_lifetimeForLifetimeDetails_error___block_invoke;
    block[3] = &unk_278F88650;
    block[4] = self;
    block[5] = &v22;
    dispatch_sync(queue, block);
  }

LABEL_15:
  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __63__DNDLifetimeDetailsProvider_lifetimeForLifetimeDetails_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) uniqueId];
  if (v2)
  {
    v3 = MEMORY[0x277D05970];
    v8 = v2;
    v4 = [*(*(a1 + 32) + 80) occurrenceDate];
    v5 = [v3 lifetimeUntilEndOfCalendarEventWithUniqueID:v8 occurrenceDate:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = v8;
  }
}

- (id)lifetimeDetailsForAssertionDetails:(id)details error:(id *)error
{
  identifier = [details identifier];
  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.one-hour"])
  {
    v5 = +[DNDLifetimeDetails lifetimeDetailsForOneHour];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.evening"])
  {
    v5 = +[DNDLifetimeDetails lifetimeDetailsUntilEvening];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.morning"])
  {
    v5 = +[DNDLifetimeDetails lifetimeDetailsUntilMorning];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.location"])
  {
    v5 = [DNDLifetimeDetails lifetimeDetailsForPlaceInference:0];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.event"])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [DNDLifetimeDetails lifetimeDetailsForEvent:0 relativeToDate:date];
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (void)lifetimeDetailsWithMetadataForAssertionDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  identifier = [detailsCopy identifier];
  if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.one-hour"])
  {
    v9 = +[DNDLifetimeDetails lifetimeDetailsForOneHour];
  }

  else if ([identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.evening"])
  {
    v9 = +[DNDLifetimeDetails lifetimeDetailsUntilEvening];
  }

  else
  {
    if (![identifier isEqualToString:@"com.apple.donotdisturb.kit.lifetime.morning"])
    {
      goto LABEL_9;
    }

    v9 = +[DNDLifetimeDetails lifetimeDetailsUntilMorning];
  }

  v10 = v9;
  if (v9)
  {
    handlerCopy[2](handlerCopy, v9, 0);

    goto LABEL_13;
  }

LABEL_9:
  lifetime = [detailsCopy lifetime];
  lifetimeType = [lifetime lifetimeType];

  if (lifetimeType == 3)
  {
    v13 = [DNDLifetimeDetails lifetimeDetailsForPlaceInference:self->_currentPlaceInference];
    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    lifetime2 = [detailsCopy lifetime];
    lifetimeType2 = [lifetime2 lifetimeType];

    if (lifetimeType2 == 1)
    {
      lifetime3 = [detailsCopy lifetime];
      objc_initWeak(&location, self);
      eventStoreQueue = self->_eventStoreQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __95__DNDLifetimeDetailsProvider_lifetimeDetailsWithMetadataForAssertionDetails_completionHandler___block_invoke;
      v19[3] = &unk_278F88678;
      objc_copyWeak(&v22, &location);
      v20 = lifetime3;
      v21 = handlerCopy;
      v18 = lifetime3;
      dispatch_async(eventStoreQueue, v19);

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

LABEL_13:
}

uint64_t __95__DNDLifetimeDetailsProvider_lifetimeDetailsWithMetadataForAssertionDetails_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [WeakRetained _eventStoreQueue_eventForCalendarEventLifetime:*(a1 + 32)];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [DNDLifetimeDetails lifetimeDetailsForEvent:v3 relativeToDate:v4];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, 0);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_rebuildAvailableLifetimeDetails
{
  dispatch_assert_queue_V2(self->_queue);
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  v5 = +[DNDLifetimeDetails lifetimeDetailsForOneHour];
  [array addObject:v5];

  v6 = [(DNDLifetimeDetailsProvider *)self _lifetimeDetailsUntilEveningOrMorningForDate:date];
  [array addObject:v6];

  v7 = MEMORY[0x277CBFC10];
  dnd_locationBundle = [MEMORY[0x277CCA8D8] dnd_locationBundle];
  bundlePath = [dnd_locationBundle bundlePath];
  LODWORD(v7) = [v7 authorizationStatusForBundlePath:bundlePath];

  if (v7 == 3)
  {
    v10 = [DNDLifetimeDetails lifetimeDetailsForPlaceInference:self->_currentPlaceInference];
    [array addObject:v10];
  }

  relevantEvent = self->_relevantEvent;
  if (relevantEvent)
  {
    v12 = [DNDLifetimeDetails lifetimeDetailsForEvent:relevantEvent relativeToDate:date];
    [array addObject:v12];
  }

  v13 = [array copy];
  if (![(NSArray *)self->_availableLifetimeDetails isEqualToArray:v13])
  {
    objc_storeStrong(&self->_availableLifetimeDetails, v13);
    delegate = [(DNDLifetimeDetailsProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__DNDLifetimeDetailsProvider__queue_rebuildAvailableLifetimeDetails__block_invoke;
      block[3] = &unk_278F886A0;
      v17 = delegate;
      selfCopy = self;
      v19 = v13;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (id)_lifetimeDetailsUntilEveningOrMorningForDate:(id)date
{
  v8 = 0;
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  [currentCalendar getHour:&v8 minute:0 second:0 nanosecond:0 fromDate:dateCopy];

  if ((v8 - 4) > 0xD)
  {
    +[DNDLifetimeDetails lifetimeDetailsUntilMorning];
  }

  else
  {
    +[DNDLifetimeDetails lifetimeDetailsUntilEvening];
  }
  v6 = ;

  return v6;
}

- (void)_requestRelevantLocationMetadata
{
  locationManager = self->_locationManager;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__DNDLifetimeDetailsProvider__requestRelevantLocationMetadata__block_invoke;
  v3[3] = &unk_278F886C8;
  v3[4] = self;
  [(CLLocationManager *)locationManager _fetchPlaceInferencesWithFidelityPolicy:1 handler:v3];
}

void __62__DNDLifetimeDetailsProvider__requestRelevantLocationMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DNDLogLocation;
    if (os_log_type_enabled(DNDLogLocation, OS_LOG_TYPE_ERROR))
    {
      __62__DNDLifetimeDetailsProvider__requestRelevantLocationMetadata__block_invoke_cold_1(v6, v7);
    }
  }

  [*(a1 + 32) _queue_gotPlaceInferences:v5];
}

- (void)_queue_gotPlaceInferences:(id)inferences
{
  queue = self->_queue;
  inferencesCopy = inferences;
  dispatch_assert_queue_V2(queue);
  firstObject = [inferencesCopy firstObject];

  v7 = [firstObject copy];
  currentPlaceInference = self->_currentPlaceInference;
  self->_currentPlaceInference = v7;

  [(DNDLifetimeDetailsProvider *)self _queue_rebuildAvailableLifetimeDetails];
}

- (void)_queue_resetLifetimeDetails
{
  dispatch_assert_queue_V2(self->_queue);
  [(EKEventStore *)self->_eventStore reset];
  currentPlaceInference = self->_currentPlaceInference;
  self->_currentPlaceInference = 0;

  relevantEvent = self->_relevantEvent;
  self->_relevantEvent = 0;
}

- (void)_queue_requestLifetimeDetails
{
  dispatch_assert_queue_V2(self->_queue);
  [(DNDLifetimeDetailsProvider *)self _queue_resetLifetimeDetails];

  [(DNDLifetimeDetailsProvider *)self _queue_rebuildAvailableLifetimeDetails];
}

- (void)_eventStoreQueue_requestRelevantEvent
{
  v34 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_eventStoreQueue);
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:900.0];
  visibleCalendars = [(EKCalendarVisibilityManager *)self->_calendarVisibilityManager visibleCalendars];
  v26 = v4;
  v24 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:date endDate:v4 calendars:?];
  v23 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:?];
  v5 = [v23 bs_filter:&__block_literal_global_30];
  firstObject = [v5 firstObject];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        startDate = [v12 startDate];
        [startDate timeIntervalSinceDate:date];
        v15 = fabs(v14);
        startDate2 = [firstObject startDate];
        [startDate2 timeIntervalSinceDate:date];
        v18 = fabs(v17);

        if (v15 < v18)
        {
          v19 = v12;

          firstObject = v19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DNDLifetimeDetailsProvider__eventStoreQueue_requestRelevantEvent__block_invoke_2;
  block[3] = &unk_278F88500;
  block[4] = self;
  v28 = firstObject;
  v21 = firstObject;
  dispatch_async(queue, block);

  v22 = *MEMORY[0x277D85DE8];
}

BOOL __67__DNDLifetimeDetailsProvider__eventStoreQueue_requestRelevantEvent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isAllDay] & 1) == 0 && objc_msgSend(v2, "participationStatus") != 3 && objc_msgSend(v2, "status") != 3;

  return v3;
}

uint64_t __67__DNDLifetimeDetailsProvider__eventStoreQueue_requestRelevantEvent__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _queue_rebuildAvailableLifetimeDetails];
}

- (id)_eventStoreQueue_eventForCalendarEventLifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  dispatch_assert_queue_V2(self->_eventStoreQueue);
  if ([lifetimeCopy isOnlyDuringEvent])
  {
    [lifetimeCopy occurrenceDate];
  }

  else
  {
    [MEMORY[0x277CBEAA8] now];
  }
  v5 = ;
  v6 = [v5 dateByAddingTimeInterval:900.0];
  visibleCalendars = [(EKCalendarVisibilityManager *)self->_calendarVisibilityManager visibleCalendars];
  v8 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v5 endDate:v6 calendars:visibleCalendars];
  v9 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__DNDLifetimeDetailsProvider__eventStoreQueue_eventForCalendarEventLifetime___block_invoke;
  v14[3] = &unk_278F88710;
  v15 = lifetimeCopy;
  v10 = lifetimeCopy;
  v11 = [v9 bs_filter:v14];
  firstObject = [v11 firstObject];

  return firstObject;
}

uint64_t __77__DNDLifetimeDetailsProvider__eventStoreQueue_eventForCalendarEventLifetime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueId];
  v4 = [*(a1 + 32) eventUniqueID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_scheduleRefreshTimerIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DNDLifetimeDetailsProvider__scheduleRefreshTimerIfNeeded__block_invoke;
  block[3] = &unk_278F884B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_scheduleRefreshTimerIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  _nextRefreshTimerFireDate = [(DNDLifetimeDetailsProvider *)self _nextRefreshTimerFireDate];
  refreshTimer = self->_refreshTimer;
  if (!refreshTimer)
  {
    goto LABEL_5;
  }

  fireDate = [(NSTimer *)refreshTimer fireDate];
  v6 = [fireDate isEqual:_nextRefreshTimerFireDate];

  if ((v6 & 1) == 0)
  {
    [(NSTimer *)self->_refreshTimer invalidate];
    v7 = self->_refreshTimer;
    self->_refreshTimer = 0;
  }

  if (!self->_refreshTimer)
  {
LABEL_5:
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x277CBEBB8]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __65__DNDLifetimeDetailsProvider__queue_scheduleRefreshTimerIfNeeded__block_invoke;
    v15 = &unk_278F88738;
    objc_copyWeak(&v16, &location);
    v9 = [v8 initWithFireDate:_nextRefreshTimerFireDate interval:0 repeats:&v12 block:0.0];
    v10 = self->_refreshTimer;
    self->_refreshTimer = v9;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_refreshTimer forMode:*MEMORY[0x277CBE738]];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __65__DNDLifetimeDetailsProvider__queue_scheduleRefreshTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained requestLifetimeDetails];
    WeakRetained = v2;
    if (v2[32] == 1)
    {
      [v2 _scheduleRefreshTimerIfNeeded];
      WeakRetained = v2;
    }
  }
}

- (id)_nextRefreshTimerFireDate
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = 0;
  [currentCalendar getHour:&v8 minute:0 second:0 nanosecond:0 fromDate:date];
  if (v8 <= 3)
  {
    v4 = 4;
LABEL_5:
    v5 = [currentCalendar dateBySettingHour:v4 minute:0 second:0 ofDate:date options:1];
    goto LABEL_7;
  }

  if (v8 <= 0x11)
  {
    v4 = 18;
    goto LABEL_5;
  }

  v6 = [currentCalendar dateBySettingHour:4 minute:0 second:0 ofDate:date options:1];
  v5 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v6 options:0];

LABEL_7:

  return v5;
}

- (void)_systemTimeChanged
{
  [(DNDLifetimeDetailsProvider *)self requestLifetimeDetails];

  [(DNDLifetimeDetailsProvider *)self _scheduleRefreshTimerIfNeeded];
}

- (DNDLifetimeDetailsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__DNDLifetimeDetailsProvider__requestRelevantLocationMetadata__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_249121000, a2, OS_LOG_TYPE_ERROR, "Error determining location: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end