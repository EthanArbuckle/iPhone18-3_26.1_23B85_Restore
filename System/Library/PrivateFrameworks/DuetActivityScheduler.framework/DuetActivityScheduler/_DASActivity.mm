@interface _DASActivity
+ (_DASActivity)activityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before;
+ (_DASActivity)activityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before userInfo:(id)info;
+ (id)anyApplicationActivityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before limitedToApplications:(id)applications;
+ (id)applicationLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before;
+ (id)continuedProcessingActivityWithName:(id)name;
+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application forExtensionIdentifier:(id)identifier withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)self0;
+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before;
+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forExtensionIdentifier:(id)identifier withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before;
+ (id)launchWithTopic:(id)topic forReason:(id)reason withPayload:(id)payload highPriority:(BOOL)priority;
+ (id)networkingActivityWithName:(id)name priority:(unint64_t)priority downloadSize:(unint64_t)size uploadSize:(unint64_t)uploadSize expensiveNetworkingAllowed:(BOOL)allowed startingAfter:(id)after startingBefore:(id)before;
+ (id)prettySchedulingPriorityDescription:(unint64_t)description;
+ (id)sharedDateFormatter;
+ (id)validClassesForUserInfoSerialization;
+ (id)validateBGTaskRequestWithActivity:(id)activity;
+ (unint64_t)cleanDuration:(unint64_t)duration;
+ (unint64_t)cleanSchedulingPriority:(unint64_t)priority;
+ (unint64_t)cleanTransferSize:(unint64_t)size;
- (BOOL)BOOLForUserInfoKey:(id)key;
- (BOOL)allowsCompanionExpensiveNetworking;
- (BOOL)allowsUnrestrictedBackgroundLaunches;
- (BOOL)beforeApplicationLaunch;
- (BOOL)blockRebootActivitiesForSU;
- (BOOL)budgeted;
- (BOOL)ckPushContentMatches:(id)matches;
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
- (BOOL)isEqual:(id)equal;
- (BOOL)isGPUIntensive;
- (BOOL)isIdenticalLaunchTo:(id)to;
- (BOOL)isIntensive;
- (BOOL)isMemoryIntensive;
- (BOOL)isPartOfCustomGroup;
- (BOOL)isPrioritizedIdleStackTasks;
- (BOOL)isRunning;
- (BOOL)isSilentPush;
- (BOOL)isSoftwareUpdateActivity;
- (BOOL)keepsPrevious;
- (BOOL)overdueAtDate:(id)date;
- (BOOL)overwritesPrevious;
- (BOOL)requestsNewsstandLaunch;
- (BOOL)requiresSignificantUserInactivity;
- (BOOL)shouldReplaceActivity:(id)activity andKeepsSubmitted:(BOOL *)submitted;
- (BOOL)significantlyOverdueAtDate:(id)date;
- (BOOL)timewiseEligibleAtDate:(id)date;
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
- (_DASActivity)initWithCoder:(id)coder;
- (_DASActivity)initWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before userInfo:(id)info;
- (_DASFileProtection)fileProtection;
- (double)compatibilityWith:(id)with;
- (id)debugDescription;
- (id)dependencyForIdentifier:(id)identifier;
- (id)nameString;
- (id)objectForUserInfoKey:(id)key;
- (id)policyScores;
- (id)shortDescription;
- (unint64_t)hashArrayOfString:(id)string;
- (unint64_t)taskID;
- (unint64_t)transferSize;
- (unint64_t)transferSizeType;
- (void)encodeWithCoder:(id)coder;
- (void)reconcileWithActivity:(id)activity;
- (void)setAfterUserIsInactive:(BOOL)inactive;
- (void)setAneIntensive:(BOOL)intensive;
- (void)setBeforeDaysFirstActivity:(BOOL)activity;
- (void)setBool:(BOOL)bool forUserInfoKey:(id)key;
- (void)setConstraintsWithXPCDictionary:(id)dictionary;
- (void)setCpuIntensive:(BOOL)intensive;
- (void)setDarkWakeEligible:(BOOL)eligible;
- (void)setDiskIntensive:(BOOL)intensive;
- (void)setGpuIntensive:(BOOL)intensive;
- (void)setGroupName:(id)name;
- (void)setHasMagneticSensitivity:(BOOL)sensitivity;
- (void)setInternalGroupNames:(id)names;
- (void)setInvolvedProcesses:(id)processes;
- (void)setIsContactTracingBackgroundActivity:(BOOL)activity;
- (void)setIsMLBackgroundActivity:(BOOL)activity;
- (void)setIsUpload:(BOOL)upload;
- (void)setMemoryIntensive:(BOOL)intensive;
- (void)setObject:(id)object forUserInfoKey:(id)key;
- (void)setPercentCompleted:(double)completed;
- (void)setRelatedApplications:(id)applications;
- (void)setRemoteDevice:(id)device;
- (void)setRequestsApplicationLaunch:(BOOL)launch;
- (void)setRequestsExtensionLaunch:(BOOL)launch;
- (void)setRequiresDeviceInactivity:(BOOL)inactivity;
- (void)setRequiresSignificantUserInactivity:(BOOL)inactivity;
- (void)setSuspendHandler:(id)handler;
- (void)setTransferSize:(unint64_t)size;
- (void)setTriggersRestart:(BOOL)restart;
- (void)setUserInfo:(id)info;
- (void)updateGroupIfNecessary;
- (void)updateInternalGroups;
@end

@implementation _DASActivity

- (BOOL)isBackgroundTaskActivity
{
  launchReason = [(_DASActivity *)self launchReason];
  if ([launchReason isEqualToString:@"com.apple.das.bgrefresh"])
  {
    v4 = 1;
  }

  else
  {
    launchReason2 = [(_DASActivity *)self launchReason];
    if ([launchReason2 isEqualToString:@"com.apple.das.bgprocessing"])
    {
      v4 = 1;
    }

    else
    {
      launchReason3 = [(_DASActivity *)self launchReason];
      if ([launchReason3 isEqualToString:@"com.apple.das.bghealthresearch"])
      {
        v4 = 1;
      }

      else
      {
        launchReason4 = [(_DASActivity *)self launchReason];
        if ([launchReason4 isEqualToString:@"com.apple.das.bgongoingprocessing"])
        {
          v4 = 1;
        }

        else
        {
          launchReason5 = [(_DASActivity *)self launchReason];
          v4 = [launchReason5 isEqualToString:@"com.apple.das.bgongoingprocessing.internal"];
        }
      }
    }
  }

  return v4;
}

- (NSString)clientProvidedIdentifier
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"clientID"];

  return v3;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    goto LABEL_2;
  }

  name = [(_DASActivity *)self name];
  v6 = [name componentsSeparatedByString:@":"];

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
      name2 = v12;
    }

    else
    {
      name2 = [(_DASActivity *)self name];
    }

    if (v11)
    {
      identifier = self->_identifier;
LABEL_2:
      name2 = identifier;
    }
  }

  else
  {
    name2 = [(_DASActivity *)self name];
  }

  return name2;
}

- (id)nameString
{
  v2 = MEMORY[0x1E696AEC0];
  name = self->_name;
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v5 = [uUIDString substringToIndex:6];
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
  launchReason = [(_DASActivity *)self launchReason];
  v3 = [launchReason hasPrefix:@"com.apple.das.bgongoingprocessing"];

  return v3;
}

- (BOOL)isIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  if (fastPass)
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
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"UserRequestedBackupActivity"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (_DASFileProtection)fileProtection
{
  dependencies = [(_DASActivity *)self dependencies];
  if ([dependencies count])
  {
  }

  else
  {
    producedResultIdentifiers = [(_DASActivity *)self producedResultIdentifiers];
    v5 = [producedResultIdentifiers count];

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
  name = [(_DASActivity *)self name];
  if ([name isEqualToString:@"com.apple.softwareupdate.autoinstall.startInstall"])
  {
    v4 = 1;
  }

  else
  {
    name2 = [(_DASActivity *)self name];
    v4 = ([name2 hasSuffix:@"com.apple.SUOSUScheduler.tonight.install"] & 1) != 0 || -[_DASActivity blockRebootActivitiesForSU](self, "blockRebootActivitiesForSU");
  }

  return v4;
}

- (BOOL)blockRebootActivitiesForSU
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"BlockRebootActivitiesForSU"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

  transferSize = [(_DASActivity *)self transferSize];
  v5 = 30;
  if (transferSize < _DASActivityTransferSizeVeryLarge)
  {
    v5 = 20;
  }

  if (transferSize >= _DASActivityTransferSizeLarge)
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
    fastPass = [(_DASActivity *)self fastPass];
    if (fastPass)
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

    launchReason = [(_DASActivity *)self launchReason];
    if (![launchReason isEqualToString:@"com.apple.das.launchreason.fetch"])
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
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"com.apple.das.significantInactivity"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)useStatisticalModelForTriggersRestart
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"UseStatisticalModelForTriggersRestart"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsUnrestrictedBackgroundLaunches
{
  if ([(_DASActivity *)self isContactTracingBackgroundActivity])
  {
    return 1;
  }

  launchReason = [(_DASActivity *)self launchReason];
  v5 = [launchReason isEqualToString:@"com.apple.das.bghealthresearch"];

  return v5;
}

- (BOOL)isContactTracingBackgroundActivity
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"isCTActivity"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)beforeApplicationLaunch
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"BeforeApplicationLaunch"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)requestsNewsstandLaunch
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"newsstand"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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
  nameString = [(_DASActivity *)self nameString];
  v6 = [_DASActivity prettySchedulingPriorityDescription:self->_schedulingPriority];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  startAfter = [(_DASActivity *)self startAfter];
  v9 = [v3 stringFromDate:startAfter];
  startBefore = [(_DASActivity *)self startBefore];
  v11 = [v3 stringFromDate:startBefore];
  v12 = [v4 stringWithFormat:@"<_DASActivity: %@, %@, %@s, [%@ - %@]", nameString, v6, v7, v9, v11];

  limitationResponse = [(_DASActivity *)self limitationResponse];

  if (limitationResponse)
  {
    limitationResponse2 = [(_DASActivity *)self limitationResponse];
    [v12 appendFormat:@", ACTIVITY LIMITED %@", limitationResponse2];
  }

  startDate = [(_DASActivity *)self startDate];

  if (startDate)
  {
    startDate2 = [(_DASActivity *)self startDate];
    v17 = [v3 stringFromDate:startDate2];
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
    processingTaskIdentifiers = [(_DASFastPass *)fastPass processingTaskIdentifiers];

    if (processingTaskIdentifiers)
    {
      processingTaskIdentifiers2 = [(_DASFastPass *)self->_fastPass processingTaskIdentifiers];
      [v12 appendFormat:@", TaskID: %@", processingTaskIdentifiers2];
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
  nameString = [(_DASActivity *)self nameString];
  v6 = [_DASActivity prettySchedulingPriorityDescription:self->_schedulingPriority];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  startAfter = [(_DASActivity *)self startAfter];
  v9 = [v3 stringFromDate:startAfter];
  startBefore = [(_DASActivity *)self startBefore];
  v11 = [v3 stringFromDate:startBefore];
  v12 = [v4 stringWithFormat:@"<_DASActivity: %@, %@, %@s, [%@ - %@]", nameString, v6, v7, v9, v11];

  startDate = [(_DASActivity *)self startDate];

  if (startDate)
  {
    startDate2 = [(_DASActivity *)self startDate];
    v15 = [v3 stringFromDate:startDate2];
    [v12 appendFormat:@", Started at %@", v15];
  }

  limitationResponse = [(_DASActivity *)self limitationResponse];

  if (limitationResponse)
  {
    limitationResponse2 = [(_DASActivity *)self limitationResponse];
    [v12 appendFormat:@", ACTIVITY LIMITED %@", limitationResponse2];
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
    processingTaskIdentifiers = [(_DASFastPass *)fastPass processingTaskIdentifiers];

    if (processingTaskIdentifiers)
    {
      processingTaskIdentifiers2 = [(_DASFastPass *)self->_fastPass processingTaskIdentifiers];
      [v12 appendFormat:@", TaskID: %@", processingTaskIdentifiers2];
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
    firstObject = [(NSArray *)self->_relatedApplications firstObject];
    [v12 appendFormat:@", Requests Launch (%@)", firstObject];
  }

  if (self->_requestsExtensionLaunch)
  {
    firstObject2 = [(NSArray *)self->_relatedApplications firstObject];
    [v12 appendFormat:@", Requests Extension Launch (%@)", firstObject2];
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

  clientDataBudgetName = [(_DASActivity *)self clientDataBudgetName];

  if (clientDataBudgetName)
  {
    clientDataBudgetName2 = [(_DASActivity *)self clientDataBudgetName];
    [v12 appendFormat:@", Budget=%@", clientDataBudgetName2];
  }

  if (self->_backlogged)
  {
    [v12 appendString:{@", Backlogged"}];
  }

  activityType = [(_DASActivity *)self activityType];

  if (activityType)
  {
    activityType2 = [(_DASActivity *)self activityType];
    [v12 appendFormat:@", activityType=%@", activityType2];
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

  fileProtection = [(_DASActivity *)self fileProtection];

  if (fileProtection)
  {
    fileProtection2 = [(_DASActivity *)self fileProtection];
    fileProtection = self->_fileProtection;

    fileProtection3 = [(_DASActivity *)self fileProtection];
    [v12 appendFormat:@", %@", fileProtection3];

    if (fileProtection2 != fileProtection)
    {
      [v12 appendFormat:@" (overridden value: %@)", self->_fileProtection];
    }
  }

  if (self->_delayedStart)
  {
    [v12 appendFormat:@", Delayed Start"];
  }

  userInfo = [(_DASActivity *)self userInfo];
  v39 = [userInfo mutableCopy];

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

  fastPass = [(_DASActivity *)self fastPass];

  if (fastPass)
  {
    fastPass2 = [(_DASActivity *)self fastPass];
    [v12 appendFormat:@", FastPass v%d", objc_msgSend(fastPass2, "semanticVersion")];
  }

  if (self->_diskVolume)
  {
    diskVolume = [(_DASActivity *)self diskVolume];
    [v12 appendFormat:@", DiskVolume=%@", diskVolume];
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

  schedulingPriority = [(_DASActivity *)self schedulingPriority];
  if (schedulingPriority < _DASSchedulingPriorityUtility)
  {
    return 1;
  }

  schedulingPriority2 = [(_DASActivity *)self schedulingPriority];
  if (schedulingPriority2 != _DASSchedulingPriorityUtility)
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
  name = [(_DASActivity *)self name];
  v4 = [name hash];
  v5 = v4 ^ (2 * [(_DASActivity *)self schedulingPriority]);
  groupName = [(_DASActivity *)self groupName];
  v7 = v5 ^ (4 * [groupName hash]);
  fileProtection = [(_DASActivity *)self fileProtection];
  protectionType = [fileProtection protectionType];
  v10 = v7 ^ (8 * [protectionType hash]);
  if ([(_DASActivity *)self cpuIntensive])
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  memoryIntensive = [(_DASActivity *)self memoryIntensive];
  v13 = 32;
  if (!memoryIntensive)
  {
    v13 = 0;
  }

  v14 = v11 ^ v13;
  aneIntensive = [(_DASActivity *)self aneIntensive];
  v16 = 64;
  if (!aneIntensive)
  {
    v16 = 0;
  }

  v17 = v14 ^ v16;
  gpuIntensive = [(_DASActivity *)self gpuIntensive];
  v19 = 128;
  if (!gpuIntensive)
  {
    v19 = 0;
  }

  v20 = v17 ^ v19;
  requiresPlugin = [(_DASActivity *)self requiresPlugin];
  v22 = 256;
  if (!requiresPlugin)
  {
    v22 = 0;
  }

  v23 = v20 ^ v22;
  requiresNetwork = [(_DASActivity *)self requiresNetwork];
  v25 = 512;
  if (!requiresNetwork)
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

  requiresUnconstrainedNetworking = [(_DASActivity *)self requiresUnconstrainedNetworking];
  v29 = 2048;
  if (!requiresUnconstrainedNetworking)
  {
    v29 = 0;
  }

  v30 = v27 ^ v29;
  requiresDeviceInactivity = [(_DASActivity *)self requiresDeviceInactivity];
  v32 = 4096;
  if (!requiresDeviceInactivity)
  {
    v32 = 0;
  }

  v33 = v30 ^ v32;
  requiresSignificantUserInactivity = [(_DASActivity *)self requiresSignificantUserInactivity];
  v35 = 0x2000;
  if (!requiresSignificantUserInactivity)
  {
    v35 = 0;
  }

  v36 = v33 ^ v35;
  triggersRestart = [(_DASActivity *)self triggersRestart];
  v38 = 0x4000;
  if (!triggersRestart)
  {
    v38 = 0;
  }

  v39 = v26 ^ v36 ^ v38;
  bundleId = [(_DASActivity *)self bundleId];
  v41 = v39 ^ ([bundleId hash] << 15);
  relatedApplications = [(_DASActivity *)self relatedApplications];
  v43 = v41 ^ ([(_DASActivity *)self hashArrayOfString:relatedApplications]<< 16);
  involvedProcesses = [(_DASActivity *)self involvedProcesses];
  v45 = v43 ^ ([(_DASActivity *)self hashArrayOfString:involvedProcesses]<< 17);
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
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"MagneticInterferenceSensitivity"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSMutableDictionary)policyResponseMetadata
{
  policyResponseMetadata = self->_policyResponseMetadata;
  if (!policyResponseMetadata)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_policyResponseMetadata;
    self->_policyResponseMetadata = dictionary;

    policyResponseMetadata = self->_policyResponseMetadata;
  }

  return policyResponseMetadata;
}

- (BOOL)isEmergencySOSActivity
{
  name = [(_DASActivity *)self name];
  v3 = [name containsString:@"com.corelocation.eedmediaservice.progress"];

  return v3;
}

- (BOOL)isRunning
{
  startDate = [(_DASActivity *)self startDate];
  [startDate timeIntervalSinceNow];
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
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"progress"];

  return v3;
}

- (BOOL)isCPUIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  return !fastPass && self->_cpuIntensive;
}

- (BOOL)isMemoryIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  return !fastPass && self->_memoryIntensive;
}

- (BOOL)isDiskIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  return !fastPass && self->_diskIntensive;
}

- (BOOL)isANEIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  return !fastPass && self->_aneIntensive;
}

- (BOOL)isGPUIntensive
{
  fastPass = [(_DASActivity *)self fastPass];

  return !fastPass && self->_gpuIntensive;
}

- (NSDate)clientProvidedStartDate
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"clientStartDate"];

  return v3;
}

- (_DASActivity)initWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before userInfo:(id)info
{
  nameCopy = name;
  afterCopy = after;
  beforeCopy = before;
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = _DASActivity;
  v19 = [(_DASActivity *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, name);
    v20->_schedulingPriority = [_DASActivity cleanSchedulingPriority:priority];
    v20->_duration = [_DASActivity cleanDuration:duration];
    objc_storeStrong(&v20->_startAfter, after);
    objc_storeStrong(&v20->_startBefore, before);
    v21 = _DASActivityTransferSizeZero;
    v20->_uploadSize = _DASActivityTransferSizeZero;
    v20->_downloadSize = v21;
    v20->_motionState = _DASMotionStateAny;
    v20->_delayedStart = 0;
    v22 = [infoCopy mutableCopy];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v20->_uuid;
    v20->_uuid = uUID;

    v20->_userIdentifier = -1;
    [(_DASActivity *)v20 updateGroupIfNecessary];
  }

  return v20;
}

+ (_DASActivity)activityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before
{
  beforeCopy = before;
  afterCopy = after;
  nameCopy = name;
  v15 = [[self alloc] initWithName:nameCopy priority:priority duration:duration startingAfter:afterCopy startingBefore:beforeCopy userInfo:0];

  return v15;
}

+ (_DASActivity)activityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before userInfo:(id)info
{
  infoCopy = info;
  beforeCopy = before;
  afterCopy = after;
  nameCopy = name;
  v18 = [[self alloc] initWithName:nameCopy priority:priority duration:duration startingAfter:afterCopy startingBefore:beforeCopy userInfo:infoCopy];

  return v18;
}

+ (id)networkingActivityWithName:(id)name priority:(unint64_t)priority downloadSize:(unint64_t)size uploadSize:(unint64_t)uploadSize expensiveNetworkingAllowed:(BOOL)allowed startingAfter:(id)after startingBefore:(id)before
{
  allowedCopy = allowed;
  beforeCopy = before;
  afterCopy = after;
  nameCopy = name;
  v18 = [objc_alloc(objc_opt_class()) initWithName:nameCopy priority:priority duration:_DASActivityDurationLong startingAfter:afterCopy startingBefore:beforeCopy userInfo:0];

  [v18 setRequiresNetwork:1];
  [v18 setDownloadSize:size];
  [v18 setUploadSize:uploadSize];
  [v18 setRequiresInexpensiveNetworking:!allowedCopy];

  return v18;
}

+ (id)continuedProcessingActivityWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc(objc_opt_class());
  v5 = _DASSchedulingPriorityUserInitiated;
  v6 = _DASActivityDurationLong;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v4 initWithName:nameCopy priority:v5 duration:v6 startingAfter:v7 startingBefore:v8 userInfo:0];

  [v9 setLaunchReason:@"com.apple.das.bgongoingprocessing"];
  [v9 setGroupName:_DASDefaultContinuedProcessingGroupName];

  return v9;
}

+ (id)anyApplicationActivityWithName:(id)name priority:(unint64_t)priority duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before limitedToApplications:(id)applications
{
  applicationsCopy = applications;
  beforeCopy = before;
  afterCopy = after;
  nameCopy = name;
  v17 = [objc_alloc(objc_opt_class()) initWithName:nameCopy priority:priority duration:duration startingAfter:afterCopy startingBefore:beforeCopy userInfo:0];

  [v17 setSupportsAnyApplication:1];
  [v17 setRelatedApplications:applicationsCopy];

  return v17;
}

+ (id)applicationLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before
{
  v24[1] = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  afterCopy = after;
  reasonCopy = reason;
  applicationCopy = application;
  nameCopy = name;
  v20 = [objc_alloc(objc_opt_class()) initWithName:nameCopy priority:priority duration:duration startingAfter:afterCopy startingBefore:beforeCopy userInfo:0];

  [v20 setRequestsApplicationLaunch:1];
  [v20 setLaunchReason:reasonCopy];

  v24[0] = applicationCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v20 setRelatedApplications:v21];

  [v20 setBundleId:applicationCopy];
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application forExtensionIdentifier:(id)identifier withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)self0
{
  v26[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  identifierCopy = identifier;
  beforeCopy = before;
  afterCopy = after;
  reasonCopy = reason;
  nameCopy = name;
  v21 = [objc_alloc(objc_opt_class()) initWithName:nameCopy priority:priority duration:duration startingAfter:afterCopy startingBefore:beforeCopy userInfo:0];

  [v21 setRequestsExtensionLaunch:1];
  [v21 setLaunchReason:reasonCopy];

  v22 = identifierCopy;
  if (applicationCopy)
  {
    v26[0] = applicationCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v21 setRelatedApplications:v23];

    v22 = applicationCopy;
  }

  [v21 setExtensionIdentifier:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forApplication:(id)application withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before
{
  beforeCopy = before;
  afterCopy = after;
  reasonCopy = reason;
  applicationCopy = application;
  nameCopy = name;
  v20 = [objc_opt_class() extensionLaunchActivityWithName:nameCopy priority:priority forApplication:applicationCopy forExtensionIdentifier:0 withReason:reasonCopy duration:duration startingAfter:afterCopy startingBefore:beforeCopy];

  return v20;
}

+ (id)extensionLaunchActivityWithName:(id)name priority:(unint64_t)priority forExtensionIdentifier:(id)identifier withReason:(id)reason duration:(unint64_t)duration startingAfter:(id)after startingBefore:(id)before
{
  beforeCopy = before;
  afterCopy = after;
  reasonCopy = reason;
  identifierCopy = identifier;
  nameCopy = name;
  v20 = [objc_opt_class() extensionLaunchActivityWithName:nameCopy priority:priority forApplication:0 forExtensionIdentifier:identifierCopy withReason:reasonCopy duration:duration startingAfter:afterCopy startingBefore:beforeCopy];

  return v20;
}

+ (id)launchWithTopic:(id)topic forReason:(id)reason withPayload:(id)payload highPriority:(BOOL)priority
{
  v25[1] = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  payloadCopy = payload;
  reasonCopy = reason;
  v11 = topicCopy;
  if ([topicCopy hasPrefix:@"com.apple.icloud-container."])
  {
    v11 = [topicCopy substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.pushLaunch", v11];
  v13 = objc_opt_class();
  v14 = _DASSchedulingPriorityBackground;
  v15 = _DASActivityDurationVeryShort;
  date = [MEMORY[0x1E695DF00] date];
  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
  v18 = [v13 applicationLaunchActivityWithName:v12 priority:v14 forApplication:v11 withReason:reasonCopy duration:v15 startingAfter:date startingBefore:v17];

  [v18 setRequiresNetwork:1];
  v19 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  [v18 setFileProtection:v19];

  v24 = @"notificationpayload";
  v25[0] = payloadCopy;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  [v18 setUserInfo:v20];
  if (!priority)
  {
    [v18 setSchedulingPriority:_DASSchedulingPriorityMaintenance];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)validateBGTaskRequestWithActivity:(id)activity
{
  activityCopy = activity;
  clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
  if ([clientProvidedIdentifier length])
  {
    clientProvidedIdentifier2 = [activityCopy clientProvidedIdentifier];
    v6 = [clientProvidedIdentifier2 length];

    if (v6 > 0x80)
    {
      v7 = 0;
      goto LABEL_29;
    }

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:450.0];
    launchReason = [activityCopy launchReason];
    v10 = [launchReason isEqualToString:@"com.apple.das.bgrefresh"];

    if (v10)
    {
      name = [activityCopy name];
      v12 = _DASSchedulingPriorityBackground;
      v13 = _DASActivityDurationVeryShort;
      startAfter = [activityCopy startAfter];
      startBefore = [activityCopy startBefore];
      clientProvidedIdentifier = [_DASActivity activityWithName:name priority:v12 duration:v13 startingAfter:startAfter startingBefore:startBefore];

      [clientProvidedIdentifier setLaunchReason:@"com.apple.das.bgrefresh"];
      [clientProvidedIdentifier setRequestsApplicationLaunch:1];
      [clientProvidedIdentifier setRequiresNetwork:1];
      clientProvidedStartDate = [activityCopy clientProvidedStartDate];
      if (clientProvidedStartDate)
      {
        clientProvidedStartDate2 = [activityCopy clientProvidedStartDate];
        v18 = [clientProvidedStartDate2 laterDate:v8];
        [clientProvidedIdentifier setStartAfter:v18];
      }

      else
      {
        [clientProvidedIdentifier setStartAfter:v8];
      }

      v38 = 86400.0;
    }

    else
    {
      launchReason2 = [activityCopy launchReason];
      v20 = [launchReason2 isEqualToString:@"com.apple.das.bgprocessing"];

      if (v20)
      {
        name2 = [activityCopy name];
        v22 = _DASSchedulingPriorityBackground;
        v23 = _DASActivityDurationShort;
        startAfter2 = [activityCopy startAfter];
        startBefore2 = [activityCopy startBefore];
        clientProvidedIdentifier = [_DASActivity activityWithName:name2 priority:v22 duration:v23 startingAfter:startAfter2 startingBefore:startBefore2];

        [clientProvidedIdentifier setRequiresNetwork:{objc_msgSend(activityCopy, "requiresNetwork")}];
        [clientProvidedIdentifier setRequiresPlugin:{objc_msgSend(activityCopy, "requiresPlugin")}];
        [clientProvidedIdentifier setLaunchReason:@"com.apple.das.bgprocessing"];
        [clientProvidedIdentifier setRequestsApplicationLaunch:1];
        clientProvidedStartDate = [activityCopy clientProvidedStartDate];
        if (clientProvidedStartDate)
        {
          clientProvidedStartDate3 = [activityCopy clientProvidedStartDate];
          v27 = [clientProvidedStartDate3 laterDate:v8];
          [clientProvidedIdentifier setStartAfter:v27];
        }

        else
        {
          [clientProvidedIdentifier setStartAfter:v8];
        }

        v38 = 604800.0;
      }

      else
      {
        launchReason3 = [activityCopy launchReason];
        v29 = [launchReason3 isEqualToString:@"com.apple.das.bghealthresearch"];

        if (!v29)
        {
          launchReason4 = [activityCopy launchReason];
          v40 = @"com.apple.das.bgongoingprocessing";
          v41 = [launchReason4 isEqual:@"com.apple.das.bgongoingprocessing"];

          if (!v41)
          {
            launchReason5 = [activityCopy launchReason];
            v40 = @"com.apple.das.bgongoingprocessing.internal";
            v43 = [launchReason5 isEqual:@"com.apple.das.bgongoingprocessing.internal"];

            if (!v43)
            {
              clientProvidedIdentifier = 0;
              goto LABEL_26;
            }
          }

          name3 = [activityCopy name];
          v45 = _DASSchedulingPriorityUserInitiated;
          v46 = _DASActivityDurationModerate;
          distantPast = [MEMORY[0x1E695DF00] distantPast];
          v48 = [MEMORY[0x1E695DF00] now];
          clientProvidedIdentifier = [_DASActivity activityWithName:name3 priority:v45 duration:v46 startingAfter:distantPast startingBefore:v48];

          [clientProvidedIdentifier setRequiresNetwork:{objc_msgSend(activityCopy, "requiresNetwork")}];
          [clientProvidedIdentifier setLaunchReason:v40];
          [clientProvidedIdentifier setRequestsApplicationLaunch:0];
          [clientProvidedIdentifier setGroupName:_DASDefaultContinuedProcessingGroupName];
          relatedApplications = [activityCopy relatedApplications];
          [clientProvidedIdentifier setRelatedApplications:relatedApplications];

          continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
          v51 = [continuedProcessingWrapper copy];
          [clientProvidedIdentifier setContinuedProcessingWrapper:v51];

          continuedProcessingWrapper2 = [clientProvidedIdentifier continuedProcessingWrapper];
          title = [continuedProcessingWrapper2 title];
          if (title)
          {
            v54 = title;
            continuedProcessingWrapper3 = [clientProvidedIdentifier continuedProcessingWrapper];
            subtitle = [continuedProcessingWrapper3 subtitle];

            if (subtitle)
            {
LABEL_26:
              clientProvidedIdentifier3 = [activityCopy clientProvidedIdentifier];
              [clientProvidedIdentifier setClientProvidedIdentifier:clientProvidedIdentifier3];

              clientProvidedStartDate4 = [activityCopy clientProvidedStartDate];
              [clientProvidedIdentifier setClientProvidedStartDate:clientProvidedStartDate4];

              uuid = [activityCopy uuid];
              [clientProvidedIdentifier setUuid:uuid];

              clientProvidedIdentifier = clientProvidedIdentifier;
              v7 = clientProvidedIdentifier;
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

        name4 = [activityCopy name];
        v31 = _DASSchedulingPriorityUtility;
        v32 = _DASActivityDurationShort;
        startAfter3 = [activityCopy startAfter];
        startBefore3 = [activityCopy startBefore];
        clientProvidedIdentifier = [_DASActivity activityWithName:name4 priority:v31 duration:v32 startingAfter:startAfter3 startingBefore:startBefore3];

        [clientProvidedIdentifier setRequiresNetwork:{objc_msgSend(activityCopy, "requiresNetwork")}];
        [clientProvidedIdentifier setRequiresPlugin:{objc_msgSend(activityCopy, "requiresPlugin")}];
        [clientProvidedIdentifier setLaunchReason:@"com.apple.das.bghealthresearch"];
        [clientProvidedIdentifier setRequestsApplicationLaunch:1];
        fileProtection = [activityCopy fileProtection];
        [clientProvidedIdentifier setFileProtection:fileProtection];

        clientProvidedStartDate = [activityCopy clientProvidedStartDate];
        if (clientProvidedStartDate)
        {
          clientProvidedStartDate5 = [activityCopy clientProvidedStartDate];
          v37 = [clientProvidedStartDate5 laterDate:v8];
          [clientProvidedIdentifier setStartAfter:v37];
        }

        else
        {
          [clientProvidedIdentifier setStartAfter:v8];
        }

        v38 = 600.0;
      }
    }

    startAfter4 = [clientProvidedIdentifier startAfter];
    v58 = [startAfter4 dateByAddingTimeInterval:v38];
    [clientProvidedIdentifier setStartBefore:v58];

    goto LABEL_26;
  }

  v7 = 0;
LABEL_28:

LABEL_29:

  return v7;
}

- (void)setSuspendHandler:(id)handler
{
  self->_suspendable = handler != 0;
  handlerCopy = handler;
  v4 = MEMORY[0x1B8C9D430]();
  suspendHandler = self->_suspendHandler;
  self->_suspendHandler = v4;
}

+ (unint64_t)cleanDuration:(unint64_t)duration
{
  if (_DASActivityDurationVeryLong >= duration)
  {
    durationCopy = duration;
  }

  else
  {
    durationCopy = _DASActivityDurationInterminable;
  }

  if (_DASActivityDurationVeryShort >= duration)
  {
    return _DASActivityDurationVeryShort;
  }

  else
  {
    return durationCopy;
  }
}

+ (unint64_t)cleanTransferSize:(unint64_t)size
{
  result = _DASActivityTransferSizeZero;
  if (_DASActivityTransferSizeZero < size)
  {
    result = _DASActivityTransferSizeVerySmall;
    if (_DASActivityTransferSizeVerySmall < size)
    {
      result = _DASActivityTransferSizeSmall;
      if (_DASActivityTransferSizeSmall < size)
      {
        result = _DASActivityTransferSizeModerate;
        if (_DASActivityTransferSizeModerate < size)
        {
          result = _DASActivityTransferSizeLarge;
          if (_DASActivityTransferSizeLarge < size)
          {
            if (_DASActivityTransferSizeVeryLarge >= size)
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

+ (unint64_t)cleanSchedulingPriority:(unint64_t)priority
{
  result = _DASSchedulingPriorityMaintenance;
  if (_DASSchedulingPriorityMaintenance < priority)
  {
    result = _DASSchedulingPriorityBackground;
    if (_DASSchedulingPriorityBackground < priority)
    {
      result = _DASSchedulingPriorityUtility;
      if (_DASSchedulingPriorityUtility < priority)
      {
        result = _DASSchedulingPriorityDefault;
        if (_DASSchedulingPriorityDefault < priority)
        {
          if (_DASSchedulingPriorityUserInitiated >= priority)
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

- (void)setTransferSize:(unint64_t)size
{
  if (self->_isUpload)
  {
    self->_uploadSize = size;
    size = _DASActivityTransferSizeZero;
  }

  self->_downloadSize = size;
}

- (void)setCpuIntensive:(BOOL)intensive
{
  if (intensive)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_cpuIntensive = intensive;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setMemoryIntensive:(BOOL)intensive
{
  if (intensive)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_memoryIntensive = intensive;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setDiskIntensive:(BOOL)intensive
{
  if (intensive)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_diskIntensive = intensive;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setAneIntensive:(BOOL)intensive
{
  if (intensive)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_aneIntensive = intensive;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setGpuIntensive:(BOOL)intensive
{
  if (intensive)
  {
    self->_requiresDeviceInactivity = 1;
  }

  self->_gpuIntensive = intensive;
  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setRequiresDeviceInactivity:(BOOL)inactivity
{
  if (inactivity || !self->_cpuIntensive && !self->_diskIntensive && !self->_aneIntensive && !self->_gpuIntensive)
  {
    self->_requiresDeviceInactivity = inactivity;
  }
}

- (void)setAfterUserIsInactive:(BOOL)inactive
{
  if (inactive)
  {
    self->_beforeUserIsActive = 0;
    self->_requiresDeviceInactivity = 1;
  }

  self->_afterUserIsInactive = inactive;
}

- (void)setBeforeDaysFirstActivity:(BOOL)activity
{
  if (activity)
  {
    self->_darkWakeEligible = 1;
  }

  self->_beforeDaysFirstActivity = activity;
}

- (void)setDarkWakeEligible:(BOOL)eligible
{
  if (!eligible)
  {
    self->_beforeDaysFirstActivity = 0;
  }

  self->_darkWakeEligible = eligible;
}

- (void)setTriggersRestart:(BOOL)restart
{
  if (restart)
  {
    [(_DASActivity *)self setRequiresSignificantUserInactivity:1];
  }

  self->_triggersRestart = restart;
}

- (void)setIsMLBackgroundActivity:(BOOL)activity
{
  if (activity)
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

- (void)setIsUpload:(BOOL)upload
{
  if (upload)
  {
    v3 = _DASActivityTransferSizeZero;
    self->_uploadSize = self->_downloadSize;
    self->_downloadSize = v3;
  }

  self->_isUpload = upload;
}

- (void)setRequestsApplicationLaunch:(BOOL)launch
{
  if (launch)
  {
    self->_shouldBePersisted = 1;
    self->_suspendable = 1;
  }

  self->_requestsApplicationLaunch = launch;
}

- (void)setRequestsExtensionLaunch:(BOOL)launch
{
  if (launch)
  {
    self->_shouldBePersisted = 1;
    self->_suspendable = 1;
  }

  self->_requestsExtensionLaunch = launch;
}

- (void)setRequiresSignificantUserInactivity:(BOOL)inactivity
{
  if (inactivity || self->_triggersRestart)
  {
    self->_requiresDeviceInactivity = 1;
  }

  [_DASActivity setBool:"setBool:forUserInfoKey:" forUserInfoKey:?];
}

- (void)setHasMagneticSensitivity:(BOOL)sensitivity
{
  if (sensitivity)
  {
    self->_requiresPlugin = 0;
  }

  [_DASActivity setBool:"setBool:forUserInfoKey:" forUserInfoKey:?];
}

- (BOOL)allowsCompanionExpensiveNetworking
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"allowsCompanionExpensive"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setPercentCompleted:(double)completed
{
  v3 = 0.0;
  if (completed < 0.0 || (v3 = 0.999, self->_percentCompleted > 0.999))
  {
    self->_percentCompleted = v3;
  }
}

- (BOOL)isSilentPush
{
  userInfo = [(_DASActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"notificationpayload"];

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

- (void)setGroupName:(id)name
{
  objc_storeStrong(&self->_groupName, name);

  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setInternalGroupNames:(id)names
{
  namesCopy = names;
  os_unfair_lock_lock(&self->_internalGroupLock);
  v5 = [namesCopy copy];

  internalGroupNames = self->_internalGroupNames;
  self->_internalGroupNames = v5;

  os_unfair_lock_unlock(&self->_internalGroupLock);

  [(_DASActivity *)self updateGroupIfNecessary];
}

- (void)setRemoteDevice:(id)device
{
  objc_storeStrong(&self->_remoteDevice, device);
  if (device && !self->_targetDevice)
  {

    [(_DASActivity *)self setTargetDevice:3];
  }
}

- (void)setIsContactTracingBackgroundActivity:(BOOL)activity
{
  activityCopy = activity;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(_DASActivity *)self setObject:v5 forUserInfoKey:@"isCTActivity"];

  schedulingPriority = self->_schedulingPriority;
  v7 = _DASSchedulingPriorityUtility;
  if (!activityCopy)
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

- (void)setObject:(id)object forUserInfoKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_userInfoLock);
  [(NSMutableDictionary *)self->_userInfo setObject:objectCopy forKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (id)objectForUserInfoKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_userInfoLock);
  v5 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_userInfoLock);

  return v5;
}

- (void)setBool:(BOOL)bool forUserInfoKey:(id)key
{
  if (bool)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  [(_DASActivity *)self setObject:v4 forUserInfoKey:key];
}

- (BOOL)BOOLForUserInfoKey:(id)key
{
  v3 = [(_DASActivity *)self objectForUserInfoKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&self->_userInfoLock);
  v5 = [infoCopy mutableCopy];

  userInfo = self->_userInfo;
  self->_userInfo = v5;

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (void)setConstraintsWithXPCDictionary:(id)dictionary
{
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __48___DASActivity_setConstraintsWithXPCDictionary___block_invoke;
  applier[3] = &unk_1E7C8F558;
  applier[4] = self;
  xpc_dictionary_apply(dictionary, applier);
}

- (double)compatibilityWith:(id)with
{
  v72 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v8 = 1.0;
  if ([(_DASActivity *)self isEqual:withCopy])
  {
    goto LABEL_88;
  }

  widgetID = [(_DASActivity *)self widgetID];
  if (widgetID && ([withCopy widgetID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    widgetBudgetID = [(_DASActivity *)self widgetBudgetID];
    if (!widgetBudgetID)
    {

      if (widgetID)
      {
      }

      goto LABEL_13;
    }

    widgetBudgetID2 = [withCopy widgetBudgetID];

    if (widgetID)
    {
    }

    if (!widgetBudgetID2)
    {
      goto LABEL_13;
    }
  }

  relatedApplications = [(_DASActivity *)self relatedApplications];
  firstObject = [relatedApplications firstObject];
  relatedApplications2 = [withCopy relatedApplications];
  firstObject2 = [relatedApplications2 firstObject];
  processingTaskIdentifiers = [firstObject isEqual:firstObject2];

  if (processingTaskIdentifiers)
  {
    goto LABEL_88;
  }

LABEL_13:
  isIntensive = [(_DASActivity *)self isIntensive];
  isIntensive2 = [withCopy isIntensive];
  fastPass = [(_DASActivity *)self fastPass];
  if (fastPass)
  {
    firstObject2 = [(_DASActivity *)self fastPass];
    processingTaskIdentifiers = [firstObject2 processingTaskIdentifiers];
    name = [withCopy name];
    if ([processingTaskIdentifiers containsObject:name])
    {

LABEL_16:
      v8 = -1.0;
      goto LABEL_88;
    }
  }

  fastPass2 = [withCopy fastPass];
  if (fastPass2)
  {
    v65 = isIntensive2;
    v66 = isIntensive;
    fastPass3 = [withCopy fastPass];
    processingTaskIdentifiers2 = [fastPass3 processingTaskIdentifiers];
    name2 = [(_DASActivity *)self name];
    v64 = [processingTaskIdentifiers2 containsObject:name2];

    if (fastPass)
    {
    }

    v8 = -1.0;
    isIntensive2 = v65;
    isIntensive = v66;
    if (v64)
    {
      goto LABEL_88;
    }
  }

  else
  {

    if (fastPass)
    {
    }
  }

  v23 = 0.0;
  if ((isIntensive & isIntensive2) == 1)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      groupName = [(_DASActivity *)self groupName];
      if (([groupName isEqualToString:_DASDefaultIntensiveGroupName] & 1) == 0)
      {

        goto LABEL_16;
      }

      groupName2 = [withCopy groupName];
      v38 = [groupName2 isEqualToString:_DASDefaultIntensiveGroupName];

      v8 = -1.0;
      if (!v38)
      {
        goto LABEL_88;
      }
    }

    isCPUIntensive = [(_DASActivity *)self isCPUIntensive];
    if ([(_DASActivity *)self isMemoryIntensive])
    {
      isCPUIntensive |= 2uLL;
    }

    if ([(_DASActivity *)self isDiskIntensive])
    {
      isCPUIntensive |= 4uLL;
    }

    if ([(_DASActivity *)self isANEIntensive])
    {
      isCPUIntensive |= 8uLL;
    }

    if ([(_DASActivity *)self isGPUIntensive])
    {
      isCPUIntensive |= 0x10uLL;
    }

    isCPUIntensive2 = [withCopy isCPUIntensive];
    if ([withCopy isMemoryIntensive])
    {
      isCPUIntensive2 |= 2uLL;
    }

    if ([withCopy isDiskIntensive])
    {
      isCPUIntensive2 |= 4uLL;
    }

    if ([withCopy isANEIntensive])
    {
      isCPUIntensive2 |= 8uLL;
    }

    isGPUIntensive = [withCopy isGPUIntensive];
    v27 = isCPUIntensive2 | 0x10;
    if (!isGPUIntensive)
    {
      v27 = isCPUIntensive2;
    }

    if ((v27 & isCPUIntensive) != 0)
    {
      v28 = +[_DASPlistParser sharedInstance];
      suspensionThreshold = [v28 suspensionThreshold];

      suspendRequestDate = [withCopy suspendRequestDate];
      if (suspendRequestDate)
      {
        v31 = suspendRequestDate;
        if (suspensionThreshold)
        {
          v32 = suspensionThreshold;
        }

        else
        {
          v32 = 61;
        }

        suspendRequestDate2 = [withCopy suspendRequestDate];
        [suspendRequestDate2 timeIntervalSinceNow];
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

  if (![withCopy triggersRestart])
  {
    goto LABEL_60;
  }

  startDate = [withCopy startDate];
  v8 = -1.0;
  if (startDate)
  {
    v40 = startDate;
    startDate2 = [withCopy startDate];
    [startDate2 timeIntervalSinceNow];
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
        bundleId = [withCopy bundleId];
        v46 = [(NSString *)bundleId isEqual:bundleId];

        if (v46)
        {
          v23 = v23 + 0.5;
        }
      }

      runWhenAppLaunchUnlikely = self->_runWhenAppLaunchUnlikely;
      if (runWhenAppLaunchUnlikely == [withCopy runWhenAppLaunchUnlikely])
      {
        if (self->_relatedApplications)
        {
          relatedApplications3 = [withCopy relatedApplications];

          if (relatedApplications3)
          {
            relatedApplications4 = [withCopy relatedApplications];
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

                  if ([relatedApplications4 containsObject:*(*(&v67 + 1) + 8 * i)])
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

      if (self->_requiresNetwork && [withCopy requiresNetwork])
      {
        if ([withCopy noTransferSizeSpecified])
        {
          downloadSize = _DASActivityTransferSizeSmall;
        }

        else
        {
          downloadSize = [withCopy downloadSize];
        }

        v56 = downloadSize + 2 * [withCopy uploadSize];
        noTransferSizeSpecified = [(_DASActivity *)self noTransferSizeSpecified];
        p_downloadSize = &self->_downloadSize;
        if (noTransferSizeSpecified)
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

- (BOOL)timewiseEligibleAtDate:(id)date
{
  dateCopy = date;
  if ([(_DASActivity *)self isSoftwareUpdateActivity]&& ![(_DASActivity *)self useStatisticalModelForTriggersRestart]|| self->_beforeDaysFirstActivity)
  {
    v5 = 1;
  }

  else
  {
    startAfter = [(_DASActivity *)self startAfter];
    [dateCopy timeIntervalSinceDate:startAfter];
    v5 = v7 > 0.0 || [(_DASActivity *)self userRequestedBackupTask];
  }

  return v5;
}

- (BOOL)overdueAtDate:(id)date
{
  dateCopy = date;
  startBefore = [(_DASActivity *)self startBefore];
  [dateCopy timeIntervalSinceDate:startBefore];
  v7 = v6;

  return v7 > 0.0;
}

- (BOOL)significantlyOverdueAtDate:(id)date
{
  dateCopy = date;
  startBefore = [(_DASActivity *)self startBefore];
  [dateCopy timeIntervalSinceDate:startBefore];
  v7 = v6;

  return v7 > 86400.0;
}

- (BOOL)ckPushContentMatches:(id)matches
{
  matchesCopy = matches;
  v5 = [(_DASActivity *)self objectForUserInfoKey:@"notificationpayload"];
  v6 = [v5 objectForKeyedSubscript:@"ck"];

  userInfo = [matchesCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"notificationpayload"];
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

- (BOOL)isIdenticalLaunchTo:(id)to
{
  toCopy = to;
  name = [(_DASActivity *)self name];
  name2 = [toCopy name];
  if ([name isEqualToString:name2])
  {
    relatedApplications = [(_DASActivity *)self relatedApplications];
    firstObject = [relatedApplications firstObject];
    relatedApplications2 = [toCopy relatedApplications];
    firstObject2 = [relatedApplications2 firstObject];
    if ([firstObject isEqualToString:firstObject2])
    {
      launchReason = [(_DASActivity *)self launchReason];
      launchReason2 = [toCopy launchReason];
      if ([launchReason isEqualToString:launchReason2])
      {
        launchReason3 = [(_DASActivity *)self launchReason];
        if ([launchReason3 isEqualToString:@"com.apple.das.launchreason.push"])
        {
          v13 = [(_DASActivity *)self ckPushContentMatches:toCopy];
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
  launchReason = [(_DASActivity *)self launchReason];
  if ([launchReason isEqualToString:@"com.apple.duetactivity.launchreason.nsurlsessioncomplete"])
  {
    v4 = 1;
  }

  else
  {
    launchReason2 = [(_DASActivity *)self launchReason];
    v4 = [launchReason2 isEqualToString:@"com.apple.duetactivity.launchreason.wkpendingdata"];
  }

  return v4;
}

- (BOOL)overwritesPrevious
{
  launchReason = [(_DASActivity *)self launchReason];
  if ([launchReason isEqualToString:@"com.apple.das.launchreason.push"])
  {
    v4 = 1;
  }

  else
  {
    launchReason2 = [(_DASActivity *)self launchReason];
    v4 = [launchReason2 isEqualToString:@"_DASExtLaunchMLCompute"];
  }

  return v4;
}

- (BOOL)isPrioritizedIdleStackTasks
{
  name = [(_DASActivity *)self name];
  if ([name containsString:@"com.apple.idleStack_med"])
  {
    v4 = 1;
  }

  else
  {
    name2 = [(_DASActivity *)self name];
    v4 = [name2 containsString:@"com.apple.idleStack_high"];
  }

  return v4;
}

- (id)dependencyForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dependencies = [(_DASActivity *)self dependencies];
  v6 = [dependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(dependencies);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  policyResponseMetadata = selfCopy->_policyResponseMetadata;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28___DASActivity_policyScores__block_invoke;
  v8[3] = &unk_1E7C8F5D0;
  v6 = dictionary;
  v9 = v6;
  [(NSMutableDictionary *)policyResponseMetadata enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)shouldReplaceActivity:(id)activity andKeepsSubmitted:(BOOL *)submitted
{
  activityCopy = activity;
  clientProvidedIdentifier = [(_DASActivity *)self clientProvidedIdentifier];
  clientProvidedIdentifier2 = [activityCopy clientProvidedIdentifier];
  v9 = [clientProvidedIdentifier isEqualToString:clientProvidedIdentifier2];

  if (v9)
  {
    launchReason = [(_DASActivity *)self launchReason];
    launchReason2 = [activityCopy launchReason];
    v12 = [launchReason isEqualToString:launchReason2];

    if (v12)
    {
      launchReason3 = [(_DASActivity *)self launchReason];
      if ([launchReason3 isEqualToString:@"com.apple.das.bgprocessing"])
      {
        requiresPlugin = [(_DASActivity *)self requiresPlugin];
        if (requiresPlugin != [activityCopy requiresPlugin])
        {
LABEL_12:

          goto LABEL_22;
        }

        requiresNetwork = [(_DASActivity *)self requiresNetwork];
        requiresNetwork2 = [activityCopy requiresNetwork];

        if (requiresNetwork != requiresNetwork2)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      launchReason3 = [(_DASActivity *)self launchReason];
      if ([launchReason3 isEqualToString:@"com.apple.das.bghealthresearch"])
      {
        requiresPlugin2 = [(_DASActivity *)self requiresPlugin];
        if (requiresPlugin2 != [activityCopy requiresPlugin])
        {
          goto LABEL_12;
        }

        requiresNetwork3 = [(_DASActivity *)self requiresNetwork];
        if (requiresNetwork3 != [activityCopy requiresNetwork])
        {
          goto LABEL_12;
        }

        fileProtection = [(_DASActivity *)self fileProtection];
        fileProtection2 = [activityCopy fileProtection];
        v34 = [fileProtection isEqual:fileProtection2];

        if (!v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      clientProvidedStartDate = [(_DASActivity *)self clientProvidedStartDate];
      clientProvidedStartDate2 = [activityCopy clientProvidedStartDate];
      v23 = clientProvidedStartDate2 != 0;

      if ((clientProvidedStartDate == 0) != v23)
      {
        clientProvidedStartDate3 = [(_DASActivity *)self clientProvidedStartDate];
        if (clientProvidedStartDate3)
        {
          v25 = clientProvidedStartDate3;
          clientProvidedStartDate4 = [activityCopy clientProvidedStartDate];
          if (clientProvidedStartDate4)
          {
            v27 = clientProvidedStartDate4;
            clientProvidedStartDate5 = [(_DASActivity *)self clientProvidedStartDate];
            clientProvidedStartDate6 = [activityCopy clientProvidedStartDate];
            [clientProvidedStartDate5 timeIntervalSinceDate:clientProvidedStartDate6];
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
  *submitted = v18;

  return v17;
}

- (void)reconcileWithActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = activityCopy;
  objc_sync_enter(obj);
  uuid = [(_DASActivity *)selfCopy uuid];
  uuid2 = [obj uuid];
  v8 = [uuid isEqual:uuid2];

  if (v8)
  {
    [(_DASActivity *)selfCopy percentCompleted];
    v10 = v9;
    [obj percentCompleted];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    [(_DASActivity *)selfCopy setPercentCompleted:v11];
    [obj lastComputedScore];
    [(_DASActivity *)selfCopy setLastComputedScore:?];
    [obj predictedOptimalScore];
    [(_DASActivity *)selfCopy setPredictedOptimalScore:?];
    -[_DASActivity setLastDenialValue:](selfCopy, "setLastDenialValue:", [obj lastDenialValue]);
    -[_DASActivity setWasForceRun:](selfCopy, "setWasForceRun:", [obj wasForceRun]);
    -[_DASActivity setBypassesPredictions:](selfCopy, "setBypassesPredictions:", [obj bypassesPredictions]);
    -[_DASActivity setStaticPriority:](selfCopy, "setStaticPriority:", [obj staticPriority]);
    assertion = [obj assertion];
    [(_DASActivity *)selfCopy setAssertion:assertion];

    submitDate = [obj submitDate];
    v14 = [submitDate copy];
    [(_DASActivity *)selfCopy setSubmitDate:v14];

    predictedOptimalStartDate = [obj predictedOptimalStartDate];
    v16 = [predictedOptimalStartDate copy];
    [(_DASActivity *)selfCopy setPredictedOptimalStartDate:v16];

    lastScored = [obj lastScored];
    v18 = [lastScored copy];
    [(_DASActivity *)selfCopy setLastScored:v18];

    suspendRequestDate = [obj suspendRequestDate];
    v20 = [suspendRequestDate copy];
    [(_DASActivity *)selfCopy setSuspendRequestDate:v20];

    policyResponseMetadata = [obj policyResponseMetadata];
    v22 = [policyResponseMetadata mutableCopy];
    [(_DASActivity *)selfCopy setPolicyResponseMetadata:v22];

    startConditions = [obj startConditions];
    v24 = [startConditions mutableCopy];
    [(_DASActivity *)selfCopy setStartConditions:v24];

    limitationResponse = [obj limitationResponse];
    v26 = [limitationResponse mutableCopy];
    [(_DASActivity *)selfCopy setLimitationResponse:v26];

    progress = [obj progress];
    [(_DASActivity *)selfCopy setProgress:progress];

    -[_DASActivity setMaximumRuntime:](selfCopy, "setMaximumRuntime:", [obj maximumRuntime]);
    internalGroupNames = [obj internalGroupNames];
    v29 = [internalGroupNames copy];
    [(_DASActivity *)selfCopy setInternalGroupNames:v29];

    -[_DASActivity setUninterruptibleDuration:](selfCopy, "setUninterruptibleDuration:", [obj uninterruptibleDuration]);
    -[_DASActivity setRequestsImmediateRuntime:](selfCopy, "setRequestsImmediateRuntime:", [obj requestsImmediateRuntime]);
    rateLimitConfigurationName = [obj rateLimitConfigurationName];
    [(_DASActivity *)selfCopy setRateLimitConfigurationName:rateLimitConfigurationName];

    widgetID = [obj widgetID];
    [(_DASActivity *)selfCopy setWidgetID:widgetID];

    widgetBudgetID = [obj widgetBudgetID];
    [(_DASActivity *)selfCopy setWidgetBudgetID:widgetBudgetID];

    producedResultIdentifiers = [obj producedResultIdentifiers];
    v34 = [producedResultIdentifiers copy];
    [(_DASActivity *)selfCopy setProducedResultIdentifiers:v34];

    dependencies = [obj dependencies];
    v36 = [dependencies copy];
    [(_DASActivity *)selfCopy setDependencies:v36];
  }

  objc_sync_exit(obj);

  objc_sync_exit(selfCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_schedulingPriority];
  [coderCopy encodeObject:v4 forKey:@"schedPriority"];

  startBefore = [(_DASActivity *)self startBefore];
  [coderCopy encodeObject:startBefore forKey:@"before"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_duration];
  [coderCopy encodeObject:v6 forKey:@"duration"];

  startAfter = [(_DASActivity *)self startAfter];
  [coderCopy encodeObject:startAfter forKey:@"after"];

  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  if ([(_DASFileProtection *)self->_fileProtection indicatesProtection])
  {
    [coderCopy encodeObject:self->_fileProtection forKey:@"fileProtection"];
  }

  if (self->_suspendable)
  {
    [coderCopy encodeBool:1 forKey:@"suspendable"];
  }

  if (self->_cancelAfterDeadline)
  {
    [coderCopy encodeBool:1 forKey:@"deadlineCancel"];
  }

  if (self->_requiresNetwork)
  {
    [coderCopy encodeBool:1 forKey:@"reqNW"];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_downloadSize];
    [coderCopy encodeObject:v8 forKey:@"nwDownloadSize"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uploadSize];
    [coderCopy encodeObject:v9 forKey:@"nwUploadSize"];

    [coderCopy encodeBool:self->_isUpload forKey:@"isUpload"];
    [coderCopy encodeBool:self->_requiresInexpensiveNetworking forKey:@"cheapNW"];
    [coderCopy encodeBool:self->_requiresUnconstrainedNetworking forKey:@"unconstrainedNW"];
  }

  if (self->_shouldWakeDevice)
  {
    [coderCopy encodeBool:1 forKey:@"shouldWakeDevice"];
  }

  if (self->_cpuIntensive)
  {
    [coderCopy encodeBool:1 forKey:@"cpu"];
  }

  if (self->_memoryIntensive)
  {
    [coderCopy encodeBool:1 forKey:@"mem"];
  }

  if (self->_diskIntensive)
  {
    [coderCopy encodeBool:1 forKey:@"disk"];
  }

  if (self->_aneIntensive)
  {
    [coderCopy encodeBool:1 forKey:@"ane"];
  }

  if (self->_gpuIntensive)
  {
    [coderCopy encodeBool:1 forKey:@"gpu"];
  }

  if (self->_afterUserIsInactive)
  {
    [coderCopy encodeBool:1 forKey:@"afterInactive"];
  }

  if (self->_beforeUserIsActive)
  {
    [coderCopy encodeBool:1 forKey:@"beforeActive"];
  }

  if (self->_requiresDeviceInactivity)
  {
    [coderCopy encodeBool:1 forKey:@"inactive"];
  }

  if (self->_darkWakeEligible)
  {
    [coderCopy encodeBool:1 forKey:@"darkWake"];
  }

  if (self->_beforeDaysFirstActivity)
  {
    [coderCopy encodeBool:1 forKey:@"apprefresh"];
  }

  if (self->_interval != 0.0)
  {
    [coderCopy encodeDouble:@"interval" forKey:?];
  }

  if (self->_requiresPlugin)
  {
    [coderCopy encodeBool:1 forKey:@"plugin"];
  }

  if (self->_dataBudgeted)
  {
    [coderCopy encodeBool:1 forKey:@"dataBudgeted"];
  }

  if (self->_triggersRestart)
  {
    [coderCopy encodeBool:1 forKey:@"restart"];
  }

  if (self->_preventDeviceSleep)
  {
    [coderCopy encodeBool:1 forKey:@"preventSleep"];
  }

  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    [coderCopy encodeInteger:targetDevice forKey:@"target"];
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    [coderCopy encodeObject:remoteDevice forKey:@"remote"];
  }

  if (self->_requiresRemoteDeviceWake)
  {
    [coderCopy encodeBool:1 forKey:@"remoteDeviceWake"];
  }

  if (self->_supportsAnyApplication)
  {
    [coderCopy encodeBool:1 forKey:@"anyApp"];
  }

  if (self->_requestsApplicationLaunch)
  {
    [coderCopy encodeBool:1 forKey:@"appLaunch"];
  }

  if (self->_requestsImmediateRuntime)
  {
    [coderCopy encodeBool:1 forKey:@"requestsimmediateRuntime"];
  }

  if (self->_requestsExtensionLaunch)
  {
    [coderCopy encodeBool:1 forKey:@"extLaunch"];
  }

  extensionIdentifier = self->_extensionIdentifier;
  if (extensionIdentifier)
  {
    [coderCopy encodeObject:extensionIdentifier forKey:@"extId"];
  }

  if (self->_shouldBePersisted)
  {
    [coderCopy encodeBool:1 forKey:@"persist"];
  }

  launchReason = self->_launchReason;
  if (launchReason)
  {
    [coderCopy encodeObject:launchReason forKey:@"launchReason"];
  }

  relatedApplications = self->_relatedApplications;
  if (relatedApplications)
  {
    [coderCopy encodeObject:relatedApplications forKey:@"related"];
  }

  if (self->_runWhenAppLaunchUnlikely)
  {
    [coderCopy encodeBool:1 forKey:@"runWhenAppLaunchUnkely"];
  }

  involvedProcesses = self->_involvedProcesses;
  if (involvedProcesses)
  {
    [coderCopy encodeObject:involvedProcesses forKey:@"involvedProcesses"];
  }

  groupName = self->_groupName;
  if (groupName)
  {
    [coderCopy encodeObject:groupName forKey:@"groupName"];
  }

  userInfo = [(_DASActivity *)self userInfo];
  v18 = [userInfo mutableCopy];

  if ([v18 count])
  {
    v19 = [v18 objectForKeyedSubscript:@"progress"];
    if (v19)
    {
      v20 = [[_DASActivityProgressWrapper alloc] initWithProgress:v19];
      [v18 setObject:v20 forKeyedSubscript:@"progress"];
    }

    v21 = [v18 copy];
    [coderCopy encodeObject:v21 forKey:@"userInfo"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [coderCopy encodeObject:bundleId forKey:@"bundleID"];
  }

  startDate = [(_DASActivity *)self startDate];

  if (startDate)
  {
    startDate2 = [(_DASActivity *)self startDate];
    [coderCopy encodeObject:startDate2 forKey:@"startDate"];
  }

  submitDate = self->_submitDate;
  if (submitDate)
  {
    [coderCopy encodeObject:submitDate forKey:@"submitDate"];
  }

  lastScored = [(_DASActivity *)self lastScored];

  if (lastScored)
  {
    [coderCopy encodeDouble:@"lastScore" forKey:self->_lastComputedScore];
    lastScored2 = [(_DASActivity *)self lastScored];
    [coderCopy encodeObject:lastScored2 forKey:@"lastScored"];
  }

  predictedOptimalStartDate = [(_DASActivity *)self predictedOptimalStartDate];

  if (predictedOptimalStartDate)
  {
    predictedOptimalStartDate2 = [(_DASActivity *)self predictedOptimalStartDate];
    [coderCopy encodeObject:predictedOptimalStartDate2 forKey:@"predStart"];

    [coderCopy encodeDouble:@"predOpt" forKey:self->_predictedOptimalScore];
  }

  motionState = self->_motionState;
  if (motionState)
  {
    [coderCopy encodeInteger:motionState forKey:@"motionState"];
  }

  v31 = coderCopy;
  if (self->_delayedStart)
  {
    [coderCopy encodeBool:1 forKey:@"delayedStart"];
    v31 = coderCopy;
  }

  if (self->_pid >= 1)
  {
    [coderCopy encodeInt:? forKey:?];
    v31 = coderCopy;
  }

  clientDataBudgetName = self->_clientDataBudgetName;
  if (clientDataBudgetName)
  {
    [coderCopy encodeObject:clientDataBudgetName forKey:@"clientCellBudget"];
    v31 = coderCopy;
  }

  clientName = self->_clientName;
  if (clientName)
  {
    [coderCopy encodeObject:clientName forKey:@"clientName"];
    v31 = coderCopy;
  }

  if (self->_deferred)
  {
    [coderCopy encodeBool:1 forKey:@"deferred"];
    v31 = coderCopy;
  }

  if (self->_percentCompleted > 0.0)
  {
    [coderCopy encodeDouble:@"percentCompleted" forKey:?];
    v31 = coderCopy;
  }

  completionStatus = self->_completionStatus;
  if (completionStatus)
  {
    [coderCopy encodeInteger:completionStatus forKey:@"completionStatus"];
    v31 = coderCopy;
  }

  preClearedMode = self->_preClearedMode;
  if (preClearedMode)
  {
    [coderCopy encodeInteger:preClearedMode forKey:@"preCleared"];
    v31 = coderCopy;
  }

  if (self->_requiresBuddyComplete)
  {
    [coderCopy encodeBool:1 forKey:@"buddyComplete"];
    v31 = coderCopy;
  }

  [v31 encodeInt64:self->_userIdentifier forKey:@"userIdentifier"];
  if (self->_runOnAppForeground)
  {
    [coderCopy encodeBool:1 forKey:@"runOnAppFG"];
  }

  widgetBudgetID = self->_widgetBudgetID;
  if (widgetBudgetID)
  {
    [coderCopy encodeObject:widgetBudgetID forKey:@"widgetBudgetID"];
  }

  widgetID = self->_widgetID;
  if (widgetID)
  {
    [coderCopy encodeObject:widgetID forKey:@"widgetID"];
  }

  rateLimitConfigurationName = self->_rateLimitConfigurationName;
  if (rateLimitConfigurationName)
  {
    [coderCopy encodeObject:rateLimitConfigurationName forKey:@"rateLimitConfigName"];
  }

  limitationResponse = self->_limitationResponse;
  if (limitationResponse)
  {
    [coderCopy encodeObject:limitationResponse forKey:@"limitationResponses"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [coderCopy encodeObject:serviceName forKey:@"serviceNameKey"];
  }

  if (self->_backlogged)
  {
    [coderCopy encodeBool:1 forKey:@"backlogged"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [coderCopy encodeObject:activityType forKey:@"activityType"];
  }

  featureCodes = self->_featureCodes;
  if (featureCodes)
  {
    [coderCopy encodeObject:featureCodes forKey:@"featureCodes"];
  }

  fastPass = self->_fastPass;
  if (fastPass)
  {
    [coderCopy encodeObject:fastPass forKey:@"fastPass"];
  }

  producedResultIdentifiers = self->_producedResultIdentifiers;
  if (producedResultIdentifiers)
  {
    [coderCopy encodeObject:producedResultIdentifiers forKey:@"producedResultIdentifiers"];
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    [coderCopy encodeObject:dependencies forKey:@"dependencies"];
  }

  continuedProcessingWrapper = self->_continuedProcessingWrapper;
  if (continuedProcessingWrapper)
  {
    [coderCopy encodeObject:continuedProcessingWrapper forKey:@"continuedProcessingWrapper"];
  }

  diskVolume = self->_diskVolume;
  if (diskVolume)
  {
    [coderCopy encodeObject:diskVolume forKey:@"diskVolume"];
  }

  if (self->_lastDenialValue)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [coderCopy encodeObject:v48 forKey:@"lastDenialValue"];
  }
}

- (void)setRelatedApplications:(id)applications
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [applications copy];
  v5 = [v4 orderedSetWithArray:v8];
  array = [v5 array];
  relatedApplications = self->_relatedApplications;
  self->_relatedApplications = array;
}

- (void)setInvolvedProcesses:(id)processes
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [processes copy];
  v5 = [v4 orderedSetWithArray:v8];
  array = [v5 array];
  involvedProcesses = self->_involvedProcesses;
  self->_involvedProcesses = array;
}

- (_DASActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v126.receiver = self;
  v126.super_class = _DASActivity;
  v5 = [(_DASActivity *)&v126 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schedPriority"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"before"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"after"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
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
    if ([coderCopy containsValueForKey:@"fileProtection"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileProtection"];
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

    v5->_suspendable = [coderCopy decodeBoolForKey:@"suspendable"];
    v5->_cancelAfterDeadline = [coderCopy decodeBoolForKey:@"deadlineCancel"];
    v5->_shouldWakeDevice = [coderCopy decodeBoolForKey:@"shouldWakeDevice"];
    v5->_requiresNetwork = [coderCopy decodeBoolForKey:@"reqNW"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nwDownloadSize"];
    v17 = v16;
    if (v16)
    {
      v5->_downloadSize = [v16 unsignedIntegerValue];
    }

    v117 = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nwUploadSize"];
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
    v5->_isUpload = [coderCopy decodeBoolForKey:@"isUpload"];
    v5->_requiresInexpensiveNetworking = [coderCopy decodeBoolForKey:@"cheapNW"];
    v5->_requiresUnconstrainedNetworking = [coderCopy decodeBoolForKey:@"unconstrainedNW"];
    v5->_cpuIntensive = [coderCopy decodeBoolForKey:@"cpu"];
    v5->_memoryIntensive = [coderCopy decodeBoolForKey:@"mem"];
    v5->_diskIntensive = [coderCopy decodeBoolForKey:@"disk"];
    v5->_aneIntensive = [coderCopy decodeBoolForKey:@"ane"];
    v5->_gpuIntensive = [coderCopy decodeBoolForKey:@"gpu"];
    v5->_afterUserIsInactive = [coderCopy decodeBoolForKey:@"afterInactive"];
    v5->_beforeUserIsActive = [coderCopy decodeBoolForKey:@"beforeActive"];
    v5->_beforeUserIsActive = [coderCopy decodeBoolForKey:@"beforeActive"];
    v5->_requiresDeviceInactivity = [coderCopy decodeBoolForKey:@"inactive"];
    v5->_darkWakeEligible = [coderCopy decodeBoolForKey:@"darkWake"];
    v5->_beforeDaysFirstActivity = [coderCopy decodeBoolForKey:@"apprefresh"];
    [coderCopy decodeDoubleForKey:@"interval"];
    v5->_interval = v20;
    v5->_requiresPlugin = [coderCopy decodeBoolForKey:@"plugin"];
    v5->_dataBudgeted = [coderCopy decodeBoolForKey:@"dataBudgeted"];
    v5->_triggersRestart = [coderCopy decodeBoolForKey:@"restart"];
    v5->_preventDeviceSleep = [coderCopy decodeBoolForKey:@"preventSleep"];
    v5->_supportsAnyApplication = [coderCopy decodeBoolForKey:@"anyApp"];
    v5->_requestsApplicationLaunch = [coderCopy decodeBoolForKey:@"appLaunch"];
    v5->_requestsExtensionLaunch = [coderCopy decodeBoolForKey:@"extLaunch"];
    v5->_requestsImmediateRuntime = [coderCopy decodeBoolForKey:@"requestsimmediateRuntime"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extId"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v21;

    v5->_shouldBePersisted = [coderCopy decodeBoolForKey:@"persist"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v23;

    if ([coderCopy containsValueForKey:@"target"])
    {
      v5->_targetDevice = [coderCopy decodeIntForKey:@"target"];
    }

    v5->_requiresRemoteDeviceWake = [coderCopy decodeBoolForKey:@"remoteDeviceWake"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remote"];
    remoteDevice = v5->_remoteDevice;
    v5->_remoteDevice = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v123 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:? forKey:?];
    v30 = [v29 mutableCopy];

    if ([v30 count])
    {
      v31 = 0;
      do
      {
        v32 = [v30 objectAtIndexedSubscript:v31];
        dk_dedup = [v32 dk_dedup];
        [v30 setObject:dk_dedup atIndexedSubscript:v31];

        ++v31;
      }

      while (v31 < [v30 count]);
    }

    v34 = [v30 copy];
    relatedApplications = v5->_relatedApplications;
    v5->_relatedApplications = v34;

    v36 = [coderCopy decodeObjectOfClasses:v123 forKey:@"involvedProcesses"];
    v37 = [v36 mutableCopy];

    if ([v37 count])
    {
      v38 = 0;
      do
      {
        v39 = [v37 objectAtIndexedSubscript:v38];
        dk_dedup2 = [v39 dk_dedup];
        [v37 setObject:dk_dedup2 atIndexedSubscript:v38];

        ++v38;
      }

      while (v38 < [v37 count]);
    }

    v41 = [v37 copy];
    involvedProcesses = v5->_involvedProcesses;
    v5->_involvedProcesses = v41;

    v5->_runWhenAppLaunchUnlikely = [coderCopy decodeBoolForKey:@"runWhenAppLaunchUnkely"];
    v43 = +[_DASActivity validClassesForUserInfoSerialization];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"userInfo"];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __30___DASActivity_initWithCoder___block_invoke;
    v124[3] = &unk_1E7C8F530;
    v114 = dictionary;
    v115 = v44;
    v125 = v114;
    [v44 enumerateKeysAndObjectsUsingBlock:v124];
    objc_storeStrong(&v5->_userInfo, dictionary);
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
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

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(_DASActivity *)v5 setStartDate:v52];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitDate"];
    submitDate = v5->_submitDate;
    v5->_submitDate = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastScored"];
    [(_DASActivity *)v5 setLastScored:v55];

    [coderCopy decodeDoubleForKey:@"lastScore"];
    v5->_lastComputedScore = v56;
    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predStart"];
    predictedOptimalStartDate = v5->_predictedOptimalStartDate;
    v5->_predictedOptimalStartDate = v57;

    [coderCopy decodeDoubleForKey:@"predOpt"];
    v5->_predictedOptimalScore = v59;
    if ([coderCopy containsValueForKey:@"motionState"])
    {
      v5->_motionState = [coderCopy decodeIntegerForKey:@"motionState"];
    }

    if ([coderCopy containsValueForKey:@"deferred"])
    {
      v5->_deferred = [coderCopy decodeBoolForKey:@"deferred"];
    }

    v5->_delayedStart = [coderCopy decodeBoolForKey:@"delayedStart"];
    v5->_pid = [coderCopy decodeIntForKey:@"pid"];
    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientCellBudget"];
    clientDataBudgetName = v5->_clientDataBudgetName;
    v5->_clientDataBudgetName = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    dk_dedup3 = [v62 dk_dedup];
    clientName = v5->_clientName;
    v5->_clientName = dk_dedup3;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v65;

    [coderCopy decodeDoubleForKey:@"percentCompleted"];
    v5->_percentCompleted = v67;
    v5->_completionStatus = [coderCopy decodeIntegerForKey:@"completionStatus"];
    if ([coderCopy containsValueForKey:@"preCleared"])
    {
      v5->_preClearedMode = [coderCopy decodeIntegerForKey:@"preCleared"];
    }

    if ([coderCopy containsValueForKey:@"buddyComplete"])
    {
      v5->_requiresBuddyComplete = [coderCopy decodeBoolForKey:@"buddyComplete"];
    }

    if ([coderCopy containsValueForKey:@"userIdentifier"])
    {
      v5->_userIdentifier = [coderCopy decodeInt64ForKey:@"userIdentifier"];
    }

    v5->_runOnAppForeground = [coderCopy decodeBoolForKey:@"runOnAppFG"];
    v5->_backlogged = [coderCopy decodeBoolForKey:@"backlogged"];
    if ([coderCopy containsValueForKey:@"widgetBudgetID"])
    {
      v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetBudgetID"];
      widgetBudgetID = v5->_widgetBudgetID;
      v5->_widgetBudgetID = v68;
    }

    if ([coderCopy containsValueForKey:@"widgetID"])
    {
      v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetID"];
      widgetID = v5->_widgetID;
      v5->_widgetID = v70;
    }

    if ([coderCopy containsValueForKey:@"rateLimitConfigName"])
    {
      v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rateLimitConfigName"];
      rateLimitConfigurationName = v5->_rateLimitConfigurationName;
      v5->_rateLimitConfigurationName = v72;
    }

    if ([coderCopy containsValueForKey:@"limitationResponses"])
    {
      v74 = MEMORY[0x1E695DFD8];
      v75 = objc_opt_class();
      v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
      v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"limitationResponses"];
      v78 = [v77 mutableCopy];

      v79 = [v78 copy];
      limitationResponse = v5->_limitationResponse;
      v5->_limitationResponse = v79;
    }

    if ([coderCopy containsValueForKey:@"serviceNameKey"])
    {
      v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceNameKey"];
      serviceName = v5->_serviceName;
      v5->_serviceName = v81;
    }

    if ([coderCopy containsValueForKey:@"featureCodes"])
    {
      v83 = MEMORY[0x1E695DFD8];
      v84 = objc_opt_class();
      v85 = [v83 setWithObjects:{v84, objc_opt_class(), 0}];
      v86 = [coderCopy decodeObjectOfClasses:v85 forKey:@"featureCodes"];
      v87 = [v86 mutableCopy];

      v88 = [v87 copy];
      featureCodes = v5->_featureCodes;
      v5->_featureCodes = v88;
    }

    if ([coderCopy containsValueForKey:@"fastPass"])
    {
      v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fastPass"];
      fastPass = v5->_fastPass;
      v5->_fastPass = v90;
    }

    if ([coderCopy containsValueForKey:@"producedResultIdentifiers"])
    {
      v92 = MEMORY[0x1E695DFD8];
      v93 = objc_opt_class();
      v94 = objc_opt_class();
      v95 = [v92 setWithObjects:{v93, v94, objc_opt_class(), 0}];
      v96 = [coderCopy decodeObjectOfClasses:v95 forKey:@"producedResultIdentifiers"];

      v97 = [v96 copy];
      producedResultIdentifiers = v5->_producedResultIdentifiers;
      v5->_producedResultIdentifiers = v97;
    }

    if ([coderCopy containsValueForKey:@"dependencies"])
    {
      v99 = MEMORY[0x1E695DFD8];
      v100 = objc_opt_class();
      v101 = objc_opt_class();
      v102 = [v99 setWithObjects:{v100, v101, objc_opt_class(), 0}];
      v103 = [coderCopy decodeObjectOfClasses:v102 forKey:@"dependencies"];

      v104 = [v103 copy];
      dependencies = v5->_dependencies;
      v5->_dependencies = v104;
    }

    if ([coderCopy containsValueForKey:@"continuedProcessingWrapper"])
    {
      v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"continuedProcessingWrapper"];
      v107 = [v106 copy];
      continuedProcessingWrapper = v5->_continuedProcessingWrapper;
      v5->_continuedProcessingWrapper = v107;
    }

    if ([coderCopy containsValueForKey:@"diskVolume"])
    {
      v109 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskVolume"];
      diskVolume = v5->_diskVolume;
      v5->_diskVolume = v109;
    }

    if ([coderCopy containsValueForKey:@"lastDenialValue"])
    {
      v111 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDenialValue"];
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

+ (id)prettySchedulingPriorityDescription:(unint64_t)description
{
  if (_DASSchedulingPriorityUserInitiatedOvercommit == description)
  {
    return @"UserInitiatedOvercommit";
  }

  if (_DASSchedulingPriorityUserInitiated == description)
  {
    return @"UserInitiated";
  }

  if (_DASSchedulingPriorityDefault == description)
  {
    return @"Default";
  }

  if (_DASSchedulingPriorityUtility == description)
  {
    return @"Utility";
  }

  if (_DASSchedulingPriorityBackground == description)
  {
    return @"Background";
  }

  if (_DASSchedulingPriorityMaintenance == description)
  {
    return @"Maintenance";
  }

  return &stru_1F2EC9F10;
}

- (unint64_t)hashArrayOfString:(id)string
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [string sortedArrayUsingSelector:sel_compare_];
  string = [MEMORY[0x1E696AD60] string];
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

        [string appendString:{*(*(&v13 + 1) + 8 * v9++), v13}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [string hash];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if ([(_DASActivity *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    uuid = self->_uuid;
    uuid = [(_DASActivity *)equalCopy uuid];
    v7 = [(NSUUID *)uuid isEqual:uuid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end