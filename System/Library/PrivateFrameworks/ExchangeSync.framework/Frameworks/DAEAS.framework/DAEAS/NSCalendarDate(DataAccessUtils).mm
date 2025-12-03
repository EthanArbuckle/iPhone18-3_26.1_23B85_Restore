@interface NSCalendarDate(DataAccessUtils)
+ (id)combinedDateWithYMDFrom:()DataAccessUtils HMSFrom:componentDatesTimezone:;
- (BOOL)isGMTMidnight;
- (double)getGregorianDate:()DataAccessUtils;
- (id)gmtDateToDateInTimeZone:()DataAccessUtils;
- (id)gmtMidnight;
- (id)nearestMidnight;
- (id)tzDateToDateInGMT:()DataAccessUtils;
@end

@implementation NSCalendarDate(DataAccessUtils)

- (id)tzDateToDateInGMT:()DataAccessUtils
{
  v4 = a3;
  v5 = [self dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:{objc_msgSend(v4, "secondsFromGMTForDate:", self)}];
  v6 = [MEMORY[0x277CBEBB0] gmt];
  [v5 setTimeZone:v6];

  [v4 daylightSavingTimeOffsetForDate:self];
  v8 = v7;
  [v4 daylightSavingTimeOffsetForDate:v5];
  v10 = v9;

  if (v8 != v10)
  {
    v11 = [v5 dateByAddingTimeInterval:v10 - v8];

    v5 = v11;
  }

  return v5;
}

- (id)gmtDateToDateInTimeZone:()DataAccessUtils
{
  v4 = a3;
  v5 = [self dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:{-objc_msgSend(v4, "secondsFromGMTForDate:", self)}];
  [v5 setTimeZone:v4];
  [v4 daylightSavingTimeOffsetForDate:self];
  v7 = v6;
  [v4 daylightSavingTimeOffsetForDate:v5];
  v9 = v8;

  if (v7 != v9)
  {
    v10 = [v5 dateByAddingTimeInterval:v9 - v7];

    v5 = v10;
  }

  return v5;
}

- (id)nearestMidnight
{
  v1 = [self copy];
  v2 = [MEMORY[0x277CBEBB0] gmt];
  [v1 setTimeZone:v2];
  hourOfDay = [v1 hourOfDay];
  if (hourOfDay >= 11 && [v1 hourOfDay] <= 11 && !objc_msgSend(v1, "minuteOfHour"))
  {
    [v1 secondOfMinute];
  }

  v4 = [MEMORY[0x277CCA8F8] dateWithYear:objc_msgSend(v1 month:"yearOfCommonEra") day:objc_msgSend(v1 hour:"monthOfYear") minute:objc_msgSend(v1 second:"dayOfMonth") timeZone:{0, 0, 0, v2}];
  v5 = v4;
  if (hourOfDay >= 11)
  {
    v6 = [v4 dateByAddingYears:0 months:0 days:1 hours:0 minutes:0 seconds:0];

    v5 = v6;
  }

  return v5;
}

- (BOOL)isGMTMidnight
{
  v1 = [self copy];
  v2 = [MEMORY[0x277CBEBB0] gmt];
  [v1 setTimeZone:v2];
  v3 = ![v1 hourOfDay] && !objc_msgSend(v1, "minuteOfHour") && objc_msgSend(v1, "secondOfMinute") == 0;

  return v3;
}

- (id)gmtMidnight
{
  v1 = [self copy];
  v2 = [MEMORY[0x277CBEBB0] gmt];
  [v1 setTimeZone:v2];
  v3 = [MEMORY[0x277CCA8F8] dateWithYear:objc_msgSend(v1 month:"yearOfCommonEra") day:objc_msgSend(v1 hour:"monthOfYear") minute:objc_msgSend(v1 second:"dayOfMonth") timeZone:{0, 0, 0, v2}];

  return v3;
}

+ (id)combinedDateWithYMDFrom:()DataAccessUtils HMSFrom:componentDatesTimezone:
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  [v8 daylightSavingTimeOffsetForDate:v9];
  v11 = v10;
  [v8 daylightSavingTimeOffsetForDate:v7];
  v13 = v12;

  if (v11 != v13)
  {
    v14 = [v7 dateByAddingTimeInterval:v13 - v11];

    v7 = v14;
  }

  v15 = [MEMORY[0x277CBEBB0] gmt];
  v16 = [v9 dateWithCalendarFormat:0 timeZone:v15];

  v17 = [v7 dateWithCalendarFormat:0 timeZone:v15];
  v18 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:objc_msgSend(v16 month:"yearOfCommonEra") day:objc_msgSend(v16 hour:"monthOfYear") minute:objc_msgSend(v16 second:"dayOfMonth") timeZone:{objc_msgSend(v17, "hourOfDay"), objc_msgSend(v17, "minuteOfHour"), objc_msgSend(v17, "secondOfMinute"), v15}];

  return v18;
}

- (double)getGregorianDate:()DataAccessUtils
{
  *a3 = [self yearOfCommonEra];
  *(a3 + 4) = [self monthOfYear];
  *(a3 + 5) = [self dayOfMonth];
  *(a3 + 6) = [self hourOfDay];
  *(a3 + 7) = [self minuteOfHour];
  result = [self secondOfMinute];
  *(a3 + 8) = result;
  return result;
}

@end