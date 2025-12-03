@interface PerformanceLoggingDiagnosticExtensionExtension
- (BOOL)setEPLKeysForParameters:(id)parameters error:(id *)error domain:(__CFString *)domain;
- (id)attachmentsForParameters:(id)parameters;
- (id)keyWithPrefix:(id)prefix;
- (id)linkRMEAndGetEPLProfilePath;
- (id)sysdiagnoseParamsFromDEParams:(id)params;
- (id)takeSysdiagnose:(id)sysdiagnose error:(id *)error;
- (void)enableReportMemoryException:(BOOL)exception;
@end

@implementation PerformanceLoggingDiagnosticExtensionExtension

- (id)keyWithPrefix:(id)prefix
{
  if (prefix)
  {
    prefix = [NSString stringWithFormat:@"%@.%@", @"HTEPL", prefix];
  }

  else
  {
    prefix = 0;
  }

  return prefix;
}

- (id)sysdiagnoseParamsFromDEParams:(id)params
{
  paramsCopy = params;
  v4 = +[NSMutableDictionary dictionary];
  if (paramsCopy)
  {
    v5 = [paramsCopy objectForKeyedSubscript:@"shouldCreateTarBall"];

    if (v5)
    {
      v6 = [paramsCopy objectForKeyedSubscript:@"shouldCreateTarBall"];
      [v4 setObject:v6 forKeyedSubscript:@"shouldCreateTarBall"];
    }

    else
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"shouldCreateTarBall"];
    }

    v9 = [paramsCopy objectForKeyedSubscript:@"forceDiagnostic"];

    if (v9)
    {
      v10 = [paramsCopy objectForKeyedSubscript:@"forceDiagnostic"];
      [v4 setObject:v10 forKeyedSubscript:@"forceDiagnostic"];
    }

    else
    {
      [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"forceDiagnostic"];
    }

    v25[0] = @"HangTracerTailspins";
    v23 = @"maxSizeMB";
    v11 = [NSNumber numberWithUnsignedInteger:55];
    v24 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v12;
    v25[1] = @"ForceResetTailspins";
    v21 = @"maxSizeMB";
    v13 = [NSNumber numberWithUnsignedInteger:175];
    v22 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v26[1] = v14;
    v25[2] = @"crashes_and_spins/MemoryExceptions";
    v19 = @"maxSizeMB";
    v15 = [NSNumber numberWithUnsignedInteger:50];
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v26[2] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v4 setObject:v17 forKeyedSubscript:@"capOverride"];

    v8 = v4;
  }

  else
  {
    v7 = shared_pl_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100008B04();
    }

    v8 = 0;
  }

  return v8;
}

- (id)takeSysdiagnose:(id)sysdiagnose error:(id *)error
{
  sysdiagnoseCopy = sysdiagnose;
  v6 = shared_pl_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to take sysdiagnose", buf, 2u);
  }

  if (sysdiagnoseCopy)
  {
    v14 = 0;
    v7 = [Libsysdiagnose sysdiagnoseWithMetadata:sysdiagnoseCopy withError:&v14];
    v8 = v14;
    v9 = v8;
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    v11 = shared_pl_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Returned sysdiagnose path: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v12 = shared_pl_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100008B38();
  }

  if (error)
  {
    v9 = [NSDictionary dictionaryWithObject:@"sysdiagnose parameters dictionary is nil" forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"EPLErrorDomain" code:1 userInfo:v9];
    *error = v7 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)linkRMEAndGetEPLProfilePath
{
  if (qword_10001A1A0 != -1)
  {
    sub_100008B6C();
  }

  if (qword_10001A198)
  {
    getEPLProfilePath = [qword_10001A198 getEPLProfilePath];
    v3 = shared_pl_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Successfully resolved EPLProfilePath dynamically", v5, 2u);
    }
  }

  else
  {
    v3 = shared_pl_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008B80();
    }

    getEPLProfilePath = 0;
  }

  return getEPLProfilePath;
}

- (void)enableReportMemoryException:(BOOL)exception
{
  exceptionCopy = exception;
  linkRMEAndGetEPLProfilePath = [(PerformanceLoggingDiagnosticExtensionExtension *)self linkRMEAndGetEPLProfilePath];
  v5 = linkRMEAndGetEPLProfilePath;
  if (linkRMEAndGetEPLProfilePath)
  {
    if (exceptionCopy)
    {
      v6 = objc_alloc_init(NSDateComponents);
      [v6 setDay:2];
      v7 = +[NSCalendar currentCalendar];
      v8 = +[NSDate date];
      localizedDescription = [v7 dateByAddingComponents:v6 toDate:v8 options:0];

      v38[0] = @"FullDiagLimit";
      v38[1] = @"LiteDiagLimit";
      v39[0] = &off_100015D00;
      v39[1] = &off_100015D18;
      v38[2] = @"PerProcessLimit";
      v38[3] = @"ExpirationDate";
      v39[2] = &off_100015D30;
      v39[3] = localizedDescription;
      v10 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
      v31 = 0;
      v11 = [NSPropertyListSerialization dataWithPropertyList:v10 format:100 options:0 error:&v31];
      v12 = v31;
      if (v11)
      {
        v13 = open([v5 UTF8String], 1538, 420);
        if (v13 == -1)
        {
          v17 = shared_pl_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100008D9C(v5, v17);
          }
        }

        else
        {
          v14 = v13;
          v28 = v12;
          v36 = NSFileProtectionKey;
          v37 = NSFileProtectionNone;
          v15 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v16 = +[NSFileManager defaultManager];
          v30 = 0;
          v27 = v15;
          LODWORD(v15) = [v16 setAttributes:v15 ofItemAtPath:v5 error:&v30];
          v17 = v30;

          if (v15)
          {
            v18 = write(v14, [v11 bytes], objc_msgSend(v11, "length"));
            v19 = shared_pl_log_handle();
            v20 = v19;
            if (v18 == -1)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_100008D10();
              }
            }

            else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v33 = v5;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Successfully wrote ReportMemoryException plist at %@", buf, 0xCu);
            }
          }

          else
          {
            v20 = shared_pl_log_handle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100008C74(v5, v17);
            }
          }

          close(v14);
          v12 = v28;
        }
      }

      else
      {
        v17 = shared_pl_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100008E14(v5, v12);
        }
      }
    }

    else
    {
      v21 = truncate([linkRMEAndGetEPLProfilePath UTF8String], 0);
      v22 = shared_pl_log_handle();
      v23 = v22;
      if (v21 == -1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100008BE8();
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Successfully truncated ReportMemoryException plist at %@", buf, 0xCu);
      }

      v24 = +[NSFileManager defaultManager];
      v29 = 0;
      v25 = [v24 removeItemAtPath:v5 error:&v29];
      v6 = v29;

      v7 = shared_pl_log_handle();
      v26 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v25)
      {
        if (v26)
        {
          *buf = 138412290;
          v33 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully deleted ReportMemoryException plist at %@", buf, 0xCu);
        }

        goto LABEL_32;
      }

      if (!v26)
      {
LABEL_32:

        goto LABEL_33;
      }

      localizedDescription = [v6 localizedDescription];
      *buf = 138412546;
      v33 = v5;
      v34 = 2112;
      v35 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Failed to delete ReportMemoryException plist at %@ with error %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  v6 = shared_pl_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100008EB0();
  }

LABEL_33:
}

- (BOOL)setEPLKeysForParameters:(id)parameters error:(id *)error domain:(__CFString *)domain
{
  parametersCopy = parameters;
  v9 = parametersCopy;
  if (parametersCopy)
  {
    v10 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
    v11 = v10;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        if (configureTailspinForEPL(1))
        {
          persistAndUnredactLogs(1);
          [(PerformanceLoggingDiagnosticExtensionExtension *)self enableReportMemoryException:1];
          v12 = +[NSDate date];
          [v12 timeIntervalSinceReferenceDate];
          [PLPreferences setDouble:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLTimeoutTimestampSec"] key:domain domain:v13 + 172800.0];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLEnabled"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableAppActivationLogging"] domain:@"com.apple.hangtracer"];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnabled"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableTailspin"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableSignpostMonitoring"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableWorkflowResponsiveness"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerCollectOSSignpostsDeferred"] domain:domain];
          [PLPreferences setBool:0 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerShouldUploadToDiagPipe"] domain:domain];
          [PLPreferences setString:@"compressed" key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerKeepTailspinsWithFormat"] domain:domain];
          [PLPreferences setInteger:55 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerSavedTailspinsMaxMB"] domain:domain];

LABEL_11:
          if (error)
          {
            *error = 0;
          }

          v14 = 1;
          goto LABEL_21;
        }

        if (!error)
        {
          goto LABEL_20;
        }

        [NSString stringWithFormat:@"Failed to apply config object, tailspin enablement state will not change (enabled = %{BOOL}d)", 1];
      }

      else
      {
        persistAndUnredactLogs(0);
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLEnabled"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableAppActivationLogging"] domain:@"com.apple.hangtracer"];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnabled"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableTailspin"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableSignpostMonitoring"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableWorkflowResponsiveness"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerCollectOSSignpostsDeferred"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerKeepTailspinsWithFormat"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerSavedTailspinsMaxMB"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerShouldUploadToDiagPipe"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLTimeoutTimestampSec"] domain:domain];
        if (configureTailspinForEPL(0))
        {
          goto LABEL_11;
        }

        if (!error)
        {
          goto LABEL_20;
        }

        [NSString stringWithFormat:@"Failed to apply config object, tailspin enablement state will not change (enabled = %{BOOL}d)", 0];
      }
      v16 = ;
      v17 = [NSDictionary dictionaryWithObject:v16 forKey:NSLocalizedDescriptionKey];
      *error = [NSError errorWithDomain:@"EPLErrorDomain" code:3 userInfo:v17];
    }

    else if (error)
    {
      v15 = [NSDictionary dictionaryWithObject:@"Enhanced Performance Logging key not found in parameters" forKey:NSLocalizedDescriptionKey];
      *error = [NSError errorWithDomain:@"EPLErrorDomain" code:2 userInfo:v15];
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    v11 = [NSDictionary dictionaryWithObject:@"Parameters dictionary is nil" forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"EPLErrorDomain" code:1 userInfo:v11];
    *error = v14 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (qword_10001A1A8 != -1)
  {
    sub_100008EE4();
  }

  [qword_10001A188 lock];
  if (byte_10001A1B0)
  {
    v5 = shared_pl_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100009018();
    }

    [qword_10001A188 unlock];
    v6 = &__NSArray0__struct;
  }

  else
  {
    byte_10001A1B0 = 1;
    [qword_10001A188 unlock];
    v21 = 0;
    [(PerformanceLoggingDiagnosticExtensionExtension *)self setEPLKeysForParameters:parametersCopy error:&v21];
    v7 = v21;
    v8 = shared_pl_log_handle();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100008EF8(v7);
      }

      [qword_10001A188 lock];
      byte_10001A1B0 = 0;
      [qword_10001A188 unlock];
      v6 = &__NSArray0__struct;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Posting notification regarding EPL state change: %@", buf, 0xCu);
      }

      notify_post(EPL_STATE_CHANGED_NOTIFICATION);
      v11 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
      if (v11)
      {
        v12 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
        bOOLValue = [v12 BOOLValue];

        if (bOOLValue)
        {
          v11 = 0;
        }

        else
        {
          v14 = [(PerformanceLoggingDiagnosticExtensionExtension *)self sysdiagnoseParamsFromDEParams:parametersCopy];
          v20 = 0;
          v11 = [(PerformanceLoggingDiagnosticExtensionExtension *)self takeSysdiagnose:v14 error:&v20];
          v15 = v20;
          if (v15)
          {
            v16 = shared_pl_log_handle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100008F88(v15);
            }
          }

          [(PerformanceLoggingDiagnosticExtensionExtension *)self enableReportMemoryException:0];
          cleanupDiagnosticLogsDirectory(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/");
        }
      }

      v6 = +[NSMutableArray array];
      if (v11)
      {
        v17 = shared_pl_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Constructing DEAttachmentItem for sysdiagnose file", buf, 2u);
        }

        v18 = [DEAttachmentItem attachmentWithPath:v11];
        [v18 setDeleteOnAttach:&__kCFBooleanTrue];
        [v6 addObject:v18];
      }

      [qword_10001A188 lock];
      byte_10001A1B0 = 0;
      [qword_10001A188 unlock];
    }
  }

  return v6;
}

@end