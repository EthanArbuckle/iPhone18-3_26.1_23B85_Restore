@interface NPSDeviceRegistry
+ (id)createDirectoryIfNeeded:(id)needed;
+ (id)idsDestinationIDForDevice:(id)device withIdsService:(id)service;
+ (id)pdrDeviceForIDSDevice:(id)device;
- (NPSDomainAccessor)domainAccessor;
- (NSString)databasePath;
- (NSString)filesBackupDirectoryPath;
- (NSString)filesBackupMetadataIndexPath;
- (NSString)globalCacheDirectoryPath;
- (NSString)perGizmoCacheDirectoryPath;
- (NSString)userDefaultsBackupDirectoryPath;
- (void)checkForActiveDeviceChange;
- (void)registryChanged:(id)changed;
- (void)startMonitoringPairingEventsWithQueue:(id)queue;
@end

@implementation NPSDeviceRegistry

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    if (self->_activeDevice)
    {
      v4 = [NPSDomainAccessor alloc];
      v5 = [v4 initWithDomain:kNanoPreferencesSyncDomain pairingID:self->_activeDeviceID pairingDataStore:self->_pairingDataStore];
      v6 = self->_domainAccessor;
      self->_domainAccessor = v5;

      domainAccessor = self->_domainAccessor;
    }

    else
    {
      domainAccessor = 0;
    }
  }

  return domainAccessor;
}

- (void)startMonitoringPairingEventsWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_100026EB0();
  }

  queue = self->_queue;
  self->_queue = queueCopy;
  v6 = queueCopy;

  v7 = +[NPSPairedDeviceRegistry registry];

  [v7 addDelegate:self];

  [(NPSDeviceRegistry *)self checkForActiveDeviceChange];
}

- (NSString)perGizmoCacheDirectoryPath
{
  perGizmoCacheDirectoryPath = self->_perGizmoCacheDirectoryPath;
  if (!perGizmoCacheDirectoryPath)
  {
    if (self->_activeDeviceID)
    {
      v4 = [(NSString *)self->_pairingDataStore stringByAppendingPathComponent:@"NanoPreferencesSync"];
      v5 = [v4 stringByAppendingPathComponent:@"Cache/"];

      stringByStandardizingPath = [v5 stringByStandardizingPath];
      v7 = [stringByStandardizingPath stringByAppendingString:@"/"];

      v8 = [objc_opt_class() createDirectoryIfNeeded:v7];
      v9 = self->_perGizmoCacheDirectoryPath;
      self->_perGizmoCacheDirectoryPath = v7;

      perGizmoCacheDirectoryPath = self->_perGizmoCacheDirectoryPath;
    }

    else
    {
      perGizmoCacheDirectoryPath = 0;
    }
  }

  return perGizmoCacheDirectoryPath;
}

- (NSString)globalCacheDirectoryPath
{
  globalCacheDirectoryPath = self->_globalCacheDirectoryPath;
  if (!globalCacheDirectoryPath)
  {
    if (self->_activeDeviceID)
    {
      v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
      v5 = [v4 objectAtIndexedSubscript:0];
      v6 = [v5 stringByAppendingPathComponent:@"NanoPreferencesSync"];

      v7 = [v6 stringByAppendingPathComponent:@"Cache/"];

      stringByStandardizingPath = [v7 stringByStandardizingPath];
      v9 = [stringByStandardizingPath stringByAppendingString:@"/"];

      v10 = [objc_opt_class() createDirectoryIfNeeded:v9];
      v11 = self->_globalCacheDirectoryPath;
      self->_globalCacheDirectoryPath = v9;

      globalCacheDirectoryPath = self->_globalCacheDirectoryPath;
    }

    else
    {
      globalCacheDirectoryPath = 0;
    }
  }

  return globalCacheDirectoryPath;
}

- (NSString)userDefaultsBackupDirectoryPath
{
  userDefaultsBackupDirectoryPath = self->_userDefaultsBackupDirectoryPath;
  if (!userDefaultsBackupDirectoryPath)
  {
    if (self->_activeDeviceID)
    {
      v4 = [(NSString *)self->_pairingDataStore stringByAppendingPathComponent:@"NanoPreferencesSync"];
      v5 = [v4 stringByAppendingPathComponent:@"Backup/UserDefaults/"];

      stringByStandardizingPath = [v5 stringByStandardizingPath];
      v7 = [stringByStandardizingPath stringByAppendingString:@"/"];

      v8 = [objc_opt_class() createDirectoryIfNeeded:v7];
      v9 = self->_userDefaultsBackupDirectoryPath;
      self->_userDefaultsBackupDirectoryPath = v7;

      userDefaultsBackupDirectoryPath = self->_userDefaultsBackupDirectoryPath;
    }

    else
    {
      userDefaultsBackupDirectoryPath = 0;
    }
  }

  return userDefaultsBackupDirectoryPath;
}

- (NSString)filesBackupDirectoryPath
{
  filesBackupDirectoryPath = self->_filesBackupDirectoryPath;
  if (!filesBackupDirectoryPath)
  {
    if (self->_activeDeviceID)
    {
      v4 = [(NSString *)self->_pairingDataStore stringByAppendingPathComponent:@"NanoPreferencesSync"];
      v5 = [v4 stringByAppendingPathComponent:@"Backup/Files/"];

      stringByStandardizingPath = [v5 stringByStandardizingPath];
      v7 = [stringByStandardizingPath stringByAppendingString:@"/"];

      v8 = [objc_opt_class() createDirectoryIfNeeded:v7];
      v9 = self->_filesBackupDirectoryPath;
      self->_filesBackupDirectoryPath = v7;

      filesBackupDirectoryPath = self->_filesBackupDirectoryPath;
    }

    else
    {
      filesBackupDirectoryPath = 0;
    }
  }

  return filesBackupDirectoryPath;
}

- (NSString)filesBackupMetadataIndexPath
{
  filesBackupMetadataIndexPath = self->_filesBackupMetadataIndexPath;
  if (!filesBackupMetadataIndexPath)
  {
    if (self->_activeDeviceID)
    {
      filesBackupDirectoryPath = [(NPSDeviceRegistry *)self filesBackupDirectoryPath];
      v5 = [filesBackupDirectoryPath stringByAppendingPathComponent:@"index"];

      stringByStandardizingPath = [v5 stringByStandardizingPath];

      v7 = self->_filesBackupMetadataIndexPath;
      self->_filesBackupMetadataIndexPath = stringByStandardizingPath;

      filesBackupMetadataIndexPath = self->_filesBackupMetadataIndexPath;
    }

    else
    {
      filesBackupMetadataIndexPath = 0;
    }
  }

  return filesBackupMetadataIndexPath;
}

- (void)registryChanged:(id)changed
{
  v4 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registry changed", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C64;
  block[3] = &unk_10003CBA8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSString)databasePath
{
  databasePath = self->_databasePath;
  if (!databasePath)
  {
    v4 = [(NSString *)self->_pairingDataStore stringByAppendingPathComponent:@"NanoPreferencesSync"];
    v5 = [objc_opt_class() createDirectoryIfNeeded:v4];
    v6 = [v4 stringByAppendingPathComponent:@"database.db"];

    v7 = self->_databasePath;
    self->_databasePath = v6;

    databasePath = self->_databasePath;
  }

  return databasePath;
}

- (void)checkForActiveDeviceChange
{
  v3 = +[NPSPairedDeviceRegistry registry];
  getActiveDevice = [v3 getActiveDevice];
  if ([getActiveDevice isArchived])
  {

    getActiveDevice = 0;
  }

  if ([v3 compatibilityState] - 6 <= 0xFFFFFFFFFFFFFFFCLL)
  {

    getActiveDevice = 0;
  }

  pairingID = [getActiveDevice pairingID];
  pairingStorePath = [getActiveDevice pairingStorePath];
  [(NPSDeviceRegistry *)self setActiveDevice:getActiveDevice];
  if (![pairingID isEqual:self->_activeDeviceID] || (objc_msgSend(pairingStorePath, "isEqual:", self->_pairingDataStore) & 1) == 0)
  {
    v7 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      activeDeviceID = self->_activeDeviceID;
      v16 = 138543618;
      v17 = activeDeviceID;
      v18 = 2114;
      v19 = pairingID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Paired device changed from %{public}@ to %{public}@", &v16, 0x16u);
    }

    objc_storeStrong(&self->_activeDeviceID, pairingID);
    objc_storeStrong(&self->_pairingDataStore, pairingStorePath);
    databasePath = self->_databasePath;
    self->_databasePath = 0;

    globalCacheDirectoryPath = self->_globalCacheDirectoryPath;
    self->_globalCacheDirectoryPath = 0;

    perGizmoCacheDirectoryPath = self->_perGizmoCacheDirectoryPath;
    self->_perGizmoCacheDirectoryPath = 0;

    userDefaultsBackupDirectoryPath = self->_userDefaultsBackupDirectoryPath;
    self->_userDefaultsBackupDirectoryPath = 0;

    filesBackupDirectoryPath = self->_filesBackupDirectoryPath;
    self->_filesBackupDirectoryPath = 0;

    filesBackupMetadataIndexPath = self->_filesBackupMetadataIndexPath;
    self->_filesBackupMetadataIndexPath = 0;

    [(NPSDomainAccessor *)self->_domainAccessor invalidate];
    domainAccessor = self->_domainAccessor;
    self->_domainAccessor = 0;

    [NPSServer setLaunchNotificationsEnabled:NPSShouldRun()];
  }
}

+ (id)pdrDeviceForIDSDevice:(id)device
{
  nsuuid = [device nsuuid];
  v4 = +[NPSPairedDeviceRegistry registry];
  v5 = [v4 deviceForBluetoothID:nsuuid];

  return v5;
}

+ (id)createDirectoryIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:neededCopy])
  {
    v5 = 0;
  }

  else
  {
    v14 = NSFileProtectionKey;
    v15 = NSFileProtectionNone;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = 0;
    [v4 createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v6 error:&v9];
    v5 = v9;

    if (v5)
    {
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = neededCopy;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to create directory (%@) with error: (%@)", buf, 0x16u);
      }
    }
  }

  return v5;
}

+ (id)idsDestinationIDForDevice:(id)device withIdsService:(id)service
{
  if (device)
  {
    deviceCopy = device;
    v6 = [service linkedDevicesWithRelationship:3];
    bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

    v8 = 0;
    if (v6 && bluetoothIdentifier)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100023218;
      v12[3] = &unk_10003D400;
      v13 = bluetoothIdentifier;
      v9 = [v6 indexOfObjectPassingTest:v12];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v10 = [v6 objectAtIndexedSubscript:v9];
        v8 = IDSCopyIDForDevice();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end