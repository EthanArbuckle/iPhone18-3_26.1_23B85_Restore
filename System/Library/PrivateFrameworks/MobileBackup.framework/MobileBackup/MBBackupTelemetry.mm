@interface MBBackupTelemetry
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (MBBackupTelemetry)init;
- (id)_serializedWiFiQualityMeasurementFromInterface:(id)interface;
- (id)topDomainsWithMissingEncryptionKeys;
- (void)_countMissingEncryptionKeyForFile:(id)file;
- (void)_startCollectingWiFiQualityMeasurements;
- (void)_stopCollectingWiFiQualityMeasurements;
- (void)countUploadedFileWithSize:(unint64_t)size;
@end

@implementation MBBackupTelemetry

- (MBBackupTelemetry)init
{
  v4.receiver = self;
  v4.super_class = MBBackupTelemetry;
  v2 = [(MBBackupTelemetry *)&v4 init];
  if (v2)
  {
    v2->_telemetryID = arc4random_uniform(0xFFFFu);
    v2->_allowedCellularCost = 0;
    v2->_snapshotType = -1;
    v2->_snapshotFormat = -1;
    v2->_previousSnapshotFormat = -1;
  }

  return v2;
}

- (id)topDomainsWithMissingEncryptionKeys
{
  v2 = [(NSMutableDictionary *)self->_domainsWithMissingEncryptionKeys keysSortedByValueUsingComparator:&stru_1003BCA58];
  v3 = [v2 count];
  if (v3 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 subarrayWithRange:{0, v4}];

  return v5;
}

- (void)countUploadedFileWithSize:(unint64_t)size
{
  obj = self;
  objc_sync_enter(obj);
  uploadedSize = [(MBBackupTelemetry *)obj uploadedSize];
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [uploadedSize unsignedLongLongValue] + size);
  [(MBBackupTelemetry *)obj setUploadedSize:v5];

  uploadedFileCount = [(MBBackupTelemetry *)obj uploadedFileCount];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [uploadedFileCount unsignedLongLongValue] + 1);
  [(MBBackupTelemetry *)obj setUploadedFileCount:v7];

  objc_sync_exit(obj);
}

- (void)_countMissingEncryptionKeyForFile:(id)file
{
  fileCopy = file;
  protectionClass = [fileCopy protectionClass];
  if (protectionClass == 2)
  {
    classBFilesMissingEncryptionKeys = [(MBBackupTelemetry *)self classBFilesMissingEncryptionKeys];
    v8 = [NSNumber numberWithUnsignedInt:[classBFilesMissingEncryptionKeys unsignedIntValue]+ 1];
    [(MBBackupTelemetry *)self setClassBFilesMissingEncryptionKeys:v8];
    goto LABEL_5;
  }

  v6 = protectionClass;
  if (protectionClass == 1)
  {
    classBFilesMissingEncryptionKeys = [(MBBackupTelemetry *)self classAFilesMissingEncryptionKeys];
    v8 = [NSNumber numberWithUnsignedInt:[classBFilesMissingEncryptionKeys unsignedIntValue]+ 1];
    [(MBBackupTelemetry *)self setClassAFilesMissingEncryptionKeys:v8];
LABEL_5:

    goto LABEL_6;
  }

  if (!MBIsInternalInstall() || dword_100421638 || atomic_fetch_add_explicit(&dword_100421638, 1u, memory_order_relaxed))
  {
    goto LABEL_7;
  }

  classBFilesMissingEncryptionKeys = MBGetDefaultLog();
  if (os_log_type_enabled(classBFilesMissingEncryptionKeys, OS_LOG_TYPE_FAULT))
  {
    domain = [fileCopy domain];
    name = [domain name];
    relativePath = [fileCopy relativePath];
    *buf = 67109634;
    v24 = v6;
    v25 = 2112;
    v26 = name;
    v27 = 2112;
    v28 = relativePath;
    _os_log_impl(&_mh_execute_header, classBFilesMissingEncryptionKeys, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Unexpected pc:%d for file missing encryption key:%@ %@", buf, 0x1Cu);

    domain2 = [fileCopy domain];
    name2 = [domain2 name];
    [fileCopy relativePath];
    v22 = v21 = name2;
    v20 = v6;
    _MBLog();
  }

LABEL_6:

LABEL_7:
  domain3 = [fileCopy domain];
  name3 = [domain3 name];

  domainsWithMissingEncryptionKeys = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
  v12 = [domainsWithMissingEncryptionKeys objectForKeyedSubscript:name3];

  if (v12)
  {
    domainsWithMissingEncryptionKeys3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 unsignedIntValue] + 1);
    domainsWithMissingEncryptionKeys2 = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
    [domainsWithMissingEncryptionKeys2 setObject:domainsWithMissingEncryptionKeys3 forKeyedSubscript:name3];
  }

  else
  {
    domainsWithMissingEncryptionKeys3 = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
    [domainsWithMissingEncryptionKeys3 setObject:&off_1003E0D08 forKeyedSubscript:name3];
  }
}

- (void)_startCollectingWiFiQualityMeasurements
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007899C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  if (qword_100421648 != -1)
  {
    dispatch_once(&qword_100421648, block);
  }

  v3 = objc_opt_new();
  [v3 activate];
  v4 = [[NSMutableArray alloc] initWithCapacity:30];
  [(MBBackupTelemetry *)self setWifiQuality:v4];

  v5 = [(MBBackupTelemetry *)self _serializedWiFiQualityMeasurementFromInterface:v3];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100421640);
  [(MBBackupTelemetry *)self setWifiQualityMeasurementTimer:v6];

  wifiQualityMeasurementTimer = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(wifiQualityMeasurementTimer, v8, 0xDF8475800uLL, 0);

  wifiQualityMeasurementTimer2 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100078A48;
  handler[3] = &unk_1003BC060;
  handler[4] = self;
  v10 = v3;
  v25 = v10;
  dispatch_source_set_event_handler(wifiQualityMeasurementTimer2, handler);

  v11 = dispatch_group_create();
  [(MBBackupTelemetry *)self setWifiQualityGroup:v11];

  wifiQualityGroup = [(MBBackupTelemetry *)self wifiQualityGroup];
  dispatch_group_enter(wifiQualityGroup);

  wifiQualityMeasurementTimer3 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100078AE0;
  v20 = &unk_1003BC2E0;
  selfCopy = self;
  v22 = v5;
  v23 = v10;
  v14 = v10;
  v15 = v5;
  dispatch_source_set_cancel_handler(wifiQualityMeasurementTimer3, &v17);

  v16 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer:v17];
  dispatch_resume(v16);
}

- (void)_stopCollectingWiFiQualityMeasurements
{
  wifiQualityMeasurementTimer = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];

  if (wifiQualityMeasurementTimer)
  {
    wifiQualityMeasurementTimer2 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
    dispatch_source_cancel(wifiQualityMeasurementTimer2);

    wifiQualityGroup = [(MBBackupTelemetry *)self wifiQualityGroup];
    v6 = dispatch_time(0, 10000000000);
    v7 = dispatch_group_wait(wifiQualityGroup, v6);

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v11 = 10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=cloud-backup= Timed out after %ld seconds when cancelling WiFi quality measurements", buf, 0xCu);
        v9 = 10;
        _MBLog();
      }
    }

    [(MBBackupTelemetry *)self setWifiQualityMeasurementTimer:0, v9];
  }
}

- (id)_serializedWiFiQualityMeasurementFromInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = +[NSDateFormatter ISO8601Formatter];
  v5 = +[NSDate now];
  v6 = [v4 stringFromDate:v5];

  rSSI = [interfaceCopy RSSI];
  v8 = rSSI - [interfaceCopy noise];
  [interfaceCopy txRate];
  v10 = v9;

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v15 = rSSI;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=cloud-backup= WiFi quality RSSI:%ld SNR:%ld txRate:%.3f", buf, 0x20u);
    _MBLog();
  }

  v12 = [NSString stringWithFormat:@"%@|%ld|%ld|%.3f", v6, rSSI, v8, v10];

  return v12;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart
{
  backupOnCellularSupport = self->_networkConnectivityAtStart.backupOnCellularSupport;
  v3 = *&self->_networkConnectivityAtStart.isOnWiFi;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish
{
  backupOnCellularSupport = self->_networkConnectivityAtFinish.backupOnCellularSupport;
  v3 = *&self->_networkConnectivityAtFinish.isOnWiFi;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

@end