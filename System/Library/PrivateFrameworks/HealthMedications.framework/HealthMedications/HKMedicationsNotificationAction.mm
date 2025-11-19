@interface HKMedicationsNotificationAction
+ (id)rawValueWithIdentifier:(int64_t)a3;
+ (int64_t)identifierWithRawValue:(id)a3;
@end

@implementation HKMedicationsNotificationAction

+ (int64_t)identifierWithRawValue:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"RecordAllMedications"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"SkipAllMedications"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"SnoozeAllMedications"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"RecordMedication"])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:@"SkipMedication"])
  {
    v5 = 6;
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HKMedicationsNotificationAction *)a1 identifierWithRawValue:v4, v6];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)rawValueWithIdentifier:(int64_t)a3
{
  v4 = @"RecordAllMedications";
  if (a3 <= 3)
  {
    v5 = @"SkipAllMedications";
    if (a3 == 3)
    {
      v4 = @"SnoozeAllMedications";
    }

    v6 = a3 == 2;
    goto LABEL_9;
  }

  if (a3 != 4)
  {
    v5 = @"RecordMedication";
    if (a3 == 6)
    {
      v4 = @"SkipMedication";
    }

    v6 = a3 == 5;
LABEL_9:
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    return v7;
  }

  v7 = *MEMORY[0x277CE20E8];

  return v7;
}

+ (void)identifierWithRawValue:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2517E7000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot map unhandled raw value: %{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end