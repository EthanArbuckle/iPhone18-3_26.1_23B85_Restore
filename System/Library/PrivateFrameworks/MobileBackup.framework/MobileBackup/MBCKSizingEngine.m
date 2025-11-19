@interface MBCKSizingEngine
+ (id)domainsForApp:(id)a3 persona:(id)a4;
- (BOOL)_findChangesForBundleIDs:(id)a3 error:(id *)a4;
- (BOOL)_findChangesForDomains:(id)a3 error:(id *)a4;
- (BOOL)_runWithError:(id *)a3;
- (BOOL)cancel;
- (BOOL)findChangesWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (MBCKSizingEngine)initWithSettingsContext:(id)a3 serviceManager:(id)a4;
- (MBCKSizingEngine)initWithSettingsContext:(id)a3 serviceManager:(id)a4 domainManager:(id)a5;
- (id)_bundleIDForDomainName:(id)a3;
- (id)_findDomainsLimitedTo:(id)a3 error:(id *)a4;
- (id)fileScanner:(id)a3 didFindFile:(id)a4;
@end

@implementation MBCKSizingEngine

- (MBCKSizingEngine)initWithSettingsContext:(id)a3 serviceManager:(id)a4 domainManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 account];
  if (!v11)
  {
    __assert_rtn("[MBCKSizingEngine initWithSettingsContext:serviceManager:domainManager:]", "MBCKSizingEngine.m", 59, "account");
  }

  v12 = v11;
  v27.receiver = self;
  v27.super_class = MBCKSizingEngine;
  v13 = [(MBCKEngine *)&v27 initWithSettingsContext:v8 debugContext:0 domainManager:v10];
  v14 = v13;
  if (v13)
  {
    [(MBCKEngine *)v13 setServiceManager:v9];
    v14->_engineState = 1;
    v15 = [[MBFileScanner alloc] initWithDelegate:v14 mode:2 enginePolicy:[(MBEngine *)v14 enginePolicy] debugContext:v14->super.super._debugContext];
    scanner = v14->_scanner;
    v14->_scanner = v15;

    v17 = [MBAppManager alloc];
    v18 = [(MBEngine *)v14 settingsContext];
    v19 = [v18 mobileInstallation];
    v20 = [(MBAppManager *)v17 initWithMobileInstallation:v19];
    appManager = v14->super.super._appManager;
    v14->super.super._appManager = v20;

    v22 = [v8 bundleIDs];
    bundleIDsToScan = v14->_bundleIDsToScan;
    v14->_bundleIDsToScan = v22;

    v24 = objc_opt_new();
    pathsByDomainName = v14->_pathsByDomainName;
    v14->_pathsByDomainName = v24;

    v14->_formatOfLastCommittedSnapshot = -1;
  }

  return v14;
}

- (MBCKSizingEngine)initWithSettingsContext:(id)a3 serviceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  if (!v8)
  {
    __assert_rtn("[MBCKSizingEngine initWithSettingsContext:serviceManager:]", "MBCKSizingEngine.m", 74, "account");
  }

  v9 = v8;
  v10 = [MBDomainManager alloc];
  v11 = [v9 persona];
  v12 = [(MBDomainManager *)v10 initWithPersona:v11];

  v13 = [(MBCKSizingEngine *)self initWithSettingsContext:v6 serviceManager:v7 domainManager:v12];
  return v13;
}

- (BOOL)cancel
{
  v5.receiver = self;
  v5.super_class = MBCKSizingEngine;
  v3 = [(MBEngine *)&v5 cancel];
  if (!v3)
  {
    [(MBFileScanner *)self->_scanner cancel];
  }

  return v3;
}

- (BOOL)runWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self serviceManager];
  v6 = [v5 delegate];
  v52 = 0;
  v7 = [(MBCKSizingEngine *)self _runWithError:&v52];
  v8 = v52;
  v9 = MBGetDefaultLog();
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=sizing= Failed to size next backup: %@", buf, 0xCu);
      _MBLog();
    }

    [v6 manager:v5 didFailScanWithError:v8];
    goto LABEL_18;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    modifiedBytes = self->_modifiedBytes;
    totalBytesOnDisk = self->_totalBytesOnDisk;
    *buf = 134218240;
    v55 = modifiedBytes;
    v56 = 2048;
    v57 = totalBytesOnDisk;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=sizing= modified:%llu total:%llu", buf, 0x16u);
    v36 = self->_modifiedBytes;
    v37 = self->_totalBytesOnDisk;
    _MBLog();
  }

  v13 = [(MBCKEngine *)self cache];
  v14 = [v13 removeAllScannedDomains:a3];

  if (!v14)
  {
LABEL_18:
    v34 = 0;
    goto LABEL_19;
  }

  v38 = v6;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = [(MBCKSizingEngine *)self modifiedBytesByDomainName];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        v21 = [(MBCKSizingEngine *)self modifiedBytesByDomainName:v36];
        v22 = [v21 objectForKeyedSubscript:v20];

        v23 = [(MBCKEngine *)self cache];
        v24 = [v23 updateScannedDomain:v20 withSize:{objc_msgSend(v22, "unsignedLongLongValue")}];
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  v25 = [(MBCKSizingEngine *)self modifiedBytes];
  v26 = [(MBCKSizingEngine *)self modifiedBytesByBundleID];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10012635C;
  v45[3] = &unk_1003BF560;
  v6 = v38;
  v27 = v38;
  v46 = v27;
  v28 = v5;
  v47 = v28;
  [v26 enumerateKeysAndObjectsUsingBlock:v45];

  if (self->_bundleIDsToScan)
  {
    v29 = [(MBCKSizingEngine *)self modifiedBytesByDomainName];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1001263C8;
    v42[3] = &unk_1003BF588;
    v42[4] = self;
    v30 = v27;
    v43 = v30;
    v31 = v28;
    v44 = v31;
    [v29 enumerateKeysAndObjectsUsingBlock:v42];

    v32 = [(MBCKSizingEngine *)self pathsByDomainName];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100126470;
    v39[3] = &unk_1003BF5B0;
    v39[4] = self;
    v33 = v30;
    v6 = v38;
    v40 = v33;
    v41 = v31;
    [v32 enumerateKeysAndObjectsUsingBlock:v39];
  }

  [v27 managerDidFinishScan:v28 bytesUsed:{v25, v36}];

  v34 = 1;
LABEL_19:

  return v34;
}

- (BOOL)_runWithError:(id *)a3
{
  if (![(MBCKSizingEngine *)self setUpWithError:?]|| ![(MBCKSizingEngine *)self findChangesWithError:a3])
  {
    return 0;
  }

  v5 = 1;
  [(MBCKEngine *)self setIsFinished:1];
  v6 = [(MBCKEngine *)self progressModel];
  [v6 ended];

  return v5;
}

- (id)_bundleIDForDomainName:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_domainNamesByBundleID;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_domainNamesByBundleID objectForKeyedSubscript:v10, v15];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)setUpWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKSizingEngine setUpWithError:]", "MBCKSizingEngine.m", 158, "error");
  }

  v38.receiver = self;
  v38.super_class = MBCKSizingEngine;
  if (![(MBCKEngine *)&v38 setUpWithError:?])
  {
    return 0;
  }

  v5 = [(MBCKEngine *)self serviceManager];
  if (!v5)
  {
    __assert_rtn("[MBCKSizingEngine setUpWithError:]", "MBCKSizingEngine.m", 162, "manager");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKSizingEngine setUpWithError:]", "MBCKSizingEngine.m", 164, "account");
  }

  v8 = v7;
  v9 = [(MBEngine *)self domainManager];

  if (v9)
  {
    v10 = +[MBCKOperationPolicy expensiveCellularPolicy];
    [v10 setFetchAssets:0];
    v11 = [v6 databaseManager];
    v12 = [MBCKOperationTracker operationTrackerWithAccount:v8 databaseManager:v11 policy:v10 error:a3];

    if (v12)
    {
      v13 = [v10 operationGroupWithName:@"SizingEngine"];
      [v12 setCkOperationGroup:v13];

      v14 = MBDeviceUUID();
      v37 = 0;
      v15 = [MBCKAccount fetchDeviceRecordAndSnapshots:v14 account:v8 manager:v6 tracker:v12 error:&v37];
      v16 = v37;

      if (v15 || ([MBError isError:v16 withCode:204]& 1) != 0)
      {
        [(MBCKEngine *)self setDevice:v15];
        v17 = [v15 snapshots];
        v18 = [v17 count];

        v35 = v16;
        v36 = v15;
        if (v18)
        {
          v19 = [v15 snapshots];
          v20 = [v19 lastObject];
          v21 = [v20 snapshotFormat];

          self->_formatOfLastCommittedSnapshot = v21;
          v22 = MBGetDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = MBStringForSnapshotFormat();
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=sizing= Format of last committed snapshot: %@", &buf, 0xCu);

            v34 = MBStringForSnapshotFormat();
            _MBLog();
          }
        }

        else
        {
          self->_formatOfLastCommittedSnapshot = 0;
        }

        v26 = [(MBCKEngine *)self context];
        v27 = [v26 plugins];
        v28 = [v27 objectEnumerator];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v40 = sub_100137B50;
        v41 = &unk_1003BF940;
        v42 = self;
        v43 = "startingBackupWithEngine:";
        v29 = MBNotifyPluginsBlock(self, v28, "startingBackupWithEngine:", &buf);

        v24 = v29 == 0;
        v16 = v35;
        v15 = v36;
        if (v29)
        {
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=sizing= Failed to notify plugins of startingBackupWithEngine: %@", &buf, 0xCu);
            _MBLog();
          }

          v31 = v29;
          *a3 = v29;
        }
      }

      else
      {
        v33 = v16;
        v24 = 0;
        *a3 = v16;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=sizing= nil domain manager", &buf, 2u);
      _MBLog();
    }

    [MBError errorWithCode:1 format:@"nil domain manager"];
    *a3 = v24 = 0;
  }

  return v24;
}

- (BOOL)findChangesWithError:(id *)a3
{
  appManager = self->super.super._appManager;
  v6 = [(MBCKEngine *)self persona];
  LODWORD(appManager) = [(MBAppManager *)appManager loadAppsWithPersona:v6 safeHarbors:0 error:a3];

  v7 = 0;
  if (appManager)
  {
    if (self->_bundleIDsToScan)
    {
      v8 = [(MBCKSizingEngine *)self bundleIDsToScan];
      v9 = [(MBCKSizingEngine *)self _findChangesForBundleIDs:v8 error:a3];
    }

    else
    {
      v8 = [(MBCKSizingEngine *)self _findDomainsLimitedTo:0 error:a3];
      if (!v8)
      {
        v7 = 0;
        goto LABEL_7;
      }

      v9 = [(MBCKSizingEngine *)self _findChangesForDomains:v8 error:a3];
    }

    v7 = v9;
LABEL_7:
  }

  return v7;
}

- (BOOL)_findChangesForBundleIDs:(id)a3 error:(id *)a4
{
  v38 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  domainNamesByBundleID = self->_domainNamesByBundleID;
  self->_domainNamesByBundleID = v6;

  v40 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = [(MBEngine *)self appManager];
  v9 = [v8 allApps];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    v39 = *v50;
    do
    {
      v13 = 0;
      v41 = v11;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = [v14 bundleID];
        v16 = [v5 containsObject:v15];

        if (v16)
        {
          v17 = v5;
          v18 = objc_opt_new();
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v19 = objc_opt_class();
          v20 = self;
          v21 = [(MBCKEngine *)self persona];
          v22 = [v19 domainsForApp:v14 persona:v21];

          v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v46;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v46 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [*(*(&v45 + 1) + 8 * i) name];
                [v18 addObject:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v24);
          }

          [v40 unionSet:v18];
          self = v20;
          v28 = v20->_domainNamesByBundleID;
          v29 = [v14 bundleID];
          [(NSMutableDictionary *)v28 setObject:v18 forKeyedSubscript:v29];

          v5 = v17;
          v12 = v39;
          v11 = v41;
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v11);
  }

  v30 = [(MBCKSizingEngine *)self _findDomainsLimitedTo:v40 error:v38];
  if (v30 && [(MBCKSizingEngine *)self _findChangesForDomains:v30 error:v38])
  {
    v31 = objc_opt_new();
    v32 = self->_domainNamesByBundleID;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100127064;
    v43[3] = &unk_1003BF5D8;
    v43[4] = self;
    v44 = v31;
    v33 = v31;
    [(NSMutableDictionary *)v32 enumerateKeysAndObjectsUsingBlock:v43];
    v34 = [v33 copy];
    modifiedBytesByBundleID = self->_modifiedBytesByBundleID;
    self->_modifiedBytesByBundleID = v34;

    v36 = 1;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)_findDomainsLimitedTo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MBCKEngine *)self serviceManager];
  v7 = [(MBEngine *)self domainManager];
  v8 = [(MBEngine *)self appManager];
  formatOfLastCommittedSnapshot = self->_formatOfLastCommittedSnapshot;
  v10 = [(MBCKEngine *)self serviceAccount];
  [v7 addDomainsToBackUpToiCloudWithAppManager:v8 manager:v6 format:formatOfLastCommittedSnapshot account:v10];

  v11 = [(MBDomainManager *)self->super.super._domainManager allDomains];
  v12 = [v11 sortedArrayUsingComparator:&stru_1003BF5F8];

  v13 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = [v19 name];
        if (!v5 || [v5 containsObject:v20])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  return v13;
}

- (BOOL)_findChangesForDomains:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(MBCKEngine *)self handleCancelation:a4])
  {
    self->_modifiedBytes = 0;
    self->_totalBytesOnDisk = 0;
    v8 = objc_opt_new();
    modifiedBytesByDomainName = self->_modifiedBytesByDomainName;
    self->_modifiedBytesByDomainName = v8;

    v10 = objc_opt_new();
    totalBytesOnDiskByDomainName = self->_totalBytesOnDiskByDomainName;
    self->_totalBytesOnDiskByDomainName = v10;

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=sizing= Scanning domains: %@", buf, 0xCu);
      v41 = v6;
      _MBLog();
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v54;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(MBFileScanner *)self->_scanner scanDomain:*(*(&v53 + 1) + 8 * v17) snapshotMountPoint:0, v41];
        if (v18)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v22 = v18;
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = v22;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=sizing= Failed to scan for changes: %@", buf, 0xCu);
        _MBLog();
      }

      if (!a4)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

LABEL_13:

    v19 = [(MBCKEngine *)self device];
    v13 = v19;
    if (v19 && self->_formatOfLastCommittedSnapshot == 3)
    {
      v20 = [v19 snapshots];
      v52 = 0;
      v21 = MBGetAllDomainQuotasByDomainHMAC(v20, &v52);
      v22 = v52;

      if (!v21 && ([MBError isError:v22 withCode:4]& 1) == 0)
      {
        if (!a4)
        {
LABEL_40:
          v7 = 0;
          goto LABEL_41;
        }

LABEL_30:
        v31 = v22;
        v7 = 0;
        *a4 = v22;
LABEL_41:

        goto LABEL_42;
      }

      v43 = v21;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = [v13 snapshots];
      v24 = [v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        v27 = *v49;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v49 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v48 + 1) + 8 * i);
            if ([v29 snapshotFormat] == 3)
            {
              v26 += [v29 quotaUsed];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v25);
      }

      else
      {
        v26 = 0;
      }

      totalBytesOnDisk = self->_totalBytesOnDisk;
      v33 = totalBytesOnDisk <= v26;
      v34 = totalBytesOnDisk - v26;
      if (v33)
      {
        v34 = 0;
      }

      self->_modifiedBytes = v34;
      v35 = [v13 hmacKey];
      v36 = self->_totalBytesOnDiskByDomainName;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1001279CC;
      v44[3] = &unk_1003BF588;
      v45 = v35;
      v46 = v43;
      v47 = self;
      v37 = v43;
      v38 = v35;
      [(NSMutableDictionary *)v36 enumerateKeysAndObjectsUsingBlock:v44];
    }

    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(MBFileScanner *)self->_scanner loggableStats];
      *buf = 138412290;
      v60 = v39;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=sizing= Finished scanning for changes - %@", buf, 0xCu);

      v42 = [(MBFileScanner *)self->_scanner loggableStats];
      _MBLog();
    }

    v7 = 1;
    goto LABEL_41;
  }

  v7 = 0;
LABEL_42:

  return v7;
}

+ (id)domainsForApp:(id)a3 persona:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v5 containers];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 domain];
        [v7 addObject:v15];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  if (([v5 isSystemApp] & 1) == 0)
  {
    v16 = [v6 personaIdentifier];
    v17 = [v6 appPlaceholderArchiveDirectory];
    v24 = 0;
    v18 = [v5 archivePlaceholderDomainWithPersonaIdentifier:v16 intoDirectory:v17 error:&v24];
    v19 = v24;

    if (v18)
    {
      [v7 addObject:v18];
    }

    else
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 bundleID];
        *buf = 138412546;
        v30 = v21;
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=sizing= Failed to fetch placeholder for %@: %@", buf, 0x16u);

        v23 = [v5 bundleID];
        _MBLog();
      }
    }
  }

  return v7;
}

- (id)fileScanner:(id)a3 didFindFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [(MBCKEngine *)self handleCancelation:&v34];
  v9 = v34;
  if ((v8 & 1) == 0)
  {
    v10 = [v7 domain];
    if (!v10)
    {
      __assert_rtn("[MBCKSizingEngine fileScanner:didFindFile:]", "MBCKSizingEngine.m", 369, "file.domain");
    }

    v11 = [v7 domain];
    v12 = [v11 name];

    v33 = [v7 size];
    v13 = objc_autoreleasePoolPush();
    if (self->_formatOfLastCommittedSnapshot != 3)
    {
      v14 = [(MBCKEngine *)self cache];
      v15 = [MBCKFile fileWithMBFile:v7 cache:v14];

      if ([v15 changeType] - 1 <= 1)
      {
        self->_modifiedBytes += v33;
        modifiedBytesByDomainName = self->_modifiedBytesByDomainName;
        [v7 domain];
        v17 = v32 = v13;
        v18 = [v17 name];
        v19 = [(NSMutableDictionary *)modifiedBytesByDomainName objectForKeyedSubscript:v18];
        v20 = [v19 unsignedLongLongValue];

        v13 = v32;
        v21 = [NSNumber numberWithLongLong:v33 + v20];
        v22 = self->_modifiedBytesByDomainName;
        v23 = [v15 domainName];
        [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];

        if (self->_bundleIDsToScan)
        {
          v24 = [(NSMutableDictionary *)self->_pathsByDomainName objectForKeyedSubscript:v12];
          if (!v24)
          {
            v24 = objc_opt_new();
          }

          v25 = [v15 absolutePath];
          [v24 addObject:v25];

          pathsByDomainName = self->_pathsByDomainName;
          v27 = [v15 domainName];
          [(NSMutableDictionary *)pathsByDomainName setObject:v24 forKeyedSubscript:v27];
        }
      }
    }

    v28 = [(NSMutableDictionary *)self->_totalBytesOnDiskByDomainName objectForKeyedSubscript:v12];
    v29 = [v28 unsignedLongLongValue];

    v30 = [NSNumber numberWithLongLong:v33 + v29];
    [(NSMutableDictionary *)self->_totalBytesOnDiskByDomainName setObject:v30 forKeyedSubscript:v12];

    self->_totalBytesOnDisk += [v7 size];
    objc_autoreleasePoolPop(v13);
  }

  return v9;
}

@end