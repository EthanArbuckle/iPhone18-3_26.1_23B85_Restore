@interface CPLPrequeliteStore
+ (BOOL)shouldPreventWipeOnUpgrade;
+ (void)_writeStoreMarkerAtURL:(id)a3 reason:(id)a4;
+ (void)wipeStoreAtNextOpeningWithCloudLibraryStorageURL:(id)a3 reason:(id)a4;
- (BOOL)_fix22666940;
- (BOOL)_fixStoreAfterAnyVersionChange;
- (BOOL)_hasDeactivateMarker;
- (BOOL)_initializeDB;
- (BOOL)_openWithError:(id *)a3;
- (BOOL)_postUpgradeToVersion:(int64_t)a3;
- (BOOL)_setupDBIfNeeded;
- (BOOL)_upgradeDB:(int64_t)a3;
- (BOOL)_upgradeToVersion:(int64_t)a3;
- (BOOL)_wipeIfDeactivated:(int64_t)a3 didWipeDatabase:(BOOL *)a4 error:(id *)a5;
- (BOOL)addGlobalVariable:(id)a3 defaultValue:(id)a4 error:(id *)a5;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)createStoragesDynamically:(id)a3 error:(id *)a4;
- (BOOL)deleteDynamicallyCreatedStorages:(id)a3 error:(id *)a4;
- (BOOL)executePostOpenWithError:(id *)a3;
- (BOOL)fixupOrphanScopeIndexes:(id)a3 error:(id *)a4;
- (BOOL)hasStoredChangeSessionUpdate;
- (BOOL)hasTable:(id)a3;
- (BOOL)isClientInSyncWithClientCache;
- (BOOL)openWithError:(id *)a3;
- (BOOL)performPostUpgradeMigrationsWithError:(id *)a3;
- (BOOL)resetValueForGlobalVariable:(id)a3 error:(id *)a4;
- (BOOL)setValue:(id)a3 forGlobalVariable:(id)a4 error:(id *)a5;
- (BOOL)shouldUpdateDisabledFeatures;
- (BOOL)storeChangeSessionUpdate:(id)a3 error:(id *)a4;
- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)a3;
- (BOOL)storeClientIsNotInSyncWithClientCacheWithError:(id *)a3;
- (BOOL)storeDerivativesFilter:(id)a3 error:(id *)a4;
- (BOOL)storeDisabledFeatures:(id)a3 error:(id *)a4;
- (BOOL)storePushPullGatekeepers:(id)a3 error:(id *)a4;
- (BOOL)storeUserIdentifier:(id)a3 error:(id *)a4;
- (BOOL)storeVersionHasChanged;
- (BOOL)table:(id)a3 hasColumnWithName:(id)a4;
- (BOOL)table:(id)a3 hasRecordsMatchingQuery:(id)a4;
- (BOOL)tableHasRecords:(id)a3;
- (BOOL)updateLibraryOptions:(unint64_t)a3 error:(id *)a4;
- (CPLChangeSessionUpdate)storedChangeSessionUpdate;
- (CPLPrequeliteStore)initWithAbstractObject:(id)a3;
- (Class)_userIdentifierClass;
- (NSArray)pushPullGatekeepers;
- (NSString)description;
- (NSURL)deactivateMarkerURL;
- (id)_corruptionMarkerURL;
- (id)_transactionStatsDescription;
- (id)_wipeReasonFromCorruptionInfo:(id)a3;
- (id)_wipeStoreMarkerURL;
- (id)clientCache;
- (id)cloudCache;
- (id)corruptionInfo;
- (id)createNewClientCacheIdentifier;
- (id)createNewLibraryVersion;
- (id)derivativesFilter;
- (id)disabledFeatures;
- (id)lastQuarantineCountReportDate;
- (id)redactedDescription;
- (id)scopeIndexesPerScopeType;
- (id)status;
- (id)transientPullRepository;
- (id)userIdentifier;
- (id)valueForGlobalVariable:(id)a3;
- (id)wipeReason;
- (int64_t)_sizeInBytes;
- (unint64_t)libraryOptions;
- (unint64_t)table:(id)a3 countOfRecordsMatchingQuery:(id)a4;
- (unint64_t)tableCountOfRecords:(id)a3;
- (void)_addPostUpgradeMigration:(id)a3;
- (void)_cacheValue:(id)a3 forVariable:(id)a4;
- (void)_closeUpgradeJournal;
- (void)_deleteCorruptionInfo;
- (void)_deleteWipeReason;
- (void)_markLibraryAsCorruptedWithInfo:(id)a3;
- (void)_notifyVacuumDidComplete;
- (void)_openUpgradeJournal;
- (void)_scheduleClientCacheDrop;
- (void)_scheduleClientCacheDropIfNecessary;
- (void)_setupProfilingHooks;
- (void)_unsetupProfilingHooks;
- (void)_vacuum:(int64_t)a3 withInitialDatabaseSize:(int64_t)a4;
- (void)_wipeBeforeOpeningIfNecessary;
- (void)_wipeWithReason:(id)a3;
- (void)blockWriteTransactionsWithCompletionHandler:(id)a3;
- (void)emergencyClose;
- (void)markAsCorrupted;
- (void)performBarrierTransaction:(id)a3 withBlock:(id)a4;
- (void)performReadTransaction:(id)a3 withBlock:(id)a4;
- (void)performWriteTransaction:(id)a3 withBlock:(id)a4 completionHandler:(id)a5;
- (void)recordUpgradeEvent:(id)a3 arguments:(char *)a4;
- (void)startVacuumWithCompletionHandler:(id)a3;
- (void)stopVacuum;
- (void)table:(id)a3 enumerateCountGroupedByProperty:(id)a4 block:(id)a5;
- (void)table:(id)a3 enumerateCountGroupedByUnsignedIntegerProperty:(id)a4 block:(id)a5;
- (void)table:(id)a3 enumerateDistinctValuesOfProperty:(id)a4 block:(id)a5;
- (void)triggerResetAfterUpgrade:(unint64_t)a3 withReason:(id)a4;
- (void)wipeStoreAtNextOpeningWithReason:(id)a3 completionBlock:(id)a4;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteStore

- (BOOL)isClientInSyncWithClientCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002DE8;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isClientInSyncWithClientCacheQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addPostUpgradeMigration:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->_postUpgradeMigrations)
  {
    v5 = objc_alloc_init(NSMutableArray);
    postUpgradeMigrations = self->_postUpgradeMigrations;
    self->_postUpgradeMigrations = v5;

    v4 = v8;
  }

  v7 = [v4 migrationDescription];
  [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to perform %@", v7];

  [(NSMutableArray *)self->_postUpgradeMigrations addObject:v8];
}

+ (BOOL)shouldPreventWipeOnUpgrade
{
  if (os_variant_has_internal_content())
  {
    if ((byte_1002D2B28 & 1) == 0)
    {
      v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileslideshow"];
      byte_1002D2B29 = [v2 BOOLForKey:@"com.apple.Photos.PreventRebuild"];
      byte_1002D2B28 = 1;
    }

    v3 = byte_1002D2B29;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (CPLPrequeliteStore)initWithAbstractObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPLPrequeliteStore;
  v3 = [(CPLPrequeliteStore *)&v6 initWithAbstractObject:a3];
  v4 = v3;
  if (v3)
  {
    sub_1001BB9A0(v3);
  }

  return v4;
}

- (void)triggerResetAfterUpgrade:(unint64_t)a3 withReason:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_didWipeLibrary)
  {
    sub_1001BBF78(v6, a3, self);
  }
}

- (id)_transactionStatsDescription
{
  v3 = [(NSMutableDictionary *)self->_transactionStatistics count];
  if (v3)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(NSMutableDictionary *)self->_transactionStatistics allValues];
    v6 = [v5 sortedArrayUsingSelector:"compare:"];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) description];
          [v4 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v4 componentsJoinedByString:@"\n  "];
  }

  else
  {
    v12 = @"no SQL statements";
  }

  return v12;
}

- (void)_setupProfilingHooks
{
  if (!self->_transactionStatistics)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    transactionStatistics = self->_transactionStatistics;
    self->_transactionStatistics = v3;

    objc_initWeak(&location, self);
    db = self->_db;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100002138;
    v13 = &unk_10027B4C0;
    objc_copyWeak(&v14, &location);
    [(PQLConnection *)db setProfilingHook:&v10];
    v6 = sqlite3_trace_v2([(PQLConnection *)self->_db dbHandle:v10], 2u, sub_1000024A4, self);
    if (v6 && (_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100150214();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(PQLConnection *)self->_db dbHandle];
        v9 = sqlite3_errstr(v6);
        sub_1001BC0F4(v8, v9, v16, v7);
      }
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_unsetupProfilingHooks
{
  if (self->_transactionStatistics)
  {
    [(PQLConnection *)self->_db setProfilingHook:0];
    sqlite3_trace_v2([(PQLConnection *)self->_db dbHandle], 2u, 0, 0);
    transactionStatistics = self->_transactionStatistics;
    self->_transactionStatistics = 0;
  }
}

- (BOOL)_fix22666940
{
  v3 = [(CPLPrequeliteStore *)self abstractObject];
  v44 = self;
  v4 = [(CPLPrequeliteStore *)self clientCache];
  v5 = [v3 cloudCache];
  v6 = [v5 platformObject];

  v7 = [v3 idMapping];
  v51 = [v7 platformObject];

  v8 = [v3 remappedRecords];
  v43 = [v8 platformObject];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v45 = v4;
  v9 = v4;
  v10 = v6;
  obj = [v9 _badContainerRelationsIdentifiers];
  v11 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  v12 = v11 == 0;
  if (!v11)
  {
LABEL_36:

    goto LABEL_37;
  }

  v13 = v11;
  v40 = v11 == 0;
  v41 = v3;
  v46 = 0;
  v14 = 0;
  v15 = *v54;
  v50 = CPLPrimaryScopeIdentifier;
  do
  {
    v16 = 0;
    v17 = -v14;
    v42 = &v13[v14];
    v47 = -v14;
    v48 = v13;
    do
    {
      if (*v54 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v53 + 1) + 8 * v16);
      v19 = objc_autoreleasePoolPush();
      if (v17 == v16 && (_CPLSilentLogging & 1) == 0)
      {
        v20 = sub_100150214();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found some bad container relations to fix", buf, 2u);
        }
      }

      buf[0] = 0;
      if (v18)
      {
        v21 = v18;
        v22 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v50 identifier:v21];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v51 cloudScopedIdentifierForLocalScopedIdentifier:v22 isFinal:buf];

      if (v23)
      {
        v24 = [v23 identifier];
        v25 = [v10 _relatedIdentifierForRecordWithIdentifier:v24];

        if (v25)
        {
          v26 = v15;
          v27 = [CPLScopedIdentifier alloc];
          v28 = [v23 identifier];
          v29 = v10;
          v30 = [v10 _relatedIdentifierForRecordWithIdentifier:v28];
          v31 = [v27 initWithScopeIdentifier:v50 identifier:v30];

          if (!v31)
          {
            goto LABEL_20;
          }

          v32 = [v51 localScopedIdentifierForCloudScopedIdentifier:v31 isFinal:buf];
          if (v32)
          {
            goto LABEL_18;
          }

          v35 = [v43 realScopedIdentifierForRemappedScopedIdentifier:v31];
          v10 = v29;
          if (v35)
          {
            v36 = [v51 localScopedIdentifierForCloudScopedIdentifier:v35 isFinal:buf];
            if (v36)
            {
              v32 = v36;
              if ([v45 hasRecordWithScopedIdentifier:v36])
              {
                [(CPLPrequeliteStore *)v44 recordUpgradeEvent:@"FIX: Cloud %@'s item: %@ => %@", v23, v31, v35];
                v37 = [v29 remapAllRecordsWithPreviousScopedIdentifier:v31 newScopedIdentifier:v35 error:0];

                if (!v37)
                {

LABEL_35:
                  objc_autoreleasePoolPop(v19);
                  v3 = v41;
                  v10 = v29;
                  v12 = v40;
                  goto LABEL_36;
                }

LABEL_18:
                [(CPLPrequeliteStore *)v44 recordUpgradeEvent:@"FIX: Client %@'s item: %@", v18, v32];
                v33 = [v32 identifier];
                v34 = [v45 _updateRelatedIdentifier:v33 forRecordWithIdentifier:v18];

                if ((v34 & 1) == 0)
                {
                  goto LABEL_35;
                }

                ++v46;
LABEL_20:
                v10 = v29;
LABEL_21:
                v15 = v26;
                v17 = v47;
                v13 = v48;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_21;
        }
      }

LABEL_22:

      objc_autoreleasePoolPop(v19);
      ++v16;
    }

    while (v13 != v16);
    v38 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    v13 = v38;
    v14 = v42;
  }

  while (v38);

  if (v42)
  {
    v3 = v41;
    if (v42 == v46)
    {
      [(CPLPrequeliteStore *)v44 recordUpgradeEvent:@"Fixed %lu relations", v42];
      v12 = 1;
    }

    else
    {
      v12 = [v45 _deleteBadRelations];
      [(CPLPrequeliteStore *)v44 recordUpgradeEvent:@"Fixed %lu relations and deleted %lu", v42, v42 - v46];
    }
  }

  else
  {
    v12 = 1;
    v3 = v41;
  }

LABEL_37:

  return v12;
}

- (void)_scheduleClientCacheDrop
{
  if (self->_hasScheduledClientCacheDrop)
  {
    sub_1001BC2E4(a2, self);
  }

  self->_hasScheduledClientCacheDrop = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100150EE8;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = v3;
  if (byte_1002D2B2B == 1)
  {
    (v3[2])(v3);
  }

  else
  {
    v5 = dispatch_time(0, 10000000000);
    dispatch_after(v5, self->_queue, v4);
  }
}

- (void)_scheduleClientCacheDropIfNecessary
{
  if (!self->_hasScheduledClientCacheDrop)
  {
    v3 = [(PQLConnection *)self->_db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT name FROM sqlite_master WHERE type='table' AND name='clientCache'"];

    if (v3)
    {
      sub_1001BC458(self);
    }
  }
}

- (BOOL)_upgradeToVersion:(int64_t)a3
{
  clientCacheMigrator = self->_clientCacheMigrator;
  if (a3 >= 64 && clientCacheMigrator)
  {
    v6 = 0;
LABEL_7:
    self->_clientCacheMigrator = v6;

    goto LABEL_8;
  }

  if (a3 <= 63 && !clientCacheMigrator)
  {
    v6 = [[CPLPrequeliteClientCacheMigrator alloc] initWithStore:self];
    clientCacheMigrator = self->_clientCacheMigrator;
    goto LABEL_7;
  }

LABEL_8:
  v7 = 1;
  if (a3 <= 43)
  {
    if (a3 > 28)
    {
      if (a3 == 29)
      {
        self->_mustFix22666940 = 1;
      }

      else if (a3 == 36)
      {
        v8 = 128;
        goto LABEL_37;
      }
    }

    else if (a3 == 21)
    {
      dbURL = self->_dbURL;
      v22 = 0;
      v21 = 0;
      v11 = [(NSURL *)dbURL getResourceValue:&v22 forKey:NSURLCreationDateKey error:&v21];
      v12 = v22;
      v13 = v21;
      if ((v11 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = sub_100150214();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [(NSURL *)self->_dbURL path];
            *buf = 138412546;
            v24 = v15;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Can't get creation date for %@: %@", buf, 0x16u);
          }
        }

        v16 = +[NSDate date];

        v12 = v16;
      }

      v7 = [(CPLPrequeliteStore *)self addGlobalVariable:self->_libraryCreationDateVar defaultValue:v12 error:0];
    }

    else if (a3 == 28)
    {
      v8 = 96;
      goto LABEL_37;
    }

    return v7;
  }

  if (a3 > 50)
  {
    switch(a3)
    {
      case '3':
        if ([(CPLPrequeliteStore *)self addGlobalVariable:self->_shouldUpdateDisabledFeaturesVar defaultValue:&off_10028F0E8 error:0])
        {
          v8 = 192;
          goto LABEL_37;
        }

        return 0;
      case '=':
        v8 = 216;
        goto LABEL_37;
      case 'Q':
        v8 = 136;
LABEL_37:
        v17 = *&self->CPLPlatformObject_opaque[v8];
        v19 = self;
        v18 = 0;
        goto LABEL_38;
    }

    return v7;
  }

  if (a3 == 44)
  {
    v9 = 176;
  }

  else
  {
    if (a3 != 50)
    {
      return v7;
    }

    v9 = 224;
  }

  v17 = *&self->CPLPlatformObject_opaque[v9];
  v18 = &off_10028F0E8;
  v19 = self;
LABEL_38:

  return [(CPLPrequeliteStore *)v19 addGlobalVariable:v17 defaultValue:v18 error:0];
}

- (BOOL)_postUpgradeToVersion:(int64_t)a3
{
  if (a3 > 81)
  {
    switch(a3)
    {
      case 'R':
        v8 = objc_autoreleasePoolPush();
        v9 = CPLStoreMigrationAssistant_101386451;
        break;
      case 'V':
        v8 = objc_autoreleasePoolPush();
        v9 = CPLStoreMigrationAssistant_107137447;
        break;
      case 'W':
        v5 = [CPLStoreMigrationAssistant_110019222 alloc];
        v6 = [(CPLPrequeliteStore *)self abstractObject];
        v7 = [(CPLStoreMigrationAssistant_110019222 *)v5 initWithStore:v6];

        [(CPLPrequeliteStore *)self _addPostUpgradeMigration:v7];
LABEL_18:

        return 1;
      default:
        return 1;
    }

    v13 = [v9 alloc];
    v14 = [(CPLPrequeliteStore *)self abstractObject];
    v15 = [v13 initWithStore:v14];

    [(CPLPrequeliteStore *)self _addPostUpgradeMigration:v15];
    objc_autoreleasePoolPop(v8);
    return 1;
  }

  if (a3 == 31)
  {
    self->_mustMigratePushQueue = 1;
    return 1;
  }

  if (a3 != 40)
  {
    if (a3 == 63)
    {
      clientCacheMigrator = self->_clientCacheMigrator;
      self->_clientCacheMigrator = 0;

      [(CPLPrequeliteStore *)self _scheduleClientCacheDrop];
    }

    return 1;
  }

  if (self->_mustFix22666940)
  {
    [(CPLPrequeliteStore *)self _fix22666940];
  }

  if (self->_mustMigratePushQueue)
  {
    v10 = [(CPLPrequeliteStore *)self abstractObject];
    v7 = [v10 resourceStorage];

    v11 = [(CPLStoreMigrationAssistant_110019222 *)v7 shouldCheckFilesForUpload];
    [(CPLStoreMigrationAssistant_110019222 *)v7 setShouldCheckFilesForUpload:0];
    v12 = [[CPLPrequeliteFlattentPipelineMigrator alloc] initWithStore:self];
    if (![(CPLPrequeliteFlattentPipelineMigrator *)v12 migrate])
    {
      sub_1001BC4D0(v12, self);
    }

    [(CPLStoreMigrationAssistant_110019222 *)v7 setShouldCheckFilesForUpload:v11];

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)_fixStoreAfterAnyVersionChange
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = self;
  v4 = [(CPLPrequeliteStore *)self abstractObject];
  v5 = [v4 storages];

  v6 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    v9 = &CPLFeatureNameEPP_ptr;
    v45 = v3;
    while (2)
    {
      v10 = 0;
      v46 = v7;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = [v11 platformObject];
        if (([v12 fixStorageAfterAnyVersionChange] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BC5A4(v11, v44);
          }

          goto LABEL_25;
        }

        v13 = [v11 scopeType];
        if ([v12 isAlive])
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = [v12 scopeIndexes];
          if ([v15 count])
          {
            v16 = v8;
            v17 = [v9[192] numberWithUnsignedInteger:v13];
            [v3 objectForKeyedSubscript:v17];
            v19 = v18 = v3;

            if (v19)
            {
              [v19 addIndexes:v15];
            }

            else
            {
              v20 = [v15 mutableCopy];
              v21 = [v9[192] numberWithUnsignedInteger:v13];
              [v18 setObject:v20 forKeyedSubscript:v21];
            }

            v9 = &CPLFeatureNameEPP_ptr;
            v8 = v16;
            v3 = v45;
            v7 = v46;
          }
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  globals = v44->_globals;
  v23 = [(CPLPrequeliteVariable *)v44->_mainScopeIdentifierVar variableName];
  LOBYTE(globals) = [(CPLPrequeliteStore *)v44 table:globals hasColumnWithName:v23];

  if (globals)
  {
    goto LABEL_20;
  }

  v26 = [(CPLPrequeliteStore *)v44 pqlConnection];
  v27 = [v26 fetchObjectOfClass:objc_opt_class() sql:@"SELECT universeName FROM globals"];
  v28 = v27;
  v29 = CPLPrimaryScopeIdentifier;
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = CPLPrimaryScopeIdentifier;
  }

  v31 = v30;

  v32 = [v31 isEqualToString:v29];
  if (v32)
  {
    v33 = v32;
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BC66C();
    }

    v34 = [(CPLPrequeliteStore *)v44 addGlobalVariable:v44->_mainScopeIdentifierVar defaultValue:v31 error:0];

    if ((v33 & v34) == 1)
    {
      v35 = [(CPLPrequeliteStore *)v44 abstractObject];
      v36 = [v35 engineLibrary];
      v37 = [v36 store];
      v38 = [v37 scopes];
      v39 = [v38 clearAllQuotaFlagsForMainScopeWithReason:@"fix store after any version change" error:0];

      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (!v34)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = sub_100150214();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v31;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Database is bound to %@ and need to be wiped before opening", buf, 0xCu);
      }
    }

    v47 = 0;
    v41 = [(CPLPrequeliteStore *)v44 _closeWipeAndReOpenWithReason:@"upgrading parallel universe database" warnUserIfPossible:0 createRadar:0 error:&v47];
    v42 = v47;
    v43 = v42;
    if (!v41)
    {
      [v26 setLastError:v42];

LABEL_25:
      v24 = 0;
      goto LABEL_26;
    }
  }

LABEL_20:
  if ([v3 count])
  {
    v24 = [(CPLPrequeliteStore *)v44 fixupOrphanScopeIndexes:v3 error:0];
  }

  else
  {
    v24 = 1;
  }

LABEL_26:

  return v24;
}

- (BOOL)performPostUpgradeMigrationsWithError:(id *)a3
{
  if (self->_postUpgradeMigrations)
  {
    [(CPLPrequeliteStore *)self _openUpgradeJournal];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_postUpgradeMigrations;
    v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v33)
    {
      v30 = a3;
      v5 = 0;
      v32 = *v37;
      v6 = &_CPLSilentLogging;
      v7 = &CPLFeatureNameEPP_ptr;
      v8 = &CPLFeatureNameEPP_ptr;
      while (2)
      {
        v9 = 0;
        v10 = v5;
        do
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v36 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          if ((*v6 & 1) == 0)
          {
            v12 = sub_100150214();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v11 migrationDescription];
              *buf = 138412290;
              v43 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Start migration '%@'", buf, 0xCu);
            }
          }

          v14 = v7[46];
          v15 = [v8[249] date];
          v16 = [v14 stringFromDate:v15];
          v17 = [v11 migrationDescription];
          [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Performing migration '%@'", v16, v17];

          v18 = [v8[249] date];
          v35 = v10;
          v19 = [v11 performMigrationWithError:&v35];
          v5 = v35;

          if ((v19 & 1) == 0 && v5)
          {
            if ((*v6 & 1) == 0)
            {
              sub_1001BC6FC();
            }

            [(PQLConnection *)self->_db setLastError:v5];

            objc_autoreleasePoolPop(context);
            v26 = 0;
            a3 = v30;
            goto LABEL_23;
          }

          v20 = v7[46];
          [v8[249] date];
          v22 = v21 = v6;
          v23 = [v20 stringFromDate:v22];
          v24 = [v11 migrationDescription];
          [v18 timeIntervalSinceNow];
          [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Performed migration '%@' in %.1fs: Done", v23, v24, -v25];

          v6 = v21;
          if ((*v21 & 1) == 0)
          {
            sub_1001BC7B4(v40, v11, &v41);
          }

          objc_autoreleasePoolPop(context);
          v9 = v9 + 1;
          v10 = v5;
          v7 = &CPLFeatureNameEPP_ptr;
          v8 = &CPLFeatureNameEPP_ptr;
        }

        while (v33 != v9);
        v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }

      a3 = v30;
      v26 = v19;
    }

    else
    {
      v5 = 0;
      v26 = 1;
    }

LABEL_23:

    [(CPLPrequeliteStore *)self _closeUpgradeJournal];
    postUpgradeMigrations = self->_postUpgradeMigrations;
    self->_postUpgradeMigrations = 0;

    if (a3 && !v26)
    {
      v28 = v5;
      v26 = 0;
      *a3 = v5;
    }
  }

  else
  {
    v5 = 0;
    v26 = 1;
  }

  return v26;
}

- (NSURL)deactivateMarkerURL
{
  v2 = [(CPLPrequeliteStore *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 clientLibraryBaseURL];
  v5 = [v4 URLByDeletingLastPathComponent];
  v6 = [v5 URLByAppendingPathComponent:@"disableICloudPhotos" isDirectory:0];

  return v6;
}

- (BOOL)_hasDeactivateMarker
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(CPLPrequeliteStore *)self deactivateMarkerURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

- (id)_wipeReasonFromCorruptionInfo:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"comment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v4 = @"corrupted database";
LABEL_7:

  return v4;
}

- (void)_wipeBeforeOpeningIfNecessary
{
  v3 = [(CPLPrequeliteStore *)self corruptionInfo];
  v4 = v3;
  if (v3)
  {
    sub_1001BCA70(v3, self);
  }

  v5 = [(CPLPrequeliteStore *)self wipeReason];
  v6 = v5;
  if (v5)
  {
    sub_1001BCB3C(v5, self);
  }
}

- (BOOL)_wipeIfDeactivated:(int64_t)a3 didWipeDatabase:(BOOL *)a4 error:(id *)a5
{
  if (a3 < 50 || self->_reentrencyGuard || (-[CPLPrequeliteStore valueForGlobalVariable:](self, "valueForGlobalVariable:", self->_deactivatedVar), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 integerValue], v8, !v9))
  {
    *a4 = 0;
    return 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100150214();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Database has been marked as deactivated - wiping everything", v12, 2u);
      }
    }

    *a4 = 1;
    return [(CPLPrequeliteStore *)self _closeWipeAndReOpenWithReason:@"wiping database because it has been marked as deactivated but not deleted afterwards" warnUserIfPossible:0 createRadar:0 error:a5];
  }
}

- (void)_openUpgradeJournal
{
  if (self->_upgradeEventJournal != -1)
  {
    sub_1001BCBF4(a2, self);
  }

  v3 = [(CPLPrequeliteStore *)self abstractObject];
  v4 = [v3 engineLibrary];
  v6 = [v4 cloudLibraryStateStorageURL];

  v5 = [v6 URLByAppendingPathComponent:@"cpl-upgrade-events.log"];
  self->_upgradeEventJournal = open([v5 fileSystemRepresentation], 521, 420);
}

- (void)_closeUpgradeJournal
{
  upgradeEventJournal = self->_upgradeEventJournal;
  if (upgradeEventJournal != -1)
  {
    close(upgradeEventJournal);
    self->_upgradeEventJournal = -1;
  }
}

- (BOOL)_setupDBIfNeeded
{
  self->_configuringDB = 1;
  v3 = [(PQLConnection *)self->_db userVersion];
  v4 = [v3 longLongValue];

  if (!v4)
  {
    self->_storeVersionHasBeenJustCreated = 1;
    v11 = [(CPLPrequeliteStore *)self _initializeDB];
    if ([(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]&& [(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]!= 94)
    {
      [(CPLSimpleUpgradeHistory *)self->_history noteDatabaseWasUpgradedToVersion:94 fromVersion:[(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]];
    }

    goto LABEL_28;
  }

  v24 = 0;
  if ([(CPLPrequeliteStore *)self _wipeIfDeactivated:v4 didWipeDatabase:&v24 error:0])
  {
    if ((v24 & 1) != 0 || v4 == 94)
    {
      if ((v24 & 1) == 0 && [(CPLSimpleUpgradeHistory *)self->_history versionHasChanged]&& ![(CPLPrequeliteStore *)self _fixStoreAfterAnyVersionChange])
      {
        goto LABEL_27;
      }
    }

    else
    {
      [(CPLPrequeliteStore *)self _openUpgradeJournal];
      v5 = +[NSDate date];
      v6 = [CPLDateFormatter stringFromDate:v5];
      [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrading from %lld to %lld...", v6, v4, 94];

      self->_failInsteadOfWipe = [objc_opt_class() shouldPreventWipeOnUpgrade];
      v7 = [(CPLPrequeliteStore *)self _upgradeDB:v4];
      self->_failInsteadOfWipe = 0;
      if ((v7 & 1) == 0)
      {
        v20 = +[NSDate date];
        v21 = [CPLDateFormatter stringFromDate:v20];
        v22 = [(PQLConnection *)self->_db lastCPLError];
        [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrade from %lld to %lld: Failed (%@)", v21, v4, 94, v22];

        [(CPLPrequeliteStore *)self _closeUpgradeJournal];
LABEL_27:
        v11 = 0;
        goto LABEL_28;
      }

      [(CPLSimpleUpgradeHistory *)self->_history noteDatabaseWasUpgradedToVersion:94 fromVersion:v4];
      self->_storeVersionHasChanged = 1;
      [(PQLConnection *)self->_db setUserVersion:94];
      v8 = +[NSDate date];
      v9 = [CPLDateFormatter stringFromDate:v8];
      [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrade from %lld to %lld: Done", v9, v4, 94];

      v10 = [(CPLPrequeliteStore *)self _fixStoreAfterAnyVersionChange];
      [(CPLPrequeliteStore *)self _closeUpgradeJournal];
      if ((v10 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v12 = [(CPLPrequeliteStore *)self abstractObject];
    v13 = [v12 mainScopeIdentifier];

    v14 = v13;
    v15 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_mainScopeIdentifierVar];
    v16 = v15;
    if (v14 && v15)
    {
      v17 = [v14 isEqual:v15];

      if ((v17 & 1) == 0)
      {
LABEL_18:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v18 = sub_100150214();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_mainScopeIdentifierVar];
            *buf = 138412546;
            v26 = v19;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Main scope identifier has changed (from %@ to %@)", buf, 0x16u);
          }
        }

        v11 = [(CPLPrequeliteStore *)self _closeWipeAndReOpenWithReason:@"main scope identifier has changed" warnUserIfPossible:1 createRadar:0 error:0];
        goto LABEL_25;
      }
    }

    else
    {

      if (v14 | v16)
      {
        goto LABEL_18;
      }
    }

    v11 = 1;
LABEL_25:

LABEL_28:
    self->_configuringDB = 0;
    return v11;
  }

  return 0;
}

- (id)_corruptionMarkerURL
{
  v2 = [(CPLPrequeliteStore *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 cloudLibraryStateStorageURL];

  v5 = [v4 URLByAppendingPathComponent:@"corruption_marker"];

  return v5;
}

- (id)corruptionInfo
{
  v2 = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [NSDictionary dictionaryWithContentsOfURL:v2];
    if (!v6)
    {
      v6 = [NSString stringWithContentsOfURL:v2 encoding:4 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_markLibraryAsCorruptedWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  [v4 writeToURL:v5 atomically:1];

  v7 = [(CPLPrequeliteStore *)self abstractObject];
  v6 = [v7 engineLibrary];
  [v6 reportLibraryCorrupted];
}

- (BOOL)_openWithError:(id *)a3
{
  [(CPLPrequeliteStore *)self _wipeBeforeOpeningIfNecessary];
  v6 = objc_alloc_init(PQLConnection);
  db = self->_db;
  self->_db = v6;

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_db);
  v8 = self->_db;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100153338;
  v67[3] = &unk_10027B530;
  objc_copyWeak(&v68, &location);
  v69[1] = a2;
  objc_copyWeak(v69, &from);
  [(PQLConnection *)v8 setSqliteErrorHandler:v67];
  v9 = self->_db;
  v10 = [(PQLConnection *)v9 sqliteErrorHandler];
  [(PQLConnection *)v9 setAutoRollbackHandler:v10];

  v11 = [(NSURL *)self->_dbURL URLByDeletingLastPathComponent];
  v12 = +[NSFileManager defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  if ((v14 & 1) == 0)
  {
    v66 = 0;
    v15 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:0 attributes:0 error:&v66];
    v16 = v66;
    if (v15)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = sub_100150214();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v11 path];
          sub_1001BCD00(v18, v74, v17);
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = sub_100150214();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v11 path];
          sub_1001BCCB0(v20, v16, v74);
        }
      }

      if (v16)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = self->_db;
  dbURL = self->_dbURL;
  v65 = 0;
  v23 = [(PQLConnection *)v21 openAtURL:dbURL sharedCache:0 error:&v65];
  v16 = v65;
  if (v23)
  {
    if (self->_showStatsForAllTransactions)
    {
      [(CPLPrequeliteStore *)self _setupProfilingHooks];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = sub_100150214();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [(NSURL *)self->_dbURL path];
        sub_1001BCD50(v25, v16, v73);
      }
    }

    v26 = self->_db;
    self->_db = 0;

    if (v16)
    {
      goto LABEL_29;
    }
  }

  if ([(PQLConnection *)self->_db setupPragmas]&& [(CPLPrequeliteStore *)self _setupPragmasAndFunctions])
  {
    if ([(CPLPrequeliteStore *)self _setupDBIfNeeded])
    {
      goto LABEL_30;
    }

    v16 = [(PQLConnection *)self->_db lastCPLError];
    if (v16)
    {
LABEL_29:
      v28 = 0;
      goto LABEL_44;
    }

    v27 = [CPLErrors underlyingErrorWithReason:@"Impossible to setup database"];
  }

  else
  {
    v27 = [(PQLConnection *)self->_db lastCPLError];
  }

  v16 = v27;
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_30:
  v29 = [(CPLPrequeliteStore *)self clientCacheIdentifier];
  v30 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_clientCacheIdentifierAsKnownByClient];
  v31 = v29;
  v32 = v30;
  v33 = v32;
  if (!v31 || !v32)
  {
    v37 = (v31 | v32) != 0;

    if (v37)
    {
      goto LABEL_33;
    }

LABEL_38:
    if (_CPLSilentLogging)
    {
      v36 = 1;
      goto LABEL_43;
    }

    v35 = sub_100150214();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Client is in sync with client cache", buf, 2u);
    }

    v36 = 1;
    goto LABEL_42;
  }

  v34 = [v31 isEqual:v32];

  if (v34)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (_CPLSilentLogging)
  {
    v36 = 0;
    goto LABEL_43;
  }

  v35 = sub_100150214();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Client is not in sync with client cache", buf, 2u);
  }

  v36 = 0;
LABEL_42:

LABEL_43:
  self->_isClientInSyncWithClientCache = v36;

  v16 = 0;
  v28 = 1;
LABEL_44:
  v38 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_libraryCreationDateVar];
  libraryCreationDate = self->_libraryCreationDate;
  self->_libraryCreationDate = v38;

  if ((v28 & 1) == 0)
  {
    v44 = [(CPLPrequeliteStore *)self corruptionInfo];
    if (v44)
    {
      sub_1001BCDA0();
      v45 = [CPLErrors cplErrorWithCode:3 description:@"Library is corrupted"];

      v16 = v45;
    }

    if (a3)
    {
      v46 = v16;
      *a3 = v16;
    }

    goto LABEL_70;
  }

  if ([(CPLSimpleUpgradeHistory *)self->_history versionHasChanged])
  {
    v40 = [(CPLPrequeliteStore *)self disabledFeatures];
    if ([v40 count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v41 = sub_100150214();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v40 componentsJoinedByString:{@", "}];
          sub_1001BCEB0(v42, buf, v41);
        }
      }

      v43 = [(CPLPrequeliteStore *)self setShouldUpdateDisabledFeaturesWithError:a3];

      if ((v43 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

LABEL_62:
    if (![(CPLSimpleUpgradeHistory *)self->_history versionHasChanged])
    {
      v49 = +[NSUserDefaults standardUserDefaults];
      v50 = [v49 BOOLForKey:@"CPLAlwaysReidentifyScopes"];

      if (!v50)
      {
        goto LABEL_66;
      }
    }

    v51 = [(CPLPrequeliteStore *)self abstractObject];
    v52 = [v51 scopes];
    v53 = [v52 platformObject];

    v54 = [v53 forceIdentifyUknownScopesWithError:a3];
    if (v54)
    {
LABEL_66:
      if (!self->_reentrencyGuard && self->_didWipeLibrary)
      {
        v55 = [(CPLPrequeliteStore *)self abstractObject];
        [v55 noteOtherResetEvent:@"wipe" cause:self->_wipeReason];

        v56 = [(CPLPrequeliteStore *)self abstractObject];
        v57 = [v56 engineLibrary];
        [v57 notifyAttachedObjectsPullQueueIsFull];

        wipeReason = self->_wipeReason;
        self->_wipeReason = 0;

        self->_didWipeLibrary = 0;
      }

      v59 = [(CPLPrequeliteStore *)self abstractObject];
      v60 = [v59 engineLibrary];
      v61 = [v60 libraryIdentifier];
      [CPLPrequelitePreventWipeNotification resetNotificationForLibraryIdentifier:v61];

      v16 = 0;
      v62 = 1;
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  v47 = +[NSUserDefaults standardUserDefaults];
  v48 = [v47 BOOLForKey:@"CPLAlwaysCheckDisabledFeatures"];

  if (!v48)
  {
    goto LABEL_62;
  }

  sub_1001BCE44();
  if ([(CPLPrequeliteStore *)self setShouldUpdateDisabledFeaturesWithError:a3])
  {
    goto LABEL_62;
  }

LABEL_69:
  v16 = 0;
LABEL_70:
  v63 = self->_db;
  if (!v63)
  {
    v62 = 0;
    goto LABEL_74;
  }

  [(PQLConnection *)v63 close:0];
  v62 = 0;
  v59 = self->_db;
  self->_db = 0;
LABEL_72:

LABEL_74:
  objc_destroyWeak(v69);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  return v62;
}

- (BOOL)openWithError:(id *)a3
{
  v5 = [CPLSimpleUpgradeHistory alloc];
  v6 = [(CPLPrequeliteStore *)self abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 libraryIdentifier];
  v9 = [(CPLSimpleUpgradeHistory *)v5 initWithLibraryIdentifier:v8];
  history = self->_history;
  self->_history = v9;

  v15 = 0;
  v11 = [(CPLPrequeliteStore *)self _openWithError:&v15];
  v12 = v15;
  if (v11)
  {
    sub_1001BCFFC(_CPLSilentLogging, self);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BCF6C();
    }

    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }
  }

  return v11;
}

- (BOOL)storeVersionHasChanged
{
  if (self->_storeVersionHasBeenJustCreated)
  {
    return 0;
  }

  if (self->_storeVersionHasChanged)
  {
    return 1;
  }

  return [(CPLSimpleUpgradeHistory *)self->_history versionHasChanged];
}

- (BOOL)executePostOpenWithError:(id *)a3
{
  if (self->_needsToReset)
  {
    v5 = [(CPLPrequeliteStore *)self abstractObject];
    v6 = v5;
    resetOption = self->_resetOption;
    v8 = 1;
    if (resetOption > 1)
    {
      if (resetOption == 2)
      {
        v9 = [v5 resetCompleteSyncStateIncludingIDMappingWithCause:self->_resetReason error:a3];
        goto LABEL_12;
      }

      if (resetOption == 3)
      {
        v9 = [v5 resetSyncAnchorWithCause:self->_resetReason error:a3];
        goto LABEL_12;
      }
    }

    else
    {
      if (!resetOption)
      {
        v9 = [v5 resetLocalSyncStateWithCause:self->_resetReason error:a3];
        goto LABEL_12;
      }

      if (resetOption == 1)
      {
        v9 = [v5 resetCompleteSyncStateWithCause:self->_resetReason error:a3];
LABEL_12:
        v8 = v9;
      }
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_14:
  self->_needsToReset = 0;
  resetReason = self->_resetReason;
  self->_resetReason = 0;

  self->_resetOption = 0;
  return v8;
}

- (void)performReadTransaction:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100153BFC;
  v14[3] = &unk_100271DE0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)performWriteTransaction:(id)a3 withBlock:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 blocker];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 bypassQueue];
  }

  else
  {
    v13 = self->_writeQueue;
  }

  v14 = v13;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100154090;
  v21[3] = &unk_100273468;
  v21[4] = self;
  v22 = v8;
  v23 = v10;
  v24 = v9;
  v15 = v21;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v26 = v15;
  v16 = v14;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v20);
}

- (void)blockWriteTransactionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100154404;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = writeQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (BOOL)closeWithError:(id *)a3
{
  db = self->_db;
  if (!db)
  {
    return 1;
  }

  v5 = [(PQLConnection *)db close:a3];
  v6 = self->_db;
  self->_db = 0;

  return v5;
}

- (void)performBarrierTransaction:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001545F4;
  v11[3] = &unk_100271E98;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (unint64_t)libraryOptions
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_libraryOptionsVar];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)updateLibraryOptions:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CPLPrequeliteStore *)self libraryOptions];
  v8 = v7;
  if ((v7 & ~a3) != 0)
  {
    v16 = [[NSString alloc] initWithFormat:@"downgrading library options from 0x%lx to 0x%lx", v7, a3];
    if ([objc_opt_class() shouldPreventWipeOnUpgrade] && !-[CPLPrequeliteStore _hasDeactivateMarker](self, "_hasDeactivateMarker"))
    {
      if (a4)
      {
        *a4 = [CPLErrors preventWipeErrorWithReason:v16 preventedByUser:0];
      }
    }

    else if (a4)
    {
      v18 = CPLErrorWipeReasonKey;
      v19 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *a4 = [CPLErrors cplErrorWithCode:2003 underlyingError:0 userInfo:v17 description:@"Downgrading options of a library (from 0x%lx to 0x%lx)", v8, a3];
    }
  }

  else
  {
    v9 = a3 & ~v7;
    if (!v9)
    {
      return 1;
    }

    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v11 = [(CPLPrequeliteStore *)self setValue:v10 forGlobalVariable:self->_libraryOptionsVar error:a4];

    if (v11)
    {
      v12 = [(CPLPrequeliteStore *)self abstractObject];
      v13 = [v12 scopes];
      v14 = [v13 upgradeScopesWithNewLibraryOptions:v9 error:a4];

      return v14;
    }
  }

  return 0;
}

- (id)createNewLibraryVersion
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_cacheValue:(id)a3 forVariable:(id)a4
{
  modifiedVariables = self->_modifiedVariables;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)modifiedVariables addObject:v7];
  [v7 setCachedValue:v8 forIdentifier:self->_globalVariableCacheIdentifier];
}

- (BOOL)setValue:(id)a3 forGlobalVariable:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  db = self->_db;
  v11 = [v9 bindableValueForValue:v8];
  v12 = [(PQLConnection *)db cplExecute:@"UPDATE globals SET %@ = %@", v9, v11];

  if (v12)
  {
    [(CPLPrequeliteStore *)self _cacheValue:v8 forVariable:v9];
  }

  else if (a5)
  {
    *a5 = [(PQLConnection *)self->_db lastCPLError];
  }

  return v12;
}

- (id)valueForGlobalVariable:(id)a3
{
  v4 = a3;
  if ([v4 hasCachedValueForIdentifier:self->_globalVariableCacheIdentifier])
  {
    v5 = [v4 cachedValueForIdentifier:self->_globalVariableCacheIdentifier];
  }

  else
  {
    db = self->_db;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100154B38;
    v9[3] = &unk_10027B218;
    v7 = v4;
    v10 = v7;
    v5 = [(PQLConnection *)db cplFetchObject:v9 sql:@"SELECT %@ FROM globals", v7];
    [(CPLPrequeliteStore *)self _cacheValue:v5 forVariable:v7];
  }

  return v5;
}

- (BOOL)resetValueForGlobalVariable:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 defaultValue];
  LOBYTE(a4) = [(CPLPrequeliteStore *)self setValue:v7 forGlobalVariable:v6 error:a4];

  return a4;
}

- (Class)_userIdentifierClass
{
  userIdentifierClass = self->_userIdentifierClass;
  if (!userIdentifierClass)
  {
    v5 = [(CPLPrequeliteStore *)self abstractObject];
    v6 = [v5 engineLibrary];
    v7 = [v6 transport];
    self->_userIdentifierClass = [v7 userIdentifierClass];

    userIdentifierClass = self->_userIdentifierClass;
    if (!userIdentifierClass)
    {
      sub_1001BD320(a2, self);
    }
  }

  return userIdentifierClass;
}

- (id)userIdentifier
{
  v3 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_userIdentifierVar];
  if (v3)
  {
    v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v3 class:[(CPLPrequeliteStore *)self _userIdentifierClass]];
    if (!v4)
    {
      sub_1001BD49C(&v6);
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)storeUserIdentifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v7];
    if (!v8)
    {
      sub_1001BD56C(a2, self, v7);
    }
  }

  else
  {
    v8 = 0;
  }

  userIdentifierVar = self->_userIdentifierVar;
  v14 = 0;
  v10 = [(CPLPrequeliteStore *)self setValue:v8 forGlobalVariable:userIdentifierVar error:&v14];
  v11 = v14;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BD63C();
    }

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }
  }

  return v10;
}

- (id)lastQuarantineCountReportDate
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_lastQuarantineCountReportDateVar];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (id)createNewClientCacheIdentifier
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)a3
{
  if (self->_isClientInSyncWithClientCache)
  {
    return 1;
  }

  block[9] = v3;
  block[10] = v4;
  v8 = [(CPLPrequeliteStore *)self clientCacheIdentifier];
  LODWORD(a3) = [(CPLPrequeliteStore *)self setValue:v8 forGlobalVariable:self->_clientCacheIdentifierAsKnownByClient error:a3];

  if (!a3)
  {
    return 0;
  }

  v9 = [(CPLPrequeliteStore *)self abstractObject];
  v10 = [v9 engineLibrary];
  v11 = [v10 scheduler];
  [v11 noteClientIsInSyncWithClientCache];

  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB51C;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(isClientInSyncWithClientCacheQueue, block);
  return 1;
}

- (BOOL)storeClientIsNotInSyncWithClientCacheWithError:(id *)a3
{
  if (!self->_isClientInSyncWithClientCache)
  {
    return 1;
  }

  block[11] = v3;
  block[12] = v4;
  v7 = [(CPLPrequeliteStore *)self abstractObject];
  v8 = [v7 engineLibrary];
  v9 = [v8 scheduler];
  [v9 noteClientIsNotInSyncWithClientCache];

  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB5A4;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(isClientInSyncWithClientCacheQueue, block);
  return [(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:self->_clientCacheIdentifierAsKnownByClient error:a3];
}

- (BOOL)storePushPullGatekeepers:(id)a3 error:(id *)a4
{
  v6 = a3;
  self->_hasCachedPushPullGatekeepers = 1;
  self->_hasModifiedPushPullGatekeepers = 1;
  if (![v6 count])
  {
    cachedPushPullGatekeepers = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;

    if ([(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:self->_pushPullGatekeepersVar error:a4])
    {
      goto LABEL_13;
    }

LABEL_15:
    self->_hasCachedPushPullGatekeepers = 0;
    self->_hasModifiedPushPullGatekeepers = 0;
    v23 = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;

    v22 = 0;
    goto LABEL_16;
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];
  v17 = self->_cachedPushPullGatekeepers;
  self->_cachedPushPullGatekeepers = v16;

  v18 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:a4];
  if (!v18)
  {

    goto LABEL_15;
  }

  v19 = v18;
  v20 = [(CPLPrequeliteStore *)self setValue:v18 forGlobalVariable:self->_pushPullGatekeepersVar error:a4];

  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = 1;
LABEL_16:

  return v22;
}

- (NSArray)pushPullGatekeepers
{
  v2 = self;
  if (self->_hasCachedPushPullGatekeepers)
  {
    v3 = self->_cachedPushPullGatekeepers;
    goto LABEL_32;
  }

  self->_hasCachedPushPullGatekeepers = 1;
  self->_hasModifiedPushPullGatekeepers = 0;
  v4 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_pushPullGatekeepersVar];
  if ([v4 length])
  {
    v30 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v30];
    v6 = v30;
    v7 = v6;
    if (v5)
    {
      v22 = v6;
      v23 = v4;
      v24 = v2;
      v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
      v8 = [(CPLPrequeliteStore *)v2 abstractObject];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = v10;
      v12 = *v27;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v15 = NSClassFromString(v14);
          if (v15 && (v16 = v15, [(objc_class *)v15 isSubclassOfClass:objc_opt_class()]))
          {
            v17 = [[v16 alloc] initWithStore:v8];
            if (v17)
            {
              [(NSArray *)v25 addObject:v17];
            }

            else
            {
              sub_1001BD6D8(v33, v16, &v34, 0, buf);
              v17 = *buf;
            }
          }

          else
          {
            if (_CPLSilentLogging)
            {
              goto LABEL_18;
            }

            v17 = sub_100150214();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid push/pull gatekeeper class: %{public}@", buf, 0xCu);
            }
          }

LABEL_18:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v18 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
        v11 = v18;
        if (!v18)
        {
LABEL_22:

          v3 = v25;
          if ([(NSArray *)v25 count])
          {
            objc_storeStrong(&v24->_cachedPushPullGatekeepers, v25);

            cachedPushPullGatekeepers = v22;
            v4 = v23;
            goto LABEL_31;
          }

          v4 = v23;
          v2 = v24;
          v5 = v21;
          v7 = v22;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100150214();
      if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412290;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_ERROR, "Invalid plist for push/pull gatekeepers: %@", v33, 0xCu);
      }

      goto LABEL_28;
    }

LABEL_29:
  }

  v3 = 0;
  cachedPushPullGatekeepers = v2->_cachedPushPullGatekeepers;
  v2->_cachedPushPullGatekeepers = 0;
LABEL_31:

LABEL_32:

  return v3;
}

- (BOOL)hasStoredChangeSessionUpdate
{
  if (self->_hasCachedChangeSessionUpdate)
  {
    return self->_cachedChangeSessionUpdate != 0;
  }

  v3 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"SELECT count(*) FROM globals WHERE %@ IS NOT NULL", self->_changeSessionUpdateVar];
  v2 = [v3 unsignedIntegerValue] != 0;

  return v2;
}

- (CPLChangeSessionUpdate)storedChangeSessionUpdate
{
  if (self->_hasCachedChangeSessionUpdate)
  {
    v3 = self->_cachedChangeSessionUpdate;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_changeSessionUpdateVar];
    if (v5)
    {
      v3 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v5 class:objc_opt_class()];
      if (!v3)
      {
        sub_1001BD834(&v7);
        v3 = v7;
      }
    }

    else
    {
      v3 = 0;
    }

    self->_hasCachedChangeSessionUpdate = 1;
    objc_storeStrong(&self->_cachedChangeSessionUpdate, v3);

    objc_autoreleasePoolPop(v4);
  }

  return v3;
}

- (BOOL)storeChangeSessionUpdate:(id)a3 error:(id *)a4
{
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    v10 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v8];
    if (!v10)
    {
      sub_1001BD8A4(a2, self, v8);
    }

    v11 = v10;
    changeSessionUpdateVar = self->_changeSessionUpdateVar;
    v21 = 0;
    v13 = [(CPLPrequeliteStore *)self setValue:v10 forGlobalVariable:changeSessionUpdateVar error:&v21];
    v14 = v21;

    objc_autoreleasePoolPop(v9);
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = self->_changeSessionUpdateVar;
    v20 = 0;
    v17 = [(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:v16 error:&v20];
    v14 = v20;
    objc_autoreleasePoolPop(v9);
    if (v17)
    {
LABEL_4:
      v15 = 1;
      self->_hasCachedChangeSessionUpdate = 1;
      objc_storeStrong(&self->_cachedChangeSessionUpdate, a3);
      goto LABEL_9;
    }
  }

  if (a4)
  {
    v18 = v14;
    v15 = 0;
    *a4 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  return v15;
}

- (BOOL)shouldUpdateDisabledFeatures
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_shouldUpdateDisabledFeaturesVar];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)storeDisabledFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:a4];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  if (![(CPLPrequeliteStore *)self setValue:v7 forGlobalVariable:self->_disabledFeaturesDataVar error:a4])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [(CPLPrequeliteStore *)self setValue:&off_10028F0E8 forGlobalVariable:self->_shouldUpdateDisabledFeaturesVar error:0];
LABEL_8:

  return v8;
}

- (id)disabledFeatures
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_disabledFeaturesDataVar];
  if (v2)
  {
    v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (id)derivativesFilter
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_derivativesFilterVar];
  if (v2)
  {
    v3 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v2 class:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)storeDerivativesFilter:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v7];
  if (!v8)
  {
    sub_1001BD974(a2, self, v7);
  }

  v9 = v8;
  v10 = [(CPLPrequeliteStore *)self setValue:v8 forGlobalVariable:self->_derivativesFilterVar error:a4];

  return v10;
}

- (id)_wipeStoreMarkerURL
{
  v2 = [(CPLPrequeliteStore *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 cloudLibraryStateStorageURL];
  v5 = [CPLPrequeliteStore _wipeStoreMarkerURLWithCloudLibraryStateStorageURL:v4];

  return v5;
}

+ (void)_writeStoreMarkerAtURL:(id)a3 reason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v15 = 0;
    v10 = [v6 writeToURL:v5 atomically:1 encoding:4 error:&v15];
    v11 = v15;
    if (v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_100150214();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 URLByDeletingLastPathComponent];
          v14 = [v13 path];
          *buf = 138412546;
          v17 = v14;
          v18 = 2114;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will wipe CPL database at %@ at next launch: %{public}@", buf, 0x16u);

LABEL_9:
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_100150214();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v5 path];
        *buf = 138412802;
        v17 = v13;
        v18 = 2114;
        v19 = v6;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to store wipe marker at %@ (reason: %{public}@): %@", buf, 0x20u);
        goto LABEL_9;
      }

LABEL_10:
    }
  }
}

+ (void)wipeStoreAtNextOpeningWithCloudLibraryStorageURL:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = [a1 _wipeStoreMarkerURLWithCloudLibraryStateStorageURL:a3];
  [a1 _writeStoreMarkerAtURL:v7 reason:v6];
}

- (id)wipeReason
{
  v2 = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  v3 = [[NSString alloc] initWithContentsOfURL:v2 encoding:4 error:0];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)wipeStoreAtNextOpeningWithReason:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  [CPLPrequeliteStore _writeStoreMarkerAtURL:v8 reason:v7];

  v6[2](v6);
}

- (BOOL)fixupOrphanScopeIndexes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStore *)self abstractObject];
  v8 = [v7 cleanupTasks];
  v9 = [v8 platformObject];

  v10 = [(CPLPrequeliteStore *)self abstractObject];
  v11 = [v10 scopes];
  v12 = [v11 platformObject];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004580;
  v26 = sub_1000053A4;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100156378;
  v17[3] = &unk_10027B5F0;
  v13 = v12;
  v18 = v13;
  v20 = &v28;
  v14 = v9;
  v19 = v14;
  v21 = &v22;
  [v6 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = *(v29 + 24);
  if (a4 && (v29[3] & 1) == 0)
  {
    *a4 = v23[5];
    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15 & 1;
}

- (id)scopeIndexesPerScopeType
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(CPLPrequeliteStore *)self abstractObject];
  v5 = [v4 storages];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 scopeType];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 scopeIndexes];
          if ([v13 count])
          {
            v14 = [NSNumber numberWithUnsignedInteger:v12];
            v15 = [v3 objectForKeyedSubscript:v14];

            if (v15)
            {
              [v15 addIndexes:v13];
            }

            else
            {
              v16 = [v13 mutableCopy];
              v17 = [NSNumber numberWithUnsignedInteger:v12];
              [v3 setObject:v16 forKeyedSubscript:v17];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)writeTransactionDidFail
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_modifiedVariables;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) discardCachedValue];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_modifiedVariables removeAllObjects];
  self->_hasCachedChangeSessionUpdate = 0;
  cachedChangeSessionUpdate = self->_cachedChangeSessionUpdate;
  self->_cachedChangeSessionUpdate = 0;

  if (self->_hasModifiedPushPullGatekeepers)
  {
    self->_hasCachedPushPullGatekeepers = 0;
    cachedPushPullGatekeepers = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;
  }
}

- (id)status
{
  v3 = [NSMutableString alloc];
  v4 = [(PQLConnection *)self->_db userVersion];
  v5 = [v3 initWithFormat:@"db version: %@", v4];

  v6 = [(CPLSimpleUpgradeHistory *)self->_history status];
  if ([v6 length])
  {
    [v5 appendFormat:@"\n%@", v6];
  }

  return v5;
}

- (void)recordUpgradeEvent:(id)a3 arguments:(char *)a4
{
  if (self->_upgradeEventJournal != -1)
  {
    v6 = a3;
    v11 = [[NSString alloc] initWithFormat:v6 arguments:a4];

    v7 = v11;
    v8 = [v11 UTF8String];
    if (v8)
    {
      v9 = v8;
      v10 = strlen(v8);
      write(self->_upgradeEventJournal, v9, v10);
      write(self->_upgradeEventJournal, "\n", 1uLL);
    }
  }
}

- (BOOL)tableHasRecords:(id)a3
{
  db = self->_db;
  v4 = a3;
  v5 = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT rowid FROM %@ LIMIT 1", v4];

  return v5 != 0;
}

- (BOOL)table:(id)a3 hasRecordsMatchingQuery:(id)a4
{
  db = self->_db;
  v6 = a4;
  v7 = a3;
  v8 = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT rowid FROM %@ WHERE %@ LIMIT 1", v7, v6];

  return v8 != 0;
}

- (unint64_t)tableCountOfRecords:(id)a3
{
  db = self->_db;
  v4 = a3;
  v5 = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(rowid) FROM %@", v4];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (unint64_t)table:(id)a3 countOfRecordsMatchingQuery:(id)a4
{
  db = self->_db;
  v6 = a4;
  v7 = a3;
  v8 = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(rowid) FROM %@ WHERE %@", v7, v6];

  v9 = [v8 unsignedIntegerValue];
  return v9;
}

- (void)table:(id)a3 enumerateCountGroupedByUnsignedIntegerProperty:(id)a4 block:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [PQLNameInjection nameWithString:a4];
  v10 = [(PQLConnection *)self->_db cplFetch:@"SELECT %@, count(%@) FROM %@ GROUP BY %@", v9, v9, v11, v9];
  if ([v10 next])
  {
    do
    {
      v8[2](v8, [v10 intAtIndex:0], objc_msgSend(v10, "unsignedIntegerAtIndex:", 1));
    }

    while (([v10 next] & 1) != 0);
  }
}

- (void)table:(id)a3 enumerateCountGroupedByProperty:(id)a4 block:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [PQLNameInjection nameWithString:a4];
  v10 = [(PQLConnection *)self->_db cplFetch:@"SELECT %@, count(%@) FROM %@ GROUP BY %@", v9, v9, v12, v9];
  if ([v10 next])
  {
    do
    {
      v11 = [v10 objectAtIndex:0];
      v8[2](v8, v11, [v10 unsignedIntegerAtIndex:1]);
    }

    while (([v10 next] & 1) != 0);
  }
}

- (void)table:(id)a3 enumerateDistinctValuesOfProperty:(id)a4 block:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [PQLNameInjection nameWithString:a4];
  v10 = [(PQLConnection *)self->_db cplFetch:@"SELECT DISTINCT %@ FROM %@", v9, v12];
  if ([v10 next])
  {
    do
    {
      v11 = [v10 objectAtIndex:0];
      v8[2](v8, v11);
    }

    while (([v10 next] & 1) != 0);
  }
}

- (BOOL)table:(id)a3 hasColumnWithName:(id)a4
{
  v6 = a4;
  v7 = [(PQLConnection *)self->_db fetch:@"PRAGMA table_info(%@)", a3];
  do
  {
    v8 = [v7 next];
    if (!v8)
    {
      break;
    }

    v9 = [v7 stringAtIndex:1];
    v10 = v9;
    if (v6 && v9 && ([v9 isEqual:v6] & 1) != 0)
    {

      break;
    }
  }

  while (v6 | v10);

  return v8;
}

- (BOOL)hasTable:(id)a3
{
  v3 = [(PQLConnection *)self->_db fetch:@"PRAGMA table_info(%@)", a3];
  v4 = [v3 next];

  return v4;
}

- (id)clientCache
{
  clientCacheMigrator = self->_clientCacheMigrator;
  if (!clientCacheMigrator)
  {
    sub_1001BDA44(a2, self);
  }

  return [(CPLPrequeliteClientCacheMigrator *)clientCacheMigrator platformObject];
}

- (id)cloudCache
{
  v2 = [(CPLPrequeliteStore *)self abstractObject];
  v3 = [v2 cloudCache];
  v4 = [v3 platformObject];

  return v4;
}

- (id)transientPullRepository
{
  v2 = [(CPLPrequeliteStore *)self abstractObject];
  v3 = [v2 transientPullRepository];
  v4 = [v3 platformObject];

  return v4;
}

- (void)_notifyVacuumDidComplete
{
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_vacuumCompletionHandlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  vacuumCompletionHandlers = self->_vacuumCompletionHandlers;
  self->_vacuumCompletionHandlers = 0;
}

- (int64_t)_sizeInBytes
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA page_count"];
  v4 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA page_size"];
  v5 = [v3 longLongValue];
  v6 = [v4 longLongValue] * v5;

  return v6;
}

- (void)_vacuum:(int64_t)a3 withInitialDatabaseSize:(int64_t)a4
{
  vacuumQueue = self->_vacuumQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100157500;
  v8[3] = &unk_10027B618;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  v5 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v10 = v5;
  v6 = vacuumQueue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

- (void)startVacuumWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100157A00;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)stopVacuum
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100157BE4;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)emergencyClose
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_100157ED4;
  v16 = &unk_1002729E8;
  v17 = self;
  v18 = &v19;
  v3 = v14;
  os_unfair_lock_lock(&self->_emergencyCloseLock);
  v15(v3);
  os_unfair_lock_unlock(&self->_emergencyCloseLock);

  if (v20[3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100150214();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        queue = self->_queue;
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = queue;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting emergency close of %@ - suspending %@", buf, 0x16u);
      }
    }

    v6 = dispatch_queue_create("com.apple.cpl.emergencyclose", 0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    v7 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157F04;
    block[3] = &unk_100272028;
    block[4] = self;
    block[5] = buf;
    dispatch_after(v7, v6, block);
    v8 = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001BB808;
    v10[3] = &unk_100273F80;
    v10[4] = self;
    v11 = v6;
    v12 = buf;
    v9 = v6;
    dispatch_sync(v8, v10);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)markAsCorrupted
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100158034;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (BOOL)createStoragesDynamically:(id)a3 error:(id *)a4
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 shouldBeCreatedDynamically] & 1) == 0)
        {
          sub_1001BDD40(a2, self, v12);
        }

        v13 = [v12 platformObject];
        if (([v13 createStorage] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BDE10(v12, self);
          }

          if (a4)
          {
            [(PQLConnection *)self->_db lastError];
            *a4 = v14 = 0;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (BOOL)deleteDynamicallyCreatedStorages:(id)a3 error:(id *)a4
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 shouldBeCreatedDynamically] & 1) == 0)
        {
          sub_1001BDED8(a2, self, v10);
        }

        v11 = [v10 platformObject];
        db = self->_db;
        v13 = [v11 mainTable];
        LOBYTE(db) = [(PQLConnection *)db cplExecute:@"DROP TABLE IF EXISTS %@", v13];

        if ((db & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BDFA8(v10, &self->_db);
          }

          if (a4)
          {
            [(PQLConnection *)self->_db lastError];
            *a4 = v14 = 0;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = [(NSURL *)self->_dbURL path];
  v5 = [v4 stringByAbbreviatingWithTildeInPath];
  v6 = [(CPLPrequeliteStore *)self abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 libraryIdentifier];
  v9 = [v3 initWithFormat:@"<SQLDatabase %@ - %@>", v5, v8];

  return v9;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = [(NSURL *)self->_dbURL path];
  v5 = [v4 lastPathComponent];
  v6 = [(CPLPrequeliteStore *)self abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 libraryIdentifier];
  v9 = [v3 initWithFormat:@"<SQLDatabase %@ - %@>", v5, v8];

  return v9;
}

- (BOOL)_initializeDB
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = self;
      sub_10000FB94(&_mh_execute_header, v3, v4, "Initializing %@", &v11);
    }
  }

  sub_1000033D8();
  v7 = 3221225472;
  v8 = sub_1001BA14C;
  v9 = &unk_10027B498;
  v10 = self;
  return [(CPLPrequeliteStore *)self _performWithFlags:10 action:v6];
}

- (void)_wipeWithReason:(id)a3
{
  v4 = [a3 copy];
  wipeReason = self->_wipeReason;
  self->_wipeReason = v4;

  self->_didWipeLibrary = 1;
  [(CPLSimpleUpgradeHistory *)self->_history resetVersionHasChanged];
  v6 = [(CPLPrequeliteStore *)self abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 cloudLibraryStateStorageURL];

  v9 = +[NSFileManager defaultManager];
  v17 = sub_100158DF4(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23);
  v18 = v24;

  if ((v17 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v19 = sub_100150214();
    if (sub_1000033C0(v19))
    {
      v20 = [v8 path];
      sub_100158D84();
      v26 = v18;
      sub_10003752C(&_mh_execute_header, v9, v21, "Error trying to delete %@: %@", v25);
    }
  }
}

- (BOOL)_upgradeDB:(int64_t)a3
{
  [(PQLConnection *)self->_db setLastError:0];
  if (self->_reentrencyGuard)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100150214();
      if (sub_10000FBDC(v6))
      {
        *buf = 0;
        sub_100158DCC();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
      }
    }

    return 0;
  }

  if (a3 < 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = sub_100150214();
      if (sub_1000033C0(v18))
      {
        *buf = 134217984;
        v44 = a3;
        sub_10004DA10(&_mh_execute_header, v19, v20, "Database in version %lld is too old. Wiping everything. This will require a reset sync.", buf);
      }
    }

    [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to wipe everything because the current version is really too old."];
    v21 = @"wiping everything because the current version is really too old";
    v22 = self;
    v23 = 0;
    return [(CPLPrequeliteStore *)v22 _closeWipeAndReOpenWithReason:v21 warnUserIfPossible:v23 createRadar:0 error:0];
  }

  if ((a3 - 95) <= 0xFFFFFFFFFFFFFFB0)
  {
    if (a3 <= 0xF)
    {
      if (_CPLSilentLogging)
      {
        v16 = @"wiping database because the current version is really too old";
        v17 = @"Will need to wipe database because the current version is really too old.";
        goto LABEL_38;
      }

      v36 = sub_100150214();
      if (sub_1000033C0(v36))
      {
        *buf = 134217984;
        v44 = a3;
        sub_10004DA10(&_mh_execute_header, v37, v38, "Database in version %lld is too old. Let's clear it and request a reset sync.", buf);
      }

      v16 = @"wiping database because the current version is really too old";
      v17 = @"Will need to wipe database because the current version is really too old.";
    }

    else
    {
      if (_CPLSilentLogging)
      {
        v16 = @"wiping database because the current version is too new";
        v17 = @"Will need to wipe database because the current version is too new.";
        goto LABEL_38;
      }

      v13 = sub_100150214();
      if (sub_1000033C0(v13))
      {
        *buf = 134217984;
        v44 = a3;
        sub_10004DA10(&_mh_execute_header, v14, v15, "Database in version %lld is too new for this engine. Let's clear it, request a reset sync and cross our fingers.", buf);
      }

      v16 = @"wiping database because the current version is too new";
      v17 = @"Will need to wipe database because the current version is too new.";
    }

LABEL_38:
    [(CPLPrequeliteStore *)self recordUpgradeEvent:v17];
    v22 = self;
    v21 = v16;
    v23 = a3 > 0xF;
    return [(CPLPrequeliteStore *)v22 _closeWipeAndReOpenWithReason:v21 warnUserIfPossible:v23 createRadar:0 error:0];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v24 = sub_100150214();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100158E10();
      v45 = a3;
      v46 = v25;
      v47 = 94;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Upgrading %@ from version %lld to %lld", buf, 0x20u);
    }
  }

  v26 = [(CPLPrequeliteStore *)self abstractObject];
  v27 = [v26 storages];

  do
  {
    if (a3 == 94)
    {
      v12 = 1;
      goto LABEL_32;
    }

    ++a3;
    v28 = objc_autoreleasePoolPush();
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1001BACA0;
    v40[3] = &unk_10027B508;
    v40[4] = self;
    v42 = a3;
    v41 = v27;
    v29 = [(CPLPrequeliteStore *)self _performWithFlags:10 action:v40];

    objc_autoreleasePoolPop(v28);
  }

  while ((v29 & 1) != 0);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v30 = sub_100150214();
    if (sub_10002B0A8(v30))
    {
      sub_100158E10();
      v45 = a3 - 1;
      v46 = v31;
      v47 = a3;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to upgrade %@ from version %lld to %lld - will need to wipe the database", buf, 0x20u);
    }
  }

  [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to wipe everything because failed to upgrade from version %lld to %lld.", a3 - 1, a3];
  v32 = [(PQLConnection *)self->_db lastCPLError];
  v33 = [NSString alloc];
  v34 = [v32 domain];
  v35 = [v33 initWithFormat:@"wiping everything because database failed to upgrade from version %lld to %lld (%@/%ld)", a3 - 1, a3, v34, objc_msgSend(v32, "code")];

  v12 = [sub_100158E24() _closeWipeAndReOpenWithReason:? warnUserIfPossible:? createRadar:? error:?];
LABEL_32:

  return v12;
}

- (void)_deleteCorruptionInfo
{
  v2 = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  v3 = +[NSFileManager defaultManager];
  v11 = sub_100158DF4(v3, v4, v5, v6, v7, v8, v9, v10, v18, v19);
  v12 = v20;
  if (v11)
  {
LABEL_2:

    goto LABEL_4;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 cplIsFileDoesNotExistError:v12];

  if ((v14 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_100150214();
    if (sub_100003448(v15))
    {
      v16 = [v2 path];
      sub_100158D84();
      v22 = v12;
      sub_10003752C(&_mh_execute_header, v3, v17, "Failed to remove corruption info at %@: %@", v21);
    }

    goto LABEL_2;
  }

LABEL_4:
}

- (BOOL)addGlobalVariable:(id)a3 defaultValue:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_100150214();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(CPLPrequeliteStore *)v8 type];
      *buf = 138413058;
      v26 = self;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ adding global variable %@ (%@ - default:%@)", buf, 0x2Au);
    }
  }

  db = self->_db;
  v13 = [(CPLPrequeliteStore *)v8 columnDefinition];
  LODWORD(db) = [(PQLConnection *)db cplExecute:@"ALTER TABLE globals ADD COLUMN %@", v13];

  if (db)
  {
    v14 = v9;
    v15 = [(CPLPrequeliteStore *)v8 defaultValue];
    v16 = v15;
    if (v14 && v15)
    {
      v17 = [v14 isEqual:v15];

      if (v17)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!(v14 | v16))
      {
LABEL_12:
        [(CPLPrequeliteStore *)self _cacheValue:v14 forVariable:v8];
        v20 = 1;
        goto LABEL_20;
      }
    }

    v18 = self->_db;
    v19 = [(CPLPrequeliteStore *)v8 bindableValueForValue:v14];
    LOBYTE(v18) = [(PQLConnection *)v18 cplExecute:@"UPDATE globals SET %@ = %@", v8, v19];

    if (v18)
    {
      goto LABEL_12;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_100150214();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(CPLPrequeliteStore *)v8 type];
      v23 = [(PQLConnection *)self->_db lastCPLError];
      *buf = 138413058;
      v26 = v8;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to add global variable %@ (%@ - default: %@) to database: %@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    [(PQLConnection *)self->_db lastCPLError];
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_20:

  return v20;
}

- (void)_deleteWipeReason
{
  v2 = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  v3 = +[NSFileManager defaultManager];
  v11 = sub_100158DF4(v3, v4, v5, v6, v7, v8, v9, v10, v18, v19);
  v12 = v20;
  if (v11)
  {
LABEL_2:

    goto LABEL_4;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 cplIsFileDoesNotExistError:v12];

  if ((v14 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_100150214();
    if (sub_100003448(v15))
    {
      v16 = [v2 path];
      sub_100158D84();
      v22 = v12;
      sub_10003752C(&_mh_execute_header, v3, v17, "Failed to remove wipe reason at %@: %@", v21);
    }

    goto LABEL_2;
  }

LABEL_4:
}

@end