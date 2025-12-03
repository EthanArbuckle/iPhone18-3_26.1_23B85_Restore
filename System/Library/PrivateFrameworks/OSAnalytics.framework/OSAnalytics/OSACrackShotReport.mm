@interface OSACrackShotReport
+ (id)getDisplayState;
+ (id)getThermalPressureLevel;
+ (void)getDisplayState;
+ (void)getThermalPressureLevel;
- (BOOL)saveWithOptions:(id)options;
- (id)additionalIPSMetadata;
- (id)decode_reason:(exit_reason_snapshot *)decode_reason reason:(id)reason;
- (id)problemType;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
@end

@implementation OSACrackShotReport

- (id)problemType
{
  if (self->_isSystemWatchdog)
  {
    return @"409";
  }

  else
  {
    return @"509";
  }
}

- (id)reportNamePrefix
{
  appName = self->super._appName;
  if (appName)
  {
    appName = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", appName];
  }

  else
  {
    appName = @"unknown";
  }

  return appName;
}

- (id)additionalIPSMetadata
{
  v16[4] = *MEMORY[0x1E69E9840];
  appName = self->super._appName;
  if (!appName)
  {
    appName = @"Unknown";
  }

  v15[0] = @"name";
  v15[1] = @"app_name";
  v16[0] = appName;
  v16[1] = appName;
  v15[2] = @"share_with_app_devs";
  v4 = MEMORY[0x1E696AD98];
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v4 numberWithBool:{objc_msgSend(v5, "optIn3rdParty")}];
  v16[2] = v6;
  v15[3] = @"incident_id";
  incidentID = [(OSAReport *)self incidentID];
  v16[3] = incidentID;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v9 = [v8 mutableCopy];

  etlKey = [(OSAReport *)self etlKey];

  if (etlKey)
  {
    etlKey2 = [(OSAReport *)self etlKey];
    [v9 setObject:etlKey2 forKeyedSubscript:@"etl_key"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v9 setObject:bundleID forKeyedSubscript:@"bundleID"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)decode_reason:(exit_reason_snapshot *)decode_reason reason:(id)reason
{
  reasonCopy = reason;
  v6 = objc_opt_new();
  if (decode_reason)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decode_reason->ers_code];
    [v6 setObject:v7 forKeyedSubscript:@"code"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decode_reason->ers_flags];
    [v6 setObject:v8 forKeyedSubscript:@"flags"];

    if (decode_reason->ers_namespace == 20)
    {
      v9 = [_TtC11OSAnalytics24WatchdogExitReasonHelper descriptionFromCode:LODWORD(decode_reason->ers_code)];
      [v6 setObject:v9 forKeyedSubscript:@"indicator"];

      v10 = @"WATCHDOG";
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<0x%X>", decode_reason->ers_namespace];
    }
  }

  else
  {
    v10 = @"<NO_NS>";
  }

  [v6 setObject:v10 forKeyedSubscript:@"namespace"];
  if (reasonCopy)
  {
    v11 = [reasonCopy componentsSeparatedByString:@"\n"];
    v12 = [v11 valueForKey:@"stringByTrimming"];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
    v14 = [v12 filteredArrayUsingPredicate:v13];

    if ([v14 count])
    {
      [v6 setObject:v14 forKeyedSubscript:@"details"];
    }
  }

  return v6;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v99[10] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v98[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v99[0] = incidentID;
  v98[1] = @"crashReporterKey";
  v62 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v62 crashReporterKey];
  v99[1] = crashReporterKey;
  v98[2] = @"modelCode";
  v61 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v61 modelCode];
  v99[2] = modelCode;
  v98[3] = @"pid";
  v58 = [MEMORY[0x1E696AD98] numberWithInt:self->super._pid];
  v99[3] = v58;
  v98[4] = @"cpuType";
  decode_cpuType = [(OSACrackShotReport *)self decode_cpuType];
  v99[4] = decode_cpuType;
  v98[5] = @"osVersion";
  v96[0] = @"train";
  v56 = +[OSASystemConfiguration sharedInstance];
  osTrain = [v56 osTrain];
  v97[0] = osTrain;
  v96[1] = @"build";
  v6 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v6 buildVersion];
  v97[1] = buildVersion;
  v96[2] = @"releaseType";
  v8 = +[OSASystemConfiguration sharedInstance];
  releaseType = [v8 releaseType];
  v97[2] = releaseType;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v99[5] = v10;
  v98[6] = @"captureTime";
  v11 = OSADateFormat(2u, self->super.super._capture_time);
  v99[6] = v11;
  v99[7] = &unk_1F241E8A8;
  v98[7] = @"deployVersion";
  v98[8] = @"variant";
  v98[9] = @"variantVersion";
  v99[8] = @"stackshot";
  v99[9] = &unk_1F241E8C0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:10];
  blockCopy[2](blockCopy, v12);

  problemType = [(OSACrackShotReport *)self problemType];
  v14 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v14);

  v15 = +[OSASystemConfiguration sharedInstance];
  LODWORD(problemType) = [v15 appleInternal];

  if (problemType)
  {
    v16 = +[OSASystemConfiguration sharedInstance];
    hwModel = [v16 hwModel];

    v94 = @"codeName";
    v95 = hwModel;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    blockCopy[2](blockCopy, v18);
  }

  if ([(NSString *)self->super._appName length])
  {
    appName = self->super._appName;
    v92 = @"procName";
    v93 = appName;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    blockCopy[2](blockCopy, v20);
  }

  if ([(NSString *)self->_procPath length])
  {
    procPath = self->_procPath;
    v90 = @"procPath";
    v91 = procPath;
    v22 = MEMORY[0x1E695DF20];
    v23 = procPath;
    v24 = [v22 dictionaryWithObjects:&v91 forKeys:&v90 count:1];

    blockCopy[2](blockCopy, v24);
  }

  if (self->_bundleID)
  {
    bundleID = self->_bundleID;
    v88 = @"bundleInfo";
    v86 = @"CFBundleIdentifier";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v86 count:1];
    v89 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    blockCopy[2](blockCopy, v26);
  }

  if ([(NSDictionary *)self->_termination_info count])
  {
    termination_info = self->_termination_info;
    v84 = @"termination";
    v85 = termination_info;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    blockCopy[2](blockCopy, v28);
  }

  bootSessionUUID = [objc_opt_class() bootSessionUUID];
  v30 = bootSessionUUID;
  if (bootSessionUUID)
  {
    v82 = @"bootSessionUUID";
    v83 = bootSessionUUID;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    blockCopy[2](blockCopy, v31);
  }

  v80 = @"uptime";
  v32 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v81 = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  blockCopy[2](blockCopy, v33);

  v34 = +[OSACrackShotReport getThermalPressureLevel];
  v35 = v34;
  if (v34)
  {
    v78 = @"thermalPressureLevel";
    v79 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    blockCopy[2](blockCopy, v36);
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    blockCopy[2](blockCopy, &unk_1F241EDD8);
  }

  v39 = +[OSACrackShotReport getDisplayState];
  v40 = v39;
  if (v39)
  {
    v76 = @"displayState";
    v77 = v39;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    blockCopy[2](blockCopy, v41);
  }

  if (![(OSACrackShotReport *)self isSnapshotDisabled])
  {
    if (self->super._ss_trace_buffer)
    {
      v74 = &unk_1F241E8D8;
      v75 = @"stackshot";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      blockCopy[2](blockCopy, v42);

      v43 = objc_alloc_init(OSABinaryImageCatalog);
      [(OSAStackShotReport *)self decodeKCDataWithBlock:blockCopy withTuning:&unk_1F241EE00 usingCatalog:v43];
      v72 = @"binaryImages";
      reportUsedImages = [(OSABinaryImageCatalog *)v43 reportUsedImages];
      v73 = reportUsedImages;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      blockCopy[2](blockCopy, v45);

      [(OSABinaryImageCatalog *)v43 appendNotesTo:self->super.super._notes];
      v70 = &unk_1F241E908;
      v71 = &stru_1F2411100;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      blockCopy[2](blockCopy, v46);
    }

    spindump = [(OSACrackShotReport *)self spindump];

    if (spindump)
    {
      v68 = @"spindump";
      spindump2 = [(OSACrackShotReport *)self spindump];
      v69 = spindump2;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      blockCopy[2](blockCopy, v49);
    }
  }

  additionalPayload = self->super._additionalPayload;
  if (additionalPayload)
  {
    v66 = @"additionalPayload";
    v67 = additionalPayload;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    blockCopy[2](blockCopy, v51);
  }

  [(NSMutableArray *)self->super.super._notes addObject:@"This is a watchdog-triggered termination event, and not expected to be well-represented in the legacy crash format"];
  if (self->_isSnapshotDisabled)
  {
    [(NSMutableArray *)self->super.super._notes addObject:@"stackshot inclusion disabled"];
  }

  if ([(NSMutableArray *)self->super.super._notes count])
  {
    notes = self->super.super._notes;
    v64[0] = @"reportNotes";
    v64[1] = &unk_1F241E920;
    v65[0] = notes;
    v65[1] = &unk_1F241E8F0;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    blockCopy[2](blockCopy, v53);
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = OSACrackShotReport;
  v4 = [(OSAReport *)&v8 saveWithOptions:options];
  if (self->_isSystemWatchdog)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  logfile = [(OSAReport *)self logfile];
  [OSADiagnosticsReporterSupport handleDiagnosticLog:v5 logPath:logfile completion:0];

  return v4;
}

+ (id)getThermalPressureLevel
{
  out_token = 0;
  if (!notify_register_check(*MEMORY[0x1E69E98C0], &out_token))
  {
    state64 = 0;
    if (notify_get_state(out_token, &state64))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[OSACrackShotReport getThermalPressureLevel];
      }

      v2 = 0;
      goto LABEL_24;
    }

    v3 = MEMORY[0x1E696AEC0];
    if (state64 > 29)
    {
      switch(state64)
      {
        case 0x1E:
          v4 = @"ThermalPressureLevelHeavy";
          goto LABEL_23;
        case 0x28:
          v4 = @"ThermalPressureLevelTrapping";
          goto LABEL_23;
        case 0x32:
          v4 = @"ThermalPressureLevelSleeping";
          goto LABEL_23;
      }
    }

    else
    {
      switch(state64)
      {
        case 0:
          v4 = @"ThermalPressureLevelNominal";
          goto LABEL_23;
        case 0xA:
          v4 = @"ThermalPressureLevelLight";
          goto LABEL_23;
        case 0x14:
          v4 = @"ThermalPressureLevelModerate";
LABEL_23:
          v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
          stringValue = [v5 stringValue];
          v2 = [v3 stringWithFormat:@"%@ (%@)", v4, stringValue];

LABEL_24:
          notify_cancel(out_token);
          goto LABEL_25;
      }
    }

    v4 = @"unknown";
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSACrackShotReport getThermalPressureLevel];
  }

  v2 = 0;
LABEL_25:

  return v2;
}

+ (id)getDisplayState
{
  out_token = 0;
  if (notify_register_check("com.apple.iokit.hid.displayStatus", &out_token))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSACrackShotReport getDisplayState];
    }

    return 0;
  }

  v3 = 0;
  if (notify_get_state(out_token, &v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSACrackShotReport getDisplayState];
    }

    return 0;
  }

  if (v3)
  {
    return @"ON";
  }

  else
  {
    return @"OFF";
  }
}

+ (void)getThermalPressureLevel
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v0, "failed to get pressure level state: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)getDisplayState
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v0, "failed to get display state: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

@end