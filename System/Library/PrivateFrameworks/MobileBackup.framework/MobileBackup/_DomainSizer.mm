@interface _DomainSizer
+ (id)sizeDomain:(id)domain manager:(id)manager operationTracker:(id)tracker account:(id)account device:(id)device error:(id *)error;
- (BOOL)_addDependentDomainsWithError:(id *)error;
- (BOOL)_addDomainSizesWithError:(id *)error;
- (BOOL)_addPlaceholdersSizesWithError:(id *)error;
- (BOOL)_addZeroBytesForDisabledAndRestrictedDomainNames;
- (BOOL)_addZeroBytesForEmptyStaticDomainsWithError:(id *)error;
- (_DomainSizer)initWithPlaceholderFileList:(id)list persona:(id)persona cache:(id)cache appManager:(id)manager domainQuotasByDomainHMAC:(id)c restrictedDomains:(id)domains disabledDomains:(id)disabledDomains domainToSize:(id)self0;
- (id)_convertDomainSizesToDomainInfos;
- (id)_sizeWithError:(id *)error;
- (void)_addCloudSize:(int64_t)size localSize:(int64_t)localSize forDomain:(id)domain;
@end

@implementation _DomainSizer

- (_DomainSizer)initWithPlaceholderFileList:(id)list persona:(id)persona cache:(id)cache appManager:(id)manager domainQuotasByDomainHMAC:(id)c restrictedDomains:(id)domains disabledDomains:(id)disabledDomains domainToSize:(id)self0
{
  listCopy = list;
  personaCopy = persona;
  cacheCopy = cache;
  managerCopy = manager;
  cCopy = c;
  domainsCopy = domains;
  disabledDomainsCopy = disabledDomains;
  sizeCopy = size;
  v32.receiver = self;
  v32.super_class = _DomainSizer;
  v18 = [(_DomainSizer *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_placeholderDB, list);
    objc_storeStrong(&v19->_persona, persona);
    objc_storeStrong(&v19->_cache, cache);
    objc_storeStrong(&v19->_appManager, manager);
    objc_storeStrong(&v19->_domainQuotasByDomainHMAC, c);
    objc_storeStrong(&v19->_restrictedDomains, domains);
    objc_storeStrong(&v19->_disabledDomains, disabledDomains);
    objc_storeStrong(&v19->_domainToSize, size);
    v20 = objc_opt_new();
    systemAppsInBackup = v19->_systemAppsInBackup;
    v19->_systemAppsInBackup = v20;

    v22 = objc_opt_new();
    domainSizeByDomainName = v19->_domainSizeByDomainName;
    v19->_domainSizeByDomainName = v22;
  }

  return v19;
}

- (void)_addCloudSize:(int64_t)size localSize:(int64_t)localSize forDomain:(id)domain
{
  domainSizeByDomainName = self->_domainSizeByDomainName;
  domainCopy = domain;
  v10 = [(NSMutableDictionary *)domainSizeByDomainName objectForKeyedSubscript:domainCopy];
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  [v10 setLocalSize:{objc_msgSend(v10, "localSize") + localSize}];
  [v11 setCloudSize:{objc_msgSend(v11, "cloudSize") + size}];
  [(NSMutableDictionary *)self->_domainSizeByDomainName setObject:v11 forKeyedSubscript:domainCopy];
}

- (BOOL)_addDomainSizesWithError:(id *)error
{
  placeholderDB = self->_placeholderDB;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E27C;
  v5[3] = &unk_1003BCDF0;
  v5[4] = self;
  return [(MBPlaceholderFileListDB *)placeholderDB enumerateDomainList:error block:v5];
}

- (BOOL)_addPlaceholdersSizesWithError:(id *)error
{
  placeholderDB = self->_placeholderDB;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E5DC;
  v5[3] = &unk_1003BCE18;
  v5[4] = self;
  return [(MBPlaceholderFileListDB *)placeholderDB enumerateAppPlaceholderDomains:error block:v5];
}

- (BOOL)_addZeroBytesForDisabledAndRestrictedDomainNames
{
  v3 = [(NSSet *)self->_disabledDomains setByAddingObjectsFromSet:self->_restrictedDomains];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &_s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF_ptr;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_domainSizeByDomainName objectForKeyedSubscript:v9, v20, v21];

        if (!v10)
        {
          if ([v6[510] isContainerizedName:v9])
          {
            if ([v6[510] isAppName:v9])
            {
              v11 = [v6[510] containerIDWithName:v9];
              appManager = self->_appManager;
              persona = [(_DomainSizer *)self persona];
              v22 = 0;
              v14 = [(MBAppManager *)appManager fetchAppWithIdentifier:v11 persona:persona error:&v22];
              v15 = v22;

              if (v14)
              {
                v16 = MBGetDefaultLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v28 = v9;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Adding 0-byte quota usage for disabled app domain: %@", buf, 0xCu);
                  v20 = v9;
                  _MBLog();
                }

                [(_DomainSizer *)self _addCloudSize:0 localSize:0 forDomain:v9];
              }

              else if (([MBError isError:v15 withCode:4]& 1) == 0)
              {
                v18 = MBGetDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v28 = v9;
                  v29 = 2112;
                  v30 = v15;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to fetch fetch app for disabled domain %@: %@", buf, 0x16u);
                  v20 = v9;
                  v21 = v15;
                  _MBLog();
                }
              }

              v6 = &_s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF_ptr;
            }
          }

          else
          {
            v17 = MBGetDefaultLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v9;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Adding 0-byte quota usage for disabled static domain: %@", buf, 0xCu);
              v20 = v9;
              _MBLog();
            }

            [(_DomainSizer *)self _addCloudSize:0 localSize:0 forDomain:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  return 1;
}

- (BOOL)_addZeroBytesForEmptyStaticDomainsWithError:(id *)error
{
  v4 = [[MBDomainManager alloc] initWithPersona:self->_persona];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = v4;
  systemDomainsByName = [(MBDomainManager *)v4 systemDomainsByName];
  v6 = [systemDomainsByName countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(systemDomainsByName);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ((sub_10008EC54(v10) & 1) == 0)
        {
          v11 = [(NSMutableDictionary *)self->_domainSizeByDomainName objectForKeyedSubscript:v10];

          if (!v11)
          {
            v12 = MBGetDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Adding 0-byte quota usage for empty static domain: %@", buf, 0xCu);
              _MBLog();
            }

            [(_DomainSizer *)self _addCloudSize:0 localSize:0 forDomain:v10];
          }
        }
      }

      v7 = [systemDomainsByName countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  return 1;
}

- (BOOL)_addDependentDomainsWithError:(id *)error
{
  placeholderDB = self->_placeholderDB;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008F140;
  v30[3] = &unk_1003BCE40;
  v30[4] = self;
  v5 = [(MBPlaceholderFileListDB *)placeholderDB enumerateDomainDependencies:error block:v30];
  if (v5)
  {
    domainToSize = self->_domainToSize;
    if (!domainToSize || [(NSString *)domainToSize isEqualToString:@"AppDomain-com.apple.iBooks"])
    {
      v7 = [(_DomainSizer *)self _sizeOfDomain:@"BooksDomain"];
      v8 = v7;
      if (v7)
      {
        -[_DomainSizer _addCloudSize:localSize:forDomain:](self, "_addCloudSize:localSize:forDomain:", [v7 cloudSize], objc_msgSend(v7, "localSize"), @"AppDomain-com.apple.iBooks");
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(_DomainSizer *)self _sizeOfDomain:@"AppDomain-com.apple.iBooks"];
          *buf = 138412546;
          v33 = v8;
          v34 = 2112;
          v35 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Adding BooksDomain size %@ to iBooksDomain (total: %@)", buf, 0x16u);

          [(_DomainSizer *)self _sizeOfDomain:@"AppDomain-com.apple.iBooks"];
          v24 = v23 = v8;
          _MBLog();
        }
      }
    }

    v11 = self->_domainToSize;
    if (!v11 || [(NSString *)v11 isEqualToString:@"HealthDomain"])
    {
      v25 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = MBGetHealthRelatedDomains();
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v26 + 1) + 8 * i);
            if (([v17 isEqualToString:{@"HealthDomain", v23, v24}] & 1) == 0)
            {
              v18 = [(_DomainSizer *)self _sizeOfDomain:v17];
              v19 = v18;
              if (v18)
              {
                -[_DomainSizer _addCloudSize:localSize:forDomain:](self, "_addCloudSize:localSize:forDomain:", [v18 cloudSize], objc_msgSend(v18, "localSize"), @"HealthDomain");
                v20 = MBGetDefaultLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [(_DomainSizer *)self _sizeOfDomain:@"HealthDomain"];
                  *buf = 138412546;
                  v33 = v19;
                  v34 = 2112;
                  v35 = v21;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Adding health-related domain size %@ to HealthDomain (total: %@)", buf, 0x16u);

                  [(_DomainSizer *)self _sizeOfDomain:@"HealthDomain"];
                  v24 = v23 = v19;
                  _MBLog();
                }
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v14);
      }

      LOBYTE(v5) = v25;
    }
  }

  return v5;
}

- (id)_convertDomainSizesToDomainInfos
{
  v3 = objc_opt_new();
  domainSizeByDomainName = self->_domainSizeByDomainName;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10008F384;
  v12 = &unk_1003BCE68;
  selfCopy = self;
  v5 = v3;
  v14 = v5;
  [(NSMutableDictionary *)domainSizeByDomainName enumerateKeysAndObjectsUsingBlock:&v9];
  [v5 sortUsingComparator:{&stru_1003BCEA8, v9, v10, v11, v12, selfCopy}];
  v6 = v14;
  v7 = v5;

  return v5;
}

- (id)_sizeWithError:(id *)error
{
  if ([(_DomainSizer *)self _addDomainSizesWithError:?]&& [(_DomainSizer *)self _addPlaceholdersSizesWithError:error]&& [(_DomainSizer *)self _addZeroBytesForDisabledAndRestrictedDomainNames]&& [(_DomainSizer *)self _addZeroBytesForEmptyStaticDomainsWithError:error]&& [(_DomainSizer *)self _addDependentDomainsWithError:error])
  {
    _convertDomainSizesToDomainInfos = [(_DomainSizer *)self _convertDomainSizesToDomainInfos];
  }

  else
  {
    _convertDomainSizesToDomainInfos = 0;
  }

  return _convertDomainSizesToDomainInfos;
}

+ (id)sizeDomain:(id)domain manager:(id)manager operationTracker:(id)tracker account:(id)account device:(id)device error:(id *)error
{
  domainCopy = domain;
  managerCopy = manager;
  trackerCopy = tracker;
  accountCopy = account;
  deviceCopy = device;
  snapshots = [deviceCopy snapshots];
  v45 = 0;
  v43 = MBGetAllDomainQuotasByDomainHMAC(snapshots, &v45);
  v14 = v45;

  if (v43 || ([MBError isError:v14 withCode:4]& 1) != 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v43 count];
      *buf = 134217984;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=quota-calculation= Fetched %llu domain quotas by domainHMAC", buf, 0xCu);
      [v43 count];
      _MBLog();
    }

    persona = [accountCopy persona];
    snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];

    snapshots2 = [deviceCopy snapshots];
    lastObject = [snapshots2 lastObject];
    commitID = [lastObject commitID];

    v44 = 0;
    v22 = [deviceCopy synchronizeFileListsWithOperationTracker:trackerCopy snapshotDirectory:snapshotDatabaseDirectory commitID:commitID error:&v44 fetchedFileListBlock:&stru_1003BCEE8];
    v14 = v44;

    if (v22)
    {
      v23 = [MBPlaceholderFileListDB openOrCreatePlaceholderFileListIn:snapshotDatabaseDirectory commitID:commitID error:error];
      if (!v23)
      {
        goto LABEL_18;
      }

      v24 = [MBMobileInstallation alloc];
      v37 = [(MBMobileInstallation *)v24 initWithSafeHarborDir:kMBSafeHarborDir];
      v25 = [[MBAppManager alloc] initWithMobileInstallation:v37];
      v36 = [managerCopy allRestrictedDomainNames:v25 account:accountCopy];
      persona2 = [accountCopy persona];
      v27 = [(MBAppManager *)v25 allDisabledDomainNamesForPersona:persona2];

      v28 = [managerCopy openCacheWithAccount:accountCopy accessType:2 error:error];
      if (v28)
      {
        v29 = [_DomainSizer alloc];
        persona3 = [accountCopy persona];
        v31 = [(_DomainSizer *)v29 initWithPlaceholderFileList:v23 persona:persona3 cache:v28 appManager:v25 domainQuotasByDomainHMAC:v43 restrictedDomains:v36 disabledDomains:v27 domainToSize:domainCopy];

        v32 = [(_DomainSizer *)v31 _sizeWithError:error];
      }

      else
      {
        v32 = 0;
      }

      if (([v23 close:error] & 1) == 0)
      {
LABEL_18:
        v32 = 0;
      }
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = domainCopy;
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to synchronize file lists when sizing domain %@: %@", buf, 0x16u);
        _MBLog();
      }

      if (error)
      {
        v34 = v14;
        v32 = 0;
        *error = v14;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    snapshotDatabaseDirectory = MBGetDefaultLog();
    if (os_log_type_enabled(snapshotDatabaseDirectory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, snapshotDatabaseDirectory, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to get domain quotas by domain hmac: %@", buf, 0xCu);
      _MBLog();
    }

    v32 = 0;
  }

  return v32;
}

@end