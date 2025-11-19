@interface _DASConfigurationLimiter
+ (id)intervalLimiterResponseForActivity:(id)a3;
+ (id)sharedLimiter;
- (BOOL)deleteLimitForActivity:(id)a3;
- (BOOL)limitedActivity:(id)a3 withLimitsResponses:(id)a4;
- (BOOL)limitsApplyToActivity:(id)a3;
- (BOOL)setLimitForActivity:(id)a3;
- (_DASConfigurationLimiter)init;
- (id)responseWithActivityConfigurations:(id)a3;
- (id)shouldLimitActivityAtSubmission:(id)a3;
@end

@implementation _DASConfigurationLimiter

- (_DASConfigurationLimiter)init
{
  v8.receiver = self;
  v8.super_class = _DASConfigurationLimiter;
  v2 = [(_DASConfigurationLimiter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_limitationName, @"Configuration");
    v4 = os_log_create([@"com.apple.duetactivityscheduler" UTF8String], objc_msgSend(@"configurationLimiter", "UTF8String"));
    log = v3->_log;
    v3->_log = v4;

    testingOverride = v3->_testingOverride;
    v3->_testingOverride = 0;
  }

  return v3;
}

+ (id)sharedLimiter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___DASConfigurationLimiter_sharedLimiter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedLimiter_onceToken_0 != -1)
  {
    dispatch_once(&sharedLimiter_onceToken_0, block);
  }

  v2 = sharedLimiter_limitation_0;

  return v2;
}

- (BOOL)deleteLimitForActivity:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_testingOverride containsObject:v4];
  if (v5)
  {
    [(NSMutableArray *)self->_testingOverride removeObject:v4];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Removing override for %@";
LABEL_6:
      _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Failed to remove override for %@";
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)setLimitForActivity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  testingOverride = self->_testingOverride;
  if (!testingOverride)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_testingOverride;
    self->_testingOverride = v6;

    testingOverride = self->_testingOverride;
  }

  [(NSMutableArray *)testingOverride addObject:v4];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Adding %@ to override list", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)limitsApplyToActivity:(id)a3
{
  v3 = a3;
  if ([v3 requestsImmediateRuntime])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v3 schedulingPriority];
    if (v5 <= _DASSchedulingPriorityDefault)
    {
      v4 = [v3 name];

      if (v4)
      {
        v4 = +[_DASPlistParser sharedInstance];
        v6 = [v4 containsOverrideForActivity:v3 withLimitation:@"Configuration"];

        LOBYTE(v4) = v6 ^ 1;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (id)intervalLimiterResponseForActivity:(id)a3
{
  v3 = a3;
  [v3 interval];
  if (v4 <= 0.0)
  {
    goto LABEL_20;
  }

  v5 = v4;
  if (v4 >= 300.0)
  {
    v8 = [v3 shouldWakeDevice];
    if (v5 < 3600.0 && v8 != 0)
    {
      v6 = @"Waking with Interval < 1 hour";
LABEL_21:
      v7 = 1;
      goto LABEL_22;
    }

    v10 = [v3 preventDeviceSleep];
    if (v5 < 3600.0 && v10 != 0)
    {
      v6 = @"Prevent Device Sleep with interval < 1 hour";
      goto LABEL_21;
    }

    v12 = [v3 isIntensive];
    if (v5 < 86400.0 && v12 != 0)
    {
      v6 = @"Intensive with interval < 1 day";
      goto LABEL_4;
    }

LABEL_20:
    v14 = 0;
    goto LABEL_23;
  }

  v6 = @"Repeating Interval < 5 mins";
LABEL_4:
  v7 = 4;
LABEL_22:
  v14 = [_DASLimiterResponse limitResponseWithDecision:v7 withLimiter:@"Configuration" validityDuration:v6 rationale:0.0];
LABEL_23:

  return v14;
}

- (id)responseWithActivityConfigurations:(id)a3
{
  v3 = a3;
  if ([v3 requiresRemoteDeviceWake])
  {
    v4 = [v3 remoteDevice];
    if (!v4 || (v5 = v4, v6 = [v3 targetDevice], v5, !v6))
    {
      v13 = @"Requires Remote Device Wake && (!RemoteDevice || Target Device Local)";
LABEL_9:
      v14 = 4;
LABEL_32:
      v28 = [_DASLimiterResponse limitResponseWithDecision:v14 withLimiter:@"Configuration" validityDuration:v13 rationale:0.0];
      goto LABEL_33;
    }
  }

  v7 = [v3 remoteDevice];
  if (v7)
  {
    v8 = v7;
    v9 = [v3 targetDevice];

    if (!v9)
    {
      v13 = @"Remote Device && Target Device Local";
      goto LABEL_31;
    }
  }

  v10 = [v3 fileProtection];
  v11 = +[_DASFileProtection complete];
  v12 = v11;
  if (v10 == v11)
  {
    v15 = [v3 requiresPlugin];

    if (v15)
    {
      v13 = @"Class A && Plugged In";
LABEL_31:
      v14 = 1;
      goto LABEL_32;
    }
  }

  else
  {
  }

  if ([v3 shouldWakeDevice])
  {
    v16 = [v3 schedulingPriority];
    if (v16 < _DASSchedulingPriorityDefault)
    {
      v13 = @"Should Wake && Priority < Default";
      goto LABEL_31;
    }
  }

  v17 = [v3 fileProtection];
  v18 = +[_DASFileProtection complete];
  v19 = v18;
  if (v17 != v18)
  {

    goto LABEL_20;
  }

  v20 = [v3 requiresDeviceInactivity];

  if (v20)
  {
    v13 = @"Class A && Requires Inactivity";
    goto LABEL_9;
  }

LABEL_20:
  v21 = [v3 submittedFileProtection];
  v22 = +[_DASFileProtection none];
  v23 = v22;
  if (v21 != v22)
  {

    goto LABEL_22;
  }

  v25 = [v3 producedResultIdentifiers];
  if ([v25 count])
  {

LABEL_30:
    v13 = @"Dependencies && Insufficient File Protection";
    goto LABEL_31;
  }

  v26 = [v3 dependencies];
  v27 = [v26 count];

  if (v27)
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = [v3 fastPass];

  if (v24)
  {
    if ([v3 requiresSignificantUserInactivity])
    {
      v13 = @"Fast Pass && Requires Significant Inactivity";
      goto LABEL_9;
    }

    if ([v3 requiresPlugin])
    {
      v13 = @"Fast Pass && Requires Plugin";
      goto LABEL_9;
    }

    v30 = [v3 schedulingPriority];
    if (v30 < _DASSchedulingPriorityUtility)
    {
      v13 = @"Fast Pass && Priority < Utility";
      goto LABEL_9;
    }
  }

  if ([v3 requestsImmediateRuntime])
  {
    v31 = +[_DASPlistParser sharedInstance];
    v32 = [v31 containsOverrideForActivity:v3 withLimitation:@"ImmediateRuntime"];

    if ((v32 & 1) == 0)
    {
      v13 = @"Unauthorized Use of Requests Immediate Runtime";
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_33:

  return v28;
}

- (id)shouldLimitActivityAtSubmission:(id)a3
{
  v4 = a3;
  if ([(_DASConfigurationLimiter *)self limitsApplyToActivity:v4])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [_DASConfigurationLimiter intervalLimiterResponseForActivity:v4];
    v7 = v6;
    if (v6 && [v6 decision])
    {
      [v5 addObject:v7];
    }

    v8 = [(_DASConfigurationLimiter *)self responseWithActivityConfigurations:v4];

    if (v8 && [v8 decision])
    {
      [v5 addObject:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)limitedActivity:(id)a3 withLimitsResponses:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_DASConfigurationLimiter *)self limitsApplyToActivity:v6]&& ((v8 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:v7], v9 = [_DASLimiterResponse queryActivityDecision:1 fromResponses:v7], v8) || v9))
  {
    v11 = [v6 identifier];
    if (v11 && [(NSMutableArray *)self->_testingOverride containsObject:v11])
    {
      log = self->_log;
      v10 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "%@ overrode configuration limit %@", &v15, 0x16u);
        v10 = 0;
      }
    }

    else
    {
      [_DASLimiterResponse updateActivity:v6 withLimitResponse:v7];
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end