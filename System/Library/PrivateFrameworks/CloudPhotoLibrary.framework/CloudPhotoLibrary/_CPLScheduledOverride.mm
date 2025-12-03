@interface _CPLScheduledOverride
+ (BOOL)isBudgetTypeSupportedForProgressiveOverriding:(unint64_t)overriding withReason:(unint64_t)reason;
+ (double)nextTimeIntervalForOverridingBudget:(unint64_t)budget withReason:(unint64_t)reason;
+ (double)nextTimeIntervalToUseGivenCurrent:(double)current expiryDate:(id)date;
+ (id)_expirationDateStorageKeyForBudget:(unint64_t)budget;
+ (id)budgetOverrideReasonStorageKeyForBudget:(unint64_t)budget;
+ (id)currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:(unint64_t)budget;
+ (id)currentBudgetOverrideTimeIntervalStorageKeyForBudget:(unint64_t)budget;
+ (unint64_t)_systemBudgetForBudgetKey:(id)key;
- (BOOL)scheduleEndFromPersistedOverride;
- (BOOL)scheduleEndOfOverride;
- (NSString)status;
- (_CPLScheduledOverride)initWithBudget:(unint64_t)budget withReason:(unint64_t)reason queue:(id)queue;
- (_CPLScheduledOverrideDelegate)delegate;
- (void)_scheduleEndWithTimeInterval:(double)interval;
- (void)cancel;
- (void)resetHeuristics;
@end

@implementation _CPLScheduledOverride

- (_CPLScheduledOverrideDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)status
{
  if (!self->_endDate)
  {
    v6 = @"ending very soon";
    goto LABEL_10;
  }

  date = [MEMORY[0x1E695DF00] date];
  [(NSDate *)self->_endDate timeIntervalSinceDate:date];
  if (v4 <= 1.0)
  {
    if (v4 >= -1.0)
    {
      v6 = @"ending very soon";
      goto LABEL_9;
    }

    v5 = @"should have ended %@";
  }

  else
  {
    v5 = @"ending %@";
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [CPLDateFormatter stringFromDateAgo:self->_endDate now:date];
  v6 = [v7 initWithFormat:v5, v8];

LABEL_9:
LABEL_10:

  return v6;
}

- (void)cancel
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_expirationDateStorageKey)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:self->_expirationDateStorageKey];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:self->_overrideReasonKey];

    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v6 = self->_timer;
      self->_timer = 0;
    }
  }
}

- (void)resetHeuristics
{
  if (self->_expirationDateStorageKey)
  {
    v3 = [objc_opt_class() currentBudgetOverrideTimeIntervalStorageKeyForBudget:self->_budget];
    CFPreferencesSetAppValue(v3, 0, @"com.apple.mobileslideshow");
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");

    v4 = [objc_opt_class() currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:self->_budget];
    CFPreferencesSetAppValue(v4, 0, @"com.apple.mobileslideshow");
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  }
}

- (BOOL)scheduleEndOfOverride
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  expirationDateStorageKey = self->_expirationDateStorageKey;
  if (expirationDateStorageKey)
  {
    if (self->_endDate)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = NSStringFromSelector(a2);
          v26 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
          *buf = 138412546;
          v32 = *&v25;
          v33 = 2112;
          v34 = v26;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "%@ called to many times for %@", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSystemMonitor.m"];
      v29 = NSStringFromSelector(a2);
      v30 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
      [currentHandler handleFailureInMethod:a2 object:self file:v28 lineNumber:1274 description:{@"%@ called to many times for %@", v29, v30}];

      abort();
    }

    [objc_opt_class() nextTimeIntervalForOverridingBudget:self->_budget withReason:self->_reason];
    if (v5 <= 0.0)
    {
      v6 = 3600.0;
    }

    else
    {
      v6 = v5;
    }

    v7 = 86400.0;
    if (v6 <= 86400.0)
    {
      v7 = v6;
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v32 = v6;
        v33 = 2048;
        v34 = 0x40F5180000000000;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Override duration is too long (%.0fs) - will cap at %.0fs", buf, 0x16u);
      }
    }

    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v7];
    endDate = self->_endDate;
    self->_endDate = v9;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:self->_endDate forKey:self->_expirationDateStorageKey];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v13 = standardUserDefaults2;
    v14 = self->_reason - 1;
    if (v14 > 3)
    {
      v15 = @"forced by user";
    }

    else
    {
      v15 = off_1E861FD50[v14];
    }

    [standardUserDefaults2 setObject:v15 forKey:self->_overrideReasonKey];

    if ([objc_opt_class() isBudgetTypeSupportedForProgressiveOverriding:self->_budget withReason:self->_reason])
    {
      v16 = [objc_opt_class() currentBudgetOverrideTimeIntervalStorageKeyForBudget:self->_budget];
      CFPreferencesSetAppValue(v16, 0, @"com.apple.mobileslideshow");
      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      CFPreferencesSetAppValue(v16, v17, @"com.apple.mobileslideshow");

      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
      date = [MEMORY[0x1E695DF00] date];
      v19 = [date dateByAddingTimeInterval:259200.0];

      v20 = [objc_opt_class() currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:self->_budget];
      v21 = v19;
      CFPreferencesSetAppValue(v20, 0, @"com.apple.mobileslideshow");
      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
      CFPreferencesSetAppValue(v20, v21, @"com.apple.mobileslideshow");

      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    }

    [(_CPLScheduledOverride *)self _scheduleEndWithTimeInterval:v7];
  }

  result = expirationDateStorageKey != 0;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)scheduleEndFromPersistedOverride
{
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_expirationDateStorageKey)
  {
    if (self->_endDate)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = NSStringFromSelector(a2);
          v30 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
          *buf = 138412546;
          v36 = v29;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "%@ called to many times for %@", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSystemMonitor.m"];
      v33 = NSStringFromSelector(a2);
      v34 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
      [currentHandler handleFailureInMethod:a2 object:self file:v32 lineNumber:1225 description:{@"%@ called to many times for %@", v33, v34}];

      abort();
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:self->_expirationDateStorageKey];
    endDate = self->_endDate;
    self->_endDate = v5;

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults2 objectForKey:self->_overrideReasonKey];

    if (self->_endDate && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLSystemMonitorOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          expirationDateStorageKey = self->_expirationDateStorageKey;
          v14 = self->_endDate;
          *buf = 138543874;
          v36 = expirationDateStorageKey;
          v37 = 2112;
          v38 = v14;
          v39 = 2114;
          v40 = objc_opt_class();
          v15 = v40;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Incorrect value for %{public}@: %@ (%{public}@)", buf, 0x20u);
        }
      }

      v16 = self->_endDate;
      self->_endDate = 0;
    }

    else if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_endDate)
        {
          v9 = self->_reason - 1;
          v10 = v9 > 3 ? @"forced by user" : off_1E861FD50[v9];
          if ([(__CFString *)v10 isEqualToString:v8])
          {
            [(NSDate *)self->_endDate timeIntervalSinceNow];
            if (v20 <= 0.0)
            {
              standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
              [standardUserDefaults3 removeObjectForKey:self->_expirationDateStorageKey];

              standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
              [standardUserDefaults4 removeObjectForKey:self->_overrideReasonKey];
            }

            else
            {
              v21 = v20;
              v22 = 86400.0;
              if (v20 <= 86400.0)
              {
                v22 = v20;
              }

              else if ((_CPLSilentLogging & 1) == 0)
              {
                v23 = __CPLSystemMonitorOSLogDomain();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v36 = *&v21;
                  v37 = 2048;
                  v38 = 0x40F5180000000000;
                  _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Override duration is too long (%.0fs) - will cap at %.0fs", buf, 0x16u);
                }
              }

              [(_CPLScheduledOverride *)self _scheduleEndWithTimeInterval:v22];
            }
          }
        }
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLSystemMonitorOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            overrideReasonKey = self->_overrideReasonKey;
            *buf = 138543874;
            v36 = overrideReasonKey;
            v37 = 2112;
            v38 = v8;
            v39 = 2114;
            v40 = objc_opt_class();
            v19 = v40;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Incorrect value for %{public}@: %@ (%{public}@)", buf, 0x20u);
          }
        }

        v8 = 0;
      }
    }

    v11 = self->_timer != 0;
  }

  else
  {
    v11 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_scheduleEndWithTimeInterval:(double)interval
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_timer)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Timer for end of system budget override %@ called too many times", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSystemMonitor.m"];
    v17 = [CPLEngineSystemMonitor descriptionForBudget:self->_budget];
    [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:1200 description:{@"Timer for end of system budget override %@ called too many times", v17}];

    abort();
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __54___CPLScheduledOverride__scheduleEndWithTimeInterval___block_invoke;
  handler[3] = &unk_1E861B290;
  v6 = v5;
  v19 = v6;
  selfCopy = self;
  dispatch_source_set_event_handler(v6, handler);
  intervalCopy = interval;
  if (interval <= 1)
  {
    intervalCopy = 1;
  }

  v8 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * intervalCopy);
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  dispatch_activate(v6);
  timer = self->_timer;
  self->_timer = v6;
  v10 = v6;

  v11 = *MEMORY[0x1E69E9840];
}

- (_CPLScheduledOverride)initWithBudget:(unint64_t)budget withReason:(unint64_t)reason queue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = _CPLScheduledOverride;
  v10 = [(_CPLScheduledOverride *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_budget = budget;
    objc_storeStrong(&v10->_queue, queue);
    v11->_reason = reason;
    v12 = [_CPLScheduledOverride _expirationDateStorageKeyForBudget:budget];
    expirationDateStorageKey = v11->_expirationDateStorageKey;
    v11->_expirationDateStorageKey = v12;

    v14 = [_CPLScheduledOverride budgetOverrideReasonStorageKeyForBudget:budget];
    overrideReasonKey = v11->_overrideReasonKey;
    v11->_overrideReasonKey = v14;
  }

  return v11;
}

+ (double)nextTimeIntervalForOverridingBudget:(unint64_t)budget withReason:(unint64_t)reason
{
  if ([objc_opt_class() isBudgetTypeSupportedForProgressiveOverriding:budget withReason:reason])
  {
    v5 = [objc_opt_class() currentBudgetOverrideTimeIntervalStorageKeyForBudget:budget];
    OverrideTimeIntervalFromSharedDefaults = _CPLSystemMonitorReadOverrideTimeIntervalFromSharedDefaults(v5);

    v7 = [objc_opt_class() currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:budget];
    v8 = _CPLSystemMonitorReadOverrideTimeIntervalExpiryDateFromSharedDefaults(v7);

    [objc_opt_class() nextTimeIntervalToUseGivenCurrent:v8 expiryDate:OverrideTimeIntervalFromSharedDefaults];
    v10 = v9;

    return v10;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v13 = [standardUserDefaults objectForKey:@"CPLOverrideBudgetExpirationSeconds"];
    [v13 doubleValue];
    v15 = v14;

    result = 3600.0;
    if (v15 > 0.0)
    {
      return v15;
    }
  }

  return result;
}

+ (id)_expirationDateStorageKeyForBudget:(unint64_t)budget
{
  v10 = *MEMORY[0x1E69E9840];
  if (budget > 15)
  {
    if (budget > 2047)
    {
      if (budget == 2048)
      {
        result = @"CPLOverrideThermalModerateExpirationDate";
        goto LABEL_25;
      }

      if (budget == 0x4000)
      {
        result = @"CPLOverrideAllOtherExpirationDate";
        goto LABEL_25;
      }
    }

    else
    {
      if (budget == 16)
      {
        result = @"CPLOverrideLowDataModeBudgetExpirationDate";
        goto LABEL_25;
      }

      if (budget == 32)
      {
        result = @"CPLOverrideLowPowerModeBudgetExpirationDate";
        goto LABEL_25;
      }
    }
  }

  else if (budget > 3)
  {
    if (budget == 4)
    {
      result = @"CPLOverrideSignificantWorkBudgetExpirationDate";
      goto LABEL_25;
    }

    if (budget == 8)
    {
      result = @"CPLOverrideForegroundBudgetExpirationDate";
      goto LABEL_25;
    }
  }

  else
  {
    if (budget == 1)
    {
      result = @"CPLOverrideDataBudgetExpirationDate";
      goto LABEL_25;
    }

    if (budget == 2)
    {
      result = @"CPLOverrideEnergyBudgetExpirationDate";
      goto LABEL_25;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSystemMonitorOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [CPLEngineSystemMonitor descriptionForBudget:budget];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Unknown system budget %{public}@", &v8, 0xCu);
    }
  }

  result = 0;
LABEL_25:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)budgetOverrideReasonStorageKeyForBudget:(unint64_t)budget
{
  v3 = [_CPLScheduledOverride _expirationDateStorageKeyForBudget:budget];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-overrideReason", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:(unint64_t)budget
{
  v3 = [_CPLScheduledOverride _expirationDateStorageKeyForBudget:budget];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-currentBudgetOverrideTimeIntervalExpiryDate", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)currentBudgetOverrideTimeIntervalStorageKeyForBudget:(unint64_t)budget
{
  v3 = [_CPLScheduledOverride _expirationDateStorageKeyForBudget:budget];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-currentBudgetOverrideTimeInterval", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isBudgetTypeSupportedForProgressiveOverriding:(unint64_t)overriding withReason:(unint64_t)reason
{
  if (reason)
  {
    return 0;
  }

  result = 1;
  if (overriding > 2047)
  {
    if (overriding != 0x4000)
    {
      return 0;
    }
  }

  else if (overriding > 0x20 || ((1 << overriding) & 0x100010006) == 0)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)_systemBudgetForBudgetKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"CPLOverrideDataBudgetExpirationDate"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideEnergyBudgetExpirationDate"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideSignificantWorkBudgetExpirationDate"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideForegroundBudgetExpirationDate"])
  {
    v4 = 8;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideLowDataModeBudgetExpirationDate"])
  {
    v4 = 16;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideLowPowerModeBudgetExpirationDate"])
  {
    v4 = 32;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideThermalModerateExpirationDate"])
  {
    v4 = 2048;
  }

  else if ([keyCopy isEqualToString:@"CPLOverrideAllOtherExpirationDate"])
  {
    v4 = 0x4000;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)nextTimeIntervalToUseGivenCurrent:(double)current expiryDate:(id)date
{
  dateCopy = date;
  if (nextTimeIntervalToUseGivenCurrent_expiryDate__onceToken != -1)
  {
    dispatch_once(&nextTimeIntervalToUseGivenCurrent_expiryDate__onceToken, &__block_literal_global_368);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:current];
  v7 = v6;
  v8 = 3600.0;
  if (dateCopy)
  {
    if (v6)
    {
      date = [MEMORY[0x1E695DF00] date];
      v10 = [date compare:dateCopy];

      if (v10 != 1)
      {
        v11 = [nextTimeIntervalToUseGivenCurrent_expiryDate__budgetOverrideTimeIntervalHeuristics indexOfObject:v7];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v11;
          v13 = v11 + 1;
          v14 = [nextTimeIntervalToUseGivenCurrent_expiryDate__budgetOverrideTimeIntervalHeuristics count];
          if (v13 < v14 - 1)
          {
            v15 = v12 + 1;
          }

          else
          {
            v15 = v14 - 1;
          }

          v16 = [nextTimeIntervalToUseGivenCurrent_expiryDate__budgetOverrideTimeIntervalHeuristics objectAtIndexedSubscript:v15];
          [v16 doubleValue];
          v8 = v17;
        }
      }
    }
  }

  return v8;
}

@end