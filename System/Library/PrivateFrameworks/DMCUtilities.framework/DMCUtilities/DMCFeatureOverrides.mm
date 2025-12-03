@interface DMCFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)key;
+ (BOOL)fakePushToken;
+ (BOOL)forceAppInstallUnremovability;
+ (BOOL)forceAppRemovalOnUnenroll;
+ (BOOL)forceMediaCommandSupport;
+ (BOOL)sentinelExistsAtPath:(id)path;
+ (BOOL)shouldPreserveUserDefaultsForReturnToService;
+ (BOOL)shouldSimulateMDMCommunication;
+ (BOOL)shouldSuppressRRTSOnIdleTimeout;
+ (double)accountSignInTimeoutThresholdWithDefaultValue:(double)value;
+ (double)awaitSystemDeletableAppsTimeoutWithDefaultValue:(double)value;
+ (double)depPushTokenPeriodicSyncIntervalWithDefaultValue:(double)value;
+ (double)enrollmentStepTimeoutThresholdWithDefaultValue:(double)value;
+ (double)nagMigrationGracePeriod;
+ (id)_allOverrides;
+ (id)activationRecordFlagsWithFlags:(id)flags;
+ (id)appleMDMWellKnownURLWithDefaultValue:(id)value;
+ (id)bootstrapTokenOverrideWithDefaultValue:(id)value;
+ (id)deviceNameWithDefaultValue:(id)value;
+ (id)dictForDefaultsKey:(id)key;
+ (id)enrollmentProfileWithDefaultValue:(id)value;
+ (id)gestaltOverrideForKey:(__CFString *)key withDefaultValue:(id)value;
+ (id)mdmAppInstallationSourceIdentifierWithDefaultValue:(id)value;
+ (id)modelNameWithDefaultValue:(id)value;
+ (id)modelNumberWithDefaultValue:(id)value;
+ (id)numberForDefaultsKey:(id)key;
+ (id)objectForDefaultsKey:(id)key;
+ (id)productNameWithDefaultValue:(id)value;
+ (id)serviceDiscoveryDefaultPortWithValue:(id)value;
+ (id)serviceDiscoveryDomainWithValue:(id)value;
+ (id)serviceDiscoveryFallbackURLWithValue:(id)value;
+ (id)simulatedMDMAccountDrivenEnrollmentAuthenticationResults;
+ (id)softwareUpdateDeviceIDWithDefaultValue:(id)value;
+ (id)stringForDefaultsKey:(id)key;
+ (id)wellKnownDiscoveryURLWithValue:(id)value;
@end

@implementation DMCFeatureOverrides

+ (id)stringForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults stringForDefaultsKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)numberForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults numberForDefaultsKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)BOOLForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults BOOLForDefaultsKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults dictForDefaultsKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objectForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults objectForDefaultsKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)sentinelExistsAtPath:(id)path
{
  pathCopy = path;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)accountSignInTimeoutThresholdWithDefaultValue:(double)value
{
  v4 = [self numberForDefaultsKey:@"AccountSignInTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    value = v6;
  }

  return value;
}

+ (id)enrollmentProfileWithDefaultValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"MDMProfilePath"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (double)enrollmentStepTimeoutThresholdWithDefaultValue:(double)value
{
  v4 = [self numberForDefaultsKey:@"EnrollmentStepTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    value = v6;
  }

  return value;
}

+ (id)serviceDiscoveryDefaultPortWithValue:(id)value
{
  valueCopy = value;
  v5 = [self numberForDefaultsKey:@"ServiceDiscoveryDefaultPort"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)serviceDiscoveryDomainWithValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"ServiceDiscoveryDomain"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)appleMDMWellKnownURLWithDefaultValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"AppleMDMWellKnownURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)serviceDiscoveryFallbackURLWithValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"ServiceDiscoveryFallbackURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)wellKnownDiscoveryURLWithValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"WellKnownDiscoveryURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)shouldSimulateMDMCommunication
{
  if ([self BOOLForDefaultsKey:@"SimulateMDMCommunication"])
  {
    return 1;
  }

  return [self sentinelExistsAtPath:@"/var/db/MDM_EnableSim"];
}

+ (id)simulatedMDMAccountDrivenEnrollmentAuthenticationResults
{
  v2 = [self objectForDefaultsKey:@"SimulatedMDMAccountDrivenEnrollmentAuthenticationResults"];
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)activationRecordFlagsWithFlags:(id)flags
{
  flagsCopy = flags;
  if (([self sentinelExistsAtPath:*MEMORY[0x1E6999728]] & 1) != 0 || (objc_msgSend(self, "stringForDefaultsKey:", *MEMORY[0x1E69997B8]), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = ([flagsCopy intValue] | 1);
    }

    else
    {
      v6 = 1;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v6];
  }

  else
  {
    v7 = flagsCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)modelNameWithDefaultValue:(id)value
{
  valueCopy = value;
  if ([self _isUnknownProduct])
  {
    v5 = @"iProd";
  }

  else
  {
    v5 = [self stringForDefaultsKey:@"DMCModelNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = valueCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)modelNumberWithDefaultValue:(id)value
{
  valueCopy = value;
  if ([self _isUnknownProduct])
  {
    v5 = @"iProd";
  }

  else
  {
    v5 = [self stringForDefaultsKey:@"DMCModelNumberOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = valueCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)productNameWithDefaultValue:(id)value
{
  valueCopy = value;
  if ([self _isUnknownProduct])
  {
    v5 = @"iProd1,1";
  }

  else
  {
    v5 = [self stringForDefaultsKey:@"DMCProductNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = valueCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)deviceNameWithDefaultValue:(id)value
{
  valueCopy = value;
  if ([self _isUnknownProduct])
  {
    v5 = @"iDevice";
  }

  else
  {
    v5 = [self stringForDefaultsKey:@"DMCDeviceNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = valueCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)softwareUpdateDeviceIDWithDefaultValue:(id)value
{
  valueCopy = value;
  if ([self _isUnknownProduct])
  {
    v5 = @"iProd1,1";
  }

  else
  {
    v5 = [self stringForDefaultsKey:@"DMCSoftwareUpdateDeviceIDOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = valueCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)gestaltOverrideForKey:(__CFString *)key withDefaultValue:(id)value
{
  valueCopy = value;
  v7 = [self objectForDefaultsKey:@"DMCMobileGestaltOverride"];
  v8 = [v7 objectForKeyedSubscript:key];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

+ (id)mdmAppInstallationSourceIdentifierWithDefaultValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"DMCMDMAppSourceIdentifierOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)forceAppInstallUnremovability
{
  v2 = [self numberForDefaultsKey:@"DMCDefaultsKeyForceAppInstallUnremovability"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)forceAppRemovalOnUnenroll
{
  v2 = [self numberForDefaultsKey:@"DMCDefaultsKeyForceAppRemovalOnUnenroll"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)forceMediaCommandSupport
{
  v2 = [self numberForDefaultsKey:@"DMCEnableMediaCommands"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)shouldSuppressRRTSOnIdleTimeout
{
  v2 = [self numberForDefaultsKey:@"DMCSuppressRRTSOnIdleTimeout"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)shouldPreserveUserDefaultsForReturnToService
{
  v2 = [self numberForDefaultsKey:@"DMCPreserveUserDefaultsForRTS"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)awaitSystemDeletableAppsTimeoutWithDefaultValue:(double)value
{
  v4 = [self numberForDefaultsKey:@"DMCAwaitSystemDeletableAppsTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    value = v6;
  }

  return value;
}

+ (id)bootstrapTokenOverrideWithDefaultValue:(id)value
{
  valueCopy = value;
  v5 = [self objectForDefaultsKey:@"DMCBootstrapTokenOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (double)nagMigrationGracePeriod
{
  v2 = [self numberForDefaultsKey:@"DMCNagMigrationGracePeriod"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

+ (BOOL)fakePushToken
{
  v2 = [self numberForDefaultsKey:@"DMCFakePushToken"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)depPushTokenPeriodicSyncIntervalWithDefaultValue:(double)value
{
  v4 = [self numberForDefaultsKey:@"DMCDEPPushTokenSyncInterval"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    value = v6;
  }

  return value;
}

+ (id)_allOverrides
{
  v5[46] = *MEMORY[0x1E69E9840];
  v5[0] = @"AccountSignInTimeout";
  v5[1] = @"DMCAllowAnyESSOTestApplicationEntitlements";
  v5[2] = @"AllowAnyMAID";
  v5[3] = @"AppleMDMWellKnownURL";
  v5[4] = @"EnrollmentStepTimeout";
  v5[5] = @"DMCIgnoreEnrollmentMode";
  v5[6] = @"MDMProfilePath";
  v5[7] = @"ServiceDiscoveryDefaultPort";
  v5[8] = @"ServiceDiscoveryDomain";
  v5[9] = @"ServiceDiscoveryFallbackServerVersion";
  v5[10] = @"ServiceDiscoveryFallbackURL";
  v5[11] = @"DMCUseNonEphemeralWebAuthSession";
  v5[12] = @"WellKnownDiscoveryURL";
  v5[13] = @"SimulatedCloudConfigProfile";
  v5[14] = @"SimulateDEPCommunication";
  v5[15] = @"SimulatedMDMAccountDrivenEnrollmentAuthenticationResults";
  v5[16] = @"SimulatedMDMAccountDrivenEnrollmentAuthMethod";
  v5[17] = @"SimulatedMDMAccountDrivenEnrollmentDefaultUsername";
  v5[18] = @"SimulatedMDMEnrollmentMode";
  v5[19] = @"SimulatedMDMEnrollmentProfile";
  v5[20] = @"SimulatedWiFiProfile";
  v5[21] = @"SimulateMDMAccountDrivenEnrollment";
  v5[22] = @"SimulateMDMCommunication";
  v5[23] = @"SimulateRapidReturnToService";
  v5[24] = @"DMCBypassMDMTLSClientAuthentication";
  v5[25] = @"UseHTTPLogging";
  v5[26] = @"DMCAttestationRateLimitOverrideMinutes";
  v5[27] = @"DMCDeviceNameOverride";
  v5[28] = @"DMCMobileGestaltOverride";
  v5[29] = @"DMCModelNameOverride";
  v5[30] = @"DMCModelNumberOverride";
  v5[31] = @"DMCProductNameOverride";
  v5[32] = @"DMCSoftwareUpdateDeviceIDOverride";
  v5[33] = @"DMCBypassWatchUnpairWhenUnenrolling";
  v5[34] = @"DMCWatchEnrollmentAllowLocalProfile";
  v5[35] = @"DMCDefaultsKeyForceAppInstallUnremovability";
  v5[36] = @"DMCDefaultsKeyForceAppRemovalOnUnenroll";
  v5[37] = @"DMCMDMAppSourceIdentifierOverride";
  v5[38] = @"DMCEnableMediaCommands";
  v5[39] = @"DMCAwaitSystemDeletableAppsTimeout";
  v5[40] = @"DMCBootstrapTokenOverride";
  v5[41] = @"DMCPreserveUserDefaultsForRTS";
  v5[42] = @"DMCSuppressRRTSOnIdleTimeout";
  v5[43] = @"DMCNagMigrationGracePeriod";
  v5[44] = @"DMCDEPPushTokenSyncInterval";
  v5[45] = @"DMCFakePushToken";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:46];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end