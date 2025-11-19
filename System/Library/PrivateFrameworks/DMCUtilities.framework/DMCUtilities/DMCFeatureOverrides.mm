@interface DMCFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)a3;
+ (BOOL)fakePushToken;
+ (BOOL)forceAppInstallUnremovability;
+ (BOOL)forceAppRemovalOnUnenroll;
+ (BOOL)forceMediaCommandSupport;
+ (BOOL)sentinelExistsAtPath:(id)a3;
+ (BOOL)shouldPreserveUserDefaultsForReturnToService;
+ (BOOL)shouldSimulateMDMCommunication;
+ (BOOL)shouldSuppressRRTSOnIdleTimeout;
+ (double)accountSignInTimeoutThresholdWithDefaultValue:(double)a3;
+ (double)awaitSystemDeletableAppsTimeoutWithDefaultValue:(double)a3;
+ (double)depPushTokenPeriodicSyncIntervalWithDefaultValue:(double)a3;
+ (double)enrollmentStepTimeoutThresholdWithDefaultValue:(double)a3;
+ (double)nagMigrationGracePeriod;
+ (id)_allOverrides;
+ (id)activationRecordFlagsWithFlags:(id)a3;
+ (id)appleMDMWellKnownURLWithDefaultValue:(id)a3;
+ (id)bootstrapTokenOverrideWithDefaultValue:(id)a3;
+ (id)deviceNameWithDefaultValue:(id)a3;
+ (id)dictForDefaultsKey:(id)a3;
+ (id)enrollmentProfileWithDefaultValue:(id)a3;
+ (id)gestaltOverrideForKey:(__CFString *)a3 withDefaultValue:(id)a4;
+ (id)mdmAppInstallationSourceIdentifierWithDefaultValue:(id)a3;
+ (id)modelNameWithDefaultValue:(id)a3;
+ (id)modelNumberWithDefaultValue:(id)a3;
+ (id)numberForDefaultsKey:(id)a3;
+ (id)objectForDefaultsKey:(id)a3;
+ (id)productNameWithDefaultValue:(id)a3;
+ (id)serviceDiscoveryDefaultPortWithValue:(id)a3;
+ (id)serviceDiscoveryDomainWithValue:(id)a3;
+ (id)serviceDiscoveryFallbackURLWithValue:(id)a3;
+ (id)simulatedMDMAccountDrivenEnrollmentAuthenticationResults;
+ (id)softwareUpdateDeviceIDWithDefaultValue:(id)a3;
+ (id)stringForDefaultsKey:(id)a3;
+ (id)wellKnownDiscoveryURLWithValue:(id)a3;
@end

@implementation DMCFeatureOverrides

+ (id)stringForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults stringForDefaultsKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)numberForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults numberForDefaultsKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)BOOLForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults BOOLForDefaultsKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults dictForDefaultsKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objectForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [DMCDefaults objectForDefaultsKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)sentinelExistsAtPath:(id)a3
{
  v3 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)accountSignInTimeoutThresholdWithDefaultValue:(double)a3
{
  v4 = [a1 numberForDefaultsKey:@"AccountSignInTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    a3 = v6;
  }

  return a3;
}

+ (id)enrollmentProfileWithDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"MDMProfilePath"];
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
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (double)enrollmentStepTimeoutThresholdWithDefaultValue:(double)a3
{
  v4 = [a1 numberForDefaultsKey:@"EnrollmentStepTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    a3 = v6;
  }

  return a3;
}

+ (id)serviceDiscoveryDefaultPortWithValue:(id)a3
{
  v4 = a3;
  v5 = [a1 numberForDefaultsKey:@"ServiceDiscoveryDefaultPort"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)serviceDiscoveryDomainWithValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"ServiceDiscoveryDomain"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)appleMDMWellKnownURLWithDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"AppleMDMWellKnownURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)serviceDiscoveryFallbackURLWithValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"ServiceDiscoveryFallbackURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)wellKnownDiscoveryURLWithValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"WellKnownDiscoveryURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)shouldSimulateMDMCommunication
{
  if ([a1 BOOLForDefaultsKey:@"SimulateMDMCommunication"])
  {
    return 1;
  }

  return [a1 sentinelExistsAtPath:@"/var/db/MDM_EnableSim"];
}

+ (id)simulatedMDMAccountDrivenEnrollmentAuthenticationResults
{
  v2 = [a1 objectForDefaultsKey:@"SimulatedMDMAccountDrivenEnrollmentAuthenticationResults"];
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)activationRecordFlagsWithFlags:(id)a3
{
  v4 = a3;
  if (([a1 sentinelExistsAtPath:*MEMORY[0x1E6999728]] & 1) != 0 || (objc_msgSend(a1, "stringForDefaultsKey:", *MEMORY[0x1E69997B8]), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = ([v4 intValue] | 1);
    }

    else
    {
      v6 = 1;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v6];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

+ (id)modelNameWithDefaultValue:(id)a3
{
  v4 = a3;
  if ([a1 _isUnknownProduct])
  {
    v5 = @"iProd";
  }

  else
  {
    v5 = [a1 stringForDefaultsKey:@"DMCModelNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

+ (id)modelNumberWithDefaultValue:(id)a3
{
  v4 = a3;
  if ([a1 _isUnknownProduct])
  {
    v5 = @"iProd";
  }

  else
  {
    v5 = [a1 stringForDefaultsKey:@"DMCModelNumberOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

+ (id)productNameWithDefaultValue:(id)a3
{
  v4 = a3;
  if ([a1 _isUnknownProduct])
  {
    v5 = @"iProd1,1";
  }

  else
  {
    v5 = [a1 stringForDefaultsKey:@"DMCProductNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

+ (id)deviceNameWithDefaultValue:(id)a3
{
  v4 = a3;
  if ([a1 _isUnknownProduct])
  {
    v5 = @"iDevice";
  }

  else
  {
    v5 = [a1 stringForDefaultsKey:@"DMCDeviceNameOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

+ (id)softwareUpdateDeviceIDWithDefaultValue:(id)a3
{
  v4 = a3;
  if ([a1 _isUnknownProduct])
  {
    v5 = @"iProd1,1";
  }

  else
  {
    v5 = [a1 stringForDefaultsKey:@"DMCSoftwareUpdateDeviceIDOverride"];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

+ (id)gestaltOverrideForKey:(__CFString *)a3 withDefaultValue:(id)a4
{
  v6 = a4;
  v7 = [a1 objectForDefaultsKey:@"DMCMobileGestaltOverride"];
  v8 = [v7 objectForKeyedSubscript:a3];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v10;
}

+ (id)mdmAppInstallationSourceIdentifierWithDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"DMCMDMAppSourceIdentifierOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)forceAppInstallUnremovability
{
  v2 = [a1 numberForDefaultsKey:@"DMCDefaultsKeyForceAppInstallUnremovability"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)forceAppRemovalOnUnenroll
{
  v2 = [a1 numberForDefaultsKey:@"DMCDefaultsKeyForceAppRemovalOnUnenroll"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)forceMediaCommandSupport
{
  v2 = [a1 numberForDefaultsKey:@"DMCEnableMediaCommands"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldSuppressRRTSOnIdleTimeout
{
  v2 = [a1 numberForDefaultsKey:@"DMCSuppressRRTSOnIdleTimeout"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldPreserveUserDefaultsForReturnToService
{
  v2 = [a1 numberForDefaultsKey:@"DMCPreserveUserDefaultsForRTS"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)awaitSystemDeletableAppsTimeoutWithDefaultValue:(double)a3
{
  v4 = [a1 numberForDefaultsKey:@"DMCAwaitSystemDeletableAppsTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    a3 = v6;
  }

  return a3;
}

+ (id)bootstrapTokenOverrideWithDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [a1 objectForDefaultsKey:@"DMCBootstrapTokenOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (double)nagMigrationGracePeriod
{
  v2 = [a1 numberForDefaultsKey:@"DMCNagMigrationGracePeriod"];
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
  v2 = [a1 numberForDefaultsKey:@"DMCFakePushToken"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)depPushTokenPeriodicSyncIntervalWithDefaultValue:(double)a3
{
  v4 = [a1 numberForDefaultsKey:@"DMCDEPPushTokenSyncInterval"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    a3 = v6;
  }

  return a3;
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