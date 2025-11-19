@interface OSIUtilities
+ (BOOL)isWeekend:(id)a3;
+ (BOOL)isiPhone;
+ (id)loIAtBeginningAndEndOfIntervals:(id)a3;
+ (id)midnightDateFrom:(id)a3;
+ (int64_t)currentBatteryLevelWithContext:(id)a3;
@end

@implementation OSIUtilities

+ (id)loIAtBeginningAndEndOfIntervals:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v55 = a3;
  oslog = os_log_create("com.apple.osintelligence", "osiutilities.loi");
  v50 = [MEMORY[0x277D01280] defaultManager];
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__2;
  v79 = __Block_byref_object_dispose__2;
  v80 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [v55 firstObject];
  v5 = [v4 startDate];
  v53 = [v5 dateByAddingTimeInterval:-86400.0];

  v6 = [v55 lastObject];
  v7 = [v6 endDate];
  v52 = [v7 dateByAddingTimeInterval:86400.0];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v82 = v53;
    v83 = 2112;
    v84 = v52;
    _os_log_impl(&dword_25D171000, oslog, OS_LOG_TYPE_INFO, "Querying for LoIs and visits between start %@ and end %@", buf, 0x16u);
  }

  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__2;
  v73[4] = __Block_byref_object_dispose__2;
  v74 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke;
  v69[3] = &unk_2799C1998;
  v71 = &v75;
  v72 = v73;
  v8 = v3;
  v70 = v8;
  [v50 fetchLocationsOfInterestVisitedBetweenStartDate:v53 endDate:v52 withHandler:v69];
  v9 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v8, v9);
  v60 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v76[5];
  v49 = v8;
  v57 = [obj countByEnumeratingWithState:&v65 objects:v98 count:16];
  if (v57)
  {
    v56 = *v66;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v11 = [v10 visits];
        v12 = [v11 countByEnumeratingWithState:&v61 objects:v97 count:16];
        if (v12)
        {
          v13 = *v62;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v62 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v61 + 1) + 8 * j);
              v95[0] = @"visitEntryDate";
              v16 = [v15 entryDate];
              v96[0] = v16;
              v95[1] = @"visitExitDate";
              v17 = [v15 exitDate];
              v96[1] = v17;
              v95[2] = @"loi";
              v18 = [v10 identifier];
              v19 = [v18 UUIDString];
              v96[2] = v19;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];

              [v60 addObject:v20];
            }

            v12 = [v11 countByEnumeratingWithState:&v61 objects:v97 count:16];
          }

          while (v12);
        }
      }

      v57 = [obj countByEnumeratingWithState:&v65 objects:v98 count:16];
    }

    while (v57);
  }

  [v60 sortUsingComparator:&__block_literal_global_3];
  v21 = objc_opt_new();
  for (k = 0; [v55 count] > k; ++k)
  {
    v93[0] = @"interval";
    v23 = [v55 objectAtIndexedSubscript:k];
    v93[1] = @"loi";
    v94[0] = v23;
    v94[1] = &stru_286EB4F30;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
    [v21 addObject:v24];
  }

  v59 = 0;
  v25 = 0;
  for (m = 0; ; m = v27 + (v42 ^ 1))
  {
    v27 = m;
    if ([v55 count] <= m || objc_msgSend(v60, "count") <= v25)
    {
      break;
    }

    v28 = [v60 objectAtIndexedSubscript:?];
    v29 = [v55 objectAtIndexedSubscript:m];
    v30 = [v28 objectForKeyedSubscript:@"visitEntryDate"];
    v31 = [v29 startDate];
    [v30 timeIntervalSinceDate:v31];
    if (v32 <= 0.0)
    {
      v33 = [v28 objectForKeyedSubscript:@"visitExitDate"];
      v34 = [v29 endDate];
      [v33 timeIntervalSinceDate:v34];
      v36 = v35 < 0.0;

      if (v36)
      {
        goto LABEL_28;
      }

      v37 = [v21 objectAtIndexedSubscript:v27];
      v30 = [v37 mutableCopy];

      v38 = [v28 objectForKeyedSubscript:@"loi"];
      [v30 setObject:v38 forKeyedSubscript:@"loi"];

      [v21 setObject:v30 atIndexedSubscript:v27];
      ++v59;
    }

    else
    {
    }

LABEL_28:
    v39 = [v28 objectForKeyedSubscript:@"visitExitDate"];
    v40 = [v29 endDate];
    [v39 timeIntervalSinceDate:v40];
    v42 = v41 <= 0.0;

    v25 += v42;
  }

  v43 = oslog;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v55 count];
    v45 = [v76[5] count];
    v46 = [v60 count];
    *buf = 134219266;
    v82 = v44;
    v83 = 2112;
    v84 = v53;
    v85 = 2112;
    v86 = v52;
    v87 = 2048;
    v88 = v45;
    v89 = 2048;
    v90 = v46;
    v91 = 1024;
    v92 = v59;
    _os_log_impl(&dword_25D171000, v43, OS_LOG_TYPE_DEFAULT, "For %lu intervals spanning from %@ to %@: \n found %lu lois and %lu visits \n associated %d intervals with lois", buf, 0x3Au);
  }

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v75, 8);

  v47 = *MEMORY[0x277D85DE8];

  return v21;
}

void __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"visitEntryDate"];
  v6 = [v4 objectForKeyedSubscript:@"visitEntryDate"];

  v7 = [v5 compare:v6];
  return v7;
}

+ (int64_t)currentBatteryLevelWithContext:(id)a3
{
  v3 = MEMORY[0x277CFE338];
  v4 = a3;
  v5 = [v3 keyPathForBatteryStateDataDictionary];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [MEMORY[0x277CFE338] batteryPercentageKey];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 integerValue];

  return v9;
}

+ (id)midnightDateFrom:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 components:540 fromDate:v4];

  v8 = [v5 dateFromComponents:v7];

  return v8;
}

+ (BOOL)isWeekend:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 isDateInWeekend:v4];

  return v6;
}

+ (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

@end