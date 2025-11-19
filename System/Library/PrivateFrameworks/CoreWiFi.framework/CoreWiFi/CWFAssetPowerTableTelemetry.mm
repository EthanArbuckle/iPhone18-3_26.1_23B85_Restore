@interface CWFAssetPowerTableTelemetry
+ (id)sharedObj;
- (BOOL)sendTelemetryAndClear;
- (CWFAssetPowerTableTelemetry)init;
- (void)setAssetContentSyncResult:(BOOL)a3 availableForUseAttributes:(id)a4 newerVersionAttributes:(id)a5 assetType:(id)a6 assetSpecifier:(id)a7 assetVersion:(id)a8 error:(id)a9;
- (void)setAssetHandoffInfo:(BOOL)a3 assetAlreadyHere:(BOOL)a4 previousAssetCleanedUp:(BOOL)a5 previousLatestPlist:(id)a6 latestPlistDict:(id)a7 newPlist:(id)a8 error:(id)a9;
- (void)setAssetLocalInfo:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 assetBuild:(id)a6 lastTimeCatalogChecked:(id)a7 catalogPostedDate:(id)a8 assetVersionSanity:(BOOL)a9 osVersionSanity:(BOOL)a10 osRestoreVersionSanity:(BOOL)a11 skuSanity:(BOOL)a12 sanityCheckAssetBuildAttribute:(BOOL)a13 attributes:(id)a14 localURL:(id)a15;
- (void)setAssetVersionDownloadNotifcation:(id)a3 reason:(unint64_t)a4;
- (void)setSKU:(id)a3;
@end

@implementation CWFAssetPowerTableTelemetry

+ (id)sharedObj
{
  if (qword_1ED7E38C8 != -1)
  {
    dispatch_once(&qword_1ED7E38C8, &unk_1F5B89A30);
  }

  v3 = qword_1ED7E38C0;

  return v3;
}

- (CWFAssetPowerTableTelemetry)init
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CWFAssetPowerTableTelemetry;
  v2 = [(CWFAssetPowerTableTelemetry *)&v14 init];
  if (!v2)
  {
    v8 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136446466;
    v16 = "[CWFAssetPowerTableTelemetry init]";
    v17 = 1024;
    v18 = 77;
    v9 = "%{public}s::%d:Failed to init";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_4;
  }

  v3 = [MEMORY[0x1E695DF00] now];
  initializationDate = v2->_initializationDate;
  v2->_initializationDate = v3;

  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  dateFormatter = v2->_dateFormatter;
  v2->_dateFormatter = v5;

  v7 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [(NSDateFormatter *)v2->_dateFormatter setTimeZone:v7];

  [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"MMM dd yyyy HH:mm:ss"];
  v8 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[CWFAssetPowerTableTelemetry init]";
    v17 = 1024;
    v18 = 85;
    v9 = "%{public}s::%d:Done";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
LABEL_4:
    _os_log_impl(&dword_1E0BBF000, v10, v11, v9, buf, 0x12u);
  }

LABEL_5:

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)setSKU:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5 encoding:4];

  deviceSKU = self->_deviceSKU;
  self->_deviceSKU = v6;
}

- (void)setAssetVersionDownloadNotifcation:(id)a3 reason:(unint64_t)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", a3, a4];
  notificationString = self->_notificationString;
  self->_notificationString = v5;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssetContentSyncResult:(BOOL)a3 availableForUseAttributes:(id)a4 newerVersionAttributes:(id)a5 assetType:(id)a6 assetSpecifier:(id)a7 assetVersion:(id)a8 error:(id)a9
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  self->_assetAvailable = a3;
  objc_storeStrong(&self->_assetType, a6);
  objc_storeStrong(&self->_assetSpecifier, a7);
  objc_storeStrong(&self->_assetVersion, a8);
  if (v17)
  {
    objc_storeStrong(&self->_lastError, a9);
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[CWFAssetPowerTableTelemetry setAssetContentSyncResult:availableForUseAttributes:newerVersionAttributes:assetType:assetSpecifier:assetVersion:error:]";
      v22 = 1024;
      v23 = 119;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Error found, sending telemetry now", &v20, 0x12u);
    }

    [(CWFAssetPowerTableTelemetry *)self sendTelemetryAndClear];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setAssetLocalInfo:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 assetBuild:(id)a6 lastTimeCatalogChecked:(id)a7 catalogPostedDate:(id)a8 assetVersionSanity:(BOOL)a9 osVersionSanity:(BOOL)a10 osRestoreVersionSanity:(BOOL)a11 skuSanity:(BOOL)a12 sanityCheckAssetBuildAttribute:(BOOL)a13 attributes:(id)a14 localURL:(id)a15
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  assetType = self->_assetType;
  self->_assetType = v21;
  v28 = v21;

  assetSpecifier = self->_assetSpecifier;
  self->_assetSpecifier = v22;
  v30 = v22;

  assetVersion = self->_assetVersion;
  self->_assetVersion = v23;
  v32 = v23;

  assetBuild = self->_assetBuild;
  self->_assetBuild = v24;
  v34 = v24;

  assetCatalogLastTimeChecked = self->_assetCatalogLastTimeChecked;
  self->_assetCatalogLastTimeChecked = v25;
  v36 = v25;

  assetCatalogPostedDate = self->_assetCatalogPostedDate;
  self->_assetCatalogPostedDate = v26;

  self->_assetVersionSanity = a9;
  self->_osVersionSanity = a10;
  self->_osRestoreVersionSanity = a11;
  self->_skuSanity = a12;
  self->_assetBuildSanity = a13;
}

- (void)setAssetHandoffInfo:(BOOL)a3 assetAlreadyHere:(BOOL)a4 previousAssetCleanedUp:(BOOL)a5 previousLatestPlist:(id)a6 latestPlistDict:(id)a7 newPlist:(id)a8 error:(id)a9
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = a9;
  self->_transferSuccess = a3;
  self->_transferAssetAlreadyHere = a4;
  self->_transferPreviousAssetCleaned = a5;
  v15 = [v13 objectForKeyedSubscript:@"datePowerTableAvailable"];

  if (v15)
  {
    v16 = [v13 objectForKeyedSubscript:@"datePowerTableAvailable"];
    transferAvailableDate = self->_transferAvailableDate;
    self->_transferAvailableDate = v16;
  }

  if (v13)
  {
    v18 = [v13 objectForKeyedSubscript:@"PowerTableVersionInfoDict"];

    if (v18)
    {
      v19 = [v13 objectForKeyedSubscript:@"PowerTableVersionInfoDict"];
      v20 = [CWFAssetPowerTable getPowerTableVersionFromDict:v19];
      assetVersionInfoVersion = self->_assetVersionInfoVersion;
      self->_assetVersionInfoVersion = v20;

      v22 = [v13 objectForKeyedSubscript:@"PowerTableVersionInfoDict"];
      v23 = [CWFAssetPowerTable getPowerTableAssemblyDateFromDict:v22];

      if (v23)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_assetVersionInfoDateString, v23);
          v24 = [(CWFAssetPowerTableTelemetry *)self getNSDateFromString:v23];
          assetVersionInfoDate = self->_assetVersionInfoDate;
          self->_assetVersionInfoDate = v24;
        }
      }
    }
  }

  if (v14)
  {
    objc_storeStrong(&self->_lastError, a9);
    v26 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446466;
      v29 = "[CWFAssetPowerTableTelemetry setAssetHandoffInfo:assetAlreadyHere:previousAssetCleanedUp:previousLatestPlist:latestPlistDict:newPlist:error:]";
      v30 = 1024;
      v31 = 170;
      _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Error found, sending telemetry now", &v28, 0x12u);
    }
  }

  [(CWFAssetPowerTableTelemetry *)self sendTelemetryAndClear];

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendTelemetryAndClear
{
  if (self->_assetCatalogPostedDate)
  {
    assetVersionInfoDate = self->_assetVersionInfoDate;
    if (assetVersionInfoDate)
    {
      [(NSDate *)assetVersionInfoDate timeIntervalSinceDate:?];
    }
  }

  assetCatalogLastTimeChecked = self->_assetCatalogLastTimeChecked;
  if (assetCatalogLastTimeChecked && self->_assetCatalogPostedDate)
  {
    [(NSDate *)assetCatalogLastTimeChecked timeIntervalSinceDate:?];
  }

  transferAvailableDate = self->_transferAvailableDate;
  if (transferAvailableDate && self->_assetCatalogLastTimeChecked)
  {
    [(NSDate *)transferAvailableDate timeIntervalSinceDate:?];
  }

  if (self->_initializationDate)
  {
    v6 = self->_assetCatalogLastTimeChecked;
    if (v6)
    {
      [(NSDate *)v6 timeIntervalSinceDate:self->_assetCatalogPostedDate];
    }
  }

  AnalyticsSendEventLazy();
  notificationString = self->_notificationString;
  self->_notificationString = 0;

  assetBuild = self->_assetBuild;
  self->_assetBuild = 0;

  self->_assetAvailable = 0;
  v9 = self->_assetCatalogLastTimeChecked;
  self->_assetCatalogLastTimeChecked = 0;

  assetCatalogPostedDate = self->_assetCatalogPostedDate;
  self->_assetCatalogPostedDate = 0;

  v11 = self->_transferAvailableDate;
  *&self->_assetVersionSanity = 0;
  self->_transferAvailableDate = 0;

  assetVersionInfoVersion = self->_assetVersionInfoVersion;
  self->_assetVersionInfoVersion = 0;

  v13 = self->_assetVersionInfoDate;
  self->_assetVersionInfoDate = 0;

  assetVersionInfoDateString = self->_assetVersionInfoDateString;
  self->_assetVersionInfoDateString = 0;

  lastError = self->_lastError;
  self->_lastError = 0;

  return 1;
}

@end