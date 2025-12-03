@interface MBRemoteConfiguration
+ (MBRemoteConfiguration)sharedInstance;
- (BOOL)allowSnapshotFormatSelectionOnGMForAccount:(id)account;
- (BOOL)backupVerificationEnabledForAccount:(id)account;
- (BOOL)restoreVerificationEnabledForAccount:(id)account;
- (BOOL)shouldReloadConfigurationWithAccount:(id)account;
- (MBRemoteConfiguration)init;
- (double)keyBagValidationPeriodForAccount:(id)account defaultValue:(double)value;
- (id)_allValuesForKey:(id)key account:(id)account;
- (id)persistedValueForKey:(id)key account:(id)account;
- (id)shouldRestoreUsingFileListsForAccount:(id)account;
- (id)valueForKey:(id)key account:(id)account;
- (int64_t)snapshotFormatForBackupWithAccount:(id)account;
- (void)loadConfigurationWithContainer:(id)container databaseManager:(id)manager policy:(id)policy operationGroup:(id)group completion:(id)completion;
- (void)mergeRemoteConfigurationForAccount:(id)account response:(id)response;
- (void)persistValueForKey:(id)key value:(id)value account:(id)account;
- (void)persistValueIfNeeded:(id)needed forKey:(id)key account:(id)account;
- (void)persistValuesIfNeeded:(id)needed forKey:(id)key account:(id)account;
- (void)resetCachedConfigurationForAccount:(id)account;
@end

@implementation MBRemoteConfiguration

+ (MBRemoteConfiguration)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175DD0;
  block[3] = &unk_1003BBFE8;
  block[4] = self;
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

- (BOOL)shouldReloadConfigurationWithAccount:(id)account
{
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"RemoteConfigurationBuildVersion" class:objc_opt_class()];
  v5 = MBBuildVersion();
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [persona copyPreferencesValueForKey:@"RemoteConfigurationExpiration" class:objc_opt_class()];
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

- (void)loadConfigurationWithContainer:(id)container databaseManager:(id)manager policy:(id)policy operationGroup:(id)group completion:(id)completion
{
  containerCopy = container;
  managerCopy = manager;
  policyCopy = policy;
  groupCopy = group;
  completionCopy = completion;
  if (!policyCopy)
  {
    __assert_rtn("[MBRemoteConfiguration loadConfigurationWithContainer:databaseManager:policy:operationGroup:completion:]", "MBRemoteConfiguration.m", 87, "policy");
  }

  v17 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBRemoteConfiguration loadConfigurationWithContainer:databaseManager:policy:operationGroup:completion:]", "MBRemoteConfiguration.m", 88, "completion");
  }

  if (!managerCopy)
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
    account = [containerCopy account];
    if ([(MBRemoteConfiguration *)self shouldReloadConfigurationWithAccount:account])
    {
      v20 = objc_opt_new();
      operator = [(MBRemoteConfiguration *)self operator];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001763A0;
      v33[3] = &unk_1003C01C8;
      v34 = account;
      selfCopy = self;
      v36 = v17;
      v22 = [operator operationForRequest:v20 callback:v33];

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        [v22 operationID];
        v24 = v31 = v22;
        [groupCopy operationGroupID];
        v25 = v32 = v20;
        name = [groupCopy name];
        *buf = 138543874;
        v38 = v24;
        v39 = 2114;
        v40 = v25;
        v41 = 2114;
        v42 = name;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Fetching remote configuration id:%{public}@, gid:%{public}@ gn:%{public}@", buf, 0x20u);

        v22 = v31;
        operationID = [v31 operationID];
        operationGroupID = [groupCopy operationGroupID];
        name2 = [groupCopy name];
        _MBLog();

        v20 = v32;
      }

      [managerCopy addDatabaseOperation:v22 container:containerCopy policy:policyCopy operationGroup:groupCopy];
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

- (void)mergeRemoteConfigurationForAccount:(id)account response:(id)response
{
  accountCopy = account;
  responseCopy = response;
  settings = [responseCopy settings];
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [settings count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = responseCopy;
  settings2 = [responseCopy settings];
  v11 = [settings2 countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(settings2);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        value = [v15 value];

        if (value)
        {
          v17 = [v15 key];
          v18 = [v9 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = +[NSMutableArray array];
            v19 = [v15 key];
            [v9 setObject:v18 forKeyedSubscript:v19];
          }

          value2 = [v15 value];
          [v18 addObject:value2];

          v21 = [v15 key];
          [(MBRemoteConfiguration *)self persistValuesIfNeeded:v18 forKey:v21 account:accountCopy];
        }
      }

      v12 = [settings2 countByEnumeratingWithState:&v28 objects:v34 count:16];
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
    persona = [accountCopy persona];
    [persona setPreferencesValue:v9 forKey:@"RemoteConfiguration"];
    v24 = +[NSDate now];
    v25 = [v24 dateByAddingTimeInterval:86400.0];
    [persona setPreferencesValue:v25 forKey:@"RemoteConfigurationExpiration"];

    v26 = MBBuildVersion();
    [persona setPreferencesValue:v26 forKey:@"RemoteConfigurationBuildVersion"];
  }
}

- (void)resetCachedConfigurationForAccount:(id)account
{
  accountCopy = account;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting remote configuration", v8, 2u);
    _MBLog();
  }

  configuration = self->_configuration;
  self->_configuration = 0;

  if (accountCopy)
  {
    [accountCopy persona];
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

- (void)persistValuesIfNeeded:(id)needed forKey:(id)key account:(id)account
{
  neededCopy = needed;
  keyCopy = key;
  accountCopy = account;
  if ([neededCopy count])
  {
    if ([neededCopy count] >= 2)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = keyCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duplicate value for persisted remote configuration setting '%{public}@' -- arbitrarily picking one of the values", buf, 0xCu);
        v13 = keyCopy;
        _MBLog();
      }
    }

    firstObject = [neededCopy firstObject];
    [(MBRemoteConfiguration *)self persistValueIfNeeded:firstObject forKey:keyCopy account:accountCopy];
  }
}

- (void)persistValueIfNeeded:(id)needed forKey:(id)key account:(id)account
{
  neededCopy = needed;
  keyCopy = key;
  accountCopy = account;
  if (sub_100176BE0(keyCopy))
  {
    [(MBRemoteConfiguration *)self persistValueForKey:keyCopy value:neededCopy account:accountCopy];
  }
}

- (void)persistValueForKey:(id)key value:(id)value account:(id)account
{
  valueCopy = value;
  keyCopy = key;
  persona = [account persona];
  [persona setPreferencesValue:valueCopy forKey:keyCopy];
}

- (id)persistedValueForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  if (sub_100176BE0(keyCopy))
  {
    persona = [accountCopy persona];
    v8 = [persona copyPreferencesValueForKey:keyCopy class:objc_opt_class()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  v8 = [(MBRemoteConfiguration *)self persistedValueForKey:keyCopy account:accountCopy];
  v9 = v8;
  if (v8)
  {
    firstObject = v8;
    goto LABEL_25;
  }

  v11 = [(MBRemoteConfiguration *)self _allValuesForKey:keyCopy account:accountCopy];
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
        v17 = keyCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Duplicate value for remote configuration setting '%{public}@' -- arbitrarily picking one of the values", buf, 0xCu);
        v15 = keyCopy;
        _MBLog();
      }
    }

    firstObject = [v11 firstObject];
    if (!firstObject)
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
        v17 = keyCopy;
        v18 = 2114;
        v19 = firstObject;
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

    firstObject = MBGetDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v17 = keyCopy;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_FAULT, "Unexpected value for %{public}@: %{public}@ (remote configuration)", buf, 0x16u);
      _MBLog();
    }
  }

LABEL_23:
  firstObject = 0;
LABEL_24:

LABEL_25:

  return firstObject;
}

- (id)_allValuesForKey:(id)key account:(id)account
{
  keyCopy = key;
  persona = [account persona];
  v8 = [persona copyPreferencesValueForKey:@"RemoteConfiguration" class:objc_opt_class()];
  configuration = self->_configuration;
  self->_configuration = v8;

  configuration = [(MBRemoteConfiguration *)self configuration];

  if (!configuration)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Remote configuration hasn't been loaded -- using default", v15, 2u);
      _MBLog();
    }
  }

  configuration2 = [(MBRemoteConfiguration *)self configuration];
  v13 = [configuration2 objectForKeyedSubscript:keyCopy];

  return v13;
}

- (BOOL)allowSnapshotFormatSelectionOnGMForAccount:(id)account
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"AllowRecordModelSelectionOnGM" account:account];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)snapshotFormatForBackupWithAccount:(id)account
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"BackupRecordModelSelection" account:account];
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

- (id)shouldRestoreUsingFileListsForAccount:(id)account
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"RestoreRecordModelSelection" account:account];
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

- (BOOL)backupVerificationEnabledForAccount:(id)account
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"BackupVerificationEnabled" account:account];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)restoreVerificationEnabledForAccount:(id)account
{
  v3 = [(MBRemoteConfiguration *)self valueForKey:@"RestoreVerificationEnabled" account:account];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (double)keyBagValidationPeriodForAccount:(id)account defaultValue:(double)value
{
  v5 = [(MBRemoteConfiguration *)self valueForKey:@"KeyBagReferenceValidationPeriod" account:account];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    value = v7;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      valueCopy2 = value;
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
      valueCopy2 = value;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using default keybag validation period of %.2f", buf, 0xCu);
      goto LABEL_6;
    }
  }

  return value;
}

@end