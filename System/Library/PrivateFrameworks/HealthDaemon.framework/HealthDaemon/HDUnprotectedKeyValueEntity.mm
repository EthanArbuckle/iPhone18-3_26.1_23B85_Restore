@interface HDUnprotectedKeyValueEntity
+ (BOOL)setBadge:(id)badge forDomain:(int64_t)domain profile:(id)profile error:(id *)error;
+ (__CFString)_keyForNotificationDomain:(uint64_t)domain error:;
+ (id)badgeForDomain:(int64_t)domain profile:(id)profile error:(id *)error;
@end

@implementation HDUnprotectedKeyValueEntity

+ (id)badgeForDomain:(int64_t)domain profile:(id)profile error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v9 = [(HDUnprotectedKeyValueEntity *)self _keyForNotificationDomain:domain error:error];
  if (v9)
  {
    v22 = 0;
    v10 = [self numberForKey:v9 domain:&stru_283BF39C8 category:2 profile:profileCopy entity:0 error:&v22];
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

      if (error)
      {
        v17 = v12;
        v14 = 0;
        *error = v12;
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

+ (__CFString)_keyForNotificationDomain:(uint64_t)domain error:
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
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      features = [mEMORY[0x277CCDD30] features];
      hermit = [features hermit];

      if ((hermit & 1) == 0)
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
      mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
      features2 = [mEMORY[0x277CCDD30]2 features];
      chutney = [features2 chutney];

      if ((chutney & 1) == 0)
      {
        goto LABEL_14;
      }

      result = @"blood_pressure_journal_notifications";
      break;
    default:
LABEL_14:
      [MEMORY[0x277CCA9B8] hk_assignError:domain code:3 format:{@"Invalid notification domain %zd", a2}];
      result = 0;
      break;
  }

  return result;
}

+ (BOOL)setBadge:(id)badge forDomain:(int64_t)domain profile:(id)profile error:(id *)error
{
  badgeCopy = badge;
  profileCopy = profile;
  v12 = [(HDUnprotectedKeyValueEntity *)self _keyForNotificationDomain:domain error:error];
  if (v12)
  {
    keyValueRepresentation = [badgeCopy keyValueRepresentation];
    v14 = [self setNumber:keyValueRepresentation forKey:v12 domain:&stru_283BF39C8 category:2 profile:profileCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end