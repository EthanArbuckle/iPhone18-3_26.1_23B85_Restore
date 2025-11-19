@interface HDUnprotectedKeyValueEntity
+ (BOOL)setBadge:(id)a3 forDomain:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (__CFString)_keyForNotificationDomain:(uint64_t)a3 error:;
+ (id)badgeForDomain:(int64_t)a3 profile:(id)a4 error:(id *)a5;
@end

@implementation HDUnprotectedKeyValueEntity

+ (id)badgeForDomain:(int64_t)a3 profile:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(HDUnprotectedKeyValueEntity *)a1 _keyForNotificationDomain:a3 error:a5];
  if (v9)
  {
    v22 = 0;
    v10 = [a1 numberForKey:v9 domain:&stru_283BF39C8 category:2 profile:v8 entity:0 error:&v22];
    v11 = v22;
    v12 = v11;
    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = [MEMORY[0x277CCD068] badgeFromKeyValueRepresentation:v10];
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v20 = v15;
        v21 = NSStringFromHKNotificationDomain();
        *buf = 138412546;
        v24 = v21;
        v25 = 2114;
        v26 = v12;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to get badge for notification domain %@: %{public}@", buf, 0x16u);
      }

      if (a5)
      {
        v17 = v12;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCD068] badgeFromKeyValueRepresentation:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (__CFString)_keyForNotificationDomain:(uint64_t)a3 error:
{
  objc_opt_self();
  result = @"emergency_sos";
  switch(a2)
  {
    case 0:
      return result;
    case 3:
      result = @"health_records_data";
      break;
    case 4:
      result = @"heart_rhythm_phone_only";
      break;
    case 5:
      result = @"menstrual_cycles";
      break;
    case 6:
      result = @"sleep";
      break;
    case 7:
      result = @"walking_steadiness";
      break;
    case 8:
      result = @"afib_burden";
      break;
    case 9:
      v6 = [MEMORY[0x277CCDD30] sharedBehavior];
      v7 = [v6 features];
      v8 = [v7 hermit];

      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }

      result = @"hypertension_notifications";
      break;
    case 10:
      result = @"summaries";
      break;
    case 11:
      result = @"profiles_notifications";
      break;
    case 12:
      result = @"medications";
      break;
    case 13:
      result = @"mental_health";
      break;
    case 14:
      result = @"oxygen_saturation_phone_only";
      break;
    case 15:
      result = @"balance";
      break;
    case 16:
      v9 = [MEMORY[0x277CCDD30] sharedBehavior];
      v10 = [v9 features];
      v11 = [v10 chutney];

      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }

      result = @"blood_pressure_journal_notifications";
      break;
    default:
LABEL_14:
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Invalid notification domain %zd", a2}];
      result = 0;
      break;
  }

  return result;
}

+ (BOOL)setBadge:(id)a3 forDomain:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HDUnprotectedKeyValueEntity *)a1 _keyForNotificationDomain:a4 error:a6];
  if (v12)
  {
    v13 = [v10 keyValueRepresentation];
    v14 = [a1 setNumber:v13 forKey:v12 domain:&stru_283BF39C8 category:2 profile:v11 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end