@interface MBBackupTelemetry
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (MBBackupTelemetry)init;
- (id)_serializedWiFiQualityMeasurementFromInterface:(id)a3;
- (id)topDomainsWithMissingEncryptionKeys;
- (void)_countMissingEncryptionKeyForFile:(id)a3;
- (void)_startCollectingWiFiQualityMeasurements;
- (void)_stopCollectingWiFiQualityMeasurements;
- (void)countUploadedFileWithSize:(unint64_t)a3;
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

- (void)countUploadedFileWithSize:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(MBBackupTelemetry *)obj uploadedSize];
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 unsignedLongLongValue] + a3);
  [(MBBackupTelemetry *)obj setUploadedSize:v5];

  v6 = [(MBBackupTelemetry *)obj uploadedFileCount];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 unsignedLongLongValue] + 1);
  [(MBBackupTelemetry *)obj setUploadedFileCount:v7];

  objc_sync_exit(obj);
}

- (void)_countMissingEncryptionKeyForFile:(id)a3
{
  v4 = a3;
  v5 = [v4 protectionClass];
  if (v5 == 2)
  {
    v7 = [(MBBackupTelemetry *)self classBFilesMissingEncryptionKeys];
    v8 = [NSNumber numberWithUnsignedInt:[v7 unsignedIntValue]+ 1];
    [(MBBackupTelemetry *)self setClassBFilesMissingEncryptionKeys:v8];
    goto LABEL_5;
  }

  v6 = v5;
  if (v5 == 1)
  {
    v7 = [(MBBackupTelemetry *)self classAFilesMissingEncryptionKeys];
    v8 = [NSNumber numberWithUnsignedInt:[v7 unsignedIntValue]+ 1];
    [(MBBackupTelemetry *)self setClassAFilesMissingEncryptionKeys:v8];
LABEL_5:

    goto LABEL_6;
  }

  if (!MBIsInternalInstall() || dword_100421638 || atomic_fetch_add_explicit(&dword_100421638, 1u, memory_order_relaxed))
  {
    goto LABEL_7;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v15 = [v4 domain];
    v16 = [v15 name];
    v17 = [v4 relativePath];
    *buf = 67109634;
    v24 = v6;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Unexpected pc:%d for file missing encryption key:%@ %@", buf, 0x1Cu);

    v18 = [v4 domain];
    v19 = [v18 name];
    [v4 relativePath];
    v22 = v21 = v19;
    v20 = v6;
    _MBLog();
  }

LABEL_6:

LABEL_7:
  v9 = [v4 domain];
  v10 = [v9 name];

  v11 = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 unsignedIntValue] + 1);
    v14 = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
    [v14 setObject:v13 forKeyedSubscript:v10];
  }

  else
  {
    v13 = [(MBBackupTelemetry *)self domainsWithMissingEncryptionKeys];
    [v13 setObject:&off_1003E0D08 forKeyedSubscript:v10];
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

  v7 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v7, v8, 0xDF8475800uLL, 0);

  v9 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100078A48;
  handler[3] = &unk_1003BC060;
  handler[4] = self;
  v10 = v3;
  v25 = v10;
  dispatch_source_set_event_handler(v9, handler);

  v11 = dispatch_group_create();
  [(MBBackupTelemetry *)self setWifiQualityGroup:v11];

  v12 = [(MBBackupTelemetry *)self wifiQualityGroup];
  dispatch_group_enter(v12);

  v13 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100078AE0;
  v20 = &unk_1003BC2E0;
  v21 = self;
  v22 = v5;
  v23 = v10;
  v14 = v10;
  v15 = v5;
  dispatch_source_set_cancel_handler(v13, &v17);

  v16 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer:v17];
  dispatch_resume(v16);
}

- (void)_stopCollectingWiFiQualityMeasurements
{
  v3 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];

  if (v3)
  {
    v4 = [(MBBackupTelemetry *)self wifiQualityMeasurementTimer];
    dispatch_source_cancel(v4);

    v5 = [(MBBackupTelemetry *)self wifiQualityGroup];
    v6 = dispatch_time(0, 10000000000);
    v7 = dispatch_group_wait(v5, v6);

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

- (id)_serializedWiFiQualityMeasurementFromInterface:(id)a3
{
  v3 = a3;
  v4 = +[NSDateFormatter ISO8601Formatter];
  v5 = +[NSDate now];
  v6 = [v4 stringFromDate:v5];

  v7 = [v3 RSSI];
  v8 = v7 - [v3 noise];
  [v3 txRate];
  v10 = v9;

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=cloud-backup= WiFi quality RSSI:%ld SNR:%ld txRate:%.3f", buf, 0x20u);
    _MBLog();
  }

  v12 = [NSString stringWithFormat:@"%@|%ld|%ld|%.3f", v6, v7, v8, v10];

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