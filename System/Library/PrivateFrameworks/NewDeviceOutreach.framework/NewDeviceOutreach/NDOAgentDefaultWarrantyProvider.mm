@interface NDOAgentDefaultWarrantyProvider
- (NDOAgentDefaultWarrantyProvider)initWithCallingProcessBundleID:(id)a3;
- (double)cachedWarrantyValidityDurationForSerialNumber:(id)a3;
- (id)cachedWarrantyLocaleForSerialNumber:(id)a3;
- (id)cachedWarrantyVersionForSerialNumber:(id)a3;
- (id)lastUpdatedDateForSerialNumber:(id)a3;
- (id)refreshAllFollowupsWithDeviceInfos:(id)a3;
- (id)refreshFollowupWithDeviceInfos:(id)a3;
- (int)migrationVersion;
- (void)dismissFollowUpForSerialNumber:(id)a3;
- (void)dismissNotificationForSerialNumber:(id)a3;
- (void)downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6;
- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)a3;
@end

@implementation NDOAgentDefaultWarrantyProvider

- (NDOAgentDefaultWarrantyProvider)initWithCallingProcessBundleID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NDOAgentDefaultWarrantyProvider;
  v6 = [(NDOAgentDefaultWarrantyProvider *)&v10 init];
  if (v6)
  {
    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100073C3C(v5, v7, v8);
    }

    objc_storeStrong(&v6->_callingProcessBundleID, a3);
  }

  return v6;
}

- (void)downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[NDOWarrantyDownloader alloc] initWithCallingProcessBundleID:self->_callingProcessBundleID];
  [(NDOWarrantyDownloader *)v14 downloadWarrantyForSerialNumber:v13 sessionID:v12 params:v11 completionHandler:v10];
}

- (id)refreshFollowupWithDeviceInfos:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 refreshFollowupWithDeviceInfos:v3 andForcePostFollowup:0];

  return v5;
}

- (id)refreshAllFollowupsWithDeviceInfos:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 refreshALLFollowupsWithDeviceInfos:v3 andForcePostFollowup:0];

  return v5;
}

- (void)dismissFollowUpForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 dismissFollowUpForSerialNumber:v3];
}

- (void)dismissNotificationForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 dismissNotificationForSerialNumber:v3];
}

- (id)lastUpdatedDateForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyLastUpdatedDate", v5];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (id)cachedWarrantyLocaleForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyLocale", v5];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (id)cachedWarrantyVersionForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyVersion", v5];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (double)cachedWarrantyValidityDurationForSerialNumber:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 sha256Hash];

  v6 = [NSString stringWithFormat:@"%@_CachedWarrantyValidityDuration", v5];
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
  v4 = [v3 intValue];

  return v4;
}

- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 migrateLegacyFollowUpIfNeededWithDeviceInfo:v3];
}

@end