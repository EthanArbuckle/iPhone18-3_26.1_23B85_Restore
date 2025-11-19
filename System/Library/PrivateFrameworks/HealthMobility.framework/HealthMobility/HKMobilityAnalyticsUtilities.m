@interface HKMobilityAnalyticsUtilities
+ (id)activeWatchProductType;
+ (id)ageWithHealthStore:(id)a3 error:(id *)a4;
+ (id)biologicalSexWithHealthStore:(id)a3 error:(id *)a4;
+ (id)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4;
+ (id)payloadStringForBiologicalSex:(id)a3;
+ (id)yearsBetweenStartDateComponents:(id)a3 endDate:(id)a4;
@end

@implementation HKMobilityAnalyticsUtilities

+ (id)yearsBetweenStartDateComponents:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEA80];
  v7 = a3;
  v8 = [v6 hk_gregorianCalendarWithLocalTimeZone];
  v9 = [v8 dateFromComponents:v7];

  if (v9)
  {
    v10 = [v8 components:4 fromDate:v9 toDate:v5 options:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "year")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 hk_gregorianCalendarWithLocalTimeZone];
  v15 = 0;
  [v8 rangeOfUnit:16 startDate:&v15 interval:0 forDate:v7];

  v9 = v15;
  v14 = 0;
  [v8 rangeOfUnit:16 startDate:&v14 interval:0 forDate:v6];

  v10 = v14;
  v11 = [v8 components:16 fromDate:v9 toDate:v10 options:0];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "day")}];

  return v12;
}

+ (id)payloadStringForBiologicalSex:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 integerValue], v5 <= 3))
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
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 getActivePairedDevice];

  if (v4)
  {
    v5 = [v4 valueForProperty:*MEMORY[0x277D2BBC0]];
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
        v13 = a1;
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
      v13 = a1;
      _os_log_impl(&dword_251952000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No active paired device, returning unavailable", &v12, 0xCu);
    }

    v7 = @"unavailable";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)ageWithHealthStore:(id)a3 error:(id *)a4
{
  v4 = [a3 dateOfBirthComponentsWithError:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [HKMobilityAnalyticsUtilities yearsBetweenStartDateComponents:v4 endDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)biologicalSexWithHealthStore:(id)a3 error:(id *)a4
{
  v4 = [a3 biologicalSexWithError:a4];
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