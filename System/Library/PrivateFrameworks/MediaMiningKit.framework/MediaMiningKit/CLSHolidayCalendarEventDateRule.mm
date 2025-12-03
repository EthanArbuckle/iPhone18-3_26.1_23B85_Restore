@interface CLSHolidayCalendarEventDateRule
+ (id)_dateComponentsFromRuleDescription:(id)description;
- (CLSHolidayCalendarEventDateRule)initWithEventDescription:(id)description;
- (CLSHolidayCalendarEventDateRuleDelegate)delegate;
- (id)_endDate;
- (id)_estimateBestEventDateComponentsToMatchDate:(id)date;
- (id)_startDate;
- (id)_stringDescriptionForDateRuleComponentValue:(int64_t)value;
- (id)description;
- (id)localDateByEvaluatingRuleForDate:(id)date;
- (void)enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate usingBlock:(id)block;
@end

@implementation CLSHolidayCalendarEventDateRule

- (CLSHolidayCalendarEventDateRuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_stringDescriptionForDateRuleComponentValue:(int64_t)value
{
  if (value == 0x7FFFFFFFFFFFFFFFLL)
  {
    value = @"N/A";
  }

  else
  {
    value = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", value];
  }

  return value;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:[(NSDateComponents *)self->_simpleRuleComponents year]];
  v5 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:[(NSDateComponents *)self->_simpleRuleComponents month]];
  v6 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:[(NSDateComponents *)self->_simpleRuleComponents day]];
  v7 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:[(NSDateComponents *)self->_simpleRuleComponents weekday]];
  v8 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:[(NSDateComponents *)self->_simpleRuleComponents weekdayOrdinal]];
  v9 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:self->_startYear];
  v10 = [(CLSHolidayCalendarEventDateRule *)self _stringDescriptionForDateRuleComponentValue:self->_endYear];
  v11 = [v3 stringWithFormat:@"%@-%@-%@, weekday %@, weekdayOrd %@, startY: %@, endY: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)_endDate
{
  if ([(CLSHolidayCalendarEventDateRule *)self hasExplicitEra])
  {
    endEra = [(NSDateComponents *)self->_simpleRuleComponents era];
  }

  else if ([(CLSHolidayCalendarEventDateRule *)self hasEndEra])
  {
    endEra = self->_endEra;
  }

  else
  {
    endEra = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(CLSHolidayCalendarEventDateRule *)self hasExplicitYear])
  {
    endYear = [(NSDateComponents *)self->_simpleRuleComponents year];
  }

  else if ([(CLSHolidayCalendarEventDateRule *)self hasEndYear])
  {
    endYear = self->_endYear;
  }

  else
  {
    endYear = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (endEra == 0x7FFFFFFFFFFFFFFFLL && endYear == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSDateComponents *)self->_simpleRuleComponents copy];
    [v6 setEra:endEra];
    [v6 setYear:endYear];
    v5 = [CLSCalendar dateFromComponents:v6 inTimeZone:0 withCalendarIdentifier:self->_calendarIdentifier];
  }

  return v5;
}

- (id)_startDate
{
  if ([(CLSHolidayCalendarEventDateRule *)self hasExplicitEra])
  {
    startEra = [(NSDateComponents *)self->_simpleRuleComponents era];
  }

  else if ([(CLSHolidayCalendarEventDateRule *)self hasStartEra])
  {
    startEra = self->_startEra;
  }

  else
  {
    startEra = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(CLSHolidayCalendarEventDateRule *)self hasExplicitYear])
  {
    startYear = [(NSDateComponents *)self->_simpleRuleComponents year];
  }

  else if ([(CLSHolidayCalendarEventDateRule *)self hasStartYear])
  {
    startYear = self->_startYear;
  }

  else
  {
    startYear = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (startEra == 0x7FFFFFFFFFFFFFFFLL && startYear == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSDateComponents *)self->_simpleRuleComponents copy];
    [v6 setEra:startEra];
    [v6 setYear:startYear];
    v5 = [CLSCalendar dateFromComponents:v6 inTimeZone:0 withCalendarIdentifier:self->_calendarIdentifier];
  }

  return v5;
}

- (void)enumerateDatesFromStartDate:(id)date toEndDate:(id)endDate usingBlock:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  _startDate = [(CLSHolidayCalendarEventDateRule *)self _startDate];
  v31 = _startDate;
  if (_startDate)
  {
    v11 = [dateCopy laterDate:_startDate];

    dateCopy = v11;
  }

  _endDate = [(CLSHolidayCalendarEventDateRule *)self _endDate];
  v30 = _endDate;
  if (_endDate)
  {
    v13 = [endDateCopy earlierDate:_endDate];

    endDateCopy = v13;
  }

  v14 = [CLSCalendar components:6 fromDate:endDateCopy withCalendarIdentifier:self->_calendarIdentifier];
  v15 = dateCopy;
  v16 = 299;
  v17 = v15;
  do
  {
    v18 = v16;
    v33 = 0;
    v19 = [(CLSHolidayCalendarEventDateRule *)self localDateByEvaluatingRuleForDate:v17];
    if (v19)
    {
      if ([v15 compare:v19] != 1 && objc_msgSend(v19, "compare:", endDateCopy) != 1)
      {
        blockCopy[2](blockCopy, v19, &v33);
      }

      calendarIdentifier = self->_calendarIdentifier;
      v21 = v19;
    }

    else
    {
      calendarIdentifier = self->_calendarIdentifier;
      v21 = v17;
    }

    v22 = [CLSCalendar dateByAddingYears:1 toDate:v21 withCalendarIdentifier:calendarIdentifier];

    v23 = [CLSCalendar components:6 fromDate:v22 withCalendarIdentifier:self->_calendarIdentifier];
    v24 = [v23 era];
    v25 = v24 > [v14 era];
    v33 |= v25;
    v26 = [v23 era];
    if (v26 == [v14 era])
    {
      year = [v23 year];
      v28 = year > [v14 year];
    }

    else
    {
      v28 = 0;
    }

    v29 = v28 | v33;
    v33 |= v28;

    if (v29)
    {
      break;
    }

    v16 = v18 - 1;
    v17 = v22;
  }

  while (v18);
}

- (id)_estimateBestEventDateComponentsToMatchDate:(id)date
{
  dateCopy = date;
  _startDate = [(CLSHolidayCalendarEventDateRule *)self _startDate];
  _endDate = [(CLSHolidayCalendarEventDateRule *)self _endDate];
  v21 = 0;
  v22 = *MEMORY[0x277CBE5C8];
  v6 = -1;
  v7 = 1.79769313e308;
  do
  {
    v8 = [CLSCalendar dateByAddingYears:v6 toDate:dateCopy withCalendarIdentifier:self->_calendarIdentifier];
    v9 = [CLSCalendar components:6 fromDate:v8 withCalendarIdentifier:self->_calendarIdentifier];
    if (!self->_leapYearOverrideComponents || ![(NSString *)self->_calendarIdentifier isEqualToString:v22]|| (v10 = [CLSCalendar isLeapYearForDate:dateCopy withCalendarIdentifier:self->_calendarIdentifier], p_simpleRuleComponents = &self->_leapYearOverrideComponents, !v10))
    {
      p_simpleRuleComponents = &self->_simpleRuleComponents;
    }

    v12 = [(NSDateComponents *)*p_simpleRuleComponents copy];
    if (![(CLSHolidayCalendarEventDateRule *)self hasExplicitYear])
    {
      [v12 setYear:{objc_msgSend(v9, "year")}];
    }

    if (![(CLSHolidayCalendarEventDateRule *)self hasExplicitEra])
    {
      [v12 setEra:{objc_msgSend(v9, "era")}];
    }

    v13 = [CLSCalendar dateFromComponents:v12 inTimeZone:0 withCalendarIdentifier:self->_calendarIdentifier];
    v14 = v13;
    if (_startDate)
    {
      v15 = [v13 compare:_startDate] == -1;
    }

    else
    {
      v15 = 0;
    }

    v16 = _endDate;
    if (_endDate)
    {
      v16 = [v14 compare:v8] == -1;
    }

    if (v15 || v16 || ([v14 timeIntervalSinceDate:dateCopy], v18 = fabs(v17), v18 >= v7))
    {
      v18 = v7;
    }

    else
    {
      v19 = v12;

      v21 = v19;
    }

    ++v6;
    v7 = v18;
  }

  while (v6 != 2);

  return v21;
}

- (id)localDateByEvaluatingRuleForDate:(id)date
{
  dateCopy = date;
  if (self->_relativeToRuleUUID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained dateForRuleWithUUID:self->_relativeToRuleUUID byEvaluatingForDate:dateCopy];
      if (v6)
      {
        v7 = [CLSCalendar components:28 fromDate:v6 withCalendarIdentifier:self->_calendarIdentifier];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_14:

    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v7 = [(CLSHolidayCalendarEventDateRule *)self _estimateBestEventDateComponentsToMatchDate:dateCopy];
  weekdayOrdinal = [v7 weekdayOrdinal];
  if (weekdayOrdinal < 0)
  {
    v12 = weekdayOrdinal;
    WeakRetained = [CLSCalendar dateFromComponents:v7 inTimeZone:0 withCalendarIdentifier:self->_calendarIdentifier];
    [v7 setWeekdayOrdinal:{v12 + +[CLSCalendar countOfWeekday:inMonthOfDate:withCalendarIdentifier:](CLSCalendar, "countOfWeekday:inMonthOfDate:withCalendarIdentifier:", objc_msgSend(v7, "weekday"), WeakRetained, self->_calendarIdentifier) + 1}];
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v9 = [CLSCalendar dateFromComponents:v7 inTimeZone:0 withCalendarIdentifier:self->_calendarIdentifier];
  if (v9)
  {
    offsetDays = self->_offsetDays;
    if (offsetDays)
    {
      v11 = [CLSCalendar dateByAddingDays:offsetDays toDate:v9 withCalendarIdentifier:self->_calendarIdentifier];

      v9 = v11;
    }
  }

LABEL_16:

  return v9;
}

- (CLSHolidayCalendarEventDateRule)initWithEventDescription:(id)description
{
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = CLSHolidayCalendarEventDateRule;
  v5 = [(CLSHolidayCalendarEventDateRule *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = vnegq_f64(v7);
    *(v5 + 24) = v8;
    *(v5 + 40) = v8;
    v9 = [CLSHolidayCalendarEventDateRule _dateComponentsFromRuleDescription:descriptionCopy];
    simpleRuleComponents = v6->_simpleRuleComponents;
    v6->_simpleRuleComponents = v9;

    v11 = [descriptionCopy objectForKeyedSubscript:@"startYear"];
    v12 = v11;
    if (v11)
    {
      v6->_startYear = [v11 integerValue];
    }

    v13 = [descriptionCopy objectForKeyedSubscript:@"startEra"];

    if (v13)
    {
      v6->_startEra = [v13 integerValue];
    }

    v14 = [descriptionCopy objectForKeyedSubscript:@"endYear"];

    if (v14)
    {
      v6->_endYear = [v14 integerValue];
    }

    v15 = [descriptionCopy objectForKeyedSubscript:@"endEra"];

    if (v15)
    {
      v6->_endEra = [v15 integerValue];
    }

    v16 = [descriptionCopy objectForKeyedSubscript:@"relativeToRule"];
    relativeToRuleUUID = v6->_relativeToRuleUUID;
    v6->_relativeToRuleUUID = v16;

    v18 = [descriptionCopy objectForKeyedSubscript:@"offsetDays"];
    v6->_offsetDays = [v18 integerValue];

    v19 = [descriptionCopy objectForKeyedSubscript:@"calendar"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = *MEMORY[0x277CBE5C0];
    }

    objc_storeStrong(&v6->_calendarIdentifier, v21);

    v22 = [descriptionCopy objectForKeyedSubscript:@"leapYearOverride"];
    if (v22)
    {
      v23 = [CLSHolidayCalendarEventDateRule _dateComponentsFromRuleDescription:v22];
      leapYearOverrideComponents = v6->_leapYearOverrideComponents;
      v6->_leapYearOverrideComponents = v23;
    }
  }

  return v6;
}

+ (id)_dateComponentsFromRuleDescription:(id)description
{
  descriptionCopy = description;
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v5 = [descriptionCopy objectForKeyedSubscript:@"era"];
  v6 = v5;
  if (v5)
  {
    [v4 setEra:{objc_msgSend(v5, "integerValue")}];
  }

  v7 = [descriptionCopy objectForKeyedSubscript:@"year"];

  if (v7)
  {
    [v4 setYear:{objc_msgSend(v7, "integerValue")}];
  }

  v8 = [descriptionCopy objectForKeyedSubscript:@"month"];

  if (v8)
  {
    [v4 setMonth:{objc_msgSend(v8, "integerValue")}];
  }

  v9 = [descriptionCopy objectForKeyedSubscript:@"day"];

  if (v9)
  {
    [v4 setDay:{objc_msgSend(v9, "integerValue")}];
  }

  v10 = [descriptionCopy objectForKeyedSubscript:@"weekday"];

  if (v10)
  {
    [v4 setWeekday:{objc_msgSend(v10, "integerValue")}];
  }

  v11 = [descriptionCopy objectForKeyedSubscript:@"weekdayOrdinal"];

  if (v11)
  {
    [v4 setWeekdayOrdinal:{objc_msgSend(v11, "integerValue")}];
  }

  return v4;
}

@end