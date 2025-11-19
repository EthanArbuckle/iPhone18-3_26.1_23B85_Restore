@interface HDMedicationTimeZoneDetectionOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDMedicationTimeZoneDetectionOperation)init;
- (HDMedicationTimeZoneDetectionOperation)initWithCoder:(id)a3;
- (HDMedicationTimeZoneDetectionOperation)initWithMotive:(unint64_t)a3;
@end

@implementation HDMedicationTimeZoneDetectionOperation

- (HDMedicationTimeZoneDetectionOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationTimeZoneDetectionOperation)initWithMotive:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HDMedicationTimeZoneDetectionOperation;
  result = [(HDMedicationTimeZoneDetectionOperation *)&v5 init];
  if (result)
  {
    result->_motive = a3;
  }

  return result;
}

- (HDMedicationTimeZoneDetectionOperation)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"Motive"];

  return [(HDMedicationTimeZoneDetectionOperation *)self initWithMotive:v4];
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 healthMedicationsProfileExtension];
  v11 = [v10 medicationScheduleManager];
  v12 = [v11 timeZoneManager];

  if ([v12 _isAuthorizedToFireTimeZoneNotificationWithProfile:v8])
  {
    v54 = 0;
    v13 = [HDMedicationScheduleEntity allActiveMedicationSchedulesWithTransaction:v9 error:&v54];
    v14 = v54;
    if (v14)
    {
      _HKInitializeLogging();
      v15 = HKLogMedication();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationTimeZoneDetectionOperation performWithProfile:transaction:error:];
      }

      if (a5)
      {
        v16 = v14;
        v17 = 0;
        *a5 = v14;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      goto LABEL_56;
    }

    if (![v13 count])
    {
      _HKInitializeLogging();
      v25 = HKLogMedication();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = self;
        _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No schedules found, disabling timezone experience", buf, 0xCu);
      }

      v17 = [v12 _updateTimeZoneExperienceAsEnabled:0 transaction:v9 error:a5];
      goto LABEL_56;
    }

    if (self->_motive != 1)
    {
      _HKInitializeLogging();
      v26 = HKLogMedication();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = self;
      }

      v17 = 1;
      goto LABEL_56;
    }

    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = [MEMORY[0x277CBEBB0] localTimeZone];
    v52 = 0;
    v19 = [HDMedicationScheduleEntity allActiveSchedulesCreatedWithinTimeZone:v18 transaction:v9 offsetChange:&v53 error:&v52];
    v20 = v52;
    v50 = v20;
    if (v19 == 1)
    {
      _HKInitializeLogging();
      v27 = HKLogMedication();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = self;
        _os_log_impl(&dword_25181C000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Timezone has changed, but all scheduled medications match were created in the new timezone", buf, 0xCu);
      }

      v51 = 0;
      v28 = [v12 _updateTimeZoneExperienceAsEnabled:0 transaction:v9 error:&v51];
      v23 = v51;
      if ((v28 & 1) == 0)
      {
        _HKInitializeLogging();
        v29 = HKLogMedication();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [HDMedicationTimeZoneDetectionOperation performWithProfile:transaction:error:];
        }
      }

      v17 = [v12 _updateTimeZoneOffsetOffset:0 transaction:v9 error:a5];
      goto LABEL_55;
    }

    if (!v19)
    {
      v21 = v20;
      _HKInitializeLogging();
      v22 = HKLogMedication();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationTimeZoneDetectionOperation performWithProfile:transaction:error:];
      }

      v23 = v21;
      if (v23)
      {
        if (a5)
        {
          v24 = v23;
          v17 = 0;
          *a5 = v23;
LABEL_55:

LABEL_56:
          goto LABEL_57;
        }

        _HKLogDroppedError();
      }

      v17 = 0;
      goto LABEL_55;
    }

    v30 = [v12 _mostRecentTimeZoneOffsetWithProfile:v8];
    v23 = v30;
    if (v53 == 0x7FFFFFFFFFFFFFFFLL || (v31 = [v30 integerValue], v31 == v53))
    {
      v17 = 1;
      goto LABEL_55;
    }

    v49 = v18;
    _HKInitializeLogging();
    v32 = HKLogMedication();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = self;
      _os_log_impl(&dword_25181C000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Timezone has changed with new offset. updating offset", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
    v34 = [v12 _updateTimeZoneOffsetOffset:v33 transaction:v9 error:a5];

    if (v34)
    {
      v18 = v49;
      if (!v23)
      {
        v35 = [v8 healthMedicationsProfileExtension];
        v36 = [v35 medicationUserDefaults];

        v47 = v36;
        v37 = [v36 stringForKey:@"MedicationsTimeZoneLastChangeFromTimeZone"];
        if (v37)
        {
          v46 = v37;
          v38 = [MEMORY[0x277CBEBB0] timeZoneWithName:v37];
          v39 = [v38 secondsFromGMT];
          if (v39 == [v49 secondsFromGMT])
          {
            _HKInitializeLogging();
            v40 = HKLogMedication();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v56 = self;
              _os_log_impl(&dword_25181C000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Timezone change has been detected, but has already been handled using old time zone detection mechanism. Bailing out!", buf, 0xCu);
            }

            v41 = v47;
            [v47 removeObjectForKey:@"MedicationsTimeZoneLastChangeFromTimeZone"];

            v17 = 1;
            v18 = v49;
            goto LABEL_54;
          }

          v37 = v46;
        }

        v18 = v49;
      }

      v17 = 1;
      if ([v12 _updateTimeZoneExperienceAsEnabled:1 transaction:v9 error:a5])
      {
        goto LABEL_55;
      }

      _HKInitializeLogging();
      v48 = HKLogMedication();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v45 = a5;
      v41 = v48;
      [HDMedicationTimeZoneDetectionOperation performWithProfile:v45 transaction:? error:?];
    }

    else
    {
      _HKInitializeLogging();
      v48 = HKLogMedication();
      v18 = v49;
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
LABEL_53:
        v17 = 0;
        v41 = v48;
LABEL_54:

        goto LABEL_55;
      }

      v42 = a5;
      v41 = v48;
      [HDMedicationTimeZoneDetectionOperation performWithProfile:v42 transaction:? error:?];
    }

    v17 = 0;
    goto LABEL_54;
  }

  _HKInitializeLogging();
  v14 = HKLogMedication();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = self;
    _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not authorized to fire timezone notification", buf, 0xCu);
  }

  v17 = 1;
LABEL_57:

  v43 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)performWithProfile:transaction:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Failed to fetch schedules with error: '%{public}@'");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performWithProfile:transaction:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@]: Timezone has changed, but setting experience disabled failed with '%{public}@'");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performWithProfile:transaction:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@]: Timezone has changed, but fetching schedules failed with '%{public}@'");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performWithProfile:(uint64_t)a1 transaction:(uint64_t *)a2 error:.cold.4(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1(&dword_25181C000, v3, v4, "[%{public}@]: Timezone has changed, but we failed to update offset in Key-Value Domain with error: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performWithProfile:(uint64_t)a1 transaction:(uint64_t *)a2 error:.cold.5(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1(&dword_25181C000, v3, v4, "[%{public}@]: Timezone has changed, but we failed to update experience with error: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

@end