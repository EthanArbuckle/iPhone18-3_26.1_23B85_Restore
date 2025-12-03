@interface DSSnapshotRequestTelemetryReporter
+ (id)telemetryReporterForSnapshotRequest:(id)request;
- (DSSnapshotRequest)__snapshotRequest;
- (id)_eventDictionary;
- (void)submit;
@end

@implementation DSSnapshotRequestTelemetryReporter

- (id)_eventDictionary
{
  v27[0] = @"1013";
  v26[0] = @"DiskSpaceDiagnosticsVersion";
  v26[1] = @"DurationSec";
  snapshotDateEnd = self->_snapshotDateEnd;
  WeakRetained = objc_loadWeakRetained(&self->___snapshotRequest);
  beginDate = [WeakRetained beginDate];
  [(NSDate *)snapshotDateEnd timeIntervalSinceDate:beginDate];
  v23 = [NSNumber numberWithDouble:?];
  v27[1] = v23;
  v26[2] = @"ExitCode";
  v22 = [NSNumber numberWithInteger:self->_snapshotExitCode];
  v27[2] = v22;
  v26[3] = @"FormatVersion";
  v21 = objc_loadWeakRetained(&self->___snapshotRequest);
  formatVersion = [v21 formatVersion];
  v27[3] = formatVersion;
  v26[4] = @"VolumeCount";
  v19 = [NSNumber numberWithUnsignedLongLong:self->_snapshotVolumeCount];
  v27[4] = v19;
  v26[5] = @"FSListingsEntriesCount";
  v18 = [NSNumber numberWithUnsignedLongLong:self->_snapshotFSListingsEntryCount];
  v27[5] = v18;
  v26[6] = @"HasHashedFSListings";
  v17 = objc_loadWeakRetained(&self->___snapshotRequest);
  options = [v17 options];
  v15 = [options objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionShouldHashVolumeListings"];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 BOOLValue]);
  v27[6] = v14;
  v26[7] = @"PowerAssertionsDidTimeout";
  v4 = [NSNumber numberWithBool:self->_snapshotPowerAssertionsDidTimeOut];
  v27[7] = v4;
  v26[8] = @"ArchiveSizeBytes";
  v5 = [NSNumber numberWithUnsignedLongLong:self->_snapshotArchiveSizeBytes];
  v27[8] = v5;
  v26[9] = @"MetadataIndTableStatsDurationSec";
  v6 = [NSNumber numberWithDouble:self->_snapshotMetadataIndirectionTableStatsDurationSec];
  v27[9] = v6;
  v26[10] = @"MetadataAPFSSnapshotInfoDurationSec";
  v7 = [NSNumber numberWithDouble:self->_snapshotMetadataAPFSSnapshotInfoDurationSec];
  v27[10] = v7;
  v26[11] = @"MetadataAPFSVolumeInfoDurationSec";
  v8 = [NSNumber numberWithDouble:self->_snapshotMetadataAPFSVolumeInfoDurationSec];
  v27[11] = v8;
  v26[12] = @"MetadataVolumeInfoDurationSec";
  v9 = [NSNumber numberWithDouble:self->_snapshotMetadataVolumeInfoDurationSec];
  v27[12] = v9;
  v26[13] = @"MetadataUnlinkedOpenFilesDurationSec";
  v10 = [NSNumber numberWithDouble:self->_snapshotMetadataUnlinkedOpenFilesDurationSec];
  v27[13] = v10;
  v26[14] = @"MetadataCacheDeleteDurationSec";
  v11 = [NSNumber numberWithDouble:self->_snapshotMetadataCacheDeleteDurationSec];
  v27[14] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:15];

  return v12;
}

+ (id)telemetryReporterForSnapshotRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(DSSnapshotRequestTelemetryReporter);
  [(DSSnapshotRequestTelemetryReporter *)v4 set__snapshotRequest:requestCopy];

  return v4;
}

- (void)submit
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    __eventName = [(DSSnapshotRequestTelemetryReporter *)self __eventName];
    *buf = 138412290;
    v7 = __eventName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Submitting %@ to CoreAnalytics", buf, 0xCu);
  }

  __eventName2 = [(DSSnapshotRequestTelemetryReporter *)self __eventName];
  AnalyticsSendEventLazy();
}

- (DSSnapshotRequest)__snapshotRequest
{
  WeakRetained = objc_loadWeakRetained(&self->___snapshotRequest);

  return WeakRetained;
}

@end