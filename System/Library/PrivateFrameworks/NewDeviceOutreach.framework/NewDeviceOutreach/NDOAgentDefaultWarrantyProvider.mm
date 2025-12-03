@interface NDOAgentDefaultWarrantyProvider
- (NDOAgentDefaultWarrantyProvider)initWithCallingProcessBundleID:(id)d;
- (double)cachedWarrantyValidityDurationForSerialNumber:(id)number;
- (id)cachedWarrantyLocaleForSerialNumber:(id)number;
- (id)cachedWarrantyVersionForSerialNumber:(id)number;
- (id)lastUpdatedDateForSerialNumber:(id)number;
- (id)refreshAllFollowupsWithDeviceInfos:(id)infos;
- (id)refreshFollowupWithDeviceInfos:(id)infos;
- (int)migrationVersion;
- (void)dismissFollowUpForSerialNumber:(id)number;
- (void)dismissNotificationForSerialNumber:(id)number;
- (void)downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params completionHandler:(id)handler;
- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)info;
@end

@implementation NDOAgentDefaultWarrantyProvider

- (NDOAgentDefaultWarrantyProvider)initWithCallingProcessBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = NDOAgentDefaultWarrantyProvider;
  v6 = [(NDOAgentDefaultWarrantyProvider *)&v10 init];
  if (v6)
  {
    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100073C3C(dCopy, v7, v8);
    }

    objc_storeStrong(&v6->_callingProcessBundleID, d);
  }

  return v6;
}

- (void)downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params completionHandler:(id)handler
{
  handlerCopy = handler;
  paramsCopy = params;
  dCopy = d;
  numberCopy = number;
  v14 = [[NDOWarrantyDownloader alloc] initWithCallingProcessBundleID:self->_callingProcessBundleID];
  [(NDOWarrantyDownloader *)v14 downloadWarrantyForSerialNumber:numberCopy sessionID:dCopy params:paramsCopy completionHandler:handlerCopy];
}

- (id)refreshFollowupWithDeviceInfos:(id)infos
{
  infosCopy = infos;
  v4 = objc_opt_new();
  v5 = [v4 refreshFollowupWithDeviceInfos:infosCopy andForcePostFollowup:0];

  return v5;
}

- (id)refreshAllFollowupsWithDeviceInfos:(id)infos
{
  infosCopy = infos;
  v4 = objc_opt_new();
  v5 = [v4 refreshALLFollowupsWithDeviceInfos:infosCopy andForcePostFollowup:0];

  return v5;
}

- (void)dismissFollowUpForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = objc_opt_new();
  [v4 dismissFollowUpForSerialNumber:numberCopy];
}

- (void)dismissNotificationForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = objc_opt_new();
  [v4 dismissNotificationForSerialNumber:numberCopy];
}

- (id)lastUpdatedDateForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = +[NSUserDefaults standardUserDefaults];
  sha256Hash = [numberCopy sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyLastUpdatedDate", sha256Hash];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (id)cachedWarrantyLocaleForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = +[NSUserDefaults standardUserDefaults];
  sha256Hash = [numberCopy sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyLocale", sha256Hash];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (id)cachedWarrantyVersionForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = +[NSUserDefaults standardUserDefaults];
  sha256Hash = [numberCopy sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyVersion", sha256Hash];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (double)cachedWarrantyValidityDurationForSerialNumber:(id)number
{
  numberCopy = number;
  v4 = +[NSUserDefaults standardUserDefaults];
  sha256Hash = [numberCopy sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyValidityDuration", sha256Hash];
  v7 = [v4 objectForKey:v6];
  [v7 doubleValue];
  v9 = v8;

  result = 86400.0;
  if (v9 > 0.0)
  {
    return v9;
  }

  return result;
}

- (int)migrationVersion
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"NDOMigrationVersion"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_new();
  [v4 migrateLegacyFollowUpIfNeededWithDeviceInfo:infoCopy];
}

@end