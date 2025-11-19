@interface OSAReport
+ (BOOL)isDeveloperMode;
+ (BOOL)isInLDM;
+ (id)bootArgs;
+ (id)bootProgressRegister;
+ (id)bootSessionUUID;
+ (id)findBundleAtPath:(id)a3 withKeys:(id)a4 bundleURL:(id *)a5;
+ (id)kernelVersionDescription;
+ (id)reduceToTwoSigFigures:(unint64_t)a3;
+ (id)systemIDWithDescription:(BOOL)a3;
+ (unsigned)codeSigningMonitor;
+ (unsigned)executeWithTimeout:(unsigned int)a3 Code:(id)a4;
+ (void)codeSigningMonitor;
- (BOOL)isAppleTV;
- (BOOL)saveWithOptions:(id)a3;
- (OSAReport)init;
- (id)additionalIPSMetadata;
- (id)getSyslogForPids:(id)a3 andOptionalSenders:(id)a4 additionalPredicates:(id)a5;
- (id)incidentID;
@end

@implementation OSAReport

+ (id)bootArgs
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 1023;
  v2 = sysctlbyname("kern.bootargs", v7, &v6, 0, 0);
  v3 = 0;
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (OSAReport)init
{
  v8.receiver = self;
  v8.super_class = OSAReport;
  v2 = [(OSAReport *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    notes = v2->_notes;
    v2->_notes = v3;

    v5 = objc_opt_new();
    logWritingOptions = v2->_logWritingOptions;
    v2->_logWritingOptions = v5;
  }

  return v2;
}

- (id)incidentID
{
  incidentID = self->_incidentID;
  if (!incidentID)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v7 = CFUUIDCreateString(v5, v6);
    v8 = self->_incidentID;
    self->_incidentID = &v7->isa;

    CFRelease(v6);
    incidentID = self->_incidentID;
    v2 = vars8;
  }

  if (incidentID)
  {
    v9 = incidentID;
  }

  else
  {
    v9 = @"<incident x>";
  }

  return v9;
}

+ (unsigned)codeSigningMonitor
{
  v4 = 0;
  v3 = 4;
  if (!sysctlbyname("security.codesigning.monitor", &v4, &v3, 0, 0))
  {
    return v4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSAReport codeSigningMonitor];
  }

  return -1;
}

+ (BOOL)isInLDM
{
  if (!LockdownModeLibraryCore())
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getLockdownModeManagerClass_softClass;
  v11 = getLockdownModeManagerClass_softClass;
  if (!getLockdownModeManagerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getLockdownModeManagerClass_block_invoke;
    v7[3] = &unk_1E7A271B0;
    v7[4] = &v8;
    __getLockdownModeManagerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 shared];
  v5 = [v4 enabled];

  return v5;
}

+ (BOOL)isDeveloperMode
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v6, &v5, 0, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *__error();
    *buf = 67109120;
    v8 = v2;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to read developer mode status: %{darwin.errno}d", buf, 8u);
  }

  result = v6 == 1;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)bootProgressRegister
{
  v2 = __33__OSAReport_bootProgressRegister__block_invoke(a1, @"ApplePMGR");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = __33__OSAReport_bootProgressRegister__block_invoke(0, @"AppleSoCMisc");
  }

  v5 = v4;

  return v5;
}

id __33__OSAReport_bootProgressRegister__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  connect = 0;
  output = 0;
  outputCnt = 1;
  v3 = *MEMORY[0x1E696CD60];
  v4 = IOServiceMatching([v2 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (!MatchingService)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__OSAReport_bootProgressRegister__block_invoke_cold_3();
    }

    goto LABEL_10;
  }

  v6 = MatchingService;
  v7 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  IOObjectRelease(v6);
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__OSAReport_bootProgressRegister__block_invoke_cold_1();
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v8 = IOConnectCallScalarMethod(connect, 0, 0, 0, &output, &outputCnt);
  IOServiceClose(connect);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__OSAReport_bootProgressRegister__block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:output];
LABEL_11:

  return v9;
}

+ (id)bootSessionUUID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0);
  v3 = 0;
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getSyslogForPids:(id)a3 andOptionalSenders:(id)a4 additionalPredicates:(id)a5
{
  v81[5] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v44 = a4;
  v7 = a5;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = +[OSASystemConfiguration sharedInstance];
  if ([v9 appleInternal])
  {
  }

  else
  {
    v10 = +[OSASystemConfiguration sharedInstance];
    v11 = [v10 carrierInstall];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  if (getSyslogForPids_andOptionalSenders_additionalPredicates__onceToken != -1)
  {
    [OSAReport getSyslogForPids:andOptionalSenders:additionalPredicates:];
  }

  if (getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStoreObj && getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStreamObj)
  {
    if (!dispatch_semaphore_wait(getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore, 0))
    {
      context = objc_autoreleasePoolPush();
      v80[0] = &unk_1F241E968;
      v80[1] = &unk_1F241E980;
      v81[0] = @"default";
      v81[1] = @"   info";
      v80[2] = &unk_1F241E998;
      v80[3] = &unk_1F241E9B0;
      v81[2] = @"  debug";
      v81[3] = @"  error";
      v80[4] = &unk_1F241E9C8;
      v81[4] = @"  fault";
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:5];
      v42 = [getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStoreObj localStore];
      *buf = 0;
      v72 = buf;
      v73 = 0x3032000000;
      v74 = __Block_byref_object_copy__5;
      v75 = __Block_byref_object_dispose__5;
      v76 = 0;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_34;
      v70[3] = &unk_1E7A27918;
      v70[4] = buf;
      [v42 prepareWithCompletionHandler:v70];
      v12 = *(v72 + 5);
      if (v12)
      {
        [v12 setFlags:13];
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
        [*(v72 + 5) setTarget:v13];

        v67 = 0;
        v68[0] = &v67;
        v68[1] = 0x3032000000;
        v68[2] = __Block_byref_object_copy__5;
        v68[3] = __Block_byref_object_dispose__5;
        v69 = 0;
        v15 = [MEMORY[0x1E695DF70] array];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v16 = v45;
        v17 = [v16 countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v17)
        {
          v18 = *v64;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v64 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"processID == %@", *(*(&v63 + 1) + 8 * i)];
              [v15 addObject:v20];
            }

            v17 = [v16 countByEnumeratingWithState:&v63 objects:v79 count:16];
          }

          while (v17);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v21 = v44;
        v22 = [v21 countByEnumeratingWithState:&v59 objects:v78 count:16];
        if (v22)
        {
          v23 = *v60;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v60 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"senderImagePath CONTAINS[cd] %@", *(*(&v59 + 1) + 8 * j)];
              [v15 addObject:v25];
            }

            v22 = [v21 countByEnumeratingWithState:&v59 objects:v78 count:16];
          }

          while (v22);
        }

        if (v7)
        {
          [v15 addObjectsFromArray:v7];
        }

        if ([v15 count])
        {
          v26 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v15];
          [*(v72 + 5) setFilterPredicate:v26];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [OSAReport getSyslogForPids:andOptionalSenders:additionalPredicates:];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [OSAReport getSyslogForPids:andOptionalSenders:additionalPredicates:];
        }

        v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_capture_time + 0.5];
        v28 = [v27 dateByAddingTimeInterval:-300.0];
        objc_initWeak(&location, *(v72 + 5));
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x2020000000;
        v57 = 0;
        v54[0] = 0;
        v54[1] = v54;
        v54[2] = 0x3032000000;
        v54[3] = __Block_byref_object_copy__5;
        v54[4] = __Block_byref_object_dispose__5;
        v55 = 0;
        v29 = *(v72 + 5);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_45;
        v47[3] = &unk_1E7A27940;
        v51 = v54;
        v52 = v56;
        v30 = v28;
        v48 = v30;
        v49 = v41;
        v8 = v8;
        v50 = v8;
        objc_copyWeak(&v53, &location);
        [v29 setEventHandler:v47];
        v31 = *(v72 + 5);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_2;
        v46[3] = &unk_1E7A27968;
        v46[4] = &v67;
        [v31 setInvalidationHandler:v46];
        Current = CFAbsoluteTimeGetCurrent();
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [OSAReport getSyslogForPids:andOptionalSenders:additionalPredicates:];
        }

        [*(v72 + 5) activateStreamFromDate:v27];
        v33 = getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore;
        v34 = dispatch_time(0, 120000000000);
        if (dispatch_semaphore_wait(v33, v34))
        {

          v8 = 0;
        }

        else
        {
          v35 = CFAbsoluteTimeGetCurrent();
          v36 = MEMORY[0x1E69E9C10];
          v37 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            -[OSAReport getSyslogForPids:andOptionalSenders:additionalPredicates:].cold.5(v68, v77, [v8 count], v35 - Current);
          }

          if ([v8 count])
          {
            [v8 addObject:@"Timestamp                         Type Thread  Act Process[pid] (Sender)"];
          }

          dispatch_semaphore_signal(getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore);
        }

        [*(v72 + 5) invalidate];
        objc_destroyWeak(&v53);

        _Block_object_dispose(v54, 8);
        _Block_object_dispose(v56, 8);
        objc_destroyWeak(&location);

        _Block_object_dispose(&v67, 8);
      }

      _Block_object_dispose(buf, 8);

      objc_autoreleasePoolPop(context);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "OSLogEvent unsupported in this environment", buf, 2u);
  }

LABEL_45:

  v38 = *MEMORY[0x1E69E9840];

  return v8;
}

Class __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore;
  getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore = v0;

  getSyslogForPids_andOptionalSenders_additionalPredicates__loggingSupport_dylib = dlopen("/System/Library/PrivateFrameworks/LoggingSupport.framework/LoggingSupport", 4);
  getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStoreObj = objc_getClass("OSLogEventStore");
  result = objc_getClass("OSLogEventStream");
  getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStreamObj = result;
  return result;
}

void __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_34(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = getSyslogForPids_andOptionalSenders_additionalPredicates__OSLogEventStreamObj;
    v6 = a2;
    v7 = [[v5 alloc] initWithSource:v6];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_45(uint64_t a1, void *a2)
{
  v33 = a2;
  if ([v33 type] == 1024)
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [v33 bootUUID];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    if (v7 <= 126)
    {
      v8 = *(a1 + 32);
      v9 = [v33 date];
      if ([v8 compare:v9] == -1)
      {
        v10 = *(*(*(a1 + 56) + 8) + 40);
        v11 = [v33 bootUUID];
        LODWORD(v10) = [v10 isEqual:v11];

        if (v10)
        {
          v12 = *(a1 + 40);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v33, "logType")}];
          WeakRetained = [v12 objectForKeyedSubscript:v13];

          v15 = [v33 composedMessage];
          v32 = [v15 length];
          if (v32 < 1025)
          {
            goto LABEL_16;
          }

          for (i = [v15 substringToIndex:1024];
          {
            v17 = i;

            v15 = v17;
LABEL_16:
            v18 = [v15 rangeOfString:@"\n"];
            if (v18)
            {
              break;
            }

            [v15 substringFromIndex:1];
          }

          v19 = v18;
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v15 substringToIndex:v18];

            v15 = v20;
          }

          v31 = MEMORY[0x1E696AEC0];
          v21 = [v33 date];
          v22 = OSANSDateFormat(2u, v21);
          v23 = [v33 threadIdentifier];
          v24 = [v33 activityIdentifier];
          v25 = [v33 process];
          v26 = [v33 processIdentifier];
          v27 = [v33 sender];
          v28 = [v15 length];
          v29 = @"...";
          if (v28 == v32)
          {
            v29 = &stru_1F2411100;
          }

          v30 = [v31 stringWithFormat:@"%@ %@ 0x%05llx 0x%llx %@[%d] (%@): %@%@", v22, WeakRetained, v23, v24, v25, v26, v27, v15, v29];

          if ([v30 length])
          {
            [*(a1 + 48) addObject:v30];
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained invalidate];
LABEL_11:
  }
}

intptr_t __70__OSAReport_getSyslogForPids_andOptionalSenders_additionalPredicates___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%lu>", a2];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  if ((a2 - 1) > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(&off_1E7A27A90 + a2 - 1);
  }

  *(v7 + 40) = v9;

  v10 = getSyslogForPids_andOptionalSenders_additionalPredicates__log_semaphore;

  return dispatch_semaphore_signal(v10);
}

+ (unsigned)executeWithTimeout:(unsigned int)a3 Code:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_global_queue(0, 0);
  v7 = dispatch_group_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__OSAReport_executeWithTimeout_Code___block_invoke;
  block[3] = &unk_1E7A27990;
  v12 = v5;
  v8 = v5;
  dispatch_group_async(v7, v6, block);
  v9 = dispatch_time(0, 1000000 * a3);
  LOBYTE(a3) = dispatch_group_wait(v7, v9) != 0;

  return a3;
}

- (BOOL)isAppleTV
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 128;
  if (sysctlbyname("hw.machine", v8, &v7, 0, 0))
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v2)
    {
      *v6 = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to run sysctl hw.machine", v6, 2u);
      result = 0;
    }
  }

  else
  {
    result = v8[0] == 1819308097 && *(v8 + 3) == 1448371564;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)systemIDWithDescription:(BOOL)a3
{
  v3 = a3;
  v4 = +[OSASystemConfiguration sharedInstance];
  v5 = [v4 appleInternal];

  if (v5)
  {
    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 != CFStringGetTypeID())
      {
        CFRelease(v7);
        v7 = @"ERROR UDID was not a string";
      }
    }

    else
    {
      v7 = @"UDID was null";
    }

    if (v3)
    {
      v10 = @"UDID:                %@\n";
    }

    else
    {
      v10 = @"%@";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v7];
    CFRelease(v7);
  }

  else
  {
    v9 = &stru_1F2411100;
  }

  return v9;
}

+ (id)kernelVersionDescription
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  v6 = 1023;
  v2 = sysctlbyname("kern.version", v7, &v6, 0, 0);
  if (v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown (error %d)>", v2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  }
  v3 = ;
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)additionalIPSMetadata
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"incident_id";
  v2 = [(OSAReport *)self incidentID];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)saveWithOptions:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(OSAReport *)self isActionable])
  {
    if ([(NSMutableArray *)self->_notes count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = self->_notes;
      v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v26)
      {
        v27 = *v34;
        v28 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v34 != v27)
            {
              objc_enumerationMutation(v25);
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(*(&v33 + 1) + 8 * i);
              *buf = 138412290;
              v42 = v30;
              _os_log_impl(&dword_1AE4F7000, v28, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }

          v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v26);
      }
    }

    else
    {
      v12 = 0;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "report not saved because it is non-actionable (ie: extension hangs or internal-only)", buf, 2u);
    }

    v12 = 0;
    goto LABEL_27;
  }

  [(NSMutableDictionary *)self->_logWritingOptions addEntriesFromDictionary:v4];
  v5 = [(OSAReport *)self reportNamePrefix];
  [(NSMutableDictionary *)self->_logWritingOptions setObject:v5 forKeyedSubscript:@"override-filePrefix"];

  v6 = [(OSAReport *)self problemType];
  v7 = [(OSAReport *)self additionalIPSMetadata];
  logWritingOptions = self->_logWritingOptions;
  v37[4] = self;
  v38 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __29__OSAReport_saveWithOptions___block_invoke;
  v37[3] = &unk_1E7A279E0;
  v9 = [OSALog createForSubmission:v6 metadata:v7 options:logWritingOptions error:&v38 writing:v37];
  v10 = v38;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v9 filepath];
  logfile = self->_logfile;
  self->_logfile = v13;

  v15 = [v9 oldFilePath];
  oldLogFile = self->_oldLogFile;
  self->_oldLogFile = v15;

  v17 = [v4 objectForKeyedSubscript:@"override-filePath"];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = [(OSAReport *)self appleCareDetails];
    if (v19)
    {
      capture_time = self->_capture_time;
      v21 = [(OSAReport *)self problemType];
      v40[0] = v21;
      v22 = [(OSAReport *)self incidentID];
      v40[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v24 = [v23 arrayByAddingObjectsFromArray:v19];
      logForAppleCare(v24, capture_time);
    }
  }

LABEL_27:
  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

void __29__OSAReport_saveWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__OSAReport_saveWithOptions___block_invoke_2;
  v6[3] = &unk_1E7A279B8;
  v7 = v3;
  v5 = v3;
  [v4 streamContentAtLevel:1 withBlock:v6];
}

void __44__OSAReport_streamContentAtLevel_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && !*(*(*(a1 + 48) + 8) + 24))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__5;
    v26 = __Block_byref_object_dispose__5;
    v27 = 0;
    if ([*(a1 + 32) count])
    {
      v4 = [MEMORY[0x1E695DF88] data];
      v5 = [v3 objectForKey:&unk_1F241E9E0];
      v6 = [v5 BOOLValue];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__OSAReport_streamContentAtLevel_withBlock___block_invoke_117;
      v15[3] = &unk_1E7A27A08;
      v16 = *(a1 + 32);
      v7 = v4;
      v8 = *(a1 + 56);
      v17 = v7;
      v18 = v8;
      v19 = &v22;
      v20 = v6;
      [v3 enumerateKeysAndObjectsUsingBlock:v15];
      v9 = v17;
      v10 = v7;

      v11 = v10;
    }

    else
    {
      v12 = (v23 + 5);
      obj = v23[5];
      v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:&obj];
      objc_storeStrong(v12, obj);
      v11 = [v10 subdataWithRange:{0, objc_msgSend(v10, "length") - 2}];
      [*(a1 + 32) section_push:@"\n}\n"];
      *(*(*(a1 + 56) + 8) + 24) = [v3 count] != 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))(*(a1 + 40), v11, v13, v14);
    _Block_object_dispose(&v22, 8);
  }
}

void __44__OSAReport_streamContentAtLevel_withBlock___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:&unk_1F241E9F8])
  {
    if (![*(a1 + 32) count])
    {
      __44__OSAReport_streamContentAtLevel_withBlock___block_invoke_117_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = [@"\n" stringByPaddingToLength:2 * objc_msgSend(*(a1 + 32) withString:"count") - 1 startingAtIndex:{@" ", 0}];
    v9 = 1;
    v10 = [v8 dataUsingEncoding:4 allowLossyConversion:1];
    [v7 appendData:v10];

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) section_pop];
    v13 = [v12 dataUsingEncoding:4 allowLossyConversion:1];
    [v11 appendData:v13];

    v14 = a1 + 48;
    goto LABEL_12;
  }

  if (([v5 isEqual:&unk_1F241E9E0] & 1) == 0)
  {
    v14 = a1 + 48;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x1E695DEF0] dataWithBytes:" length:{", 1}];
      [v15 appendData:v16];
    }

    v17 = *(a1 + 40);
    v18 = [@"\n" stringByPaddingToLength:(2 * objc_msgSend(*(a1 + 32) withString:"count")) | 1 startingAtIndex:{@" ", 0}];
    v19 = [v18 dataUsingEncoding:4 allowLossyConversion:1];
    [v17 appendData:v19];

    if ([v5 isEqual:&unk_1F241EA10])
    {
      v20 = *(a1 + 40);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : {", v6];
      v22 = [v21 dataUsingEncoding:4 allowLossyConversion:1];
      [v20 appendData:v22];

      v23 = *(a1 + 32);
      v24 = @"}";
    }

    else
    {
      if (![v5 isEqual:&unk_1F241EA28])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __44__OSAReport_streamContentAtLevel_withBlock___block_invoke_117_cold_1();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = *(a1 + 40);
          v29 = MEMORY[0x1E696AEC0];
          v30 = v6;
          if (v30)
          {
            v31 = objc_autoreleasePoolPush();
            v32 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v30 options:4 error:0];
            if (v32)
            {
              v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v32 encoding:4];
              v34 = [v33 substringWithRange:{1, objc_msgSend(v33, "length") - 2}];
            }

            else
            {
              v34 = 0;
            }

            objc_autoreleasePoolPop(v31);
          }

          else
          {
            v34 = 0;
          }

          v45 = [v29 stringWithFormat:@"%@ : %@", v5, v34];
          v9 = 1;
          v46 = [v45 dataUsingEncoding:4 allowLossyConversion:1];
          [v28 appendData:v46];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v36 = *(a1 + 40);
          if (isKindOfClass)
          {
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@", v5, v6];
            v9 = 1;
            v38 = [v37 dataUsingEncoding:4 allowLossyConversion:1];
            [v36 appendData:v38];
          }

          else
          {
            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : ", v5];
            v9 = 1;
            v40 = [v39 dataUsingEncoding:4 allowLossyConversion:1];
            [v36 appendData:v40];

            v41 = *(a1 + 40);
            v42 = *(a1 + 64);
            v43 = *(*(a1 + 56) + 8);
            obj = *(v43 + 40);
            v44 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:v42 error:&obj];
            objc_storeStrong((v43 + 40), obj);
            [v41 appendData:v44];
          }
        }

        goto LABEL_12;
      }

      v25 = *(a1 + 40);
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : [", v6];
      v27 = [v26 dataUsingEncoding:4 allowLossyConversion:1];
      [v25 appendData:v27];

      v23 = *(a1 + 32);
      v24 = @"]";
    }

    [v23 section_push:v24];
    v9 = 0;
LABEL_12:
    *(*(*v14 + 8) + 24) = v9;
  }
}

+ (id)findBundleAtPath:(id)a3 withKeys:(id)a4 bundleURL:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  if (findBundleAtPath_withKeys_bundleURL__onceToken != -1)
  {
    +[OSAReport findBundleAtPath:withKeys:bundleURL:];
  }

  if (v22[5])
  {
    v11 = findBundleAtPath_withKeys_bundleURL__bundle_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__OSAReport_findBundleAtPath_withKeys_bundleURL___block_invoke_2;
    block[3] = &unk_1E7A27A58;
    v19 = &v21;
    v18 = v8;
    v20 = &v27;
    dispatch_sync(v11, block);
    v12 = [v22[5] path];
    [v9 setString:v12];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v34 = v7;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no URL for '%{private}@'", buf, 0xCu);
  }

  _Block_object_dispose(&v21, 8);

  objc_autoreleasePoolPop(v10);
  if (a5)
  {
    *a5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  }

  if ([v28[5] count])
  {
    v13 = v28[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v27, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __49__OSAReport_findBundleAtPath_withKeys_bundleURL___block_invoke()
{
  findBundleAtPath_withKeys_bundleURL__bundle_queue = dispatch_queue_create("com.apple.osanalytics.bundlereader.serialqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __49__OSAReport_findBundleAtPath_withKeys_bundleURL___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  if (v4)
  {
    v5 = v4;
    v6 = CFBundleCopyBundleURL(v4);
    if (v6 && ([*(*(*(a1 + 40) + 8) + 40) isEqual:v6] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412546;
        v37 = v7;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFBundle URL refined %@ to %@", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = CFBundleGetValueForInfoDictionaryKey(v5, v13);
          if (v14)
          {
            [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    CFRelease(v5);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithURL:*(*(*(a1 + 40) + 8) + 40)];
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "*** found alternate bundle", buf, 2u);
      }

      v15 = [v6 bundleURL];
      if (v15 && ([*(*(*(a1 + 40) + 8) + 40) isEqual:v15] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412546;
          v37 = v16;
          v38 = 2112;
          v39 = v15;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "NSBundle URL refined %@ to %@", buf, 0x16u);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v15);
      }

      v17 = [v6 infoDictionary];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = *(a1 + 32);
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v26 + 1) + 8 * j);
            v24 = [v17 objectForKeyedSubscript:{v23, v26}];
            if (v24)
            {
              [*(*(*(a1 + 48) + 8) + 40) setObject:v24 forKeyedSubscript:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v20);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __49__OSAReport_findBundleAtPath_withKeys_bundleURL___block_invoke_2_cold_1();
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

+ (id)reduceToTwoSigFigures:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = log10(a3);
    if (v4 + 1 >= 3)
    {
      v5 = __exp10((v4 - 1));
      v3 = v3 / v5 * v5;
    }
  }

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithUnsignedLongLong:v3];
}

- (void)getSyslogForPids:andOptionalSenders:additionalPredicates:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getSyslogForPids:andOptionalSenders:additionalPredicates:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getSyslogForPids:(uint64_t)a3 andOptionalSenders:(double)a4 additionalPredicates:.cold.5(uint64_t a1, uint8_t *buf, uint64_t a3, double a4)
{
  v4 = *(*a1 + 40);
  *buf = 134218498;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  *(buf + 11) = 2112;
  *(buf + 3) = v4;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "OSLogEventStream found %lu lines after %.1f secs (invalidation: %@)", buf, 0x20u);
}

+ (void)codeSigningMonitor
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)saveWithOptions:(void *)a1 .cold.1(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error while writing report payload: %{public}@", buf, 0xCu);
}

void __33__OSAReport_bootProgressRegister__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __33__OSAReport_bootProgressRegister__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end