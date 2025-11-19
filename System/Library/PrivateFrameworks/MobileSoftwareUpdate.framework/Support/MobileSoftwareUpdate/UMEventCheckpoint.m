@interface UMEventCheckpoint
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)lastSyncedNvram:(id)a3;
+ (id)sharedInstance;
- (BOOL)cleanupCheckpointsNvram:(id *)a3;
- (BOOL)cleanupCheckpointsNvramReturnDirty:(BOOL *)a3 error:(id *)a4;
- (id)_init;
- (id)checkpointNvramInfo:(id)a3;
@end

@implementation UMEventCheckpoint

- (id)_init
{
  v4.receiver = self;
  v4.super_class = UMEventCheckpoint;
  v2 = [(UMEventCheckpoint *)&v4 init];
  if (v2)
  {
    v5[0] = @"otaOutcome";
    v5[1] = @"otaChildFailures";
    v6[0] = @"ota-outcome";
    v6[1] = @"ota-child-failures";
    v5[2] = @"otaRebootRetryEnabled";
    v5[3] = @"otaRebootRetryZone";
    v6[2] = @"ota-reboot-retry-enabled";
    v6[3] = @"ota-reboot-retry-zone";
    v5[4] = @"otaAnomalies";
    v5[5] = @"otaInitialStepMonitor";
    v6[4] = @"ota-anomalies";
    v6[5] = @"ota-step-monitor";
    v5[6] = @"otaInitialStepNames";
    v5[7] = @"otaInitialStepIDs";
    v6[6] = @"ota-step-names";
    v6[7] = @"ota-step-ids";
    v5[8] = @"otaInitialStepResults";
    v5[9] = @"otaInitialStepWarnings";
    v6[8] = @"ota-step-results";
    v6[9] = @"ota-step-warnings";
    v5[10] = @"otaInitialStepCodes";
    v5[11] = @"otaInitialStepDomains";
    v6[10] = @"ota-step-codes";
    v6[11] = @"ota-step-domains";
    v5[12] = @"otaInitialStepError";
    v5[13] = @"otaInitialUptime";
    v6[12] = @"ota-step-error";
    v6[13] = @"ota-step-uptime";
    v5[14] = @"otaInitialBatteryLevel";
    v5[15] = @"otaInitialExternalPower";
    v6[14] = @"ota-step-battery-level";
    v6[15] = @"ota-step-external-power";
    v5[16] = @"otaInitialUserProgress";
    v5[17] = @"otaInitialResult";
    v6[16] = @"ota-step-user-progress";
    v6[17] = @"ota-initial-result";
    v5[18] = @"otaInitialFailureReason";
    v5[19] = @"otaInitialBreadcrumbs";
    v6[18] = @"ota-initial-failure-reason";
    v6[19] = @"ota-initial-breadcrumbs";
    v5[20] = @"otaRetryResult";
    v5[21] = @"otaRetryFailureReason";
    v6[20] = @"ota-retry-result";
    v6[21] = @"ota-retry-failure-reason";
    v5[22] = @"otaRetryBreadcrumbs";
    v5[23] = @"otaRetryStepMonitor";
    v6[22] = @"ota-retry-breadcrumbs";
    v6[23] = @"ota-retry-monitor";
    v5[24] = @"otaRetryStepNames";
    v5[25] = @"otaRetryStepIDs";
    v6[24] = @"ota-retry-names";
    v6[25] = @"ota-retry-ids";
    v5[26] = @"otaRetryStepResults";
    v5[27] = @"otaRetryStepWarnings";
    v6[26] = @"ota-retry-results";
    v6[27] = @"ota-retry-warnings";
    v5[28] = @"otaRetryStepCodes";
    v5[29] = @"otaRetryStepDomains";
    v6[28] = @"ota-retry-codes";
    v6[29] = @"ota-retry-domains";
    v5[30] = @"otaRetryStepError";
    v5[31] = @"otaRetryUptime";
    v6[30] = @"ota-retry-error";
    v6[31] = @"ota-retry-uptime";
    v5[32] = @"otaRetryBatteryLevel";
    v5[33] = @"otaRetryExternalPower";
    v6[32] = @"ota-retry-battery-level";
    v6[33] = @"ota-retry-external-power";
    v5[34] = @"otaRetryUserProgress";
    v5[35] = @"otaPerformShutdown";
    v6[34] = @"ota-retry-user-progress";
    v6[35] = @"ota-perform-shutdown";
    v5[36] = @"restoreOutcome";
    v5[37] = @"restoreChildFailures";
    v6[36] = @"restore-outcome";
    v6[37] = @"restore-child-failures";
    v5[38] = @"restoreRebootRetryEnabled";
    v5[39] = @"restoreRebootRetryZone";
    v6[38] = @"restore-reboot-retry-enabled";
    v6[39] = @"restore-reboot-retry-zone";
    v5[40] = @"restoreAnomalies";
    v5[41] = @"restoreInitialStepMonitor";
    v6[40] = @"restore-anomalies";
    v6[41] = @"restore-step-monitor";
    v5[42] = @"restoreInitialStepNames";
    v5[43] = @"restoreInitialStepIDs";
    v6[42] = @"restore-step-names";
    v6[43] = @"restore-step-ids";
    v5[44] = @"restoreInitialStepResults";
    v5[45] = @"restoreInitialStepWarnings";
    v6[44] = @"restore-step-results";
    v6[45] = @"restore-step-warnings";
    v5[46] = @"restoreInitialStepCodes";
    v5[47] = @"restoreInitialStepDomains";
    v6[46] = @"restore-step-codes";
    v6[47] = @"restore-step-domains";
    v5[48] = @"restoreInitialStepError";
    v5[49] = @"restoreRetryStepMonitor";
    v6[48] = @"restore-step-error";
    v6[49] = @"restore-retry-monitor";
    v5[50] = @"restoreRetryStepNames";
    v5[51] = @"restoreRetryStepIDs";
    v6[50] = @"restore-retry-names";
    v6[51] = @"restore-retry-ids";
    v5[52] = @"restoreRetryStepResults";
    v5[53] = @"restoreRetryStepWarnings";
    v6[52] = @"restore-retry-results";
    v6[53] = @"restore-retry-warnings";
    v5[54] = @"restoreRetryStepCodes";
    v5[55] = @"restoreRetryStepDomains";
    v6[54] = @"restore-retry-codes";
    v6[55] = @"restore-retry-domains";
    v5[56] = @"restoreRetryStepError";
    v5[57] = @"restorePerformShutdown";
    v6[56] = @"restore-retry-error";
    v6[57] = @"restore-perform-shutdown";
    [(UMEventCheckpoint *)v2 setNvramMapping:[NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:58]];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __35__UMEventCheckpoint_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e8_32o_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  return sharedInstance_instance;
}

id __35__UMEventCheckpoint_sharedInstance__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___UMEventCheckpoint;
  result = [objc_msgSendSuper2(&v2 allocWithZone:{0), "_init"}];
  sharedInstance_instance = result;
  return result;
}

+ (id)lastSyncedNvram:(id)a3
{
  properties = 0;
  logfunction(", 1, @"start\n"", v3, v4, v5, v6, v7, v43);
  v9 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
  if (v9)
  {
    v15 = v9;
    if (IORegistryEntryCreateCFProperties(v9, &properties, 0, 0))
    {
      logfunction(", 1, @"Could not load nvram from nvram\n"", v16, v17, v18, v19, v20, v44);
    }

    v21 = properties;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = @"/private/var/MobileSoftwareUpdate/nvram.plist";
    }

    v23 = [NSMutableDictionary dictionaryWithContentsOfFile:v22];
    if (v23)
    {
      v29 = v23;
      if (!properties)
      {
LABEL_17:
        v29 = 0;
LABEL_20:
        IOObjectRelease(v15);
        return v29;
      }

      if ([(__CFDictionary *)properties objectForKey:@"ota-uuid"])
      {
        if (properties)
        {
          v30 = _longFromNVRAMVar([(__CFDictionary *)properties objectForKey:@"ramrod-nvram-session"]);
          v31 = _longFromNVRAMVar([(__CFDictionary *)properties objectForKey:@"ramrod-nvram-sequence"]);
          v32 = _longFromNVRAMVar([(__CFDictionary *)v29 objectForKey:@"ramrod-nvram-session"]);
          v33 = _longFromNVRAMVar([(__CFDictionary *)v29 objectForKey:@"ramrod-nvram-sequence"]);
          if (v32 > v30 || v32 == v30 && v33 >= v31)
          {
            logfunction(", 1, @"filesystem copy of nvram will be used. ([%ld][%ld] vs. [%ld][%ld])\n"", v34, v35, v36, v37, v38, v32);
          }

          else
          {
            logfunction(", 1, @"nvram is up to date and will be used. ([%ld][%ld] vs. [%ld][%ld])\n"", v34, v35, v36, v37, v38, v32);
            v41 = properties;
            v42 = [(__CFDictionary *)v29 objectForKey:@"ramrod-file-only-vars"];
            if (v42)
            {
              [(__CFDictionary *)v41 setObject:v42 forKey:@"ramrod-stale-file-only-vars"];
            }

            v29 = v41;
          }

          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v39 = @"Using NVRAM dictionary from IODeviceTree since there is no key for ota-uuid in there\n\n";
    }

    else
    {
      v39 = @"NVRAM dictionary from IODeviceTree will be used since dictFileSystem is nil\n\n";
    }

    logfunction("", 1, v39, v24, v25, v26, v27, v28, v44);
    v29 = properties;
    goto LABEL_20;
  }

  logfunction(", 1, @"unable to get registry entry for IODeviceTree:/options\n"", v10, v11, v12, v13, v14, v44);
  return 0;
}

- (id)checkpointNvramInfo:(id)a3
{
  v22 = +[NSMutableDictionary dictionary];
  if (a3)
  {
    v21 = [a3 objectForKey:@"ramrod-stale-file-only-vars"];
  }

  else
  {
    v21 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_nvramMapping;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  v7 = *v25;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      v10 = [(NSDictionary *)self->_nvramMapping objectForKey:v9];
      v11 = v10;
      if (a3)
      {
        v12 = [a3 objectForKey:v10];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = [v21 objectForKey:v11];
          v9 = [v9 stringByAppendingString:@"_s"];
          if (!v13)
          {
            continue;
          }
        }
      }

      else
      {
        v13 = copy_nvram_variable(v10);
        if (!v13)
        {
          continue;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [[NSString alloc] initWithData:v13 encoding:4];

        v13 = v14;
        if (!v14)
        {
          continue;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v22 setObject:v13 forKey:v9];
      }

      else
      {
        logfunction(", 1, @"NVRAM variable %@ has unexpected value '%@'\n"", v15, v16, v17, v18, v19, v11);
      }
    }

    v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_23:
  result = [v22 count];
  if (result)
  {
    return [NSDictionary dictionaryWithDictionary:v22];
  }

  return result;
}

- (BOOL)cleanupCheckpointsNvram:(id *)a3
{
  v20 = 0;
  v19 = 0;
  v11 = [(UMEventCheckpoint *)self cleanupCheckpointsNvramReturnDirty:&v20 error:&v19];
  result = 0;
  if (!v11)
  {
LABEL_5:
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v20 != 1 || msu_sync_nvram(0, v4, v5, v6, v7, v8, v9, v10))
  {
    result = 1;
    goto LABEL_5;
  }

  logfunction(", 1, @"NVRAM sync failed\n"", v13, v14, v15, v16, v17, v19);
  v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
  result = 0;
  v19 = v18;
  if (!a3)
  {
    return result;
  }

LABEL_6:
  *a3 = v19;
  return result;
}

- (BOOL)cleanupCheckpointsNvramReturnDirty:(BOOL *)a3 error:(id *)a4
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  nvramMapping = self->_nvramMapping;
  v8 = [(NSDictionary *)nvramMapping countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(nvramMapping);
        }

        v13 = [(NSDictionary *)self->_nvramMapping objectForKey:*(*(&v23 + 1) + 8 * i)];
        v14 = v13;
        v22 = 0;
        if (!msu_delete_nvram_variable_if_exists(v13, &v22))
        {
          logfunction(", 1, @"clearing NVRAM variable %@ failed\n"", v15, v16, v17, v18, v19, v14);
          v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          result = 0;
          if (a4 && v20)
          {
            result = 0;
            *a4 = v20;
          }

          return result;
        }

        v10 |= v22;
      }

      v9 = [(NSDictionary *)nvramMapping countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    *a3 = v10 & 1;
  }

  return 1;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = +[UMEventCheckpoint sharedInstance];

  return v3;
}

@end