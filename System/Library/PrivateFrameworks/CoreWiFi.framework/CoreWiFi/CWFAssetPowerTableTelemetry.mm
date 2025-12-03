@interface CWFAssetPowerTableTelemetry
+ (id)sharedObj;
- (BOOL)sendTelemetryAndClear;
- (CWFAssetPowerTableTelemetry)init;
- (void)setAssetContentSyncResult:(BOOL)result availableForUseAttributes:(id)attributes newerVersionAttributes:(id)versionAttributes assetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version error:(id)error;
- (void)setAssetHandoffInfo:(BOOL)info assetAlreadyHere:(BOOL)here previousAssetCleanedUp:(BOOL)up previousLatestPlist:(id)plist latestPlistDict:(id)dict newPlist:(id)newPlist error:(id)error;
- (void)setAssetLocalInfo:(id)info assetSpecifier:(id)specifier assetVersion:(id)version assetBuild:(id)build lastTimeCatalogChecked:(id)checked catalogPostedDate:(id)date assetVersionSanity:(BOOL)sanity osVersionSanity:(BOOL)self0 osRestoreVersionSanity:(BOOL)self1 skuSanity:(BOOL)self2 sanityCheckAssetBuildAttribute:(BOOL)self3 attributes:(id)self4 localURL:(id)self5;
- (void)setAssetVersionDownloadNotifcation:(id)notifcation reason:(unint64_t)reason;
- (void)setSKU:(id)u;
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

- (void)setSKU:(id)u
{
  v4 = MEMORY[0x1E696AEC0];
  uCopy = u;
  v6 = [[v4 alloc] initWithData:uCopy encoding:4];

  deviceSKU = self->_deviceSKU;
  self->_deviceSKU = v6;
}

- (void)setAssetVersionDownloadNotifcation:(id)notifcation reason:(unint64_t)reason
{
  reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", notifcation, reason];
  notificationString = self->_notificationString;
  self->_notificationString = reason;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssetContentSyncResult:(BOOL)result availableForUseAttributes:(id)attributes newerVersionAttributes:(id)versionAttributes assetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  errorCopy = error;
  self->_assetAvailable = result;
  objc_storeStrong(&self->_assetType, type);
  objc_storeStrong(&self->_assetSpecifier, specifier);
  objc_storeStrong(&self->_assetVersion, version);
  if (errorCopy)
  {
    objc_storeStrong(&self->_lastError, error);
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

- (void)setAssetLocalInfo:(id)info assetSpecifier:(id)specifier assetVersion:(id)version assetBuild:(id)build lastTimeCatalogChecked:(id)checked catalogPostedDate:(id)date assetVersionSanity:(BOOL)sanity osVersionSanity:(BOOL)self0 osRestoreVersionSanity:(BOOL)self1 skuSanity:(BOOL)self2 sanityCheckAssetBuildAttribute:(BOOL)self3 attributes:(id)self4 localURL:(id)self5
{
  infoCopy = info;
  specifierCopy = specifier;
  versionCopy = version;
  buildCopy = build;
  checkedCopy = checked;
  dateCopy = date;
  assetType = self->_assetType;
  self->_assetType = infoCopy;
  v28 = infoCopy;

  assetSpecifier = self->_assetSpecifier;
  self->_assetSpecifier = specifierCopy;
  v30 = specifierCopy;

  assetVersion = self->_assetVersion;
  self->_assetVersion = versionCopy;
  v32 = versionCopy;

  assetBuild = self->_assetBuild;
  self->_assetBuild = buildCopy;
  v34 = buildCopy;

  assetCatalogLastTimeChecked = self->_assetCatalogLastTimeChecked;
  self->_assetCatalogLastTimeChecked = checkedCopy;
  v36 = checkedCopy;

  assetCatalogPostedDate = self->_assetCatalogPostedDate;
  self->_assetCatalogPostedDate = dateCopy;

  self->_assetVersionSanity = sanity;
  self->_osVersionSanity = versionSanity;
  self->_osRestoreVersionSanity = restoreVersionSanity;
  self->_skuSanity = skuSanity;
  self->_assetBuildSanity = attribute;
}

- (void)setAssetHandoffInfo:(BOOL)info assetAlreadyHere:(BOOL)here previousAssetCleanedUp:(BOOL)up previousLatestPlist:(id)plist latestPlistDict:(id)dict newPlist:(id)newPlist error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  errorCopy = error;
  self->_transferSuccess = info;
  self->_transferAssetAlreadyHere = here;
  self->_transferPreviousAssetCleaned = up;
  v15 = [dictCopy objectForKeyedSubscript:@"datePowerTableAvailable"];

  if (v15)
  {
    v16 = [dictCopy objectForKeyedSubscript:@"datePowerTableAvailable"];
    transferAvailableDate = self->_transferAvailableDate;
    self->_transferAvailableDate = v16;
  }

  if (dictCopy)
  {
    v18 = [dictCopy objectForKeyedSubscript:@"PowerTableVersionInfoDict"];

    if (v18)
    {
      v19 = [dictCopy objectForKeyedSubscript:@"PowerTableVersionInfoDict"];
      v20 = [CWFAssetPowerTable getPowerTableVersionFromDict:v19];
      assetVersionInfoVersion = self->_assetVersionInfoVersion;
      self->_assetVersionInfoVersion = v20;

      v22 = [dictCopy objectForKeyedSubscript:@"PowerTableVersionInfoDict"];
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

  if (errorCopy)
  {
    objc_storeStrong(&self->_lastError, error);
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