@interface CDBRecurrenceGenerator
- (id)_copyOccurrenceDatesWithBirthdayEvent:(void *)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 limit:(int64_t)a7 locked:(BOOL)a8;
- (id)copyOccurrenceDatesWithCalEvent:(void *)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 limit:(int64_t)a7 includeExtraOccurrencesPastEndDate:(BOOL)a8 locked:(BOOL)a9;
- (id)copyOccurrenceDatesWithInitialDate:(id)a3 calRecurrences:(id)a4 rangeStart:(id)a5 rangeEnd:(id)a6 timeZone:(id)a7;
- (id)nextOccurrenceDateWithCalRecurrences:(id)a3 exceptionDates:(id)a4 initialDate:(id)a5 afterDate:(id)a6;
- (void)_prepareForCalRecurrence:(void *)a3 locked:(BOOL)a4;
- (void)_setupForCalEvent:(void *)a3 locked:(BOOL)a4;
@end

@implementation CDBRecurrenceGenerator

- (void)_setupForCalEvent:(void *)a3 locked:(BOOL)a4
{
  if (a4)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(_CalEventGetStartDate(a3))];
  [(CalRecurrenceGenerator *)self setEventStartDate:v7];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecurrenceGetEndDate(a3)];
  [(CalRecurrenceGenerator *)self setEventEndDate:v8];

  started = _CalCalendarItemCopyStartTimeZone(a3);
  [(CalRecurrenceGenerator *)self setEventTimeZone:started];

  [(CalRecurrenceGenerator *)self setAllDay:_CalEventIsAllDay(a3)];
  Calendar = _CalEventGetCalendar(a3);
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

- (id)_copyOccurrenceDatesWithBirthdayEvent:(void *)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 limit:(int64_t)a7 locked:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v8)
  {
    v15 = _CalCalendarItemCopyCalendarScale(a3);
  }

  else
  {
    v15 = CalCalendarItemCopyCalendarScale(a3);
  }

  v32 = v15;
  v16 = [MEMORY[0x1E695DEE8] CalCalendarWithUnsanitizedCalendarIdentifier:v15];
  v17 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v16 setTimeZone:v17];
  v34 = v12;
  v18 = [MEMORY[0x1E69930C8] calendarDateWithDate:v12 timeZone:v14];
  v33 = v13;
  v19 = [MEMORY[0x1E69930C8] calendarDateWithDate:v13 timeZone:v14];
  v20 = objc_alloc(MEMORY[0x1E6992F70]);
  v21 = [v18 date];
  v22 = [v19 date];
  v23 = [v20 initWithStartDate:v21 endDate:v22];

  v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{COERCE_DOUBLE(_CalEventCopyStartDateWhileLocked(a3, v8))}];
  CalDateTimeRelease();
  v25 = [v23 startDate];
  LODWORD(v22) = [v24 CalIsAfterOrSameAsDate:v25];

  if (v22)
  {
    v26 = objc_alloc(MEMORY[0x1E6992F70]);
    v27 = [v23 endDate];
    v28 = [v26 initWithStartDate:v24 endDate:v27];

    v23 = v28;
  }

  v29 = [v16 components:24 fromDate:v24];
  [v16 setTimeZone:v14];
  v30 = [v16 CalOccurrencesForBirthday:v29 inDateRange:v23];

  return v30;
}

- (id)copyOccurrenceDatesWithCalEvent:(void *)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 limit:(int64_t)a7 includeExtraOccurrencesPastEndDate:(BOOL)a8 locked:(BOOL)a9
{
  v34 = a8;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  [(CDBRecurrenceGenerator *)self _setupForCalEvent:a3 locked:a9];
  if (a9)
  {
    v17 = _CalEventCopyContactIdentifier(a3);
    if (v17)
    {
LABEL_3:
      CFRelease(v17);
      v18 = [(CDBRecurrenceGenerator *)self _copyOccurrenceDatesWithBirthdayEvent:a3 startDate:v14 endDate:v15 timeZone:v16 limit:a7 locked:a9];
      goto LABEL_23;
    }
  }

  else
  {
    v17 = CalEventCopyContactIdentifier(a3);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v19 = _CalCalendarItemCopyRecurrencesWhileLocked(a3, a9);
  if (!v19)
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_23;
  }

  v20 = v19;
  Count = CFArrayGetCount(v19);
  v35 = v15;
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
    v24 = v16;
    v25 = v14;
    for (i = 0; i != Count; ++i)
    {
      [(CDBRecurrenceGenerator *)self _prepareForCalRecurrence:CFArrayGetValueAtIndex(v20 locked:i), a9];
      v27 = objc_autoreleasePoolPush();
      if (a7)
      {
        v28 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v25 endDate:v15 timeZone:v24 limit:a7];
      }

      else
      {
        v28 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v25 endDate:v15 timeZone:v24 plusExtraOccurrencePastEnd:v34];
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
      v15 = v35;
    }

    v14 = v25;
    v16 = v24;
    v22 = v33;
  }

  CFRelease(v20);
  if (v23)
  {
    v18 = v23;
  }

  else
  {
    v31 = [v22 array];
    v18 = [v31 sortedArrayUsingSelector:sel_compare_];

    v15 = v35;
  }

LABEL_23:
  return v18;
}

- (id)copyOccurrenceDatesWithInitialDate:(id)a3 calRecurrences:(id)a4 rangeStart:(id)a5 rangeEnd:(id)a6 timeZone:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v28 = a5;
  v14 = a6;
  v15 = a7;
  [(CalRecurrenceGenerator *)self setEventStartDate:v12];
  v16 = v12;
  [(CalRecurrenceGenerator *)self setEventEndDate:v12];
  [(CalRecurrenceGenerator *)self setEventTimeZone:v15];
  [(CalRecurrenceGenerator *)self setAllDay:0];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v13;
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
        v23 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesWithInitialDate:v16 allDay:0 rangeStart:v28 rangeEnd:v14 timeZone:v15 limit:0];
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

- (id)nextOccurrenceDateWithCalRecurrences:(id)a3 exceptionDates:(id)a4 initialDate:(id)a5 afterDate:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 date];
  [(CalRecurrenceGenerator *)self setEventStartDate:v14];

  v15 = [v12 date];
  [(CalRecurrenceGenerator *)self setEventEndDate:v15];

  v16 = [v12 timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:v16];

  [(CalRecurrenceGenerator *)self setAllDay:0];
  v17 = MEMORY[0x1E69930C8];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1577840000.0];
  v43 = v12;
  v19 = [v12 timeZone];
  v44 = [v17 calendarDateWithDate:v18 timeZone:v19];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v10;
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
      v22 = [v13 calendarDateByAddingSeconds:1];
      v23 = [(CalRecurrenceGenerator *)self endDate];

      if (v23)
      {
        v24 = MEMORY[0x1E69930C8];
        v25 = [(CalRecurrenceGenerator *)self endDate];
        v26 = [v13 timeZone];
        v27 = [v24 calendarDateWithDate:v25 timeZone:v26];

        v28 = [v27 date];
        v29 = [v28 dateByAddingTimeInterval:1.0];
      }

      else
      {
        v29 = [v44 date];
      }

      v30 = [v11 count];
      v31 = [v22 date];
      v32 = [v13 timeZone];
      v33 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v31 endDate:v29 timeZone:v32 limit:v30 + 1];

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
        v36 = self;
        v37 = v13;
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
            if (([v11 containsObject:v40] & 1) == 0)
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
        v13 = v37;
        self = v36;
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

- (void)_prepareForCalRecurrence:(void *)a3 locked:(BOOL)a4
{
  if (a4)
  {
    RecordLock = 0;
  }

  else
  {
    RecordLock = CalGetRecordLock();
    os_unfair_lock_lock(RecordLock);
  }

  [(CalRecurrenceGenerator *)self setWeekStart:_CalRecurrenceGetWeekStart(a3) + 1];
  [(CalRecurrenceGenerator *)self setFrequency:_CalRecurrenceGetFrequency(a3)];
  [(CalRecurrenceGenerator *)self setInterval:_CalRecurrenceGetInterval(a3)];
  v7 = _CalRecurrenceCopyBySetPos(a3);
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

  v15 = _CalRecurrenceCopyByDayDays(a3);
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

  v24 = _CalRecurrenceGetByMonthMonths(a3);
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

  v30 = _CalRecurrenceCopyByMonthDayDays(a3);
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

  v38 = _CalRecurrenceCopyByWeekWeeks(a3);
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

  v46 = _CalRecurrenceCopyByYearDayDays(a3);
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

  if (vabdd_f64(COERCE_DOUBLE(_CalRecurrenceCopyCachedEndDate(a3)), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
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

  if (vabdd_f64(_CalRecurrenceGetEndDate(a3), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
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

  if (!_CalRecurrenceGetCount(a3))
  {
    goto LABEL_43;
  }

  v54 = [(CalRecurrenceGenerator *)self computeRecurrenceEndDate:_CalRecurrenceGetCount(a3)];
  [(CalRecurrenceGenerator *)self setEndDate:v54];

  v55 = [(CalRecurrenceGenerator *)self endDate];
  [v55 timeIntervalSinceReferenceDate];
  v62 = v56;

  v57 = [(CalRecurrenceGenerator *)self eventTimeZone];
  if (v57)
  {
    v58 = [(CalRecurrenceGenerator *)self eventTimeZone];
    v59 = CalCFTimeZoneCopyCalTimeZone();
  }

  else
  {
    v59 = @"_float";
  }

  CalDateTimeSetTimeZone();
  _CalRecurrenceSetCachedEndDate(a3, v62);
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