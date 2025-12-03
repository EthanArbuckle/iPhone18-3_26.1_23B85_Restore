@interface HKMedicationsNotificationAction
+ (id)rawValueWithIdentifier:(int64_t)identifier;
+ (int64_t)identifierWithRawValue:(id)value;
@end

@implementation HKMedicationsNotificationAction

+ (int64_t)identifierWithRawValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v5 = 4;
  }

  else if ([valueCopy isEqualToString:@"RecordAllMedications"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"SkipAllMedications"])
  {
    v5 = 2;
  }

  else if ([valueCopy isEqualToString:@"SnoozeAllMedications"])
  {
    v5 = 3;
  }

  else if ([valueCopy isEqualToString:@"RecordMedication"])
  {
    v5 = 5;
  }

  else if ([valueCopy isEqualToString:@"SkipMedication"])
  {
    v5 = 6;
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HKMedicationsNotificationAction *)self identifierWithRawValue:valueCopy, v6];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)rawValueWithIdentifier:(int64_t)identifier
{
  v4 = @"RecordAllMedications";
  if (identifier <= 3)
  {
    v5 = @"SkipAllMedications";
    if (identifier == 3)
    {
      v4 = @"SnoozeAllMedications";
    }

    v6 = identifier == 2;
    goto LABEL_9;
  }

  if (identifier != 4)
  {
    v5 = @"RecordMedication";
    if (identifier == 6)
    {
      v4 = @"SkipMedication";
    }

    v6 = identifier == 5;
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