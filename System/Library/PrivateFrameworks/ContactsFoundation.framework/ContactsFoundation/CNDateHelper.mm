@interface CNDateHelper
+ (BOOL)isComponentsEmpty:(id)empty;
+ (BOOL)isGregorianDerivedCalendar:(id)calendar;
+ (BOOL)isGregorianDerivedCalendarIdentifier:(id)identifier;
+ (id)componentsForJanuary1WithYear:(int64_t)year;
+ (id)componentsFromDate:(id)date;
+ (id)dateComponentsFromDateComponents:(id)components preservingUnits:(unint64_t)units;
+ (id)dateComponentsInCalendar:(id)calendar fromGregorianDateComponents:(id)components;
+ (id)dateComponentsInGregorianYearlessYearForYearlessDateComponents:(id)components timeZone:(id)zone;
+ (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
+ (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second timeZone:(id)zone;
+ (id)gregorianCalendar;
+ (id)gregorianCalendarInGMT;
+ (id)gregorianDateComponentsFromDateComponents:(id)components;
+ (int64_t)currentGregorianYearInGMT;
+ (int64_t)gregorianYearFromDate:(id)date;
+ (int64_t)gregorianYearInGMTFromDate:(id)date;
@end

@implementation CNDateHelper

+ (BOOL)isComponentsEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = emptyCopy;
  if (emptyCopy)
  {
    v5 = [emptyCopy year] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "day") == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)gregorianCalendar
{
  if (gregorianCalendar_cn_once_token_1 != -1)
  {
    +[CNDateHelper gregorianCalendar];
  }

  v3 = gregorianCalendar_cn_once_object_1;

  return v3;
}

uint64_t __33__CNDateHelper_gregorianCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v2 = gregorianCalendar_cn_once_object_1;
  gregorianCalendar_cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)gregorianCalendarInGMT
{
  if (gregorianCalendarInGMT_onceToken != -1)
  {
    +[CNDateHelper gregorianCalendarInGMT];
  }

  v3 = gregorianCalendarInGMT_sGregorianInGMT;

  return v3;
}

void __38__CNDateHelper_gregorianCalendarInGMT__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v1 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v1];

  v2 = [v4 copy];
  v3 = gregorianCalendarInGMT_sGregorianInGMT;
  gregorianCalendarInGMT_sGregorianInGMT = v2;
}

+ (int64_t)currentGregorianYearInGMT
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self gregorianYearInGMTFromDate:date];

  return v4;
}

+ (int64_t)gregorianYearInGMTFromDate:(id)date
{
  dateCopy = date;
  gregorianCalendarInGMT = [self gregorianCalendarInGMT];
  v6 = [gregorianCalendarInGMT component:4 fromDate:dateCopy];

  return v6;
}

+ (int64_t)gregorianYearFromDate:(id)date
{
  dateCopy = date;
  gregorianCalendar = [self gregorianCalendar];
  v6 = [gregorianCalendar component:4 fromDate:dateCopy];

  return v6;
}

+ (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v10 = [self dateWithYear:year month:month day:day hour:12 minute:0 second:0 timeZone:localTimeZone];

  return v10;
}

+ (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second timeZone:(id)zone
{
  v16 = MEMORY[0x1E695DF10];
  zoneCopy = zone;
  v18 = objc_alloc_init(v16);
  [v18 setYear:year];
  [v18 setMonth:month];
  [v18 setDay:day];
  [v18 setHour:hour];
  [v18 setMinute:minute];
  [v18 setSecond:second];
  [v18 setTimeZone:zoneCopy];

  gregorianCalendar = [self gregorianCalendar];
  v20 = [gregorianCalendar dateFromComponents:v18];

  return v20;
}

+ (id)componentsFromDate:(id)date
{
  dateCopy = date;
  gregorianCalendar = [self gregorianCalendar];
  v6 = [gregorianCalendar components:2130172 fromDate:dateCopy];

  [v6 setCalendar:gregorianCalendar];

  return v6;
}

+ (id)componentsForJanuary1WithYear:(int64_t)year
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:year];
  [v4 setMonth:1];
  [v4 setDay:1];
  [v4 setHour:0];
  [v4 setMinute:0];
  [v4 setSecond:0];
  v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v5];

  v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v6];

  return v4;
}

+ (id)dateComponentsInCalendar:(id)calendar fromGregorianDateComponents:(id)components
{
  calendarCopy = calendar;
  componentsCopy = components;
  if (!componentsCopy || ([calendarCopy calendarIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E695D850]), v8, v9) || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "month") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = componentsCopy;
  }

  else
  {
    v12 = [componentsCopy copy];
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = getIntlUtilityClass[0]();
    gregorianCalendarInGMT = [self gregorianCalendarInGMT];
    [(objc_class *)v15 setYearlessYear:v13 forCalendar:gregorianCalendarInGMT];

    [getIntlUtilityClass[0]() setYearlessYear:v14 forCalendar:calendarCopy];
    if ([componentsCopy year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setYear:{objc_msgSend(v13, "year")}];
      v17 = 1;
    }

    else
    {
      year = [componentsCopy year];
      v17 = year == [v13 year];
    }

    gregorianCalendar = [self gregorianCalendar];
    v20 = [gregorianCalendar dateFromComponents:v12];

    v21 = [calendarCopy components:1048606 fromDate:v20];
    v10 = v21;
    if (v17 || (v22 = [v21 year], v22 == objc_msgSend(v14, "year")))
    {
      [v10 setYear:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  return v10;
}

+ (id)gregorianDateComponentsFromDateComponents:(id)components
{
  componentsCopy = components;
  calendar = [componentsCopy calendar];
  if (!calendar)
  {
    goto LABEL_3;
  }

  v6 = calendar;
  calendar2 = [componentsCopy calendar];
  calendarIdentifier = [calendar2 calendarIdentifier];
  v9 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

  if (v9)
  {
LABEL_3:
    v10 = componentsCopy;
    goto LABEL_17;
  }

  v11 = [componentsCopy copy];
  calendar3 = [v11 calendar];
  v13 = [calendar3 copy];
  [v11 setCalendar:v13];

  timeZone = [componentsCopy timeZone];
  if (timeZone)
  {
    timeZone2 = [componentsCopy timeZone];
  }

  else
  {
    calendar4 = [componentsCopy calendar];
    timeZone2 = [calendar4 timeZone];
  }

  if (!timeZone2)
  {
    gregorianCalendarInGMT = [self gregorianCalendarInGMT];
    timeZone2 = [gregorianCalendarInGMT timeZone];
  }

  if ([componentsCopy year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "era") != 0x7FFFFFFFFFFFFFFFLL)
  {
    gregorianCalendarInGMT2 = [self gregorianCalendarInGMT];
    calendar5 = [v11 calendar];
    v29 = [calendar5 dateFromComponents:v11];
    v19 = [gregorianCalendarInGMT2 componentsInTimeZone:timeZone2 fromDate:v29];

    v20 = [CNDateHelper dateComponentsFromDateComponents:v19 preservingUnits:1048606];
    goto LABEL_15;
  }

  v18 = [self dateComponentsInGregorianYearlessYearForYearlessDateComponents:componentsCopy timeZone:timeZone2];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    v19 = v20;
LABEL_15:
    v10 = v20;
    goto LABEL_16;
  }

  v21 = getIntlUtilityClass[0]();
  calendar6 = [v11 calendar];
  [(objc_class *)v21 setYearlessYear:v11 forCalendar:calendar6];

  gregorianCalendarInGMT3 = [self gregorianCalendarInGMT];
  calendar7 = [v11 calendar];
  v25 = [calendar7 dateFromComponents:v11];
  v26 = [gregorianCalendarInGMT3 componentsInTimeZone:timeZone2 fromDate:v25];

  v10 = [CNDateHelper dateComponentsFromDateComponents:v26 preservingUnits:1048606];

LABEL_16:
LABEL_17:

  return v10;
}

+ (id)dateComponentsInGregorianYearlessYearForYearlessDateComponents:(id)components timeZone:(id)zone
{
  zoneCopy = zone;
  componentsCopy = components;
  gregorianCalendarInGMT = [self gregorianCalendarInGMT];
  v9 = objc_opt_new();
  [getIntlUtilityClass[0]() setYearlessYear:v9 forCalendar:gregorianCalendarInGMT];
  [v9 setMonth:1];
  [v9 setDay:1];
  [v9 setCalendar:gregorianCalendarInGMT];
  date = [v9 date];
  v11 = [componentsCopy copy];
  [v11 setSecond:1];
  calendar = [componentsCopy calendar];

  v13 = [calendar nextDateAfterDate:date matchingComponents:v11 options:2];

  if (v13)
  {
    v14 = [v9 copy];
    [v14 setYear:{objc_msgSend(v14, "year") + 1}];
    date2 = [v14 date];
    if ([v13 compare:date2] == -1)
    {
      v17 = [gregorianCalendarInGMT componentsInTimeZone:zoneCopy fromDate:v13];
      v16 = [CNDateHelper dateComponentsFromDateComponents:v17 preservingUnits:1048606];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)dateComponentsFromDateComponents:(id)components preservingUnits:(unint64_t)units
{
  unitsCopy = units;
  componentsCopy = components;
  v6 = objc_opt_new();
  if ((unitsCopy & 2) != 0)
  {
    [v6 setEra:{objc_msgSend(componentsCopy, "era")}];
    if ((unitsCopy & 4) == 0)
    {
LABEL_3:
      if ((unitsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((unitsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [v6 setYear:{objc_msgSend(componentsCopy, "year")}];
  if ((unitsCopy & 8) == 0)
  {
LABEL_4:
    if ((unitsCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v6 setMonth:{objc_msgSend(componentsCopy, "month")}];
  if ((unitsCopy & 0x10) == 0)
  {
LABEL_5:
    if ((unitsCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v6 setDay:{objc_msgSend(componentsCopy, "day")}];
  if ((unitsCopy & 0x20) == 0)
  {
LABEL_6:
    if ((unitsCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v6 setHour:{objc_msgSend(componentsCopy, "hour")}];
  if ((unitsCopy & 0x40) == 0)
  {
LABEL_7:
    if ((unitsCopy & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v6 setMinute:{objc_msgSend(componentsCopy, "minute")}];
  if ((unitsCopy & 0x80) == 0)
  {
LABEL_8:
    if ((unitsCopy & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v6 setSecond:{objc_msgSend(componentsCopy, "second")}];
  if ((unitsCopy & 0x8000) == 0)
  {
LABEL_9:
    if ((unitsCopy & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v6 setNanosecond:{objc_msgSend(componentsCopy, "nanosecond")}];
  if ((unitsCopy & 0x200) == 0)
  {
LABEL_10:
    if ((unitsCopy & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v6 setWeekday:{objc_msgSend(componentsCopy, "weekday")}];
  if ((unitsCopy & 0x400) == 0)
  {
LABEL_11:
    if ((unitsCopy & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v6 setWeekdayOrdinal:{objc_msgSend(componentsCopy, "weekdayOrdinal")}];
  if ((unitsCopy & 0x800) == 0)
  {
LABEL_12:
    if ((unitsCopy & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v6 setQuarter:{objc_msgSend(componentsCopy, "quarter")}];
  if ((unitsCopy & 0x1000) == 0)
  {
LABEL_13:
    if ((unitsCopy & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v6 setWeekOfMonth:{objc_msgSend(componentsCopy, "weekOfMonth")}];
  if ((unitsCopy & 0x2000) == 0)
  {
LABEL_14:
    if ((unitsCopy & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v6 setWeekOfYear:{objc_msgSend(componentsCopy, "weekOfYear")}];
  if ((unitsCopy & 0x4000) == 0)
  {
LABEL_15:
    if ((unitsCopy & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v6 setYearForWeekOfYear:{objc_msgSend(componentsCopy, "yearForWeekOfYear")}];
  if ((unitsCopy & 0x100000) == 0)
  {
LABEL_16:
    if ((unitsCopy & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  calendar = [componentsCopy calendar];
  [v6 setCalendar:calendar];

  if ((unitsCopy & 0x200000) != 0)
  {
LABEL_17:
    timeZone = [componentsCopy timeZone];
    [v6 setTimeZone:timeZone];
  }

LABEL_18:

  return v6;
}

+ (BOOL)isGregorianDerivedCalendar:(id)calendar
{
  calendarIdentifier = [calendar calendarIdentifier];
  LOBYTE(self) = [self isGregorianDerivedCalendarIdentifier:calendarIdentifier];

  return self;
}

+ (BOOL)isGregorianDerivedCalendarIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E695D850]] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E695D898]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E695D868]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:*MEMORY[0x1E695D820]];
  }

  return v4;
}

@end