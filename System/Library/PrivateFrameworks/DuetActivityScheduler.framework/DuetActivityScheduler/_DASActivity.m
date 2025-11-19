@interface _DASActivity
+ (_DASActivity)activityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7;
+ (_DASActivity)activityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 userInfo:(id)a8;
+ (id)anyApplicationActivityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 limitedToApplications:(id)a8;
+ (id)applicationLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9;
+ (id)continuedProcessingActivityWithName:(id)a3;
+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 forExtensionIdentifier:(id)a6 withReason:(id)a7 duration:(unint64_t)a8 startingAfter:(id)a9 startingBefore:(id)a10;
+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9;
+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forExtensionIdentifier:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9;
+ (id)launchWithTopic:(id)a3 forReason:(id)a4 withPayload:(id)a5 highPriority:(BOOL)a6;
+ (id)networkingActivityWithName:(id)a3 priority:(unint64_t)a4 downloadSize:(unint64_t)a5 uploadSize:(unint64_t)a6 expensiveNetworkingAllowed:(BOOL)a7 startingAfter:(id)a8 startingBefore:(id)a9;
+ (id)prettySchedulingPriorityDescription:(unint64_t)a3;
+ (id)sharedDateFormatter;
+ (id)validClassesForUserInfoSerialization;
+ (id)validateBGTaskRequestWithActivity:(id)a3;
+ (unint64_t)cleanDuration:(unint64_t)a3;
+ (unint64_t)cleanSchedulingPriority:(unint64_t)a3;
+ (unint64_t)cleanTransferSize:(unint64_t)a3;
- (BOOL)BOOLForUserInfoKey:(id)a3;
- (BOOL)allowsCompanionExpensiveNetworking;
- (BOOL)allowsUnrestrictedBackgroundLaunches;
- (BOOL)beforeApplicationLaunch;
- (BOOL)blockRebootActivitiesForSU;
- (BOOL)budgeted;
- (BOOL)ckPushContentMatches:(id)a3;
- (BOOL)dataBudgetingEnabled;
- (BOOL)hasMagneticSensitivity;
- (BOOL)hasManyConstraints;
- (BOOL)isANEIntensive;
- (BOOL)isBackgroundTaskActivity;
- (BOOL)isCPUIntensive;
- (BOOL)isContactTracingBackgroundActivity;
- (BOOL)isContinuedProcessingTask;
- (BOOL)isDiskIntensive;
- (BOOL)isEmergencySOSActivity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGPUIntensive;
- (BOOL)isIdenticalLaunchTo:(id)a3;
- (BOOL)isIntensive;
- (BOOL)isMemoryIntensive;
- (BOOL)isPartOfCustomGroup;
- (BOOL)isPrioritizedIdleStackTasks;
- (BOOL)isRunning;
- (BOOL)isSilentPush;
- (BOOL)isSoftwareUpdateActivity;
- (BOOL)keepsPrevious;
- (BOOL)overdueAtDate:(id)a3;
- (BOOL)overwritesPrevious;
- (BOOL)requestsNewsstandLaunch;
- (BOOL)requiresSignificantUserInactivity;
- (BOOL)shouldReplaceActivity:(id)a3 andKeepsSubmitted:(BOOL *)a4;
- (BOOL)significantlyOverdueAtDate:(id)a3;
- (BOOL)timewiseEligibleAtDate:(id)a3;
- (BOOL)useStatisticalModelForTriggersRestart;
- (BOOL)userRequestedBackupTask;
- (NSDate)clientProvidedStartDate;
- (NSDictionary)userInfo;
- (NSMutableDictionary)policyResponseMetadata;
- (NSProgress)progress;
- (NSSet)internalGroupNames;
- (NSString)clientProvidedIdentifier;
- (NSString)groupName;
- (NSString)identifier;
- (_DASActivity)initWithCoder:(id)a3;
- (_DASActivity)initWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 userInfo:(id)a8;
- (_DASFileProtection)fileProtection;
- (double)compatibilityWith:(id)a3;
- (id)debugDescription;
- (id)dependencyForIdentifier:(id)a3;
- (id)nameString;
- (id)objectForUserInfoKey:(id)a3;
- (id)policyScores;
- (id)shortDescription;
- (unint64_t)hashArrayOfString:(id)a3;
- (unint64_t)taskID;
- (unint64_t)transferSize;
- (unint64_t)transferSizeType;
- (void)encodeWithCoder:(id)a3;
- (void)reconcileWithActivity:(id)a3;
- (void)setAfterUserIsInactive:(BOOL)a3;
- (void)setAneIntensive:(BOOL)a3;
- (void)setBeforeDaysFirstActivity:(BOOL)a3;
- (void)setBool:(BOOL)a3 forUserInfoKey:(id)a4;
- (void)setConstraintsWithXPCDictionary:(id)a3;
- (void)setCpuIntensive:(BOOL)a3;
- (void)setDarkWakeEligible:(BOOL)a3;
- (void)setDiskIntensive:(BOOL)a3;
- (void)setGpuIntensive:(BOOL)a3;
- (void)setGroupName:(id)a3;
- (void)setHasMagneticSensitivity:(BOOL)a3;
- (void)setInternalGroupNames:(id)a3;
- (void)setInvolvedProcesses:(id)a3;
- (void)setIsContactTracingBackgroundActivity:(BOOL)a3;
- (void)setIsMLBackgroundActivity:(BOOL)a3;
- (void)setIsUpload:(BOOL)a3;
- (void)setMemoryIntensive:(BOOL)a3;
- (void)setObject:(id)a3 forUserInfoKey:(id)a4;
- (void)setPercentCompleted:(double)a3;
- (void)setRelatedApplications:(id)a3;
- (void)setRemoteDevice:(id)a3;
- (void)setRequestsApplicationLaunch:(BOOL)a3;
- (void)setRequestsExtensionLaunch:(BOOL)a3;
- (void)setRequiresDeviceInactivity:(BOOL)a3;
- (void)setRequiresSignificantUserInactivity:(BOOL)a3;
- (void)setSuspendHandler:(id)a3;
- (void)setTransferSize:(unint64_t)a3;
- (void)setTriggersRestart:(BOOL)a3;
- (void)setUserInfo:(id)a3;
- (void)updateGroupIfNecessary;
- (void)updateInternalGroups;
@end

@implementation _DASActivity

- (BOOL)isBackgroundTaskActivity
{
  v3 = [(_DASActivity *)self launchReason];
  if ([v3 isEqualToString:@"com.apple.das.bgrefresh"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_DASActivity *)self launchReason];
    if ([v5 isEqualToString:@"com.apple.das.bgprocessing"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(_DASActivity *)self launchReason];
      if ([v6 isEqualToString:@"com.apple.das.bghealthresearch"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(_DASActivity *)self launchReason];
        if ([v7 isEqualToString:@"com.apple.das.bgongoingprocessing"])
        {
          v4 = 1;
        }

        else
        {
          v8 = [(_DASActivity *)self launchReason];
          v4 = [v8 isEqualToString:@"com.apple.das.bgongoingprocessing.internal"];
        }
      }
    }
  }

  return v4;
}

- (NSString)clientProvidedIdentifier
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"clientID"];

  return v3;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    goto LABEL_2;
  }

  v5 = [(_DASActivity *)self name];
  v6 = [v5 componentsSeparatedByString:@":"];

  v7 = [v6 count];
  if (v7 > 1)
  {
    v8 = v7;
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v11 = [v10 numberFromString:v9];

    if (v11)
    {
      if (v8 == 2)
      {
        v12 = [v6 objectAtIndexedSubscript:1];
      }

      else
      {
        v13 = MEMORY[0x1E696AD60];
        v14 = [v6 objectAtIndexedSubscript:1];
        v15 = [v13 stringWithString:v14];

        for (i = 2; i != v8; ++i)
        {
          [v15 appendString:@":"];
          v17 = [v6 objectAtIndexedSubscript:i];
          [v15 appendString:v17];
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithString:v15];
      }

      v18 = self->_identifier;
      self->_identifier = v12;
      v3 = v12;
    }

    else
    {
      v3 = [(_DASActivity *)self name];
    }

    if (v11)
    {
      identifier = self->_identifier;
LABEL_2:
      v3 = identifier;
    }
  }

  else
  {
    v3 = [(_DASActivity *)self name];
  }

  return v3;
}

- (id)nameString
{
  v2 = MEMORY[0x1E696AEC0];
  name = self->_name;
  v4 = [(NSUUID *)self->_uuid UUIDString];
  v5 = [v4 substringToIndex:6];
  v6 = [v2 stringWithFormat:@"%@:%@", name, v5];

  return v6;
}

- (BOOL)isPartOfCustomGroup
{
  if ([(NSString *)self->_groupName isEqualToString:_DASDefaultGroupName]|| [(NSString *)self->_groupName isEqualToString:_DASDefaultNetworkGroupName]|| [(NSString *)self->_groupName isEqualToString:_DASDefaultIntensiveGroupName]|| [(NSString *)self->_groupName isEqualToString:_DASDefaultRemoteGroupName])
  {
    return 0;
  }

  else
  {
    return ![(NSString *)self->_groupName isEqualToString:_DASDefaultContinuedProcessingGroupName];
  }
}

- (void)updateGroupIfNecessary
{
  p_groupName = &self->_groupName;
  groupName = self->_groupName;
  if (!groupName || [(NSString *)groupName isEqualToString:_DASDefaultNetworkGroupName]|| [(NSString *)*p_groupName isEqualToString:_DASDefaultGroupName]|| [(NSString *)*p_groupName isEqualToString:_DASDefaultIntensiveGroupName]|| [(NSString *)*p_groupName isEqualToString:_DASDefaultRemoteGroupName]|| [(NSString *)*p_groupName isEqualToString:_DASDefaultContinuedProcessingGroupName])
  {
    if ([(_DASActivity *)self isIntensive])
    {
      v5 = _DASDefaultIntensiveGroupName;
    }

    else if (self->_targetDevice)
    {
      v5 = _DASDefaultRemoteGroupName;
    }

    else if ([(_DASActivity *)self isContinuedProcessingTask])
    {
      v5 = _DASDefaultContinuedProcessingGroupName;
    }

    else
    {
      v6 = &_DASDefaultNetworkGroupName;
      if (!self->_requiresNetwork)
      {
        v6 = &_DASDefaultGroupName;
      }

      v5 = *v6;
    }

    objc_storeStrong(p_groupName, v5);
  }

  if (_os_feature_enabled_impl())
  {

    [(_DASActivity *)self updateInternalGroups];
  }
}

- (void)updateInternalGroups
{
  os_unfair_lock_lock(&self->_internalGroupLock);
  v3 = [MEMORY[0x1E695DFA8] set];
  internalGroupNames = self->_internalGroupNames;
  self->_internalGroupNames = v3;

  if (self->_groupName)
  {
    groupName = self->_groupName;
  }

  else
  {
    groupName = &stru_1F2EC9F10;
  }

  [(NSMutableSet *)self->_internalGroupNames addObject:groupName];
  if ([(_DASActivity *)self isPartOfCustomGroup]&& [(_DASActivity *)self isIntensive])
  {
    [(NSMutableSet *)self->_internalGroupNames addObject:_DASDefaultIntensiveGroupName];
  }

  os_unfair_lock_unlock(&self->_internalGroupLock);
}

- (BOOL)isContinuedProcessingTask
{
  v2 = [(_DASActivity *)self launchReason];
  v3 = [v2 hasPrefix:@"com.apple.das.bgongoingprocessing"];

  return v3;
}

- (BOOL)isIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  if (v3)
  {
    return 0;
  }

  else
  {
    return self->_cpuIntensive || self->_memoryIntensive || self->_diskIntensive || self->_aneIntensive || self->_gpuIntensive;
  }
}

- (NSDictionary)userInfo
{
  os_unfair_lock_lock(&self->_userInfoLock);
  v3 = [(NSMutableDictionary *)self->_userInfo copy];
  os_unfair_lock_unlock(&self->_userInfoLock);

  return v3;
}

- (BOOL)userRequestedBackupTask
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"UserRequestedBackupActivity"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (_DASFileProtection)fileProtection
{
  v3 = [(_DASActivity *)self dependencies];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [(_DASActivity *)self producedResultIdentifiers];
    v5 = [v4 count];

    if (!v5)
    {
LABEL_5:
      v8 = self->_fileProtection;
      goto LABEL_7;
    }
  }

  fileProtection = self->_fileProtection;
  v7 = +[_DASFileProtection none];

  if (fileProtection != v7)
  {
    goto LABEL_5;
  }

  v8 = +[_DASFileProtection completeUntilFirstUserAuthentication];
LABEL_7:

  return v8;
}

- (BOOL)isSoftwareUpdateActivity
{
  v3 = [(_DASActivity *)self name];
  if ([v3 isEqualToString:@"com.apple.softwareupdate.autoinstall.startInstall"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_DASActivity *)self name];
    v4 = ([v5 hasSuffix:@"com.apple.SUOSUScheduler.tonight.install"] & 1) != 0 || -[_DASActivity blockRebootActivitiesForSU](self, "blockRebootActivitiesForSU");
  }

  return v4;
}

- (BOOL)blockRebootActivitiesForSU
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"BlockRebootActivitiesForSU"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)transferSizeType
{
  if (!self->_requiresNetwork)
  {
    return 0;
  }

  if ([(_DASActivity *)self noTransferSizeSpecified])
  {
    return 0;
  }

  v4 = [(_DASActivity *)self transferSize];
  v5 = 30;
  if (v4 < _DASActivityTransferSizeVeryLarge)
  {
    v5 = 20;
  }

  if (v4 >= _DASActivityTransferSizeLarge)
  {
    return v5;
  }

  else
  {
    return 10;
  }
}

- (BOOL)hasManyConstraints
{
  if (![(_DASActivity *)self isIntensive])
  {
    v5 = [(_DASActivity *)self fastPass];
    if (v5)
    {
LABEL_4:
      v4 = 1;
LABEL_5:

      return v4;
    }

    requiresNetwork = self->_requiresNetwork;
    if (!requiresNetwork)
    {
      goto LABEL_25;
    }

    if (![(_DASActivity *)self requestsApplicationLaunch])
    {
      goto LABEL_4;
    }

    v2 = [(_DASActivity *)self launchReason];
    if (![v2 isEqualToString:@"com.apple.das.launchreason.fetch"])
    {
      v4 = 1;
    }

    else
    {
LABEL_25:
      if (self->_backlogged || self->_requiresPlugin || self->_schedulingPriority < _DASSchedulingPriorityUserInitiated && [(_DASActivity *)self transferSizeType]== 30 || self->_triggersRestart || self->_requiresDeviceInactivity || self->_rateLimitConfigurationName)
      {
        v4 = 1;
        if (!requiresNetwork)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = self->_targetDevice == 3;
        if (!requiresNetwork)
        {
          goto LABEL_5;
        }
      }
    }

    goto LABEL_5;
  }

  return 1;
}

- (NSSet)internalGroupNames
{
  [(_DASActivity *)self updateGroupIfNecessary];
  os_unfair_lock_lock(&self->_internalGroupLock);
  v3 = [(NSMutableSet *)self->_internalGroupNames copy];
  os_unfair_lock_unlock(&self->_internalGroupLock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = v4;

  return v5;
}

- (BOOL)requiresSignificantUserInactivity
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.das.significantInactivity"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)useStatisticalModelForTriggersRestart
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"UseStatisticalModelForTriggersRestart"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)allowsUnrestrictedBackgroundLaunches
{
  if ([(_DASActivity *)self isContactTracingBackgroundActivity])
  {
    return 1;
  }

  v4 = [(_DASActivity *)self launchReason];
  v5 = [v4 isEqualToString:@"com.apple.das.bghealthresearch"];

  return v5;
}

- (BOOL)isContactTracingBackgroundActivity
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"isCTActivity"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)beforeApplicationLaunch
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"BeforeApplicationLaunch"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)requestsNewsstandLaunch
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"newsstand"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)validClassesForUserInfoSerialization
{
  if (validClassesForUserInfoSerialization_onceToken != -1)
  {
    +[_DASActivity validClassesForUserInfoSerialization];
  }

  v3 = validClassesForUserInfoSerialization_validClasses;

  return v3;
}

- (NSString)groupName
{
  [(_DASActivity *)self updateGroupIfNecessary];
  groupName = self->_groupName;

  return groupName;
}

- (id)shortDescription
{
  v3 = +[_DASActivity sharedDateFormatter];
  v4 = MEMORY[0x1E696AD60];
  v5 = [(_DASActivity *)self nameString];
  v6 = [_DASActivity prettySchedulingPriorityDescription:self->_schedulingPriority];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  v8 = [(_DASActivity *)self startAfter];
  v9 = [v3 stringFromDate:v8];
  v10 = [(_DASActivity *)self startBefore];
  v11 = [v3 stringFromDate:v10];
  v12 = [v4 stringWithFormat:@"<_DASActivity: %@, %@, %@s, [%@ - %@]", v5, v6, v7, v9, v11];

  v13 = [(_DASActivity *)self limitationResponse];

  if (v13)
  {
    v14 = [(_DASActivity *)self limitationResponse];
    [v12 appendFormat:@", ACTIVITY LIMITED %@", v14];
  }

  v15 = [(_DASActivity *)self startDate];

  if (v15)
  {
    v16 = [(_DASActivity *)self startDate];
    v17 = [v3 stringFromDate:v16];
    [v12 appendFormat:@", Started at %@", v17];
  }

  if (self->_requiresNetwork)
  {
    v18 = [(_DASActivity *)self objectForUserInfoKey:@"NWEndpoint"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 description];
      [v12 appendFormat:@", Endpoint: %@", v20];
    }

    [v12 appendFormat:@", Upload=%u, UploadSize=%llu, DownloadSize=%llu, WiFi-Only=%u", self->_isUpload, self->_uploadSize, self->_downloadSize, self->_requiresInexpensiveNetworking];
    if (self->_requiresUnconstrainedNetworking)
    {
      [v12 appendFormat:@", Unconstrained-Only=%u", 1];
    }
  }

  if (self->_groupName)
  {
    [v12 appendFormat:@", Group: %@", self->_groupName];
  }

  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_internalGroupLock);
    if ([(NSMutableSet *)self->_internalGroupNames count])
    {
      [v12 appendFormat:@", InternalGroups: %@", self->_internalGroupNames];
    }

    os_unfair_lock_unlock(&self->_internalGroupLock);
  }

  fastPass = self->_fastPass;
  if (fastPass)
  {
    v22 = [(_DASFastPass *)fastPass processingTaskIdentifiers];

    if (v22)
    {
      v23 = [(_DASFastPass *)self->_fastPass processingTaskIdentifiers];
      [v12 appendFormat:@", TaskID: %@", v23];
    }
  }

  if (self->_featureCodes)
  {
    [v12 appendFormat:@", Feature Codes: %@", self->_featureCodes];
  }

  if (self->_staticPriority)
  {
    [v12 appendFormat:@", Priority: %ld", self->_staticPriority];
  }

  if ([(_DASActivity *)self isIntensive])
  {
    [v12 appendFormat:@", Intensive:"];
    if ([(_DASActivity *)self isCPUIntensive])
    {
      [v12 appendFormat:@" CPU"];
    }

    if ([(_DASActivity *)self isMemoryIntensive])
    {
      [v12 appendFormat:@" Memory"];
    }

    if ([(_DASActivity *)self isDiskIntensive])
    {
      [v12 appendFormat:@" Disk"];
    }

    if ([(_DASActivity *)self isANEIntensive])
    {
      [v12 appendFormat:@" ANE"];
    }

    if ([(_DASActivity *)self isGPUIntensive])
    {
      [v12 appendFormat:@" GPU"];
    }
  }

  if (self->_pid >= 1)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v12 appendFormat:@", PID: %@", v24];
  }

  v25 = self->_targetDevice - 1;
  if (v25 <= 2)
  {
    [v12 appendString:off_1E7C8F5F0[v25]];
  }

  if (self->_remoteDevice)
  {
    [v12 appendFormat:@", Remote Device ID: %@", self->_remoteDevice];
  }

  if (self->_requiresRemoteDeviceWake)
  {
    [v12 appendString:{@", Requires Remote Wake"}];
  }

  if (self->_requestsImmediateRuntime)
  {
    [v12 appendFormat:@", Requests Immediate Runtime"];
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@>", v12];

  return v26;
}

+ (id)sharedDateFormatter
{
  if (sharedDateFormatter_onceToken != -1)
  {
    +[_DASActivity sharedDateFormatter];
  }

  v3 = sharedDateFormatter_formatter;

  return v3;
}

- (id)debugDescription
{
  v3 = +[_DASActivity sharedDateFormatter];
  v4 = MEMORY[0x1E696AD60];
  v5 = [(_DASActivity *)self nameString];
  v6 = [_DASActivity prettySchedulingPriorityDescription:self->_schedulingPriority];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  v8 = [(_DASActivity *)self startAfter];
  v9 = [v3 stringFromDate:v8];
  v10 = [(_DASActivity *)self startBefore];
  v11 = [v3 stringFromDate:v10];
  v12 = [v4 stringWithFormat:@"<_DASActivity: %@, %@, %@s, [%@ - %@]", v5, v6, v7, v9, v11];

  v13 = [(_DASActivity *)self startDate];

  if (v13)
  {
    v14 = [(_DASActivity *)self startDate];
    v15 = [v3 stringFromDate:v14];
    [v12 appendFormat:@", Started at %@", v15];
  }

  v16 = [(_DASActivity *)self limitationResponse];

  if (v16)
  {
    v17 = [(_DASActivity *)self limitationResponse];
    [v12 appendFormat:@", ACTIVITY LIMITED %@", v17];
  }

  if (!self->_suspendable)
  {
    [v12 appendString:{@", NOT Suspendable"}];
  }

  if (self->_groupName)
  {
    [v12 appendFormat:@", Group: %@", self->_groupName];
  }

  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_internalGroupLock);
    if ([(NSMutableSet *)self->_internalGroupNames count])
    {
      [v12 appendFormat:@", InternalGroups: %@", self->_internalGroupNames];
    }

    os_unfair_lock_unlock(&self->_internalGroupLock);
  }

  fastPass = self->_fastPass;
  if (fastPass)
  {
    v19 = [(_DASFastPass *)fastPass processingTaskIdentifiers];

    if (v19)
    {
      v20 = [(_DASFastPass *)self->_fastPass processingTaskIdentifiers];
      [v12 appendFormat:@", TaskID: %@", v20];
    }
  }

  if (self->_featureCodes)
  {
    [v12 appendFormat:@", Feature Codes: %@", self->_featureCodes];
  }

  if (self->_staticPriority)
  {
    [v12 appendFormat:@", Static Pri: %ld", self->_staticPriority];
  }

  if (self->_cancelAfterDeadline)
  {
    [v12 appendString:{@", Cancel After Deadline"}];
  }

  if (self->_shouldWakeDevice)
  {
    [v12 appendString:{@", Should Wake Device"}];
  }

  if (self->_lastComputedScore != 0.0)
  {
    [v12 appendFormat:@", Last Computed Score: %3.2f", *&self->_lastComputedScore];
  }

  if (self->_requiresNetwork)
  {
    [v12 appendFormat:@", Networking: Upload=%u, UploadSize=%llu, DownloadSize=%llu, WiFi-Only=%u", self->_isUpload, self->_uploadSize, self->_downloadSize, self->_requiresInexpensiveNetworking];
    if (self->_requiresUnconstrainedNetworking)
    {
      [v12 appendFormat:@", Unconstrained-Only=%u", 1];
    }
  }

  if (self->_cpuIntensive)
  {
    [v12 appendString:{@", CPU Intensive"}];
  }

  if (self->_memoryIntensive)
  {
    [v12 appendString:{@", Memory Intensive"}];
  }

  if (self->_diskIntensive)
  {
    [v12 appendString:{@", Disk Intensive"}];
  }

  if (self->_aneIntensive)
  {
    [v12 appendString:{@", ANE Intensive"}];
  }

  if (self->_gpuIntensive)
  {
    [v12 appendString:{@", GPU Intensive"}];
  }

  if (self->_requiresDeviceInactivity)
  {
    [v12 appendString:{@", Require Device Inactivity"}];
  }

  v21 = self->_targetDevice - 1;
  if (v21 <= 2)
  {
    [v12 appendString:off_1E7C8F5F0[v21]];
  }

  if (self->_remoteDevice)
  {
    [v12 appendFormat:@", Remote Device ID: %@", self->_remoteDevice];
  }

  if (self->_requiresRemoteDeviceWake)
  {
    [v12 appendString:{@", Requires Remote Wake"}];
  }

  if (self->_supportsAnyApplication)
  {
    [v12 appendString:{@", Supports Any Application"}];
  }

  if (self->_requestsApplicationLaunch)
  {
    v22 = [(NSArray *)self->_relatedApplications firstObject];
    [v12 appendFormat:@", Requests Launch (%@)", v22];
  }

  if (self->_requestsExtensionLaunch)
  {
    v23 = [(NSArray *)self->_relatedApplications firstObject];
    [v12 appendFormat:@", Requests Extension Launch (%@)", v23];
  }

  if (self->_requiresPlugin)
  {
    [v12 appendString:{@", Plugin Required"}];
  }

  if (self->_dataBudgeted)
  {
    [v12 appendString:{@", Data Budgeted"}];
  }

  if (self->_triggersRestart)
  {
    [v12 appendString:{@", Triggers Restart"}];
  }

  if (self->_beforeDaysFirstActivity)
  {
    v24 = @", App Refresh";
  }

  else
  {
    if (!self->_darkWakeEligible)
    {
      goto LABEL_64;
    }

    v24 = @", Dark-Wake Eligible";
  }

  [v12 appendString:v24];
LABEL_64:
  interval = self->_interval;
  if (interval != 0.0)
  {
    [v12 appendFormat:@", Interval=%.0f", interval / 60.0];
  }

  if ([(NSArray *)self->_relatedApplications count]&& !self->_requestsApplicationLaunch && !self->_requestsExtensionLaunch)
  {
    v26 = [(NSArray *)self->_relatedApplications description];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    [v12 appendFormat:@", Related Apps: %@", v27];
  }

  if ([(NSArray *)self->_involvedProcesses count])
  {
    v28 = [(NSArray *)self->_involvedProcesses description];
    v29 = [v28 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    [v12 appendFormat:@", Involved Processes: %@", v29];
  }

  if (self->_runWhenAppLaunchUnlikely)
  {
    [v12 appendFormat:@", Run When App Launch Unlikely: %d", 1];
  }

  if (self->_widgetBudgetID)
  {
    [v12 appendFormat:@", Widget budget ID: %@", self->_widgetBudgetID];
  }

  if (self->_widgetID)
  {
    [v12 appendFormat:@", Widget ID: %@", self->_widgetID];
  }

  if (self->_rateLimitConfigurationName)
  {
    [v12 appendFormat:@", Rate Limit Config Name: %@", self->_rateLimitConfigurationName];
  }

  if (self->_serviceName)
  {
    [v12 appendFormat:@", Service Name: %@", self->_serviceName];
  }

  if ([(_DASActivity *)self budgeted])
  {
    [v12 appendString:{@", Budgeted"}];
  }

  v30 = [(_DASActivity *)self clientDataBudgetName];

  if (v30)
  {
    v31 = [(_DASActivity *)self clientDataBudgetName];
    [v12 appendFormat:@", Budget=%@", v31];
  }

  if (self->_backlogged)
  {
    [v12 appendString:{@", Backlogged"}];
  }

  v32 = [(_DASActivity *)self activityType];

  if (v32)
  {
    v33 = [(_DASActivity *)self activityType];
    [v12 appendFormat:@", activityType=%@", v33];
  }

  if (self->_budgetingToken)
  {
    [v12 appendFormat:@", Bundle ID: %@", self->_bundleId];
  }

  if (self->_deferred)
  {
    [v12 appendString:{@", deferred"}];
  }

  if ([(_DASFileProtection *)self->_fileProtection indicatesProtection])
  {
    [v12 appendFormat:@", %@", self->_fileProtection];
  }

  v34 = [(_DASActivity *)self fileProtection];

  if (v34)
  {
    v35 = [(_DASActivity *)self fileProtection];
    fileProtection = self->_fileProtection;

    v37 = [(_DASActivity *)self fileProtection];
    [v12 appendFormat:@", %@", v37];

    if (v35 != fileProtection)
    {
      [v12 appendFormat:@" (overridden value: %@)", self->_fileProtection];
    }
  }

  if (self->_delayedStart)
  {
    [v12 appendFormat:@", Delayed Start"];
  }

  v38 = [(_DASActivity *)self userInfo];
  v39 = [v38 mutableCopy];

  if ([v39 count])
  {
    [v39 removeObjectForKey:@"notificationpayload"];
    v40 = [v39 description];
    v41 = [v40 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    [v12 appendFormat:@", User Specified: %@", v41];
  }

  if (self->_producedResultIdentifiers)
  {
    [v12 appendFormat:@", Produced Result Identifiers: %@", self->_producedResultIdentifiers];
  }

  if (self->_dependencies)
  {
    [v12 appendFormat:@", Dependencies: %@", self->_dependencies];
  }

  if (self->_continuedProcessingWrapper)
  {
    [v12 appendFormat:@", Continued Processing Wrapper: %@", self->_continuedProcessingWrapper];
  }

  v42 = [(_DASActivity *)self fastPass];

  if (v42)
  {
    v43 = [(_DASActivity *)self fastPass];
    [v12 appendFormat:@", FastPass v%d", objc_msgSend(v43, "semanticVersion")];
  }

  if (self->_diskVolume)
  {
    v44 = [(_DASActivity *)self diskVolume];
    [v12 appendFormat:@", DiskVolume=%@", v44];
  }

  if ([(_DASActivity *)self maximumRuntime])
  {
    [v12 appendFormat:@", Maximum Runtime: %ld", -[_DASActivity maximumRuntime](self, "maximumRuntime")];
  }

  if ([(_DASActivity *)self uninterruptibleDuration])
  {
    [v12 appendFormat:@", Uninterruptible Runtime: %ld", -[_DASActivity uninterruptibleDuration](self, "uninterruptibleDuration")];
  }

  if (self->_requestsImmediateRuntime)
  {
    [v12 appendFormat:@", Requests Immediate Runtime"];
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@>", v12];

  return v45;
}

- (BOOL)budgeted
{
  if (self->_budgeted)
  {
    return 1;
  }

  if ([(_DASActivity *)self isContactTracingBackgroundActivity])
  {
    return 0;
  }

  v4 = [(_DASActivity *)self schedulingPriority];
  if (v4 < _DASSchedulingPriorityUtility)
  {
    return 1;
  }

  v5 = [(_DASActivity *)self schedulingPriority];
  if (v5 != _DASSchedulingPriorityUtility)
  {
    return 0;
  }

  return [(_DASActivity *)self requestsApplicationLaunch];
}

- (unint64_t)transferSize
{
  if (self->_requiresNetwork && [(_DASActivity *)self noTransferSizeSpecified])
  {
    return _DASActivityTransferSizeSmall;
  }

  else
  {
    return self->_downloadSize + self->_uploadSize;
  }
}

- (unint64_t)taskID
{
  v3 = [(_DASActivity *)self name];
  v4 = [v3 hash];
  v5 = v4 ^ (2 * [(_DASActivity *)self schedulingPriority]);
  v6 = [(_DASActivity *)self groupName];
  v7 = v5 ^ (4 * [v6 hash]);
  v8 = [(_DASActivity *)self fileProtection];
  v9 = [v8 protectionType];
  v10 = v7 ^ (8 * [v9 hash]);
  if ([(_DASActivity *)self cpuIntensive])
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_DASActivity *)self memoryIntensive];
  v13 = 32;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 ^ v13;
  v15 = [(_DASActivity *)self aneIntensive];
  v16 = 64;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v14 ^ v16;
  v18 = [(_DASActivity *)self gpuIntensive];
  v19 = 128;
  if (!v18)
  {
    v19 = 0;
  }

  v20 = v17 ^ v19;
  v21 = [(_DASActivity *)self requiresPlugin];
  v22 = 256;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v20 ^ v22;
  v24 = [(_DASActivity *)self requiresNetwork];
  v25 = 512;
  if (!v24)
  {
    v25 = 0;
  }

  v26 = v10 ^ v23 ^ v25;
  if ([(_DASActivity *)self requiresInexpensiveNetworking])
  {
    v27 = 1024;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(_DASActivity *)self requiresUnconstrainedNetworking];
  v29 = 2048;
  if (!v28)
  {
    v29 = 0;
  }

  v30 = v27 ^ v29;
  v31 = [(_DASActivity *)self requiresDeviceInactivity];
  v32 = 4096;
  if (!v31)
  {
    v32 = 0;
  }

  v33 = v30 ^ v32;
  v34 = [(_DASActivity *)self requiresSignificantUserInactivity];
  v35 = 0x2000;
  if (!v34)
  {
    v35 = 0;
  }

  v36 = v33 ^ v35;
  v37 = [(_DASActivity *)self triggersRestart];
  v38 = 0x4000;
  if (!v37)
  {
    v38 = 0;
  }

  v39 = v26 ^ v36 ^ v38;
  v40 = [(_DASActivity *)self bundleId];
  v41 = v39 ^ ([v40 hash] << 15);
  v42 = [(_DASActivity *)self relatedApplications];
  v43 = v41 ^ ([(_DASActivity *)self hashArrayOfString:v42]<< 16);
  v44 = [(_DASActivity *)self involvedProcesses];
  v45 = v43 ^ ([(_DASActivity *)self hashArrayOfString:v44]<< 17);
  if ([(_DASActivity *)self diskIntensive])
  {
    v46 = 0x40000;
  }

  else
  {
    v46 = 0;
  }

  return v45 ^ v46;
}

- (BOOL)hasMagneticSensitivity
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"MagneticInterferenceSensitivity"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSMutableDictionary)policyResponseMetadata
{
  policyResponseMetadata = self->_policyResponseMetadata;
  if (!policyResponseMetadata)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_policyResponseMetadata;
    self->_policyResponseMetadata = v4;

    policyResponseMetadata = self->_policyResponseMetadata;
  }

  return policyResponseMetadata;
}

- (BOOL)isEmergencySOSActivity
{
  v2 = [(_DASActivity *)self name];
  v3 = [v2 containsString:@"com.corelocation.eedmediaservice.progress"];

  return v3;
}

- (BOOL)isRunning
{
  v2 = [(_DASActivity *)self startDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (BOOL)dataBudgetingEnabled
{
  preClearedMode = self->_preClearedMode;
  if (self->_budgeted)
  {
    return preClearedMode != 2;
  }

  else
  {
    return preClearedMode == 1;
  }
}

- (NSProgress)progress
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"progress"];

  return v3;
}

- (BOOL)isCPUIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  return !v3 && self->_cpuIntensive;
}

- (BOOL)isMemoryIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  return !v3 && self->_memoryIntensive;
}

- (BOOL)isDiskIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  return !v3 && self->_diskIntensive;
}

- (BOOL)isANEIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  return !v3 && self->_aneIntensive;
}

- (BOOL)isGPUIntensive
{
  v3 = [(_DASActivity *)self fastPass];

  return !v3 && self->_gpuIntensive;
}

- (NSDate)clientProvidedStartDate
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"clientStartDate"];

  return v3;
}

- (_DASActivity)initWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 userInfo:(id)a8
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = _DASActivity;
  v19 = [(_DASActivity *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, a3);
    v20->_schedulingPriority = [_DASActivity cleanSchedulingPriority:a4];
    v20->_duration = [_DASActivity cleanDuration:a5];
    objc_storeStrong(&v20->_startAfter, a6);
    objc_storeStrong(&v20->_startBefore, a7);
    v21 = _DASActivityTransferSizeZero;
    v20->_uploadSize = _DASActivityTransferSizeZero;
    v20->_downloadSize = v21;
    v20->_motionState = _DASMotionStateAny;
    v20->_delayedStart = 0;
    v22 = [v18 mutableCopy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = objc_opt_new();
    }

    userInfo = v20->_userInfo;
    v20->_userInfo = v24;

    v26 = [MEMORY[0x1E695DFA8] set];
    internalGroupNames = v20->_internalGroupNames;
    v20->_internalGroupNames = v26;

    *&v20->_userInfoLock._os_unfair_lock_opaque = 0;
    v28 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v20->_uuid;
    v20->_uuid = v28;

    v20->_userIdentifier = -1;
    [(_DASActivity *)v20 updateGroupIfNecessary];
  }

  return v20;
}

+ (_DASActivity)activityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [[a1 alloc] initWithName:v14 priority:a4 duration:a5 startingAfter:v13 startingBefore:v12 userInfo:0];

  return v15;
}

+ (_DASActivity)activityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 userInfo:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [[a1 alloc] initWithName:v17 priority:a4 duration:a5 startingAfter:v16 startingBefore:v15 userInfo:v14];

  return v18;
}

+ (id)networkingActivityWithName:(id)a3 priority:(unint64_t)a4 downloadSize:(unint64_t)a5 uploadSize:(unint64_t)a6 expensiveNetworkingAllowed:(BOOL)a7 startingAfter:(id)a8 startingBefore:(id)a9
{
  v10 = a7;
  v15 = a9;
  v16 = a8;
  v17 = a3;
  v18 = [objc_alloc(objc_opt_class()) initWithName:v17 priority:a4 duration:_DASActivityDurationLong startingAfter:v16 startingBefore:v15 userInfo:0];

  [v18 setRequiresNetwork:1];
  [v18 setDownloadSize:a5];
  [v18 setUploadSize:a6];
  [v18 setRequiresInexpensiveNetworking:!v10];

  return v18;
}

+ (id)continuedProcessingActivityWithName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = _DASSchedulingPriorityUserInitiated;
  v6 = _DASActivityDurationLong;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v4 initWithName:v3 priority:v5 duration:v6 startingAfter:v7 startingBefore:v8 userInfo:0];

  [v9 setLaunchReason:@"com.apple.das.bgongoingprocessing"];
  [v9 setGroupName:_DASDefaultContinuedProcessingGroupName];

  return v9;
}

+ (id)anyApplicationActivityWithName:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 startingAfter:(id)a6 startingBefore:(id)a7 limitedToApplications:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [objc_alloc(objc_opt_class()) initWithName:v16 priority:a4 duration:a5 startingAfter:v15 startingBefore:v14 userInfo:0];

  [v17 setSupportsAnyApplication:1];
  [v17 setRelatedApplications:v13];

  return v17;
}

+ (id)applicationLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9
{
  v24[1] = *MEMORY[0x1E69E9840];
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [objc_alloc(objc_opt_class()) initWithName:v19 priority:a4 duration:a7 startingAfter:v16 startingBefore:v15 userInfo:0];

  [v20 setRequestsApplicationLaunch:1];
  [v20 setLaunchReason:v17];

  v24[0] = v18;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v20 setRelatedApplications:v21];

  [v20 setBundleId:v18];
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 forExtensionIdentifier:(id)a6 withReason:(id)a7 duration:(unint64_t)a8 startingAfter:(id)a9 startingBefore:(id)a10
{
  v26[1] = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a3;
  v21 = [objc_alloc(objc_opt_class()) initWithName:v20 priority:a4 duration:a8 startingAfter:v18 startingBefore:v17 userInfo:0];

  [v21 setRequestsExtensionLaunch:1];
  [v21 setLaunchReason:v19];

  v22 = v16;
  if (v15)
  {
    v26[0] = v15;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v21 setRelatedApplications:v23];

    v22 = v15;
  }

  [v21 setExtensionIdentifier:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forApplication:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [objc_opt_class() extensionLaunchActivityWithName:v19 priority:a4 forApplication:v18 forExtensionIdentifier:0 withReason:v17 duration:a7 startingAfter:v16 startingBefore:v15];

  return v20;
}

+ (id)extensionLaunchActivityWithName:(id)a3 priority:(unint64_t)a4 forExtensionIdentifier:(id)a5 withReason:(id)a6 duration:(unint64_t)a7 startingAfter:(id)a8 startingBefore:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [objc_opt_class() extensionLaunchActivityWithName:v19 priority:a4 forApplication:0 forExtensionIdentifier:v18 withReason:v17 duration:a7 startingAfter:v16 startingBefore:v15];

  return v20;
}

+ (id)launchWithTopic:(id)a3 forReason:(id)a4 withPayload:(id)a5 highPriority:(BOOL)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = v8;
  if ([v8 hasPrefix:@"com.apple.icloud-container."])
  {
    v11 = [v8 substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.pushLaunch", v11];
  v13 = objc_opt_class();
  v14 = _DASSchedulingPriorityBackground;
  v15 = _DASActivityDurationVeryShort;
  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
  v18 = [v13 applicationLaunchActivityWithName:v12 priority:v14 forApplication:v11 withReason:v10 duration:v15 startingAfter:v16 startingBefore:v17];

  [v18 setRequiresNetwork:1];
  v19 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  [v18 setFileProtection:v19];

  v24 = @"notificationpayload";
  v25[0] = v9;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  [v18 setUserInfo:v20];
  if (!a6)
  {
    [v18 setSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)validateBGTaskRequestWithActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 clientProvidedIdentifier];
  if ([v4 length])
  {
    v5 = [v3 clientProvidedIdentifier];
    v6 = [v5 length];

    if (v6 > 0x80)
    {
      v7 = 0;
      goto LABEL_29;
    }

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:450.0];
    v9 = [v3 launchReason];
    v10 = [v9 isEqualToString:@"com.apple.das.bgrefresh"];

    if (v10)
    {
      v11 = [v3 name];
      v12 = _DASSchedulingPriorityBackground;
      v13 = _DASActivityDurationVeryShort;
      v14 = [v3 startAfter];
      v15 = [v3 startBefore];
      v4 = [_DASActivity activityWithName:v11 priority:v12 duration:v13 startingAfter:v14 startingBefore:v15];

      [v4 setLaunchReason:@"com.apple.das.bgrefresh"];
      [v4 setRequestsApplicationLaunch:1];
      [v4 setRequiresNetwork:1];
      v16 = [v3 clientProvidedStartDate];
      if (v16)
      {
        v17 = [v3 clientProvidedStartDate];
        v18 = [v17 laterDate:v8];
        [v4 setStartAfter:v18];
      }

      else
      {
        [v4 setStartAfter:v8];
      }

      v38 = 86400.0;
    }

    else
    {
      v19 = [v3 launchReason];
      v20 = [v19 isEqualToString:@"com.apple.das.bgprocessing"];

      if (v20)
      {
        v21 = [v3 name];
        v22 = _DASSchedulingPriorityBackground;
        v23 = _DASActivityDurationShort;
        v24 = [v3 startAfter];
        v25 = [v3 startBefore];
        v4 = [_DASActivity activityWithName:v21 priority:v22 duration:v23 startingAfter:v24 startingBefore:v25];

        [v4 setRequiresNetwork:{objc_msgSend(v3, "requiresNetwork")}];
        [v4 setRequiresPlugin:{objc_msgSend(v3, "requiresPlugin")}];
        [v4 setLaunchReason:@"com.apple.das.bgprocessing"];
        [v4 setRequestsApplicationLaunch:1];
        v16 = [v3 clientProvidedStartDate];
        if (v16)
        {
          v26 = [v3 clientProvidedStartDate];
          v27 = [v26 laterDate:v8];
          [v4 setStartAfter:v27];
        }

        else
        {
          [v4 setStartAfter:v8];
        }

        v38 = 604800.0;
      }

      else
      {
        v28 = [v3 launchReason];
        v29 = [v28 isEqualToString:@"com.apple.das.bghealthresearch"];

        if (!v29)
        {
          v39 = [v3 launchReason];
          v40 = @"com.apple.das.bgongoingprocessing";
          v41 = [v39 isEqual:@"com.apple.das.bgongoingprocessing"];

          if (!v41)
          {
            v42 = [v3 launchReason];
            v40 = @"com.apple.das.bgongoingprocessing.internal";
            v43 = [v42 isEqual:@"com.apple.das.bgongoingprocessing.internal"];

            if (!v43)
            {
              v4 = 0;
              goto LABEL_26;
            }
          }

          v44 = [v3 name];
          v45 = _DASSchedulingPriorityUserInitiated;
          v46 = _DASActivityDurationModerate;
          v47 = [MEMORY[0x1E695DF00] distantPast];
          v48 = [MEMORY[0x1E695DF00] now];
          v4 = [_DASActivity activityWithName:v44 priority:v45 duration:v46 startingAfter:v47 startingBefore:v48];

          [v4 setRequiresNetwork:{objc_msgSend(v3, "requiresNetwork")}];
          [v4 setLaunchReason:v40];
          [v4 setRequestsApplicationLaunch:0];
          [v4 setGroupName:_DASDefaultContinuedProcessingGroupName];
          v49 = [v3 relatedApplications];
          [v4 setRelatedApplications:v49];

          v50 = [v3 continuedProcessingWrapper];
          v51 = [v50 copy];
          [v4 setContinuedProcessingWrapper:v51];

          v52 = [v4 continuedProcessingWrapper];
          v53 = [v52 title];
          if (v53)
          {
            v54 = v53;
            v55 = [v4 continuedProcessingWrapper];
            v56 = [v55 subtitle];

            if (v56)
            {
LABEL_26:
              v59 = [v3 clientProvidedIdentifier];
              [v4 setClientProvidedIdentifier:v59];

              v60 = [v3 clientProvidedStartDate];
              [v4 setClientProvidedStartDate:v60];

              v61 = [v3 uuid];
              [v4 setUuid:v61];

              v4 = v4;
              v7 = v4;
LABEL_27:

              goto LABEL_28;
            }
          }

          else
          {
          }

          v7 = 0;
          goto LABEL_27;
        }

        v30 = [v3 name];
        v31 = _DASSchedulingPriorityUtility;
        v32 = _DASActivityDurationShort;
        v33 = [v3 startAfter];
        v34 = [v3 startBefore];
        v4 = [_DASActivity activityWithName:v30 priority:v31 duration:v32 startingAfter:v33 startingBefore:v34];

        [v4 setRequiresNetwork:{objc_msgSend(v3, "requiresNetwork")}];
        [v4 setRequiresPlugin:{objc_msgSend(v3, "requiresPlugin")}];
        [v4 setLaunchReason:@"com.apple.das.bghealthresearch"];
        [v4 setRequestsApplicationLaunch:1];
        v35 = [v3 fileProtection];
        [v4 setFileProtection:v35];

        v16 = [v3 clientProvidedStartDate];
        if (v16)
        {
          v36 = [v3 clientProvidedStartDate];
          v37 = [v36 laterDate:v8];
          [v4 setStartAfter:v37];
        }

        else
        {
          [v4 setStartAfter:v8];
        }

        v38 = 600.0;
      }
    }

    v57 = [v4 startAfter];
    v58 = [v57 dateByAddingTimeInterval:v38];
    [v4 setStartBefore:v58];

    goto LABEL_26;
  }

  v7 = 0;
LABEL_28:

LABEL_29:

  return v7;
}

- (void)setSuspendHandler:(id)a3
{
  self->_suspendable = a3 != 0;
  v6 = a3;
  v4 = MEMORY[0x1B8C9D430]();
  suspendHandler = self->_suspendHandler;
  self->_suspendHandler = v4;
}

+ (unint64_t)cleanDuration:(unint64_t)a3
{
  if (_DASActivityDurationVeryLong >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = _DASActivityDurationInterminable;
  }

  if (_DASActivityDurationVeryShort >= a3)
  {
    return _DASActivityDurationVeryShort;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)cleanTransferSize:(unint64_t)a3
{
  result = _DASActivityTransferSizeZero;
  if (_DASActivityTransferSizeZero < a3)
  {
    result = _DASActivityTransferSizeVerySmall;
    if (_DASActivityTransferSizeVerySmall < a3)
    {
      result = _DASActivityTransferSizeSmall;
      if (_DASActivityTransferSizeSmall < a3)
      {
        result = _DASActivityTransferSizeModerate;
        if (_DASActivityTransferSizeModerate < a3)
        {
          result = _DASActivityTransferSizeLarge;
          if (_DASActivityTransferSizeLarge < a3)
          {
            if (_DASActivityTransferSizeVeryLarge >= a3)
            {
              return _DASActivityTransferSizeVeryLarge;
            }

            else
            {
              return _DASActivityTransferSizeGigantic;
            }
          }
        }
      }
    }
  }

  return result;
}

+ (unint64_t)cleanSchedulingPriority:(unint64_t)a3
{
  result = _DASSchedulingPriorityMaintenance;
  if (_DASSchedulingPriorityMaintenance < a3)
  {
    result = _DASSchedulingPriorityBackground;
    if (_DASSchedulingPriorityBackground < a3)
    {
      result = _DASSchedulingPriorityUtility;
      if (_DASSchedulingPriorityUtility < a3)
      {
        result = _DASSchedulingPriorityDefault;
        if (_DASSchedulingPriorityDefault < a3)
        {
          if (_DASSchedulingPriorityUserInitiated >= a3)
          {
            return _DASSchedulingPriorityUserInitiated;
          }

          else
          {
            return _DASSchedulingPriorityUserInitiatedOvercommit;
          }
        }
      }
    }
  }

  return result;
}

- (void)setTransferSize:(unint64_t)a3
{
  if (self->_isUpload)
  {
    self->_uploadSize = a3;
    a3 = _DASActivityTransferSizeZero;
  }

  self->_downloadSize = a3;
}

- (void)setCpuIntensive:(BOOL)a3
{
  if (a3)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_cpuIntensive = a3;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setMemoryIntensive:(BOOL)a3
{
  if (a3)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_memoryIntensive = a3;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setDiskIntensive:(BOOL)a3
{
  if (a3)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_diskIntensive = a3;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setAneIntensive:(BOOL)a3
{
  if (a3)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_aneIntensive = a3;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setGpuIntensive:(BOOL)a3
{
  if (a3)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_gpuIntensive = a3;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setRequiresDeviceInactivity:(BOOL)a3
{
  if (a3 || !self->_cpuIntensive && !self->_diskIntensive && !self->_aneIntensive && !self->_gpuIntensive)
  {
    self->_requiresDeviceInactivity = a3;
  }
}

- (void)setAfterUserIsInactive:(BOOL)a3
{
  if (a3)
  {
    self->_beforeUserIsActive = 0;
    self->_requiresDeviceInactivity = 1;
  }

  self->_afterUserIsInactive = a3;
}

- (void)setBeforeDaysFirstActivity:(BOOL)a3
{
  if (a3)
  {
    self->_darkWakeEligible = 1;
  }

  self->_beforeDaysFirstActivity = a3;
}

- (void)setDarkWakeEligible:(BOOL)a3
{
  if (!a3)
  {
    self->_beforeDaysFirstActivity = 0;
  }

  self->_darkWakeEligible = a3;
}

- (void)setTriggersRestart:(BOOL)a3
{
  if (a3)
  {
    [(_DASActivity *)self setRequiresSignificantUserInactivity:1];
  }

  self->_triggersRestart = a3;
}

- (void)setIsMLBackgroundActivity:(BOOL)a3
{
  if (a3)
  {
    [(_DASActivity *)self setCpuIntensive:1];
    [(_DASActivity *)self setMemoryIntensive:1];
    [(_DASActivity *)self setAneIntensive:1];
    [(_DASActivity *)self setGpuIntensive:1];
    [(_DASActivity *)self setRequiresPlugin:1];
    [(_DASActivity *)self setRequiresDeviceInactivity:1];

    [(_DASActivity *)self setDuration:900];
  }
}

- (void)setIsUpload:(BOOL)a3
{
  if (a3)
  {
    v3 = _DASActivityTransferSizeZero;
    self->_uploadSize = self->_downloadSize;
    self->_downloadSize = v3;
  }

  self->_isUpload = a3;
}

- (void)setRequestsApplicationLaunch:(BOOL)a3
{
  if (a3)
  {
    self->_shouldBePersisted = 1;
    self->_suspendable = 1;
  }

  self->_requestsApplicationLaunch = a3;
}

- (void)setRequestsExtensionLaunch:(BOOL)a3
{
  if (a3)
  {
    self->_shouldBePersisted = 1;
    self->_suspendable = 1;
  }

  self->_requestsExtensionLaunch = a3;
}

- (void)setRequiresSignificantUserInactivity:(BOOL)a3
{
  if (a3 || self->_triggersRestart)
  {
    self->_requiresDeviceInactivity = 1;
  }

  [_DASActivity setBool:"setBool:forUserInfoKey:" forUserInfoKey:?];
}

- (void)setHasMagneticSensitivity:(BOOL)a3
{
  if (a3)
  {
    self->_requiresPlugin = 0;
  }

  [_DASActivity setBool:"setBool:forUserInfoKey:" forUserInfoKey:?];
}

- (BOOL)allowsCompanionExpensiveNetworking
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"allowsCompanionExpensive"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setPercentCompleted:(double)a3
{
  v3 = 0.0;
  if (a3 < 0.0 || (v3 = 0.999, self->_percentCompleted > 0.999))
  {
    self->_percentCompleted = v3;
  }
}

- (BOOL)isSilentPush
{
  v2 = [(_DASActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"notificationpayload"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"aps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 objectForKeyedSubscript:@"badge"];
      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v8 = [v5 objectForKeyedSubscript:@"sound"];
        if (v8)
        {
          v7 = 0;
        }

        else
        {
          v9 = [v5 objectForKeyedSubscript:@"alert"];
          v7 = v9 == 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setGroupName:(id)a3
{
  objc_storeStrong(&self->_groupName, a3);

  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setInternalGroupNames:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalGroupLock);
  v5 = [v4 copy];

  internalGroupNames = self->_internalGroupNames;
  self->_internalGroupNames = v5;

  os_unfair_lock_unlock(&self->_internalGroupLock);

  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setRemoteDevice:(id)a3
{
  objc_storeStrong(&self->_remoteDevice, a3);
  if (a3 && !self->_targetDevice)
  {

    [(_DASActivity *)self setTargetDevice:3];
  }
}

- (void)setIsContactTracingBackgroundActivity:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(_DASActivity *)self setObject:v5 forUserInfoKey:@"isCTActivity"];

  schedulingPriority = self->_schedulingPriority;
  v7 = _DASSchedulingPriorityUtility;
  if (!v3)
  {
    if (schedulingPriority != _DASSchedulingPriorityUtility)
    {
      return;
    }

    v7 = _DASSchedulingPriorityBackground;
    goto LABEL_6;
  }

  if (schedulingPriority < _DASSchedulingPriorityUtility)
  {
LABEL_6:
    self->_schedulingPriority = v7;
  }
}

- (void)setObject:(id)a3 forUserInfoKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_userInfoLock);
  [(NSMutableDictionary *)self->_userInfo setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (id)objectForUserInfoKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_userInfoLock);
  v5 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_userInfoLock);

  return v5;
}

- (void)setBool:(BOOL)a3 forUserInfoKey:(id)a4
{
  if (a3)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  [(_DASActivity *)self setObject:v4 forUserInfoKey:a4];
}

- (BOOL)BOOLForUserInfoKey:(id)a3
{
  v3 = [(_DASActivity *)self objectForUserInfoKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_userInfoLock);
  v5 = [v4 mutableCopy];

  userInfo = self->_userInfo;
  self->_userInfo = v5;

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (void)setConstraintsWithXPCDictionary:(id)a3
{
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __48___DASActivity_setConstraintsWithXPCDictionary___block_invoke;
  applier[3] = &unk_1E7C8F558;
  applier[4] = self;
  xpc_dictionary_apply(a3, applier);
}

- (double)compatibilityWith:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = 1.0;
  if ([(_DASActivity *)self isEqual:v7])
  {
    goto LABEL_88;
  }

  v9 = [(_DASActivity *)self widgetID];
  if (v9 && ([v7 widgetID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v11 = [(_DASActivity *)self widgetBudgetID];
    if (!v11)
    {

      if (v9)
      {
      }

      goto LABEL_13;
    }

    v12 = [v7 widgetBudgetID];

    if (v9)
    {
    }

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v13 = [(_DASActivity *)self relatedApplications];
  v14 = [v13 firstObject];
  v15 = [v7 relatedApplications];
  v3 = [v15 firstObject];
  v4 = [v14 isEqual:v3];

  if (v4)
  {
    goto LABEL_88;
  }

LABEL_13:
  v16 = [(_DASActivity *)self isIntensive];
  v17 = [v7 isIntensive];
  v18 = [(_DASActivity *)self fastPass];
  if (v18)
  {
    v3 = [(_DASActivity *)self fastPass];
    v4 = [v3 processingTaskIdentifiers];
    v5 = [v7 name];
    if ([v4 containsObject:v5])
    {

LABEL_16:
      v8 = -1.0;
      goto LABEL_88;
    }
  }

  v19 = [v7 fastPass];
  if (v19)
  {
    v65 = v17;
    v66 = v16;
    v20 = [v7 fastPass];
    v21 = [v20 processingTaskIdentifiers];
    v22 = [(_DASActivity *)self name];
    v64 = [v21 containsObject:v22];

    if (v18)
    {
    }

    v8 = -1.0;
    v17 = v65;
    v16 = v66;
    if (v64)
    {
      goto LABEL_88;
    }
  }

  else
  {

    if (v18)
    {
    }
  }

  v23 = 0.0;
  if ((v16 & v17) == 1)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v36 = [(_DASActivity *)self groupName];
      if (([v36 isEqualToString:_DASDefaultIntensiveGroupName] & 1) == 0)
      {

        goto LABEL_16;
      }

      v37 = [v7 groupName];
      v38 = [v37 isEqualToString:_DASDefaultIntensiveGroupName];

      v8 = -1.0;
      if (!v38)
      {
        goto LABEL_88;
      }
    }

    v24 = [(_DASActivity *)self isCPUIntensive];
    if ([(_DASActivity *)self isMemoryIntensive])
    {
      v24 |= 2uLL;
    }

    if ([(_DASActivity *)self isDiskIntensive])
    {
      v24 |= 4uLL;
    }

    if ([(_DASActivity *)self isANEIntensive])
    {
      v24 |= 8uLL;
    }

    if ([(_DASActivity *)self isGPUIntensive])
    {
      v24 |= 0x10uLL;
    }

    v25 = [v7 isCPUIntensive];
    if ([v7 isMemoryIntensive])
    {
      v25 |= 2uLL;
    }

    if ([v7 isDiskIntensive])
    {
      v25 |= 4uLL;
    }

    if ([v7 isANEIntensive])
    {
      v25 |= 8uLL;
    }

    v26 = [v7 isGPUIntensive];
    v27 = v25 | 0x10;
    if (!v26)
    {
      v27 = v25;
    }

    if ((v27 & v24) != 0)
    {
      v28 = +[_DASPlistParser sharedInstance];
      v29 = [v28 suspensionThreshold];

      v30 = [v7 suspendRequestDate];
      if (v30)
      {
        v31 = v30;
        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = 61;
        }

        v33 = [v7 suspendRequestDate];
        [v33 timeIntervalSinceNow];
        v35 = -v34;

        if (v35 <= v32)
        {
          v8 = 0.1;
        }

        else
        {
          v8 = 0.0;
        }
      }

      else
      {
        v8 = 0.1;
      }

      goto LABEL_88;
    }

    v23 = 0.5;
  }

  if (![v7 triggersRestart])
  {
    goto LABEL_60;
  }

  v39 = [v7 startDate];
  v8 = -1.0;
  if (v39)
  {
    v40 = v39;
    v41 = [v7 startDate];
    [v41 timeIntervalSinceNow];
    v43 = v42;

    if (v43 < 0.0)
    {
      v43 = -v43;
    }

    if (v43 >= 900.0)
    {
LABEL_60:
      bundleId = self->_bundleId;
      if (bundleId)
      {
        v45 = [v7 bundleId];
        v46 = [(NSString *)bundleId isEqual:v45];

        if (v46)
        {
          v23 = v23 + 0.5;
        }
      }

      runWhenAppLaunchUnlikely = self->_runWhenAppLaunchUnlikely;
      if (runWhenAppLaunchUnlikely == [v7 runWhenAppLaunchUnlikely])
      {
        if (self->_relatedApplications)
        {
          v48 = [v7 relatedApplications];

          if (v48)
          {
            v49 = [v7 relatedApplications];
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v50 = self->_relatedApplications;
            v51 = [(NSArray *)v50 countByEnumeratingWithState:&v67 objects:v71 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v68;
              do
              {
                for (i = 0; i != v52; ++i)
                {
                  if (*v68 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  if ([v49 containsObject:*(*(&v67 + 1) + 8 * i)])
                  {
                    v23 = v23 + 0.1;
                  }
                }

                v52 = [(NSArray *)v50 countByEnumeratingWithState:&v67 objects:v71 count:16];
              }

              while (v52);
            }
          }
        }
      }

      if (self->_requiresNetwork && [v7 requiresNetwork])
      {
        if ([v7 noTransferSizeSpecified])
        {
          v55 = _DASActivityTransferSizeSmall;
        }

        else
        {
          v55 = [v7 downloadSize];
        }

        v56 = v55 + 2 * [v7 uploadSize];
        v57 = [(_DASActivity *)self noTransferSizeSpecified];
        p_downloadSize = &self->_downloadSize;
        if (v57)
        {
          p_downloadSize = &_DASActivityTransferSizeSmall;
        }

        v59 = *p_downloadSize + 2 * self->_uploadSize;
        v60 = log((_DASActivityTransferSizeSmall * _DASActivityTransferSizeSmall));
        v23 = v23 + fmax((v60 - log((v59 * v56))) / v60, 0.0);
      }

      v61 = 1.0;
      if (v23 <= 1.0)
      {
        v61 = v23;
      }

      v8 = fmax(v61, -1.0);
    }
  }

LABEL_88:

  v62 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)timewiseEligibleAtDate:(id)a3
{
  v4 = a3;
  if ([(_DASActivity *)self isSoftwareUpdateActivity]&& ![(_DASActivity *)self useStatisticalModelForTriggersRestart]|| self->_beforeDaysFirstActivity)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_DASActivity *)self startAfter];
    [v4 timeIntervalSinceDate:v6];
    v5 = v7 > 0.0 || [(_DASActivity *)self userRequestedBackupTask];
  }

  return v5;
}

- (BOOL)overdueAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivity *)self startBefore];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7 > 0.0;
}

- (BOOL)significantlyOverdueAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivity *)self startBefore];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7 > 86400.0;
}

- (BOOL)ckPushContentMatches:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivity *)self objectForUserInfoKey:@"notificationpayload"];
  v6 = [v5 objectForKeyedSubscript:@"ck"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"notificationpayload"];
  v9 = [v8 objectForKeyedSubscript:@"ck"];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37___DASActivity_ckPushContentMatches___block_invoke;
    v12[3] = &unk_1E7C8F5A8;
    v13 = v9;
    v14 = &v15;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

- (BOOL)isIdenticalLaunchTo:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivity *)self name];
  v6 = [v4 name];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(_DASActivity *)self relatedApplications];
    v8 = [v7 firstObject];
    v9 = [v4 relatedApplications];
    v10 = [v9 firstObject];
    if ([v8 isEqualToString:v10])
    {
      v11 = [(_DASActivity *)self launchReason];
      v12 = [v4 launchReason];
      if ([v11 isEqualToString:v12])
      {
        v15 = [(_DASActivity *)self launchReason];
        if ([v15 isEqualToString:@"com.apple.das.launchreason.push"])
        {
          v13 = [(_DASActivity *)self ckPushContentMatches:v4];
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)keepsPrevious
{
  v3 = [(_DASActivity *)self launchReason];
  if ([v3 isEqualToString:@"com.apple.duetactivity.launchreason.nsurlsessioncomplete"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_DASActivity *)self launchReason];
    v4 = [v5 isEqualToString:@"com.apple.duetactivity.launchreason.wkpendingdata"];
  }

  return v4;
}

- (BOOL)overwritesPrevious
{
  v3 = [(_DASActivity *)self launchReason];
  if ([v3 isEqualToString:@"com.apple.das.launchreason.push"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_DASActivity *)self launchReason];
    v4 = [v5 isEqualToString:@"_DASExtLaunchMLCompute"];
  }

  return v4;
}

- (BOOL)isPrioritizedIdleStackTasks
{
  v3 = [(_DASActivity *)self name];
  if ([v3 containsString:@"com.apple.idleStack_med"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_DASActivity *)self name];
    v4 = [v5 containsString:@"com.apple.idleStack_high"];
  }

  return v4;
}

- (id)dependencyForIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_DASActivity *)self dependencies];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)policyScores
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = self;
  objc_sync_enter(v4);
  policyResponseMetadata = v4->_policyResponseMetadata;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28___DASActivity_policyScores__block_invoke;
  v8[3] = &unk_1E7C8F5D0;
  v6 = v3;
  v9 = v6;
  [(NSMutableDictionary *)policyResponseMetadata enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v4);

  return v6;
}

- (BOOL)shouldReplaceActivity:(id)a3 andKeepsSubmitted:(BOOL *)a4
{
  v6 = a3;
  v7 = [(_DASActivity *)self clientProvidedIdentifier];
  v8 = [v6 clientProvidedIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(_DASActivity *)self launchReason];
    v11 = [v6 launchReason];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = [(_DASActivity *)self launchReason];
      if ([v13 isEqualToString:@"com.apple.das.bgprocessing"])
      {
        v14 = [(_DASActivity *)self requiresPlugin];
        if (v14 != [v6 requiresPlugin])
        {
LABEL_12:

          goto LABEL_22;
        }

        v15 = [(_DASActivity *)self requiresNetwork];
        v16 = [v6 requiresNetwork];

        if (v15 != v16)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v13 = [(_DASActivity *)self launchReason];
      if ([v13 isEqualToString:@"com.apple.das.bghealthresearch"])
      {
        v19 = [(_DASActivity *)self requiresPlugin];
        if (v19 != [v6 requiresPlugin])
        {
          goto LABEL_12;
        }

        v20 = [(_DASActivity *)self requiresNetwork];
        if (v20 != [v6 requiresNetwork])
        {
          goto LABEL_12;
        }

        v32 = [(_DASActivity *)self fileProtection];
        v33 = [v6 fileProtection];
        v34 = [v32 isEqual:v33];

        if (!v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v21 = [(_DASActivity *)self clientProvidedStartDate];
      v22 = [v6 clientProvidedStartDate];
      v23 = v22 != 0;

      if ((v21 == 0) != v23)
      {
        v24 = [(_DASActivity *)self clientProvidedStartDate];
        if (v24)
        {
          v25 = v24;
          v26 = [v6 clientProvidedStartDate];
          if (v26)
          {
            v27 = v26;
            v28 = [(_DASActivity *)self clientProvidedStartDate];
            v29 = [v6 clientProvidedStartDate];
            [v28 timeIntervalSinceDate:v29];
            v31 = v30;

            if (v31 < 0.0)
            {
              v31 = -v31;
            }

            if (v31 > 1.0)
            {
              goto LABEL_22;
            }
          }

          else
          {
          }
        }

        v18 = 0;
        v17 = 0;
        goto LABEL_23;
      }
    }

LABEL_22:
    v18 = 1;
    v17 = 1;
    goto LABEL_23;
  }

  v17 = 0;
  v18 = 1;
LABEL_23:
  *a4 = v18;

  return v17;
}

- (void)reconcileWithActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  obj = v4;
  objc_sync_enter(obj);
  v6 = [(_DASActivity *)v5 uuid];
  v7 = [obj uuid];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [(_DASActivity *)v5 percentCompleted];
    v10 = v9;
    [obj percentCompleted];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    [(_DASActivity *)v5 setPercentCompleted:v11];
    [obj lastComputedScore];
    [(_DASActivity *)v5 setLastComputedScore:?];
    [obj predictedOptimalScore];
    [(_DASActivity *)v5 setPredictedOptimalScore:?];
    -[_DASActivity setLastDenialValue:](v5, "setLastDenialValue:", [obj lastDenialValue]);
    -[_DASActivity setWasForceRun:](v5, "setWasForceRun:", [obj wasForceRun]);
    -[_DASActivity setBypassesPredictions:](v5, "setBypassesPredictions:", [obj bypassesPredictions]);
    -[_DASActivity setStaticPriority:](v5, "setStaticPriority:", [obj staticPriority]);
    v12 = [obj assertion];
    [(_DASActivity *)v5 setAssertion:v12];

    v13 = [obj submitDate];
    v14 = [v13 copy];
    [(_DASActivity *)v5 setSubmitDate:v14];

    v15 = [obj predictedOptimalStartDate];
    v16 = [v15 copy];
    [(_DASActivity *)v5 setPredictedOptimalStartDate:v16];

    v17 = [obj lastScored];
    v18 = [v17 copy];
    [(_DASActivity *)v5 setLastScored:v18];

    v19 = [obj suspendRequestDate];
    v20 = [v19 copy];
    [(_DASActivity *)v5 setSuspendRequestDate:v20];

    v21 = [obj policyResponseMetadata];
    v22 = [v21 mutableCopy];
    [(_DASActivity *)v5 setPolicyResponseMetadata:v22];

    v23 = [obj startConditions];
    v24 = [v23 mutableCopy];
    [(_DASActivity *)v5 setStartConditions:v24];

    v25 = [obj limitationResponse];
    v26 = [v25 mutableCopy];
    [(_DASActivity *)v5 setLimitationResponse:v26];

    v27 = [obj progress];
    [(_DASActivity *)v5 setProgress:v27];

    -[_DASActivity setMaximumRuntime:](v5, "setMaximumRuntime:", [obj maximumRuntime]);
    v28 = [obj internalGroupNames];
    v29 = [v28 copy];
    [(_DASActivity *)v5 setInternalGroupNames:v29];

    -[_DASActivity setUninterruptibleDuration:](v5, "setUninterruptibleDuration:", [obj uninterruptibleDuration]);
    -[_DASActivity setRequestsImmediateRuntime:](v5, "setRequestsImmediateRuntime:", [obj requestsImmediateRuntime]);
    v30 = [obj rateLimitConfigurationName];
    [(_DASActivity *)v5 setRateLimitConfigurationName:v30];

    v31 = [obj widgetID];
    [(_DASActivity *)v5 setWidgetID:v31];

    v32 = [obj widgetBudgetID];
    [(_DASActivity *)v5 setWidgetBudgetID:v32];

    v33 = [obj producedResultIdentifiers];
    v34 = [v33 copy];
    [(_DASActivity *)v5 setProducedResultIdentifiers:v34];

    v35 = [obj dependencies];
    v36 = [v35 copy];
    [(_DASActivity *)v5 setDependencies:v36];
  }

  objc_sync_exit(obj);

  objc_sync_exit(v5);
}

- (void)encodeWithCoder:(id)a3
{
  v49 = a3;
  [v49 encodeObject:self->_name forKey:@"name"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_schedulingPriority];
  [v49 encodeObject:v4 forKey:@"schedPriority"];

  v5 = [(_DASActivity *)self startBefore];
  [v49 encodeObject:v5 forKey:@"before"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  [v49 encodeObject:v6 forKey:@"duration"];

  v7 = [(_DASActivity *)self startAfter];
  [v49 encodeObject:v7 forKey:@"after"];

  [v49 encodeObject:self->_uuid forKey:@"uuid"];
  if ([(_DASFileProtection *)self->_fileProtection indicatesProtection])
  {
    [v49 encodeObject:self->_fileProtection forKey:@"fileProtection"];
  }

  if (self->_suspendable)
  {
    [v49 encodeBool:1 forKey:@"suspendable"];
  }

  if (self->_cancelAfterDeadline)
  {
    [v49 encodeBool:1 forKey:@"deadlineCancel"];
  }

  if (self->_requiresNetwork)
  {
    [v49 encodeBool:1 forKey:@"reqNW"];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_downloadSize];
    [v49 encodeObject:v8 forKey:@"nwDownloadSize"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uploadSize];
    [v49 encodeObject:v9 forKey:@"nwUploadSize"];

    [v49 encodeBool:self->_isUpload forKey:@"isUpload"];
    [v49 encodeBool:self->_requiresInexpensiveNetworking forKey:@"cheapNW"];
    [v49 encodeBool:self->_requiresUnconstrainedNetworking forKey:@"unconstrainedNW"];
  }

  if (self->_shouldWakeDevice)
  {
    [v49 encodeBool:1 forKey:@"shouldWakeDevice"];
  }

  if (self->_cpuIntensive)
  {
    [v49 encodeBool:1 forKey:@"cpu"];
  }

  if (self->_memoryIntensive)
  {
    [v49 encodeBool:1 forKey:@"mem"];
  }

  if (self->_diskIntensive)
  {
    [v49 encodeBool:1 forKey:@"disk"];
  }

  if (self->_aneIntensive)
  {
    [v49 encodeBool:1 forKey:@"ane"];
  }

  if (self->_gpuIntensive)
  {
    [v49 encodeBool:1 forKey:@"gpu"];
  }

  if (self->_afterUserIsInactive)
  {
    [v49 encodeBool:1 forKey:@"afterInactive"];
  }

  if (self->_beforeUserIsActive)
  {
    [v49 encodeBool:1 forKey:@"beforeActive"];
  }

  if (self->_requiresDeviceInactivity)
  {
    [v49 encodeBool:1 forKey:@"inactive"];
  }

  if (self->_darkWakeEligible)
  {
    [v49 encodeBool:1 forKey:@"darkWake"];
  }

  if (self->_beforeDaysFirstActivity)
  {
    [v49 encodeBool:1 forKey:@"apprefresh"];
  }

  if (self->_interval != 0.0)
  {
    [v49 encodeDouble:@"interval" forKey:?];
  }

  if (self->_requiresPlugin)
  {
    [v49 encodeBool:1 forKey:@"plugin"];
  }

  if (self->_dataBudgeted)
  {
    [v49 encodeBool:1 forKey:@"dataBudgeted"];
  }

  if (self->_triggersRestart)
  {
    [v49 encodeBool:1 forKey:@"restart"];
  }

  if (self->_preventDeviceSleep)
  {
    [v49 encodeBool:1 forKey:@"preventSleep"];
  }

  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    [v49 encodeInteger:targetDevice forKey:@"target"];
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    [v49 encodeObject:remoteDevice forKey:@"remote"];
  }

  if (self->_requiresRemoteDeviceWake)
  {
    [v49 encodeBool:1 forKey:@"remoteDeviceWake"];
  }

  if (self->_supportsAnyApplication)
  {
    [v49 encodeBool:1 forKey:@"anyApp"];
  }

  if (self->_requestsApplicationLaunch)
  {
    [v49 encodeBool:1 forKey:@"appLaunch"];
  }

  if (self->_requestsImmediateRuntime)
  {
    [v49 encodeBool:1 forKey:@"requestsimmediateRuntime"];
  }

  if (self->_requestsExtensionLaunch)
  {
    [v49 encodeBool:1 forKey:@"extLaunch"];
  }

  extensionIdentifier = self->_extensionIdentifier;
  if (extensionIdentifier)
  {
    [v49 encodeObject:extensionIdentifier forKey:@"extId"];
  }

  if (self->_shouldBePersisted)
  {
    [v49 encodeBool:1 forKey:@"persist"];
  }

  launchReason = self->_launchReason;
  if (launchReason)
  {
    [v49 encodeObject:launchReason forKey:@"launchReason"];
  }

  relatedApplications = self->_relatedApplications;
  if (relatedApplications)
  {
    [v49 encodeObject:relatedApplications forKey:@"related"];
  }

  if (self->_runWhenAppLaunchUnlikely)
  {
    [v49 encodeBool:1 forKey:@"runWhenAppLaunchUnkely"];
  }

  involvedProcesses = self->_involvedProcesses;
  if (involvedProcesses)
  {
    [v49 encodeObject:involvedProcesses forKey:@"involvedProcesses"];
  }

  groupName = self->_groupName;
  if (groupName)
  {
    [v49 encodeObject:groupName forKey:@"groupName"];
  }

  v17 = [(_DASActivity *)self userInfo];
  v18 = [v17 mutableCopy];

  if ([v18 count])
  {
    v19 = [v18 objectForKeyedSubscript:@"progress"];
    if (v19)
    {
      v20 = [[_DASActivityProgressWrapper alloc] initWithProgress:v19];
      [v18 setObject:v20 forKeyedSubscript:@"progress"];
    }

    v21 = [v18 copy];
    [v49 encodeObject:v21 forKey:@"userInfo"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v49 encodeObject:bundleId forKey:@"bundleID"];
  }

  v23 = [(_DASActivity *)self startDate];

  if (v23)
  {
    v24 = [(_DASActivity *)self startDate];
    [v49 encodeObject:v24 forKey:@"startDate"];
  }

  submitDate = self->_submitDate;
  if (submitDate)
  {
    [v49 encodeObject:submitDate forKey:@"submitDate"];
  }

  v26 = [(_DASActivity *)self lastScored];

  if (v26)
  {
    [v49 encodeDouble:@"lastScore" forKey:self->_lastComputedScore];
    v27 = [(_DASActivity *)self lastScored];
    [v49 encodeObject:v27 forKey:@"lastScored"];
  }

  v28 = [(_DASActivity *)self predictedOptimalStartDate];

  if (v28)
  {
    v29 = [(_DASActivity *)self predictedOptimalStartDate];
    [v49 encodeObject:v29 forKey:@"predStart"];

    [v49 encodeDouble:@"predOpt" forKey:self->_predictedOptimalScore];
  }

  motionState = self->_motionState;
  if (motionState)
  {
    [v49 encodeInteger:motionState forKey:@"motionState"];
  }

  v31 = v49;
  if (self->_delayedStart)
  {
    [v49 encodeBool:1 forKey:@"delayedStart"];
    v31 = v49;
  }

  if (self->_pid >= 1)
  {
    [v49 encodeInt:? forKey:?];
    v31 = v49;
  }

  clientDataBudgetName = self->_clientDataBudgetName;
  if (clientDataBudgetName)
  {
    [v49 encodeObject:clientDataBudgetName forKey:@"clientCellBudget"];
    v31 = v49;
  }

  clientName = self->_clientName;
  if (clientName)
  {
    [v49 encodeObject:clientName forKey:@"clientName"];
    v31 = v49;
  }

  if (self->_deferred)
  {
    [v49 encodeBool:1 forKey:@"deferred"];
    v31 = v49;
  }

  if (self->_percentCompleted > 0.0)
  {
    [v49 encodeDouble:@"percentCompleted" forKey:?];
    v31 = v49;
  }

  completionStatus = self->_completionStatus;
  if (completionStatus)
  {
    [v49 encodeInteger:completionStatus forKey:@"completionStatus"];
    v31 = v49;
  }

  preClearedMode = self->_preClearedMode;
  if (preClearedMode)
  {
    [v49 encodeInteger:preClearedMode forKey:@"preCleared"];
    v31 = v49;
  }

  if (self->_requiresBuddyComplete)
  {
    [v49 encodeBool:1 forKey:@"buddyComplete"];
    v31 = v49;
  }

  [v31 encodeInt64:self->_userIdentifier forKey:@"userIdentifier"];
  if (self->_runOnAppForeground)
  {
    [v49 encodeBool:1 forKey:@"runOnAppFG"];
  }

  widgetBudgetID = self->_widgetBudgetID;
  if (widgetBudgetID)
  {
    [v49 encodeObject:widgetBudgetID forKey:@"widgetBudgetID"];
  }

  widgetID = self->_widgetID;
  if (widgetID)
  {
    [v49 encodeObject:widgetID forKey:@"widgetID"];
  }

  rateLimitConfigurationName = self->_rateLimitConfigurationName;
  if (rateLimitConfigurationName)
  {
    [v49 encodeObject:rateLimitConfigurationName forKey:@"rateLimitConfigName"];
  }

  limitationResponse = self->_limitationResponse;
  if (limitationResponse)
  {
    [v49 encodeObject:limitationResponse forKey:@"limitationResponses"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v49 encodeObject:serviceName forKey:@"serviceNameKey"];
  }

  if (self->_backlogged)
  {
    [v49 encodeBool:1 forKey:@"backlogged"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [v49 encodeObject:activityType forKey:@"activityType"];
  }

  featureCodes = self->_featureCodes;
  if (featureCodes)
  {
    [v49 encodeObject:featureCodes forKey:@"featureCodes"];
  }

  fastPass = self->_fastPass;
  if (fastPass)
  {
    [v49 encodeObject:fastPass forKey:@"fastPass"];
  }

  producedResultIdentifiers = self->_producedResultIdentifiers;
  if (producedResultIdentifiers)
  {
    [v49 encodeObject:producedResultIdentifiers forKey:@"producedResultIdentifiers"];
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    [v49 encodeObject:dependencies forKey:@"dependencies"];
  }

  continuedProcessingWrapper = self->_continuedProcessingWrapper;
  if (continuedProcessingWrapper)
  {
    [v49 encodeObject:continuedProcessingWrapper forKey:@"continuedProcessingWrapper"];
  }

  diskVolume = self->_diskVolume;
  if (diskVolume)
  {
    [v49 encodeObject:diskVolume forKey:@"diskVolume"];
  }

  if (self->_lastDenialValue)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v49 encodeObject:v48 forKey:@"lastDenialValue"];
  }
}

- (void)setRelatedApplications:(id)a3
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [a3 copy];
  v5 = [v4 orderedSetWithArray:v8];
  v6 = [v5 array];
  relatedApplications = self->_relatedApplications;
  self->_relatedApplications = v6;
}

- (void)setInvolvedProcesses:(id)a3
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [a3 copy];
  v5 = [v4 orderedSetWithArray:v8];
  v6 = [v5 array];
  involvedProcesses = self->_involvedProcesses;
  self->_involvedProcesses = v6;
}

- (_DASActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v126.receiver = self;
  v126.super_class = _DASActivity;
  v5 = [(_DASActivity *)&v126 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schedPriority"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"before"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"after"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    v12 = 0;
    if (!v6 || !v7 || !v8 || !v9 || !v10 || !v11)
    {
      goto LABEL_70;
    }

    v13 = v11;
    objc_storeStrong(&v5->_name, v6);
    v5->_schedulingPriority = [v7 unsignedIntegerValue];
    v5->_duration = [v8 unsignedIntegerValue];
    [(_DASActivity *)v5 setStartBefore:v9];
    [(_DASActivity *)v5 setStartAfter:v10];
    v122 = v13;
    objc_storeStrong(&v5->_uuid, v13);
    if ([v4 containsValueForKey:@"fileProtection"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileProtection"];
      if (!v14)
      {
        v12 = 0;
LABEL_69:
        v11 = v122;
LABEL_70:

        goto LABEL_71;
      }
    }

    else
    {
      v14 = +[_DASFileProtection none];
    }

    fileProtection = v5->_fileProtection;
    v5->_fileProtection = v14;

    v5->_suspendable = [v4 decodeBoolForKey:@"suspendable"];
    v5->_cancelAfterDeadline = [v4 decodeBoolForKey:@"deadlineCancel"];
    v5->_shouldWakeDevice = [v4 decodeBoolForKey:@"shouldWakeDevice"];
    v5->_requiresNetwork = [v4 decodeBoolForKey:@"reqNW"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nwDownloadSize"];
    v17 = v16;
    if (v16)
    {
      v5->_downloadSize = [v16 unsignedIntegerValue];
    }

    v117 = v17;
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nwUploadSize"];
    v19 = v18;
    if (v18)
    {
      v5->_uploadSize = [v18 unsignedIntegerValue];
    }

    v116 = v19;
    v118 = v10;
    v119 = v8;
    v120 = v7;
    v121 = v6;
    v5->_isUpload = [v4 decodeBoolForKey:@"isUpload"];
    v5->_requiresInexpensiveNetworking = [v4 decodeBoolForKey:@"cheapNW"];
    v5->_requiresUnconstrainedNetworking = [v4 decodeBoolForKey:@"unconstrainedNW"];
    v5->_cpuIntensive = [v4 decodeBoolForKey:@"cpu"];
    v5->_memoryIntensive = [v4 decodeBoolForKey:@"mem"];
    v5->_diskIntensive = [v4 decodeBoolForKey:@"disk"];
    v5->_aneIntensive = [v4 decodeBoolForKey:@"ane"];
    v5->_gpuIntensive = [v4 decodeBoolForKey:@"gpu"];
    v5->_afterUserIsInactive = [v4 decodeBoolForKey:@"afterInactive"];
    v5->_beforeUserIsActive = [v4 decodeBoolForKey:@"beforeActive"];
    v5->_beforeUserIsActive = [v4 decodeBoolForKey:@"beforeActive"];
    v5->_requiresDeviceInactivity = [v4 decodeBoolForKey:@"inactive"];
    v5->_darkWakeEligible = [v4 decodeBoolForKey:@"darkWake"];
    v5->_beforeDaysFirstActivity = [v4 decodeBoolForKey:@"apprefresh"];
    [v4 decodeDoubleForKey:@"interval"];
    v5->_interval = v20;
    v5->_requiresPlugin = [v4 decodeBoolForKey:@"plugin"];
    v5->_dataBudgeted = [v4 decodeBoolForKey:@"dataBudgeted"];
    v5->_triggersRestart = [v4 decodeBoolForKey:@"restart"];
    v5->_preventDeviceSleep = [v4 decodeBoolForKey:@"preventSleep"];
    v5->_supportsAnyApplication = [v4 decodeBoolForKey:@"anyApp"];
    v5->_requestsApplicationLaunch = [v4 decodeBoolForKey:@"appLaunch"];
    v5->_requestsExtensionLaunch = [v4 decodeBoolForKey:@"extLaunch"];
    v5->_requestsImmediateRuntime = [v4 decodeBoolForKey:@"requestsimmediateRuntime"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extId"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v21;

    v5->_shouldBePersisted = [v4 decodeBoolForKey:@"persist"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v23;

    if ([v4 containsValueForKey:@"target"])
    {
      v5->_targetDevice = [v4 decodeIntForKey:@"target"];
    }

    v5->_requiresRemoteDeviceWake = [v4 decodeBoolForKey:@"remoteDeviceWake"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remote"];
    remoteDevice = v5->_remoteDevice;
    v5->_remoteDevice = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v123 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:? forKey:?];
    v30 = [v29 mutableCopy];

    if ([v30 count])
    {
      v31 = 0;
      do
      {
        v32 = [v30 objectAtIndexedSubscript:v31];
        v33 = [v32 dk_dedup];
        [v30 setObject:v33 atIndexedSubscript:v31];

        ++v31;
      }

      while (v31 < [v30 count]);
    }

    v34 = [v30 copy];
    relatedApplications = v5->_relatedApplications;
    v5->_relatedApplications = v34;

    v36 = [v4 decodeObjectOfClasses:v123 forKey:@"involvedProcesses"];
    v37 = [v36 mutableCopy];

    if ([v37 count])
    {
      v38 = 0;
      do
      {
        v39 = [v37 objectAtIndexedSubscript:v38];
        v40 = [v39 dk_dedup];
        [v37 setObject:v40 atIndexedSubscript:v38];

        ++v38;
      }

      while (v38 < [v37 count]);
    }

    v41 = [v37 copy];
    involvedProcesses = v5->_involvedProcesses;
    v5->_involvedProcesses = v41;

    v5->_runWhenAppLaunchUnlikely = [v4 decodeBoolForKey:@"runWhenAppLaunchUnkely"];
    v43 = +[_DASActivity validClassesForUserInfoSerialization];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"userInfo"];

    v45 = [MEMORY[0x1E695DF90] dictionary];
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __30___DASActivity_initWithCoder___block_invoke;
    v124[3] = &unk_1E7C8F530;
    v114 = v45;
    v115 = v44;
    v125 = v114;
    [v44 enumerateKeysAndObjectsUsingBlock:v124];
    objc_storeStrong(&v5->_userInfo, v45);
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    v113 = v48;
    if (([(__CFString *)v48 isEqualToString:_DASDefaultGroupName]& 1) != 0)
    {
      v49 = _DASDefaultGroupName;
    }

    else if ([(__CFString *)v48 isEqualToString:_DASDefaultNetworkGroupName])
    {
      v49 = _DASDefaultNetworkGroupName;
    }

    else if ([(__CFString *)v48 isEqualToString:_DASDefaultIntensiveGroupName])
    {
      v49 = _DASDefaultIntensiveGroupName;
    }

    else if ([(__CFString *)v48 isEqualToString:_DASDefaultRemoteGroupName])
    {
      v49 = _DASDefaultRemoteGroupName;
    }

    else
    {
      v49 = v48;
    }

    objc_storeStrong(&v5->_groupName, v49);
    v50 = [MEMORY[0x1E695DFA8] set];
    internalGroupNames = v5->_internalGroupNames;
    v5->_internalGroupNames = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(_DASActivity *)v5 setStartDate:v52];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submitDate"];
    submitDate = v5->_submitDate;
    v5->_submitDate = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastScored"];
    [(_DASActivity *)v5 setLastScored:v55];

    [v4 decodeDoubleForKey:@"lastScore"];
    v5->_lastComputedScore = v56;
    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predStart"];
    predictedOptimalStartDate = v5->_predictedOptimalStartDate;
    v5->_predictedOptimalStartDate = v57;

    [v4 decodeDoubleForKey:@"predOpt"];
    v5->_predictedOptimalScore = v59;
    if ([v4 containsValueForKey:@"motionState"])
    {
      v5->_motionState = [v4 decodeIntegerForKey:@"motionState"];
    }

    if ([v4 containsValueForKey:@"deferred"])
    {
      v5->_deferred = [v4 decodeBoolForKey:@"deferred"];
    }

    v5->_delayedStart = [v4 decodeBoolForKey:@"delayedStart"];
    v5->_pid = [v4 decodeIntForKey:@"pid"];
    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientCellBudget"];
    clientDataBudgetName = v5->_clientDataBudgetName;
    v5->_clientDataBudgetName = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    v63 = [v62 dk_dedup];
    clientName = v5->_clientName;
    v5->_clientName = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v65;

    [v4 decodeDoubleForKey:@"percentCompleted"];
    v5->_percentCompleted = v67;
    v5->_completionStatus = [v4 decodeIntegerForKey:@"completionStatus"];
    if ([v4 containsValueForKey:@"preCleared"])
    {
      v5->_preClearedMode = [v4 decodeIntegerForKey:@"preCleared"];
    }

    if ([v4 containsValueForKey:@"buddyComplete"])
    {
      v5->_requiresBuddyComplete = [v4 decodeBoolForKey:@"buddyComplete"];
    }

    if ([v4 containsValueForKey:@"userIdentifier"])
    {
      v5->_userIdentifier = [v4 decodeInt64ForKey:@"userIdentifier"];
    }

    v5->_runOnAppForeground = [v4 decodeBoolForKey:@"runOnAppFG"];
    v5->_backlogged = [v4 decodeBoolForKey:@"backlogged"];
    if ([v4 containsValueForKey:@"widgetBudgetID"])
    {
      v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetBudgetID"];
      widgetBudgetID = v5->_widgetBudgetID;
      v5->_widgetBudgetID = v68;
    }

    if ([v4 containsValueForKey:@"widgetID"])
    {
      v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetID"];
      widgetID = v5->_widgetID;
      v5->_widgetID = v70;
    }

    if ([v4 containsValueForKey:@"rateLimitConfigName"])
    {
      v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rateLimitConfigName"];
      rateLimitConfigurationName = v5->_rateLimitConfigurationName;
      v5->_rateLimitConfigurationName = v72;
    }

    if ([v4 containsValueForKey:@"limitationResponses"])
    {
      v74 = MEMORY[0x1E695DFD8];
      v75 = objc_opt_class();
      v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
      v77 = [v4 decodeObjectOfClasses:v76 forKey:@"limitationResponses"];
      v78 = [v77 mutableCopy];

      v79 = [v78 copy];
      limitationResponse = v5->_limitationResponse;
      v5->_limitationResponse = v79;
    }

    if ([v4 containsValueForKey:@"serviceNameKey"])
    {
      v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceNameKey"];
      serviceName = v5->_serviceName;
      v5->_serviceName = v81;
    }

    if ([v4 containsValueForKey:@"featureCodes"])
    {
      v83 = MEMORY[0x1E695DFD8];
      v84 = objc_opt_class();
      v85 = [v83 setWithObjects:{v84, objc_opt_class(), 0}];
      v86 = [v4 decodeObjectOfClasses:v85 forKey:@"featureCodes"];
      v87 = [v86 mutableCopy];

      v88 = [v87 copy];
      featureCodes = v5->_featureCodes;
      v5->_featureCodes = v88;
    }

    if ([v4 containsValueForKey:@"fastPass"])
    {
      v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fastPass"];
      fastPass = v5->_fastPass;
      v5->_fastPass = v90;
    }

    if ([v4 containsValueForKey:@"producedResultIdentifiers"])
    {
      v92 = MEMORY[0x1E695DFD8];
      v93 = objc_opt_class();
      v94 = objc_opt_class();
      v95 = [v92 setWithObjects:{v93, v94, objc_opt_class(), 0}];
      v96 = [v4 decodeObjectOfClasses:v95 forKey:@"producedResultIdentifiers"];

      v97 = [v96 copy];
      producedResultIdentifiers = v5->_producedResultIdentifiers;
      v5->_producedResultIdentifiers = v97;
    }

    if ([v4 containsValueForKey:@"dependencies"])
    {
      v99 = MEMORY[0x1E695DFD8];
      v100 = objc_opt_class();
      v101 = objc_opt_class();
      v102 = [v99 setWithObjects:{v100, v101, objc_opt_class(), 0}];
      v103 = [v4 decodeObjectOfClasses:v102 forKey:@"dependencies"];

      v104 = [v103 copy];
      dependencies = v5->_dependencies;
      v5->_dependencies = v104;
    }

    if ([v4 containsValueForKey:@"continuedProcessingWrapper"])
    {
      v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"continuedProcessingWrapper"];
      v107 = [v106 copy];
      continuedProcessingWrapper = v5->_continuedProcessingWrapper;
      v5->_continuedProcessingWrapper = v107;
    }

    if ([v4 containsValueForKey:@"diskVolume"])
    {
      v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskVolume"];
      diskVolume = v5->_diskVolume;
      v5->_diskVolume = v109;
    }

    if ([v4 containsValueForKey:@"lastDenialValue"])
    {
      v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastDenialValue"];
      v5->_lastDenialValue = [v111 unsignedIntegerValue];
    }

    v12 = v5;

    v7 = v120;
    v6 = v121;
    v10 = v118;
    v8 = v119;
    goto LABEL_69;
  }

  v12 = 0;
LABEL_71:

  return v12;
}

+ (id)prettySchedulingPriorityDescription:(unint64_t)a3
{
  if (_DASSchedulingPriorityUserInitiatedOvercommit == a3)
  {
    return @"UserInitiatedOvercommit";
  }

  if (_DASSchedulingPriorityUserInitiated == a3)
  {
    return @"UserInitiated";
  }

  if (_DASSchedulingPriorityDefault == a3)
  {
    return @"Default";
  }

  if (_DASSchedulingPriorityUtility == a3)
  {
    return @"Utility";
  }

  if (_DASSchedulingPriorityBackground == a3)
  {
    return @"Background";
  }

  if (_DASSchedulingPriorityMaintenance == a3)
  {
    return @"Maintenance";
  }

  return &stru_1F2EC9F10;
}

- (unint64_t)hashArrayOfString:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 sortedArrayUsingSelector:sel_compare_];
  v4 = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendString:{*(*(&v13 + 1) + 8 * v9++), v13}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v4 hash];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(_DASActivity *)v4 isMemberOfClass:objc_opt_class()])
  {
    uuid = self->_uuid;
    v6 = [(_DASActivity *)v4 uuid];
    v7 = [(NSUUID *)uuid isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end