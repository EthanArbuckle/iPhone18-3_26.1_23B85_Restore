@interface DRSDampeningConfiguration
+ (id)RMEIssueCategoryConfiguration;
+ (id)abcDefaultConfiguration;
+ (id)appIntentsServicesSlowActivityConfiguration;
+ (id)backlightServicesFlipboookHangConfiguration;
+ (id)caHitchesConfiguration;
+ (id)coreAudioOverloadConfiguration;
+ (id)defaultSignatureDampeningConfiguration;
+ (id)drmResourceUsageConfiguration;
+ (id)drmRogueTaskConfiguration;
+ (id)hangTracerNonWatchOSCustomerConfiguration;
+ (id)hangTracerNonWatchOSInternalDownsamplingConfiguration;
+ (id)hangTracerNonWatchOSInternalNoDownsamplingConfiguration;
+ (id)hangTracerNonWatchOSSeedConfiguration;
+ (id)hangTracerWatchOSInternalOrSeedDownsamplingConfiguration;
+ (id)hangTracerWatchOSInternalOrSeedNoDownsamplingConfiguration;
+ (id)healthKitSlowWorkoutConfiguration;
+ (id)libtraceLoggingSampleConfiguration;
+ (id)libtraceQuarantineConfiguration;
+ (id)mailIssueCategoryConfiguration;
+ (id)memoryToolsDefaultConfiguration;
+ (id)memoryToolsInternalMemgraphOverTimeConfiguration;
+ (id)mssLostBeforeThisDrainConfiguration;
+ (id)mssLostThisDrainConfiguration;
+ (id)nandAutoGBBSweepConfiguration;
+ (id)nandDefaultConfiguration;
+ (id)newsConfiguration;
+ (id)pearlAFileBundleConfiguration;
+ (id)ppsArchiveConfiguration;
+ (id)ppsBGArchiveConfiguration;
+ (id)ppsCEArchiveConfiguration;
+ (id)ppsSafeguardArchiveConfiguration;
+ (id)ppsUpgradeArchiveConfiguration;
+ (id)ppsXCArchiveConfiguration;
+ (id)rapidMicroDiagnosticsConfiguration;
+ (id)sentryAppLaunchConfiguration;
+ (id)shareSheetMadRequestTimeoutConfiguration;
+ (id)shareSheetTimeoutConfiguration;
+ (id)softwareUpdateLogoutInterruptedConfiguration;
+ (id)spindumpMacOSSlowHIDConfiguration_Internal;
+ (id)spindumpMacOSSlowHIDConfiguration_SeedRC;
+ (id)spindumpWorkflowResponsivenessConfiguration_External;
+ (id)spindumpWorkflowResponsivenessConfiguration_Internal;
+ (id)spotlightInternalWatchdogConfiguration;
+ (id)sqlQueryPerformanceConfiguration;
+ (id)watchdogdDefaultConfiguration;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDampeningConfiguration:(id)a3;
- (DRSDampeningConfiguration)initWithHysteresis:(double)a3 cap:(unint64_t)a4 acceptanceRate:(double)a5;
- (DRSDampeningConfiguration)initWithPlistDict:(id)a3;
- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)a3 identifier:(id)a4;
- (id)_initWithMO_ON_MOC_QUEUE:(id)a3;
- (id)debugDescription;
- (id)jsonCompatibleDictRepresentation;
@end

@implementation DRSDampeningConfiguration

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  [(DRSDampeningConfiguration *)self hysteresis];
  v5 = v4;
  v6 = [(DRSDampeningConfiguration *)self countCap];
  [(DRSDampeningConfiguration *)self acceptanceRate];
  v8 = [v3 initWithFormat:@"Hysteresis: %.1fs, cap: %lu, acceptance rate: %.3f", v5, v6, v7];

  return v8;
}

- (DRSDampeningConfiguration)initWithPlistDict:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__DRSDampeningConfiguration_initWithPlistDict___block_invoke;
  v24[3] = &unk_27899FDA8;
  v24[4] = &v25;
  [v4 enumerateKeysAndObjectsUsingBlock:v24];
  if (*(v26 + 24) == 1)
  {
    v5 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v5))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidDampeningConfigurationPlist", "Found unexpected object types in plist dictionary", v23, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:kDRSDMHysteresisKey];
    v8 = v7;
    v9 = &unk_2847FF858;
    if (v7)
    {
      v9 = v7;
    }

    v5 = v9;

    v10 = [v4 objectForKeyedSubscript:kDRSDMCountCapKey];
    v11 = v10;
    v12 = &unk_2847FF828;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [v4 objectForKeyedSubscript:kDRSDMAcceptanceRateKey];
    v15 = v14;
    v16 = &unk_2847FF868;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    [v5 floatValue];
    v19 = v18;
    v20 = [v13 unsignedIntegerValue];
    [v17 doubleValue];
    self = [(DRSDampeningConfiguration *)self initWithHysteresis:v20 cap:v19 acceptanceRate:v21];

    v6 = self;
  }

  _Block_object_dispose(&v25, 8);
  return v6;
}

void __47__DRSDampeningConfiguration_initWithPlistDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (DRSDampeningConfiguration)initWithHysteresis:(double)a3 cap:(unint64_t)a4 acceptanceRate:(double)a5
{
  v6 = self;
  v19 = *MEMORY[0x277D85DE8];
  if (a3 < 0.0)
  {
    v7 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v7))
    {
      *buf = 134217984;
      v18 = a3;
      v8 = "Invalid hysteresis window of %f";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationFailure", v8, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v7 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v7))
    {
      *buf = 134217984;
      v18 = a5;
      v8 = "Invalid acceptance rate of %f";
      goto LABEL_10;
    }

LABEL_11:

    v11 = 0;
    goto LABEL_15;
  }

  v16.receiver = self;
  v16.super_class = DRSDampeningConfiguration;
  v13 = [(DRSDampeningConfiguration *)&v16 init];
  if (v13)
  {
    v13->_countCap = a4;
    v13->_hysteresis = a3;
    v13->_acceptanceRate = a5;
  }

  v6 = v13;
  v11 = v6;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_initWithMO_ON_MOC_QUEUE:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 hysteresis];
    v6 = v5;
    v7 = [v4 countCap];
    [v4 acceptanceRate];
    v9 = v8;

    self = [(DRSDampeningConfiguration *)self initWithHysteresis:v7 cap:v6 acceptanceRate:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DRSDampeningConfigurationMO alloc] initWithContext:v7];

  [(DRSDampeningConfiguration *)self hysteresis];
  [(DRSDampeningConfigurationMO *)v8 setHysteresis:?];
  [(DRSDampeningConfigurationMO *)v8 setCountCap:[(DRSDampeningConfiguration *)self countCap]];
  [(DRSDampeningConfiguration *)self acceptanceRate];
  [(DRSDampeningConfigurationMO *)v8 setAcceptanceRate:?];
  [(DRSDampeningConfigurationMO *)v8 setIdentifier:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DRSDampeningConfiguration *)self isEqualToDampeningConfiguration:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToDampeningConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && (-[DRSDampeningConfiguration hysteresis](self, "hysteresis"), v6 = v5, [v4 hysteresis], v6 == v7) && (v8 = -[DRSDampeningConfiguration countCap](self, "countCap"), v8 == objc_msgSend(v4, "countCap")))
  {
    [(DRSDampeningConfiguration *)self acceptanceRate];
    v10 = v9;
    [v4 acceptanceRate];
    v12 = v10 == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)defaultSignatureDampeningConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:0 cap:150.0 acceptanceRate:0.5];

  return v2;
}

- (id)jsonCompatibleDictRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = kDRSDMHysteresisKey;
  v3 = MEMORY[0x277CCABB0];
  [(DRSDampeningConfiguration *)self hysteresis];
  v4 = [v3 numberWithDouble:?];
  v13[0] = v4;
  v12[1] = kDRSDMCountCapKey;
  v5 = [(DRSDampeningConfiguration *)self countCap];
  if (v5 == 0x7FFFFFFF)
  {
    v6 = @"<No cap>";
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DRSDampeningConfiguration countCap](self, "countCap")}];
  }

  v13[1] = v6;
  v12[2] = kDRSDMAcceptanceRateKey;
  v7 = MEMORY[0x277CCABB0];
  [(DRSDampeningConfiguration *)self acceptanceRate];
  v8 = [v7 numberWithDouble:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  if (v5 != 0x7FFFFFFF)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)nandDefaultConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:12 cap:300.0 acceptanceRate:1.0];

  return v2;
}

+ (id)memoryToolsDefaultConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:5 cap:1.0 acceptanceRate:1.0];

  return v2;
}

+ (id)memoryToolsInternalMemgraphOverTimeConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:50 cap:1.0 acceptanceRate:1.0];

  return v2;
}

+ (id)hangTracerNonWatchOSInternalNoDownsamplingConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:4 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)hangTracerNonWatchOSInternalDownsamplingConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:4 cap:0.0 acceptanceRate:0.5];

  return v2;
}

+ (id)hangTracerNonWatchOSSeedConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:3 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)hangTracerNonWatchOSCustomerConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:3 cap:0.0 acceptanceRate:0.75];

  return v2;
}

+ (id)hangTracerWatchOSInternalOrSeedNoDownsamplingConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)hangTracerWatchOSInternalOrSeedDownsamplingConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:0.0 acceptanceRate:0.25];

  return v2;
}

+ (id)sentryAppLaunchConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:12 cap:3600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)coreAudioOverloadConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:20 cap:1800.0 acceptanceRate:1.0];

  return v2;
}

+ (id)spindumpMacOSSlowHIDConfiguration_Internal
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:6480.0 acceptanceRate:1.0];

  return v2;
}

+ (id)spindumpMacOSSlowHIDConfiguration_SeedRC
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:3 cap:21600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)spindumpWorkflowResponsivenessConfiguration_Internal
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:1800.0 acceptanceRate:1.0];

  return v2;
}

+ (id)spindumpWorkflowResponsivenessConfiguration_External
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:3 cap:1800.0 acceptanceRate:1.0];

  return v2;
}

+ (id)drmResourceUsageConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:1 cap:86400.0 acceptanceRate:1.0];

  return v2;
}

+ (id)drmRogueTaskConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:1 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)caHitchesConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:12 cap:3600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)watchdogdDefaultConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:1 cap:86400.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsCEArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsXCArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)rapidMicroDiagnosticsConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsSafeguardArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsBGArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)ppsUpgradeArchiveConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:39600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)nandAutoGBBSweepConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)mailIssueCategoryConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:5 cap:600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)sqlQueryPerformanceConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)RMEIssueCategoryConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:12 cap:600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)abcDefaultConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:50 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)newsConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:1 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)libtraceQuarantineConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)libtraceLoggingSampleConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)spotlightInternalWatchdogConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:0.0 acceptanceRate:1.0];

  return v2;
}

+ (id)softwareUpdateLogoutInterruptedConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:3 cap:3600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)appIntentsServicesSlowActivityConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:10 cap:3600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)shareSheetTimeoutConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:21600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)shareSheetMadRequestTimeoutConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:21600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)pearlAFileBundleConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:12 cap:3600.0 acceptanceRate:1.0];

  return v2;
}

+ (id)mssLostThisDrainConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)mssLostBeforeThisDrainConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)backlightServicesFlipboookHangConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

+ (id)healthKitSlowWorkoutConfiguration
{
  v2 = [[DRSDampeningConfiguration alloc] initWithHysteresis:2 cap:43200.0 acceptanceRate:1.0];

  return v2;
}

@end