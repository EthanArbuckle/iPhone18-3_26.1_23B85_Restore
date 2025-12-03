@interface CDBRecurrenceGenerator
- (id)_copyOccurrenceDatesWithBirthdayEvent:(void *)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit locked:(BOOL)locked;
- (id)copyOccurrenceDatesWithCalEvent:(void *)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit includeExtraOccurrencesPastEndDate:(BOOL)pastEndDate locked:(BOOL)locked;
- (id)copyOccurrenceDatesWithInitialDate:(id)date calRecurrences:(id)recurrences rangeStart:(id)start rangeEnd:(id)end timeZone:(id)zone;
- (id)nextOccurrenceDateWithCalRecurrences:(id)recurrences exceptionDates:(id)dates initialDate:(id)date afterDate:(id)afterDate;
- (void)_prepareForCalRecurrence:(void *)recurrence locked:(BOOL)locked;
- (void)_setupForCalEvent:(void *)event locked:(BOOL)locked;
@end

@implementation CDBRecurrenceGenerator

- (void)_setupForCalEvent:(void *)event locked:(BOOL)locked
{
  if (locked)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(_CalEventGetStartDate(event))];
  [(CalRecurrenceGenerator *)self setEventStartDate:v7];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecurrenceGetEndDate(event)];
  [(CalRecurrenceGenerator *)self setEventEndDate:v8];

  started = _CalCalendarItemCopyStartTimeZone(event);
  [(CalRecurrenceGenerator *)self setEventTimeZone:started];

  [(CalRecurrenceGenerator *)self setAllDay:_CalEventIsAllDay(event)];
  Calendar = _CalEventGetCalendar(event);
  v12 = Calendar && (Store = _CalCalendarGetStore(Calendar)) != 0 && _CalStoreAreRecurrencesPinnedToMonthDays(Store);
  [(CalRecurrenceGenerator *)self setShouldPinMonthDays:v12];
  if (RecordLock)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }
}

- (id)_copyOccurrenceDatesWithBirthdayEvent:(void *)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit locked:(BOOL)locked
{
  lockedCopy = locked;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  if (lockedCopy)
  {
    v15 = _CalCalendarItemCopyCalendarScale(event);
  }

  else
  {
    v15 = CalCalendarItemCopyCalendarScale(event);
  }

  v32 = v15;
  v16 = [MEMORY[0x1E695DEE8] CalCalendarWithUnsanitizedCalendarIdentifier:v15];
  v17 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v16 setTimeZone:v17];
  v34 = dateCopy;
  v18 = [MEMORY[0x1E69930C8] calendarDateWithDate:dateCopy timeZone:zoneCopy];
  v33 = endDateCopy;
  v19 = [MEMORY[0x1E69930C8] calendarDateWithDate:endDateCopy timeZone:zoneCopy];
  v20 = objc_alloc(MEMORY[0x1E6992F70]);
  date = [v18 date];
  date2 = [v19 date];
  v23 = [v20 initWithStartDate:date endDate:date2];

  v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{COERCE_DOUBLE(_CalEventCopyStartDateWhileLocked(event, lockedCopy))}];
  CalDateTimeRelease();
  startDate = [v23 startDate];
  LODWORD(date2) = [v24 CalIsAfterOrSameAsDate:startDate];

  if (date2)
  {
    v26 = objc_alloc(MEMORY[0x1E6992F70]);
    endDate = [v23 endDate];
    v28 = [v26 initWithStartDate:v24 endDate:endDate];

    v23 = v28;
  }

  v29 = [v16 components:24 fromDate:v24];
  [v16 setTimeZone:zoneCopy];
  v30 = [v16 CalOccurrencesForBirthday:v29 inDateRange:v23];

  return v30;
}

- (id)copyOccurrenceDatesWithCalEvent:(void *)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit includeExtraOccurrencesPastEndDate:(BOOL)pastEndDate locked:(BOOL)locked
{
  pastEndDateCopy = pastEndDate;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  [(CDBRecurrenceGenerator *)self _setupForCalEvent:event locked:locked];
  if (locked)
  {
    v17 = _CalEventCopyContactIdentifier(event);
    if (v17)
    {
LABEL_3:
      CFRelease(v17);
      v18 = [(CDBRecurrenceGenerator *)self _copyOccurrenceDatesWithBirthdayEvent:event startDate:dateCopy endDate:endDateCopy timeZone:zoneCopy limit:limit locked:locked];
      goto LABEL_23;
    }
  }

  else
  {
    v17 = CalEventCopyContactIdentifier(event);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v19 = _CalCalendarItemCopyRecurrencesWhileLocked(event, locked);
  if (!v19)
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_23;
  }

  v20 = v19;
  Count = CFArrayGetCount(v19);
  v35 = endDateCopy;
  if (Count >= 2)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:0];
    v23 = 0;
    goto LABEL_10;
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v22 = 0;
  if (Count == 1)
  {
LABEL_10:
    v33 = v22;
    v24 = zoneCopy;
    v25 = dateCopy;
    for (i = 0; i != Count; ++i)
    {
      [(CDBRecurrenceGenerator *)self _prepareForCalRecurrence:CFArrayGetValueAtIndex(v20 locked:i), locked];
      v27 = objc_autoreleasePoolPush();
      if (limit)
      {
        v28 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v25 endDate:endDateCopy timeZone:v24 limit:limit];
      }

      else
      {
        v28 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v25 endDate:endDateCopy timeZone:v24 plusExtraOccurrencePastEnd:pastEndDateCopy];
      }

      v29 = v28;
      if (v23)
      {
        v30 = v23;
      }

      else
      {
        v30 = v33;
      }

      [v30 addObjectsFromArray:{v29, v33}];

      objc_autoreleasePoolPop(v27);
      endDateCopy = v35;
    }

    dateCopy = v25;
    zoneCopy = v24;
    v22 = v33;
  }

  CFRelease(v20);
  if (v23)
  {
    v18 = v23;
  }

  else
  {
    array = [v22 array];
    v18 = [array sortedArrayUsingSelector:sel_compare_];

    endDateCopy = v35;
  }

LABEL_23:
  return v18;
}

- (id)copyOccurrenceDatesWithInitialDate:(id)date calRecurrences:(id)recurrences rangeStart:(id)start rangeEnd:(id)end timeZone:(id)zone
{
  v34 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  recurrencesCopy = recurrences;
  startCopy = start;
  endCopy = end;
  zoneCopy = zone;
  [(CalRecurrenceGenerator *)self setEventStartDate:dateCopy];
  v16 = dateCopy;
  [(CalRecurrenceGenerator *)self setEventEndDate:dateCopy];
  [(CalRecurrenceGenerator *)self setEventTimeZone:zoneCopy];
  [(CalRecurrenceGenerator *)self setAllDay:0];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = recurrencesCopy;
  v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        [(CDBRecurrenceGenerator *)self _prepareForCalRecurrence:*(*(&v29 + 1) + 8 * v21) locked:0];
        v22 = objc_autoreleasePoolPush();
        v23 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesWithInitialDate:v16 allDay:0 rangeStart:startCopy rangeEnd:endCopy timeZone:zoneCopy limit:0];
        [v17 addObjectsFromArray:v23];

        objc_autoreleasePoolPop(v22);
        ++v21;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  v24 = [v17 copy];
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)nextOccurrenceDateWithCalRecurrences:(id)recurrences exceptionDates:(id)dates initialDate:(id)date afterDate:(id)afterDate
{
  v60 = *MEMORY[0x1E69E9840];
  recurrencesCopy = recurrences;
  datesCopy = dates;
  dateCopy = date;
  afterDateCopy = afterDate;
  date = [dateCopy date];
  [(CalRecurrenceGenerator *)self setEventStartDate:date];

  date2 = [dateCopy date];
  [(CalRecurrenceGenerator *)self setEventEndDate:date2];

  timeZone = [dateCopy timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:timeZone];

  [(CalRecurrenceGenerator *)self setAllDay:0];
  v17 = MEMORY[0x1E69930C8];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1577840000.0];
  v43 = dateCopy;
  timeZone2 = [dateCopy timeZone];
  v44 = [v17 calendarDateWithDate:v18 timeZone:timeZone2];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = recurrencesCopy;
  v47 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v47)
  {
    v46 = *v55;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v55 != v46)
      {
        objc_enumerationMutation(obj);
      }

      [(CDBRecurrenceGenerator *)self _prepareForCalRecurrence:*(*(&v54 + 1) + 8 * v20) locked:0];
      v21 = objc_autoreleasePoolPush();
      v22 = [afterDateCopy calendarDateByAddingSeconds:1];
      endDate = [(CalRecurrenceGenerator *)self endDate];

      if (endDate)
      {
        v24 = MEMORY[0x1E69930C8];
        endDate2 = [(CalRecurrenceGenerator *)self endDate];
        timeZone3 = [afterDateCopy timeZone];
        v27 = [v24 calendarDateWithDate:endDate2 timeZone:timeZone3];

        date3 = [v27 date];
        date4 = [date3 dateByAddingTimeInterval:1.0];
      }

      else
      {
        date4 = [v44 date];
      }

      v30 = [datesCopy count];
      date5 = [v22 date];
      timeZone4 = [afterDateCopy timeZone];
      v33 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:date5 endDate:date4 timeZone:timeZone4 limit:v30 + 1];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v34 = v33;
      v35 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v35)
      {
        v48 = v22;
        v49 = v21;
        selfCopy = self;
        v37 = afterDateCopy;
        v38 = *v51;
        while (2)
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v51 != v38)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v50 + 1) + 8 * i);
            if (([datesCopy containsObject:v40] & 1) == 0)
            {
              v35 = v40;
              goto LABEL_19;
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }

LABEL_19:
        afterDateCopy = v37;
        self = selfCopy;
        v22 = v48;
        v21 = v49;
      }

      objc_autoreleasePoolPop(v21);
      if (v35)
      {
        break;
      }

      if (++v20 == v47)
      {
        v47 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v47)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v35 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_prepareForCalRecurrence:(void *)recurrence locked:(BOOL)locked
{
  if (locked)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  [(CalRecurrenceGenerator *)self setWeekStart:_CalRecurrenceGetWeekStart(recurrence) + 1];
  [(CalRecurrenceGenerator *)self setFrequency:_CalRecurrenceGetFrequency(recurrence)];
  [(CalRecurrenceGenerator *)self setInterval:_CalRecurrenceGetInterval(recurrence)];
  v7 = _CalRecurrenceCopyBySetPos(recurrence);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{CFArrayGetValueAtIndex(v8, i)}];
        [v9 addObject:v13];
      }
    }

    v14 = [v9 copy];
    [(CalRecurrenceGenerator *)self setSetPositions:v14];

    CFRelease(v8);
  }

  v15 = _CalRecurrenceCopyByDayDays(recurrence);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v18 = CFArrayGetCount(v16);
    if (v18 >= 1)
    {
      v19 = v18;
      for (j = 0; j != v19; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, j);
        v22 = [MEMORY[0x1E6993030] dayOfWeek:(ValueAtIndex[1] + 1) weekNumber:*ValueAtIndex];
        [v17 addObject:v22];
      }
    }

    v23 = [v17 copy];
    [(CalRecurrenceGenerator *)self setDaysOfTheWeek:v23];

    CFRelease(v16);
  }

  v24 = _CalRecurrenceGetByMonthMonths(recurrence);
  if (v24)
  {
    v25 = v24;
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    for (k = 0; k != 12; ++k)
    {
      if (((1 << k) & v25) != 0)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:(log2((1 << k)) + 1.0)];
        [v26 addObject:v28];
      }
    }

    v29 = [v26 copy];
    [(CalRecurrenceGenerator *)self setMonthsOfTheYear:v29];
  }

  v30 = _CalRecurrenceCopyByMonthDayDays(recurrence);
  if (v30)
  {
    v31 = v30;
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v33 = CFArrayGetCount(v31);
    if (v33 >= 1)
    {
      v34 = v33;
      for (m = 0; m != v34; ++m)
      {
        v36 = [MEMORY[0x1E696AD98] numberWithInteger:{CFArrayGetValueAtIndex(v31, m)}];
        [v32 addObject:v36];
      }
    }

    v37 = [v32 copy];
    [(CalRecurrenceGenerator *)self setDaysOfTheMonth:v37];

    CFRelease(v31);
  }

  v38 = _CalRecurrenceCopyByWeekWeeks(recurrence);
  if (v38)
  {
    v39 = v38;
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v41 = CFArrayGetCount(v39);
    if (v41 >= 1)
    {
      v42 = v41;
      for (n = 0; n != v42; ++n)
      {
        v44 = [MEMORY[0x1E696AD98] numberWithInteger:{CFArrayGetValueAtIndex(v39, n)}];
        [v40 addObject:v44];
      }
    }

    v45 = [v40 copy];
    [(CalRecurrenceGenerator *)self setWeeksOfTheYear:v45];

    CFRelease(v39);
  }

  v46 = _CalRecurrenceCopyByYearDayDays(recurrence);
  if (v46)
  {
    v47 = v46;
    v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v49 = CFArrayGetCount(v47);
    if (v49 >= 1)
    {
      v50 = v49;
      for (ii = 0; ii != v50; ++ii)
      {
        v52 = [MEMORY[0x1E696AD98] numberWithInteger:{CFArrayGetValueAtIndex(v47, ii)}];
        [v48 addObject:v52];
      }
    }

    v53 = [v48 copy];
    [(CalRecurrenceGenerator *)self setDaysOfTheYear:v53];

    CFRelease(v47);
  }

  if (vabdd_f64(COERCE_DOUBLE(_CalRecurrenceCopyCachedEndDate(recurrence)), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    v60 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    [(CalRecurrenceGenerator *)self setEndDate:v60];

    CalDateTimeRelease();
    if (!RecordLock)
    {
      return;
    }

    goto LABEL_44;
  }

  if (vabdd_f64(_CalRecurrenceGetEndDate(recurrence), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    v61 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    [(CalRecurrenceGenerator *)self setEndDate:v61];

LABEL_43:
    if (!RecordLock)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!_CalRecurrenceGetCount(recurrence))
  {
    goto LABEL_43;
  }

  v54 = [(CalRecurrenceGenerator *)self computeRecurrenceEndDate:_CalRecurrenceGetCount(recurrence)];
  [(CalRecurrenceGenerator *)self setEndDate:v54];

  endDate = [(CalRecurrenceGenerator *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  v62 = v56;

  eventTimeZone = [(CalRecurrenceGenerator *)self eventTimeZone];
  if (eventTimeZone)
  {
    eventTimeZone2 = [(CalRecurrenceGenerator *)self eventTimeZone];
    v59 = CalCFTimeZoneCopyCalTimeZone();
  }

  else
  {
    v59 = @"_float";
  }

  CalDateTimeSetTimeZone();
  _CalRecurrenceSetCachedEndDate(recurrence, v62);
  CalDateTimeRelease();
  CFRelease(v59);
  if (RecordLock)
  {
LABEL_44:
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }
}

@end