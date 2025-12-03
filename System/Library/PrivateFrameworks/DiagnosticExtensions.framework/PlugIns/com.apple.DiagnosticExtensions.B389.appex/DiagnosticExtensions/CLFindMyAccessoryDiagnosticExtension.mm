@interface CLFindMyAccessoryDiagnosticExtension
- (BOOL)isValidProductId:(int64_t)id;
- (CLFindMyAccessoryDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)parameters;
- (id)defaultDateFormatter;
- (id)logDirectory;
- (id)outputURLWithSuffix:(id)suffix forDevice:(id)device;
- (void)checkForCompletion;
- (void)dumpLogOfType:(unint64_t)type fromDevice:(id)device;
- (void)dumpLogsForBeacon:(id)beacon;
- (void)fetchAllBeacons;
- (void)fetchFirmwareVersionForBeacon:(id)beacon;
- (void)findMyAccessoryManager:(id)manager didDumpLogData:(id)data ofType:(unint64_t)type fromDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchFirmwareVersion:(id)version fromDevice:(id)device withError:(id)error;
- (void)saveSummaryForDevice:(id)device withFirmwareVersionData:(id)data;
@end

@implementation CLFindMyAccessoryDiagnosticExtension

- (CLFindMyAccessoryDiagnosticExtension)init
{
  v18.receiver = self;
  v18.super_class = CLFindMyAccessoryDiagnosticExtension;
  v2 = [(CLFindMyAccessoryDiagnosticExtension *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.DiagnosticExtension.FindMyAccessoryDiagnosticExtension", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    completionSemaphore = v2->_completionSemaphore;
    v2->_completionSemaphore = v5;

    v7 = [[CLFindMyAccessoryManager alloc] initWithDelegate:v2 delegateQueue:v2->_queue];
    findMyAccessoryManager = v2->_findMyAccessoryManager;
    v2->_findMyAccessoryManager = v7;

    v9 = objc_alloc_init(SPBeaconManager);
    beaconManager = v2->_beaconManager;
    v2->_beaconManager = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    beaconMap = v2->_beaconMap;
    v2->_beaconMap = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingLogDumps = v2->_pendingLogDumps;
    v2->_pendingLogDumps = v13;

    v15 = objc_alloc_init(NSMutableArray);
    pendingFirmwareFetches = v2->_pendingFirmwareFetches;
    v2->_pendingFirmwareFetches = v15;
  }

  return v2;
}

- (id)defaultDateFormatter
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];

  return v2;
}

- (id)logDirectory
{
  logDirectory = self->_logDirectory;
  if (!logDirectory)
  {
    v4 = +[NSFileManager defaultManager];
    temporaryDirectory = [v4 temporaryDirectory];

    defaultDateFormatter = [(CLFindMyAccessoryDiagnosticExtension *)self defaultDateFormatter];
    v7 = [defaultDateFormatter stringFromDate:self->_startDate];

    v8 = [NSString stringWithFormat:@"findMyAccessoryManager_device_logs_%@", v7];
    v9 = [temporaryDirectory URLByAppendingPathComponent:v8];
    v10 = self->_logDirectory;
    self->_logDirectory = v9;

    logDirectory = self->_logDirectory;
  }

  return logDirectory;
}

- (BOOL)isValidProductId:(int64_t)id
{
  if (_os_feature_enabled_impl())
  {
    v4 = 22034;
  }

  else
  {
    v4 = 21762;
  }

  return id == v4;
}

- (void)fetchAllBeacons
{
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v3 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian TTR extension fetching all beacons}", buf, 0x12u);
  }

  beaconManager = self->_beaconManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001120;
  v5[3] = &unk_100008248;
  v5[4] = self;
  [(SPBeaconManager *)beaconManager allBeaconsOfType:SPBeaconTypeDurian completion:v5];
}

- (void)fetchFirmwareVersionForBeacon:(id)beacon
{
  beaconCopy = beacon;
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v5 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    identifier = [beaconCopy identifier];
    v12 = 68289282;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian Fetching firmware version from beacon, beaconUUID:%{public, location:escape_only}@}", &v12, 0x1Cu);
  }

  findMyAccessoryManager = self->_findMyAccessoryManager;
  identifier2 = [beaconCopy identifier];
  [(CLFindMyAccessoryManager *)findMyAccessoryManager fetchFirmwareVersionFromDevice:identifier2];

  pendingFirmwareFetches = self->_pendingFirmwareFetches;
  identifier3 = [beaconCopy identifier];
  [(NSMutableArray *)pendingFirmwareFetches addObject:identifier3];
}

- (void)dumpLogOfType:(unint64_t)type fromDevice:(id)device
{
  deviceCopy = device;
  [(CLFindMyAccessoryManager *)self->_findMyAccessoryManager dumpLogDataOfType:type fromDevice:deviceCopy];
  v6 = [(NSMutableDictionary *)self->_pendingLogDumps objectForKey:deviceCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(NSMutableArray);
  }

  v9 = v8;

  v10 = [NSNumber numberWithUnsignedInteger:type];
  [v9 addObject:v10];

  [(NSMutableDictionary *)self->_pendingLogDumps setObject:v9 forKey:deviceCopy];
}

- (void)dumpLogsForBeacon:(id)beacon
{
  beaconCopy = beacon;
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v5 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    identifier = [beaconCopy identifier];
    v12[0] = 68289283;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension requesting log dump from beacon, beaconUUID:%{private, location:escape_only}@}", v12, 0x1Cu);
  }

  identifier2 = [beaconCopy identifier];
  [(CLFindMyAccessoryDiagnosticExtension *)self dumpLogOfType:0 fromDevice:identifier2];

  identifier3 = [beaconCopy identifier];
  [(CLFindMyAccessoryDiagnosticExtension *)self dumpLogOfType:1 fromDevice:identifier3];

  identifier4 = [beaconCopy identifier];
  [(CLFindMyAccessoryDiagnosticExtension *)self dumpLogOfType:2 fromDevice:identifier4];

  identifier5 = [beaconCopy identifier];
  [(CLFindMyAccessoryDiagnosticExtension *)self dumpLogOfType:3 fromDevice:identifier5];
}

- (void)checkForCompletion
{
  if (![(NSMutableDictionary *)self->_pendingLogDumps count]&& ![(NSMutableArray *)self->_pendingFirmwareFetches count])
  {
    if (qword_10000D0B0 != -1)
    {
      sub_100002DF0();
    }

    v3 = qword_10000D0B8;
    if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 68289026;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension completed dumping logs}", v4, 0x12u);
    }

    dispatch_semaphore_signal(self->_completionSemaphore);
  }
}

- (id)outputURLWithSuffix:(id)suffix forDevice:(id)device
{
  deviceCopy = device;
  beaconMap = self->_beaconMap;
  suffixCopy = suffix;
  v9 = [(NSMutableDictionary *)beaconMap objectForKey:deviceCopy];
  name = [v9 name];
  v11 = [name stringByReplacingOccurrencesOfString:@" " withString:@"-"];

  v12 = [(NSMutableDictionary *)self->_beaconMap objectForKey:deviceCopy];
  productId = [v12 productId];

  if (productId)
  {
    v14 = [(NSMutableDictionary *)self->_beaconMap objectForKey:deviceCopy];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%X", [v14 productId]);
  }

  else
  {
    v15 = &stru_1000083C8;
  }

  uUIDString = [deviceCopy UUIDString];
  v17 = [NSString stringWithFormat:@"%@_%@_%@", v11, v15, uUIDString];

  logDirectory = [(CLFindMyAccessoryDiagnosticExtension *)self logDirectory];
  v19 = [logDirectory URLByAppendingPathComponent:v17];

  v20 = +[NSFileManager defaultManager];
  path = [v19 path];
  [v20 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  uUIDString2 = [deviceCopy UUIDString];
  suffixCopy = [NSString stringWithFormat:@"%@_%@", uUIDString2, suffixCopy];

  v24 = [v19 URLByAppendingPathComponent:suffixCopy];

  return v24;
}

- (void)saveSummaryForDevice:(id)device withFirmwareVersionData:(id)data
{
  deviceCopy = device;
  beaconMap = self->_beaconMap;
  dataCopy = data;
  v9 = [(NSMutableDictionary *)beaconMap objectForKey:deviceCopy];
  v10 = [CLFindMyAccessoryFirmwareVersion alloc];
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];

  v13 = [v10 initWithBytes:bytes length:v12];
  if (([v13 debugVariant] & 1) == 0)
  {
    if (qword_10000D0B0 != -1)
    {
      sub_100002DF0();
    }

    v14 = qword_10000D0B8;
    if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      if ([v13 debugVariant])
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = deviceCopy;
      v33 = 2082;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian TTR extension log dump on debug variants only, device:%{private, location:escape_only}@, debugVariant:%{public, location:escape_only}s}", buf, 0x26u);
    }

    if (qword_10000D0B0 != -1)
    {
      sub_100002E04();
    }

    v17 = qword_10000D0B8;
    if (os_signpost_enabled(qword_10000D0B8))
    {
      v18 = v17;
      if ([v13 debugVariant])
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = deviceCopy;
      v33 = 2082;
      v34 = v19;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian TTR extension log dump on debug variants only", "{msg%{public}.0s:#durian TTR extension log dump on debug variants only, device:%{private, location:escape_only}@, debugVariant:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }

  v20 = objc_alloc_init(NSMutableString);
  name = [v9 name];
  [v20 appendFormat:@"Beacon Name: %@\n", name];

  vanBurenVersion = [v13 vanBurenVersion];
  [v20 appendFormat:@"VB Version: %@\n", vanBurenVersion];

  rtKitVersion = [v13 rtKitVersion];
  [v20 appendFormat:@"RTKit Version: %@\n", rtKitVersion];

  specificationVersion = [v13 specificationVersion];
  [v20 appendFormat:@"CL Spec Version: %@\n", specificationVersion];

  [v20 appendFormat:@"Rose AP Version: %lu\n", objc_msgSend(v13, "roseAPVersion")];
  [v20 appendFormat:@"Rose DSP Version: %lu\n", objc_msgSend(v13, "roseDSPVersion")];
  [v20 appendFormat:@"Hardware Version: %lu\n", objc_msgSend(v13, "hardwareVersion")];
  [v20 appendFormat:@"Calibration Data Version: %lu\n", objc_msgSend(v13, "calibrationDataVersion")];
  if ([v13 debugVariant])
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  [v20 appendFormat:@"Debug Variant: %s\n", v25];
  v26 = [(CLFindMyAccessoryDiagnosticExtension *)self outputURLWithSuffix:@"summary.txt" forDevice:deviceCopy];
  [v20 writeToURL:v26 atomically:1 encoding:4 error:0];
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  managerCopy = manager;
  errorCopy = error;
  deviceCopy = device;
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v11 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 68289539;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = deviceCopy;
    v17 = 2113;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension failed to dump logs, device:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", v12, 0x26u);
  }

  if (deviceCopy)
  {
    [(NSMutableDictionary *)self->_pendingLogDumps removeObjectForKey:deviceCopy];
  }

  [(CLFindMyAccessoryDiagnosticExtension *)self checkForCompletion];
}

- (void)findMyAccessoryManager:(id)manager didFetchFirmwareVersion:(id)version fromDevice:(id)device withError:(id)error
{
  versionCopy = version;
  deviceCopy = device;
  errorCopy = error;
  [(NSMutableArray *)self->_pendingFirmwareFetches removeObject:deviceCopy];
  if (errorCopy)
  {
    if (qword_10000D0B0 != -1)
    {
      sub_100002DF0();
    }

    v12 = qword_10000D0B8;
    if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_ERROR))
    {
      v18 = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2113;
      v23 = deviceCopy;
      v24 = 2113;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian TTR extension failed to fetch firmware, device:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", &v18, 0x26u);
    }

    if (qword_10000D0B0 != -1)
    {
      sub_100002E04();
    }

    v13 = qword_10000D0B8;
    if (os_signpost_enabled(qword_10000D0B8))
    {
      v18 = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2113;
      v23 = deviceCopy;
      v24 = 2113;
      v25 = errorCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian TTR extension failed to fetch firmware", "{msg%{public}.0s:#durian TTR extension failed to fetch firmware, device:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", &v18, 0x26u);
    }

    [(CLFindMyAccessoryDiagnosticExtension *)self checkForCompletion];
  }

  else
  {
    v14 = [(CLFindMyAccessoryDiagnosticExtension *)self outputURLWithSuffix:@"firmware_version.bin" forDevice:deviceCopy];
    [versionCopy writeToURL:v14 atomically:1];
    [(CLFindMyAccessoryDiagnosticExtension *)self saveSummaryForDevice:deviceCopy withFirmwareVersionData:versionCopy];
    if (qword_10000D0B0 != -1)
    {
      sub_100002DF0();
    }

    v15 = qword_10000D0B8;
    if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      path = [v14 path];
      v18 = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2113;
      v23 = deviceCopy;
      v24 = 2113;
      v25 = path;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension fetched firmware, device:%{private, location:escape_only}@, firmware_path:%{private, location:escape_only}@}", &v18, 0x26u);
    }

    [(CLFindMyAccessoryDiagnosticExtension *)self checkForCompletion];
  }
}

- (void)findMyAccessoryManager:(id)manager didDumpLogData:(id)data ofType:(unint64_t)type fromDevice:(id)device withError:(id)error
{
  dataCopy = data;
  deviceCopy = device;
  errorCopy = error;
  v14 = [(NSMutableDictionary *)self->_pendingLogDumps objectForKey:deviceCopy];
  v15 = [NSNumber numberWithUnsignedInteger:type];
  [v14 removeObject:v15];

  if (![v14 count])
  {
    [(NSMutableDictionary *)self->_pendingLogDumps removeObjectForKey:deviceCopy];
  }

  if (type < 4)
  {
    v16 = *(&off_1000082A8 + type);
    if ([dataCopy length])
    {
      if (errorCopy)
      {
        v16 = [@"partial_" stringByAppendingString:v16];
      }

      v17 = [(CLFindMyAccessoryDiagnosticExtension *)self outputURLWithSuffix:v16 forDevice:deviceCopy];
      [dataCopy writeToURL:v17 atomically:1];
      if (qword_10000D0B0 != -1)
      {
        sub_100002DF0();
      }

      v18 = qword_10000D0B8;
      if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
        v20 = [dataCopy length];
        [v17 path];
        v21 = v39 = v16;
        *buf = 68290307;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2113;
        v45 = deviceCopy;
        v46 = 2049;
        v47 = v20;
        v48 = 2049;
        typeCopy6 = type;
        v50 = 2113;
        v51 = v21;
        v52 = 2113;
        v53 = errorCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension collected log, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu, log_path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x44u);

        v16 = v39;
      }
    }

    else
    {
      if (errorCopy)
      {
        if (qword_10000D0B0 != -1)
        {
          sub_100002DF0();
        }

        v24 = qword_10000D0B8;
        if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
          v26 = v16;
          v27 = v25;
          *buf = 68290051;
          v41 = 0;
          v42 = 2082;
          v43 = "";
          v44 = 2113;
          v45 = deviceCopy;
          v46 = 2049;
          v47 = [dataCopy length];
          v48 = 2049;
          typeCopy6 = type;
          v50 = 2113;
          v51 = errorCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian TTR dump logs failed, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu, error:%{private, location:escape_only}@}", buf, 0x3Au);

          v16 = v26;
        }

        if (qword_10000D0B0 != -1)
        {
          sub_100002E04();
        }

        v28 = qword_10000D0B8;
        if (os_signpost_enabled(qword_10000D0B8))
        {
          v29 = v28;
          v30 = v16;
          v31 = v29;
          v32 = [dataCopy length];
          *buf = 68290051;
          v41 = 0;
          v42 = 2082;
          v43 = "";
          v44 = 2113;
          v45 = deviceCopy;
          v46 = 2049;
          v47 = v32;
          v48 = 2049;
          typeCopy6 = type;
          v50 = 2113;
          v51 = errorCopy;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian TTR dump logs failed", "{msg%{public}.0s:#durian TTR dump logs failed, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu, error:%{private, location:escape_only}@}", buf, 0x3Au);

          v16 = v30;
        }

        goto LABEL_12;
      }

      if (qword_10000D0B0 != -1)
      {
        sub_100002DF0();
      }

      v33 = qword_10000D0B8;
      if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
        v35 = v16;
        v36 = v34;
        *buf = 68290051;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2113;
        v45 = deviceCopy;
        v46 = 2049;
        v47 = [dataCopy length];
        v48 = 2049;
        typeCopy6 = type;
        v50 = 2113;
        v51 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian TTR dump logs empty, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu, error:%{private, location:escape_only}@}", buf, 0x3Au);

        v16 = v35;
      }

      if (qword_10000D0B0 != -1)
      {
        sub_100002E04();
      }

      v37 = qword_10000D0B8;
      if (!os_signpost_enabled(qword_10000D0B8))
      {
        goto LABEL_12;
      }

      v17 = v37;
      v38 = [dataCopy length];
      *buf = 68290051;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2113;
      v45 = deviceCopy;
      v46 = 2049;
      v47 = v38;
      v48 = 2049;
      typeCopy6 = type;
      v50 = 2113;
      v51 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian TTR dump logs empty", "{msg%{public}.0s:#durian TTR dump logs empty, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu, error:%{private, location:escape_only}@}", buf, 0x3Au);
    }

LABEL_12:
    [(CLFindMyAccessoryDiagnosticExtension *)self checkForCompletion];

    goto LABEL_18;
  }

  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v22 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
  {
    v23 = v22;
    *buf = 68289795;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 2113;
    v45 = deviceCopy;
    v46 = 2049;
    v47 = [dataCopy length];
    v48 = 2049;
    typeCopy6 = type;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension collected log of unknown type, device:%{private, location:escape_only}@, size:%{private}lu, type:%{private}lu}", buf, 0x30u);
  }

  [(CLFindMyAccessoryDiagnosticExtension *)self checkForCompletion];
LABEL_18:
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v5 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2113;
    v27[0] = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian TTR extension called, parameters:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v6 = +[NSDate date];
  startDate = self->_startDate;
  self->_startDate = v6;

  [(CLFindMyAccessoryDiagnosticExtension *)self fetchAllBeacons];
  v8 = dispatch_time(0, 420000000000);
  if (dispatch_semaphore_wait(self->_completionSemaphore, v8))
  {
    if (qword_10000D0B0 != -1)
    {
      sub_100002E04();
    }

    v9 = qword_10000D0B8;
    if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_ERROR))
    {
      pendingLogDumps = self->_pendingLogDumps;
      v11 = v9;
      LODWORD(pendingLogDumps) = [(NSMutableDictionary *)pendingLogDumps count];
      v12 = [(NSMutableArray *)self->_pendingFirmwareFetches count];
      *buf = 68289538;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 1026;
      LODWORD(v27[0]) = pendingLogDumps;
      WORD2(v27[0]) = 1026;
      *(v27 + 6) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian TTR extension log dump timed out, pendingLogDumpsCount:%{public}d, pendingFirmwareFetches:%{public}d}", buf, 0x1Eu);
    }

    if (qword_10000D0B0 != -1)
    {
      sub_100002E04();
    }

    v13 = qword_10000D0B8;
    if (os_signpost_enabled(qword_10000D0B8))
    {
      v14 = self->_pendingLogDumps;
      v15 = v13;
      LODWORD(v14) = [(NSMutableDictionary *)v14 count];
      v16 = [(NSMutableArray *)self->_pendingFirmwareFetches count];
      *buf = 68289538;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 1026;
      LODWORD(v27[0]) = v14;
      WORD2(v27[0]) = 1026;
      *(v27 + 6) = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian TTR extension log dump timed out", "{msg%{public}.0s:#durian TTR extension log dump timed out, pendingLogDumpsCount:%{public}d, pendingFirmwareFetches:%{public}d}", buf, 0x1Eu);
    }
  }

  logDirectory = [(CLFindMyAccessoryDiagnosticExtension *)self logDirectory];
  v18 = [DEAttachmentItem attachmentWithPathURL:logDirectory];
  v21 = v18;
  v19 = [NSArray arrayWithObjects:&v21 count:1];

  return v19;
}

@end