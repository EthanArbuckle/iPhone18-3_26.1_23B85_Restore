@interface CUIKEventHeuristics
+ (BOOL)_shouldFilterEvent:(id)event filterOptions:(unint64_t)options;
+ (id)_sortedAndFilteredEventsForPredicate:(id)predicate filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store;
+ (id)_sortedEvents:(id)events withMethod:(unint64_t)method;
+ (id)todaysEventsInCalendars:(id)calendars filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store;
+ (id)tomorrowsEventsInCalendars:(id)calendars filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store;
+ (id)upcomingEventsInCalendars:(id)calendars onlyReturnFirstEvents:(BOOL)events filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store;
@end

@implementation CUIKEventHeuristics

+ (id)todaysEventsInCalendars:(id)calendars filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store
{
  v10 = MEMORY[0x1E695DF00];
  storeCopy = store;
  calendarsCopy = calendars;
  calDateForBeginningOfToday = [v10 CalDateForBeginningOfToday];
  calDateForEndOfToday = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
  v15 = [storeCopy predicateForEventsWithStartDate:calDateForBeginningOfToday endDate:calDateForEndOfToday calendars:calendarsCopy];

  v16 = [self _sortedAndFilteredEventsForPredicate:v15 filterOptions:options sortMethod:method eventStore:storeCopy];

  return v16;
}

+ (id)tomorrowsEventsInCalendars:(id)calendars filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store
{
  v10 = MEMORY[0x1E695DF00];
  storeCopy = store;
  calendarsCopy = calendars;
  calDateForBeginningOfTomorrow = [v10 CalDateForBeginningOfTomorrow];
  calDateForEndOfTomorrow = [MEMORY[0x1E695DF00] CalDateForEndOfTomorrow];
  v15 = [storeCopy predicateForEventsWithStartDate:calDateForBeginningOfTomorrow endDate:calDateForEndOfTomorrow calendars:calendarsCopy];

  v16 = [self _sortedAndFilteredEventsForPredicate:v15 filterOptions:options sortMethod:method eventStore:storeCopy];

  return v16;
}

+ (id)upcomingEventsInCalendars:(id)calendars onlyReturnFirstEvents:(BOOL)events filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store
{
  eventsCopy = events;
  v38 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  storeCopy = store;
  calDateForNow = [MEMORY[0x1E695DF00] CalDateForNow];
  calDateForEndOfToday = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
  v16 = [storeCopy predicateForEventsWithStartDate:calDateForNow endDate:calDateForEndOfToday calendars:calendarsCopy];

  v30 = v16;
  v17 = [self _sortedAndFilteredEventsForPredicate:v16 filterOptions:options sortMethod:method eventStore:storeCopy];
  v18 = v17;
  v31 = storeCopy;
  v32 = calendarsCopy;
  if (eventsCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          if (v21)
          {
            lastObject = [v21 lastObject];
            startDate = [v24 startDate];
            startDate2 = [lastObject startDate];
            v28 = [startDate isEqualToDate:startDate2];

            if (v28)
            {
              [v21 addObject:v24];
            }
          }

          else
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v21 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = v17;
  }

  return v21;
}

+ (id)_sortedAndFilteredEventsForPredicate:(id)predicate filterOptions:(unint64_t)options sortMethod:(unint64_t)method eventStore:(id)store
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = [store eventsMatchingPredicate:predicate];
  v10 = [self _sortedEvents:v9 withMethod:method];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (([self _shouldFilterEvent:v17 filterOptions:{options, v20}] & 1) == 0)
        {
          [array addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v18;
}

+ (id)_sortedEvents:(id)events withMethod:(unint64_t)method
{
  eventsCopy = events;
  v6 = [eventsCopy count];
  v7 = eventsCopy;
  if (method == 1)
  {
    v7 = eventsCopy;
    if (v6)
    {
      v7 = [eventsCopy sortedArrayUsingComparator:&__block_literal_global_17];
    }
  }

  return v7;
}

uint64_t __48__CUIKEventHeuristics__sortedEvents_withMethod___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 startDate];
  v4 = [v2 startDate];

  v5 = [v3 compare:v4];
  return v5;
}

+ (BOOL)_shouldFilterEvent:(id)event filterOptions:(unint64_t)options
{
  optionsCopy = options;
  eventCopy = event;
  calendar = [eventCopy calendar];
  v7 = ([calendar type] == 4) & (optionsCopy >> 1);

  LODWORD(calendar) = ((optionsCopy & 4) != 0) & [eventCopy isAllDay];
  v8 = optionsCopy & ([eventCopy status] == 3) | calendar | v7;
  if ([eventCopy hasAttendees])
  {
    organizer = [eventCopy organizer];
    if (([organizer isCurrentUser] & 1) == 0)
    {
      selfAttendee = [eventCopy selfAttendee];
      v11 = ([selfAttendee participantStatus] == 3) & (optionsCopy >> 3);

      LOBYTE(v8) = v11 | v8;
    }
  }

  if ((optionsCopy & 0x10) != 0 && (v8 & 1) == 0)
  {
    calDateForEndOfToday = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
    v13 = [MEMORY[0x1E6992F70] rangeWithStartDate:calDateForEndOfToday endDate:calDateForEndOfToday];

    LOBYTE(v8) = [v13 intersectsRange:eventCopy];
  }

  return v8 & 1;
}

@end