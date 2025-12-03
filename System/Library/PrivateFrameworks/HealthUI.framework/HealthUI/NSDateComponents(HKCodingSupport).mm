@interface NSDateComponents(HKCodingSupport)
+ (id)_hkui_dateComponentsWithCodableDateComponents:()HKCodingSupport calendarUnits:;
- (HKCodableDateComponents)_hkui_codableDateComponentsForCalendarUnits:()HKCodingSupport;
@end

@implementation NSDateComponents(HKCodingSupport)

+ (id)_hkui_dateComponentsWithCodableDateComponents:()HKCodingSupport calendarUnits:
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
    if ((a4 & 2) != 0 && [v5 hasEra])
    {
      [v6 setEra:{objc_msgSend(v5, "era")}];
    }

    if ((a4 & 4) != 0 && [v5 hasYear])
    {
      [v6 setYear:{objc_msgSend(v5, "year")}];
    }

    if ((a4 & 8) != 0 && [v5 hasMonth])
    {
      [v6 setMonth:{objc_msgSend(v5, "month")}];
    }

    if ((a4 & 0x10) != 0 && [v5 hasDay])
    {
      [v6 setDay:{objc_msgSend(v5, "day")}];
    }

    if ((a4 & 0x20) != 0 && [v5 hasHour])
    {
      [v6 setHour:{objc_msgSend(v5, "hour")}];
    }

    if ((a4 & 0x40) != 0 && [v5 hasMinute])
    {
      [v6 setMinute:{objc_msgSend(v5, "minute")}];
    }

    if ((a4 & 0x80) != 0 && [v5 hasSecond])
    {
      [v6 setSecond:{objc_msgSend(v5, "second")}];
    }

    if ((a4 & 0x200) != 0 && [v5 hasWeekday])
    {
      [v6 setWeekday:{objc_msgSend(v5, "weekday")}];
    }

    if ((a4 & 0x400) != 0 && [v5 hasWeekdayOrdinal])
    {
      [v6 setWeekdayOrdinal:{objc_msgSend(v5, "weekdayOrdinal")}];
    }

    if ((a4 & 0x800) != 0 && [v5 hasQuarter])
    {
      [v6 setQuarter:{objc_msgSend(v5, "quarter")}];
    }

    if ((a4 & 0x1000) != 0 && [v5 hasWeekOfMonth])
    {
      [v6 setWeekOfMonth:{objc_msgSend(v5, "weekOfMonth")}];
    }

    if ((a4 & 0x2000) != 0 && [v5 hasWeekOfYear])
    {
      [v6 setWeekOfYear:{objc_msgSend(v5, "weekOfYear")}];
    }

    if ((a4 & 0x4000) != 0 && [v5 hasYearForWeekOfYear])
    {
      [v6 setYearForWeekOfYear:{objc_msgSend(v5, "yearForWeekOfYear")}];
    }

    if (a4 < 0 && [v5 hasNanosecond])
    {
      [v6 setNanosecond:{objc_msgSend(v5, "nanosecond")}];
    }

    if ([v5 hasCalendar])
    {
      v7 = MEMORY[0x1E695DEE8];
      calendar = [v5 calendar];
      v9 = [v7 calendarWithIdentifier:calendar];

      if (!v9)
      {
        goto LABEL_51;
      }

      [v6 setCalendar:v9];
    }

    if (![v5 hasTimeZone])
    {
LABEL_50:
      v9 = v6;
      goto LABEL_51;
    }

    v10 = MEMORY[0x1E695DFE8];
    timeZone = [v5 timeZone];
    v9 = [v10 timeZoneWithName:timeZone];

    if (v9)
    {
      [v6 setTimeZone:v9];

      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_53;
  }

  v9 = 0;
LABEL_53:

  return v9;
}

- (HKCodableDateComponents)_hkui_codableDateComponentsForCalendarUnits:()HKCodingSupport
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(HKCodableDateComponents);
    if ((a3 & 2) != 0 && [self era] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setEra:](v5, "setEra:", [self era]);
    }

    if ((a3 & 4) != 0 && [self year] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setYear:](v5, "setYear:", [self year]);
    }

    if ((a3 & 8) != 0 && [self month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setMonth:](v5, "setMonth:", [self month]);
    }

    if ((a3 & 0x10) != 0 && [self day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setDay:](v5, "setDay:", [self day]);
    }

    if ((a3 & 0x20) != 0 && [self hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setHour:](v5, "setHour:", [self hour]);
    }

    if ((a3 & 0x40) != 0 && [self minute] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setMinute:](v5, "setMinute:", [self minute]);
    }

    if ((a3 & 0x80) != 0 && [self second] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setSecond:](v5, "setSecond:", [self second]);
    }

    if ((a3 & 0x200) != 0 && [self weekday] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setWeekday:](v5, "setWeekday:", [self weekday]);
    }

    if ((a3 & 0x400) != 0 && [self weekdayOrdinal] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setWeekdayOrdinal:](v5, "setWeekdayOrdinal:", [self weekdayOrdinal]);
    }

    if ((a3 & 0x800) != 0 && [self quarter] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setQuarter:](v5, "setQuarter:", [self quarter]);
    }

    if ((a3 & 0x1000) != 0 && [self weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setWeekOfMonth:](v5, "setWeekOfMonth:", [self weekOfMonth]);
    }

    if ((a3 & 0x2000) != 0 && [self weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setWeekOfYear:](v5, "setWeekOfYear:", [self weekOfYear]);
    }

    if ((a3 & 0x4000) != 0 && [self yearForWeekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setYearForWeekOfYear:](v5, "setYearForWeekOfYear:", [self yearForWeekOfYear]);
    }

    if (a3 < 0 && [self nanosecond] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[HKCodableDateComponents setNanosecond:](v5, "setNanosecond:", [self nanosecond]);
    }

    calendar = [self calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [(HKCodableDateComponents *)v5 setCalendar:calendarIdentifier];

    timeZone = [self timeZone];
    name = [timeZone name];
    [(HKCodableDateComponents *)v5 setTimeZone:name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end