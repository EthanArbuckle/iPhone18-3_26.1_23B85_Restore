@interface DASActivity
@end

@implementation DASActivity

uint64_t __48___DASActivity_setConstraintsWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if ([v6 isEqualToString:@"MotionState"])
  {
    [*(a1 + 32) setMotionState:xpc_int64_get_value(v5)];
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"MagneticInterferenceSensitivity"])
  {
LABEL_4:
    [*(a1 + 32) setBool:xpc_BOOL_get_value(v5) forUserInfoKey:v6];
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"MinBatteryLevel"])
  {
    value = xpc_int64_get_value(v5);
    if (value <= 0x64)
    {
      v8 = value;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
LABEL_17:
    v13 = v10;
    [v9 setObject:v10 forUserInfoKey:v6];
LABEL_18:

    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"MinDataBudgetPercentage"])
  {
    v11 = xpc_double_get_value(v5);
    if (v11 < 0.0 || v11 > 1.0)
    {
      v11 = 0.0;
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"MailFetch"] || objc_msgSend(v6, "isEqualToString:", @"BypassBatteryAging") || objc_msgSend(v6, "isEqualToString:", @"UserRequestedBackupActivity"))
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"DataBudgetName"])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (!string_ptr)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
    [*(a1 + 32) setClientDataBudgetName:v13];
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"BypassPeakPower"] || objc_msgSend(v6, "isEqualToString:", @"BeforeApplicationLaunch") || objc_msgSend(v6, "isEqualToString:", @"com.apple.das.overrideRateLimiting"))
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"ActivityType"])
  {
    v16 = xpc_string_get_string_ptr(v5);
    if (!v16)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    [*(a1 + 32) setActivityType:v13];
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"Backlogged"])
  {
    [*(a1 + 32) setBacklogged:xpc_BOOL_get_value(v5)];
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"BlockRebootActivitiesForSU"] || objc_msgSend(v6, "isEqualToString:", @"UseStatisticalModelForTriggersRestart"))
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"RemoteDevice"])
  {
    v17 = xpc_string_get_string_ptr(v5);
    if (!v17)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    [*(a1 + 32) setRemoteDevice:v13];
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"RateLimitConfiguration"])
  {
    v18 = xpc_string_get_string_ptr(v5);
    if (!v18)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    [*(a1 + 32) setRateLimitConfigurationName:v13];
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"ServiceName"])
  {
    v19 = xpc_string_get_string_ptr(v5);
    if (v19)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
      [*(a1 + 32) setServiceName:v13];
      goto LABEL_18;
    }
  }

LABEL_19:

  return 1;
}

void __37___DASActivity_ckPushContentMatches___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKeyedSubscript:@"sid"];

      if (v8)
      {
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __37___DASActivity_ckPushContentMatches___block_invoke_2;
        v12[3] = &unk_1E7C8F580;
        v10 = v7;
        v11 = *(a1 + 40);
        v13 = v10;
        v14 = v11;
        v15 = a4;
        [v9 enumerateKeysAndObjectsUsingBlock:v12];
      }
    }
  }
}

uint64_t __37___DASActivity_ckPushContentMatches___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKeyedSubscript:@"sid"];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 objectForKeyedSubscript:@"sid"];
        v10 = [*(a1 + 32) objectForKeyedSubscript:@"sid"];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = 1;
LABEL_8:
          **(a1 + 48) = 1;
          *a4 = 1;
          *(*(*(a1 + 40) + 8) + 24) = v12;
          goto LABEL_9;
        }
      }

      v13 = [v6 objectForKeyedSubscript:@"sid"];

      if (v13)
      {
        v12 = 0;
        goto LABEL_8;
      }
    }

LABEL_9:
  }

  return MEMORY[0x1EEE66BB8]();
}

void __28___DASActivity_policyScores__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  [a3 score];
  v7 = [v5 numberWithDouble:?];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t __52___DASActivity_validClassesForUserInfoSerialization__block_invoke()
{
  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  validClassesForUserInfoSerialization_validClasses = [v15 setWithObjects:{v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __30___DASActivity_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 isEqual:@"progress"])
    {
      v6 = [v5 ns];
      v7 = *(a1 + 32);
      v8 = [v10 dk_dedup];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    else
    {
      v9 = *(a1 + 32);
      v6 = [v10 dk_dedup];
      [v9 setObject:v5 forKeyedSubscript:v6];
    }
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
  }
}

void __35___DASActivity_sharedDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = sharedDateFormatter_formatter;
  sharedDateFormatter_formatter = v0;

  [sharedDateFormatter_formatter setDateStyle:1];
  [sharedDateFormatter_formatter setTimeStyle:2];
  v2 = sharedDateFormatter_formatter;
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];
}

@end