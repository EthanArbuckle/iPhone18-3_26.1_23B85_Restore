@interface DSPreferences
+ (id)sharedPreferences;
- (DSPreferences)init;
- (void)refreshPreferences;
@end

@implementation DSPreferences

+ (id)sharedPreferences
{
  if (qword_10006E5F8 != -1)
  {
    sub_100031750();
  }

  v3 = qword_10006E5F0;

  return v3;
}

- (DSPreferences)init
{
  v19.receiver = self;
  v19.super_class = DSPreferences;
  v2 = [(DSPreferences *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100011584;
    v12 = &unk_100068AE0;
    v14 = &v15;
    v4 = v2;
    v13 = v4;
    v5 = objc_retainBlock(&v9);
    v6 = v16;
    v7 = &_dispatch_main_q;
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", v6 + 6, &_dispatch_main_q, v5);

    [(DSPreferences *)v4 refreshPreferences:v9];
    _Block_object_dispose(&v15, 8);
  }

  return v3;
}

- (void)refreshPreferences
{
  v2 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Refreshing preferences", &v8, 2u);
  }

  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.FilesystemMetadataSnapshotService.plist"];
  v4 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Preferences (profile): %{public}@", &v8, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 synchronize];
  v6 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    dictionaryRepresentation = [v5 dictionaryRepresentation];
    v8 = 138543362;
    v9 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Preferences (defaults): %{public}@", &v8, 0xCu);
  }
}

@end