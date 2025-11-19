@interface CUIKEventHeuristics
+ (BOOL)_shouldFilterEvent:(id)a3 filterOptions:(unint64_t)a4;
+ (id)_sortedAndFilteredEventsForPredicate:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6;
+ (id)_sortedEvents:(id)a3 withMethod:(unint64_t)a4;
+ (id)todaysEventsInCalendars:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6;
+ (id)tomorrowsEventsInCalendars:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6;
+ (id)upcomingEventsInCalendars:(id)a3 onlyReturnFirstEvents:(BOOL)a4 filterOptions:(unint64_t)a5 sortMethod:(unint64_t)a6 eventStore:(id)a7;
@end

@implementation CUIKEventHeuristics

+ (id)todaysEventsInCalendars:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a3;
  v13 = [v10 CalDateForBeginningOfToday];
  v14 = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
  v15 = [v11 predicateForEventsWithStartDate:v13 endDate:v14 calendars:v12];

  v16 = [a1 _sortedAndFilteredEventsForPredicate:v15 filterOptions:a4 sortMethod:a5 eventStore:v11];

  return v16;
}

+ (id)tomorrowsEventsInCalendars:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a3;
  v13 = [v10 CalDateForBeginningOfTomorrow];
  v14 = [MEMORY[0x1E695DF00] CalDateForEndOfTomorrow];
  v15 = [v11 predicateForEventsWithStartDate:v13 endDate:v14 calendars:v12];

  v16 = [a1 _sortedAndFilteredEventsForPredicate:v15 filterOptions:a4 sortMethod:a5 eventStore:v11];

  return v16;
}

+ (id)upcomingEventsInCalendars:(id)a3 onlyReturnFirstEvents:(BOOL)a4 filterOptions:(unint64_t)a5 sortMethod:(unint64_t)a6 eventStore:(id)a7
{
  v10 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = [MEMORY[0x1E695DF00] CalDateForNow];
  v15 = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
  v16 = [v13 predicateForEventsWithStartDate:v14 endDate:v15 calendars:v12];

  v30 = v16;
  v17 = [a1 _sortedAndFilteredEventsForPredicate:v16 filterOptions:a5 sortMethod:a6 eventStore:v13];
  v18 = v17;
  v31 = v13;
  v32 = v12;
  if (v10)
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
            v25 = [v21 lastObject];
            v26 = [v24 startDate];
            v27 = [v25 startDate];
            v28 = [v26 isEqualToDate:v27];

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

+ (id)_sortedAndFilteredEventsForPredicate:(id)a3 filterOptions:(unint64_t)a4 sortMethod:(unint64_t)a5 eventStore:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = [a6 eventsMatchingPredicate:a3];
  v10 = [a1 _sortedEvents:v9 withMethod:a5];
  v11 = [MEMORY[0x1E695DF70] array];
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
        if (([a1 _shouldFilterEvent:v17 filterOptions:{a4, v20}] & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];

  return v18;
}

+ (id)_sortedEvents:(id)a3 withMethod:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = v5;
  if (a4 == 1)
  {
    v7 = v5;
    if (v6)
    {
      v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_17];
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

+ (BOOL)_shouldFilterEvent:(id)a3 filterOptions:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 calendar];
  v7 = ([v6 type] == 4) & (v4 >> 1);

  LODWORD(v6) = ((v4 & 4) != 0) & [v5 isAllDay];
  v8 = v4 & ([v5 status] == 3) | v6 | v7;
  if ([v5 hasAttendees])
  {
    v9 = [v5 organizer];
    if (([v9 isCurrentUser] & 1) == 0)
    {
      v10 = [v5 selfAttendee];
      v11 = ([v10 participantStatus] == 3) & (v4 >> 3);

      LOBYTE(v8) = v11 | v8;
    }
  }

  if ((v4 & 0x10) != 0 && (v8 & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF00] CalDateForEndOfToday];
    v13 = [MEMORY[0x1E6992F70] rangeWithStartDate:v12 endDate:v12];

    LOBYTE(v8) = [v13 intersectsRange:v5];
  }

  return v8 & 1;
}

@end