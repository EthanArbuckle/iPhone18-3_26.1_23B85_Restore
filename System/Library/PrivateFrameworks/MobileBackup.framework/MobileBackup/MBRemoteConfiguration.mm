@interface MBRemoteConfiguration
+ (MBRemoteConfiguration)sharedInstance;
- (BOOL)allowSnapshotFormatSelectionOnGMForAccount:(id)a3;
- (BOOL)backupVerificationEnabledForAccount:(id)a3;
- (BOOL)restoreVerificationEnabledForAccount:(id)a3;
- (BOOL)shouldReloadConfigurationWithAccount:(id)a3;
- (MBRemoteConfiguration)init;
- (double)keyBagValidationPeriodForAccount:(id)a3 defaultValue:(double)a4;
- (id)_allValuesForKey:(id)a3 account:(id)a4;
- (id)persistedValueForKey:(id)a3 account:(id)a4;
- (id)shouldRestoreUsingFileListsForAccount:(id)a3;
- (id)valueForKey:(id)a3 account:(id)a4;
- (int64_t)snapshotFormatForBackupWithAccount:(id)a3;
- (void)loadConfigurationWithContainer:(id)a3 databaseManager:(id)a4 policy:(id)a5 operationGroup:(id)a6 completion:(id)a7;
- (void)mergeRemoteConfigurationForAccount:(id)a3 response:(id)a4;
- (void)persistValueForKey:(id)a3 value:(id)a4 account:(id)a5;
- (void)persistValueIfNeeded:(id)a3 forKey:(id)a4 account:(id)a5;
- (void)persistValuesIfNeeded:(id)a3 forKey:(id)a4 account:(id)a5;
- (void)resetCachedConfigurationForAccount:(id)a3;
@end

@implementation MBRemoteConfiguration

+ (MBRemoteConfiguration)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175DD0;
  block[3] = &unk_1003BBFE8;
  block[4] = a1;
  if (qword_1004218B8 != -1)
  {
    dispatch_once(&qword_1004218B8, block);
  }

  v2 = qword_1004218B0;

  return v2;
}

- (MBRemoteConfiguration)init
{
  v6.receiver = self;
  v6.super_class = MBRemoteConfiguration;
  v2 = [(MBRemoteConfiguration *)&v6 init];
  if (v2)
  {
    v3 = [[MBCKCodeOperator alloc] initWithService:@"BackupClientConfigurationService" function:@"getCurrentConfiguration" responseType:objc_opt_class()];
    operator = v2->_operator;
    v2->_operator = v3;
  }

  return v2;
}

- (BOOL)shouldReloadConfigurationWithAccount:(id)a3
{
  v3 = [a3 persona];
  v4 = [v3 copyPreferencesValueForKey:@"RemoteConfigurationBuildVersion" class:objc_opt_class()];
  v5 = MBBuildVersion();
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [v3 copyPreferencesValueForKey:@"RemoteConfigurationExpiration" class:objc_opt_class()];
    if (v7)
    {
      v8 = +[NSDate date];
      v9 = [v7 compare:v8] == -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)loadConfigurationWithContainer:(id)a3 databaseManager:(id)a4 policy:(id)a5 operationGroup:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    __assert_rtn("[MBRemoteConfiguration loadConfigurationWithContainer:databaseManager:policy:operationGroup:completion:]", "MBRemoteConfiguration.m", 87, "policy");
  }

  v17 = v16;
  if (!v16)
  {
    __assert_rtn("[MBRemoteConfiguration loadConfigurationWithContainer:databaseManager:policy:operationGroup:completion:]", "MBRemoteConfiguration.m", 88, "completion");
  }

  if (!v13)
  {
    __assert_rtn("[MBRemoteConfiguration loadConfigurationWithContainer:databaseManager:policy:operationGroup:completion:]", "MBRemoteConfiguration.m", 93, "databaseManager");
  }

  if (atomic_exchange(&self->_operationInProgress._Value, 1u))
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Not fetching remote configuration because a request is already in progress", buf, 2u);
      _MBLog();
    }

    v17[2](v17, 0);
  }

  else
  {
    v19 = [v12 account];
    if ([(MBRemoteConfiguration *)self shouldReloadConfigurationWithAccount:v19])
    {
      v20 = objc_opt_new();
      v21 = [(MBRemoteConfiguration *)self operator];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001763A0;
      v33[3] = &unk_1003C01C8;
      v34 = v19;
      v35 = self;
      v36 = v17;
      v22 = [v21 operationForRequest:v20 callback:v33];

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        [v22 operationID];
        v24 = v31 = v22;
        [v15 operationGroupID];
        v25 = v32 = v20;
        v26 = [v15 name];
        *buf = 138543874;
        v38 = v24;
        v39 = 2114;
        v40 = v25;
        v41 = 2114;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Fetching remote configuration id:%{public}@, gid:%{public}@ gn:%{public}@", buf, 0x20u);

        v22 = v31;
        v27 = [v31 operationID];
        v28 = [v15 operationGroupID];
        v30 = [v15 name];
        _MBLog();

        v20 = v32;
      }

      [v13 addDatabaseOperation:v22 container:v12 policy:v14 operationGroup:v15];
    }

    else
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not fetching remote configuration because it hasn't expired yet", buf, 2u);
        _MBLog();
      }

      atomic_store(0, &self->_operationInProgress);
      v17[2](v17, 0);
    }
  }
}

- (void)mergeRemoteConfigurationForAccount:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settings];
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v7;
  v10 = [v7 settings];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 value];

        if (v16)
        {
          v17 = [v15 key];
          v18 = [v9 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = +[NSMutableArray array];
            v19 = [v15 key];
            [v9 setObject:v18 forKeyedSubscript:v19];
          }

          v20 = [v15 value];
          [v18 addObject:v20];

          v21 = [v15 key];
          [(MBRemoteConfiguration *)self persistValuesIfNeeded:v18 forKey:v21 account:v6];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v12);
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Merged remote configuration: %@", buf, 0xCu);
    _MBLog();
  }

  objc_storeStrong(&self->_configuration, v9);
  if ([(NSDictionary *)self->_configuration count])
  {
    v23 = [v6 persona];
    [v23 setPreferencesValue:v9 forKey:@"RemoteConfiguration"];
    v24 = +[NSDate now];
    v25 = [v24 dateByAddingTimeInterval:86400.0];
    [v23 setPreferencesValue:v25 forKey:@"RemoteConfigurationExpiration"];

    v26 = MBBuildVersion();
    [v23 setPreferencesValue:v26 forKey:@"RemoteConfigurationBuildVersion"];
  }
}

- (void)resetCachedConfigurationForAccount:(id)a3
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting remote configuration", v8, 2u);
    _MBLog();
  }

  configuration = self->_configuration;
  self->_configuration = 0;

  if (v4)
  {
    [v4 persona];
  }

  else
  {
    [MBPersona personalPersonaWithError:0];
  }
  v7 = ;
  [v7 setPreferencesValue:0 forKey:@"RemoteConfiguration"];
  [v7 setPreferencesValue:0 forKey:@"RemoteConfigurationExpiration"];
  [v7 setPreferencesValue:0 forKey:@"RemoteConfigurationBuildVersion"];
}

- (void)persistValuesIfNeeded:(id)a3 forKey:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    if ([v8 count] >= 2)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duplicate value for persisted remote configuration setting '%{public}@' -- arbitrarily picking one of the values", buf, 0xCu);
        v13 = v9;
        _MBLog();
      }
    }

    v12 = [v8 firstObject];
    [(MBRemoteConfiguration *)self persistValueIfNeeded:v12 forKey:v9 account:v10];
  }
}

- (void)persistValueIfNeeded:(id)a3 forKey:(id)a4 account:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (sub_100176BE0(v8))
  {
    [(MBRemoteConfiguration *)self persistValueForKey:v8 value:v10 account:v9];
  }
}

- (void)persistValueForKey:(id)a3 value:(id)a4 account:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 persona];
  [v9 setPreferencesValue:v7 forKey:v8];
}

- (id)persistedValueForKey:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (sub_100176BE0(v5))
  {
    v7 = [v6 persona];
    v8 = [v7 copyPreferencesValueForKey:v5 class:objc_opt_class()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBRemoteConfiguration *)self persistedValueForKey:v6 account:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    goto LABEL_25;
  }

  v11 = [(MBRemoteConfiguration *)self _allValuesForKey:v6 account:v7];
  if (!v11)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v11 count]>= 2)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Duplicate value for remote configuration setting '%{public}@' -- arbitrarily picking one of the values", buf, 0xCu);
        v15 = v6;
        _MBLog();
      }
    }

    v10 = [v11 firstObject];
    if (!v10)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_24;
    }

    if (MBIsInternalInstall() && !dword_1004218A4 && !atomic_fetch_add_explicit(&dword_1004218A4, 1u, memory_order_relaxed))
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v17 = v6;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Unexpected first value for %{public}@: %{public}@ (remote configuration)", buf, 0x16u);
        _MBLog();
      }
    }
  }

  else
  {
    if (!MBIsInternalInstall() || dword_1004218A0 || atomic_fetch_add_explicit(&dword_1004218A0, 1u, memory_order_relaxed))
    {
      goto LABEL_23;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v17 = v6;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Unexpected value for %{public}@: %{public}@ (remote configuration)", buf, 0x16u);
      _MBLog();
    }
  }

LABEL_23:
  v10 = 0;
LABEL_24:

LABEL_25:

  return v10;
}

- (id)_allValuesForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = [a4 persona];
  v8 = [v7 copyPreferencesValueForKey:@"RemoteConfiguration" class:objc_opt_class()];
  configuration = self->_configuration;
  self->_configuration = v8;

  v10 = [(MBRemoteConfiguration *)self configuration];

  if (!v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Remote configuration hasn't been loaded -- using default", v15, 2u);
      _MBLog();
    }
  }

  v12 = [(MBRemoteConfiguration *)self configuration];
  v13 = [v12 objectForKeyedSubscript:v6];

  return v13;
}

- (BOOL)allowSnapshotFormatSelectionOnGMForAccount:(id)a3
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"AllowRecordModelSelectionOnGM" account:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)snapshotFormatForBackupWithAccount:(id)a3
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"BackupRecordModelSelection" account:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  if (([v3 isEqualToString:@"Lightrail"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"DualWriteDirectoryAndFile"])
    {
      v5 = 2;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"Legacy"])
    {
      v5 = 0;
      goto LABEL_12;
    }

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = @"BackupRecordModelSelection";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unknown %@ server value %@", buf, 0x16u);
      _MBLog();
    }

LABEL_11:
    v5 = -1;
    goto LABEL_12;
  }

  v5 = 3;
LABEL_12:

  return v5;
}

- (id)shouldRestoreUsingFileListsForAccount:(id)a3
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"RestoreRecordModelSelection" account:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (([v3 isEqualToString:@"Legacy"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Lightrail"])
    {
      v5 = &__kCFBooleanTrue;
      goto LABEL_10;
    }

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = @"RestoreRecordModelSelection";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unknown %@ server value %@", buf, 0x16u);
      _MBLog();
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = &__kCFBooleanFalse;
LABEL_10:

  return v5;
}

- (BOOL)backupVerificationEnabledForAccount:(id)a3
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"BackupVerificationEnabled" account:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)restoreVerificationEnabledForAccount:(id)a3
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"RestoreVerificationEnabled" account:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)keyBagValidationPeriodForAccount:(id)a3 defaultValue:(double)a4
{
  v5 = [(MBRemoteConfiguration *)self valueForKey:@"KeyBagReferenceValidationPeriod" account:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using server provided keybag validation period %.2f", buf, 0xCu);
LABEL_6:
      _MBLog();
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using default keybag validation period of %.2f", buf, 0xCu);
      goto LABEL_6;
    }
  }

  return a4;
}

@end