@interface NSCalendarDate(EKMSUIDAdditions)
- (id)ekmsuidGMTDateToDateInTimeZone:()EKMSUIDAdditions;
- (id)ekmsuidStringForYearMonthDay;
@end

@implementation NSCalendarDate(EKMSUIDAdditions)

- (id)ekmsuidGMTDateToDateInTimeZone:()EKMSUIDAdditions
{
  v4 = a3;
  v5 = [self dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:{-objc_msgSend(v4, "secondsFromGMTForDate:", self)}];
  [v5 setTimeZone:v4];
  [v4 daylightSavingTimeOffsetForDate:self];
  v7 = v6;
  [v4 daylightSavingTimeOffsetForDate:v5];
  v9 = v8;

  if (vabdd_f64(v7, v9) >= 2.22044605e-16)
  {
    v10 = [v5 dateByAddingTimeInterval:v9 - v7];

    v5 = v10;
  }

  return v5;
}

- (id)ekmsuidStringForYearMonthDay
{
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  v3 = [self descriptionWithCalendarFormat:@"%Y%m%d" timeZone:v2 locale:0];

  return v3;
}

@end