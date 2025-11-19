@interface DSCallStatisticsAggregator
- (BOOL)_isDateInRange:(id)a3;
- (DSCallStatisticsAggregator)init;
- (id)_getAndValidateDateFromLogLine:(id)a3;
- (id)getSynchronousResult;
- (int64_t)_getDaysBetween:(id)a3 and:(id)a4;
- (void)_fillCallLogWithMissingDays:(int64_t)a3 fromDate:(id)a4;
- (void)_flushAccumulatedLogDataWithDate:(id)a3;
- (void)_resetAccumulator;
- (void)beginAggregation;
@end

@implementation DSCallStatisticsAggregator

- (DSCallStatisticsAggregator)init
{
  if ([DSEntitlementUtilities currentProcessHasEntitlement:@"com.apple.DiagnosticsSupport.CallStatsAccess"])
  {
    v13.receiver = self;
    v13.super_class = DSCallStatisticsAggregator;
    v3 = [(DSCallStatisticsAggregator *)&v13 init];
    v4 = v3;
    if (v3)
    {
      *&v3->_futureDateDetected = 0;
      v5 = [MEMORY[0x277CBEAA8] date];
      referenceDate = v4->_referenceDate;
      v4->_referenceDate = v5;

      v7 = objc_opt_new();
      generationLock = v4->_generationLock;
      v4->_generationLock = v7;

      v4->_generationComplete = 0;
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:14];
      callLog = v4->_callLog;
      v4->_callLog = v9;

      v4->_missingDaysRemaining = 14;
      *&v4->_totals.droppedCallCount = 0;
      *&v4->_totals.droppedVoLTECallCount = 0;
      v4->_totals.deviceDroppedCallCount = 0;
      *&v4->_accumulated.droppedVoLTECallCount = 0;
      *&v4->_accumulated.droppedCallCount = 0;
      v4->_accumulated.deviceDroppedCallCount = 0;
    }

    self = v4;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)beginAggregation
{
  v3 = [(DSCallStatisticsAggregator *)self generationLock];
  [v3 lock];

  [(DSCallStatisticsAggregator *)self setGenerationComplete:0];
  v4 = [(DSCallStatisticsAggregator *)self generationLock];
  [v4 unlock];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v5 = [[DSGeneralLogCollector alloc] initWithLogIDs:&unk_285B95BA8];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __46__DSCallStatisticsAggregator_beginAggregation__block_invoke;
  v12 = &unk_278F6E640;
  v13 = self;
  v14 = &v17;
  objc_copyWeak(&v15, &location);
  [(DSGeneralLogCollector *)v5 enumerateLogLinesWithBlock:&v9];
  [(DSCallStatisticsAggregator *)self _flushAccumulatedLogDataWithDate:v18[5], v9, v10, v11, v12, v13, v14];
  v6 = [(DSCallStatisticsAggregator *)self generationLock];
  [v6 lock];

  [(DSCallStatisticsAggregator *)self setGenerationComplete:1];
  v7 = [(DSCallStatisticsAggregator *)self generationLock];
  [v7 signal];

  v8 = [(DSCallStatisticsAggregator *)self generationLock];
  [v8 unlock];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v17, 8);
}

uint64_t __46__DSCallStatisticsAggregator_beginAggregation__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) isCancelled];
  if (v4)
  {
    v5 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v5 = [*(a1 + 32) _getAndValidateDateFromLogLine:v3];
    if (v5)
    {
      v13 = [*(a1 + 32) _getDaysBetween:*(*(*(a1 + 40) + 8) + 40) and:v5];
      if (v13 < 0)
      {
        [*(a1 + 32) setOutOfOrderDateDetected:1];
        WeakRetained = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_1(WeakRetained, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      else
      {
        v14 = v13;
        v15 = *(*(*(a1 + 40) + 8) + 40);
        v16 = DiagnosticLogHandleForCategory(3);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15 == 0;
        }

        if (v18)
        {
          if (v17)
          {
            v36 = 134217984;
            v37 = v14;
            _os_log_impl(&dword_248BD5000, v16, OS_LOG_TYPE_DEFAULT, "date change, flushing new log entry; daysElapsed=%ld", &v36, 0xCu);
          }

          [*(a1 + 32) _flushAccumulatedLogDataWithDate:*(*(*(a1 + 40) + 8) + 40)];
          [*(a1 + 32) _fillCallLogWithMissingDays:v14 - 1 fromDate:*(*(*(a1 + 40) + 8) + 40)];
        }

        else
        {
          if (v17)
          {
            LOWORD(v36) = 0;
            _os_log_impl(&dword_248BD5000, v16, OS_LOG_TYPE_DEFAULT, "new log line contains the same date as a previous one, accumulating", &v36, 2u);
          }
        }

        WeakRetained = objc_loadWeakRetained((a1 + 48));
        if (WeakRetained)
        {
          *(WeakRetained + 28) += [v3 integerFromFieldAtIndex:12];
          *(WeakRetained + 32) += [v3 integerFromFieldAtIndex:14];
          *(WeakRetained + 36) += [v3 integerFromFieldAtIndex:15];
          *(WeakRetained + 40) += [v3 integerFromFieldAtIndex:4];
          *(WeakRetained + 44) += [v3 integerFromFieldAtIndex:5];
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
      }
    }

    else
    {
      WeakRetained = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_2(WeakRetained, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)getSynchronousResult
{
  v19[7] = *MEMORY[0x277D85DE8];
  v3 = [(DSCallStatisticsAggregator *)self generationLock];
  [v3 lock];

  if (![(DSCallStatisticsAggregator *)self generationComplete])
  {
    do
    {
      v4 = [(DSCallStatisticsAggregator *)self generationLock];
      [v4 wait];
    }

    while (![(DSCallStatisticsAggregator *)self generationComplete]);
  }

  v5 = [(DSCallStatisticsAggregator *)self generationLock];
  [v5 unlock];

  if ([(DSCallStatisticsAggregator *)self isCancelled])
  {
    v6 = 0;
  }

  else
  {
    v18[0] = @"futureDateDetected";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSCallStatisticsAggregator futureDateDetected](self, "futureDateDetected")}];
    v19[0] = v7;
    v18[1] = @"outOfOrderDateDetected";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSCallStatisticsAggregator outOfOrderDateDetected](self, "outOfOrderDateDetected")}];
    v19[1] = v8;
    v18[2] = @"totalLoggedDayCount";
    v9 = MEMORY[0x277CCABB0];
    v10 = [(DSCallStatisticsAggregator *)self callLog];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v19[2] = v11;
    v18[3] = @"totalPlacedCallCount";
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_totals.placedCallCount];
    v19[3] = v12;
    v18[4] = @"totalDroppedCallCount";
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_totals.droppedCallCount];
    v19[4] = v13;
    v18[5] = @"totalDeviceDroppedCallCount";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_totals.deviceDroppedCallCount];
    v19[5] = v14;
    v18[6] = @"callLog";
    v15 = [(DSCallStatisticsAggregator *)self callLog];
    v19[6] = v15;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_isDateInRange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSCallStatisticsAggregator *)self referenceDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_248BD5000, v8, OS_LOG_TYPE_DEFAULT, "interval since now: %f", &v11, 0xCu);
  }

  if (v7 <= 86400.0)
  {
    result = v7 > -1209600.0;
  }

  else
  {
    [(DSCallStatisticsAggregator *)self setFutureDateDetected:1];
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_getAndValidateDateFromLogLine:(id)a3
{
  v4 = [a3 stringFromFieldAtIndex:10];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = +[DSDateFormatter sharedFormatter];
  v6 = [v5 formatterWithType:3];
  v7 = [v6 dateFromString:v4];

  if (v7 && ![(DSCallStatisticsAggregator *)self _isDateInRange:v7])
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)_resetAccumulator
{
  *&self->_accumulated.droppedVoLTECallCount = 0;
  *&self->_accumulated.droppedCallCount = 0;
  self->_accumulated.deviceDroppedCallCount = 0;
}

- (void)_fillCallLogWithMissingDays:(int64_t)a3 fromDate:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(DSCallStatisticsAggregator *)self missingDaysRemaining];
  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  v9 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v23 = v8;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_248BD5000, v9, OS_LOG_TYPE_DEFAULT, "filling call log with empty data for %ld days starting from [%@]", buf, 0x16u);
  }

  v19 = v8;
  if (v8 >= 1)
  {
    v10 = 1;
    v11 = v8;
    do
    {
      v12 = [v6 dateByAddingTimeInterval:v10 * 86400.0];
      v13 = +[DSDateFormatter sharedFormatter];
      v14 = [v13 formatterWithType:4];
      v15 = [v14 stringFromDate:v12];

      if (v15)
      {
        v20[0] = @"date";
        v20[1] = @"placedCallCount";
        v21[0] = v15;
        v21[1] = &unk_285B95B68;
        v20[2] = @"droppedCallCount";
        v20[3] = @"deviceDroppedCallCount";
        v21[2] = &unk_285B95B68;
        v21[3] = &unk_285B95B68;
        v20[4] = @"droppedWiFiCallCount";
        v20[5] = @"droppedVoLTECallCount";
        v21[4] = &unk_285B95B68;
        v21[5] = &unk_285B95B68;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
        v17 = [(DSCallStatisticsAggregator *)self callLog];
        [v17 addObject:v16];
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  [(DSCallStatisticsAggregator *)self setMissingDaysRemaining:[(DSCallStatisticsAggregator *)self missingDaysRemaining]- v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (int64_t)_getDaysBetween:(id)a3 and:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v6 timeIntervalSinceDate:v5];
    v8 = (v9 / 86400.0);
  }

  v10 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_248BD5000, v10, OS_LOG_TYPE_DEFAULT, "days between [%@] and [%@]: %ld", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_flushAccumulatedLogDataWithDate:(id)a3
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:4];
    v7 = [v6 stringFromDate:v4];

    if (v7)
    {
      v17[0] = v7;
      v16[0] = @"date";
      v16[1] = @"placedCallCount";
      v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_accumulated.placedCallCount];
      v17[1] = v8;
      v16[2] = @"droppedCallCount";
      v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_accumulated.droppedCallCount];
      v17[2] = v9;
      v16[3] = @"deviceDroppedCallCount";
      v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_accumulated.deviceDroppedCallCount];
      v17[3] = v10;
      v16[4] = @"droppedWiFiCallCount";
      v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_accumulated.droppedWiFiCallCount];
      v17[4] = v11;
      v16[5] = @"droppedVoLTECallCount";
      v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_accumulated.droppedVoLTECallCount];
      v17[5] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

      v14 = [(DSCallStatisticsAggregator *)self callLog];
      [v14 addObject:v13];

      self->_totals.deviceDroppedCallCount += self->_accumulated.deviceDroppedCallCount;
      *&self->_totals.droppedCallCount = vaddq_s32(*&self->_totals.droppedCallCount, *&self->_accumulated.droppedCallCount);
    }
  }

  [(DSCallStatisticsAggregator *)self _resetAccumulator];
  v15 = *MEMORY[0x277D85DE8];
}

@end