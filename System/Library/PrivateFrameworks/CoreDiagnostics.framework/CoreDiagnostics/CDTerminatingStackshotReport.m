@interface CDTerminatingStackshotReport
+ (id)getDisplayState;
+ (id)getThermalPressureLevel;
+ (void)getDisplayState;
+ (void)getThermalPressureLevel;
- (BOOL)saveWithOptions:(id)a3;
- (id)additionalIPSMetadata;
- (id)decode_reason:(exit_reason_snapshot *)a3 reason:(id)a4;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4;
- (void)launchDiagnosticsReporter;
@end

@implementation CDTerminatingStackshotReport

- (id)reportNamePrefix
{
  appName = self->super._appName;
  if (appName)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", appName];
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)additionalIPSMetadata
{
  v16[4] = *MEMORY[0x1E69E9840];
  appName = self->super._appName;
  if (!appName)
  {
    appName = @"Unknown";
  }

  v15[0] = *MEMORY[0x1E69B7C38];
  v15[1] = @"app_name";
  v16[0] = appName;
  v16[1] = appName;
  v15[2] = @"share_with_app_devs";
  v4 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E69B7C10] sharedInstance];
  v6 = [v4 numberWithBool:{objc_msgSend(v5, "optIn3rdParty")}];
  v16[2] = v6;
  v15[3] = *MEMORY[0x1E69B7C48];
  v7 = [(OSAReport *)self incidentID];
  v16[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v9 = [v8 mutableCopy];

  v10 = [(OSAReport *)self etlKey];

  if (v10)
  {
    v11 = [(OSAReport *)self etlKey];
    [v9 setObject:v11 forKeyedSubscript:@"etl_key"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v9 setObject:bundleID forKeyedSubscript:*MEMORY[0x1E69B7C40]];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)decode_reason:(exit_reason_snapshot *)a3 reason:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  if (a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->ers_code];
    [v6 setObject:v7 forKeyedSubscript:@"code"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->ers_flags];
    [v6 setObject:v8 forKeyedSubscript:@"flags"];

    if (a3->ers_namespace == 20)
    {
      v9 = [_TtC15CoreDiagnostics24WatchdogExitReasonHelper descriptionFromCode:LODWORD(a3->ers_code)];
      [v6 setObject:v9 forKeyedSubscript:@"indicator"];

      v10 = @"WATCHDOG";
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<0x%X>", a3->ers_namespace];
    }
  }

  else
  {
    v10 = @"<NO_NS>";
  }

  [v6 setObject:v10 forKeyedSubscript:@"namespace"];
  if (v5)
  {
    v11 = [v5 componentsSeparatedByString:@"\n"];
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

- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v109[10] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v108[0] = @"incident";
  v70 = [(OSAReport *)self incidentID];
  v109[0] = v70;
  v108[1] = @"crashReporterKey";
  v69 = [MEMORY[0x1E69B7C10] sharedInstance];
  v68 = [v69 crashReporterKey];
  v109[1] = v68;
  v108[2] = @"modelCode";
  v67 = [MEMORY[0x1E69B7C10] sharedInstance];
  v66 = [v67 modelCode];
  v109[2] = v66;
  v108[3] = @"pid";
  v65 = [MEMORY[0x1E696AD98] numberWithInt:self->super._pid];
  v109[3] = v65;
  v108[4] = @"cpuType";
  v64 = [(CDTerminatingStackshotReport *)self decode_cpuType];
  v109[4] = v64;
  v108[5] = @"osVersion";
  v106[0] = @"train";
  v63 = [MEMORY[0x1E69B7C10] sharedInstance];
  v62 = [v63 osTrain];
  v107[0] = v62;
  v106[1] = @"build";
  v6 = [MEMORY[0x1E69B7C10] sharedInstance];
  v7 = [v6 buildVersion];
  v107[1] = v7;
  v106[2] = @"releaseType";
  v8 = [MEMORY[0x1E69B7C10] sharedInstance];
  v9 = [v8 releaseType];
  v107[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
  v109[5] = v10;
  v108[6] = @"captureTime";
  v11 = *(&self->super.super.super.isa + *MEMORY[0x1E69B7C18]);
  v12 = OSADateFormat();
  v109[6] = v12;
  v109[7] = &unk_1F55144C8;
  v108[7] = @"deployVersion";
  v108[8] = @"variant";
  v108[9] = @"variantVersion";
  v109[8] = @"stackshot";
  v109[9] = &unk_1F55144E0;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:10];
  v14 = (v5 + 16);
  (*(v5 + 2))(v5, v13);

  v15 = v5;
  v16 = MEMORY[0x1E69B7C00];
  v17 = [(CDTerminatingStackshotReport *)self problemType];
  v18 = [v16 commonFieldsForBody:v17];
  (*v14)(v15, v18);

  v19 = [MEMORY[0x1E69B7C10] sharedInstance];
  LODWORD(v17) = [v19 appleInternal];

  if (v17)
  {
    v20 = [MEMORY[0x1E69B7C10] sharedInstance];
    v21 = [v20 hwModel];

    v104 = @"codeName";
    v105 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    (*(v15 + 2))(v15, v22);
  }

  if ([(NSString *)self->super._appName length])
  {
    appName = self->super._appName;
    v102 = @"procName";
    v103 = appName;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    (*(v15 + 2))(v15, v24);
  }

  if ([(NSString *)self->_procPath length])
  {
    procPath = self->_procPath;
    v100 = @"procPath";
    v101 = procPath;
    v26 = MEMORY[0x1E695DF20];
    v27 = procPath;
    v28 = [v26 dictionaryWithObjects:&v101 forKeys:&v100 count:1];

    (*(v15 + 2))(v15, v28);
  }

  if (self->_bundleID)
  {
    bundleID = self->_bundleID;
    v98 = @"bundleInfo";
    v96 = @"CFBundleIdentifier";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v96 count:1];
    v99 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    (*(v15 + 2))(v15, v30);
  }

  if ([(NSDictionary *)self->_termination_info count])
  {
    termination_info = self->_termination_info;
    v94 = @"termination";
    v95 = termination_info;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    (*(v15 + 2))(v15, v32);
  }

  v71 = [objc_opt_class() bootSessionUUID];
  if (v71)
  {
    v92 = @"bootSessionUUID";
    v93 = v71;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    (*(v15 + 2))(v15, v33);
  }

  v90 = @"uptime";
  v34 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v91 = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  (*(v15 + 2))(v15, v35);

  v36 = +[CDTerminatingStackshotReport getThermalPressureLevel];
  v37 = v36;
  if (v36)
  {
    v88 = @"thermalPressureLevel";
    v89 = v36;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    (*(v15 + 2))(v15, v38);
  }

  v39 = [MEMORY[0x1E696AE30] processInfo];
  v40 = [v39 isLowPowerModeEnabled];

  if (v40)
  {
    (*(v15 + 2))(v15, &unk_1F5514638);
  }

  v41 = +[CDTerminatingStackshotReport getDisplayState];
  v42 = v41;
  if (v41)
  {
    v86 = @"displayState";
    v87 = v41;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    (*(v15 + 2))(v15, v43);
  }

  v44 = +[_TtC15CoreDiagnostics22AppleIntelligenceState getAppleIntelligenceAvailability];
  if ([v44 count])
  {
    v84 = @"appleIntelligenceStatus";
    v85 = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    (*(v15 + 2))(v15, v45);
  }

  v46 = [(CDTerminatingStackshotReport *)self isSnapshotDisabled];
  v47 = MEMORY[0x1E69B7C30];
  if (!v46)
  {
    if (self->super._ss_trace_buffer)
    {
      v82 = &unk_1F55144F8;
      v83 = @"stackshot";
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      (*(v15 + 2))(v15, v48);

      v49 = objc_alloc_init(MEMORY[0x1E69B7BF0]);
      [(CDStackshotReport *)self decodeKCDataWithBlock:v15 withTuning:&unk_1F5514660 usingCatalog:v49];
      v80 = @"binaryImages";
      v50 = [v49 reportUsedImages];
      v81 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      (*(v15 + 2))(v15, v51);

      [v49 appendNotesTo:*(&self->super.super.super.isa + *v47)];
      v78 = &unk_1F5514528;
      v79 = &stru_1F550D880;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      (*(v15 + 2))(v15, v52);
    }

    v53 = [(CDTerminatingStackshotReport *)self spindump];

    if (v53)
    {
      v76 = @"spindump";
      v54 = [(CDTerminatingStackshotReport *)self spindump];
      v77 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      (*(v15 + 2))(v15, v55);
    }
  }

  additionalPayload = self->super._additionalPayload;
  if (additionalPayload)
  {
    v74 = @"additionalPayload";
    v75 = additionalPayload;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    (*(v15 + 2))(v15, v57);
  }

  v58 = *v47;
  [*(&self->super.super.super.isa + v58) addObject:{@"This is a watchdog-triggered termination event, and not expected to be well-represented in the legacy crash format"}];
  if (self->_isSnapshotDisabled)
  {
    [*(&self->super.super.super.isa + v58) addObject:@"stackshot inclusion disabled"];
  }

  if ([*(&self->super.super.super.isa + v58) count])
  {
    v59 = *(&self->super.super.super.isa + v58);
    v72[0] = @"reportNotes";
    v72[1] = &unk_1F5514540;
    v73[0] = v59;
    v73[1] = &unk_1F5514510;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    (*(v15 + 2))(v15, v60);
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDTerminatingStackshotReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:a3];
  [(CDTerminatingStackshotReport *)self launchDiagnosticsReporter];
  return v4;
}

- (void)launchDiagnosticsReporter
{
  v2 = [(OSAReport *)self logfile];
  handleDiagnosticLog(4, v2);
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
        +[CDTerminatingStackshotReport getThermalPressureLevel];
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
          v6 = [v5 stringValue];
          v2 = [v3 stringWithFormat:@"%@ (%@)", v4, v6];

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
    +[CDTerminatingStackshotReport getThermalPressureLevel];
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
      +[CDTerminatingStackshotReport getDisplayState];
    }

    return 0;
  }

  v3 = 0;
  if (notify_get_state(out_token, &v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[CDTerminatingStackshotReport getDisplayState];
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
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)getDisplayState
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end