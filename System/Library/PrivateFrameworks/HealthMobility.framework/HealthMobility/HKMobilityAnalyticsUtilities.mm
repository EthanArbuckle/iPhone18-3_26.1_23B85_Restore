@interface HKMobilityAnalyticsUtilities
+ (id)activeWatchProductType;
+ (id)ageWithHealthStore:(id)store error:(id *)error;
+ (id)biologicalSexWithHealthStore:(id)store error:(id *)error;
+ (id)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)payloadStringForBiologicalSex:(id)sex;
+ (id)yearsBetweenStartDateComponents:(id)components endDate:(id)date;
@end

@implementation HKMobilityAnalyticsUtilities

+ (id)yearsBetweenStartDateComponents:(id)components endDate:(id)date
{
  dateCopy = date;
  v6 = MEMORY[0x277CBEA80];
  componentsCopy = components;
  hk_gregorianCalendarWithLocalTimeZone = [v6 hk_gregorianCalendarWithLocalTimeZone];
  v9 = [hk_gregorianCalendarWithLocalTimeZone dateFromComponents:componentsCopy];

  if (v9)
  {
    v10 = [hk_gregorianCalendarWithLocalTimeZone components:4 fromDate:v9 toDate:dateCopy options:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "year")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CBEA80];
  endDateCopy = endDate;
  dateCopy = date;
  hk_gregorianCalendarWithLocalTimeZone = [v5 hk_gregorianCalendarWithLocalTimeZone];
  v15 = 0;
  [hk_gregorianCalendarWithLocalTimeZone rangeOfUnit:16 startDate:&v15 interval:0 forDate:dateCopy];

  v9 = v15;
  v14 = 0;
  [hk_gregorianCalendarWithLocalTimeZone rangeOfUnit:16 startDate:&v14 interval:0 forDate:endDateCopy];

  v10 = v14;
  v11 = [hk_gregorianCalendarWithLocalTimeZone components:16 fromDate:v9 toDate:v10 options:0];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "day")}];

  return v12;
}

+ (id)payloadStringForBiologicalSex:(id)sex
{
  sexCopy = sex;
  v4 = sexCopy;
  if (sexCopy && (v5 = [sexCopy integerValue], v5 <= 3))
  {
    v6 = off_2796D8670[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)activeWatchProductType
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v5 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_251952000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No watch product type retrieved, returning unavailable", &v12, 0xCu);
      }

      v7 = @"unavailable";
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_251952000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No active paired device, returning unavailable", &v12, 0xCu);
    }

    v7 = @"unavailable";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)ageWithHealthStore:(id)store error:(id *)error
{
  v4 = [store dateOfBirthComponentsWithError:error];
  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [HKMobilityAnalyticsUtilities yearsBetweenStartDateComponents:v4 endDate:date];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)biologicalSexWithHealthStore:(id)store error:(id *)error
{
  v4 = [store biologicalSexWithError:error];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "biologicalSex")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end