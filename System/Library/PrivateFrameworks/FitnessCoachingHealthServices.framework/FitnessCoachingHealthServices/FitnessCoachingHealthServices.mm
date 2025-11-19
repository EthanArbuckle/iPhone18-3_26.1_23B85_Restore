void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24B55C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCEventCoalescedWithRules(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 currentDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 eventIdentifier];
        v15 = [v4 lastFiredDateForProgressEventIdentifier:v14];

        if (v15)
        {
          [v15 timeIntervalSinceReferenceDate];
          v17 = v7 - v16;
          [v13 interval];
          if (v17 < v18)
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC290];
            if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              [v13 interval];
              v23 = v22;
              v24 = [v13 eventIdentifier];
              *buf = 134218242;
              v32 = v23;
              v33 = 2112;
              v34 = v24;
              _os_log_impl(&dword_24B55B000, v21, OS_LOG_TYPE_DEFAULT, "Less than %f seconds since %@; not showing another Almost There Update", buf, 0x16u);
            }

            v19 = 1;
            goto LABEL_14;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

id FCFireDateForPercentOfDayRule(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userStartOfDay];
    [v3 percentOfDay];
    v8 = v7;
    [v5 projectedDayDuration];
    v10 = [v6 dateByAddingTimeInterval:v8 * v9];
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      FCFireDateForPercentOfDayRule_cold_1(v3, v11);
    }

    v10 = 0;
  }

  return v10;
}

id FCFireDateForTimeOfDayRule(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [a2 userEndOfDay];
    [v3 secondsBeforeEndOfDay];
    v6 = [v4 dateByAddingTimeInterval:-v5];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      FCFireDateForTimeOfDayRule_cold_1(v3, v7);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_24B565B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B566764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B566E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FCFireDateForPercentOfDayRule_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B55B000, a2, OS_LOG_TYPE_ERROR, "Typical day model is missing for percentage of day evaluation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void FCFireDateForTimeOfDayRule_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B55B000, a2, OS_LOG_TYPE_ERROR, "Typical day model is missing for time of day evaluation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}