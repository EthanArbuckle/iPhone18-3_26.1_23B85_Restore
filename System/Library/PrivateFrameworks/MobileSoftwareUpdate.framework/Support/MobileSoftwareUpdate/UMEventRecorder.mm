@interface UMEventRecorder
+ (BOOL)diagnosticsAndUsageAllowed:(id)allowed;
+ (id)recorderWithOptions:(id)options;
+ (id)submitQueue;
+ (int64_t)eventForEventString:(id)string;
- (BOOL)_installInProgressAfterApply;
- (BOOL)_setNvramValue:(id)value forKey:(id)key;
- (BOOL)_setPermissionsOnURL:(id)l;
- (BOOL)_syncNvram;
- (BOOL)_updateRetryInformationForEvents:(id)events;
- (UMEventRecorder)initWithOptions:(id)options;
- (double)_timeIntervalUntilRetry:(id)retry;
- (id)_copyEscapeStringsForEventData:(id)data;
- (id)_currentEAPFSMode;
- (id)_currentOSVersion;
- (id)_defaults;
- (id)_eventDirectory;
- (id)_eventDirectoryWithMountPoint:(id)point;
- (id)_getDiskUsage;
- (id)_getGestaltDiskUsageKey:(__CFString *)key inDictionary:(id)dictionary;
- (id)_getGestaltString:(__CFString *)string default:(id)default;
- (id)_getGestaltValue:(__CFString *)value;
- (id)_installInfoFile;
- (id)_legacyEventDirectory;
- (id)_legacyInstallInfoFile;
- (id)_legacySupportDirectory;
- (id)_loadUnsubmittedEvents;
- (id)_nvramValue:(id)value;
- (id)_serverURL;
- (id)_submissionBodyForEvents:(id)events;
- (id)_supportDirectory;
- (id)_supportDirectoryWithMountPoint:(id)point;
- (int64_t)_uptime;
- (unint64_t)numUnsubmittedEvents;
- (void)_cleanupInstallState;
- (void)_recordEvent:(id)event getPowerLog:(BOOL)log information:(id)information callback:(id)callback;
- (void)_recordPowerLog:(id)log information:(id)information;
- (void)_removeEvents:(id)events;
- (void)_saveEvent:(id)event;
- (void)_scheduleEventSubmissionRetry;
- (void)_submitEvents:(id)events toURL:(id)l withOptions:(id)options completionHandler:(id)handler;
- (void)_submitIndividualEvents:(id)events toURL:(id)l withOptions:(id)options completionHandler:(id)handler;
- (void)_writeInfoFile;
- (void)addPersistentAttribute:(id)attribute forKey:(id)key;
- (void)addPersistentAttributes:(id)attributes;
- (void)commitMetadataToPersistentStorage:(id)storage;
- (void)dealloc;
- (void)recordEvent:(id)event information:(id)information installIsComplete:(BOOL)complete;
- (void)recordPostUpdateEvent:(id)event additionalInfo:(id)info withCallback:(id)callback;
- (void)removePersistentAttributeKey:(id)key;
- (void)startRecordingInstall:(id)install;
- (void)submitEventsInBackground:(BOOL)background withOptions:(id)options;
- (void)submitEventsWithUpdateOptions:(id)options;
@end

@implementation UMEventRecorder

+ (id)submitQueue
{
  if (submitQueue_once != -1)
  {
    +[UMEventRecorder submitQueue];
  }

  return submitQueue_submit_queue;
}

void __30__UMEventRecorder_submitQueue__block_invoke(id a1)
{
  _log(a1, @"initializing new submission queue", v1, v2, v3, v4, v5, v6, vars0);
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  submitQueue_submit_queue = dispatch_queue_create("com.apple.UpdateMetrics.UMEventRecorderSubmit", v7);
}

+ (id)recorderWithOptions:(id)options
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __39__UMEventRecorder_recorderWithOptions___block_invoke;
  block[3] = &__block_descriptor_40_e8_32o_e5_v8__0l;
  block[4] = options;
  if (recorderWithOptions__once != -1)
  {
    dispatch_once(&recorderWithOptions__once, block);
  }

  return recorderWithOptions__recorder;
}

UMEventRecorder *__39__UMEventRecorder_recorderWithOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _log(a1, @"initializing new event recorder with options: %@", a3, a4, a5, a6, a7, a8, *(a1 + 32));
  result = [[UMEventRecorder alloc] initWithOptions:*(a1 + 32)];
  recorderWithOptions__recorder = result;
  return result;
}

+ (BOOL)diagnosticsAndUsageAllowed:(id)allowed
{
  if (allowed)
  {
    allowedCopy = allowed;
  }

  else
  {
    allowedCopy = @"/private/var";
  }

  v4 = [NSDictionary dictionaryWithContentsOfFile:[(__CFString *)allowedCopy stringByAppendingPathComponent:@"/mobile/Library/UserConfigurationProfiles/EffectiveUserSettings.plist"]];
  if (!v4)
  {
    v4 = [NSDictionary dictionaryWithContentsOfFile:[(__CFString *)allowedCopy stringByAppendingPathComponent:@"/mobile/Library/ConfigurationProfiles/EffectiveUserSettings.plist"]];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSDictionary *)v4 objectForKey:@"restrictedBool"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [v5 objectForKey:@"allowDiagnosticSubmission"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = [v6 objectForKey:@"value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v7 BOOLValue];
}

- (UMEventRecorder)initWithOptions:(id)options
{
  v65.receiver = self;
  v65.super_class = UMEventRecorder;
  v4 = [(UMEventRecorder *)&v65 init];
  v5 = v4;
  if (v4)
  {
    [(UMEventRecorder *)v4 setInstallType:@"ota"];
    -[UMEventRecorder setSystemMountPoint:](v5, "setSystemMountPoint:", [options objectForKey:@"SystemPartitionMountPath"]);
    -[UMEventRecorder setDataMountPoint:](v5, "setDataMountPoint:", [options objectForKey:@"DataPartitionMountPath"]);
    -[UMEventRecorder setUpdateMountPoint:](v5, "setUpdateMountPoint:", [options objectForKey:@"UpdatePartitionMountPath"]);
    -[UMEventRecorder setNvramPath:](v5, "setNvramPath:", [options objectForKey:@"NVRAMShadowPath"]);
    -[UMEventRecorder setEventAttributes:](v5, "setEventAttributes:", [options objectForKeyedSubscript:@"AdditionalEventAttributes"]);
    v5->_nvramDict = [UMEventCheckpoint lastSyncedNvram:[(UMEventRecorder *)v5 nvramPath]];
    v6 = [NSDictionary dictionaryWithContentsOfURL:[(UMEventRecorder *)v5 _installInfoFile]];
    if (v6)
    {
      v7 = v6;
      [(UMEventRecorder *)v5 setUuid:[(NSDictionary *)v6 objectForKey:@"UUID"]];
      [(UMEventRecorder *)v5 setBaseServerURL:[(NSDictionary *)v7 objectForKey:@"Submission URL"]];
      v5->_targetOSVersion = [-[NSDictionary objectForKey:](v7 objectForKey:{@"Target OS Version", "copy"}];
      v5->_context = [-[NSDictionary objectForKey:](v7 objectForKey:{@"Context", "copy"}];
      v5->_attributeDict = [-[NSDictionary objectForKey:](v7 objectForKey:{@"Persistent Attributes", "mutableCopy"}];
    }

    else
    {
      [(UMEventRecorder *)v5 setUuid:[(UMEventRecorder *)v5 _nvramValue:@"ota-uuid"]];
      [(UMEventRecorder *)v5 setBaseServerURL:[(UMEventRecorder *)v5 _nvramValue:@"ota-submission-url"]];
      v5->_targetOSVersion = [-[UMEventRecorder _nvramValue:](v5 _nvramValue:{@"ota-os-version", "copy"}];
      v5->_context = [-[UMEventRecorder _nvramValue:](v5 _nvramValue:{@"ota-context", "copy"}];
    }

    v5->_droppedEvents = objc_alloc_init(NSMutableArray);
    v5->_submitter = objc_alloc_init(UMEventSubmitter);
    v5->_callbackQueue = dispatch_queue_create("com.apple.UpdateMetrics.UMEventRecorderCallback", 0);
    systemMountPoint = [(UMEventRecorder *)v5 systemMountPoint];
    _log(systemMountPoint, @"%@: initializing event recorder with systemMountPoint: %@", v9, v10, v11, v12, v13, v14, v5);
    dataMountPoint = [(UMEventRecorder *)v5 dataMountPoint];
    _log(dataMountPoint, @"%@: initializing event recorder with dataMountPoint: %@", v16, v17, v18, v19, v20, v21, v5);
    updateMountPoint = [(UMEventRecorder *)v5 updateMountPoint];
    _log(updateMountPoint, @"%@: initializing event recorder with updateMountPoint: %@", v23, v24, v25, v26, v27, v28, v5);
    nvramPath = [(UMEventRecorder *)v5 nvramPath];
    _log(nvramPath, @"%@: initializing event recorder with nvramPath: %@", v30, v31, v32, v33, v34, v35, v5);
    targetOSVersion = [(UMEventRecorder *)v5 targetOSVersion];
    _log(targetOSVersion, @"%@: initializing event recorder with targetOSVersion: %@", v37, v38, v39, v40, v41, v42, v5);
    context = [(UMEventRecorder *)v5 context];
    _log(context, @"%@: initializing event recorder with context: %@", v44, v45, v46, v47, v48, v49, v5);
    baseServerURL = [(UMEventRecorder *)v5 baseServerURL];
    _log(baseServerURL, @"%@: initializing event recorder with baseServerURL: %@", v51, v52, v53, v54, v55, v56, v5);
    uuid = [(UMEventRecorder *)v5 uuid];
    _log(uuid, @"%@: initializing event recorder with uuid: %@", v57, v58, v59, v60, v61, v62, v5);
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_callbackQueue);
  v3.receiver = self;
  v3.super_class = UMEventRecorder;
  [(UMEventRecorder *)&v3 dealloc];
}

- (id)_defaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UpdateMetrics"];

  return v2;
}

- (id)_serverURL
{
  v2 = [NSString stringWithFormat:@"%@/%d/%@", [(UMEventRecorder *)self baseServerURL], [(UMEventRecorder *)self _serverCompatibilityVersion], [(UMEventRecorder *)self _topic]];
  result = [NSURL URLWithString:v2];
  if (!result)
  {
    _log(0, @"Malformed URL for update metrics event reporting - %@", v4, v5, v6, v7, v8, v9, v2);

    return [NSURL URLWithString:@"https://xp.apple.com/report/2/psr_ota"];
  }

  return result;
}

- (id)_legacySupportDirectory
{
  if ([(UMEventRecorder *)self dataMountPoint])
  {
    dataMountPoint = [(UMEventRecorder *)self dataMountPoint];
  }

  else
  {
    dataMountPoint = @"/var";
  }

  return [(UMEventRecorder *)self _supportDirectoryWithMountPoint:dataMountPoint];
}

- (id)_supportDirectory
{
  if (__TESTING == 1)
  {
    _log(self, @"%s: Using path for testing: /tmp/UpdateMetrics", v2, v3, v4, v5, v6, v7, "[UMEventRecorder _supportDirectory]");

    return [NSURL fileURLWithPath:@"/tmp/UpdateMetrics"];
  }

  else
  {
    _log(self, @"Permanent update volume present..supportDir will be placed there", v2, v3, v4, v5, v6, v7, v11);
    updateMountPoint = [(UMEventRecorder *)self updateMountPoint];

    return [(UMEventRecorder *)self _supportDirectoryWithMountPoint:updateMountPoint];
  }
}

- (id)_supportDirectoryWithMountPoint:(id)point
{
  v18 = 0;
  if (point)
  {
    pointCopy = point;
  }

  else
  {
    pointCopy = @"/var/MobileSoftwareUpdate";
  }

  if (!point)
  {
    _log(self, @"%s: mountPoint is nil...Using %@ as the mountPoint", 0, v3, v4, v5, v6, v7, "[UMEventRecorder _supportDirectoryWithMountPoint:]");
  }

  v9 = [[NSURL fileURLWithPath:?], "URLByAppendingPathComponent:", @"db/UpdateMetrics"];
  v19[0] = NSFileOwnerAccountName;
  v19[1] = NSFileGroupOwnerAccountName;
  v20[0] = @"mobile";
  v20[1] = @"mobile";
  v19[2] = NSFileProtectionKey;
  v20[2] = NSFileProtectionNone;
  v10 = [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v9 attributes:1 error:[NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3], &v18];
  if ((v10 & 1) == 0)
  {
    _log(v10, @"%s: unable to create support directory at path:%@ error:%@", v11, v12, v13, v14, v15, v16, "[UMEventRecorder _supportDirectoryWithMountPoint:]");
  }

  return v9;
}

- (id)_legacyInstallInfoFile
{
  _legacySupportDirectory = [(UMEventRecorder *)self _legacySupportDirectory];

  return [_legacySupportDirectory URLByAppendingPathComponent:@"ota-info.plist"];
}

- (id)_installInfoFile
{
  _supportDirectory = [(UMEventRecorder *)self _supportDirectory];

  return [_supportDirectory URLByAppendingPathComponent:@"ota-info.plist"];
}

- (BOOL)_setPermissionsOnURL:(id)l
{
  v20 = 0;
  v21[0] = NSFileOwnerAccountName;
  v21[1] = NSFileGroupOwnerAccountName;
  v22[0] = @"mobile";
  v22[1] = @"mobile";
  v21[2] = NSFilePosixPermissions;
  v21[3] = NSFileProtectionKey;
  v22[2] = [NSNumber numberWithInt:438];
  v22[3] = NSFileProtectionNone;
  v4 = -[NSFileManager setAttributes:ofItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "setAttributes:ofItemAtPath:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v22, v21, 4), [l path], &v20);
  if ((v4 & 1) == 0)
  {
    _log(v4, @"unable to set permissions on %@: %@", v5, v6, v7, v8, v9, v10, l);
  }

  v11 = [l setResourceValue:+[NSNumber numberWithBool:](NSNumber forKey:"numberWithBool:" error:{1), NSURLIsExcludedFromBackupKey, &v20}];
  v18 = v11;
  if ((v11 & 1) == 0)
  {
    _log(v11, @"unable to disable backup for %@: %@", v12, v13, v14, v15, v16, v17, l);
  }

  return v18;
}

- (id)_legacyEventDirectory
{
  if (__TESTING == 1)
  {
    _log(self, @"%s: Using path for testing: /tmp/UpdateMetrics/LegacyEvents", v2, v3, v4, v5, v6, v7, "[UMEventRecorder _legacyEventDirectory]");

    return [NSURL fileURLWithPath:@"/tmp/UpdateMetrics/LegacyEvents"];
  }

  else
  {
    if ([(UMEventRecorder *)self dataMountPoint])
    {
      dataMountPoint = [(UMEventRecorder *)self dataMountPoint];
    }

    else
    {
      dataMountPoint = @"/var";
    }

    return [(UMEventRecorder *)self _eventDirectoryWithMountPoint:dataMountPoint];
  }
}

- (id)_eventDirectory
{
  if (__TESTING == 1)
  {
    _log(self, @"%s: Using path for testing: /tmp/UpdateMetrics/Events", v2, v3, v4, v5, v6, v7, "[UMEventRecorder _eventDirectory]");

    return [NSURL fileURLWithPath:@"/tmp/UpdateMetrics/Events"];
  }

  else
  {
    updateMountPoint = [(UMEventRecorder *)self updateMountPoint];

    return [(UMEventRecorder *)self _eventDirectoryWithMountPoint:updateMountPoint];
  }
}

- (id)_eventDirectoryWithMountPoint:(id)point
{
  v21 = 0;
  v20 = 0;
  v3 = [-[UMEventRecorder _supportDirectoryWithMountPoint:](self _supportDirectoryWithMountPoint:{point), "URLByAppendingPathComponent:", @"Events"}];
  v22[0] = NSFileOwnerAccountName;
  v22[1] = NSFileGroupOwnerAccountName;
  v23[0] = @"mobile";
  v23[1] = @"mobile";
  v22[2] = NSFilePosixPermissions;
  v22[3] = NSFileProtectionKey;
  v23[2] = [NSNumber numberWithInt:511];
  v23[3] = NSFileProtectionNone;
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  if (-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [v3 path], &v20) && v20 == 1)
  {
    v5 = -[NSFileManager setAttributes:ofItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "setAttributes:ofItemAtPath:error:", v4, [v3 path], &v21);
    if ((v5 & 1) == 0)
    {
      _log(v5, @"unable to set attributes on directory for update events: %@", v6, v7, v8, v9, v10, v11, v21);
    }
  }

  else
  {
    v12 = [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:v4, &v21];
    if ((v12 & 1) == 0)
    {
      _log(v12, @"unable to create directory for update events: %@", v13, v14, v15, v16, v17, v18, v21);
    }
  }

  return v3;
}

- (id)_getGestaltValue:(__CFString *)value
{
  v3 = MGCopyAnswer();

  return v3;
}

- (id)_getGestaltString:(__CFString *)string default:(id)default
{
  v5 = [(UMEventRecorder *)self _getGestaltValue:string];
  if (!v5)
  {
    return default;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return default;
  }

  return v6;
}

- (id)_getGestaltDiskUsageKey:(__CFString *)key inDictionary:(id)dictionary
{
  v4 = [objc_msgSend(dictionary objectForKey:{key), "longLongValue"}];

  return [NSNumber numberWithLongLong:v4 / 0x100000];
}

- (id)_getDiskUsage
{
  if ([(UMEventRecorder *)self systemMountPoint]|| [(UMEventRecorder *)self dataMountPoint])
  {
    v3 = +[NSMutableDictionary dictionary];
    bzero(&v32, 0x878uLL);
    bzero(&v31, 0x878uLL);
    if ([(UMEventRecorder *)self systemMountPoint])
    {
      statfs([(NSString *)[(UMEventRecorder *)self systemMountPoint] fileSystemRepresentation], &v32);
      v29[2] = 0;
      memset(v30, 0, 12);
      v29[0] = 5;
      v29[1] = 2155872256;
      if (getattrlist([(NSString *)[(UMEventRecorder *)self systemMountPoint] fileSystemRepresentation], v29, v30, 0xCuLL, 0))
      {
        v4 = __error();
        logfunction(", 1, @"getattrlist(ATTR_VOL_SPACEUSED) to get filesystem used space failed: %d\n"", v5, v6, v7, v8, v9, *v4);
        v10 = (v32.f_blocks - v32.f_bfree) * v32.f_bsize;
      }

      else
      {
        v10 = *(v30 + 4);
      }

      v14 = [NSNumber numberWithLongLong:v10];
      [v3 setObject:v14 forKeyedSubscript:kMGQDiskUsageTotalSystemCapacity];
      v15 = [NSNumber numberWithInt:0];
      [v3 setObject:v15 forKeyedSubscript:kMGQDiskUsageTotalSystemAvailable];
      v13 = v32.f_blocks * v32.f_bsize;
    }

    else
    {
      v11 = [NSNumber numberWithInt:0];
      [v3 setObject:v11 forKeyedSubscript:kMGQDiskUsageTotalSystemCapacity];
      v12 = [NSNumber numberWithInt:0];
      [v3 setObject:v12 forKeyedSubscript:kMGQDiskUsageTotalSystemAvailable];
      v13 = 0;
    }

    if ([(UMEventRecorder *)self dataMountPoint])
    {
      statfs([(NSString *)[(UMEventRecorder *)self dataMountPoint] fileSystemRepresentation], &v31);
      v16 = [NSNumber numberWithLongLong:v31.f_blocks * v31.f_bsize];
      [v3 setObject:v16 forKeyedSubscript:kMGQDiskUsageTotalDataCapacity];
      v13 = v31.f_blocks * v31.f_bsize;
      v17 = [NSNumber numberWithLongLong:v31.f_bavail * v31.f_bsize];
    }

    else
    {
      v18 = [NSNumber numberWithInt:0];
      [v3 setObject:v18 forKeyedSubscript:kMGQDiskUsageTotalDataCapacity];
      v17 = [NSNumber numberWithInt:0];
    }

    [v3 setObject:v17 forKeyedSubscript:kMGQDiskUsageTotalDataAvailable];
    v19 = v13;
    goto LABEL_13;
  }

  if (&_os_variant_is_recovery && os_variant_is_recovery())
  {
    *&v32.f_bsize = 0;
    *&v31.f_bsize = 0;
    v29[0] = 0;
    v30[0] = 0;
    get_main_container_space_info(&v32, &v31, 0, v29, v30, v22, v23, v24);
    v3 = +[NSMutableDictionary dictionary];
    v25 = [NSNumber numberWithLongLong:*&v32.f_bsize];
    [v3 setObject:v25 forKeyedSubscript:kMGQDiskUsageTotalSystemCapacity];
    v26 = [NSNumber numberWithInt:0];
    [v3 setObject:v26 forKeyedSubscript:kMGQDiskUsageTotalSystemAvailable];
    v27 = [NSNumber numberWithLongLong:v29[0] + *&v31.f_bsize];
    [v3 setObject:v27 forKeyedSubscript:kMGQDiskUsageTotalDataCapacity];
    v28 = [NSNumber numberWithLongLong:v29[0]];
    [v3 setObject:v28 forKeyedSubscript:kMGQDiskUsageTotalDataAvailable];
    v19 = v30[0];
LABEL_13:
    v20 = [NSNumber numberWithLongLong:v19];
    [v3 setObject:v20 forKeyedSubscript:kMGQDiskUsageTotalDiskCapacity];
    return v3;
  }

  return [(UMEventRecorder *)self _getGestaltValue:@"DiskUsage"];
}

- (id)_currentOSVersion
{
  result = [(UMEventRecorder *)self _getGestaltString:@"SupplementalBuildVersion" default:0];
  if (!result)
  {

    return [(UMEventRecorder *)self _currentBaseOSVersion];
  }

  return result;
}

- (int64_t)_uptime
{
  *v6 = 0x1500000001;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 16;
  v2 = sysctl(v6, 2u, v4, &v5, 0, 0);
  result = 0;
  if (!v2)
  {
    return time(0) - v4[0];
  }

  return result;
}

- (id)_currentEAPFSMode
{
  if (_currentEAPFSMode_onceToken != -1)
  {
    [UMEventRecorder _currentEAPFSMode];
  }

  return _currentEAPFSMode_eapfsMode;
}

void __36__UMEventRecorder__currentEAPFSMode__block_invoke(id a1)
{
  bzero(v2, 0x40CuLL);
  v1[2] = 0;
  v1[0] = 5;
  v1[1] = 2147491840;
  if (getattrlist("/private/var/mobile", v1, v2, 0x40CuLL, 0) != -1)
  {
    if ([[NSString stringWithCString:4 encoding:?], "isEqualToString:", @"User"])
    {
      _currentEAPFSMode_eapfsMode = @"YES";
    }
  }
}

- (void)_saveEvent:(id)event
{
  v5 = [-[UMEventRecorder _serverURL](self "_serverURL")];
  if (v5)
  {
    v12 = v5;
    uuid = [(UMEventRecorder *)self uuid];
    if (uuid)
    {
      v14 = uuid;
      v50[0] = @"Event Data";
      v50[1] = @"Install Id";
      v51[0] = event;
      v51[1] = uuid;
      v50[2] = @"Submission URL";
      v51[2] = v12;
      v15 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
      v16 = [-[UMEventRecorder _eventDirectory](self "_eventDirectory")];
      if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v16 path]))
      {
        v17 = 1;
        do
        {
          v16 = [-[UMEventRecorder _eventDirectory](self "_eventDirectory")];
          v17 = (v17 + 1);
        }

        while (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v16 path]));
      }

      v18 = [NSPropertyListSerialization dataWithPropertyList:v15 format:200 options:0 error:0];
      if (v18)
      {
        v49 = 0;
        v25 = [(NSData *)v18 writeToURL:v16 options:1 error:&v49];
        if (v25)
        {
          [(UMEventRecorder *)self _setPermissionsOnURL:v16];
        }

        else
        {
          _log(v25, @"ERROR - unable to write event to file: '%@'", v26, v27, v28, v29, v30, v31, v49);
          _log(v40, @"will try to keep the event in memory and send later", v41, v42, v43, v44, v45, v46, v48);
          [(NSMutableArray *)[(UMEventRecorder *)self droppedEvents] addObject:v15];
        }
      }

      else
      {
        _log(0, @"ERROR - unable to create property list from dictionary: %@", v19, v20, v21, v22, v23, v24, v15);
        _log(v33, @"discarding event", v34, v35, v36, v37, v38, v39, v47);
      }

      return;
    }

    v32 = @"Malformed UUID for update metrics event reporting - discarding event";
  }

  else
  {
    v32 = @"Malformed URL for update metrics event reporting - discarding event";
  }

  _log(0, v32, v6, v7, v8, v9, v10, v11, v53);
}

- (void)_recordEvent:(id)event getPowerLog:(BOOL)log information:(id)information callback:(id)callback
{
  logCopy = log;
  if (![(UMEventRecorder *)self baseServerURL])
  {
    _log(0, @"event reporting is not enabled, discarding event (%@) - %@\n", v11, v12, v13, v14, v15, v16, event);
    return;
  }

  if ([(UMEventRecorder *)self attributeDict])
  {
    v17 = [(NSMutableDictionary *)[(UMEventRecorder *)self attributeDict] mutableCopy];
  }

  else
  {
    v17 = +[NSMutableDictionary dictionary];
  }

  v18 = v17;
  if (information)
  {
    [v17 addEntriesFromDictionary:information];
  }

  [v18 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 1), @"reportVersion"}];
  [v18 setObject:event forKey:@"event"];
  [v18 setObject:-[UMEventRecorder installType](self forKey:{"installType"), @"type"}];
  [v18 setObject:-[UMEventRecorder _currentTimeInMilliseconds](self forKey:{"_currentTimeInMilliseconds"), @"eventTime"}];
  [v18 setObject:-[UMEventRecorder _getGestaltString:](self forKey:{"_getGestaltString:", @"DeviceClass", @"deviceClass"}];
  [v18 setObject:-[UMEventRecorder _getDeviceModel](self forKey:{"_getDeviceModel"), @"deviceModel"}];
  [v18 setObject:+[NSNumber numberWithLong:](NSNumber forKey:{"numberWithLong:", -[UMEventRecorder _uptime](self, "_uptime")), @"uptime"}];
  v19 = [(UMEventRecorder *)self _getGestaltValue:@"BatteryCurrentCapacity"];
  if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = @"unknown";
  }

  [v18 setObject:v20 forKey:@"batteryLevel"];
  v21 = [(UMEventRecorder *)self _getGestaltValue:@"BatteryIsCharging"];
  if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = @"unknown";
  }

  [v18 setObject:v22 forKey:@"batteryIsCharging"];
  _getDiskUsage = [(UMEventRecorder *)self _getDiskUsage];
  if (_getDiskUsage && (v24 = _getDiskUsage, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v18 setObject:-[UMEventRecorder _getGestaltDiskUsageKey:inDictionary:](self forKey:{"_getGestaltDiskUsageKey:inDictionary:", kMGQDiskUsageTotalDiskCapacity, v24), @"storageCapacity"}];
    [v18 setObject:-[UMEventRecorder _getGestaltDiskUsageKey:inDictionary:](self forKey:{"_getGestaltDiskUsageKey:inDictionary:", kMGQDiskUsageTotalSystemCapacity, v24), @"systemFsCapacity"}];
    [v18 setObject:-[UMEventRecorder _getGestaltDiskUsageKey:inDictionary:](self forKey:{"_getGestaltDiskUsageKey:inDictionary:", kMGQDiskUsageTotalSystemAvailable, v24), @"systemFsFree"}];
    [v18 setObject:-[UMEventRecorder _getGestaltDiskUsageKey:inDictionary:](self forKey:{"_getGestaltDiskUsageKey:inDictionary:", kMGQDiskUsageTotalDataCapacity, v24), @"dataFsCapacity"}];
    v25 = [(UMEventRecorder *)self _getGestaltDiskUsageKey:kMGQDiskUsageTotalDataAvailable inDictionary:v24];
    v26 = v18;
  }

  else
  {
    [v18 setObject:@"unknown" forKey:@"storageCapacity"];
    [v18 setObject:@"unknown" forKey:@"systemFsCapacity"];
    [v18 setObject:@"unknown" forKey:@"systemFsFree"];
    [v18 setObject:@"unknown" forKey:@"dataFsCapacity"];
    v26 = v18;
    v25 = @"unknown";
  }

  [v26 setObject:v25 forKey:@"dataFsFree"];
  [v18 setObject:-[UMEventRecorder _currentOSVersion](self forKey:{"_currentOSVersion"), @"currentOSVersion"}];
  [v18 setObject:-[UMEventRecorder _currentBaseOSVersion](self forKey:{"_currentBaseOSVersion"), @"currentBaseOSVersion"}];
  v27 = [(UMEventRecorder *)self _getGestaltString:@"ProductVersionExtra" default:0];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = @"unknown";
  }

  if (v27)
  {
    v29 = @"true";
  }

  else
  {
    v29 = @"false";
  }

  [v18 setObject:v28 forKey:@"currentProductVersionExtra"];
  [v18 setObject:v29 forKey:@"rapidSecurityResponseInstalled"];
  v30 = [(UMEventRecorder *)self _getGestaltString:@"ReleaseType" default:@"user"];
  [v18 setObject:v30 forKey:@"currentOSType"];
  if ([(UMEventRecorder *)self targetOSVersion])
  {
    [v18 setObject:-[UMEventRecorder targetOSVersion](self forKey:{"targetOSVersion"), @"targetOSVersion"}];
  }

  v31 = [v18 objectForKeyedSubscript:@"supervised"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    v31 = [NSNumber numberWithBool:[(NSNumber *)v31 BOOLValue]];
  }

  [(UMEventRecorder *)self setIsDeviceSupervised:v31];
LABEL_30:
  v32 = [v18 objectForKeyedSubscript:@"installTonight"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_34;
    }

    v32 = [NSNumber numberWithBool:[(NSNumber *)v32 BOOLValue]];
  }

  [(UMEventRecorder *)self setInstallTonight:v32];
LABEL_34:
  [v18 setObject:-[UMEventRecorder _currentEAPFSMode](self forKey:{"_currentEAPFSMode"), @"eapfsMode"}];
  if ([(UMEventRecorder *)self context])
  {
    [v18 setObject:-[UMEventRecorder context](self forKey:{"context"), @"context"}];
  }

  if ([(UMEventRecorder *)self brainVersion])
  {
    [v18 setObject:-[UMEventRecorder brainVersion](self forKey:{"brainVersion"), @"brainVersion"}];
  }

  v33 = [(UMEventRecorder *)self _nvramValue:@"usermanagerd"];
  if (v33)
  {
    [v18 setObject:v33 forKeyedSubscript:@"usermanagerdNVRAM"];
  }

  v34 = [v18 objectForKeyedSubscript:@"MobileAssetAssetAudience"];
  if (v34 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    _log(isKindOfClass, @"Using assetAudience passed in by upper layer(%@) for splunk event", v36, v37, v38, v39, v40, v41, v34);
    v42 = [v18 setObject:v34 forKey:@"MobileAssetAssetAudience"];
  }

  else
  {
    TypeID = CFPreferencesCopyAppValue(@"MobileAssetAssetAudience", @"com.apple.MobileAsset");
    v56 = TypeID;
    if (TypeID && (v57 = CFGetTypeID(TypeID), TypeID = CFStringGetTypeID(), v57 == TypeID))
    {
      _log(TypeID, @"Asset audience default is %@", v50, v51, v52, v53, v54, v55, v56);
      [v18 setObject:v56 forKey:@"MobileAssetAssetAudience"];
    }

    else
    {
      _log(TypeID, @"Unable to determine asset audience from defaults. Assuming default audience for build in use", v50, v51, v52, v53, v54, v55, v58);
      if (!v34)
      {
        v34 = [NSString stringWithFormat:@"DefaultAssetAudienceForReleaseType%@", v30];
      }

      v42 = [v18 setObject:v34 forKey:@"MobileAssetAssetAudience"];
      if (!v56)
      {
        goto LABEL_50;
      }
    }

    CFRelease(v56);
  }

LABEL_50:
  _log(v42, @"[%s] (%@) - %@\n", v43, v44, v45, v46, v47, v48, "[UMEventRecorder _recordEvent:getPowerLog:information:callback:]");
  [(UMEventRecorder *)self _saveEvent:v18];
  if (logCopy)
  {
    [(UMEventRecorder *)self _recordPowerLog:event information:v18];
  }

  if (callback)
  {
    (*(callback + 2))(callback, v18);
  }
}

- (void)_recordPowerLog:(id)log information:(id)information
{
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:-[NSUUID UUIDString](+[NSUUID UUID](NSUUID forKey:{"UUID"), "UUIDString"), @"RequestUUID"}];
  if (information)
  {
    [v6 addEntriesFromDictionary:information];
  }

  if (log)
  {
    [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", +[UMEventRecorder eventForEventString:](UMEventRecorder, "eventForEventString:", log)), @"event"}];
  }

  if (&_PLLogRegisteredEvent)
  {
    logfunction(", 1, @"Sending event to PowerLog: %@\n"", v7, v8, v9, v10, v11, v6);
    PLLogRegisteredEvent();
  }
}

+ (int64_t)eventForEventString:(id)string
{
  if ([string isEqualToString:@"purge"])
  {
    return 0;
  }

  if ([string isEqualToString:@"preflightScan"])
  {
    return 1;
  }

  if ([string isEqualToString:@"preflightDownload"])
  {
    return 2;
  }

  if ([string isEqualToString:@"preflightPersonalize"])
  {
    return 3;
  }

  if ([string isEqualToString:@"preflightFDR"])
  {
    return 4;
  }

  if ([string isEqualToString:@"preflightWakeup"])
  {
    return 5;
  }

  if ([string isEqualToString:@"preflightPrerequisiteCheck"])
  {
    return 6;
  }

  if ([string isEqualToString:@"prepareStarted"])
  {
    return 7;
  }

  if ([string isEqualToString:@"prepareFinished"])
  {
    return 8;
  }

  if ([string isEqualToString:@"applyStarted"])
  {
    return 9;
  }

  if ([string isEqualToString:@"applyFinished"])
  {
    return 10;
  }

  if ([string isEqualToString:@"CryptegraftStarted"])
  {
    return 11;
  }

  if ([string isEqualToString:@"CryptegraftFinshed"])
  {
    return 12;
  }

  if ([string isEqualToString:@"updateFinished"])
  {
    return 13;
  }

  return 100;
}

- (id)_nvramValue:(id)value
{
  nvramDict = self->_nvramDict;
  if (nvramDict)
  {
    v5 = [(NSDictionary *)nvramDict objectForKey:value];
  }

  else
  {
    v5 = copy_nvram_variable(value);
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [v6 bytes];
    v8 = [[NSString alloc] initWithBytes:bytes length:strnlen(bytes encoding:{objc_msgSend(v6, "length")), 4}];
LABEL_8:
    v16 = v8;
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [v6 copy];
    goto LABEL_8;
  }

  if (v6)
  {
    _log(isKindOfClass, @"NVRAM variable %@ has unexpected value '%@'", v10, v11, v12, v13, v14, v15, value);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)_setNvramValue:(id)value forKey:(id)key
{
  if (value)
  {
    v9 = set_nvram_object(key, value, value, key, v4, v5, v6, v7);
    if (v9)
    {
      return 1;
    }
  }

  else
  {
    v9 = delete_nvram_variable(key);
    if (v9)
    {
      return 1;
    }
  }

  _log(v9, @"unable to set %@ to %@", v10, v11, v12, v13, v14, v15, key);
  return 0;
}

- (BOOL)_syncNvram
{
  v8 = msu_sync_nvram(1, a2, v2, v3, v4, v5, v6, v7);
  v15 = v8;
  if (!v8)
  {
    _log(v8, @"unable to sync nvram", v9, v10, v11, v12, v13, v14, v17);
  }

  return v15;
}

- (BOOL)_installInProgressAfterApply
{
  v2 = copy_nvram_variable(@"ota-uuid");
  v9 = v2;
  if (v2)
  {
    _log(v2, @"InstallInProgressAfterApply is true", v3, v4, v5, v6, v7, v8, v11);
    CFRelease(v9);
  }

  else
  {
    _log(0, @"InstallInProgressAfterApply is false\n", v3, v4, v5, v6, v7, v8, v11);
  }

  return v9 != 0;
}

- (void)_cleanupInstallState
{
  v3 = msu_nvram_exists(@"ota-uuid");
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-uuid"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-result"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-failure-reason"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-breadcrumbs"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-submission-url"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-os-version"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-original-os-version"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-original-base-os-version"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-install-tonight"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-context"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-brain-version"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"OTA-fsck-metrics"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"OTA-sealvolume-metrics"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"OTA-migrator-metrics"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"OTA-converter-metrics"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-forced-reset-uptime"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-initial-forced-reset-uptime"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ramrod-nvram-sequence"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-snapshot-update"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"pre-recovery-ota-failure-uuid"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"recoveryos-initiated-update"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-controllerVersion"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"ota-updateType"];
  [(UMEventRecorder *)self _setNvramValue:0 forKey:@"supervised"];
  if (v3)
  {
    v4 = msu_nvram_exists(@"ota-uuid");
    if (v4)
    {
      _log(v4, @"Value for %@ was not cleared, not syncing", v5, v6, v7, v8, v9, v10, @"ota-uuid");
    }

    else
    {
      _log(v4, @"syncing nvram to clear %@", v5, v6, v7, v8, v9, v10, @"ota-uuid");
      [(UMEventRecorder *)self _syncNvram];
    }
  }

  [(UMEventRecorder *)self setUuid:0];
  [(UMEventRecorder *)self setBaseServerURL:0];
  [(UMEventRecorder *)self setTargetOSVersion:0];
  [(UMEventRecorder *)self setContext:0];
  [(UMEventRecorder *)self setAttributeDict:0];
  if (unlink([-[UMEventRecorder _installInfoFile](self "_installInfoFile")]) && *__error() != 2)
  {
    _installInfoFile = [(UMEventRecorder *)self _installInfoFile];
    v12 = __error();
    v27 = strerror(*v12);
    _log(v27, @"unable to remove %@: %s", v13, v14, v15, v16, v17, v18, _installInfoFile);
  }

  if (unlink([-[UMEventRecorder _legacyInstallInfoFile](self "_legacyInstallInfoFile")]))
  {
    if (*__error() != 2)
    {
      _installInfoFile2 = [(UMEventRecorder *)self _installInfoFile];
      v20 = __error();
      v28 = strerror(*v20);
      _log(v28, @"unable to remove %@: %s", v21, v22, v23, v24, v25, v26, _installInfoFile2);
    }
  }
}

- (void)_writeInfoFile
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(UMEventRecorder *)self baseServerURL])
  {
    [v3 setObject:-[UMEventRecorder baseServerURL](self forKey:{"baseServerURL"), @"Submission URL"}];
  }

  if ([(UMEventRecorder *)self uuid])
  {
    [v3 setObject:-[UMEventRecorder uuid](self forKey:{"uuid"), @"UUID"}];
  }

  if ([(UMEventRecorder *)self targetOSVersion])
  {
    [v3 setObject:-[UMEventRecorder targetOSVersion](self forKey:{"targetOSVersion"), @"Target OS Version"}];
  }

  if ([(UMEventRecorder *)self context])
  {
    [v3 setObject:-[UMEventRecorder context](self forKey:{"context"), @"Context"}];
  }

  if ([(UMEventRecorder *)self attributeDict]&& [(NSMutableDictionary *)[(UMEventRecorder *)self attributeDict] count])
  {
    [v3 setObject:-[UMEventRecorder attributeDict](self forKey:{"attributeDict"), @"Persistent Attributes"}];
  }

  v4 = [v3 writeToURL:-[UMEventRecorder _installInfoFile](self atomically:{"_installInfoFile"), 1}];
  if (v4)
  {
    _installInfoFile = [(UMEventRecorder *)self _installInfoFile];

    [(UMEventRecorder *)self _setPermissionsOnURL:_installInfoFile];
  }

  else
  {

    _log(v4, @"unable to write install info file", v5, v6, v7, v8, v9, v10, v13);
  }
}

- (void)startRecordingInstall:(id)install
{
  v5 = [install objectForKey:@"Build"];
  if (v5 || (v5 = [install objectForKey:@"TargetUpdate"]) != 0)
  {
    v12 = v5;
    if ([(UMEventRecorder *)self _installInProgress])
    {
      v13 = [(NSString *)self->_targetOSVersion isEqualToString:v12];
      if ((v13 & 1) == 0)
      {
        targetOSVersion = self->_targetOSVersion;
        _log(v13, @"startRecordingInstall for %@ found an install currently in progress for %@", v14, v15, v16, v17, v18, v19, v12);
        [(UMEventRecorder *)self recordEvent:@"incompleteInstall" information:0 installIsComplete:1];
      }
    }

    v20 = [install objectForKey:@"BrainVersion"];
    if (v20)
    {
      [(UMEventRecorder *)self setBrainVersion:v20];
    }

    v21 = [-[UMEventRecorder _defaults](self "_defaults")];
    if (v21 || (v21 = [install objectForKey:@"_EventRecordingServiceURL"]) != 0)
    {
      v28 = v21;
    }

    else
    {
      v28 = @"https://xp.apple.com/report";
      _log(0, @"no url provided - defaulting to %@", v22, v23, v24, v25, v26, v27, @"https://xp.apple.com/report");
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(UMEventRecorder *)self setBaseServerURL:v28];
      [(UMEventRecorder *)self setTargetOSVersion:v12];
      v36 = [install objectForKey:@"UpdateUUID"];
      if (v36)
      {
        uUIDString = v36;
        objc_opt_class();
        v38 = objc_opt_isKindOfClass();
        if ((v38 & 1) == 0)
        {
LABEL_25:
          _log(v38, @"setting uuid in startRecordingInstall to %@", v39, v40, v41, v42, v43, v44, uUIDString);
          [(UMEventRecorder *)self setUuid:uUIDString];
          -[UMEventRecorder setContext:](self, "setContext:", [-[UMEventRecorder _defaults](self "_defaults")]);

          [(UMEventRecorder *)self _writeInfoFile];
          return;
        }

        v45 = [[NSUUID alloc] initWithUUIDString:uUIDString];
        if (v45)
        {

          goto LABEL_25;
        }

        _log(0, @"unable to convert provided uuid string (%@) to a valid NSUUID class, setting uuid to nil", v46, v47, v48, v49, v50, v51, uUIDString);
      }

      uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
      _log(uUIDString, @"generated a new uuid string %@", v52, v53, v54, v55, v56, v57, uUIDString);
      goto LABEL_25;
    }

    _log(isKindOfClass, @"bogus event service URL %@", v30, v31, v32, v33, v34, v35, v28);

    [(UMEventRecorder *)self setBaseServerURL:0];
  }

  else
  {

    _log(0, @"asset attributes do not include build - update metrics disabled", v6, v7, v8, v9, v10, v11, v60);
  }
}

- (void)addPersistentAttribute:(id)attribute forKey:(id)key
{
  if (attribute)
  {
    if (key)
    {
      keyCopy = key;
      attributeCopy = attribute;
      [(UMEventRecorder *)self addPersistentAttributes:[NSDictionary dictionaryWithObjects:&attributeCopy forKeys:&keyCopy count:1]];
    }
  }
}

- (void)addPersistentAttributes:(id)attributes
{
  if (attributes)
  {
    _installInProgress = [(UMEventRecorder *)self _installInProgress];
    if (_installInProgress)
    {
      if ([(UMEventRecorder *)self attributeDict])
      {
        [(NSMutableDictionary *)[(UMEventRecorder *)self attributeDict] addEntriesFromDictionary:attributes];
      }

      else
      {
        [(UMEventRecorder *)self setAttributeDict:[NSMutableDictionary dictionaryWithDictionary:attributes]];
      }

      [(UMEventRecorder *)self _writeInfoFile];
    }

    else
    {
      _log(_installInProgress, @"Attempt to save attributes %@ when install not in progres", v6, v7, v8, v9, v10, v11, attributes);
    }
  }
}

- (void)removePersistentAttributeKey:(id)key
{
  if ([(UMEventRecorder *)self attributeDict])
  {
    [(NSMutableDictionary *)[(UMEventRecorder *)self attributeDict] removeObjectForKey:key];

    [(UMEventRecorder *)self _writeInfoFile];
  }
}

- (void)recordEvent:(id)event information:(id)information installIsComplete:(BOOL)complete
{
  completeCopy = complete;
  [(UMEventRecorder *)self recordEvent:event information:information];
  if (completeCopy)
  {

    [(UMEventRecorder *)self _cleanupInstallState];
  }
}

- (void)recordPostUpdateEvent:(id)event additionalInfo:(id)info withCallback:(id)callback
{
  v9 = +[NSMutableDictionary dictionary];
  v10 = [info objectForKeyedSubscript:@"rapidSecurityResponseUpdate"];
  v11 = [info objectForKeyedSubscript:@"rapidSecurityResponseRollback"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 BOOLValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v11, "BOOLValue"))
  {
    eventCopy2 = event;
    callbackCopy2 = callback;
    v12 = [info objectForKeyedSubscript:@"result"];
    v59 = [info objectForKeyedSubscript:@"failureReason"];
    v60 = 0;
    v13 = 0;
    v61 = 0;
    v62 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v71 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v17 = 0;
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  _installInProgressAfterApply = [(UMEventRecorder *)self _installInProgressAfterApply];
  if (_installInProgressAfterApply)
  {
    eventCopy2 = event;
    callbackCopy2 = callback;
    v26 = objc_opt_new();
    [v26 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
    v12 = [(UMEventRecorder *)self _nvramValue:@"ota-result"];
    v59 = [(UMEventRecorder *)self _nvramValue:@"ota-failure-reason"];
    v56 = [(UMEventRecorder *)self _nvramValue:@"ota-breadcrumbs"];
    v61 = [(UMEventRecorder *)self _nvramValue:@"ota-original-os-version"];
    v62 = [(UMEventRecorder *)self _nvramValue:@"ota-original-base-os-version"];
    v13 = [(UMEventRecorder *)self _nvramValue:@"ota-install-tonight"];
    v67 = [(UMEventRecorder *)self _nvramValue:@"ota-brain-version"];
    v68 = [(UMEventRecorder *)self _nvramValue:@"OTA-fsck-metrics"];
    v69 = [(UMEventRecorder *)self _nvramValue:@"OTA-sealvolume-metrics"];
    v60 = [(UMEventRecorder *)self _nvramValue:@"OTA-migrator-metrics"];
    v71 = [(UMEventRecorder *)self _nvramValue:@"OTA-converter-metrics"];
    v57 = [(UMEventRecorder *)self _nvramValue:@"ota-forced-reset-uptime"];
    v58 = [(UMEventRecorder *)self _nvramValue:@"ota-initial-forced-reset-uptime"];
    v70 = [(UMEventRecorder *)self _nvramValue:@"ota-snapshot-update"];
    v63 = [(UMEventRecorder *)self _nvramValue:@"pre-recovery-ota-failure-uuid"];
    v64 = [(UMEventRecorder *)self _nvramValue:@"recoveryos-initiated-update"];
    v65 = [(UMEventRecorder *)self _nvramValue:@"ota-controllerVersion"];
    v66 = [(UMEventRecorder *)self _nvramValue:@"ota-updateType"];
    v27 = [(UMEventRecorder *)self _nvramValue:@"supervised"];
    v17 = v27;
    if (v13)
    {
      v28 = v26;
      v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(v26 numberFromString:{v13), "BOOLValue"}]);
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v28 = v26;
      if (!v27)
      {
LABEL_12:
        v15 = v57;
        v16 = v58;
        v14 = v56;
        if (v12)
        {
LABEL_6:
          [v9 setObject:v12 forKey:@"result"];
          v18 = v60;
          if (!v59)
          {
LABEL_17:
            if (!v14)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

LABEL_16:
          [v9 setObject:? forKey:?];
          goto LABEL_17;
        }

LABEL_13:
        if (![-[UMEventRecorder _currentOSVersion](self "_currentOSVersion")])
        {
          [v9 setObject:@"unexpected error" forKey:@"result"];
          [v9 setObject:@"no result set in NVRAM reporting from non-target OS" forKey:@"failureReason"];
          v18 = v60;
          if (!v14)
          {
LABEL_19:
            if (v61)
            {
              [v9 setObject:v61 forKey:@"originalOSVersion"];
            }

            if (v62)
            {
              [v9 setObject:v62 forKey:@"originalBaseOSVersion"];
            }

            if (v13)
            {
              if ([(NSNumber *)v13 BOOLValue])
              {
                v29 = @"true";
              }

              else
              {
                v29 = @"false";
              }

              [v9 setObject:v29 forKey:@"installTonight"];
            }

            if (v17)
            {
              if ([(NSNumber *)v17 BOOLValue])
              {
                v30 = @"true";
              }

              else
              {
                v30 = @"false";
              }

              [v9 setObject:v30 forKey:@"supervised"];
            }

            v31 = v68;
            if (v67)
            {
              [v9 setObject:v67 forKey:@"brainVersion"];
            }

            if (v15)
            {
              [v9 setObject:v15 forKey:@"forcedResetUptime"];
            }

            if (v16)
            {
              [v9 setObject:v16 forKey:@"initialForcedResetUptime"];
            }

            if (v63)
            {
              [v9 setObject:v63 forKey:@"preRecoveryClientId"];
            }

            if (v64)
            {
              [v9 setObject:v64 forKey:@"recoveryInitiated"];
            }

            if (v65)
            {
              [v9 setObject:v65 forKey:@"controllerVersion"];
            }

            if (v66)
            {
              [v9 setObject:v66 forKey:@"updateType"];
            }

            v32 = [UMEventRecorder diagnosticsAndUsageAllowed:[(UMEventRecorder *)self dataMountPoint]];
            if (v32)
            {
              _log(v32, @"Diagnostic log submission enabled", v33, v34, v35, v36, v37, v38, v54);
              v39 = v69;
              if (!v68)
              {
                goto LABEL_53;
              }
            }

            else
            {
              _log(v32, @"Diagnostic log submission disabled", v33, v34, v35, v36, v37, v38, v54);
              v39 = v69;
              if (!v68)
              {
LABEL_53:
                if (v39)
                {
                  [v9 setObject:v39 forKey:@"sealvolumeMetrics"];
                }

                if ([v18 length])
                {
                  if (&_APFSDecodeMetricsString)
                  {
                    [v18 UTF8String];
                    v40 = APFSDecodeMetricsString();
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (![v40 length])
                  {
                    _log(0, @"%s: failed to decode migratorMetrics, reporting encoded metrics instead", v41, v42, v43, v44, v45, v46, "[UMEventRecorder recordPostUpdateEvent:additionalInfo:withCallback:]");
                    v40 = v18;
                  }

                  [v9 setObject:v40 forKey:@"migratorMetrics"];
                }

                if (v71)
                {
                  [v9 setObject:v71 forKey:@"converterMetrics"];
                }

                if (v70)
                {
                  [v9 setObject:v70 forKey:@"snapshotUpdate"];
                }

                if ([(UMEventRecorder *)self eventAttributes])
                {
                  [v9 addEntriesFromDictionary:{-[UMEventRecorder eventAttributes](self, "eventAttributes")}];
                }

                v47 = [+[UMEventCheckpoint sharedInstance](UMEventCheckpoint checkpointNvramInfo:"checkpointNvramInfo:", self->_nvramDict];
                if (v47)
                {
                  v47 = [v9 addEntriesFromDictionary:v47];
                }

                if (info)
                {
                  _log(v47, @"Adding dictionary to splunk object", v48, v49, v50, v51, v52, v53, v55);
                  [v9 addEntriesFromDictionary:info];
                }

                [(UMEventRecorder *)self _recordEvent:eventCopy2 information:v9 callback:callbackCopy2];

                [(UMEventRecorder *)self _cleanupInstallState];
                return;
              }

              v31 = @"<Redacted>";
            }

            [v9 setObject:v31 forKey:@"fsckMetrics"];
            goto LABEL_53;
          }

LABEL_18:
          [v9 setObject:v14 forKey:@"breadcrumbs"];
          goto LABEL_19;
        }

        v18 = v60;
        if ([(UMEventRecorder *)self _nvramValue:@"ota-uuid"])
        {
          [v9 setObject:@"unexpected error" forKey:@"result"];
        }

        goto LABEL_16;
      }
    }

    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(v28 numberFromString:{v17), "BOOLValue"}]);
    goto LABEL_12;
  }

  _log(_installInProgressAfterApply, @"ignoring call to recordPostUpdateEvent when no install is in progress or we haven't performed the apply operation", v20, v21, v22, v23, v24, v25, v75);
}

- (id)_copyEscapeStringsForEventData:(id)data
{
  v4 = [NSMutableCharacterSet characterSetWithCharactersInString:@"%\\""];
  [(NSMutableCharacterSet *)v4 formUnionWithCharacterSet:+[NSCharacterSet controlCharacterSet]];
  [(NSMutableCharacterSet *)v4 formUnionWithCharacterSet:+[NSCharacterSet newlineCharacterSet]];
  v5 = [NSMutableCharacterSet characterSetWithRange:0, 127];
  [(NSMutableCharacterSet *)v5 formIntersectionWithCharacterSet:[(NSMutableCharacterSet *)v4 invertedSet]];
  allKeys = [data allKeys];
  v7 = [objc_msgSend(data objectsForKeys:allKeys notFoundMarker:{+[NSNull null](NSNull, "null")), "mutableCopy"}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = __50__UMEventRecorder__copyEscapeStringsForEventData___block_invoke;
  v10[3] = &__block_descriptor_48_e8_32o40o_e15_v32__0_8Q16_B24l;
  v10[4] = v7;
  v10[5] = v5;
  [v7 enumerateObjectsUsingBlock:v10];
  v8 = [[NSDictionary alloc] initWithObjects:v7 forKeys:allKeys];

  return v8;
}

uint64_t __50__UMEventRecorder__copyEscapeStringsForEventData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);
    v9 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 40)];

    return [v8 replaceObjectAtIndex:a3 withObject:v9];
  }

  return result;
}

- (id)_submissionBodyForEvents:(id)events
{
  v5 = [objc_msgSend(events objectAtIndex:{0), "objectForKey:", @"Install Id"}];
  v6 = +[NSMutableArray array];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3254779904;
  v24[2] = __44__UMEventRecorder__submissionBodyForEvents___block_invoke;
  v24[3] = &__block_descriptor_48_e8_32o40o_e29_v32__0__NSDictionary_8Q16_B24l;
  v24[4] = self;
  v24[5] = v6;
  [events enumerateObjectsUsingBlock:v24];
  v25[0] = @"clientId";
  v25[1] = @"events";
  v26[0] = v5;
  v26[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v8 = [NSJSONSerialization isValidJSONObject:v7];
  if (v8)
  {
    return [NSJSONSerialization dataWithJSONObject:v7 options:0 error:0];
  }

  _log(v8, @"unable to convert event to JSON", v9, v10, v11, v12, v13, v14, v23);
  _log(v16, @"event: %@", v17, v18, v19, v20, v21, v22, v7);
  return 0;
}

void __44__UMEventRecorder__submissionBodyForEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _copyEscapeStringsForEventData:{objc_msgSend(a2, "objectForKey:", @"Event Data"}];
  [*(a1 + 40) addObject:v3];
}

- (void)_submitIndividualEvents:(id)events toURL:(id)l withOptions:(id)options completionHandler:(id)handler
{
  v10 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = events;
  v11 = [events countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v26 = v15;
        v16 = [NSArray arrayWithObjects:&v26 count:1];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3254779904;
        v21[2] = __79__UMEventRecorder__submitIndividualEvents_toURL_withOptions_completionHandler___block_invoke;
        v21[3] = &__block_descriptor_40_e8_32o_e5_v8__0l;
        v21[4] = v10;
        [(UMEventRecorder *)self _submitEvents:v16 toURL:l withOptions:options completionHandler:v21];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  global_queue = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __79__UMEventRecorder__submitIndividualEvents_toURL_withOptions_completionHandler___block_invoke_2;
  block[3] = &__block_descriptor_40_e8_32b_e5_v8__0l;
  block[4] = handler;
  dispatch_group_notify(v10, global_queue, block);
  dispatch_release(v10);
}

- (void)_scheduleEventSubmissionRetry
{
  if (![(UMEventRecorder *)self submissionPending])
  {
    [(UMEventRecorder *)self setSubmissionPending:1];
    v3 = os_transaction_create();
    [(UMEventRecorder *)self _retryInterval];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    global_queue = dispatch_get_global_queue(9, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = __48__UMEventRecorder__scheduleEventSubmissionRetry__block_invoke;
    v7[3] = &__block_descriptor_48_e8_32o40o_e5_v8__0l;
    v7[4] = self;
    v7[5] = v3;
    dispatch_after(v5, global_queue, v7);
  }
}

void __48__UMEventRecorder__scheduleEventSubmissionRetry__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSubmissionPending:0];
  [*(a1 + 32) submitEventsInBackground:1];
  v2 = *(a1 + 40);
}

- (BOOL)_updateRetryInformationForEvents:(id)events
{
  v23 = +[NSDate date];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [events countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v25;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(events);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      v10 = [v9 objectForKey:@"Local Path"];
      v11 = [objc_msgSend(v9 objectForKey:{@"Submission Attempts", "intValue"}];
      if (v11 < 4)
      {
        v19 = v11;
        v20 = [v9 mutableCopy];
        [v20 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (v19 + 1)), @"Submission Attempts"}];
        [v20 setObject:v23 forKey:@"Last Submission Attempt"];
        [v20 removeObjectForKey:@"Local Path"];
        v6 = 1;
        [v20 writeToFile:v10 atomically:1];
      }

      else if (unlink([v10 fileSystemRepresentation]))
      {
        v12 = __error();
        v22 = strerror(*v12);
        _log(v22, @"unable to remove %@: %s", v13, v14, v15, v16, v17, v18, v10);
      }
    }

    v5 = [events countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v5);
  return v6;
}

- (void)_removeEvents:(id)events
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [events countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(events);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) objectForKey:@"Local Path"];
        if (unlink([v8 fileSystemRepresentation]))
        {
          v9 = __error();
          v16 = strerror(*v9);
          _log(v16, @"unable to remove %@: %s", v10, v11, v12, v13, v14, v15, v8);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [events countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)_submitEvents:(id)events toURL:(id)l withOptions:(id)options completionHandler:(id)handler
{
  v11 = [(UMEventRecorder *)self _submissionBodyForEvents:?];
  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3254779904;
    v13[2] = __69__UMEventRecorder__submitEvents_toURL_withOptions_completionHandler___block_invoke;
    v13[3] = &__block_descriptor_72_e8_32o40o48o56o64b_e39_v24__0__NSHTTPURLResponse_8__NSError_16l;
    v13[4] = self;
    v13[5] = events;
    v13[6] = l;
    v13[7] = options;
    v13[8] = handler;
    [(UMEventSubmitter *)[(UMEventRecorder *)self submitter] submitEventData:v11 toURL:l withOptions:options completionHandler:v13];
  }

  else if ([events count] < 2)
  {
    [(UMEventRecorder *)self _removeEvents:events];
    v12 = *(handler + 2);

    v12(handler);
  }

  else
  {

    [(UMEventRecorder *)self _submitIndividualEvents:events toURL:l withOptions:options completionHandler:handler];
  }
}

__n128 __69__UMEventRecorder__submitEvents_toURL_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 8);
  block[1] = 3254779904;
  block[2] = __69__UMEventRecorder__submitEvents_toURL_withOptions_completionHandler___block_invoke_2;
  block[3] = &__block_descriptor_88_e8_32o40o48o56o64o72o80b_e5_v8__0l;
  block[4] = a3;
  block[5] = a2;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 64);
  dispatch_async(v5, block);
  return result;
}

id __69__UMEventRecorder__submitEvents_toURL_withOptions_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    _log(a1, @"POST failed: %@", a3, a4, a5, a6, a7, a8, *(a1 + 32));
LABEL_6:
    v25 = *(*(a1 + 80) + 16);

    return v25();
  }

  v9 = [*(a1 + 40) statusCode];
  if (v9 == 200)
  {
    v16 = [*(a1 + 56) count];
    _log(v16, @"%d events successfully submitted", v17, v18, v19, v20, v21, v22, v16);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
LABEL_5:
    [v23 _removeEvents:v24];
    goto LABEL_6;
  }

  v27 = v9;
  _log(v9, @"server rejected submission: %d", v10, v11, v12, v13, v14, v15, v9);
  _log(v28, @"response: %@", v29, v30, v31, v32, v33, v34, *(a1 + 40));
  if (v27 >= 500)
  {
    if ([*(a1 + 48) _updateRetryInformationForEvents:*(a1 + 56)])
    {
      [*(a1 + 48) _scheduleEventSubmissionRetry];
    }

    goto LABEL_6;
  }

  v35 = [*(a1 + 56) count];
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  if (v35 < 2)
  {
    goto LABEL_5;
  }

  v36 = *(a1 + 64);
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);

  return [v23 _submitIndividualEvents:v24 toURL:v36 withOptions:v37 completionHandler:v38];
}

- (double)_timeIntervalUntilRetry:(id)retry
{
  v4 = [objc_msgSend(retry objectForKey:{@"Submission Attempts", "intValue"}];
  if (v4 > 4)
  {
    v5 = +[NSDate distantFuture];
  }

  else
  {
    v5 = [objc_msgSend(retry objectForKey:{@"Last Submission Attempt", "dateByAddingTimeInterval:", (60 << v4)}];
  }

  [(NSDate *)v5 timeIntervalSinceNow];
  return result;
}

- (void)submitEventsInBackground:(BOOL)background withOptions:(id)options
{
  backgroundCopy = background;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __56__UMEventRecorder_submitEventsInBackground_withOptions___block_invoke;
  block[3] = &__block_descriptor_49_e8_32o40o_e5_v8__0l;
  if (background)
  {
    v5 = QOS_CLASS_BACKGROUND;
  }

  else
  {
    v5 = QOS_CLASS_UTILITY;
  }

  block[4] = options;
  block[5] = self;
  backgroundCopy2 = background;
  v6 = dispatch_block_create_with_qos_class(0, v5, 0, block);
  v7 = +[UMEventRecorder submitQueue];
  if (backgroundCopy)
  {
    dispatch_async(v7, v6);
  }

  else
  {
    dispatch_sync(v7, v6);
  }

  _Block_release(v6);
}

void __56__UMEventRecorder_submitEventsInBackground_withOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _log(a1, @"submitEventsInBackground running", a3, a4, a5, a6, a7, a8, v79);
  v9 = *(a1 + 32);
  v10 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [*(a1 + 40) droppedEvents]);
  [objc_msgSend(*(a1 + 40) "droppedEvents")];
  v11 = [*(a1 + 40) _eventDirectory];
  v12 = [*(a1 + 40) _legacyEventDirectory];
  if (*(a1 + 48) == 1)
  {
    v81 = os_transaction_create();
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [v13 mutableCopy];
    }

    else
    {
      v14 = [NSMutableDictionary dictionaryWithCapacity:1];
    }

    v9 = v14;
    [(NSMutableDictionary *)v14 setValue:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"IsBackgroundSubmission"];
  }

  else
  {
    v81 = 0;
  }

  v84 = 0;
  v20 = ![*(a1 + 32) objectForKey:@"forceEventResubmission"] || (objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKey:", @"forceEventResubmission"), "BOOLValue") & 1) == 0;
  logfunction(", 1, @"%s: Previously submitted events will %s resubmitted\n\n", v15, v16, v17, v18, v19, "[UMEventRecorder submitEventsInBackground:withOptions:]_block_invoke"");
  v21 = [*(a1 + 40) _copyUnsubmittedEventsFromDirectory:v11 skipEventsIfPreviouslySubmittedAndWithinBackoffTime:v20 previouslySubmittedEventSkipped:&v84 + 1];
  if (v21)
  {
    v28 = v21;
    if ([v21 count])
    {
      v29 = [v28 count];
      _log(v29, @"Found %lu unsubmitted events in update volume", v30, v31, v32, v33, v34, v35, v29);
      [(NSMutableArray *)v10 addObjectsFromArray:v28];
    }

    CFRelease(v28);
  }

  else
  {
    _log(0, @"Unable to check for unsubmitted events on the update volume", v22, v23, v24, v25, v26, v27, v80);
  }

  if (HIBYTE(v84) == 1)
  {
    _log(v36, @"Some events from the update volume were skipped since we had previously attempted to submit them and we are within the retry period", v37, v38, v39, v40, v41, v42, v80);
  }

  v43 = [*(a1 + 40) _copyUnsubmittedEventsFromDirectory:v12 skipEventsIfPreviouslySubmittedAndWithinBackoffTime:v20 previouslySubmittedEventSkipped:&v84];
  if (v43)
  {
    v50 = v43;
    if ([v43 count])
    {
      v51 = [v50 count];
      _log(v51, @"Found %lu unsubmitted events in data volume", v52, v53, v54, v55, v56, v57, v51);
      [(NSMutableArray *)v10 addObjectsFromArray:v50];
    }

    CFRelease(v50);
  }

  else
  {
    _log(0, @"Unable to check for events from the data volume", v44, v45, v46, v47, v48, v49, v80);
  }

  if (v84 == 1)
  {
    _log(v58, @"Some events from the data volume were skipped since we had previously attempted to submit them and we are within the retry period", v59, v60, v61, v62, v63, v64, v80);
  }

  if ((v84 & 0x100) != 0 || v84 == 1)
  {
    _log(v58, @"Continuing with submissions but scheduling retry for skipped events", v59, v60, v61, v62, v63, v64, v80);
    [*(a1 + 40) _scheduleEventSubmissionRetry];
  }

  v65 = dispatch_group_create();
  while ([(NSMutableArray *)v10 count])
  {
    v66 = [(NSMutableArray *)v10 objectAtIndex:0];
    v67 = [v66 objectForKey:@"Submission URL"];
    v68 = [NSURL URLWithString:v67];
    if (v68)
    {
      v75 = v68;
      v76 = +[NSMutableArray array];
      v77 = [v66 objectForKey:@"Install Id"];
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3254779904;
      v83[2] = __56__UMEventRecorder_submitEventsInBackground_withOptions___block_invoke_2;
      v83[3] = &__block_descriptor_56_e8_32o40o48o_e29_v32__0__NSDictionary_8Q16_B24l;
      v83[4] = v77;
      v83[5] = v67;
      v83[6] = v76;
      [(NSMutableArray *)v10 enumerateObjectsUsingBlock:v83];
      dispatch_group_enter(v65);
      v78 = *(a1 + 40);
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3254779904;
      v82[2] = __56__UMEventRecorder_submitEventsInBackground_withOptions___block_invoke_711;
      v82[3] = &__block_descriptor_40_e8_32o_e5_v8__0l;
      v82[4] = v65;
      [v78 _submitEvents:v76 toURL:v75 withOptions:v9 completionHandler:v82];
      [(NSMutableArray *)v10 removeObjectsInArray:v76];
    }

    else
    {
      _log(0, @"invalid url string %@", v69, v70, v71, v72, v73, v74, v67);
      [(NSMutableArray *)v10 removeObjectAtIndex:0];
    }
  }

  dispatch_group_wait(v65, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 48) == 1)
  {
  }

  dispatch_release(v65);
}

id __56__UMEventRecorder_submitEventsInBackground_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) isEqualToString:{objc_msgSend(a2, "objectForKey:", @"Install Id"}];
  if (result)
  {
    result = [*(a1 + 40) isEqualToString:{objc_msgSend(a2, "objectForKey:", @"Submission URL"}];
    if (result)
    {
      v5 = *(a1 + 48);

      return [v5 addObject:a2];
    }
  }

  return result;
}

- (void)submitEventsWithUpdateOptions:(id)options
{
  if (options)
  {
    v5 = [options objectForKey:@"SocksProxySettings"];
    if (v5)
    {
      v6 = v5;
      v7 = [NSMutableDictionary dictionaryWithCapacity:2];
      [(NSMutableDictionary *)v7 setObject:v6 forKey:@"ProxySettings"];
    }

    else
    {
      v7 = 0;
    }

    if ([options objectForKey:@"forceEventResubmission"])
    {
      -[NSMutableDictionary setObject:forKey:](v7, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(options objectForKey:{@"forceEventResubmission", "BOOLValue"}]), @"forceEventResubmission");
    }
  }

  else
  {
    v7 = 0;
  }

  [(UMEventRecorder *)self submitEventsInBackground:0 withOptions:v7];
}

- (id)_loadUnsubmittedEvents
{
  v3 = +[NSMutableArray array];
  _eventDirectory = [(UMEventRecorder *)self _eventDirectory];
  _legacyEventDirectory = [(UMEventRecorder *)self _legacyEventDirectory];
  _log(_legacyEventDirectory, @"Loading unsubmitted events from update volume", v6, v7, v8, v9, v10, v11, v60);
  v12 = [(UMEventRecorder *)self _copyUnsubmittedEventsFromDirectory:_eventDirectory skipEventsIfPreviouslySubmittedAndWithinBackoffTime:0 previouslySubmittedEventSkipped:0];
  if (v12)
  {
    v19 = v12;
    if ([v12 count])
    {
      v26 = [v19 count];
      _log(v26, @"Found %lu unsubmitted events in update volume", v27, v28, v29, v30, v31, v32, v26);
      [v3 addObjectsFromArray:v19];
    }

    else
    {
      _log(0, @"No unsubmitted events found in update volume", v20, v21, v22, v23, v24, v25, v61);
    }

    CFRelease(v19);
  }

  else
  {
    _log(0, @"Unable to determine state of unsubmitted events(if any) on update volume", v13, v14, v15, v16, v17, v18, v61);
  }

  v33 = [(UMEventRecorder *)self _copyUnsubmittedEventsFromDirectory:_legacyEventDirectory skipEventsIfPreviouslySubmittedAndWithinBackoffTime:0 previouslySubmittedEventSkipped:0];
  if (v33)
  {
    v40 = v33;
    if ([v33 count])
    {
      v47 = [v40 count];
      _log(v47, @"Found %lu unsubmitted events in data volume", v48, v49, v50, v51, v52, v53, v47);
      [v3 addObjectsFromArray:v40];
    }

    else
    {
      _log(0, @"No unsubmitted events found in data volume", v41, v42, v43, v44, v45, v46, v62);
    }

    CFRelease(v40);
  }

  else
  {
    _log(0, @"Unable to determine state of unsubmitted events(if any) on data volume", v34, v35, v36, v37, v38, v39, v62);
  }

  [v3 count];
  logfunction(", 1, @"[%s] total numUnsubmittedEvents = %lu\n\n", v54, v55, v56, v57, v58, "[UMEventRecorder _loadUnsubmittedEvents]"");
  return v3;
}

- (unint64_t)numUnsubmittedEvents
{
  _loadUnsubmittedEvents = [(UMEventRecorder *)self _loadUnsubmittedEvents];

  return [_loadUnsubmittedEvents count];
}

- (void)commitMetadataToPersistentStorage:(id)storage
{
  if ([(UMEventRecorder *)self uuid]&& [(UMEventRecorder *)self baseServerURL])
  {
    v5 = objc_opt_new();
    [v5 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self uuid] forKey:@"ota-uuid"];
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self baseServerURL] forKey:@"ota-submission-url"];
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self targetOSVersion] forKey:@"ota-os-version"];
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self _currentOSVersion] forKey:@"ota-original-os-version"];
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self _currentBaseOSVersion] forKey:@"ota-original-base-os-version"];
    -[UMEventRecorder _setNvramValue:forKey:](self, "_setNvramValue:forKey:", [v5 stringFromNumber:{-[UMEventRecorder installTonight](self, "installTonight")}], @"ota-install-tonight");
    [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self context] forKey:@"ota-context"];
    if ([(UMEventRecorder *)self brainVersion])
    {
      [(UMEventRecorder *)self _setNvramValue:[(UMEventRecorder *)self brainVersion] forKey:@"ota-brain-version"];
    }

    -[UMEventRecorder _setNvramValue:forKey:](self, "_setNvramValue:forKey:", [storage valueForKey:@"controllerVersion"], @"ota-controllerVersion");
    if ([storage valueForKey:@"updateType"])
    {
      -[UMEventRecorder _setNvramValue:forKey:](self, "_setNvramValue:forKey:", [storage valueForKey:@"updateType"], @"ota-updateType");
    }

    if ([storage valueForKey:@"supervised"])
    {
      -[UMEventRecorder _setNvramValue:forKey:](self, "_setNvramValue:forKey:", [storage valueForKey:@"supervised"], @"supervised");
    }

    [(UMEventRecorder *)self _setNvramValue:@"IONVRAM-FORCESYNCNOW-PROPERTY" forKey:@"IONVRAM-FORCESYNCNOW-PROPERTY"];
  }
}

@end