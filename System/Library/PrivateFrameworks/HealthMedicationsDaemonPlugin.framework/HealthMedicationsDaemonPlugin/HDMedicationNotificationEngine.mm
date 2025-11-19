@interface HDMedicationNotificationEngine
+ (BOOL)_greaterThanOrEqualNextScheduledDate:(void *)a3 endDate:(void *)a4 calendar:;
+ (BOOL)_isLastScheduledDoseforScheduledDate:(void *)a3 schedule:(void *)a4 startGenerationDate:(void *)a5 calendar:(int)a6 cycleIntervalIndex:(void *)a7 interval:;
+ (id)_calculateNextGenerationDateFromGenerationDate:(void *)a3 calendar:;
+ (id)_generateForSchedule:(uint64_t)a1 configuration:(void *)a2 error:(void *)a3;
+ (id)_generateScheduleItemsAtDate:(uint64_t)a1 withMultiphasicSchedule:(void *)a2 calendar:(void *)a3 startGenerationDate:(void *)a4;
+ (id)_generateScheduleItemsAtDate:(void *)a3 withSchedule:(void *)a4 startGenerationDate:(void *)a5 calendar:;
+ (id)_getNextDateFromDate:(int)a3 daysInFuture:(void *)a4 calendar:;
+ (id)_getStartGenerationDateForSchedule:(uint64_t)a1 configuration:(void *)a2 calendar:(void *)a3;
+ (id)_makeScheduleItemAtDate:(void *)a3 withMonophasicInterval:(void *)a4 calendar:(void *)a5 schedule:;
+ (id)_makeScheduleItemAtDate:(void *)a3 withMonophasicInterval:(void *)a4 calendar:(void *)a5 schedule:(int)a6 cyclicIntervalIndex:;
+ (id)_timeBatchItems:(uint64_t)a1;
+ (id)generateForSchedules:(id)a3 configuration:(id)a4 error:(id *)a5;
+ (uint64_t)_calculateTotalDaysForSchedule:(void *)a3 configuration:(void *)a4 calendar:(void *)a5 startGenerationDate:;
+ (uint64_t)_isLastScheduledTimeForDay:(void *)a3 schedule:(void *)a4 interval:(void *)a5 calendar:;
+ (uint64_t)_optionForWeekday:(uint64_t)a1;
+ (uint64_t)_validateConfigurationForCyclicSchedule:(int)a3 cycleIntervalIndex:;
+ (unint64_t)_indexForGenerationDate:(void *)a3 schedule:(void *)a4 calendar:;
+ (unint64_t)_indexThatAddsPastTotalDays:(void *)a3 fromIntervalLengths:;
+ (unint64_t)_indexThatDoesNotAddPastTotalDays:(void *)a3 fromIntervalLengths:;
- (HDMedicationNotificationEngine)init;
@end

@implementation HDMedicationNotificationEngine

- (HDMedicationNotificationEngine)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)generateForSchedules:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [HDMedicationNotificationEngine _generateForSchedule:a1 configuration:*(*(&v24 + 1) + 8 * i) error:v8];
        [v9 addObjectsFromArray:{v15, v24}];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v12);
  }

  v16 = [(HDMedicationNotificationEngine *)a1 _timeBatchItems:v9];
  _HKInitializeLogging();
  v17 = HKLogMedication();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    v19 = HKSensitiveLogItem();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v21 = HKSensitiveLogItem();
    *buf = 138544386;
    v29 = a1;
    v30 = 2114;
    v31 = v18;
    v32 = 2114;
    v33 = v19;
    v34 = 2114;
    v35 = v20;
    v36 = 2114;
    v37 = v21;
    _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Generated %{public}@ time batched schedule items: %{public}@, for %{public}@ schedules: %{public}@", buf, 0x34u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_generateForSchedule:(uint64_t)a1 configuration:(void *)a2 error:(void *)a3
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 calendar];
  v8 = [v4 createdUTCOffset];
  [v7 setTimeZone:v8];

  v9 = [HDMedicationNotificationEngine _getStartGenerationDateForSchedule:v4 configuration:v5 calendar:?];
  v10 = [HDMedicationNotificationEngine _calculateTotalDaysForSchedule:v4 configuration:v5 calendar:v7 startGenerationDate:v9];
  v11 = v9;
  v12 = v11;
  v13 = v11;
  if (v10 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [HDMedicationNotificationEngine _generateScheduleItemsAtDate:v14 withSchedule:v4 startGenerationDate:v12 calendar:v7];
      [v6 addObjectsFromArray:v16];

      v13 = [HDMedicationNotificationEngine _calculateNextGenerationDateFromGenerationDate:v14 calendar:v7];

      objc_autoreleasePoolPop(v15);
      v14 = v13;
      --v10;
    }

    while (v10);
  }

  return v6;
}

+ (id)_timeBatchItems:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v3 indexOfObject:v8];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 addObject:v8];
        }

        else
        {
          v10 = v9;
          v11 = [v3 objectAtIndexedSubscript:v9];
          v12 = [v11 doses];
          v13 = [v12 mutableCopy];

          v14 = [v8 doses];
          [v13 addObjectsFromArray:v14];

          v15 = objc_alloc(MEMORY[0x277D11588]);
          v16 = [v11 scheduledDateTime];
          v17 = [v15 initWithScheduledDateTime:v16 notificationSent:objc_msgSend(v11 doses:{"notificationSent"), v13}];
          [v3 setObject:v17 atIndexedSubscript:v10];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = [v3 array];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_getStartGenerationDateForSchedule:(uint64_t)a1 configuration:(void *)a2 calendar:(void *)a3
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v4 startGenerationDate];

  v7 = [v5 startDateTime];

  if ([v7 hk_isAfterOrEqualToDate:v6])
  {
    v8 = v7;

    v6 = v8;
  }

  return v6;
}

+ (uint64_t)_calculateTotalDaysForSchedule:(void *)a3 configuration:(void *)a4 calendar:(void *)a5 startGenerationDate:
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = a3;
  objc_opt_self();
  v12 = [v11 endGenerationDate];

  v13 = [v9 startOfDayForDate:v10];

  v14 = [v8 endDateTime];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v15 setDay:1];
    v16 = [v8 endDateTime];
    v17 = [v9 dateByAddingComponents:v15 toDate:v16 options:2];
    v18 = [v9 startOfDayForDate:v17];

    if ([v12 hk_isAfterOrEqualToDate:v18])
    {
      v19 = v18;

      v12 = v19;
    }
  }

  v20 = [v9 components:16 fromDate:v13 toDate:v12 options:2];
  v21 = [v20 day];

  return v21;
}

+ (id)_generateScheduleItemsAtDate:(void *)a3 withSchedule:(void *)a4 startGenerationDate:(void *)a5 calendar:
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_self();
  v53 = v13;
  v16 = [v13 components:636 fromDate:v8];
  v17 = [v16 weekday];

  v18 = [v12 timeIntervals];
  v19 = [v12 frequencyType];
  v20 = v19;
  v52 = v15;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v50 = v14;
      v51 = v18;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v35 = v18;
      v36 = [v35 countByEnumeratingWithState:&v54 objects:v72 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v55;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v8 withMonophasicInterval:*(*(&v54 + 1) + 8 * i) calendar:v53 schedule:v12];
            [v15 addObject:v40];
          }

          v37 = [v35 countByEnumeratingWithState:&v54 objects:v72 count:16];
        }

        while (v37);
      }

LABEL_28:
      v14 = v50;
      v18 = v51;
      goto LABEL_29;
    }

    if (v19 != 4)
    {
      if (v19 != 3)
      {
        goto LABEL_29;
      }

      v49 = v10;
      v50 = v14;
      v21 = v12;
      v22 = v8;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v51 = v18;
      v23 = v18;
      v24 = [v23 countByEnumeratingWithState:&v58 objects:v73 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v59;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v59 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v58 + 1) + 8 * j);
            v29 = [v28 daysOfWeek];
            if (([HDMedicationNotificationEngine _optionForWeekday:v17]& v29) != 0)
            {
              v30 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v22 withMonophasicInterval:v28 calendar:v53 schedule:v21];
              [v52 addObject:v30];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v58 objects:v73 count:16];
        }

        while (v25);
      }

      v8 = v22;
      v12 = v21;
      v10 = v49;
      goto LABEL_28;
    }

LABEL_19:
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:sel__generateScheduleItemsAtDate_withSchedule_startGenerationDate_calendar_ object:v14 file:@"HDMedicationNotificationEngine.m" lineNumber:217 description:{@"frequency type %ld is not a supported schedule type.", v20}];

    goto LABEL_29;
  }

  if (!v19)
  {
    goto LABEL_19;
  }

  if (v19 == 1)
  {
    v31 = [v12 timeIntervals];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [HDMedicationNotificationEngine _generateScheduleItemsAtDate:v8 withMultiphasicSchedule:v12 calendar:v53 startGenerationDate:?];
      [v52 addObjectsFromArray:v33];
    }
  }

LABEL_29:
  _HKInitializeLogging();
  v41 = HKLogMedication();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);

  if (v42)
  {
    v43 = HKLogMedication();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
      v47 = HKSensitiveLogItem();
      v48 = HKSensitiveLogItem();
      *buf = 138544386;
      v63 = v14;
      v64 = 2114;
      v65 = v46;
      v66 = 2114;
      v67 = v47;
      v68 = 2114;
      v69 = v48;
      v70 = 2114;
      v71 = v8;
      _os_log_debug_impl(&dword_25181C000, v43, OS_LOG_TYPE_DEBUG, "[%{public}@] Generated %{public}@ schedule items: %{public}@, for schedule: %{public}@, at date: %{public}@", buf, 0x34u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)_calculateNextGenerationDateFromGenerationDate:(void *)a3 calendar:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setDay:1];
  v7 = [v4 dateByAddingComponents:v6 toDate:v5 options:2];

  return v7;
}

+ (uint64_t)_optionForWeekday:(uint64_t)a1
{
  objc_opt_self();
  if ((a2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_251879578[a2 - 1];
  }
}

+ (id)_makeScheduleItemAtDate:(void *)a3 withMonophasicInterval:(void *)a4 calendar:(void *)a5 schedule:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [(HDMedicationNotificationEngine *)v12 _makeScheduleItemAtDate:v11 withMonophasicInterval:v10 calendar:v9 schedule:v8 cyclicIntervalIndex:-1];

  return v13;
}

+ (id)_generateScheduleItemsAtDate:(uint64_t)a1 withMultiphasicSchedule:(void *)a2 calendar:(void *)a3 startGenerationDate:(void *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v30 = v8;
  v31 = v6;
  v10 = [(HDMedicationNotificationEngine *)v9 _indexForGenerationDate:v6 schedule:v7 calendar:v8];
  v11 = v7;
  v12 = [v7 timeIntervals];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __116__HDMedicationNotificationEngine__generateScheduleItemsAtDate_withMultiphasicSchedule_calendar_startGenerationDate___block_invoke;
  v36[3] = &__block_descriptor_40_e76___HKMedicationScheduleIntervalData_16__0__HKMedicationScheduleIntervalData_8l;
  v36[4] = v10;
  v13 = [v12 hk_map:v36];

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [v20 dose];
        if (v21)
        {
          v22 = v21;
          v23 = [v20 dose];
          [v23 doubleValue];
          v25 = fabs(v24);

          if (v25 < 2.22044605e-16)
          {
            continue;
          }
        }

        v26 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v31 withMonophasicInterval:v20 calendar:v30 schedule:v11 cyclicIntervalIndex:v10];
        [v14 addObject:v26];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v17);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (BOOL)_isLastScheduledDoseforScheduledDate:(void *)a3 schedule:(void *)a4 startGenerationDate:(void *)a5 calendar:(int)a6 cycleIntervalIndex:(void *)a7 interval:
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = objc_opt_self();
  v18 = [v13 endDateTime];
  v19 = v12;
  if (!v18)
  {
    goto LABEL_37;
  }

  v20 = [v16 dose];

  if (!v20 || ![(HDMedicationNotificationEngine *)v17 _isLastScheduledTimeForDay:v19 schedule:v13 interval:v16 calendar:v15])
  {
    goto LABEL_37;
  }

  v21 = [v13 frequencyType];
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      v36 = [v13 timeIntervals];
      v37 = [v36 count];

      if (v37)
      {
        v54 = v14;
        v55 = v17;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = [v13 timeIntervals];
        v39 = [v38 countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = 0;
          v42 = *v57;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v57 != v42)
              {
                objc_enumerationMutation(v38);
              }

              v41 |= [*(*(&v56 + 1) + 8 * i) daysOfWeek];
            }

            v40 = [v38 countByEnumeratingWithState:&v56 objects:v60 count:16];
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        v48 = 1;
        v17 = v55;
        while (1)
        {
          v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:v48 calendar:v15];
          objc_opt_self();
          v49 = [v15 components:636 fromDate:v22];
          v50 = [v49 weekday];

          if (([HDMedicationNotificationEngine _optionForWeekday:v50]& v41) != 0)
          {
            break;
          }

          ++v48;
          v17 = v55;
          if (v48 == 8)
          {
            v22 = v19;
            v14 = v54;
            goto LABEL_47;
          }
        }

        v14 = v54;
        v17 = v55;
        goto LABEL_47;
      }

      _HKInitializeLogging();
      v44 = HKLogMedication();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[HDMedicationNotificationEngine _isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:];
      }

LABEL_36:

      goto LABEL_37;
    }

    v22 = v19;
    if (v21 != 4)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v21 != 1)
    {
      v22 = v19;
      if (v21 != 2)
      {
LABEL_47:
        v45 = [(HDMedicationNotificationEngine *)v17 _greaterThanOrEqualNextScheduledDate:v22 endDate:v18 calendar:v15];
        goto LABEL_38;
      }

      v23 = [v13 timeIntervals];
      v24 = [v23 count];

      if (v24)
      {
        v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:1 calendar:v15];

        goto LABEL_47;
      }

      _HKInitializeLogging();
      v44 = HKLogMedication();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[HDMedicationNotificationEngine _isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:];
      }

      goto LABEL_36;
    }

    if ([(HDMedicationNotificationEngine *)v17 _validateConfigurationForCyclicSchedule:v13 cycleIntervalIndex:a6])
    {
      v25 = 1;
      v26 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:1 calendar:v15];
      if ([(HDMedicationNotificationEngine *)v17 _indexForGenerationDate:v26 schedule:v13 calendar:v15]!= a6)
      {
        v51 = v16;
        v52 = v26;
        v53 = v14;
        v27 = 1;
        while (1)
        {
          v28 = [v13 timeIntervals];
          v29 = [v28 count] - 1;

          v30 = [v13 timeIntervals];
          v31 = v30;
          v32 = v29 == a6 ? 0 : a6 + 1;
          v33 = [v30 objectAtIndexedSubscript:v32];

          v34 = [v33 dose];

          if (v34)
          {
            break;
          }

          if (v29 == a6)
          {
            a6 = 0;
          }

          else
          {
            ++a6;
          }

          v35 = [v33 cycleIntervalDays];
          v27 += [v35 intValue];
        }

        v14 = v53;
        v25 = v27;
        v16 = v51;
        v26 = v52;
      }

      v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:v25 calendar:v15];

      goto LABEL_47;
    }
  }

LABEL_37:
  v45 = 0;
  v22 = v19;
LABEL_38:

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

+ (uint64_t)_isLastScheduledTimeForDay:(void *)a3 schedule:(void *)a4 interval:(void *)a5 calendar:
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  v44 = [v11 components:224 fromDate:v8];
  [v44 setCalendar:v11];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = [v9 timeIntervals];
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v13)
  {
    v38 = 1;
    goto LABEL_21;
  }

  v41 = v11;
  v42 = v9;
  v43 = v8;
  v14 = *v48;
  v15 = v13;
  do
  {
    v16 = 0;
    v45 = v15;
    do
    {
      if (*v48 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v47 + 1) + 8 * v16);
      v18 = [v10 cycleIntervalDays];
      v19 = [v17 cycleIntervalDays];
      if (v18 != v19)
      {
        goto LABEL_9;
      }

      v20 = [v10 cycleIndex];
      v21 = [v17 cycleIndex];
      v22 = v21;
      if (v20 != v21)
      {

LABEL_9:
        goto LABEL_10;
      }

      v46 = [v10 daysOfWeek];
      v23 = v10;
      v24 = v14;
      v25 = v12;
      v26 = [v17 daysOfWeek];

      v27 = v46 == v26;
      v12 = v25;
      v14 = v24;
      v10 = v23;
      v15 = v45;
      if (v27)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v29 = [v17 startTimeComponent];
        v30 = [v29 calendar];
        [v28 setCalendar:v30];

        v31 = [v17 startTimeComponent];
        [v28 setHour:{objc_msgSend(v31, "hour")}];

        v32 = [v17 startTimeComponent];
        [v28 setMinute:{objc_msgSend(v32, "minute")}];

        v33 = [v17 startTimeComponent];
        [v28 setSecond:{objc_msgSend(v33, "second")}];

        v34 = [v44 date];
        v35 = [v28 date];
        v36 = [v34 compare:v35];

        v27 = v36 == -1;
        v15 = v45;
        if (v27)
        {
          v38 = 0;
          goto LABEL_19;
        }
      }

LABEL_10:
      ++v16;
    }

    while (v15 != v16);
    v37 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
    v15 = v37;
  }

  while (v37);
  v38 = 1;
LABEL_19:
  v9 = v42;
  v8 = v43;
  v11 = v41;
LABEL_21:

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)_getNextDateFromDate:(int)a3 daysInFuture:(void *)a4 calendar:
{
  v6 = a4;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:a3];
  v9 = [v6 dateByAddingComponents:v8 toDate:v7 options:0];

  return v9;
}

+ (uint64_t)_validateConfigurationForCyclicSchedule:(int)a3 cycleIntervalIndex:
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  v5 = [v4 timeIntervals];
  v6 = [v5 count];

  if (a3 < 0 || v6 <= 1)
  {
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HDMedicationNotificationEngine _validateConfigurationForCyclicSchedule:cycleIntervalIndex:];
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v4 timeIntervals];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) dose];

          if (v12)
          {
            v13 = 1;
            goto LABEL_17;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HDMedicationNotificationEngine _validateConfigurationForCyclicSchedule:cycleIntervalIndex:];
    }
  }

  v13 = 0;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (unint64_t)_indexForGenerationDate:(void *)a3 schedule:(void *)a4 calendar:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0x8000000000000000;
  v10 = [v7 timeIntervals];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__HDMedicationNotificationEngine__indexForGenerationDate_schedule_calendar___block_invoke;
  v25[3] = &unk_2796CE460;
  v25[4] = v26;
  v11 = [v10 hk_map:v25];

  v12 = [v7 startDateTime];
  v13 = [v8 components:124 fromDate:v12];

  v14 = [v7 cycleStartDate];
  if (v14)
  {
    v15 = [v7 cycleStartDate];
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v8 dateFromComponents:v16];
  v18 = [v8 components:16 fromDate:v17 toDate:v6 options:2];
  v19 = [v18 day];

  if (v19 < 0)
  {
    v21 = [v11 hk_reversed];
    v22 = [(HDMedicationNotificationEngine *)v9 _indexThatDoesNotAddPastTotalDays:v21 fromIntervalLengths:?];
    v23 = [v11 count];
    objc_opt_self();
    v20 = v23 + ~v22;
  }

  else
  {
    v20 = [(HDMedicationNotificationEngine *)v9 _indexThatAddsPastTotalDays:v19 fromIntervalLengths:v11];
  }

  _Block_object_dispose(v26, 8);
  return v20;
}

+ (BOOL)_greaterThanOrEqualNextScheduledDate:(void *)a3 endDate:(void *)a4 calendar:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [v6 compareDate:v8 toDate:v7 toUnitGranularity:16];

  return v9 == 1;
}

+ (id)_makeScheduleItemAtDate:(void *)a3 withMonophasicInterval:(void *)a4 calendar:(void *)a5 schedule:(int)a6 cyclicIntervalIndex:
{
  v29[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = [v12 startTimeComponent];
  v16 = [v11 components:28 fromDate:v13];
  [v16 setHour:{objc_msgSend(v15, "hour")}];
  [v16 setMinute:{objc_msgSend(v15, "minute")}];
  [v16 setSecond:{objc_msgSend(v15, "second")}];
  [v16 setCalendar:v11];
  v17 = [v16 date];
  v18 = [(HDMedicationNotificationEngine *)v14 _isLastScheduledDoseforScheduledDate:v17 schedule:v10 startGenerationDate:v13 calendar:v11 cycleIntervalIndex:a6 interval:v12];

  v19 = objc_alloc(MEMORY[0x277D11590]);
  v20 = [v10 UUID];
  v21 = [v12 dose];

  v22 = [v10 medicationIdentifier];

  v23 = [v19 initWithScheduleUUID:v20 dose:v21 medicationIdentifier:v22 isLastScheduledDose:v18];
  v24 = objc_alloc(MEMORY[0x277D11588]);
  v29[0] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = [v24 initWithScheduledDateTime:v17 notificationSent:0 doses:v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __116__HDMedicationNotificationEngine__generateScheduleItemsAtDate_withMultiphasicSchedule_calendar_startGenerationDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cycleIndex];
  v5 = v4;
  if (v4 && [v4 integerValue] == *(a1 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __76__HDMedicationNotificationEngine__indexForGenerationDate_schedule_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cycleIndex];
  v5 = v4;
  if (v4 && [v4 integerValue] == *(*(*(a1 + 32) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 integerValue];
    v6 = [v3 cycleIntervalDays];
  }

  return v6;
}

+ (unint64_t)_indexThatDoesNotAddPastTotalDays:(void *)a3 fromIntervalLengths:
{
  v4 = a3;
  objc_opt_self();
  if (a2 < 1)
  {
    v6 = -1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v6 = (v6 + 1) % [v4 count];
      v7 = [v4 objectAtIndexedSubscript:v6];
      v5 += [v7 integerValue];
    }

    while (v5 < a2);
  }

  return v6;
}

+ (unint64_t)_indexThatAddsPastTotalDays:(void *)a3 fromIntervalLengths:
{
  v4 = a3;
  objc_opt_self();
  if (a2 < 0)
  {
    v6 = -1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v6 = (v6 + 1) % [v4 count];
      v7 = [v4 objectAtIndexedSubscript:v6];
      v5 += [v7 integerValue];
    }

    while (v5 <= a2);
  }

  return v6;
}

+ (void)_isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&dword_25181C000, v0, v1, "[%{public}@] Error in _isLastScheduledDoseforScheduledDate: Day of Week schedule has no timeInterval objects.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&dword_25181C000, v0, v1, "[%{public}@] Error in _isLastScheduledDoseforScheduledDate: Daily schedule has no timeInterval objects.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validateConfigurationForCyclicSchedule:cycleIntervalIndex:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&dword_25181C000, v0, v1, "[%{public}@] Error in _isLastScheduledDoseforScheduledDate: Cyclic schedule has no active intervals.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validateConfigurationForCyclicSchedule:cycleIntervalIndex:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&dword_25181C000, v0, v1, "[%{public}@] Error in _isLastScheduledDoseforScheduledDate: Cyclic schedule has less than 2 intervals, expected at least 2.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end