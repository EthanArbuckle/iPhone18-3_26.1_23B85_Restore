@interface ULHomeSlamAnalyticEventAnalyzer
+ (float)aggregateTimeBetweenEvent:(signed __int16)a3 andEvent:(signed __int16)a4 startDate:(id)a5 endDate:(id)a6 withDBStore:(ULDatabaseStoreInterface *)a7;
+ (int64_t)countEventOccurrences:(signed __int16)a3 fromDate:(double)a4 untilDate:(double)a5 fromDBStore:(ULDatabaseStoreInterface *)a6;
- (BOOL)_checkIfScreenTransitionedToOnBefore:(id)a3 after:(id)a4 withEvents:()vector<ULHomeSlamAnalyticEventDO;
- (BOOL)_daemonWasRestartedWithEvents:()vector<ULHomeSlamAnalyticEventDO;
- (BOOL)_wasLastScreenStateOnBefore:(id)a3 withEvents:()vector<ULHomeSlamAnalyticEventDO;
- (ULHomeSlamAnalyticEventAnalyzer)init;
- (id)_analyzeTriggersAndGetCA:(id)a3 fromDate:(id)a4 untilDate:(id)a5 withDBStore:(ULDatabaseStoreInterface *)a6;
- (id)runStopDetectionAnalysisAtTimepoint:(uint64_t)a3 withDBStore:(uint64_t)a4;
- (int64_t)_hoursFromFirstEventToDate:(id)a3 withDBStore:(ULDatabaseStoreInterface *)a4;
@end

@implementation ULHomeSlamAnalyticEventAnalyzer

- (ULHomeSlamAnalyticEventAnalyzer)init
{
  v3.receiver = self;
  v3.super_class = ULHomeSlamAnalyticEventAnalyzer;
  return [(ULHomeSlamAnalyticEventAnalyzer *)&v3 init];
}

- (id)runStopDetectionAnalysisAtTimepoint:(uint64_t)a3 withDBStore:(uint64_t)a4
{
  v7 = a2 + -86400.0;
  v8 = [[ULHomeSlamStopDetection alloc] initWithDbStore:a4];
  v9 = [(ULHomeSlamStopDetection *)v8 runStopDetectionAnalysisFromTime:v7 toTime:a2];

  v10 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:v7];
  v11 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:a2];
  v12 = [a1 _analyzeTriggersAndGetCA:v9 fromDate:v10 untilDate:v11 withDBStore:a4];

  return v12;
}

- (id)_analyzeTriggersAndGetCA:(id)a3 fromDate:(id)a4 untilDate:(id)a5 withDBStore:(ULDatabaseStoreInterface *)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v10 = a4;
  v50 = a5;
  v48 = a6;
  v49 = v10;
  v11 = (*(a6->var0 + 17))(a6);
  [v10 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v50 timeIntervalSinceReferenceDate];
  if (v11)
  {
    [v11 fetchAnalyticEventsASCFromTime:v13 toTime:v14];
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v47;
  v15 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v15)
  {
    v55 = 0;
    v17 = 0;
    v51 = 0;
    v53 = 0;
    v18 = 0;
    goto LABEL_24;
  }

  v55 = 0;
  v16 = 0;
  v17 = 0;
  v51 = 0;
  v53 = 0;
  v18 = 0;
  v19 = *v66;
  v20 = 1;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v66 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v65 + 1) + 8 * i);
      if ([v22 trigger] == 0 && (v16 & 1) != 0)
      {
        v23 = [v22 date];
        __p = 0;
        v63 = 0;
        v64 = 0;
        std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO*,ULHomeSlamAnalyticEventDO*>(&__p, v69, v70, (v70 - v69) >> 4);
        v24 = [(ULHomeSlamAnalyticEventAnalyzer *)self _checkIfScreenTransitionedToOnBefore:v23 after:v55 withEvents:&__p];
        if (__p)
        {
          v63 = __p;
          operator delete(__p);
        }

        v16 = 0;
        if (!v24)
        {
          ++v53;
          v20 = 1;
          continue;
        }

        goto LABEL_18;
      }

      v25 = [v22 date];
      v59 = 0;
      v60 = 0;
      v61 = 0;
      std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO*,ULHomeSlamAnalyticEventDO*>(&v59, v69, v70, (v70 - v69) >> 4);
      v26 = [(ULHomeSlamAnalyticEventAnalyzer *)self _wasLastScreenStateOnBefore:v25 withEvents:&v59];
      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v26)
      {
        v16 = 0;
        ++v51;
LABEL_18:
        ++v18;
        v17 += (v20 & 1) == 0;
        v20 = 0;
        continue;
      }

      v27 = [v22 date];

      v16 = 1;
      v55 = v27;
    }

    v15 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  }

  while (v15);
LABEL_24:

  v56 = 0;
  v57 = 0;
  v58 = 0;
  std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO*,ULHomeSlamAnalyticEventDO*>(&v56, v69, v70, (v70 - v69) >> 4);
  v28 = [(ULHomeSlamAnalyticEventAnalyzer *)self _daemonWasRestartedWithEvents:&v56];
  v29 = v18 + v53;
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v29)
  {
    v30 = 100 * v17 / v29;
  }

  else
  {
    v30 = 200;
  }

  [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:5 andEvent:6 startDate:v49 endDate:v50 withDBStore:v48];
  v32 = v31;
  [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:2 andEvent:3 startDate:v49 endDate:v50 withDBStore:v48];
  v34 = v33;
  v72[0] = @"stop_triggers_total";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  v73[0] = v35;
  v72[1] = @"stop_triggers_screen_on";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
  v73[1] = v52;
  v72[2] = @"stop_triggers_not_supressed";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  v73[2] = v46;
  v72[3] = @"stop_triggers_supressed";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53];
  v73[3] = v36;
  v72[4] = @"num_valid_segments";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v73[4] = v37;
  v72[5] = @"percent_valid_segments";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
  v73[5] = v38;
  v72[6] = @"time_spent_at_home";
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:vcvtps_s32_f32(v32)];
  v73[6] = v39;
  v72[7] = @"time_spent_with_milo_enabled";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:vcvtps_s32_f32(v34)];
  v73[7] = v40;
  v72[8] = @"daemon_restarted";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  v73[8] = v41;
  v72[9] = @"hours_since_first_event";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ULHomeSlamAnalyticEventAnalyzer _hoursFromFirstEventToDate:withDBStore:](self, "_hoursFromFirstEventToDate:withDBStore:", v50, v48)}];
  v73[9] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:10];

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (int64_t)_hoursFromFirstEventToDate:(id)a3 withDBStore:(ULDatabaseStoreInterface *)a4
{
  v5 = a3;
  v6 = (*(a4->var0 + 17))(a4);
  v7 = v6;
  if (v6)
  {
    [v6 fetchFirstEvent];
  }

  else
  {
    v12 = 0.0;
    v13 = 0;
  }

  if (v13 == 1)
  {
    v8 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:v12];
    [v5 timeIntervalSinceDate:v8];
    v10 = vcvtpd_s64_f64(v9 / 60.0 / 60.0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_checkIfScreenTransitionedToOnBefore:(id)a3 after:(id)a4 withEvents:()vector<ULHomeSlamAnalyticEventDO
{
  v7 = a3;
  v8 = a4;
  var0 = a5->var0;
  var1 = a5->var1;
  if (a5->var0 != var1)
  {
    do
    {
      v11 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:*var0];
      [v11 timeIntervalSinceDate:v7];
      v13 = v12;

      if (v13 > 0.0)
      {
        break;
      }

      v14 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:*var0];
      [v14 timeIntervalSinceDate:v8];
      if (v15 <= 0.0)
      {
      }

      else
      {
        v16 = *(var0 + 4);

        if (!v16)
        {
          v18 = 1;
          goto LABEL_9;
        }
      }

      var0 = (var0 + 16);
    }

    while (var0 != var1);
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (BOOL)_wasLastScreenStateOnBefore:(id)a3 withEvents:()vector<ULHomeSlamAnalyticEventDO
{
  v5 = a3;
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 == var1)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:*var0];
      [v9 timeIntervalSinceDate:v5];
      v11 = v10;

      if (v11 > 0.0)
      {
        break;
      }

      v12 = *(var0 + 4) == 1 ? 0 : v8;
      v8 = *(var0 + 4) ? v12 : 1;
      var0 = (var0 + 16);
    }

    while (var0 != var1);
  }

  return v8 & 1;
}

+ (float)aggregateTimeBetweenEvent:(signed __int16)a3 andEvent:(signed __int16)a4 startDate:(id)a5 endDate:(id)a6 withDBStore:(ULDatabaseStoreInterface *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = (*(a7->var0 + 17))(a7);
  [v11 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v12 timeIntervalSinceReferenceDate];
  if (v13)
  {
    [v13 fetchAnalyticEventsASCFromTime:v15 toTime:v16];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v17 = a4;
  v18 = a3;

  v19 = v41;
  if (v41 != v40)
  {
    v20 = 0;
    v21 = 0.0;
    v22 = v12;
    while (1)
    {
      v23 = *(v19 - 4);
      v19 -= 2;
      if (v23 == v18)
      {
        v24 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:*v19];

        [v22 timeIntervalSinceDate:v24];
        v21 = v21 + v25;
        v26 = v24;
        v20 = v26;
      }

      else
      {
        if (v23 != v17 && v23 != 4)
        {
          goto LABEL_15;
        }

        v26 = [ULHomeSlamAnalyticEventAnalyzer _timepointToDate:*v19];
      }

      v28 = v26;

      v22 = v28;
LABEL_15:
      if (v19 == v40)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = 0;
  v21 = 0.0;
  v22 = v12;
LABEL_18:
  v29 = (*(a7->var0 + 17))(a7);
  v33[0] = v18;
  v33[1] = v17;
  v33[2] = 4;
  v35 = 0;
  v36 = 0;
  __p = 0;
  std::vector<ULHomeSlamAnalyticEventDO::EventTypeEnum>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO::EventTypeEnum const*,ULHomeSlamAnalyticEventDO::EventTypeEnum const*>(&__p, v33, &__p, 3);
  [v11 timeIntervalSinceReferenceDate];
  if (v29)
  {
    [v29 fetchLatestAnalyticEventType:&__p beforeTime:?];
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v39 == 1 && v38 == v18)
  {
    [v22 timeIntervalSinceDate:v11];
    v21 = v21 + v30;
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return v21 / 60.0 / 60.0;
}

- (BOOL)_daemonWasRestartedWithEvents:()vector<ULHomeSlamAnalyticEventDO
{
  var1 = a3->var1;
  if (a3->var0 == var1)
  {
    return 0;
  }

  v4 = (a3->var0 + 16);
  do
  {
    v5 = *(v4 - 4);
    result = v5 == 4;
    v7 = v5 == 4 || v4 == var1;
    v4 = (v4 + 16);
  }

  while (!v7);
  return result;
}

+ (int64_t)countEventOccurrences:(signed __int16)a3 fromDate:(double)a4 untilDate:(double)a5 fromDBStore:(ULDatabaseStoreInterface *)a6
{
  v9 = (*(a6->var0 + 17))(a6, a2);
  v10 = v9;
  if (v9)
  {
    [v9 fetchAnalyticEventsASCFromTime:a4 toTime:a5];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v14 == v15)
  {
    v11 = 0;
    if (!v14)
    {
      return v11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = v14;
  do
  {
    if (v12[4] == a3)
    {
      ++v11;
    }

    v12 += 8;
  }

  while (v12 != v15);
  if (v14)
  {
LABEL_10:
    operator delete(v14);
  }

  return v11;
}

@end