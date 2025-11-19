@interface FCGoalProgressEvaluator
+ (BOOL)_eventDidCrossScheduledThreshold:(id)a3 withModel:(id)a4 evaluationDelegate:(id)a5;
+ (id)_nextFireDateForEvent:(id)a3 model:(id)a4;
+ (id)evaluateEvents:(id)a3 withModel:(id)a4 evaluationDelegate:(id)a5;
+ (id)nextScheduledDatesByEventIdentifiersForEvents:(id)a3 model:(id)a4 evaluationDelegate:(id)a5;
@end

@implementation FCGoalProgressEvaluator

+ (id)nextScheduledDatesByEventIdentifiersForEvents:(id)a3 model:(id)a4 evaluationDelegate:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v22 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 eventIdentifier];
        v19 = [a1 _nextFireDateForEvent:v16 model:v9];
        if (v19)
        {
          [v10 setObject:v19 forKeyedSubscript:v18];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)evaluateEvents:(id)a3 withModel:(id)a4 evaluationDelegate:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ([a1 _eventDidCrossScheduledThreshold:v17 withModel:v9 evaluationDelegate:{v10, v20}] && objc_msgSend(v17, "shouldFireWithTypicalDayModel:evaluationDelegate:", v9, v10))
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_nextFireDateForEvent:(id)a3 model:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 nextFireDateWithModel:v6];
  [v6 projectedDayDuration];
  v9 = v8;
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [v6 startOfToday];
    [v12 timeIntervalSinceReferenceDate];
    if (v11 < v13)
    {

      goto LABEL_5;
    }

    [v7 timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = [v6 endOfToday];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;

    if (v15 > v18)
    {
LABEL_5:
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v6 startOfToday];
        v24 = [v6 endOfToday];
        v31 = 138544130;
        v32 = v22;
        v33 = 2112;
        v34 = v7;
        v35 = 2112;
        v36 = v23;
        v37 = 2112;
        v38 = v24;
        _os_log_error_impl(&dword_24B55B000, v20, OS_LOG_TYPE_ERROR, "Coaching progress reason %{public}@ returned a fire date outside the bounds of the current day. %@ was outside of [%@, %@]", &v31, 0x2Au);

LABEL_10:
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  [v5 minimumDayDuration];
  if (v9 < v25)
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v26;
      [v5 minimumDayDuration];
      v31 = 134218240;
      v32 = v9;
      v33 = 2048;
      v34 = v27;
      _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, "Duration in day too short for event (duration in day: %ld, minimum: %ld)", &v31, 0x16u);
      goto LABEL_10;
    }

LABEL_11:
    v28 = 0;
    goto LABEL_13;
  }

  v28 = v7;
LABEL_13:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (BOOL)_eventDidCrossScheduledThreshold:(id)a3 withModel:(id)a4 evaluationDelegate:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 eventIdentifier];
  v12 = [v9 lastFiredDateForProgressEventIdentifier:v11];
  v13 = [a1 _nextFireDateForEvent:v8 model:v10];
  v14 = [v9 currentDate];
  v15 = [v9 currentCalendar];

  [v10 projectedDayDuration];
  v17 = v16;

  [v14 timeIntervalSinceDate:v13];
  v19 = v18;
  [v14 timeIntervalSinceReferenceDate];
  v21 = v20;
  [v13 timeIntervalSinceReferenceDate];
  v23 = v22;
  if (v12)
  {
    v24 = [v15 isDate:v12 inSameDayAsDate:v14];
  }

  else
  {
    v24 = 0;
  }

  _HKInitializeLogging();
  v25 = MEMORY[0x277CCC290];
  v26 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_INFO))
  {
    v27 = v26;
    v28 = [v8 eventIdentifier];
    *buf = 138544642;
    v41 = v28;
    v42 = 2112;
    *v43 = v12;
    *&v43[8] = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = v14;
    v47 = 2048;
    v48 = v17;
    v49 = 2048;
    v50 = v19;
    _os_log_impl(&dword_24B55B000, v27, OS_LOG_TYPE_INFO, "Evaluating if event %{public}@ crossed the scheduled threshold - lastFired: %@, scheduledFireDate: %@, now: %@, durationOfToday: %lf, intervalBetweenScheduledDateAndNow: %lf", buf, 0x3Eu);
  }

  v29 = v17 * 0.25;
  _HKInitializeLogging();
  v30 = *v25;
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
  {
    v31 = v30;
    v32 = [v8 eventIdentifier];
    *buf = 138544130;
    v41 = v32;
    v42 = 1024;
    *v43 = v21 >= v23;
    v25 = MEMORY[0x277CCC290];
    *&v43[4] = 1024;
    *&v43[6] = v24;
    LOWORD(v44) = 1024;
    *(&v44 + 2) = v19 >= v29;
    _os_log_impl(&dword_24B55B000, v31, OS_LOG_TYPE_INFO, "Evaluating if event %{public}@ crossed the scheduled threshold - scheduledDateInPast: %{BOOL}d, lastFiredDateWasToday: %{BOOL}d, scheduledDateIsTooLongAgoFromNow: %{BOOL}d", buf, 0x1Eu);
  }

  if (v21 < v23 || v13 == 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = (v19 < v29) & ~v24;
  }

  _HKInitializeLogging();
  v35 = *v25;
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
  {
    v36 = v35;
    v37 = [v8 eventIdentifier];
    *buf = 138543618;
    v41 = v37;
    v42 = 1024;
    *v43 = v34;
    _os_log_impl(&dword_24B55B000, v36, OS_LOG_TYPE_INFO, "Event %{public}@ crossed the scheduled threshold result: %{BOOL}d", buf, 0x12u);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v34;
}

@end