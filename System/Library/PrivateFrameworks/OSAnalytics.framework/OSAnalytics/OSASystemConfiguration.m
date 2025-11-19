@interface OSASystemConfiguration
+ (BOOL)BOOLValForMCSetting:(id)a3;
+ (id)automatedDeviceGroup;
+ (id)ensureUsablePath:(id)a3 component:(id)a4 options:(id)a5;
+ (id)sharedInstance;
+ (id)sharedMCProfileConnection;
+ (id)uidForUser:(id)a3;
+ (int64_t)fastLane;
+ (void)ensureConformanceOfFile:(int)a3 options:(id)a4;
+ (void)fastLane;
+ (void)setAutomatedDeviceGroup:(id)a3;
- ($A7169D069963E6D826465C174652914F)logDomain;
- (BOOL)appleInternal;
- (BOOL)carrierInstall;
- (BOOL)factoryDevice;
- (BOOL)isAllowed:(id)a3 forDomain:(id)a4;
- (BOOL)isComputeController;
- (BOOL)isComputeNode;
- (BOOL)isConfigEnabled:(id)a3;
- (BOOL)isInDeviceRecoveryEnvironment;
- (BOOL)isWhitelisted:(id)a3 forDomain:(id)a4;
- (BOOL)multiUserMode;
- (BOOL)optIn3rdParty;
- (BOOL)optInApple;
- (BOOL)optInDRE;
- (BOOL)overrideMountPath;
- (BOOL)setPrefsKey:(id)a3 value:(id)a4 forDomain:(id)a5 withSync:(BOOL)a6;
- (BOOL)submissionsDisabled;
- (NSMutableDictionary)submissionMetadata;
- (NSString)automatedDeviceGroup;
- (NSString)pathAWDTasking;
- (NSString)pathCATasking;
- (NSString)pathContainerRoot;
- (NSString)pathDiagnostics;
- (NSString)pathPreferences;
- (NSString)pathRoot;
- (id)automatedContextURL;
- (id)awdReporterKey;
- (id)buildVersion;
- (id)crashReporterKey;
- (id)createReportMetadata:(id)a3 with:(id)a4 at:(double)a5 usingOptions:(id)a6;
- (id)experimentGroup;
- (id)getLogBlacklist;
- (id)getPrefsKey:(id)a3 forDomain:(id)a4 withOptions:(id)a5;
- (id)getPropsForLogType:(id)a3;
- (id)hwModel;
- (id)internalKey;
- (id)legacyAutomatedDeviceGroup;
- (id)logExt:(id)a3;
- (id)logPathForType:(id)a3 at:(double)a4 options:(id)a5;
- (id)logPrefix:(id)a3;
- (id)modelCode;
- (id)osTrain;
- (id)pairedWatchOS;
- (id)pathSubmission;
- (id)pathSubmissionDataVault;
- (id)pathSubmissionSubdirDiagnosticLogs;
- (id)pathSubmissionWithHomeDirectory:(id)a3;
- (id)productBuildString;
- (id)productName;
- (id)productNameVersionBuildString;
- (id)productReleaseString;
- (id)productVersion;
- (id)recoveryModeReason;
- (id)releaseType;
- (id)seedGroup;
- (id)serialNumber;
- (id)submissionParam:(id)a3;
- (id)systemId;
- (id)targetAudience;
- (id)uiCountryCode;
- (void)onceConfig;
- (void)saveToPath:(id)a3;
- (void)setAutomatedDeviceGroup:(id)a3;
- (void)setDREOptIn:(BOOL)a3;
- (void)setPathRoot:(id)a3;
- (void)sysVersionData;
@end

@implementation OSASystemConfiguration

- (BOOL)multiUserMode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_multiUserMode__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (multiUserMode_pred != -1)
  {
    dispatch_once(&multiUserMode_pred, block);
  }

  return self->_multiUserMode;
}

uint64_t __39__OSASystemConfiguration_appleInternal__block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_diagnostics();
  *(*(a1 + 32) + 224) = result;
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[OSASystemConfiguration sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

void __39__OSASystemConfiguration_multiUserMode__block_invoke(uint64_t a1)
{
  memset(&v3, 0, sizeof(v3));
  if ([*(a1 + 32) appleInternal] && !stat("/var/db/forceMultiUserMode", &v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v2[0]) = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Forcing Multi User Mode behavior due to the presence of /var/db/forceMultiUserMode", v2, 2u);
    }

    goto LABEL_5;
  }

  v2[0] = 0;
  if (!host_check_multiuser_mode(0, v2) && v2[0])
  {
LABEL_5:
    *(*(a1 + 32) + 227) = 1;
  }
}

- (id)targetAudience
{
  [(OSASystemConfiguration *)self sysVersionData];
  targetAudience = self->super._targetAudience;

  return targetAudience;
}

- (void)sysVersionData
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__OSASystemConfiguration_sysVersionData__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (sysVersionData_pred != -1)
  {
    dispatch_once(&sysVersionData_pred, block);
  }
}

- (BOOL)appleInternal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_appleInternal__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (appleInternal_pred != -1)
  {
    dispatch_once(&appleInternal_pred, block);
  }

  return self->_appleInternal;
}

- (BOOL)optInApple
{
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 optInDRE];

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Opted in for DRE", v6, 2u);
    }

    return 1;
  }

  else
  {
    if (optInApple_onceToken != -1)
    {
      [OSASystemConfiguration(optIn) optInApple];
    }

    v5 = optInApple__featureDiagnosticsSubmissionAllowed;

    return [OSASystemConfiguration BOOLValForMCSetting:v5];
  }
}

- (BOOL)isInDeviceRecoveryEnvironment
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__OSASystemConfiguration_isInDeviceRecoveryEnvironment__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (isInDeviceRecoveryEnvironment_pred != -1)
  {
    dispatch_once(&isInDeviceRecoveryEnvironment_pred, block);
  }

  return self->super._isInDeviceRecoveryEnvironment;
}

- (void)onceConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__OSASystemConfiguration_onceConfig__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (onceConfig_pred != -1)
  {
    dispatch_once(&onceConfig_pred, block);
  }
}

- (id)pathSubmission
{
  v3 = [(OSASystemConfiguration *)self pathRoot];
  if ([(OSASystemConfiguration *)self multiUserMode])
  {
    v4 = @"Library/Logs/DiagnosticReports";
  }

  else
  {
    v4 = @"Logs/CrashReporter";
  }

  v5 = [OSASystemConfiguration ensureUsablePath:v3 component:v4 options:0];

  return v5;
}

- (NSString)pathRoot
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__OSASystemConfiguration_pathRoot__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathRoot_onceToken != -1)
  {
    dispatch_once(&pathRoot_onceToken, block);
  }

  return self->_pathRoot;
}

- (id)productNameVersionBuildString
{
  [(OSASystemConfiguration *)self sysVersionData];
  productNameVersionBuildString = self->super._productNameVersionBuildString;

  return productNameVersionBuildString;
}

- (NSString)pathPreferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__OSASystemConfiguration_pathPreferences__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathPreferences_onceToken != -1)
  {
    dispatch_once(&pathPreferences_onceToken, block);
  }

  return self->_pathPreferences;
}

- (id)pathSubmissionDataVault
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(OSASystemConfiguration *)self pathContainerRoot];
  v7 = kPathOptionNoBackup;
  v8[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [OSASystemConfiguration ensureUsablePath:v2 component:@"DiagnosticReports" options:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)pathContainerRoot
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__OSASystemConfiguration_pathContainerRoot__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathContainerRoot_onceToken != -1)
  {
    dispatch_once(&pathContainerRoot_onceToken, block);
  }

  return self->_pathContainerRoot;
}

- (BOOL)optIn3rdParty
{
  if (optIn3rdParty_onceToken != -1)
  {
    [OSASystemConfiguration(optIn) optIn3rdParty];
  }

  v3 = optIn3rdParty__featureAppAnalyticsAllowed;

  return [OSASystemConfiguration BOOLValForMCSetting:v3];
}

- (id)modelCode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__OSASystemConfiguration_modelCode__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (modelCode_pred != -1)
  {
    dispatch_once(&modelCode_pred, block);
  }

  return self->super._modelCode;
}

- (id)osTrain
{
  [(OSASystemConfiguration *)self sysVersionData];
  osTrain = self->super._osTrain;

  return osTrain;
}

- (id)buildVersion
{
  [(OSASystemConfiguration *)self sysVersionData];
  buildVersion = self->super._buildVersion;

  return buildVersion;
}

- (id)releaseType
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__OSASystemConfiguration_releaseType__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (releaseType_pred != -1)
  {
    dispatch_once(&releaseType_pred, block);
  }

  if (self->super._releaseType)
  {
    releaseType = self->super._releaseType;
  }

  else
  {
    releaseType = @"User";
  }

  return releaseType;
}

- (id)crashReporterKey
{
  v3 = [MEMORY[0x1E69B7BD8] sharedClient];
  v4 = [v3 crashreporterKey];
  crashReporterKey = self->super._crashReporterKey;
  self->super._crashReporterKey = v4;

  v6 = self->super._crashReporterKey;

  return v6;
}

- (id)hwModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__OSASystemConfiguration_hwModel__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (hwModel_pred != -1)
  {
    dispatch_once(&hwModel_pred, block);
  }

  return self->super._hwModel;
}

- (id)systemId
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__OSASystemConfiguration_systemId__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (systemId_pred != -1)
  {
    dispatch_once(&systemId_pred, block);
  }

  return self->super._systemId;
}

- (NSString)automatedDeviceGroup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__OSASystemConfiguration_automatedDeviceGroup__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (automatedDeviceGroup_onceToken != -1)
  {
    dispatch_once(&automatedDeviceGroup_onceToken, block);
  }

  return self->super._automatedDeviceGroup;
}

- (BOOL)isComputeController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__OSASystemConfiguration_isComputeController__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (isComputeController_onceToken != -1)
  {
    dispatch_once(&isComputeController_onceToken, block);
  }

  return self->super._isComputeController;
}

+ (id)automatedDeviceGroup
{
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 automatedDeviceGroup];

  return v3;
}

+ (void)setAutomatedDeviceGroup:(id)a3
{
  v3 = a3;
  v4 = +[OSASystemConfiguration sharedInstance];
  [v4 setAutomatedDeviceGroup:v3];
}

uint64_t __40__OSASystemConfiguration_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(OSASystemConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

- (NSMutableDictionary)submissionMetadata
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__OSASystemConfiguration_submissionMetadata__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (submissionMetadata_pred != -1)
  {
    dispatch_once(&submissionMetadata_pred, block);
  }

  return self->_submissionMetadata;
}

uint64_t __44__OSASystemConfiguration_submissionMetadata__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)factoryDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_factoryDevice__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (factoryDevice_pred != -1)
  {
    dispatch_once(&factoryDevice_pred, block);
  }

  return self->_factoryDevice;
}

- (BOOL)carrierInstall
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__OSASystemConfiguration_carrierInstall__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (carrierInstall_pred != -1)
  {
    dispatch_once(&carrierInstall_pred, block);
  }

  return self->_carrierInstall;
}

uint64_t __40__OSASystemConfiguration_carrierInstall__block_invoke(uint64_t a1)
{
  result = MGGetBoolAnswer();
  *(*(a1 + 32) + 226) = result;
  return result;
}

- (BOOL)submissionsDisabled
{
  v3 = [OSADefaults objectForKey:@"submissionsDisabledSince"];
  if ([(OSASystemConfiguration *)self appleInternal])
  {
    if (!v3)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v3;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v8 = v7;
      [v6 timeIntervalSinceReferenceDate];
      if (v8 - v9 < 604800.0)
      {

        v5 = 1;
        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [OSASystemConfiguration submissionsDisabled];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSASystemConfiguration submissionsDisabled];
    }

    [OSADefaults removeObjectForKey:@"submissionsDisabledSince"];
    goto LABEL_14;
  }

  v4 = [(OSASystemConfiguration *)self factoryDevice];
  v5 = 0;
  if (v4 && v3)
  {
    goto LABEL_6;
  }

LABEL_15:

  return v5;
}

- (id)pairedWatchOS
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_pairedWatchOS__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pairedWatchOS_pred != -1)
  {
    dispatch_once(&pairedWatchOS_pred, block);
  }

  return self->_pairedWatchOS;
}

void __39__OSASystemConfiguration_pairedWatchOS__block_invoke(uint64_t a1)
{
  if (MGGetBoolAnswer())
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 4);
    if (v2)
    {
      v3 = v2;
      Class = objc_getClass("NRPairedDeviceRegistry");
      if (Class)
      {
        v5 = [(objc_class *)Class sharedInstance];
        if ([v5 isPaired])
        {
          v6 = [v5 getActivePairedDevice];
          v7 = [v6 valueForProperty:@"systemBuildVersion"];
          v8 = *(a1 + 32);
          v9 = *(v8 + 240);
          *(v8 + 240) = v7;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dynamically link NRPairedDeviceRegistry from NanoRegistry", buf, 2u);
      }

      dlclose(v3);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dynamically load NanoRegistry framework", v10, 2u);
    }
  }
}

void __35__OSASystemConfiguration_modelCode__block_invoke(uint64_t a1)
{
  v5 = MobileGestalt_get_current_device();
  v2 = MobileGestalt_copy_productTypeDescForAnalytics_obj();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2411100;
  }

  objc_storeStrong((*(a1 + 32) + 24), v4);
}

void __33__OSASystemConfiguration_hwModel__block_invoke(uint64_t a1)
{
  v5 = MobileGestalt_get_current_device();
  v2 = MobileGestalt_copy_hwModelDescriptionForAnalytics_obj();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2411100;
  }

  objc_storeStrong((*(a1 + 32) + 32), v4);
}

void __40__OSASystemConfiguration_sysVersionData__block_invoke(uint64_t a1)
{
  v36 = _CFCopySupplementalVersionDictionary();
  v2 = [v36 objectForKeyedSubscript:*MEMORY[0x1E695E208]];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v36 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  v8 = [v36 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  if (!v12)
  {
    v12 = @"???";
  }

  v13 = *(v11 + 56);
  if (!v13)
  {
    v13 = @"???";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v12, v13];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = v14;

  v17 = *(a1 + 32);
  v18 = v17[10];
  if (!v18)
  {
    v18 = @"???";
  }

  v19 = v17[5];
  if (!v19)
  {
    v19 = @"???";
  }

  v20 = v17[7];
  if (!v20)
  {
    v20 = @"???";
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ (%@)", v18, v19, v20];
  v22 = *(a1 + 32);
  v23 = *(v22 + 88);
  *(v22 + 88) = v21;

  v24 = *(a1 + 32);
  if (!v24[5])
  {
    v24[5] = @"<unknown>";

    v24 = *(a1 + 32);
  }

  if (!v24[7])
  {
    v24[7] = @"<unknown>";

    v24 = *(a1 + 32);
  }

  if (!v24[10])
  {
    v24[10] = @"<unknown>";

    v24 = *(a1 + 32);
  }

  if ([v24 appleInternal])
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-internal", *(*(a1 + 32) + 40)];
    v26 = *(a1 + 32);
    v27 = *(v26 + 96);
    *(v26 + 96) = v25;
    v28 = @"Internal";
  }

  else
  {
    v29 = *(a1 + 32);
    v30 = *(v29 + 40);
    v27 = *(v29 + 96);
    *(v29 + 96) = v30;
    v28 = @"GM";
  }

  v31 = *(a1 + 32);
  v32 = *(v31 + 48);
  *(v31 + 48) = v28;

  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", *(*(a1 + 32) + 80), *(*(a1 + 32) + 40)];
  v34 = *(a1 + 32);
  v35 = *(v34 + 64);
  *(v34 + 64) = v33;
}

- (id)productVersion
{
  [(OSASystemConfiguration *)self sysVersionData];
  productVersion = self->super._productVersion;

  return productVersion;
}

- (id)productBuildString
{
  [(OSASystemConfiguration *)self sysVersionData];
  productBuildString = self->super._productBuildString;

  return productBuildString;
}

- (id)productName
{
  [(OSASystemConfiguration *)self sysVersionData];
  productName = self->super._productName;

  return productName;
}

- (id)productReleaseString
{
  [(OSASystemConfiguration *)self sysVersionData];
  productReleaseString = self->super._productReleaseString;

  return productReleaseString;
}

- (id)uiCountryCode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_uiCountryCode__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (uiCountryCode_onceToken != -1)
  {
    dispatch_once(&uiCountryCode_onceToken, block);
  }

  if (self->super._uiCountryCode)
  {
    uiCountryCode = self->super._uiCountryCode;
  }

  else
  {
    uiCountryCode = @"en";
  }

  return uiCountryCode;
}

void __39__OSASystemConfiguration_uiCountryCode__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = v2;
  if (v2)
  {
    v3 = [v2 objectForKey:*MEMORY[0x1E695D978]];
  }

  else
  {
    v3 = @"en";
  }

  objc_storeStrong((*(a1 + 32) + 104), v3);
  v4 = v5;
  if (v5)
  {

    v4 = v5;
  }
}

void __34__OSASystemConfiguration_systemId__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appleInternal];
  if (v2)
  {
    v3 = MGCopyAnswer();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 112), v3);
  if (v2)
  {
  }
}

- (id)serialNumber
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__OSASystemConfiguration_serialNumber__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (serialNumber_pred != -1)
  {
    dispatch_once(&serialNumber_pred, block);
  }

  return self->super._serialNumber;
}

void __38__OSASystemConfiguration_serialNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appleInternal];
  if (v2)
  {
    v3 = MGCopyAnswer();
  }

  else
  {
    v3 = &stru_1F2411100;
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 120), v3);
  if (v2)
  {
  }
}

- (id)awdReporterKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__OSASystemConfiguration_awdReporterKey__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (awdReporterKey_pred != -1)
  {
    dispatch_once(&awdReporterKey_pred, block);
  }

  return self->super._awdReporterKey;
}

uint64_t __40__OSASystemConfiguration_awdReporterKey__block_invoke(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)recoveryModeReason
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__OSASystemConfiguration_recoveryModeReason__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (recoveryModeReason_pred != -1)
  {
    dispatch_once(&recoveryModeReason_pred, block);
  }

  return self->_recoveryModeReason;
}

void __44__OSASystemConfiguration_recoveryModeReason__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  *(v2 + 248) = 0;

  if ([*(a1 + 32) isInDeviceRecoveryEnvironment])
  {
    if (MEMORY[0x1EEE86BE0])
    {
      v4 = DREEntryReasonString();
      v5 = *(a1 + 32);
      v6 = *(v5 + 248);
      *(v5 + 248) = v4;
    }

    v7 = *(a1 + 32);
    if (!*(v7 + 248))
    {
      *(v7 + 248) = @"unknown reason";
    }
  }
}

- (BOOL)setPrefsKey:(id)a3 value:(id)a4 forDomain:(id)a5 withSync:(BOOL)a6
{
  v6 = a6;
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(OSASystemConfiguration *)self pathPreferences];
  v14 = [v13 stringByAppendingPathComponent:@"/Library/Preferences/com.apple.OTACrashCopier.plist"];

  v15 = open_dprotected_np([v14 fileSystemRepresentation], 0, 0, 1);
  if (v15 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [OSASystemConfiguration setPrefsKey:value:forDomain:withSync:];
    }

LABEL_11:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "setPrefs: delete old prefs and create placeholder", buf, 2u);
    }

    unlink([v14 fileSystemRepresentation]);
    v18 = [(OSASystemConfiguration *)self pathPreferences];
    v38 = kPathOptionNoBackup;
    v39[0] = MEMORY[0x1E695E118];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v20 = [OSASystemConfiguration ensureUsablePath:v18 component:@"/Library/Preferences" options:v19];

    if (v20)
    {
      v21 = open_dprotected_np([v14 UTF8String], 2561, 4, 0, 432);
      if ((v21 & 0x80000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *__error();
          v23 = __error();
          v24 = strerror(*v23);
          *buf = 138413058;
          v31 = v14;
          v32 = 1024;
          v33 = v21;
          v34 = 1024;
          v35 = v22;
          v36 = 2080;
          v37 = v24;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "setPrefs: not created '%@' returned %d: %d %s", buf, 0x22u);
        }
      }

      else
      {
        [OSASystemConfiguration ensureConformanceOfFile:v21 options:0];
        close(v21);
      }
    }

    goto LABEL_19;
  }

  v16 = v15;
  if (fcntl(v15, 63) == 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [OSASystemConfiguration setPrefsKey:value:forDomain:withSync:];
    }

    close(v16);
    goto LABEL_19;
  }

  v17 = fcntl(v16, 64, 4);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSASystemConfiguration setPrefsKey:value:forDomain:withSync:];
  }

  close(v16);
  if (v17 == -1)
  {
    goto LABEL_11;
  }

LABEL_19:
  v25 = [(OSASystemConfiguration *)self pathPreferences];
  _CFPreferencesSetAppValueWithContainer();

  if (v6)
  {
    v26 = [(OSASystemConfiguration *)self pathPreferences];
    v27 = _CFPreferencesAppSynchronizeWithContainer() != 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)getPrefsKey:(id)a3 forDomain:(id)a4 withOptions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(OSASystemConfiguration *)self pathPreferences];

  if (!v9 || ([(OSASystemConfiguration *)self pathPreferences], v10 = objc_claimAutoreleasedReturnValue(), v11 = _CFPreferencesCopyAppValueWithContainer(), v10, !v11))
  {
    if (xpc_user_sessions_enabled())
    {
      v17 = 0;
      if (!xpc_user_sessions_get_foreground_uid())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSASystemConfiguration getPrefsKey:v7 forDomain:&v17 withOptions:?];
        }

        goto LABEL_15;
      }

      UserIdentifierForUID = _CFPreferencesGetUserIdentifierForUID();
      if (!UserIdentifierForUID)
      {
LABEL_15:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSASystemConfiguration getPrefsKey:forDomain:withOptions:];
        }

        UserIdentifierForUID = 0;
        goto LABEL_18;
      }
    }

    else
    {
      UserIdentifierForUID = @"mobile";
    }

    v13 = CFPreferencesCopyValue(v7, v8, UserIdentifierForUID, *MEMORY[0x1E695E8B0]);
    if (v13)
    {
      v11 = v13;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [OSASystemConfiguration getPrefsKey:forDomain:withOptions:];
      }

      goto LABEL_21;
    }

LABEL_18:

    v14 = [(__CFString *)v8 stringByAppendingPathExtension:@"plist"];
    UserIdentifierForUID = [@"/Library/Managed Preferences/mobile/" stringByAppendingPathComponent:v14];

    v15 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:UserIdentifierForUID];
    v11 = [v15 objectForKeyedSubscript:v7];

    if (v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [OSASystemConfiguration getPrefsKey:forDomain:withOptions:];
    }

LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSASystemConfiguration getPrefsKey:? forDomain:? withOptions:?];
  }

LABEL_22:

  return v11;
}

+ (int64_t)fastLane
{
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 getTaskingKey:@"fastLane"];

  if (!v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        +[(OSASystemConfiguration *)v3];
      }

      goto LABEL_7;
    }
  }

  v4 = [v3 integerValue];
LABEL_8:

  return v4;
}

- (id)experimentGroup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__OSASystemConfiguration_experimentGroup__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (experimentGroup_onceToken != -1)
  {
    dispatch_once(&experimentGroup_onceToken, block);
  }

  return self->super._experimentGroup;
}

void __41__OSASystemConfiguration_experimentGroup__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) getPrefsKey:@"ExperimentGroup" forDomain:@"com.apple.da" withOptions:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 168), v2);
}

void __46__OSASystemConfiguration_automatedDeviceGroup__block_invoke(uint64_t a1)
{
  v3 = [OSADefaults objectForKey:@"AutomatedDeviceGroup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 176), v2);
}

- (void)setAutomatedDeviceGroup:(id)a3
{
  v4 = a3;
  [OSADefaults setObject:v4 forKey:@"AutomatedDeviceGroup"];
  automatedDeviceGroup = self->super._automatedDeviceGroup;
  self->super._automatedDeviceGroup = v4;
}

- (id)legacyAutomatedDeviceGroup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__OSASystemConfiguration_legacyAutomatedDeviceGroup__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (legacyAutomatedDeviceGroup_onceToken != -1)
  {
    dispatch_once(&legacyAutomatedDeviceGroup_onceToken, block);
  }

  return self->super._legacyAutomatedDeviceGroup;
}

void __52__OSASystemConfiguration_legacyAutomatedDeviceGroup__block_invoke(uint64_t a1)
{
  v3 = [OSADefaults objectForKey:@"LegacyAutomatedDeviceGroup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 192), v2);
}

- (id)automatedContextURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__OSASystemConfiguration_automatedContextURL__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (automatedContextURL_onceToken != -1)
  {
    dispatch_once(&automatedContextURL_onceToken, block);
  }

  return self->super._automatedContextURL;
}

void __45__OSASystemConfiguration_automatedContextURL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) getPrefsKey:@"AutomatedContextURL" forDomain:@"com.apple.da" withOptions:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 184), v2);
}

uint64_t __37__OSASystemConfiguration_releaseType__block_invoke(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)seedGroup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__OSASystemConfiguration_seedGroup__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (seedGroup_pred != -1)
  {
    dispatch_once(&seedGroup_pred, block);
  }

  return self->super._seedGroup;
}

uint64_t __35__OSASystemConfiguration_seedGroup__block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"SeedGroup", @".GlobalPreferences");
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)internalKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__OSASystemConfiguration_internalKey__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (internalKey_pred != -1)
  {
    dispatch_once(&internalKey_pred, block);
  }

  return self->super._internalKey;
}

void __37__OSASystemConfiguration_internalKey__block_invoke(uint64_t a1)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) appleInternal])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    v35 = 0;
    if (AccountsLibraryCore())
    {
      v2 = dispatch_semaphore_create(0);
      v41 = 0;
      v42 = &v41;
      v43 = 0x2050000000;
      v3 = getACAccountStoreClass_softClass;
      v44 = getACAccountStoreClass_softClass;
      if (!getACAccountStoreClass_softClass)
      {
        v36 = MEMORY[0x1E69E9820];
        v37 = 3221225472;
        v38 = __getACAccountStoreClass_block_invoke;
        v39 = &unk_1E7A271B0;
        v40 = &v41;
        __getACAccountStoreClass_block_invoke(&v36);
        v3 = v42[3];
      }

      v4 = v3;
      _Block_object_dispose(&v41, 8);
      v5 = objc_alloc_init(v3);
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v6 = getACAccountTypeIdentifierIMAPSymbolLoc_ptr;
      v44 = getACAccountTypeIdentifierIMAPSymbolLoc_ptr;
      if (!getACAccountTypeIdentifierIMAPSymbolLoc_ptr)
      {
        v36 = MEMORY[0x1E69E9820];
        v37 = 3221225472;
        v38 = __getACAccountTypeIdentifierIMAPSymbolLoc_block_invoke;
        v39 = &unk_1E7A271B0;
        v40 = &v41;
        v7 = AccountsLibrary();
        v8 = dlsym(v7, "ACAccountTypeIdentifierIMAP");
        *(v40[1] + 24) = v8;
        getACAccountTypeIdentifierIMAPSymbolLoc_ptr = *(v40[1] + 24);
        v6 = v42[3];
      }

      _Block_object_dispose(&v41, 8);
      if (!v6)
      {
        dlerror();
        abort_report_np();
        __break(1u);
      }

      v9 = *v6;
      v45[0] = v9;
      v10 = getACAccountTypeIdentifierExchange();
      v45[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __37__OSASystemConfiguration_internalKey__block_invoke_370;
      v27 = &unk_1E7A27400;
      v29 = &v30;
      v12 = v2;
      v28 = v12;
      [v5 visibleTopLevelAccountsWithAccountTypeIdentifiers:v11 completion:&v24];

      v13 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v12, v13);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __37__OSASystemConfiguration_internalKey__block_invoke_cold_1();
    }

    v14 = [*(a1 + 32) serialNumber];
    v15 = MEMORY[0x1E696AEC0];
    v16 = v31[5];
    v17 = [(__CFString *)v14 length];
    v18 = &stru_1F2411100;
    if (v16)
    {
      v18 = v16;
    }

    v19 = @"<no_sn>";
    if (v17)
    {
      v19 = v14;
    }

    v20 = [v15 stringWithFormat:@"%@%@", v18, v19, v24, v25, v26, v27];;
    v21 = *(a1 + 32);
    v22 = *(v21 + 144);
    *(v21 + 144) = v20;

    _Block_object_dispose(&v30, 8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __37__OSASystemConfiguration_internalKey__block_invoke_370(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v25 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
  if (v28)
  {
    v6 = MEMORY[0x1E69E9C10];
    v27 = *v34;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v34 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v33 + 1) + 8 * v7);
      if (!DataAccessLibraryCore())
      {
        goto LABEL_48;
      }

      v9 = [v8 accountType];
      v10 = [v9 identifier];
      v11 = getACAccountTypeIdentifierExchange();
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, v6, OS_LOG_TYPE_DEFAULT, "Using kDAAccountEmailAddress to fetch Exchange email addresses.", buf, 2u);
        }

        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v13 = getkDAAccountEmailAddressSymbolLoc_ptr;
        v45 = getkDAAccountEmailAddressSymbolLoc_ptr;
        if (!getkDAAccountEmailAddressSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          v38 = 3221225472;
          v39 = __getkDAAccountEmailAddressSymbolLoc_block_invoke;
          v40 = &unk_1E7A271B0;
          v41 = &v42;
          __getkDAAccountEmailAddressSymbolLoc_block_invoke(buf);
          v13 = v43[3];
        }

        _Block_object_dispose(&v42, 8);
        if (!v13)
        {
          goto LABEL_45;
        }
      }

      else
      {
LABEL_48:
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, v6, OS_LOG_TYPE_DEFAULT, "Using ACAccountPropertyIdentityEmailAddress to fetch email addresses.", buf, 2u);
        }

        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v13 = getACEmailAliasKeyEmailAddressesSymbolLoc_ptr;
        v45 = getACEmailAliasKeyEmailAddressesSymbolLoc_ptr;
        if (!getACEmailAliasKeyEmailAddressesSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          v38 = 3221225472;
          v39 = __getACEmailAliasKeyEmailAddressesSymbolLoc_block_invoke;
          v40 = &unk_1E7A271B0;
          v41 = &v42;
          v14 = AccountsLibrary();
          v15 = dlsym(v14, "ACEmailAliasKeyEmailAddresses");
          *(v41[1] + 24) = v15;
          getACEmailAliasKeyEmailAddressesSymbolLoc_ptr = *(v41[1] + 24);
          v13 = v43[3];
        }

        _Block_object_dispose(&v42, 8);
        if (!v13)
        {
LABEL_45:
          getACAccountTypeIdentifierExchange_cold_1();
          __break(1u);
        }
      }

      v16 = [v8 objectForKeyedSubscript:*v13];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __37__OSASystemConfiguration_internalKey__block_invoke_370_cold_2(v49, v16, &v50);
      }

      if (!v16)
      {
        v16 = [v8 username];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __37__OSASystemConfiguration_internalKey__block_invoke_370_cold_3(v47, v16, &v48);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 allKeys];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 componentsSeparatedByString:{@", "}];
          }

          else
          {
            v17 = 0;
          }
        }
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v46 count:16];
      if (v19)
      {
        v20 = *v30;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v29 + 1) + 8 * i);
            if ([v22 hasSuffix:@"@apple.com"])
            {
              objc_storeStrong((*(*(a1 + 40) + 8) + 40), v22);
              goto LABEL_41;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v29 objects:v46 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:

      v23 = *(*(*(a1 + 40) + 8) + 40) == 0;
      if (!v23)
      {
        break;
      }

      if (++v7 == v28)
      {
        v28 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
        if (v28)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __45__OSASystemConfiguration_isComputeController__block_invoke(uint64_t a1)
{
  result = MGCopyAnswer();
  *(*(a1 + 32) + 208) = result == *MEMORY[0x1E695E4D0];
  return result;
}

- (BOOL)isComputeNode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_isComputeNode__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (isComputeNode_onceToken != -1)
  {
    dispatch_once(&isComputeNode_onceToken, block);
  }

  return self->super._isComputeNode;
}

uint64_t __39__OSASystemConfiguration_isComputeNode__block_invoke(uint64_t a1)
{
  result = MGCopyAnswer();
  *(*(a1 + 32) + 209) = result == *MEMORY[0x1E695E4D0];
  return result;
}

uint64_t __55__OSASystemConfiguration_isInDeviceRecoveryEnvironment__block_invoke(uint64_t a1)
{
  if (MEMORY[0x1EEE86BE8])
  {
    result = DREIsRunningInDeviceRecoveryEnvironment();
  }

  else
  {
    result = 0;
  }

  *(*(a1 + 32) + 210) = result;
  return result;
}

- (void)saveToPath:(id)a3
{
  v4 = a3;
  v6 = [(OSAProxyConfiguration *)self metadata];
  v5 = [v4 stringByAppendingPathComponent:@"deviceMetadata.proxy"];

  [v6 writeToFile:v5 atomically:1];
}

void __36__OSASystemConfiguration_onceConfig__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"submissionConfig" ofType:@"plist"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"/System/Library/PrivateFrameworks/OSAnalytics.framework/submissionConfig.plist";
  }

  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"log_types"];
    v9 = *(a1 + 32);
    v10 = *(v9 + 256);
    *(v9 + 256) = v8;

    if ([*(a1 + 32) multiUserMode] && (getpid(), v11 = *MEMORY[0x1E69E9BD0], v28 = "/private/var/mobile/Library/OSAnalytics/Preferences", sandbox_check()))
    {
      v12 = 0;
    }

    else
    {
      v13 = +[OSASystemConfiguration sharedInstance];
      v12 = [v13 getTaskingKey:@"disabledLogs"];

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v30 = v14;
            v15 = MEMORY[0x1E69E9C10];
            v16 = "tasked blacklist: %@";
            v17 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
            _os_log_impl(&dword_1AE4F7000, v15, v17, v16, buf, 0xCu);
          }

LABEL_15:
          v18 = [v12 copy];
          v19 = *(a1 + 32);
          v20 = *(v19 + 264);
          *(v19 + 264) = v18;

          v21 = [v7 objectForKeyedSubscript:@"submission_params"];
          v22 = *(a1 + 32);
          v23 = *(v22 + 272);
          *(v22 + 272) = v21;

          v24 = [v7 objectForKeyedSubscript:@"whitelisted_domains"];
          v25 = *(a1 + 32);
          v26 = *(v25 + 280);
          *(v25 + 280) = v24;

          goto LABEL_18;
        }
      }
    }

    v12 = &unk_1F241F1B8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14 = [&unk_1F241F1B8 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v30 = v14;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "no blacklist tasking: applying default: %@";
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to load %@", buf, 0xCu);
  }

LABEL_18:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)getLogBlacklist
{
  [(OSASystemConfiguration *)self onceConfig];
  logBlacklist = self->_logBlacklist;

  return logBlacklist;
}

- (id)getPropsForLogType:(id)a3
{
  v4 = a3;
  [(OSASystemConfiguration *)self onceConfig];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = [(NSDictionary *)self->_logConfig objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isConfigEnabled:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"eOS"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"eOS"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)ensureUsablePath:(id)a3 component:(id)a4 options:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  v11 = v10;
  v12 = v10;
  if (v8)
  {
    v12 = [v10 stringByAppendingPathComponent:v8];
  }

  v13 = [v9 objectForKeyedSubscript:kPathOptionUntrusted];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = +[OSASystemConfiguration sharedInstance];
    v16 = [v15 pathSubmission];
    v17 = [v16 stringByAppendingPathComponent:@"ProxiedDevice-"];

    if (realpath_DARWIN_EXTSN([v12 UTF8String], v55) || *__error() == 2)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55];
      if ([v12 containsString:@".."] & 1) == 0 && v18 && (objc_msgSend(v18, "hasPrefix:", v17))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      [v12 containsString:@".."];
      v18 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 138544386;
      v46 = v12;
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = v17;
      v51 = 1024;
      v52 = v19;
      v53 = 2080;
      v54 = v21;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "FAILED untrusted path validation '%{public}@' -> '%{public}@' [%{public}@]. Error: %d %s", buf, 0x30u);
    }

    v12 = 0;
    goto LABEL_14;
  }

LABEL_15:
  if ([v12 length])
  {
    v22 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v22 fileExistsAtPath:v12])
    {
      v23 = [v12 fileSystemRepresentation];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke;
      v42[3] = &unk_1E7A27450;
      v43 = v9;
      v12 = v12;
      v44 = v12;
      if ((OSASafeOpenReadOnly(v23, v42) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          +[OSASystemConfiguration ensureUsablePath:component:options:];
        }

        v12 = 0;
      }

      v24 = 0;
      v25 = v43;
    }

    else
    {
      v25 = objc_alloc_init(OSASafeCreateDirectoryOptions);
      [(OSASafeCreateDirectoryOptions *)v25 setCreateIntermediates:1];
      v26 = [v9 objectForKeyedSubscript:@"file-owner-uid"];
      [(OSASafeCreateDirectoryOptions *)v25 setUserID:v26];

      [(OSASafeCreateDirectoryOptions *)v25 setGroupID:&unk_1F241E878];
      [(OSASafeCreateDirectoryOptions *)v25 setFileProtectionNone:1];
      v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
      v41 = 0;
      v28 = OSASafeCreateDirectory(v27, 504, v25, &v41);
      v24 = v41;

      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v29)
        {
          *v55 = 138543362;
          v56 = v12;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "created directory '%{public}@'", v55, 0xCu);
        }
      }

      else
      {
        if (v29)
        {
          *v55 = 138543618;
          v56 = v12;
          v57 = 2114;
          v58 = v24;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to create directory '%{public}@': %{public}@", v55, 0x16u);
        }

        v12 = 0;
      }
    }

    if (v12)
    {
      if ([v22 isWritableFileAtPath:v12])
      {
        v30 = [v9 objectForKeyedSubscript:kPathOptionNoBackup];
        v31 = [v30 BOOLValue];

        if (v31)
        {
          v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
          v40 = 0;
          v33 = *MEMORY[0x1E695DB80];
          [v32 getResourceValue:&v40 forKey:*MEMORY[0x1E695DB80] error:0];
          v34 = v40;
          if ([v34 BOOLValue])
          {
            v35 = v24;
          }

          else
          {
            v39 = v24;
            v36 = [v32 setResourceValue:MEMORY[0x1E695E118] forKey:v33 error:&v39];
            v35 = v39;

            if ((v36 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v55 = 138543618;
              v56 = v12;
              v57 = 2114;
              v58 = v35;
              _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to set NSURLIsExcludedFromBackupKey '%{public}@': %{public}@", v55, 0x16u);
            }
          }

          v24 = v35;
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];

  return v12;
}

void __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setUsesSignificantDigits:1];
  [v4 setMaximumSignificantDigits:2];
  memset(&v35, 0, sizeof(v35));
  if (!fstat(a2, &v35) && (v35.st_mode & 0xF000) == 0x4000)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"file-owner-uid"];
    buf = v35;
    v6 = OSASetOwnership(a2, &buf, v5, &unk_1F241E878);

    if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_2(a1);
    }

    if (v35.st_gid == 250)
    {
      if ((v35.st_mode & 0x1FF) == 0x1F8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        st_gid = v35.st_gid;
        if (v6)
        {
          v11 = "";
        }

        else
        {
          v13 = __error();
          v11 = strerror(*v13);
        }

        buf.st_dev = 138544386;
        *&buf.st_mode = v9;
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = st_gid;
        HIWORD(buf.st_uid) = 1024;
        buf.st_gid = 250;
        LOWORD(buf.st_rdev) = 1024;
        *(&buf.st_rdev + 2) = v6;
        *(&buf.st_rdev + 3) = 2082;
        buf.st_atimespec.tv_sec = v11;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "=== Attempted change gid on existing path: %{public}@ from %d to _analyticsusers (%u) with result %d %{public}s", &buf, 0x28u);
      }

      if ((v35.st_mode & 0x1FF) == 0x1F8)
      {
        goto LABEL_27;
      }
    }

    v14 = fchmod(a2, 0x1F8u);
    if (v14 == -1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_3(a1);
    }

    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      st_mode = v35.st_mode;
      if (v14)
      {
        v19 = __error();
        v20 = strerror(*v19);
      }

      else
      {
        v20 = "";
      }

      buf.st_dev = 138544386;
      *&buf.st_mode = v17;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = st_mode;
      HIWORD(buf.st_uid) = 1024;
      buf.st_gid = 504;
      LOWORD(buf.st_rdev) = 1024;
      *(&buf.st_rdev + 2) = v14 == 0;
      *(&buf.st_rdev + 3) = 2082;
      buf.st_atimespec.tv_sec = v20;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "=== Attempted change perms on existing path: %{public}@ from 0x%X to 0x%X with result %d %{public}s", &buf, 0x28u);
    }

LABEL_27:
    getprogname();
    v21 = OSAGetBootTime();
    if (v21)
    {
      v22 = MEMORY[0x1E696AD98];
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:v21];
      v24 = [v22 numberWithDouble:?];
      v25 = [v4 stringForObjectValue:v24];
    }

    else
    {
      v25 = @"-1";
    }

    v26 = OSAGetProcessUptime();
    if (v26)
    {
      v27 = MEMORY[0x1E696AD98];
      v28 = [MEMORY[0x1E695DF00] date];
      [v28 timeIntervalSinceDate:v26];
      v29 = [v27 numberWithDouble:?];
      v30 = [v4 stringForObjectValue:v29];
    }

    else
    {
      v30 = @"-1";
    }

    v34 = *(a1 + 40);
    v31 = v30;
    v32 = v25;
    v33 = v34;
    AnalyticsSendEventLazy();

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_1(a1);
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

id __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_454(uint64_t a1)
{
  v16[14] = *MEMORY[0x1E69E9840];
  v15[0] = @"progname";
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  else
  {
    v3 = @"<unknown>";
  }

  v16[0] = v3;
  v16[1] = MEMORY[0x1E695E110];
  v15[1] = @"create_dir";
  v15[2] = @"path";
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = @"path sanitize failed";
  }

  v16[2] = v4;
  v15[3] = @"original_perms";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 68)];
  v16[3] = v5;
  v15[4] = @"modify_perms";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 208)];
  v16[4] = v6;
  v15[5] = @"modify_perms_success";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 209)];
  v16[5] = v7;
  v16[6] = &unk_1F241E890;
  v15[6] = @"modify_perms_value";
  v15[7] = @"original_gid";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 84)];
  v16[7] = v8;
  v15[8] = @"modify_gid";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 210)];
  v16[8] = v9;
  v15[9] = @"modify_gid_success";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 211)];
  v16[9] = v10;
  v16[10] = &unk_1F241E878;
  v15[10] = @"modify_gid_value";
  v15[11] = @"boot_time_appx";
  v11 = *(a1 + 48);
  v16[11] = *(a1 + 40);
  v16[12] = v11;
  v15[12] = @"proc_uptime_appx";
  v15[13] = @"framework";
  v16[13] = @"OSAnalytics";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:14];

  if (v2)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)ensureConformanceOfFile:(int)a3 options:(id)a4
{
  memset(&v14, 0, sizeof(v14));
  v5 = a4;
  fstat(a3, &v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSASystemConfiguration ensureConformanceOfFile:? options:?];
  }

  v6 = [v5 objectForKeyedSubscript:{@"file-owner-uid", *&v14.st_dev}];

  v7 = [v6 intValue];
  if (!geteuid() && v7)
  {
    st_uid = v14.st_uid;
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (st_uid == v7)
    {
      if (v9)
      {
        +[OSASystemConfiguration ensureConformanceOfFile:options:];
      }
    }

    else
    {
      if (v9)
      {
        +[OSASystemConfiguration ensureConformanceOfFile:options:];
      }

      fchown(a3, v7, 0xFFFFFFFF);
    }
  }

  st_gid = v14.st_gid;
  v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (st_gid == 250)
  {
    if (v11)
    {
      +[OSASystemConfiguration ensureConformanceOfFile:options:];
    }
  }

  else
  {
    if (v11)
    {
      +[OSASystemConfiguration ensureConformanceOfFile:options:];
    }

    fchown(a3, 0xFFFFFFFF, 0xFAu);
  }

  st_mode = v14.st_mode;
  v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (st_mode == 432)
  {
    if (v13)
    {
      +[OSASystemConfiguration ensureConformanceOfFile:options:];
    }
  }

  else
  {
    if (v13)
    {
      +[OSASystemConfiguration ensureConformanceOfFile:options:];
    }

    fchmod(a3, 0x1B0u);
  }
}

- (void)setPathRoot:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__OSASystemConfiguration_setPathRoot___block_invoke;
  v7[3] = &unk_1E7A27478;
  v7[4] = self;
  v8 = v4;
  v5 = setPathRoot__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&setPathRoot__onceToken, v7);
  }
}

void __38__OSASystemConfiguration_setPathRoot___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) appleInternal])
  {
    v2 = *(a1 + 32);
    if (!v2[36])
    {
      v7 = [v2 pathRoot];
      objc_storeStrong((*(a1 + 32) + 288), *(a1 + 40));
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v8 = *(*(a1 + 32) + 288);
      v9 = 138412290;
      v10 = v8;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "overriding default log root location to %@";
      goto LABEL_5;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 288);
    v9 = 138412290;
    v10 = v3;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "unable to override default log root location because already set as %@";
LABEL_5:
    _os_log_impl(&dword_1AE4F7000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)overrideMountPath
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__OSASystemConfiguration_overrideMountPath__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (overrideMountPath_onceToken != -1)
  {
    dispatch_once(&overrideMountPath_onceToken, block);
  }

  return overrideMountPath_success;
}

void __43__OSASystemConfiguration_overrideMountPath__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  overrideMountPath_success = 0;
  if ([*(a1 + 32) isInDeviceRecoveryEnvironment])
  {
    v2 = [*(a1 + 32) pathRoot];
    v3 = [*(a1 + 32) pathContainerRoot];
    if ([*(a1 + 32) multiUserMode])
    {
      v4 = @"/private/var/containers";
    }

    else
    {
      v4 = @"/private/var/mobile";
    }

    if (![v2 hasPrefix:v4] || !objc_msgSend(v3, "hasPrefix:", @"/private/var/containers"))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __43__OSASystemConfiguration_overrideMountPath__block_invoke_cold_2();
      }

      goto LABEL_25;
    }

    v5 = [v2 stringByReplacingPathBeforeComponent:@"mobile" with:@"/private/var/mnt"];
    v6 = [v3 stringByReplacingPathBeforeComponent:@"containers" with:@"/private/var/mnt"];
    v7 = [*(a1 + 32) multiUserMode];
    if (v7)
    {
      v8 = v6;

      v5 = v8;
    }

    v9 = __43__OSASystemConfiguration_overrideMountPath__block_invoke_2(v7, v5);
    if ((v9 & 1) == 0)
    {

      v5 = 0;
    }

    if (__43__OSASystemConfiguration_overrideMountPath__block_invoke_2(v9, v6))
    {
      if (v5 && v6)
      {
        objc_storeStrong((*(a1 + 32) + 288), v5);
        objc_storeStrong((*(a1 + 32) + 296), v6);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(v10 + 288);
          v12 = *(v10 + 296);
          v14 = 138412546;
          v15 = v11;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Successfully overrode mount path. New root path: %@. New container root path: %@", &v14, 0x16u);
        }

        overrideMountPath_success = 1;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {

      v6 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __43__OSASystemConfiguration_overrideMountPath__block_invoke_cold_3();
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __43__OSASystemConfiguration_overrideMountPath__block_invoke_cold_1();
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __43__OSASystemConfiguration_overrideMountPath__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [v2 fileSystemRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__OSASystemConfiguration_overrideMountPath__block_invoke_3;
  v6[3] = &unk_1E7A274A0;
  v6[4] = &v7;
  OSASafeOpenReadOnly(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__OSASystemConfiguration_overrideMountPath__block_invoke_3(uint64_t a1, int a2)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(a2, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x4000)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __34__OSASystemConfiguration_pathRoot__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) multiUserMode];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 pathContainerRoot];
    v3 = *(a1 + 32);
  }

  else
  {
    v4 = @"/private/var/mobile/Library";
  }

  v5 = v3[36];
  v3[36] = v4;

  return MEMORY[0x1EEE66BB8]();
}

void __43__OSASystemConfiguration_pathContainerRoot__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = container_system_group_path_for_identifier();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 stringWithFileSystemRepresentation:v3 length:strlen(v3)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 296);
    *(v6 + 296) = v5;

    free(v3);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = 1;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error getting system group container: %llu", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  if (!*(v8 + 296))
  {
    *(v8 + 296) = @"/tmp";
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 296);
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Using system group container: '%{public}@'", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)pathSubmissionWithHomeDirectory:(id)a3
{
  v4 = a3;
  v5 = [(OSASystemConfiguration *)self pathSubmission];
  if (v5)
  {
    v6 = [v4 stringByStandardizingPath];
    v7 = [(OSASystemConfiguration *)self pathSubmission];
    v8 = [v6 stringByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pathSubmissionSubdirDiagnosticLogs
{
  v2 = [(OSASystemConfiguration *)self pathSubmission];
  v3 = [OSASystemConfiguration ensureUsablePath:v2 component:@"DiagnosticLogs" options:0];

  return v3;
}

+ (id)uidForUser:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getpwnam([v3 UTF8String]);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4->pw_uid];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to fetch UID from unknown user '%@'", &v8, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __41__OSASystemConfiguration_pathPreferences__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pathRoot];
  if ([*(a1 + 32) multiUserMode])
  {
    v3 = @"Preferences";
  }

  else
  {
    v3 = @"OSAnalytics/Preferences";
  }

  v9 = kPathOptionNoBackup;
  v10[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [OSASystemConfiguration ensureUsablePath:v2 component:v3 options:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 304);
  *(v6 + 304) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)pathDiagnostics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__OSASystemConfiguration_pathDiagnostics__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathDiagnostics_onceToken != -1)
  {
    dispatch_once(&pathDiagnostics_onceToken, block);
  }

  return self->_pathDiagnostics;
}

void __41__OSASystemConfiguration_pathDiagnostics__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pathRoot];
  if ([*(a1 + 32) multiUserMode])
  {
    v3 = @"Diagnostics";
  }

  else
  {
    v3 = @"OSAnalytics/Diagnostics";
  }

  v9 = kPathOptionNoBackup;
  v10[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [OSASystemConfiguration ensureUsablePath:v2 component:v3 options:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 312);
  *(v6 + 312) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)pathCATasking
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__OSASystemConfiguration_pathCATasking__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathCATasking_onceToken != -1)
  {
    dispatch_once(&pathCATasking_onceToken, block);
  }

  return self->_pathCATasking;
}

void __39__OSASystemConfiguration_pathCATasking__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pathContainerRoot];
  v8 = kPathOptionNoBackup;
  v9[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [OSASystemConfiguration ensureUsablePath:v2 component:@"/Library/CoreAnalytics" options:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 320);
  *(v5 + 320) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)pathAWDTasking
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__OSASystemConfiguration_pathAWDTasking__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (pathAWDTasking_onceToken != -1)
  {
    dispatch_once(&pathAWDTasking_onceToken, block);
  }

  return self->_pathAWDTasking;
}

void __40__OSASystemConfiguration_pathAWDTasking__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pathRoot];
  v8 = kPathOptionNoBackup;
  v9[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [OSASystemConfiguration ensureUsablePath:v2 component:@"/Library/AWD" options:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 328);
  *(v5 + 328) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)submissionParam:(id)a3
{
  v4 = a3;
  [(OSASystemConfiguration *)self onceConfig];
  v5 = [(NSDictionary *)self->_submissionParams objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isWhitelisted:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(OSASystemConfiguration *)self onceConfig];
  if ([(OSASystemConfiguration *)self appleInternal])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)self->_whitelistedDomains objectForKeyedSubscript:v7];
    v8 = [v9 containsObject:v6];
  }

  return v8;
}

- (BOOL)isAllowed:(id)a3 forDomain:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(OSASystemConfiguration *)self onceConfig];
  v8 = [(NSDictionary *)self->_whitelistedDomains objectForKeyedSubscript:v6];

  LOBYTE(v6) = [v8 containsObject:v7];
  return v6;
}

- (id)createReportMetadata:(id)a3 with:(id)a4 at:(double)a5 usingOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 mutableCopy];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = [v13 objectForKeyedSubscript:@"os_version"];

  if (!v15)
  {
    v16 = [(OSASystemConfiguration *)self productNameVersionBuildString];
    [v14 setObject:v16 forKeyedSubscript:@"os_version"];
  }

  [v14 setObject:v10 forKeyedSubscript:@"bug_type"];
  if ([v10 isEqualToString:@"211"])
  {
    a5 = OSATimeIntervalApproximate(a5);
  }

  v17 = OSADateFormat(1u, a5);
  [v14 setObject:v17 forKeyedSubscript:@"timestamp"];

  v18 = [v14 objectForKeyedSubscript:@"incident_id"];

  if (!v18)
  {
    v19 = [MEMORY[0x1E696AFB0] UUID];
    v20 = [v19 UUIDString];
    [v14 setObject:v20 forKeyedSubscript:@"incident_id"];
  }

  return v14;
}

- (id)logPrefix:(id)a3
{
  v4 = a3;
  [(OSASystemConfiguration *)self onceConfig];
  v5 = [(OSASystemConfiguration *)self getPropsForLogType:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
  }

  else
  {
    v6 = @"Unknown";
  }

  return v6;
}

- (id)logExt:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(OSASystemConfiguration *)self onceConfig];
  v5 = [(OSASystemConfiguration *)self getPropsForLogType:v4];
  v6 = [v5 objectForKeyedSubscript:@"ext"];

  v7 = [(OSASystemConfiguration *)self getPropsForLogType:v4];
  v8 = [v7 objectForKeyedSubscript:@"routing"];

  v9 = [(OSASystemConfiguration *)self getPropsForLogType:v4];

  v10 = [v9 objectForKeyedSubscript:@"subrouting"];

  v11 = v6;
  if (!v6)
  {
    if (v8 && v10)
    {
      v16[0] = v10;
      v16[1] = v8;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v13 = [v12 componentsJoinedByString:@"."];

      goto LABEL_8;
    }

    v11 = @"ips";
    if (v8)
    {
      v11 = v8;
    }
  }

  v13 = v11;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)logPathForType:(id)a3 at:(double)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:@"override-fileName"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"override-fileName"];
  }

  else
  {
    if (logPathForType_at_options__lastAbsoluteTimeSeconds == a4)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    v13 = OSADateFormat(v12, a4);
    if (logPathForType_at_options__lastAbsoluteTimeSeconds == a4)
    {
      v14 = logPathForType_at_options__collisionCount + 1;
    }

    else
    {
      v14 = 0;
    }

    logPathForType_at_options__collisionCount = v14;
    logPathForType_at_options__lastAbsoluteTimeSeconds = a4;
    v15 = [v9 objectForKeyedSubscript:@"override-fileExt"];
    if (!v15 || (v16 = v15, [v9 objectForKeyedSubscript:@"override-fileExt"], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
    {
      v17 = [(OSASystemConfiguration *)self logExt:v8];
    }

    v18 = [v9 objectForKeyedSubscript:@"override-filePrefix"];
    if (v18)
    {
      [v9 objectForKeyedSubscript:@"override-filePrefix"];
    }

    else
    {
      [(OSASystemConfiguration *)self logPrefix:v8];
    }
    v19 = ;

    if (![v19 length])
    {
      v20 = v8;

      v19 = v20;
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = logPathForType_at_options__collisionCount;
    if (logPathForType_at_options__collisionCount < 2)
    {
      v23 = &stru_1F2411100;
    }

    else
    {
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:logPathForType_at_options__collisionCount];
    }

    v24 = [v21 stringWithFormat:@"%@-%@%@", v19, v13, v23];
    v11 = [v24 stringByAppendingPathExtension:v17];

    if (v22 >= 2)
    {
    }
  }

  v25 = [v11 stringByStandardizingPath];
  v26 = [v25 pathComponents];

  v27 = [v9 objectForKeyedSubscript:@"override-filePath"];

  if (v27)
  {
    v28 = [v9 objectForKeyedSubscript:@"override-filePath"];
LABEL_27:
    v31 = v28;
    goto LABEL_28;
  }

  v29 = [v9 objectForKeyedSubscript:@"datavault-filePath"];
  v30 = [v29 BOOLValue];

  if (v30)
  {
    v28 = [(OSASystemConfiguration *)self pathSubmissionDataVault];
    goto LABEL_27;
  }

  v34 = [v9 objectForKeyedSubscript:@"file-owner"];
  v31 = [(OSASystemConfiguration *)self pathSubmissionForOwner:v34];

LABEL_28:
  if ([v26 count] == 1)
  {
    v32 = [v31 stringByAppendingPathComponent:v11];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- ($A7169D069963E6D826465C174652914F)logDomain
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__OSASystemConfiguration_logDomain__block_invoke;
  block[3] = &unk_1E7A26EC0;
  block[4] = self;
  if (logDomain_onceToken != -1)
  {
    dispatch_once(&logDomain_onceToken, block);
  }

  return self->_logDomain.daFlow;
}

uint64_t __35__OSASystemConfiguration_logDomain__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.osanalytics.daFlow", "reports");
  v3 = *(a1 + 32);
  v4 = *(v3 + 336);
  *(v3 + 336) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMCProfileConnection
{
  if (sharedMCProfileConnection_onceToken != -1)
  {
    +[OSASystemConfiguration(optIn) sharedMCProfileConnection];
  }

  v3 = sharedMCProfileConnection__sharedConnection;

  return v3;
}

void __58__OSASystemConfiguration_optIn__sharedMCProfileConnection__block_invoke()
{
  if (ManagedConfigurationLibraryCore())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v0 = getMCProfileConnectionClass_softClass;
    v7 = getMCProfileConnectionClass_softClass;
    if (!getMCProfileConnectionClass_softClass)
    {
      ManagedConfigurationLibraryCore();
      v5[3] = objc_getClass("MCProfileConnection");
      getMCProfileConnectionClass_softClass = v5[3];
      v0 = v5[3];
    }

    v1 = v0;
    _Block_object_dispose(&v4, 8);
    v2 = [v0 sharedConnection];
    v3 = sharedMCProfileConnection__sharedConnection;
    sharedMCProfileConnection__sharedConnection = v2;
  }
}

+ (BOOL)BOOLValForMCSetting:(id)a3
{
  v3 = a3;
  v4 = +[OSASystemConfiguration sharedInstance];
  v5 = [v4 isInDeviceRecoveryEnvironment];

  if (v5)
  {
    v6 = [@"/private/var/mnt" stringByAppendingPathComponent:@"containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/UserSettings.plist"];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v7 fileExistsAtPath:v6])
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:@"restrictedBool"];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 objectForKeyedSubscript:v3];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 objectForKeyedSubscript:@"value"];
            LOBYTE(v15) = [v14 BOOLValue];
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    v16 = +[OSASystemConfiguration sharedMCProfileConnection];
    v6 = v16;
    if (v3 && v16)
    {
      LOBYTE(v15) = [v16 effectiveBoolValueForSetting:v3] == 1;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to load ManagedConfiguration, falling back to MobileGestalt", v18, 2u);
      }

      if (MGGetBoolAnswer())
      {
        v15 = os_variant_is_recovery() ^ 1;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }
  }

  return v15;
}

void __43__OSASystemConfiguration_optIn__optInApple__block_invoke()
{
  if (ManagedConfigurationLibraryCore())
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v0 = getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_ptr;
    v6 = getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_ptr;
    if (!getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_ptr)
    {
      v1 = ManagedConfigurationLibrary();
      v4[3] = dlsym(v1, "MCFeatureDiagnosticsSubmissionAllowed");
      getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_ptr = v4[3];
      v0 = v4[3];
    }

    _Block_object_dispose(&v3, 8);
    if (!v0)
    {
      ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
      _Block_object_dispose(&v3, 8);
      _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
    }

    objc_storeStrong(&optInApple__featureDiagnosticsSubmissionAllowed, *v0);
  }
}

- (BOOL)optInDRE
{
  if ([(OSASystemConfiguration *)self isInDeviceRecoveryEnvironment])
  {
    v2 = OSAnalyticsHelperServiceConnection();
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [OSASystemConfiguration(optIn) optInDRE];
      }

      v7 = 0;
      goto LABEL_21;
    }

    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(empty, "operation", 0xBuLL);
    xpc_dictionary_set_uint64(empty, "dre_optIn_operation", 0);
    v4 = xpc_connection_send_message_with_reply_sync(v2, empty);
    v5 = v4;
    if (v4)
    {
      v6 = MEMORY[0x1B2703B90](v4);
      if (v6 == MEMORY[0x1E69E9E98])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(OSASystemConfiguration(optIn) *)v5 optInDRE];
        }
      }

      else if (v6 == MEMORY[0x1E69E9E80])
      {
        if (xpc_dictionary_get_BOOL(v5, "result"))
        {
          v7 = xpc_dictionary_get_BOOL(v5, "dre_optInValue");
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [(OSASystemConfiguration(optIn) *)v7 optInDRE];
          }

          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSASystemConfiguration(optIn) optInDRE];
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSASystemConfiguration(optIn) optInDRE];
    }

    v7 = 0;
LABEL_20:

LABEL_21:
    return v7;
  }

  return 0;
}

- (void)setDREOptIn:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(OSASystemConfiguration *)self isInDeviceRecoveryEnvironment])
  {
    v4 = OSAnalyticsHelperServiceConnection();
    if (v4)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, "operation", 0xBuLL);
      xpc_dictionary_set_uint64(empty, "dre_optIn_operation", 1uLL);
      xpc_dictionary_set_BOOL(empty, "dre_optInValue", v3);
      v6 = xpc_connection_send_message_with_reply_sync(v4, empty);
      v7 = v6;
      if (v6)
      {
        v8 = MEMORY[0x1B2703B90](v6);
        if (v8 == MEMORY[0x1E69E9E98])
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [(OSASystemConfiguration(optIn) *)v7 optInDRE];
          }
        }

        else if (v8 == MEMORY[0x1E69E9E80])
        {
          if (xpc_dictionary_get_BOOL(v7, "result"))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v10[0] = 67109120;
              v10[1] = v3;
              _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Successfully set DRE opt-in value to %d", v10, 8u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [OSASystemConfiguration(optIn) setDREOptIn:];
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [OSASystemConfiguration(optIn) setDREOptIn:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSASystemConfiguration(optIn) setDREOptIn:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSASystemConfiguration(optIn) setDREOptIn:];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __46__OSASystemConfiguration_optIn__optIn3rdParty__block_invoke()
{
  if (ManagedConfigurationLibraryCore())
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v0 = getMCFeatureAppAnalyticsAllowedSymbolLoc_ptr;
    v6 = getMCFeatureAppAnalyticsAllowedSymbolLoc_ptr;
    if (!getMCFeatureAppAnalyticsAllowedSymbolLoc_ptr)
    {
      v1 = ManagedConfigurationLibrary();
      v4[3] = dlsym(v1, "MCFeatureAppAnalyticsAllowed");
      getMCFeatureAppAnalyticsAllowedSymbolLoc_ptr = v4[3];
      v0 = v4[3];
    }

    _Block_object_dispose(&v3, 8);
    if (!v0)
    {
      ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
      _Block_object_dispose(&v3, 8);
      _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
    }

    objc_storeStrong(&optIn3rdParty__featureAppAnalyticsAllowed, *v0);
  }
}

- (void)setPrefsKey:value:forDomain:withSync:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPrefsKey:value:forDomain:withSync:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPrefsKey:value:forDomain:withSync:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getPrefsKey:(void *)a1 forDomain:withOptions:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 pathPreferences];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getPrefsKey:(uint64_t)a1 forDomain:(int *)a2 withOptions:.cold.2(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  xpc_strerror();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getPrefsKey:forDomain:withOptions:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getPrefsKey:forDomain:withOptions:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getPrefsKey:forDomain:withOptions:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fastLane
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  v6 = 2114;
  v7 = a1;
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unexpected tasking value type for key 'fastLane' (type: %{public}@, value: %{public}@) encountered", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void __37__OSASystemConfiguration_internalKey__block_invoke_370_cold_2(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 description];
  *a1 = 138412290;
  *a3 = v5;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Fetched addresses: %@", a1, 0xCu);
}

void __37__OSASystemConfiguration_internalKey__block_invoke_370_cold_3(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 description];
  *a1 = 138412290;
  *a3 = v5;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "No addresses fetched. So using username. %@", a1, 0xCu);
}

+ (void)ensureUsablePath:component:options:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__OSASystemConfiguration_ensureUsablePath_component_options___block_invoke_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)ensureConformanceOfFile:(uint64_t)a1 options:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 4);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)ensureConformanceOfFile:options:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)ensureConformanceOfFile:options:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)ensureConformanceOfFile:options:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end