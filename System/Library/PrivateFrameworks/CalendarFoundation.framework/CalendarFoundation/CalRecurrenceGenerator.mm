@interface CalRecurrenceGenerator
- (CalRecurrenceGenerator)init;
- (double)convertAbsoluteTime:(double)time fromTimeZone:(id)zone toTimeZone:(id)timeZone;
- (double)duration;
- (id)_copyDailyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate;
- (id)_copyMonthlyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate;
- (id)_copyWeeklyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate;
- (id)_copyYearlyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate;
- (id)computeRecurrenceEndDate:(unint64_t)date;
- (id)copyOccurrenceDatesBetweenStartDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit plusExtraOccurrencePastEnd:(BOOL)end;
@end

@implementation CalRecurrenceGenerator

- (CalRecurrenceGenerator)init
{
  v7.receiver = self;
  v7.super_class = CalRecurrenceGenerator;
  v2 = [(CalRecurrenceGenerator *)&v7 init];
  if (v2)
  {
    calGregorianGMTCalendar = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v4 = [calGregorianGMTCalendar copy];
    calendar = v2->_calendar;
    v2->_calendar = v4;
  }

  return v2;
}

- (id)computeRecurrenceEndDate:(unint64_t)date
{
  eventStartDate = self->_eventStartDate;
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1577840000.0];
  v7 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:eventStartDate endDate:v6 timeZone:self->_eventTimeZone limit:date];

  lastObject = [v7 lastObject];

  return lastObject;
}

- (double)duration
{
  eventEndDate = [(CalRecurrenceGenerator *)self eventEndDate];
  [eventEndDate timeIntervalSinceReferenceDate];
  v5 = v4;
  eventStartDate = [(CalRecurrenceGenerator *)self eventStartDate];
  [eventStartDate timeIntervalSinceReferenceDate];
  v8 = v5 - v7;

  return v8;
}

- (double)convertAbsoluteTime:(double)time fromTimeZone:(id)zone toTimeZone:(id)timeZone
{
  timeZoneCopy = timeZone;
  *&v10.year = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone(zone, time);
  AbsoluteTimeWithFallbackToDefaultTimeZone = CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone(v10, timeZoneCopy);

  return AbsoluteTimeWithFallbackToDefaultTimeZone;
}

- (id)copyOccurrenceDatesBetweenStartDate:(id)date endDate:(id)endDate timeZone:(id)zone limit:(int64_t)limit plusExtraOccurrencePastEnd:(BOOL)end
{
  endCopy = end;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  eventStartDate = [(CalRecurrenceGenerator *)self eventStartDate];
  if (!eventStartDate || (v15 = eventStartDate, [(CalRecurrenceGenerator *)self eventEndDate], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"CalRecurrenceGenerator must have start date and end date set before calling -copyOccurrenceDatesBetweenStartDate:endDate:timeZone:limit:."];
  }

  v17 = zoneCopy;
  v18 = v17;
  v19 = v17;
  if (self->_eventTimeZone)
  {
    v19 = v17;
    if (([(NSTimeZone *)v17 isEqual:?]& 1) == 0)
    {
      v19 = self->_eventTimeZone;
    }
  }

  if (v19)
  {
    [(NSCalendar *)self->_calendar setTimeZone:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [(NSCalendar *)self->_calendar setTimeZone:v20];
  }

  v21 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:v19];

  v22 = [EKCalendarDate calendarDateWithDate:endDateCopy timeZone:v19];

  v23 = [EKCalendarDate calendarDateWithDate:self->_eventStartDate timeZone:self->_eventTimeZone];
  v24 = [v23 calendarDateInTimeZone:v19];

  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v26 = v25;
  if ([(CalRecurrenceGenerator *)self requiresEndDateConversionFromGMTToEventTimeZone]&& v26 != 0.0)
  {
    v27 = CalTimeZoneCopyCFTimeZone(@"GMT");
    [(CalRecurrenceGenerator *)self convertAbsoluteTime:v27 fromTimeZone:v19 toTimeZone:v26];
    v26 = v28;
    CFRelease(v27);
  }

  [v24 absoluteTime];
  v30 = v29;
  [v22 absoluteTime];
  if (v30 > v31 || self->_endDate && ([v21 absoluteTime], v33 = v32, -[CalRecurrenceGenerator duration](self, "duration"), v33 > v26 + v34))
  {
    v35 = 0;
    goto LABEL_56;
  }

  [v21 absoluteTime];
  v37 = v36;
  [v24 absoluteTime];
  if (v37 <= v38)
  {
    goto LABEL_20;
  }

  [v24 absoluteTime];
  v40 = v39;
  [(CalRecurrenceGenerator *)self duration];
  v42 = v40 + v41;
  [v21 absoluteTime];
  if (v42 <= v43 || ([v24 absoluteTime], v45 = v44, objc_msgSend(v21, "absoluteTime"), v45 >= v46))
  {
    v93 = endCopy;
    dayTimeComponents = [v21 dayTimeComponents];
    allComponents = [v24 allComponents];
    [dayTimeComponents setHour:{objc_msgSend(allComponents, "hour")}];
    [dayTimeComponents setMinute:{objc_msgSend(allComponents, "minute")}];
    [dayTimeComponents setSecond:{objc_msgSend(allComponents, "second")}];
    [dayTimeComponents setNanosecond:{objc_msgSend(allComponents, "nanosecond")}];
    v47 = [EKCalendarDate calendarDateWithDateComponents:dayTimeComponents timeZone:v19];
    [v21 absoluteTime];
    v51 = v50;
    [v47 absoluteTime];
    v53 = v51 - v52;
    if (v53 <= 0.0)
    {
      v89 = dayTimeComponents;
      v92 = allComponents;
      v56 = objc_opt_new();
      [(CalRecurrenceGenerator *)self duration];
      [v56 setSecond:v57];
      if (self->_allDay)
      {
        [(CalRecurrenceGenerator *)self duration];
        [v56 setDay:{fmax((v58 + 1.0) / *&CalTimeInterval_OneDayInSeconds, 0.0)}];
        [v56 setSecond:-1];
      }

      v91 = v56;
      v59 = [v47 calendarDateByComponentwiseAddingComponents:v56];
      dayTimeComponents2 = [v59 dayTimeComponents];
      [dayTimeComponents2 setMonth:{objc_msgSend(v21, "month")}];
      [dayTimeComponents2 setDay:{objc_msgSend(v21, "day")}];
      [dayTimeComponents2 setYear:{objc_msgSend(v21, "year")}];
      v90 = dayTimeComponents2;
      v61 = [EKCalendarDate calendarDateWithDateComponents:dayTimeComponents2 timeZone:v19];

      [v61 absoluteTime];
      v63 = v62;
      [v21 absoluteTime];
      if (v63 >= v64)
      {
        v85 = v61;
        v67 = objc_opt_new();
        allDay = self->_allDay;
        [(CalRecurrenceGenerator *)self duration];
        if (allDay)
        {
          v70 = (v69 + 1.0) / *&CalTimeInterval_OneDayInSeconds;
          v71 = -v70;
          v72 = v70 <= 0.0;
          v73 = -0.0;
          if (!v72)
          {
            v73 = v71;
          }

          [v67 setDay:{v73, v85}];
          v74 = 1;
        }

        else
        {
          v74 = -v69;
        }

        v75 = v67;
        dayTimeComponents = v89;
        v87 = v75;
        [v75 setSecond:{v74, v85}];
        v65 = v86;
        v88 = [v86 calendarDateByComponentwiseAddingComponents:v87];

        v21 = v87;
      }

      else
      {
        v88 = v47;
        v65 = v61;
        dayTimeComponents = v89;
      }

      v21 = v88;
      v66 = v91;
      allComponents = v92;
    }

    else
    {
      [(CalRecurrenceGenerator *)self duration];
      if (v53 >= v54)
      {
        v55 = [v47 calendarDateByAddingDays:1];
      }

      else
      {
        v55 = v47;
      }

      v66 = v21;
      v21 = v55;
    }

    endCopy = v93;
  }

  else
  {
LABEL_20:
    v47 = v21;
    v21 = v24;
  }

  if (self->_endDate && ([v22 absoluteTime], v76 > v26))
  {
    v77 = [EKCalendarDate calendarDateWithAbsoluteTime:v19 timeZone:v26 + 1.0];

    LOBYTE(endCopy) = 0;
    v78 = 0;
    v22 = v77;
  }

  else
  {
    v78 = endCopy;
  }

  v35 = 0;
  frequency = self->_frequency;
  if (frequency > 2)
  {
    if (frequency == 3)
    {
      v80 = [(CalRecurrenceGenerator *)self _copyMonthlyOccurrencesWithInitialDate:v24 startDate:v21 endDate:v22 count:limit countPastEndDate:v78];
      goto LABEL_51;
    }

    if (frequency == 4)
    {
      v80 = [(CalRecurrenceGenerator *)self _copyYearlyOccurrencesWithInitialDate:v24 startDate:v21 endDate:v22 count:limit countPastEndDate:v78];
      goto LABEL_51;
    }
  }

  else
  {
    if (frequency == 1)
    {
      v80 = [(CalRecurrenceGenerator *)self _copyDailyOccurrencesWithInitialDate:v24 startDate:v21 endDate:v22 count:limit countPastEndDate:v78];
      goto LABEL_51;
    }

    if (frequency == 2)
    {
      v80 = [(CalRecurrenceGenerator *)self _copyWeeklyOccurrencesWithInitialDate:v24 startDate:v21 endDate:v22 count:limit countPastEndDate:v78];
LABEL_51:
      v35 = v80;
    }
  }

  v81 = !endCopy;
  if (!self->_endDate)
  {
    v81 = 1;
  }

  if ((v81 & 1) == 0)
  {
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __112__CalRecurrenceGenerator_copyOccurrenceDatesBetweenStartDate_endDate_timeZone_limit_plusExtraOccurrencePastEnd___block_invoke;
    v95[3] = &__block_descriptor_40_e33_B24__0__NSDate_8__NSDictionary_16l;
    *&v95[4] = v26;
    v82 = [MEMORY[0x1E696AE18] predicateWithBlock:v95];
    v83 = [v35 filteredArrayUsingPredicate:v82];

    v35 = v83;
  }

LABEL_56:

  return v35;
}

- (id)_copyDailyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate
{
  v60[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  interval = self->_interval;
  if (interval)
  {
    v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    calendarDateForDay = [dateCopy calendarDateForDay];
    calendarDateForDay2 = [startDateCopy calendarDateForDay];
    v52 = calendarDateForDay;
    v16 = [calendarDateForDay2 differenceInDays:calendarDateForDay] % interval;
    if (v16)
    {
      v17 = [startDateCopy calendarDateByAddingDays:interval - v16];

      startDateCopy = v17;
    }

    v18 = self->_daysOfTheWeek;
    v19 = self->_monthsOfTheYear;
    v49 = v19;
    if (v19)
    {
      v20 = self->_daysOfTheMonth;
      v58[0] = _EKRecurrenceByMonthFilter;
      v58[1] = v19;
      if ([(NSArray *)v20 count])
      {
        v21 = v60;
        v22 = _EKRecurrenceByMonthDayFilter;
        if (self->_shouldPinMonthDays)
        {
          v22 = _EKRecurrenceByMonthDayFilterPinned;
        }

        v59[0] = v22;
        v59[1] = v20;
        v19 = 2;
      }

      else
      {
        v21 = v59;
        v19 = 1;
      }
    }

    else
    {
      v20 = 0;
      v21 = v58;
    }

    v50 = v18;
    if ([(NSArray *)v18 count])
    {
      *v21 = _EKRecurrenceByDayMaskFilter;
      ++v19;
      v21[1] = _EKRecurrenceByDayMaskFromArrayByDayItems(v18);
    }

    allComponents = [startDateCopy allComponents];
    [allComponents setHour:{objc_msgSend(dateCopy, "hour")}];
    [allComponents setMinute:{objc_msgSend(dateCopy, "minute")}];
    [allComponents setSecond:{objc_msgSend(dateCopy, "second")}];
    v25 = [(NSCalendar *)self->_calendar dateFromComponents:allComponents];
    v26 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v26 setDay:interval];
    [endDateCopy absoluteTime];
    v28 = v27;
    v54 = startDateCopy;
    if (count)
    {
      v29 = fabs(v27);
      if (v28 > 1577840000.0 || v29 < 2.22044605e-16)
      {
        v28 = 1577840000.0;
      }
    }

    v53 = endDateCopy;
    v55 = dateCopy;
    [v25 timeIntervalSinceReferenceDate];
    v31 = pastEndDate != 0;
    if (v32 < v28 || pastEndDate)
    {
      countCopy = count;
      do
      {
        if (!v19 || ([v54 timeZone], v35 = objc_claimAutoreleasedReturnValue(), +[EKCalendarDate calendarDateWithDateComponents:timeZone:](EKCalendarDate, "calendarDateWithDateComponents:timeZone:", allComponents, v35), v36 = objc_claimAutoreleasedReturnValue(), v35, LODWORD(v35) = _EKRecurrenceApplyFiltersToSingleDate(v36, v58, v19, v55, -[CalRecurrenceGenerator onlyIncludeInitialDateIfItMatchesRecurrence](self, "onlyIncludeInitialDateIfItMatchesRecurrence")), v36, v35))
        {
          [v56 addObject:v25];
          if (countCopy)
          {
            --countCopy;
          }

          else
          {
            countCopy = 0;
          }

          if (v31)
          {
            [v25 timeIntervalSinceReferenceDate];
            if (v37 >= v28)
            {
              --pastEndDate;
            }
          }

          else
          {
            pastEndDate = 0;
          }
        }

        v38 = [(NSCalendar *)self->_calendar dateByAddingComponents:v26 toDate:v25 options:0];

        v33 = [(NSCalendar *)self->_calendar components:254 fromDate:v38];
        hour = [v33 hour];
        if (hour == [allComponents hour] && (v40 = objc_msgSend(v33, "minute"), v40 == objc_msgSend(allComponents, "minute")) && (v41 = objc_msgSend(v33, "second"), v41 == objc_msgSend(allComponents, "second")))
        {
          v25 = v38;
        }

        else
        {
          [v33 setHour:{objc_msgSend(allComponents, "hour")}];
          [v33 setMinute:{objc_msgSend(allComponents, "minute")}];
          [v33 setSecond:{objc_msgSend(allComponents, "second")}];
          v25 = [(NSCalendar *)self->_calendar dateFromComponents:v33];
        }

        [v25 timeIntervalSinceReferenceDate];
        v31 = pastEndDate != 0;
        if (pastEndDate)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42 < v28;
        }

        if (count)
        {
          v44 = countCopy == 0;
        }

        else
        {
          v44 = 0;
        }

        v45 = !v44;
        if (!v43)
        {
          break;
        }

        allComponents = v33;
      }

      while ((v45 & 1) != 0);
    }

    else
    {
      v33 = allComponents;
    }

    v23 = [v56 copy];

    startDateCopy = v54;
    dateCopy = v55;
    endDateCopy = v53;
  }

  else
  {
    v23 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_copyWeeklyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate
{
  v97[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  interval = self->_interval;
  v95 = 0;
  weekStart = self->_weekStart;
  v15 = [dateCopy calendarDateForWeekWithWeekStart:weekStart];
  v74 = [startDateCopy calendarDateForWeekWithWeekStart:weekStart daysSinceWeekStart:&v95];
  v75 = v15;
  v16 = [v74 differenceInDays:v15] / 7 % interval;
  v17 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v18 = v17;
  v19 = 7 * (interval - v16);
  if (!v16)
  {
    v19 = 0;
  }

  [v17 setDay:v19 - v95];
  calendar = self->_calendar;
  v76 = startDateCopy;
  date = [startDateCopy date];
  v73 = v18;
  v22 = [(NSCalendar *)calendar dateByAddingComponents:v18 toDate:date options:0];

  v72 = v22;
  v23 = [(NSCalendar *)self->_calendar components:254 fromDate:v22];
  [v23 setHour:{objc_msgSend(dateCopy, "hour")}];
  [v23 setMinute:{objc_msgSend(dateCopy, "minute")}];
  v82 = dateCopy;
  [v23 setSecond:{objc_msgSend(dateCopy, "second")}];
  v77 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v77 setDay:7 * interval];
  v24 = self->_daysOfTheWeek;
  v86 = self->_setPositions;
  v25 = self->_monthsOfTheYear;
  pastEndDateCopy = pastEndDate;
  v26 = v96;
  v90 = 0;
  v91 = 0;
  if (v25)
  {
    v26 = v97;
    v96[0] = _EKRecurrenceByMonthFilter;
    v96[1] = v25;
    v84 = 1;
  }

  else
  {
    v84 = 0;
  }

  v92 = 0;
  v93 = 0;
  if (![(NSArray *)v86 count])
  {
    v92 = v76;
    v93 = endDateCopy;
    ++v84;
    *v26 = _EKRecurrenceRangeFilter;
    v26[1] = &v92;
  }

  if ([(NSArray *)v24 count])
  {
    v78 = _EKRecurrenceByDayMaskFromArrayByDayItems(v24);
  }

  else
  {
    v78 = 1 << ([dateCopy dayOfWeek] - 1);
  }

  v71 = v24;
  if (weekStart != 1)
  {
    v78 = ((v78 >> (weekStart - 1)) | (v78 << (8 - weekStart)));
  }

  countCopy2 = count;
  if (!self->_onlyIncludeInitialDateIfItMatchesRecurrence)
  {
    [dateCopy absoluteTime];
    v29 = v28;
    [v76 absoluteTime];
    countCopy2 = count;
    if (v29 >= v30)
    {
      if (!endDateCopy || ([dateCopy absoluteTime], v32 = v31, objc_msgSend(endDateCopy, "absoluteTime"), countCopy2 = count, v32 < v33))
      {
        [dateCopy absoluteTime];
        _InsertAbsoluteTimeIntoArrayAtIndex(v83, v34);
        countCopy2 = count ? count - 1 : 0;
        if (v86)
        {
          v90 = 1;
        }
      }
    }
  }

  selfCopy = self;
  v35 = [(NSCalendar *)self->_calendar dateFromComponents:v23];
  v87 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v36 = 0.0;
  v37 = endDateCopy;
  if (endDateCopy)
  {
    [endDateCopy absoluteTime];
  }

  v38 = 0;
  if (v36 <= 1577840000.0 && v36 != 0.0 || count == 0)
  {
    v41 = v36;
  }

  else
  {
    v41 = 1577840000.0;
  }

  v42 = dateCopy;
  if (v86)
  {
    v42 = 0;
  }

  v81 = v42;
  while (2)
  {
    [v35 timeIntervalSinceReferenceDate];
    if (v43 >= v41)
    {
      v44 = selfCopy;
      if (count)
      {
        v45 = countCopy2 == 0;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;
      if (!pastEndDateCopy || v38 > 0x36 || (v46 & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v44 = selfCopy;
      if (count && !countCopy2)
      {
        goto LABEL_98;
      }
    }

    v79 = v38;
    v80 = v23;
    v47 = weekStart;
    v48 = v78;
    do
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_66;
      }

      v49 = weekStart;
      v50 = 7;
      if (v47 >= weekStart)
      {
        v50 = 0;
      }

      [v87 setDay:v47 - weekStart + v50];
      v51 = v35;
      v52 = [(NSCalendar *)v44->_calendar dateByAddingComponents:v87 toDate:v35 options:0];
      if (v44->_onlyIncludeInitialDateIfItMatchesRecurrence || ([v82 date], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v52, "isEqualToDate:", v55), v55, v44 = selfCopy, !v56) || v86)
      {
        timeZone = [(NSCalendar *)v44->_calendar timeZone];
        v54 = [EKCalendarDate calendarDateWithDate:v52 timeZone:timeZone];

        if (v84 && !_EKRecurrenceApplyFiltersToSingleDate(v54, v96, v84, v81, [(CalRecurrenceGenerator *)v44 onlyIncludeInitialDateIfItMatchesRecurrence]))
        {
          v37 = endDateCopy;
          v35 = v51;
          weekStart = v49;
          goto LABEL_64;
        }

        [v83 addObject:v52];
        v37 = endDateCopy;
        if (v86)
        {
          v35 = v51;
        }

        else
        {
          if (countCopy2)
          {
            --countCopy2;
          }

          else
          {
            countCopy2 = 0;
          }

          v35 = v51;
          if (pastEndDateCopy)
          {
            [v52 timeIntervalSinceReferenceDate];
            weekStart = v49;
            if (v58 >= v41)
            {
              --pastEndDateCopy;
            }

            goto LABEL_59;
          }
        }

        weekStart = v49;
LABEL_59:
        ++v91;
LABEL_64:

        v44 = selfCopy;
        goto LABEL_65;
      }

      v35 = v51;
      weekStart = v49;
LABEL_65:

LABEL_66:
      v57 = v37 != 0;
      if (v47 + 1 <= 7)
      {
        ++v47;
      }

      else
      {
        v47 = 1;
      }

      if (count)
      {
        v57 = countCopy2 != 0;
      }

      if (v48 < 2)
      {
        break;
      }

      if (v47 == weekStart)
      {
        break;
      }

      v48 >>= 1;
    }

    while (v57);
    if (!v86)
    {
      v59 = v79;
      v23 = v80;
      goto LABEL_90;
    }

    v59 = v79;
    v23 = v80;
    if (v91 < 1)
    {
      goto LABEL_90;
    }

    _EKRecurrenceApplyBySetPosToRange(v83, v86, &v90, v76, v37, v82, countCopy2, &pastEndDateCopy);
    if (countCopy2)
    {
      countCopy2 -= v91;
      goto LABEL_90;
    }

    if (v91 || !pastEndDateCopy)
    {
LABEL_90:
      v61 = [(NSCalendar *)v44->_calendar dateByAddingComponents:v77 toDate:v35 options:0];

      v62 = [(NSCalendar *)v44->_calendar components:254 fromDate:v61];
      hour = [v62 hour];
      if (hour != [v23 hour] || (v64 = objc_msgSend(v62, "minute"), v64 != objc_msgSend(v23, "minute")) || (v65 = objc_msgSend(v62, "second"), v65 != objc_msgSend(v23, "second")))
      {
        [v62 setHour:{objc_msgSend(v23, "hour")}];
        [v62 setMinute:{objc_msgSend(v23, "minute")}];
        [v62 setSecond:{objc_msgSend(v23, "second")}];
        v66 = [(NSCalendar *)selfCopy->_calendar dateFromComponents:v62];

        v61 = v66;
      }

      if (v91 <= 0)
      {
        v38 = v59 + 1;
      }

      else
      {
        v38 = 0;
      }

      v90 += v91;
      v91 = 0;
      v35 = v61;
      v23 = v62;
      continue;
    }

    break;
  }

  [v35 timeIntervalSinceReferenceDate];
  if (v60 < v41)
  {
    countCopy2 = 0;
    goto LABEL_90;
  }

LABEL_98:
  v67 = [v83 copy];

  v68 = *MEMORY[0x1E69E9840];
  return v67;
}

- (id)_copyMonthlyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate
{
  v91[4] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  countCopy = count;
  countCopy2 = count;
  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  interval = self->_interval;
  calendarDateForMonth = [dateCopy calendarDateForMonth];
  calendarDateForMonth2 = [startDateCopy calendarDateForMonth];
  v67 = calendarDateForMonth;
  v16 = [calendarDateForMonth2 differenceInMonths:calendarDateForMonth] % interval;
  v77 = startDateCopy;
  v17 = [startDateCopy calendarDateByAddingDays:{1 - objc_msgSend(startDateCopy, "day")}];
  v18 = [v17 mutableCopy];

  if (v16 >= 1)
  {
    [v18 addMonths:interval - v16];
  }

  v19 = self->_setPositions;
  v20 = self->_monthsOfTheYear;
  v86 = 0;
  v87 = 0;
  pastEndDateCopy = pastEndDate;
  v84 = 0;
  v85 = 0;
  v21 = [(NSArray *)v20 count];
  v65 = v20;
  if (v21)
  {
    v74 = v91;
    v90[0] = _EKRecurrenceByMonthFilter;
    v90[1] = v20;
    v76 = 1;
  }

  else
  {
    v76 = 0;
    v74 = v90;
  }

  v22 = startDateCopy;
  v23 = self->_daysOfTheMonth;
  v24 = self->_daysOfTheWeek;
  v82 = 0;
  v83 = 0;
  v68 = v23;
  v64 = v24;
  if (![(NSArray *)v24 count])
  {
    if (![(NSArray *)v23 count])
    {
      v75 = 0;
      v79 = 1;
      v28 = countCopy;
      goto LABEL_20;
    }

    v75 = 0;
    v27 = _EKRecurrenceByMonthDayGenerator;
    if (self->_shouldPinMonthDays)
    {
      v27 = _EKRecurrenceByMonthDayGeneratorPinned;
    }

    v82 = v27;
    v26 = &v82;
    goto LABEL_15;
  }

  v82 = _EKRecurrenceByDayGenerator;
  v83 = v24;
  if ([(NSArray *)v23 count])
  {
    v25 = _EKRecurrenceByMonthDayFilter;
    if (self->_shouldPinMonthDays)
    {
      v25 = _EKRecurrenceByMonthDayFilterPinned;
    }

    *v74 = v25;
    v75 = 1;
    v26 = v74;
LABEL_15:
    v28 = countCopy;
    v26[1] = v68;
    goto LABEL_17;
  }

  v75 = 0;
  v28 = countCopy;
LABEL_17:
  v79 = 0;
  if (![(NSArray *)v19 count])
  {
    v86 = v77;
    v87 = endDateCopy;
    v29 = &v90[2 * v75++ + 2 * v76];
    *v29 = _EKRecurrenceRangeFilter;
    v29[1] = &v86;
  }

LABEL_20:
  v30 = endDateCopy;
  if (!self->_onlyIncludeInitialDateIfItMatchesRecurrence)
  {
    [dateCopy absoluteTime];
    v32 = v31;
    [v77 absoluteTime];
    if (v32 >= v33)
    {
      if (endDateCopy)
      {
        [dateCopy absoluteTime];
        v35 = v34;
        [endDateCopy absoluteTime];
        if (v35 >= v36)
        {
          goto LABEL_29;
        }
      }

      [dateCopy absoluteTime];
      _InsertAbsoluteTimeIntoArrayAtIndex(v80, v37);
      if (v28)
      {
        countCopy2 = v28 - 1;
      }

      if (v19)
      {
        v84 = 1;
      }
    }
  }

  if (!endDateCopy)
  {
    v38 = 0.0;
    v69 = 1;
    goto LABEL_31;
  }

LABEL_29:
  [endDateCopy absoluteTime];
  v69 = 0;
LABEL_31:
  v39 = 1577840000.0;
  if (v38 <= 1577840000.0 && v38 != 0.0)
  {
    v39 = v38;
  }

  if (v28)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  timeComponents = [v18 timeComponents];
  v43 = 0;
  if (v19)
  {
    v44 = 0;
  }

  else
  {
    v44 = dateCopy;
  }

  v45 = &countCopy2;
  if (v19)
  {
    v45 = 0;
  }

  v72 = v45;
  v73 = v44;
  v46 = &pastEndDateCopy;
  if (v19)
  {
    v46 = 0;
  }

  v70 = timeComponents;
  v71 = v46;
  while (1)
  {
    [v18 absoluteTime];
    if (v47 >= v41 && (!pastEndDateCopy || v43 > 0x63))
    {
      break;
    }

    if (countCopy && !countCopy2)
    {
      break;
    }

    if (v21 && !_EKRecurrenceApplyFiltersToSingleDate(v18, v90, 1uLL, dateCopy, [(CalRecurrenceGenerator *)self onlyIncludeInitialDateIfItMatchesRecurrence]))
    {
      goto LABEL_84;
    }

    if (v79)
    {
      dayComponents = [v18 dayComponents];
      [dayComponents setDay:{objc_msgSend(dateCopy, "day")}];
      if (self->_shouldPinMonthDays)
      {
        daysInMonth = [v18 daysInMonth];
        if ([dayComponents day] > daysInMonth)
        {
          [dayComponents setDay:daysInMonth];
        }
      }

      calendar = [v18 calendar];
      v51 = [dayComponents isValidDateInCalendar:calendar];

      if (v51)
      {
        [dayComponents setHour:{objc_msgSend(v70, "hour")}];
        [dayComponents setMinute:{objc_msgSend(v70, "minute")}];
        [dayComponents setSecond:{objc_msgSend(v70, "second")}];
        calendar2 = [v18 calendar];
        v53 = [calendar2 dateFromComponents:dayComponents];
        [v53 timeIntervalSinceReferenceDate];
        v55 = v54;

        v22 = v77;
        [v77 absoluteTime];
        if (v55 >= v56 && ((v69 & 1) != 0 || ([endDateCopy absoluteTime], v55 < v60) || pastEndDateCopy) && (self->_onlyIncludeInitialDateIfItMatchesRecurrence || (objc_msgSend(dateCopy, "absoluteTime"), vabdd_f64(v55, v58) >= 2.22044605e-16)))
        {
          _AppendAbsoluteTimeToArray(v80, v55);
          if (!v19)
          {
            if (countCopy2)
            {
              --countCopy2;
            }

            if (pastEndDateCopy && v55 >= v41)
            {
              --pastEndDateCopy;
            }
          }

          v85 = 1;
          v57 = 1;
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v57 = 0;
        v22 = v77;
      }

      v30 = endDateCopy;
      if (!v19)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v57 = _EKRecurrenceApplyGenerator(v80, &v82, v74, v75, v73, v22, v30, v18, 3u, v72, v71, self->_onlyIncludeInitialDateIfItMatchesRecurrence);
      v85 = v57;
      if (!v19)
      {
        goto LABEL_78;
      }
    }

    if (v57 >= 1)
    {
      _EKRecurrenceApplyBySetPosToRange(v80, v19, &v84, v22, v30, dateCopy, countCopy2, &pastEndDateCopy);
      v57 = v85;
      if (countCopy2)
      {
        countCopy2 -= v85;
      }

      else if (!v85 && pastEndDateCopy)
      {
        [v18 absoluteTime];
        if (v59 >= v41)
        {
          break;
        }

LABEL_84:
        [v18 addMonths:interval];
        v57 = 0;
        ++v43;
        goto LABEL_85;
      }
    }

LABEL_78:
    [v18 addMonths:interval];
    if (v57 <= 0)
    {
      ++v43;
    }

    else
    {
      v43 = 0;
    }

LABEL_85:
    v84 += v57;
    v85 = 0;
  }

  v61 = [v80 copy];

  v62 = *MEMORY[0x1E69E9840];
  return v61;
}

- (id)_copyYearlyOccurrencesWithInitialDate:(id)date startDate:(id)startDate endDate:(id)endDate count:(unint64_t)count countPastEndDate:(unint64_t)pastEndDate
{
  v120[6] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v15 = startDateCopy;
  v107 = endDateCopy;
  countCopy = count;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  selfCopy = self;
  interval = self->_interval;
  v108 = dateCopy;
  calendarDateForYear = [dateCopy calendarDateForYear];
  calendarDateForYear2 = [v15 calendarDateForYear];
  v96 = calendarDateForYear;
  v19 = [calendarDateForYear2 differenceInYears:calendarDateForYear] % interval;
  v20 = [v15 calendarDateByAddingDays:{(1 - objc_msgSend(v15, "dayOfYear"))}];
  v21 = [v20 mutableCopy];

  if (v19 >= 1)
  {
    [v21 addYears:interval - v19];
  }

  v105 = v21;
  v116 = 0;
  v117 = 0;
  weekStart = 0;
  v115 = 0;
  v111 = 0;
  v112 = 0;
  pastEndDateCopy = pastEndDate;
  v22 = selfCopy->_daysOfTheYear;
  v97 = selfCopy->_daysOfTheWeek;
  v23 = selfCopy->_daysOfTheMonth;
  v98 = selfCopy->_weeksOfTheYear;
  v24 = selfCopy->_setPositions;
  v25 = selfCopy->_monthsOfTheYear;
  v99 = v16;
  v93 = v23;
  v94 = v22;
  if ([(NSArray *)v22 count])
  {
    v26 = 0;
    v27 = _EKRecurrenceByYearDayGenerator;
    v116 = _EKRecurrenceByYearDayGenerator;
    v117 = v22;
    goto LABEL_5;
  }

  if (![(NSArray *)v23 count])
  {
    if ([(NSArray *)v97 count])
    {
      v26 = 0;
      v27 = _EKRecurrenceByDayGenerator;
      v116 = _EKRecurrenceByDayGenerator;
      v117 = v97;
      goto LABEL_5;
    }

    if ([(NSArray *)v25 count])
    {
      if (selfCopy->_shouldPinMonthDays)
      {
        v27 = _EKRecurrenceByMonthDayGeneratorPinned;
      }

      else
      {
        v27 = _EKRecurrenceByMonthDayGenerator;
      }

      v116 = v27;
      v87 = MEMORY[0x1E695DEC8];
      v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v108, "day")}];
      v89 = CFRetain([v87 arrayWithObject:v88]);
      v117 = CFAutorelease(v89);
    }

    else
    {
      if (![(NSArray *)v98 count])
      {
        v26 = 0;
        v29 = 0;
        v28 = v119;
        goto LABEL_17;
      }

      v90 = +[CalRecurrenceDayOfWeek dayOfWeek:](CalRecurrenceDayOfWeek, "dayOfWeek:", [v108 dayOfWeek]);
      v27 = _EKRecurrenceByDayGenerator;
      v116 = _EKRecurrenceByDayGenerator;
      v91 = CFRetain([MEMORY[0x1E695DEC8] arrayWithObject:v90]);
      v117 = CFAutorelease(v91);
    }

LABEL_108:
    v26 = 0;
LABEL_5:
    v28 = v119;
    if (v25)
    {
LABEL_6:
      v29 = 1;
      v30 = v105;
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v31 = v23;
  if (selfCopy->_shouldPinMonthDays)
  {
    v27 = _EKRecurrenceByMonthDayGeneratorPinned;
  }

  else
  {
    v27 = _EKRecurrenceByMonthDayGenerator;
  }

  v116 = v27;
  v117 = v31;
  if (![(NSArray *)v97 count])
  {
    goto LABEL_108;
  }

  v119[0] = _EKRecurrenceByDayFilter;
  v119[1] = v97;
  v28 = v120;
  v26 = 1;
  if (v25)
  {
    goto LABEL_6;
  }

LABEL_14:
  if ([(NSArray *)v98 count]|| v27 == _EKRecurrenceByYearDayGenerator)
  {
    v104 = 1;
    v92 = 0;
    v30 = v105;
    goto LABEL_20;
  }

  v32 = MEMORY[0x1E695DEC8];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v108, "month")}];
  v25 = [v32 arrayWithObject:v33];

  v29 = 1;
LABEL_17:
  v30 = v105;
  if (!v25)
  {
    v104 = v29;
    v92 = 0;
    goto LABEL_20;
  }

LABEL_7:
  v104 = v29;
  ++v26;
  *v28 = _EKRecurrenceByMonthFilter;
  v28[1] = v25;
  v92 = v25;
LABEL_20:
  if ([(NSArray *)v98 count])
  {
    weekStart = selfCopy->_weekStart;
    v115 = v98;
    v34 = &v119[2 * v26];
    v35 = v26 + 1;
    *v34 = _EKRecurrenceByWeekNoFilter;
    v34[1] = &weekStart;
  }

  else
  {
    v35 = v26;
  }

  v36 = v104;
  if (v104 && ![(NSArray *)v24 count])
  {
    v111 = v15;
    v112 = v107;
    v37 = &v119[2 * v35++];
    *v37 = _EKRecurrenceRangeFilter;
    v37[1] = &v111;
  }

  v109 = 0;
  v110 = 0;
  if (!selfCopy->_onlyIncludeInitialDateIfItMatchesRecurrence)
  {
    [v108 absoluteTime];
    v39 = v38;
    [v15 absoluteTime];
    if (v39 >= v40)
    {
      if (!v107 || ([v108 absoluteTime], v42 = v41, objc_msgSend(v107, "absoluteTime"), v42 < v43))
      {
        [v108 absoluteTime];
        _InsertAbsoluteTimeIntoArrayAtIndex(v16, v44);
        if (countCopy)
        {
          --countCopy;
        }

        if (v24)
        {
          v109 = 1;
        }
      }
    }
  }

  [v107 absoluteTime];
  v46 = v45;
  if (count)
  {
    v47 = fabs(v45);
    if (v46 > 1577840000.0 || v47 < 2.22044605e-16)
    {
      v46 = 1577840000.0;
    }
  }

  v49 = 0;
  if (v24)
  {
    v50 = 0;
  }

  else
  {
    v50 = v108;
  }

  v51 = &countCopy;
  if (v24)
  {
    v51 = 0;
  }

  v101 = v51;
  v102 = v50;
  v52 = &pastEndDateCopy;
  if (v24)
  {
    v52 = 0;
  }

  v100 = v52;
  v103 = interval;
  while (1)
  {
    [v30 absoluteTime];
    if (v53 >= v46 && (!pastEndDateCopy || v49 > 9))
    {
      break;
    }

    if (count && !countCopy)
    {
      break;
    }

    if (v36)
    {
      v55 = _EKRecurrenceApplyGenerator(v16, &v116, v119, v35, v102, v15, v107, v30, 4u, v101, v100, selfCopy->_onlyIncludeInitialDateIfItMatchesRecurrence);
      v110 = v55;
      if (!v24)
      {
        goto LABEL_77;
      }

      goto LABEL_74;
    }

    v56 = v35;
    v57 = v24;
    v58 = v16;
    countCopy2 = count;
    dayTimeComponents = [v30 dayTimeComponents];
    v61 = v108;
    [dayTimeComponents setMonth:{objc_msgSend(v108, "month")}];
    if (selfCopy->_shouldPinMonthDays)
    {
      v62 = [EKCalendarDate alloc];
      timeZone = [v108 timeZone];
      v64 = [(EKCalendarDate *)v62 initWithDateComponents:dayTimeComponents timeZone:timeZone];

      daysInMonth = [(EKCalendarDate *)v64 daysInMonth];
      if ([v108 day] <= daysInMonth)
      {
        daysInMonth = [v108 day];
      }

      [dayTimeComponents setDay:daysInMonth];

      v61 = v108;
    }

    else
    {
      [dayTimeComponents setDay:{objc_msgSend(v108, "day")}];
    }

    calendar = [v61 calendar];
    v67 = [dayTimeComponents isValidDateInCalendar:calendar];

    if (v67)
    {
      [v61 timeZone];
      v69 = v68 = v15;
      v70 = [EKCalendarDate calendarDateWithDateComponents:dayTimeComponents timeZone:v69];

      v15 = v68;
      [v70 absoluteTime];
      v72 = v71;
      [v68 absoluteTime];
      if (v72 < v73 || v107 && ([v70 absoluteTime], v75 = v74, objc_msgSend(v107, "absoluteTime"), v75 >= v76) && !pastEndDateCopy)
      {
        v55 = 0;
        v16 = v99;
        v24 = v57;
        goto LABEL_69;
      }

      v16 = v99;
      v24 = v57;
      if (selfCopy->_onlyIncludeInitialDateIfItMatchesRecurrence || ([v70 absoluteTime], v79 = v78, objc_msgSend(v108, "absoluteTime"), vabdd_f64(v79, v80) >= 2.22044605e-16))
      {
        v35 = v56;
        if (v56 && !_EKRecurrenceApplyFiltersToSingleDate(v70, v119, v56, v108, [(CalRecurrenceGenerator *)selfCopy onlyIncludeInitialDateIfItMatchesRecurrence]))
        {
          v55 = 0;
          goto LABEL_70;
        }

        [v70 absoluteTime];
        _AppendAbsoluteTimeToArray(v99, v81);
        v36 = v104;
        if (!v24)
        {
          if (countCopy)
          {
            --countCopy;
          }

          if (pastEndDateCopy)
          {
            [v70 absoluteTime];
            if (v82 >= v46)
            {
              --pastEndDateCopy;
            }
          }
        }

        v110 = 1;
        v55 = 1;
      }

      else
      {
        v55 = 0;
LABEL_69:
        v35 = v56;
LABEL_70:
        v36 = v104;
      }

      count = countCopy2;
      goto LABEL_73;
    }

    v55 = 0;
    count = countCopy2;
    v16 = v58;
    v24 = v57;
    v35 = v56;
    v36 = v104;
LABEL_73:

    interval = v103;
    v30 = v105;
    if (!v24)
    {
      goto LABEL_77;
    }

LABEL_74:
    if (v55 < 1)
    {
      goto LABEL_77;
    }

    _EKRecurrenceApplyBySetPosToRange(v16, v24, &v109, v15, v107, v108, countCopy, &pastEndDateCopy);
    v55 = v110;
    if (countCopy)
    {
      countCopy -= v110;
LABEL_77:
      [v30 addYears:interval];
      if (v55 <= 0)
      {
        ++v49;
      }

      else
      {
        v49 = 0;
      }

      goto LABEL_80;
    }

    if (v110 || !pastEndDateCopy)
    {
      goto LABEL_77;
    }

    [v30 absoluteTime];
    if (v77 >= v46)
    {
      break;
    }

    [v30 addYears:interval];
    v55 = 0;
    ++v49;
LABEL_80:
    v109 += v55;
    v110 = 0;
  }

  v83 = v30;
  v84 = [v16 copy];

  v85 = *MEMORY[0x1E69E9840];
  return v84;
}

@end