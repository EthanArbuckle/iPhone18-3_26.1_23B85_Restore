@interface DKBacklightMonitor
@end

@implementation DKBacklightMonitor

void __42___DKBacklightMonitor_setShutdownHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleShutdownNotification];
}

void __41___DKBacklightMonitor_obtainCurrentValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentEvent];

  if (!v2)
  {
    state64 = 0;
    notify_get_state(*(*(a1 + 32) + 152), &state64);
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
    v4 = [_DKBacklightMonitor _eventWithState:v3];

    [*(a1 + 32) setCurrentEvent:v4 inferHistoricalState:1];
    v5 = [*(a1 + 32) lastBacklightEvent];
    v6 = [v5 backlightLevel];
    v7 = state64;
    if (v6 != state64)
    {
      v8 = *(a1 + 32);
      v9 = [v4 startDate];
      [v8 donateToBiome:v7 startDate:v9];
    }
  }
}

void __28___DKBacklightMonitor_start__block_invoke(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = os_transaction_create();
    v5 = objc_autoreleasePoolPush();
    state64 = 0;
    state = notify_get_state(a2, &state64);
    v7 = [WeakRetained log];
    v8 = v7;
    if (state)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __28___DKBacklightMonitor_start__block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = @"com.apple.iokit.hid.displayStatus";
        v31 = 2048;
        v32 = state64;
        _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %llu", buf, 0x16u);
      }

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
      v8 = [_DKBacklightMonitor _eventWithState:v24];

      [WeakRetained setCurrentEvent:v8 inferHistoricalState:1];
      v25 = state64;
      v26 = [v8 startDate];
      [WeakRetained donateToBiome:v25 startDate:v26];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v16)
    {
      __28___DKBacklightMonitor_start__block_invoke_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __65___DKBacklightMonitor_donateRetroactiveShutdownBacklightOffEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) checkShutdownConditionOfBacklightStream];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF1098]) initWithAbsoluteTimestamp:v2 backlightLevel:&unk_2838F78A0];
    [*(*(a1 + 32) + 160) sendEvent:v3 date:v2];
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEAA8] now];
  [v4 _setLastAliveDate:v5];

  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65___DKBacklightMonitor_donateRetroactiveShutdownBacklightOffEvent__block_invoke_30;
  v10[3] = &unk_27856F1F0;
  objc_copyWeak(&v11, &location);
  v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:v10 block:600.0];
  v8 = *(a1 + 32);
  v9 = *(v8 + 176);
  *(v8 + 176) = v7;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __65___DKBacklightMonitor_donateRetroactiveShutdownBacklightOffEvent__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CBEAA8] now];
  [WeakRetained _setLastAliveDate:v1];
}

uint64_t __41___DKBacklightMonitor_lastBacklightEvent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

@end