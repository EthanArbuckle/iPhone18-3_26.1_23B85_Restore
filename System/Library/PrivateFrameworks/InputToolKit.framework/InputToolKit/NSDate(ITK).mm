@interface NSDate(ITK)
- (id)itk_briefFormattedDate:()ITK;
- (id)itk_shortFormattedDate;
- (uint64_t)itk_isToday;
- (uint64_t)itk_isYesterday;
- (uint64_t)itk_localDateWithSeconds;
@end

@implementation NSDate(ITK)

- (uint64_t)itk_isToday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [currentCalendar components:28 fromDate:date];

  v7 = [currentCalendar dateFromComponents:v6];
  v8 = [v4 isEqualToDate:v7];

  return v8;
}

- (uint64_t)itk_isYesterday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:-1];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [currentCalendar dateByAddingComponents:v5 toDate:date options:0];

  v8 = [currentCalendar components:28 fromDate:v7];
  v9 = [currentCalendar dateFromComponents:v8];

  v10 = [v4 isEqualToDate:v9];
  return v10;
}

- (uint64_t)itk_localDateWithSeconds
{
  if (itk_localDateWithSeconds_localFormatterOnceToken != -1)
  {
    [NSDate(ITK) itk_localDateWithSeconds];
  }

  v2 = itk_localDateWithSeconds_localFormatter;

  return [v2 stringFromDate:self];
}

- (id)itk_shortFormattedDate
{
  if (([self itk_isToday] & 1) != 0 || objc_msgSend(self, "itk_isYesterday"))
  {
    if (itk_shortFormattedDate_shortRelativeOnceToken != -1)
    {
      [NSDate(ITK) itk_shortFormattedDate];
    }

    v2 = &itk_shortFormattedDate_shortRelativeformatter;
  }

  else
  {
    if (itk_shortFormattedDate_shortStandardOnceToken != -1)
    {
      [NSDate(ITK) itk_shortFormattedDate];
    }

    v2 = &itk_shortFormattedDate_shortStandardformatter;
  }

  v3 = [*v2 stringFromDate:self];

  return v3;
}

- (id)itk_briefFormattedDate:()ITK
{
  selfCopy = self;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [selfCopy isEqual:distantFuture];

  if (v6)
  {
    date = [MEMORY[0x277CBEAA8] date];

    selfCopy = date;
  }

  if ([selfCopy itk_isToday])
  {
    if (itk_briefFormattedDate__briefTodayOnceToken != -1)
    {
      [NSDate(ITK) itk_briefFormattedDate:];
    }

    v8 = [itk_briefFormattedDate__briefTodayFormatter stringFromDate:selfCopy];
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date2 = [MEMORY[0x277CBEAA8] date];
    v11 = [currentCalendar components:28 fromDate:date2];

    v12 = [currentCalendar dateFromComponents:v11];
    v13 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:v12 options:0];
    v14 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v12 options:0];
    if ([selfCopy compare:v13] == 1 || objc_msgSend(selfCopy, "compare:", v14) != 1)
    {
      if (a3)
      {
        if (itk_briefFormattedDate__templateOnceToken_14 != -1)
        {
          [NSDate(ITK) itk_briefFormattedDate:];
        }

        v15 = &itk_briefFormattedDate__accessibilityDateFormatter;
      }

      else
      {
        if (itk_briefFormattedDate__briefRelativeOnceToken != -1)
        {
          [NSDate(ITK) itk_briefFormattedDate:];
        }

        v15 = &itk_briefFormattedDate__briefRelativeFormatter;
      }
    }

    else
    {
      if (itk_briefFormattedDate__templateOnceToken != -1)
      {
        [NSDate(ITK) itk_briefFormattedDate:];
      }

      v15 = &itk_briefFormattedDate__templateFormatter;
    }

    v8 = [*v15 stringFromDate:selfCopy];
  }

  return v8;
}

@end