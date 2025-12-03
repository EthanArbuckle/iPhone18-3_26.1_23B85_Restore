@interface _DASConfigurationLimiter
+ (id)intervalLimiterResponseForActivity:(id)activity;
+ (id)sharedLimiter;
- (BOOL)deleteLimitForActivity:(id)activity;
- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses;
- (BOOL)limitsApplyToActivity:(id)activity;
- (BOOL)setLimitForActivity:(id)activity;
- (_DASConfigurationLimiter)init;
- (id)responseWithActivityConfigurations:(id)configurations;
- (id)shouldLimitActivityAtSubmission:(id)submission;
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
  block[4] = self;
  if (sharedLimiter_onceToken_0 != -1)
  {
    dispatch_once(&sharedLimiter_onceToken_0, block);
  }

  v2 = sharedLimiter_limitation_0;

  return v2;
}

- (BOOL)deleteLimitForActivity:(id)activity
{
  v12 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = [(NSMutableArray *)self->_testingOverride containsObject:activityCopy];
  if (v5)
  {
    [(NSMutableArray *)self->_testingOverride removeObject:activityCopy];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = activityCopy;
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
      v11 = activityCopy;
      v7 = "Failed to remove override for %@";
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)setLimitForActivity:(id)activity
{
  v13 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  testingOverride = self->_testingOverride;
  if (!testingOverride)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_testingOverride;
    self->_testingOverride = array;

    testingOverride = self->_testingOverride;
  }

  [(NSMutableArray *)testingOverride addObject:activityCopy];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = activityCopy;
    _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Adding %@ to override list", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)limitsApplyToActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requestsImmediateRuntime])
  {
    LOBYTE(name) = 1;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    if (schedulingPriority <= _DASSchedulingPriorityDefault)
    {
      name = [activityCopy name];

      if (name)
      {
        name = +[_DASPlistParser sharedInstance];
        v6 = [name containsOverrideForActivity:activityCopy withLimitation:@"Configuration"];

        LOBYTE(name) = v6 ^ 1;
      }
    }

    else
    {
      LOBYTE(name) = 0;
    }
  }

  return name;
}

+ (id)intervalLimiterResponseForActivity:(id)activity
{
  activityCopy = activity;
  [activityCopy interval];
  if (v4 <= 0.0)
  {
    goto LABEL_20;
  }

  v5 = v4;
  if (v4 >= 300.0)
  {
    shouldWakeDevice = [activityCopy shouldWakeDevice];
    if (v5 < 3600.0 && shouldWakeDevice != 0)
    {
      v6 = @"Waking with Interval < 1 hour";
LABEL_21:
      v7 = 1;
      goto LABEL_22;
    }

    preventDeviceSleep = [activityCopy preventDeviceSleep];
    if (v5 < 3600.0 && preventDeviceSleep != 0)
    {
      v6 = @"Prevent Device Sleep with interval < 1 hour";
      goto LABEL_21;
    }

    isIntensive = [activityCopy isIntensive];
    if (v5 < 86400.0 && isIntensive != 0)
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

- (id)responseWithActivityConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  if ([configurationsCopy requiresRemoteDeviceWake])
  {
    remoteDevice = [configurationsCopy remoteDevice];
    if (!remoteDevice || (v5 = remoteDevice, v6 = [configurationsCopy targetDevice], v5, !v6))
    {
      v13 = @"Requires Remote Device Wake && (!RemoteDevice || Target Device Local)";
LABEL_9:
      v14 = 4;
LABEL_32:
      v28 = [_DASLimiterResponse limitResponseWithDecision:v14 withLimiter:@"Configuration" validityDuration:v13 rationale:0.0];
      goto LABEL_33;
    }
  }

  remoteDevice2 = [configurationsCopy remoteDevice];
  if (remoteDevice2)
  {
    v8 = remoteDevice2;
    targetDevice = [configurationsCopy targetDevice];

    if (!targetDevice)
    {
      v13 = @"Remote Device && Target Device Local";
      goto LABEL_31;
    }
  }

  fileProtection = [configurationsCopy fileProtection];
  v11 = +[_DASFileProtection complete];
  v12 = v11;
  if (fileProtection == v11)
  {
    requiresPlugin = [configurationsCopy requiresPlugin];

    if (requiresPlugin)
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

  if ([configurationsCopy shouldWakeDevice])
  {
    schedulingPriority = [configurationsCopy schedulingPriority];
    if (schedulingPriority < _DASSchedulingPriorityDefault)
    {
      v13 = @"Should Wake && Priority < Default";
      goto LABEL_31;
    }
  }

  fileProtection2 = [configurationsCopy fileProtection];
  v18 = +[_DASFileProtection complete];
  v19 = v18;
  if (fileProtection2 != v18)
  {

    goto LABEL_20;
  }

  requiresDeviceInactivity = [configurationsCopy requiresDeviceInactivity];

  if (requiresDeviceInactivity)
  {
    v13 = @"Class A && Requires Inactivity";
    goto LABEL_9;
  }

LABEL_20:
  submittedFileProtection = [configurationsCopy submittedFileProtection];
  v22 = +[_DASFileProtection none];
  v23 = v22;
  if (submittedFileProtection != v22)
  {

    goto LABEL_22;
  }

  producedResultIdentifiers = [configurationsCopy producedResultIdentifiers];
  if ([producedResultIdentifiers count])
  {

LABEL_30:
    v13 = @"Dependencies && Insufficient File Protection";
    goto LABEL_31;
  }

  dependencies = [configurationsCopy dependencies];
  v27 = [dependencies count];

  if (v27)
  {
    goto LABEL_30;
  }

LABEL_22:
  fastPass = [configurationsCopy fastPass];

  if (fastPass)
  {
    if ([configurationsCopy requiresSignificantUserInactivity])
    {
      v13 = @"Fast Pass && Requires Significant Inactivity";
      goto LABEL_9;
    }

    if ([configurationsCopy requiresPlugin])
    {
      v13 = @"Fast Pass && Requires Plugin";
      goto LABEL_9;
    }

    schedulingPriority2 = [configurationsCopy schedulingPriority];
    if (schedulingPriority2 < _DASSchedulingPriorityUtility)
    {
      v13 = @"Fast Pass && Priority < Utility";
      goto LABEL_9;
    }
  }

  if ([configurationsCopy requestsImmediateRuntime])
  {
    v31 = +[_DASPlistParser sharedInstance];
    v32 = [v31 containsOverrideForActivity:configurationsCopy withLimitation:@"ImmediateRuntime"];

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

- (id)shouldLimitActivityAtSubmission:(id)submission
{
  submissionCopy = submission;
  if ([(_DASConfigurationLimiter *)self limitsApplyToActivity:submissionCopy])
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [_DASConfigurationLimiter intervalLimiterResponseForActivity:submissionCopy];
    v7 = v6;
    if (v6 && [v6 decision])
    {
      [array addObject:v7];
    }

    v8 = [(_DASConfigurationLimiter *)self responseWithActivityConfigurations:submissionCopy];

    if (v8 && [v8 decision])
    {
      [array addObject:v8];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses
{
  v19 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  responsesCopy = responses;
  if ([(_DASConfigurationLimiter *)self limitsApplyToActivity:activityCopy]&& ((v8 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:responsesCopy], v9 = [_DASLimiterResponse queryActivityDecision:1 fromResponses:responsesCopy], v8) || v9))
  {
    identifier = [activityCopy identifier];
    if (identifier && [(NSMutableArray *)self->_testingOverride containsObject:identifier])
    {
      log = self->_log;
      v10 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = activityCopy;
        v17 = 2112;
        v18 = responsesCopy;
        _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "%@ overrode configuration limit %@", &v15, 0x16u);
        v10 = 0;
      }
    }

    else
    {
      [_DASLimiterResponse updateActivity:activityCopy withLimitResponse:responsesCopy];
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