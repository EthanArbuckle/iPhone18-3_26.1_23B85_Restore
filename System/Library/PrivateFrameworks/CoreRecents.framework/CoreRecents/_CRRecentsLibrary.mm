@interface _CRRecentsLibrary
+ (id)defaultPath;
+ (id)storeMapping;
- (BOOL)_mergeRemoteChanges:(id)a3 fromStore:(id)a4 forRecentsDomain:(id)a5;
- (BOOL)_setDatabasePropertyValue:(unint64_t)a3 forKey:(id)a4;
- (BOOL)_synchronizeAllStores;
- (BOOL)_synchronizeStore:(id)a3;
- (BOOL)expungeRecentsOverLimitsForDomain:(id)a3 forcibly:(BOOL)a4 expungedRecentIDs:(id *)a5;
- (BOOL)removeRecentContactsWithRecentIDs:(id)a3 syncKeys:(id)a4 domain:(id)a5 removeInUbiquitousStore:(BOOL)a6 error:(id *)a7;
- (_CRRecentsLibrary)init;
- (_CRRecentsLibrary)initWithPath:(id)a3 accountAdaptor:(id)a4;
- (id)_activeConnectionWrapper;
- (id)_copyRecentContactForID:(int64_t)a3;
- (id)_copyRecentContactForRecordHash:(id)a3 recentsDomain:(id)a4;
- (id)_nts_expungeGroupRecentsOverLimit:(unint64_t)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6;
- (id)_nts_expungeIndividualRecentsOverLimit:(unint64_t)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6;
- (id)_nts_expungeRecentsOlderThanDate:(id)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6;
- (id)_recentsDomainForStore:(id)a3;
- (id)_whereClauseFromPredicate:(id)a3 inDomains:(id)a4 bindings:(id *)a5 error:(id *)a6;
- (id)addressFromExternalAddress:(id)a3 kind:(id)a4;
- (id)bindingForDomain:(id)a3;
- (id)copyContactRecentsFromStatement:(sqlite3_stmt *)a3 selectIndexes:(id *)a4 groupThreshold:(unint64_t)a5 options:(unint64_t)a6;
- (id)copyRecentContactFromStatement:(sqlite3_stmt *)a3 columnIndexes:(id *)a4 populateMetadata:(BOOL)a5;
- (id)copyRecentContactsWithIDs:(id)a3;
- (id)copyRecentsForQuery:(id)a3 error:(id *)a4;
- (id)domainClauseWithDomains:(id)a3 bindings:(id)a4;
- (id)externalAddressFromAddress:(id)a3 kind:(id)a4;
- (id)hashForContact:(id)a3;
- (id)hashForGroup:(id)a3;
- (id)hashForGroupMemberHashes:(id)a3;
- (id)hashForGroupMembers:(id)a3 recentsDomain:(id)a4;
- (id)hashesForGroupMembers:(id)a3 recentsDomain:(id)a4;
- (id)keyForContact:(id)a3;
- (id)newConnectionForConnectionPool:(id)a3;
- (id)recentsHashForAddress:(id)a3 kind:(id)a4;
- (id)recentsHashForExternalAddress:(id)a3 kind:(id)a4;
- (id)upcomingEventIdentifierForRecentID:(int64_t)a3;
- (int)commitTransaction:(id)a3;
- (int)handleSqliteError:(sqlite3 *)a3 format:(id)a4;
- (int)rollbackTransaction:(id)a3;
- (int64_t)countOfRecentsForQuery:(id)a3 error:(id *)a4;
- (unint64_t)_databasePropertyValueByKey:(id)a3;
- (unint64_t)_propertyValueForKey:(id)a3 defaultValue:(unint64_t)a4;
- (unint64_t)maximumGroupRecentsForDomain:(id)a3;
- (unint64_t)maximumRecentsAgeInDaysForDomain:(id)a3;
- (unint64_t)maximumRecentsForDomain:(id)a3;
- (unint64_t)recordContactEvents:(id)a3 recentsDomain:(id)a4 sendingAddress:(id)a5 source:(id)a6;
- (void)_bindContact:(id)a3 withRecentID:(int64_t)a4 forStatement:(sqlite3_stmt *)a5;
- (void)_bindRecent:(id)a3 forStatement:(sqlite3_stmt *)a4;
- (void)_deleteRecentWithRecordHash:(id)a3 kind:(id)a4 recentsDomain:(id)a5;
- (void)_deleteRecentsWithRecentIDs:(id)a3 storeKeys:(id)a4 recentsDomain:(id)a5 deleteInUbiquitousStore:(BOOL)a6;
- (void)_handleSQLiteErrorCode:(int)a3;
- (void)_initializeCloudStores;
- (void)_insertRecentContacts:(id)a3;
- (void)_registerForRemoteKVSChanges;
- (void)_removeDatabase;
- (void)_removeDatabaseFromUnexpectedLocationAndAbort;
- (void)_removeDatabaseWithEmptyHomePathAndAbort;
- (void)_saveRecentContacts:(id)a3;
- (void)_setPropertyValue:(unint64_t)a3 forKey:(id)a4;
- (void)_startCoordinatingChanges;
- (void)_storeChangedExternally:(id)a3;
- (void)_syncContact:(id)a3 withStore:(id)a4;
- (void)_updateRecentContacts:(id)a3;
- (void)cancelPerformExpungeRecentsOverLimitsForDomain:(id)a3;
- (void)dealloc;
- (void)enumerateRecentsForDomain:(id)a3 usingBlock:(id)a4;
- (void)mergeCloudDataOneWayIntoLocalStoreWithReason:(unint64_t)a3;
- (void)performExpungeRecentsOverLimitsForDomain:(id)a3 afterDelay:(double)a4;
- (void)populateMetadataForRecents:(id)a3;
- (void)removeAllRecentContactsWithCompletion:(id)a3;
- (void)removeContact:(id)a3;
- (void)renameOrRemoveDatabaseAndAbort;
- (void)restorePreviouslyDeletedRecentContacts:(id)a3 completion:(id)a4;
- (void)scheduleSynchronizationForStore:(id)a3;
- (void)setMaximumGroupRecents:(unint64_t)a3 forRecentsDomain:(id)a4;
- (void)setMaximumRecents:(unint64_t)a3 forRecentsDomain:(id)a4;
- (void)setMaximumRecentsAgeInDays:(unint64_t)a3 forRecentsDomain:(id)a4;
- (void)unlockConnection:(id)a3;
@end

@implementation _CRRecentsLibrary

- (id)_activeConnectionWrapper
{
  v2 = [+[NSThread currentThread](NSThread threadDictionary];

  return [(NSMutableDictionary *)v2 objectForKey:@"com.apple.corerecents.recentsLibrary.connection"];
}

+ (id)defaultPath
{
  if (qword_100034328 != -1)
  {
    sub_100018184();
  }

  return qword_100034320;
}

+ (id)storeMapping
{
  v3[0] = CRRecentsDomainMail;
  v3[1] = CRRecentsDomainEventKitLocation;
  v4[0] = @"com.apple.mail.recents";
  v4[1] = @"com.apple.eventkit.locations";
  v3[2] = CRRecentsDomainPassbook;
  v3[3] = CRRecentsDomainAcceptedIntroductions;
  v4[2] = @"com.apple.passbook.locations";
  v4[3] = @"com.apple.introductions.accepted";
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

- (_CRRecentsLibrary)init
{
  v3 = [objc_opt_class() defaultPath];

  return [(_CRRecentsLibrary *)self initWithPath:v3];
}

- (_CRRecentsLibrary)initWithPath:(id)a3 accountAdaptor:(id)a4
{
  v12.receiver = self;
  v12.super_class = _CRRecentsLibrary;
  v6 = [(_CRRecentsLibrary *)&v12 init];
  if (v6)
  {
    v7 = [[CRRecentsMigrator alloc] initWithDelegate:v6];
    v6->_migrator = v7;
    [(CRRecentsMigrator *)v7 migrateMailEmbeddedLibraryToPath:a3];
    v6->_storeSyncDelay = 60.0;
    v6->_pluginManager = [[CRPluginManager alloc] initWithPath:+[CRPluginManager defaultPluginPath]];
    v6->_lock = objc_alloc_init(NSLock);
    v6->_cachedProperties = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    v6->_pendingDomainExpunges = objc_alloc_init(CRDelayedWorkQueue);
    v6->_pendingStoreSyncEvents = objc_alloc_init(CRDelayedWorkQueue);
    v6->_path = [a3 copy];
    v8 = [[CRSQLiteConnectionPool alloc] initWithDelegate:v6 maxConcurrentReaders:3];
    v6->_connectionPool = v8;
    [(CRSQLiteConnectionPool *)v8 setCacheSize:1];
    v9 = CRRecentsDomainMaps;
    [(_CRRecentsLibrary *)v6 setMaximumRecentsAgeInDays:60 forRecentsDomain:CRRecentsDomainMaps];
    [(_CRRecentsLibrary *)v6 performExpungeRecentsOverLimitsForDomain:v9 afterDelay:30.0];
    v6->_ubiquitousCoordinator = [[CRUbiquitousCoordinator alloc] initWithDelegate:v6];
    [(_CRRecentsLibrary *)v6 _initializeCloudStores];
    [(_CRRecentsLibrary *)v6 _registerForRemoteKVSChanges];
    [(_CRRecentsLibrary *)v6 _startCoordinatingChanges];
    [(_CRRecentsLibrary *)v6 _synchronizeAllStores];
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = [[CRAccountAdaptor alloc] initWithDelegate:v6->_ubiquitousCoordinator];
    }

    v6->_accountAdaptor = v10;
  }

  return v6;
}

- (void)_initializeCloudStores
{
  v3 = objc_alloc_init(_CRRecentsLibraryCloudStoresBuilder);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004A4C;
  v4[3] = &unk_10002CC30;
  v4[4] = v3;
  [objc_msgSend(objc_opt_class() "storeMapping")];
  self->_cloudStores = [-[_CRRecentsLibraryCloudStoresBuilder buildStores](v3 "buildStores")];
}

- (void)_registerForRemoteKVSChanges
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSDictionary *)self->_cloudStores allValues];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"_storeChangedExternally:" object:NSUbiquitousKeyValueStoreDidChangeExternallyNotification, *(*(&v8 + 1) + 8 * i)];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_startCoordinatingChanges
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSDictionary *)self->_cloudStores allKeys];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CRUbiquitousCoordinator *)self->_ubiquitousCoordinator coordinateChangesInUbiquitousStoreForDomain:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  cachedProperties = self->_cachedProperties;
  if (cachedProperties)
  {
    CFRelease(cachedProperties);
  }

  [(_CRRecentsLibrary *)self closeDatabaseConnections];
  [(CRSQLiteConnectionPool *)self->_connectionPool setDelegate:0];

  v4.receiver = self;
  v4.super_class = _CRRecentsLibrary;
  [(_CRRecentsLibrary *)&v4 dealloc];
}

- (id)newConnectionForConnectionPool:(id)a3
{
  v4 = [[CRSQLiteConnection alloc] initWithPath:self->_path databaseName:@"Recents"];
  v5 = [(CRSQLiteConnection *)v4 open];
  [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v5];
  if (v5 || ![(CRRecentsMigrator *)self->_migrator migrateWithSQLiteConnection:v4])
  {
    [(CRSQLiteConnection *)v4 close];

    [(_CRRecentsLibrary *)self _handleCorruptDatabase];
    v4 = 0;
  }

  if ([(CRRecentsMigrator *)self->_migrator needsRebuild])
  {
    [(_CRRecentsLibrary *)self mergeCloudDataOneWayIntoLocalStoreWithReason:0x80000000];
  }

  return v4;
}

- (void)renameOrRemoveDatabaseAndAbort
{
  if ([(NSString *)self->_path isEqualToString:@"/private/var/mobile/Library/Recents"])
  {

    [(_CRRecentsLibrary *)self _removeDatabaseFromPrivateVarMobileAndAbort];
  }

  else if ([(NSString *)self->_path isEqualToString:@"/var/mobile/Library/Recents"])
  {

    [(_CRRecentsLibrary *)self _removeDatabaseFromVarMobileAndAbort];
  }

  else if ([(NSString *)self->_path isEqualToString:@"/Library/Recents"])
  {

    [(_CRRecentsLibrary *)self _removeDatabaseWithEmptyHomePathAndAbort];
  }

  else
  {

    [(_CRRecentsLibrary *)self _removeDatabaseFromUnexpectedLocationAndAbort];
  }
}

- (void)_removeDatabase
{
  v2 = [(NSString *)self->_path stringByAppendingPathComponent:@"Recents"];

  CRRemoveDatabase(v2);
}

- (void)_removeDatabaseWithEmptyHomePathAndAbort
{
  v3 = +[CRLogging log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSString *)self->_path stringByAbbreviatingWithTildeInPath];
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Attempting to delete a recents database for a nonsensical path, %{public}@", &v5, 0xCu);
  }

  [(_CRRecentsLibrary *)self _removeDatabase];
  abort();
}

- (void)_removeDatabaseFromUnexpectedLocationAndAbort
{
  v3 = +[CRLogging log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSString *)self->_path stringByAbbreviatingWithTildeInPath];
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Attempting to delete a recents database for an unusual path, %{public}@", &v5, 0xCu);
  }

  [(_CRRecentsLibrary *)self _removeDatabase];
  abort();
}

- (void)_handleSQLiteErrorCode:(int)a3
{
  if (a3 <= 0xAu)
  {
    if (a3 == 5)
    {
      [(_CRRecentsLibrary *)self _handleBusyError];
    }

    else if (a3 == 10)
    {
      [(_CRRecentsLibrary *)self _handleIOError];
    }
  }

  else
  {
    switch(a3)
    {
      case 0x1Au:
        [(_CRRecentsLibrary *)self _handleNotADB];
        break;
      case 0xDu:
        [(_CRRecentsLibrary *)self _handleFullDatabase];
        break;
      case 0xBu:
        [(_CRRecentsLibrary *)self _handleCorruptDatabase];
        break;
    }
  }
}

- (int)handleSqliteError:(sqlite3 *)a3 format:(id)a4
{
  v7 = sqlite3_errcode(a3);
  v8 = v7;
  if ((v7 - 100) >= 2 && v7 != 0)
  {
    CRLogSQLiteError(a3, a4);
  }

  [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v8];
  return v8;
}

- (int)commitTransaction:(id)a3
{
  v5 = [a3 commitTransaction];
  if (v5)
  {
    -[_CRRecentsLibrary handleSqliteError:format:](self, "handleSqliteError:format:", [a3 db], @"recents: committing transaction");
  }

  return v5;
}

- (int)rollbackTransaction:(id)a3
{
  v5 = [a3 rollbackTransaction];
  if (v5)
  {
    -[_CRRecentsLibrary handleSqliteError:format:](self, "handleSqliteError:format:", [a3 db], @"recents: rolling back transaction");
  }

  return v5;
}

- (void)unlockConnection:(id)a3
{
  v5 = [(_CRRecentsLibrary *)self _activeConnectionWrapper];
  if ([v5 connection] != a3)
  {
    sub_100018198();
  }

  if (![v5 decrementRefcount])
  {
    [(CRSQLiteConnectionPool *)self->_connectionPool checkInConnection:a3];

    [(_CRRecentsLibrary *)self _setActiveConnection:0 forWriting:0];
  }
}

- (id)copyRecentContactFromStatement:(sqlite3_stmt *)a3 columnIndexes:(id *)a4 populateMetadata:(BOOL)a5
{
  v19 = a5;
  context = objc_autoreleasePoolPush();
  v7 = [CRSQLRow rowWithStatement:a3];
  v24 = [-[CRSQLRow numberWithIntegerAtIndex:](v7 numberWithIntegerAtIndex:{a4->var0.var0), "cr_CRRecentIDValue"}];
  v20 = [-[CRSQLRow numberWithIntegerAtIndex:](v7 numberWithIntegerAtIndex:{a4->var1.var0), "cr_CRContactIDValue"}];
  v8 = [(CRSQLRow *)v7 stringAtIndex:a4->var1.var1];
  v9 = [(CRSQLRow *)v7 stringAtIndex:a4->var1.var4];
  v23 = [(CRSQLRow *)v7 stringAtIndex:a4->var0.var1];
  v22 = [(CRSQLRow *)v7 stringAtIndex:a4->var1.var3];
  v21 = [(CRSQLRow *)v7 stringAtIndex:a4->var0.var3];
  v10 = [(CRSQLRow *)v7 stringAtIndex:a4->var0.var2];
  v11 = [(CRSQLRow *)v7 stringAtIndex:a4->var0.var4];
  v12 = [(CRSQLRow *)v7 stringAtIndex:a4->var0.var5];
  v13 = [(CRSQLRow *)v7 numberWithDoubleAtIndex:a4->var0.var6];
  v14 = [-[CRSQLRow numberWithIntegerAtIndex:](v7 numberWithIntegerAtIndex:{a4->var0.var7), "cr_CRContactGroupKindValue"}];
  v15 = [NSMutableArray arrayWithCapacity:kCRRecentContactMaxDateEvents];
  v16 = [NSScanner scannerWithString:v10];
  if (![(NSScanner *)v16 isAtEnd])
  {
    do
    {
      v27 = 0;
      if ([(NSScanner *)v16 scanLongLong:&v27])
      {
        [(NSMutableArray *)v15 addObject:[NSDate dateWithTimeIntervalSince1970:v27 / 1000.0]];
      }

      [(NSScanner *)v16 scanString:@":" intoString:0];
    }

    while (![(NSScanner *)v16 isAtEnd]);
  }

  v17 = [[CRRecentContact alloc] initWithContactID:v20];
  [v17 setRecentID:v24];
  [v17 setKind:v8];
  [v17 setRawAddress:v9];
  [v17 setAddress:{-[_CRRecentsLibrary externalAddressFromAddress:kind:](self, "externalAddressFromAddress:kind:", v9, v8)}];
  [v17 setRecentsDomain:v23];
  [v17 setDisplayName:v22];
  [v17 setGroupName:v21];
  [v17 setRecentDates:v15];
  [v17 setLastSendingAddress:v11];
  [v17 setOriginalSource:v12];
  [v17 setWeight:v13];
  [v17 setGroupKind:v14];
  if (v17 && v19)
  {
    v28 = [NSNumber numberWithLongLong:v24];
    v29 = v17;
    [(_CRRecentsLibrary *)self populateMetadataForRecents:[NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1]];
  }

  objc_autoreleasePoolPop(context);
  return v17;
}

- (id)_whereClauseFromPredicate:(id)a3 inDomains:(id)a4 bindings:(id *)a5 error:(id *)a6
{
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = [a3 cr_predicateClauseWithBindings:v12 error:a6];
  if (a3 && !v13)
  {
    return 0;
  }

  [v11 cr_addNonNilObject:v13];
  [v11 cr_addNonNilObject:{-[_CRRecentsLibrary domainClauseWithDomains:bindings:](self, "domainClauseWithDomains:bindings:", a4, v12)}];
  if (![v11 count])
  {
    return 0;
  }

  result = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"WHERE %@", [v11 componentsJoinedByString:@" AND "]);
  *a5 = v12;
  return result;
}

- (id)domainClauseWithDomains:(id)a3 bindings:(id)a4
{
  v7 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        [v7 addObject:@"?"];
        [a4 addObject:{-[_CRRecentsLibrary bindingForDomain:](self, "bindingForDomain:", v12)}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"bundle_identifier IN (%@)", [v7 componentsJoinedByString:{@", "}]);
}

- (id)bindingForDomain:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005B00;
  v4[3] = &unk_10002CC58;
  v4[4] = a3;
  return [v4 copy];
}

- (id)copyRecentsForQuery:(id)a3 error:(id *)a4
{
  v7 = [a3 predicate];
  v8 = [a3 domains];
  v9 = [a3 implicitGroupThreshold];
  v10 = [a3 options];
  if (![v8 count])
  {
    v12 = 0;
    if (a4)
    {
      *a4 = [NSError errorWithDomain:CRRecentContactsErrorDomain code:1001 userInfo:0];
    }

    return v12;
  }

  if ((v10 & 2) == 0 || ![(CRAccountAdaptor *)self->_accountAdaptor isUsingiCloud])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = sub_100005CE0;
    v18 = sub_100005CF0;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005CFC;
    v13[3] = &unk_10002CC80;
    v13[4] = self;
    v13[5] = v7;
    v13[8] = &v14;
    v13[9] = a4;
    v13[10] = v9;
    v13[11] = v10;
    v13[6] = v8;
    v13[7] = a3;
    [(_CRRecentsLibrary *)self performReadTransaction:v13];
    v12 = v15[5];
    _Block_object_dispose(&v14, 8);
    return v12;
  }

  return objc_alloc_init(NSArray);
}

- (int64_t)countOfRecentsForQuery:(id)a3 error:(id *)a4
{
  v7 = [a3 predicate];
  v8 = [a3 domains];
  v9 = [a3 options];
  if (![v8 count])
  {
    if (a4)
    {
      v10 = 0;
      *a4 = [NSError errorWithDomain:CRRecentContactsErrorDomain code:1001 userInfo:0];
      return v10;
    }

    return 0;
  }

  if ((v9 & 2) != 0 && [(CRAccountAdaptor *)self->_accountAdaptor isUsingiCloud])
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000060B0;
  v12[3] = &unk_10002CCA8;
  v12[4] = self;
  v12[5] = v7;
  v12[7] = &v13;
  v12[8] = a4;
  v12[6] = v8;
  [(_CRRecentsLibrary *)self performReadTransaction:v12];
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (void)populateMetadataForRecents:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000062F8;
    v6[3] = &unk_10002CCF8;
    v6[5] = self;
    v6[6] = v5;
    v6[4] = a3;
    [(_CRRecentsLibrary *)self performReadTransaction:v6];
  }
}

- (id)upcomingEventIdentifierForRecentID:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100005CE0;
  v10 = sub_100005CF0;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000067B0;
  v5[3] = &unk_10002CD20;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(_CRRecentsLibrary *)self performReadTransaction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyContactRecentsFromStatement:(sqlite3_stmt *)a3 selectIndexes:(id *)a4 groupThreshold:(unint64_t)a5 options:(unint64_t)a6
{
  v6 = a6;
  v11 = +[NSMutableDictionary dictionary];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v12 = *&a4->var0.var4;
  v21 = *&a4->var0.var0;
  v20[2] = sub_100006A70;
  v20[3] = &unk_10002CD48;
  v20[5] = v11;
  v20[6] = a3;
  v22 = v12;
  var1 = a4->var1;
  v20[4] = self;
  v13 = [CRSQLRow enumerateRowsInStatement:a3 usingBlock:v20];
  v14 = +[NSMutableDictionary dictionary];
  if ([v11 count])
  {
    v15 = [(CRAccountAdaptor *)self->_accountAdaptor senderEmailAddresses];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006B5C;
    v17[3] = &unk_10002CD70;
    v18 = a5 != 0;
    v19 = v6 & 1;
    v17[4] = self;
    v17[5] = v15;
    v17[6] = v14;
    v17[7] = a5;
    [v11 enumerateKeysAndObjectsUsingBlock:v17];
  }

  if (v13 == 101)
  {
    if ([v14 count])
    {
      [(_CRRecentsLibrary *)self populateMetadataForRecents:v14];
    }
  }

  else
  {
    [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v13];
  }

  return [v14 allValues];
}

- (id)hashForGroupMembers:(id)a3 recentsDomain:(id)a4
{
  v5 = [(_CRRecentsLibrary *)self hashesForGroupMembers:a3 recentsDomain:a4];

  return [(_CRRecentsLibrary *)self hashForGroupMemberHashes:v5];
}

- (id)hashesForGroupMembers:(id)a3 recentsDomain:(id)a4
{
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a3;
  v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = -[_CRRecentsLibrary recentsHashForExternalAddress:kind:](self, "recentsHashForExternalAddress:kind:", [*(*(&v14 + 1) + 8 * i) objectForKey:@"address"], objc_msgSend(*(*(&v14 + 1) + 8 * i), "objectForKey:", @"kind"));
        if (!v12)
        {
          return 0;
        }

        [(NSMutableArray *)v6 cr_insertObject:v12 usingComparator:&stru_10002D1A8];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (id)hashForGroupMemberHashes:(id)a3
{
  if ([a3 count] == 1)
  {

    return [a3 firstObject];
  }

  else
  {
    v5 = [objc_msgSend(a3 componentsJoinedByString:{&stru_10002DA70), "dataUsingEncoding:", 4}];

    return [v5 cr_md5DigestHexString];
  }
}

- (id)_copyRecentContactForRecordHash:(id)a3 recentsDomain:(id)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_100005CE0;
  v11 = sub_100005CF0;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007184;
  v6[3] = &unk_10002CDC0;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  v6[7] = &v7;
  [(_CRRecentsLibrary *)self performReadTransaction:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_copyRecentContactForID:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100005CE0;
  v10 = sub_100005CF0;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007484;
  v5[3] = &unk_10002CDE8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(_CRRecentsLibrary *)self performReadTransaction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateRecentsForDomain:(id)a3 usingBlock:(id)a4
{
  if (a3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100007704;
    v4[3] = &unk_10002CE10;
    v4[4] = a3;
    v4[5] = self;
    v4[6] = a4;
    [(_CRRecentsLibrary *)self performReadTransaction:v4];
  }
}

- (BOOL)removeRecentContactsWithRecentIDs:(id)a3 syncKeys:(id)a4 domain:(id)a5 removeInUbiquitousStore:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v11 = [a3 count];
  if (a5 && v11)
  {
    v41 = v7;
    v46 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [a3 count]);
    v42 = a5;
    v43 = a3;
    if ([a4 count])
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v48 = [a4 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v48)
      {
        goto LABEL_45;
      }

      v47 = *v60;
      v12 = CRRecentContactsSyncKeyDictMembersKey;
      v13 = CRRecentContactsSyncKeyDictAddressKey;
      v14 = CRRecentContactsSyncKeyDictKindKey;
      v15 = CRAddressKindGroup;
      v44 = CRAddressKindGroup;
      v45 = CRRecentContactsSyncKeyDictMembersKey;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(a4);
          }

          v17 = *(*(&v59 + 1) + 8 * v16);
          if (![v17 objectForKeyedSubscript:v12])
          {
            v27 = [v17 objectForKeyedSubscript:v13];
            v25 = [v17 objectForKeyedSubscript:v14];
            v24 = [(_CRRecentsLibrary *)self recentsHashForExternalAddress:v27 kind:v25];
            if (!v24)
            {
              goto LABEL_22;
            }

LABEL_18:
            if ([v25 isEqualToString:v15])
            {
              v26 = @"GP_";
            }

            else
            {
              v26 = @"MR_";
            }

            [(NSMutableSet *)v46 addObject:[(__CFString *)v26 stringByAppendingString:v24]];
            goto LABEL_22;
          }

          v49 = v16;
          v18 = +[NSMutableArray array];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v19 = [v17 objectForKeyedSubscript:v12];
          v20 = [v19 countByEnumeratingWithState:&v55 objects:v66 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v56;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v56 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [v18 cr_insertObject:-[_CRRecentsLibrary recentsHashForExternalAddress:kind:](self usingComparator:{"recentsHashForExternalAddress:kind:", objc_msgSend(*(*(&v55 + 1) + 8 * i), "objectForKeyedSubscript:", v13), objc_msgSend(*(*(&v55 + 1) + 8 * i), "objectForKeyedSubscript:", v14)), &stru_10002D1A8}];
              }

              v21 = [v19 countByEnumeratingWithState:&v55 objects:v66 count:16];
            }

            while (v21);
          }

          v24 = [objc_msgSend(objc_msgSend(v18 componentsJoinedByString:{&stru_10002DA70), "dataUsingEncoding:", 4), "cr_md5DigestHexString"}];
          v15 = v44;
          v12 = v45;
          v25 = v44;
          v16 = v49;
          if (v24)
          {
            goto LABEL_18;
          }

LABEL_22:
          v16 = v16 + 1;
        }

        while (v16 != v48);
        v28 = [a4 countByEnumeratingWithState:&v59 objects:v67 count:16];
        v48 = v28;
        if (!v28)
        {
          goto LABEL_45;
        }
      }
    }

    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v29 = [a3 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      v32 = CRAddressKindGroup;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v43);
          }

          v34 = -[_CRRecentsLibrary _copyRecentContactForID:](self, "_copyRecentContactForID:", [*(*(&v51 + 1) + 8 * j) integerValue]);
          if (v34)
          {
            v35 = v34;
            v36 = [(_CRRecentsLibrary *)self hashForContact:v34];
            v37 = v32;
            if (([v35 isGroup] & 1) == 0)
            {
              v37 = [v35 kind];
            }

            if (v36)
            {
              if ([v37 isEqualToString:v32])
              {
                v38 = @"GP_";
              }

              else
              {
                v38 = @"MR_";
              }

              [(NSMutableSet *)v46 addObject:[(__CFString *)v38 stringByAppendingString:v36]];
            }

            else
            {
              v39 = +[CRLogging log];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v64 = v35;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No hash for contact %@", buf, 0xCu);
              }
            }
          }
        }

        v30 = [v43 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v30);
    }

LABEL_45:
    [(_CRRecentsLibrary *)self _deleteRecentsWithRecentIDs:v43 storeKeys:v46 recentsDomain:v42 deleteInUbiquitousStore:v41];
    [(_CRRecentsLibrary *)self _synchronizeStore:[(_CRRecentsLibrary *)self _storeForRecentsDomain:v42]];
  }

  return 1;
}

- (void)removeAllRecentContactsWithCompletion:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [objc_msgSend(objc_opt_class() storeMapping];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_CRRecentsLibrary *)self removeLocalRecordsForDomain:*(*(&v10 + 1) + 8 * v9) removeInUbiquitousStore:1];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (unint64_t)_databasePropertyValueByKey:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007EC8;
  v5[3] = &unk_10002CE38;
  v5[5] = self;
  v5[6] = &v6;
  v5[4] = a3;
  [(_CRRecentsLibrary *)self performReadTransaction:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_setDatabasePropertyValue:(unint64_t)a3 forKey:(id)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008040;
  v6[3] = &unk_10002CE60;
  v6[6] = &v7;
  v6[7] = a3;
  v6[4] = a4;
  v6[5] = self;
  [(_CRRecentsLibrary *)self performWriteTransaction:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)_propertyValueForKey:(id)a3 defaultValue:(unint64_t)a4
{
  value = 0;
  [(NSLock *)self->_lock lock];
  ValueIfPresent = CFDictionaryGetValueIfPresent(self->_cachedProperties, a3, &value);
  [(NSLock *)self->_lock unlock];
  if (!ValueIfPresent)
  {
    value = a4;
    v8 = [(_CRRecentsLibrary *)self _databasePropertyValueByKey:a3];
    if (v8 != -1)
    {
      value = v8;
    }

    [(NSLock *)self->_lock lock];
    CFDictionarySetValue(self->_cachedProperties, a3, value);
    [(NSLock *)self->_lock unlock];
  }

  return value;
}

- (void)_setPropertyValue:(unint64_t)a3 forKey:(id)a4
{
  if ([_CRRecentsLibrary _setDatabasePropertyValue:"_setDatabasePropertyValue:forKey:" forKey:?])
  {
    [(NSLock *)self->_lock lock];
    CFDictionarySetValue(self->_cachedProperties, a4, a3);
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (unint64_t)maximumRecentsForDomain:(id)a3
{
  if (!a3)
  {
    sub_10001821C();
  }

  v4 = [@"max-recent:" stringByAppendingString:?];

  return [(_CRRecentsLibrary *)self _propertyValueForKey:v4 defaultValue:500];
}

- (void)setMaximumRecents:(unint64_t)a3 forRecentsDomain:(id)a4
{
  if (!a3)
  {
    sub_100018248();
  }

  if (!a4)
  {
    sub_10001821C();
  }

  v6 = [@"max-recent:" stringByAppendingString:a4];

  [(_CRRecentsLibrary *)self _setPropertyValue:a3 forKey:v6];
}

- (unint64_t)maximumGroupRecentsForDomain:(id)a3
{
  if (!a3)
  {
    sub_100018274();
  }

  v4 = [@"max-group-recent:" stringByAppendingString:?];

  return [(_CRRecentsLibrary *)self _propertyValueForKey:v4 defaultValue:250];
}

- (void)setMaximumGroupRecents:(unint64_t)a3 forRecentsDomain:(id)a4
{
  if (!a3)
  {
    sub_1000182A0();
  }

  if (!a4)
  {
    sub_100018274();
  }

  v6 = [@"max-group-recent:" stringByAppendingString:a4];

  [(_CRRecentsLibrary *)self _setPropertyValue:a3 forKey:v6];
}

- (unint64_t)maximumRecentsAgeInDaysForDomain:(id)a3
{
  if (!a3)
  {
    sub_1000182CC();
  }

  v4 = [@"max-recent-age:" stringByAppendingString:?];

  return [(_CRRecentsLibrary *)self _propertyValueForKey:v4 defaultValue:0x7FFFFFFFFFFFFFFFLL];
}

- (void)setMaximumRecentsAgeInDays:(unint64_t)a3 forRecentsDomain:(id)a4
{
  if (!a4)
  {
    sub_1000182CC();
  }

  v6 = [@"max-recent-age:" stringByAppendingString:a4];

  [(_CRRecentsLibrary *)self _setPropertyValue:a3 forKey:v6];
}

- (void)cancelPerformExpungeRecentsOverLimitsForDomain:(id)a3
{
  v5 = +[CRLogging log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "canceling any pending expunge for domain %{public}@", &v6, 0xCu);
  }

  [(CRDelayedWorkQueue *)self->_pendingDomainExpunges cancelWorkForKey:a3];
}

- (void)performExpungeRecentsOverLimitsForDomain:(id)a3 afterDelay:(double)a4
{
  if ([(CRDelayedWorkQueue *)self->_pendingDomainExpunges scheduleWorkForKey:a4 afterDelay:_NSConcreteStackBlock work:3221225472, sub_1000085D8, &unk_10002CA38, a3, self])
  {
    v6 = +[CRLogging log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v8 = a4;
      v9 = 2114;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "scheduled pending expunge after %.2fs for domain %{public}@", buf, 0x16u);
    }
  }
}

- (id)_nts_expungeRecentsOlderThanDate:(id)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6
{
  v11 = objc_alloc_init(NSMutableArray);
  v12 = +[NSMutableArray array];
  if (a3)
  {
    v13 = [a6 preparedStatementForPattern:{@"        SELECT recents.ROWID, recents.record_hash, recents.count \n        FROM recents \n        WHERE recents.bundle_identifier = :bundle_identifier \n        AND recents.last_date < :expunge_date     "}];
    sub_10000236C(v13, ":bundle_identifier", a4);
    sub_100002484(v13, ":expunge_date", a3);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008878;
    v18[3] = &unk_10002CE88;
    v18[4] = v11;
    v18[5] = v12;
    v14 = [CRSQLRow enumerateRowsInStatement:v13 usingBlock:v18];
    if ((v14 - 102) > 0xFFFFFFFD)
    {
      v15 = +[CRLogging log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 count];
        *buf = 134218242;
        v20 = v16;
        v21 = 2114;
        v22 = a4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %lu recents over age limit for domain %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v14];

      v12 = 0;
      v11 = 0;
    }
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

- (id)_nts_expungeIndividualRecentsOverLimit:(unint64_t)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6
{
  v11 = objc_alloc_init(NSMutableArray);
  v12 = +[NSMutableArray array];
  v13 = [a6 preparedStatementForPattern:{@"        SELECT recents.ROWID, recents.record_hash \n        FROM recents \n        WHERE recents.bundle_identifier = :bundle_identifier \n            AND recents.count = 1 \n        ORDER BY recents.last_date DESC \n        LIMIT -1 \n        OFFSET :offset     "}];
  sub_10000236C(v13, ":bundle_identifier", a4);
  sub_1000023CC(v13, ":offset", a3);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100008B54;
  v18[3] = &unk_10002CE88;
  v18[4] = v11;
  v18[5] = v12;
  v14 = [CRSQLRow enumerateRowsInStatement:v13 usingBlock:v18];
  if ((v14 - 102) > 0xFFFFFFFD)
  {
    v15 = +[CRLogging log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 count];
      *buf = 134218242;
      v20 = v16;
      v21 = 2114;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %lu individual recents over hard limit for domain %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v14];

    v12 = 0;
    v11 = 0;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

- (id)_nts_expungeGroupRecentsOverLimit:(unint64_t)a3 domain:(id)a4 storeKeys:(id *)a5 connection:(id)a6
{
  v11 = objc_alloc_init(NSMutableArray);
  v12 = +[NSMutableArray array];
  v13 = [a6 preparedStatementForPattern:{@"        SELECT recents.ROWID, recents.record_hash \n        FROM recents \n        WHERE recents.bundle_identifier = :bundle_identifier \n            AND recents.count != 1 \n        ORDER BY recents.last_date DESC \n        LIMIT -1 \n        OFFSET :offset     "}];
  sub_10000236C(v13, ":bundle_identifier", a4);
  sub_1000023CC(v13, ":offset", a3);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100008E04;
  v18[3] = &unk_10002CE88;
  v18[4] = v11;
  v18[5] = v12;
  v14 = [CRSQLRow enumerateRowsInStatement:v13 usingBlock:v18];
  if ((v14 - 102) > 0xFFFFFFFD)
  {
    v15 = +[CRLogging log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 count];
      *buf = 134218242;
      v20 = v16;
      v21 = 2114;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %lu group recents over hard limit for domain %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(_CRRecentsLibrary *)self _handleSQLiteErrorCode:v14];

    v12 = 0;
    v11 = 0;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

- (BOOL)expungeRecentsOverLimitsForDomain:(id)a3 forcibly:(BOOL)a4 expungedRecentIDs:(id *)a5
{
  [(_CRRecentsLibrary *)self cancelPerformExpungeRecentsOverLimitsForDomain:?];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = [(_CRRecentsLibrary *)self maximumRecentsForDomain:a3];
  v10 = [(_CRRecentsLibrary *)self maximumGroupRecentsForDomain:a3];
  v11 = [(_CRRecentsLibrary *)self maximumRecentsAgeInDaysForDomain:a3];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = +[NSDate date];
    v14 = +[NSCalendar currentCalendar];
    v15 = objc_alloc_init(NSDateComponents);
    [v15 setDay:-v11];
    v12 = [(NSCalendar *)v14 dateByAddingComponents:v15 toDate:v13 options:0];
  }

  v16 = objc_alloc_init(NSMutableSet);
  v17 = objc_alloc_init(NSMutableSet);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000090E8;
  v20[3] = &unk_10002CED8;
  v20[4] = v12;
  v20[5] = self;
  v20[6] = a3;
  v20[7] = v17;
  v20[10] = v10;
  v20[11] = v9;
  v20[8] = v16;
  v20[9] = &v22;
  v21 = a4;
  [(_CRRecentsLibrary *)self performWriteTransaction:v20];
  if (a5 && (v23[3] & 1) != 0)
  {
    *a5 = v17;
  }

  v18 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v18;
}

- (void)_bindRecent:(id)a3 forStatement:(sqlite3_stmt *)a4
{
  if (![a3 countOfRecents])
  {
    sub_10001853C();
  }

  v7 = [(_CRRecentsLibrary *)self hashForContact:a3];
  if (v7)
  {
    v22 = v7;
    sub_10000236C(a4, ":display_name", [a3 displayName]);
    sub_10000236C(a4, ":bundle_identifier", [a3 recentsDomain]);
    sub_10000236C(a4, ":original_source", [a3 originalSource]);
    sub_100002484(a4, ":last_date", [a3 mostRecentDate]);
    v8 = [a3 weight];
    v9 = sqlite3_bind_parameter_index(a4, ":weight");
    if (v9 >= 1)
    {
      v10 = v9;
      if (v8)
      {
        [v8 doubleValue];
        sqlite3_bind_double(a4, v10, v11);
      }

      else
      {
        sqlite3_bind_null(a4, v9);
      }
    }

    v23 = a4;
    sub_1000023CC(a4, ":group_kind", [a3 groupKind]);
    v13 = +[NSMutableString string];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = a3;
    v14 = [a3 recentDates];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if ([v13 length])
          {
            v20 = @":";
          }

          else
          {
            v20 = &stru_10002DA70;
          }

          [v19 timeIntervalSinceReferenceDate];
          [v13 appendFormat:@"%@%lld", v20, ((v21 + 978307200.0) * 1000.0)];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    sub_10000236C(v23, ":dates", v13);
    sub_10000236C(v23, ":sending_address", [v24 lastSendingAddress]);
    sub_10000236C(v23, ":record_hash", v22);
  }

  else
  {
    v12 = +[CRLogging log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000184B4(a3, v12);
    }
  }
}

- (void)_bindContact:(id)a3 withRecentID:(int64_t)a4 forStatement:(sqlite3_stmt *)a5
{
  v9 = [a3 kind];
  v10 = -[_CRRecentsLibrary addressFromExternalAddress:kind:](self, "addressFromExternalAddress:kind:", [a3 address], v9);
  sub_1000023CC(a5, ":recent_id", a4);
  sub_10000236C(a5, ":display_name", [a3 displayName]);
  sub_10000236C(a5, ":kind", v9);

  sub_10000236C(a5, ":address", v10);
}

- (void)_insertRecentContacts:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000997C;
  v3[3] = &unk_10002CF28;
  v3[4] = a3;
  v3[5] = self;
  [(_CRRecentsLibrary *)self performWriteTransaction:v3];
}

- (void)_updateRecentContacts:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009E48;
  v3[3] = &unk_10002CF28;
  v3[4] = a3;
  v3[5] = self;
  [(_CRRecentsLibrary *)self performWriteTransaction:v3];
}

- (void)restorePreviouslyDeletedRecentContacts:(id)a3 completion:(id)a4
{
  [(_CRRecentsLibrary *)self _saveRecentContacts:?];
  if (a4)
  {
    v6 = *(a4 + 2);

    v6(a4, a3, 0);
  }
}

- (void)_saveRecentContacts:(id)a3
{
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 recentID] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v5;
        }

        else
        {
          v12 = v6;
        }

        [v12 addObject:v11];
      }

      v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A350;
  v13[3] = &unk_10002CF50;
  v13[4] = v5;
  v13[5] = self;
  v13[6] = v6;
  [(_CRRecentsLibrary *)self performWriteTransaction:v13];
}

- (id)copyRecentContactsWithIDs:(id)a3
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = -[_CRRecentsLibrary _copyRecentContactForID:](self, "_copyRecentContactForID:", [*(*(&v13 + 1) + 8 * v9) integerValue]);
        if (v10)
        {
          v11 = v10;
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return [v5 copy];
}

- (void)_deleteRecentWithRecordHash:(id)a3 kind:(id)a4 recentsDomain:(id)a5
{
  if (!a5)
  {
    sub_10001863C();
  }

  v9 = +[CRLogging log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = a5;
    v18 = 2114;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "deleting contact from '%{public}@' with record hash: [%{public}@]", buf, 0x16u);
  }

  v10 = [(_CRRecentsLibrary *)self _storeForRecentsDomain:a5];
  if (v10)
  {
    if (a3)
    {
      v11 = v10;
      if ([a4 isEqualToString:CRAddressKindGroup])
      {
        v12 = @"GP_";
      }

      else
      {
        v12 = @"MR_";
      }

      v13 = [(__CFString *)v12 stringByAppendingString:a3];
      v14 = +[CRLogging log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v17 = a5;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "deleting recent from remote store for domain '%{public}@' with key %{public}@", buf, 0x16u);
      }

      [v11 removeObjectForKey:v13];
    }

    else if (os_log_type_enabled(+[CRLogging log], OS_LOG_TYPE_ERROR))
    {
      sub_1000185D4();
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A6D0;
  v15[3] = &unk_10002CF28;
  v15[4] = a3;
  v15[5] = a5;
  [(_CRRecentsLibrary *)self performWriteTransaction:v15];
}

- (void)_deleteRecentsWithRecentIDs:(id)a3 storeKeys:(id)a4 recentsDomain:(id)a5 deleteInUbiquitousStore:(BOOL)a6
{
  if (!a5)
  {
    sub_100018668();
  }

  v6 = a6;
  v10 = [a3 cr_map:sCRSQLite3MPrintTransform];
  v11 = +[CRLogging log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = a5;
    v27 = 2114;
    v28 = [v10 componentsJoinedByString:{@", "}];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "deleting contacts from '%{public}@' with recent IDs: [%{public}@]", buf, 0x16u);
  }

  if (v6)
  {
    v12 = [(_CRRecentsLibrary *)self _storeForRecentsDomain:a5];
    if (v12)
    {
      v13 = v12;
      v14 = +[CRLogging log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v26 = a5;
        v27 = 2114;
        v28 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "deleting recents from remote store for domain '%{public}@' with keys %{public}@", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = [a4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          v18 = 0;
          do
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(a4);
            }

            [v13 removeObjectForKey:*(*(&v20 + 1) + 8 * v18)];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [a4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A9A0;
  v19[3] = &unk_10002CF28;
  v19[4] = v10;
  v19[5] = a5;
  [(_CRRecentsLibrary *)self performWriteTransaction:v19];
}

- (unint64_t)recordContactEvents:(id)a3 recentsDomain:(id)a4 sendingAddress:(id)a5 source:(id)a6
{
  v8 = self;
  v79 = [(_CRRecentsLibrary *)self _storeForRecentsDomain:a4];
  v93 = [(CRAccountAdaptor *)v8->_accountAdaptor senderEmailAddresses];
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v131 = sub_10000B4D0;
  v132 = &unk_10002CF78;
  v97 = objc_alloc_init(NSMutableDictionary);
  v133 = v97;
  v134 = v8;
  v91 = a4;
  v135 = a4;
  v88 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableDictionary);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = a3;
  v10 = [a3 countByEnumeratingWithState:&v126 objects:v141 count:16];
  v92 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = *v127;
    v95 = CRAddressKindEmail;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v127 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v126 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 objectForKeyedSubscript:{@"options", "unsignedIntegerValue"}];
        v16 = [v14 objectForKey:@"members"];
        if ((v15 & 0x100000) != 0 || (v17 = v16, [v16 count] == 1) && (v18 = objc_msgSend(v17, "lastObject"), objc_msgSend(v95, "isEqualToString:", objc_msgSend(v18, "objectForKeyedSubscript:", @"kind"))) && objc_msgSend(v93, "containsObject:", objc_msgSend(v18, "objectForKeyedSubscript:", @"address")))
        {
          [v88 addObject:v14];
        }

        else
        {
          v19 = [objc_msgSend(v14 objectForKey:{@"timestamp", "description"}];
          v20 = [v9 objectForKey:v19];
          if (v20)
          {
            [v20 setObject:objc_msgSend(objc_msgSend(v20 forKey:{"objectForKey:", @"members", "arrayByAddingObjectsFromArray:", v17), @"members"}];
          }

          else
          {
            v21 = [v14 mutableCopy];
            [v9 setObject:v21 forKey:v19];
          }
        }

        v8 = v92;
      }

      v11 = [obj countByEnumeratingWithState:&v126 objects:v141 count:16];
    }

    while (v11);
  }

  [v88 addObjectsFromArray:{objc_msgSend(v9, "allValues")}];

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v22 = [v88 countByEnumeratingWithState:&v122 objects:v140 count:16];
  v23 = a4;
  if (v22)
  {
    v24 = v22;
    v87 = *v123;
    do
    {
      v25 = 0;
      v86 = v24;
      do
      {
        if (*v123 != v87)
        {
          objc_enumerationMutation(v88);
        }

        v26 = *(*(&v122 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        v28 = [v26 objectForKey:@"members"];
        v29 = [v26 objectForKey:@"timestamp"];
        v89 = [v26 objectForKey:@"displayName"];
        v30 = [v26 objectForKey:@"metadata"];
        v90 = [v26 objectForKey:@"weight"];
        v94 = [objc_msgSend(v26 objectForKeyedSubscript:{@"options", "unsignedIntegerValue"}];
        v96 = v29;
        if ([v28 count])
        {
          v31 = v29 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = [(_CRRecentsLibrary *)v8 hashForGroupMembers:v28 recentsDomain:v23];
          if (v32)
          {
            v82 = v32;
            v83 = v30;
            v33 = v131(v130, v32);
            if (v33)
            {
              v34 = (v94 & 0x100000) == 0;
            }

            else
            {
              v34 = 0;
            }

            if (v34)
            {
              v44 = v33;
              v112[0] = _NSConcreteStackBlock;
              v112[1] = 3221225472;
              v113 = sub_10000B52C;
              v114 = &unk_10002CFA0;
              v115 = v33;
              v116 = v30;
              v117 = v90;
              v118 = v29;
              v121 = v94 & 1;
              v119 = v8;
              v120 = v97;
              if ([v28 count] < 2)
              {
                if ([v28 count])
                {
                  v70 = [objc_msgSend(v28 objectAtIndexedSubscript:{0), "objectForKey:", @"displayName"}];
                  v113(v112, v44, v70);
                }
              }

              else
              {
                v113(v112, v44, v89);
                if ((v94 & 2) == 0)
                {
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v45 = [v28 countByEnumeratingWithState:&v108 objects:v139 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v109;
                    v84 = v27;
                    do
                    {
                      v48 = v25;
                      for (j = 0; j != v46; j = j + 1)
                      {
                        if (*v109 != v47)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v138 = *(*(&v108 + 1) + 8 * j);
                        v50 = v138;
                        v51 = [(_CRRecentsLibrary *)v8 hashForGroupMembers:[NSArray recentsDomain:"arrayWithObjects:count:" arrayWithObjects:1 count:?], v23];
                        v52 = [v50 objectForKey:@"displayName"];
                        v53 = v131(v130, v51);
                        if (v53)
                        {
                          v113(v112, v53, v52);
                        }
                      }

                      v46 = [v28 countByEnumeratingWithState:&v108 objects:v139 count:16];
                      v25 = v48;
                      v27 = v84;
                      v24 = v86;
                    }

                    while (v46);
                  }
                }
              }
            }

            else
            {
              if ([v28 count] == 1)
              {
                v35 = v27;
                v36 = [v28 objectAtIndex:0];
                v37 = [CRRecentContact alloc];
                v38 = [v36 objectForKey:@"address"];
                v39 = [v36 objectForKey:@"displayName"];
                v40 = [v36 objectForKey:@"kind"];
                v41 = v38;
                v23 = v91;
                v42 = [v37 initWithAddress:v41 displayName:v39 kind:v40 recentDate:v29 recentsDomain:v91];
                v43 = v42;
                if (a6)
                {
                  [v42 setOriginalSource:?];
                }

                v24 = v86;
                v27 = v35;
                if (v83)
                {
                  [v43 setMetadata:?];
                }
              }

              else
              {
                if ([v28 count] < 2)
                {
                  goto LABEL_72;
                }

                v85 = v27;
                v80 = v25;
                v54 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v28 count]);
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v55 = [v28 countByEnumeratingWithState:&v104 objects:v137 count:16];
                if (v55)
                {
                  v56 = v55;
                  v57 = *v105;
                  do
                  {
                    for (k = 0; k != v56; k = k + 1)
                    {
                      if (*v105 != v57)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v59 = *(*(&v104 + 1) + 8 * k);
                      v60 = -[_CRRecentsLibrary recentsHashForExternalAddress:kind:](v8, "recentsHashForExternalAddress:kind:", [v59 objectForKeyedSubscript:@"address"], objc_msgSend(v59, "objectForKeyedSubscript:", @"kind"));
                      if (![(NSMutableDictionary *)v54 objectForKey:v60])
                      {
                        v61 = v131(v130, v60);
                        if (v61)
                        {
                          v62 = v61;
                          if ((v94 & 2) == 0)
                          {
                            v63 = [v59 objectForKeyedSubscript:@"displayName"];
                            if ([v63 length])
                            {
                              [v62 setDisplayName:v63];
                            }

                            [v62 recordRecentEventForDate:v96 userInitiated:v94 & 1];
                          }
                        }

                        else
                        {
                          v64 = [CRRecentContact alloc];
                          v65 = [v59 objectForKey:@"address"];
                          v66 = [v59 objectForKey:@"displayName"];
                          v67 = [v59 objectForKey:@"kind"];
                          v68 = v66;
                          v8 = v92;
                          v62 = [v64 initWithAddress:v65 displayName:v68 kind:v67 recentDate:v96 recentsDomain:v91];
                        }

                        [(NSMutableDictionary *)v54 setObject:v62 forKey:v60];
                        [v97 setObject:v62 forKey:v60];
                      }
                    }

                    v56 = [v28 countByEnumeratingWithState:&v104 objects:v137 count:16];
                  }

                  while (v56);
                }

                v23 = v91;
                v69 = [[CRRecentContact alloc] initWithMembers:-[NSMutableDictionary allValues](v54 displayName:"allValues") recentDate:v89 recentsDomain:{v96, v91}];
                v43 = v69;
                if (a6)
                {
                  [v69 setOriginalSource:?];
                }

                v27 = v85;
                v24 = v86;
                if (v83)
                {
                  [v43 setMetadata:?];
                }

                v25 = v80;
                if ((v94 & 0x100000) != 0)
                {
                  [v43 setGroupKind:2];
                }
              }

              [v43 applyWeight:v90];
              [v97 setObject:v43 forKey:v82];
            }
          }
        }

LABEL_72:
        objc_autoreleasePoolPop(v27);
        v25 = v25 + 1;
      }

      while (v25 != v24);
      v24 = [v88 countByEnumeratingWithState:&v122 objects:v140 count:16];
    }

    while (v24);
  }

  v71 = [v97 allValues];
  [v71 makeObjectsPerformSelector:"setLastSendingAddress:" withObject:a5];
  [(_CRRecentsLibrary *)v8 _saveRecentContacts:v71];
  v103 = 0;
  [(_CRRecentsLibrary *)v8 expungeRecentsOverLimitsForDomain:v23 forcibly:0 expungedRecentIDs:&v103];
  if (v79)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v72 = [v71 countByEnumeratingWithState:&v99 objects:v136 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v100;
      do
      {
        for (m = 0; m != v73; m = m + 1)
        {
          if (*v100 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v99 + 1) + 8 * m);
          v8 = v92;
          if (([v103 containsObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v76, "recentID"))}] & 1) == 0)
          {
            [(_CRRecentsLibrary *)v92 _syncContact:v76 withStore:v79];
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v99 objects:v136 count:16];
      }

      while (v73);
    }

    [(_CRRecentsLibrary *)v8 scheduleSynchronizationForStore:v79];
  }

  return 0;
}

- (void)removeContact:(id)a3
{
  v5 = [a3 recentsDomain];
  v6 = [(_CRRecentsLibrary *)self hashForContact:a3];
  v7 = [a3 kind];
  if (v5 && v6 && v7)
  {
    [(_CRRecentsLibrary *)self _deleteRecentWithRecordHash:v6 kind:v7 recentsDomain:v5];
    v8 = [(_CRRecentsLibrary *)self _storeForRecentsDomain:v5];
    if (v8)
    {

      [(_CRRecentsLibrary *)self _synchronizeStore:v8];
    }
  }

  else
  {
    v9 = +[CRLogging log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138544131;
      v11 = v6;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = [a3 sanitizedDescription];
      v16 = 2113;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempt to remove invalid contact (h=%{public}@, b=%{public}@): %{public}@ %{private}@", &v10, 0x2Au);
    }
  }
}

- (id)recentsHashForExternalAddress:(id)a3 kind:(id)a4
{
  v6 = [(_CRRecentsLibrary *)self addressHandlerForAddressKind:a4];
  v7 = [v6 addressFromExternalAddress:a3 kind:a4];

  return [v6 syncKeyForAddress:v7 kind:a4];
}

- (id)recentsHashForAddress:(id)a3 kind:(id)a4
{
  v6 = [(_CRRecentsLibrary *)self addressHandlerForAddressKind:a4];

  return [v6 syncKeyForAddress:a3 kind:a4];
}

- (id)addressFromExternalAddress:(id)a3 kind:(id)a4
{
  v6 = [(_CRRecentsLibrary *)self addressHandlerForAddressKind:a4];

  return [v6 addressFromExternalAddress:a3 kind:a4];
}

- (id)externalAddressFromAddress:(id)a3 kind:(id)a4
{
  v6 = [(_CRRecentsLibrary *)self addressHandlerForAddressKind:a4];

  return [v6 externalAddressFromAddress:a3 kind:a4];
}

- (id)hashForContact:(id)a3
{
  if ([a3 isGroup])
  {

    return [(_CRRecentsLibrary *)self hashForGroup:a3];
  }

  else
  {
    v5 = [a3 address];
    v6 = [a3 kind];

    return [(_CRRecentsLibrary *)self recentsHashForExternalAddress:v5 kind:v6];
  }
}

- (id)hashForGroup:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B9BC;
  v4[3] = &unk_10002CFC8;
  v4[4] = self;
  return [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a3 "members")];
}

- (id)keyForContact:(id)a3
{
  result = [(_CRRecentsLibrary *)self hashForContact:?];
  if (result)
  {
    v5 = result;
    v6 = [a3 kind];
    if ([v6 isEqualToString:CRAddressKindGroup])
    {
      v7 = @"GP_";
    }

    else
    {
      v7 = @"MR_";
    }

    return [(__CFString *)v7 stringByAppendingString:v5];
  }

  return result;
}

- (id)_recentsDomainForStore:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_100005CE0;
  v11 = sub_100005CF0;
  v12 = 0;
  cloudStores = self->_cloudStores;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BB7C;
  v6[3] = &unk_10002CFF0;
  v6[4] = a3;
  v6[5] = &v7;
  [(NSDictionary *)cloudStores enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_storeChangedExternally:(id)a3
{
  v5 = [[CRProcessTransaction alloc] initWithDescription:@"com.apple.corerecents.externalStoreChange"];
  v6 = [a3 object];
  v7 = [a3 userInfo];
  v8 = [(_CRRecentsLibrary *)self _recentsDomainForStore:v6];
  if (!v8)
  {
    sub_100018694();
  }

  v9 = v8;
  v10 = [objc_msgSend(v7 objectForKey:{NSUbiquitousKeyValueStoreChangeReasonKey), "integerValue"}];
  v11 = +[CRLogging log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10 <= 2)
    {
      switch(v10)
      {
        case 0:
          v12 = @"NSUbiquitousKeyValueStoreServerChange";
          goto LABEL_20;
        case 1:
          v12 = @"NSUbiquitousKeyValueStoreInitialSyncChange";
          goto LABEL_20;
        case 2:
          v12 = @"NSUbiquitousKeyValueStoreQuotaViolationChange";
          goto LABEL_20;
      }
    }

    else if (v10 > 2147483646)
    {
      if (v10 == 0x7FFFFFFF)
      {
        v12 = @"com.apple.corerecents.iCloudSignIn";
        goto LABEL_20;
      }

      if (v10 == 0x80000000)
      {
        v12 = @"com.apple.corerecents.newDatabase";
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v12 = @"NSUbiquitousKeyValueStoreAccountChange";
        goto LABEL_20;
      }

      if (v10 == 2147483646)
      {
        v12 = @"com.apple.corerecents.iCloudSwitch";
LABEL_20:
        *buf = 138543618;
        v50 = v12;
        v51 = 2114;
        v52 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "reason:%{public}@ recentsDomain:%{public}@", buf, 0x16u);
        goto LABEL_21;
      }
    }

    v12 = [NSString stringWithFormat:@"unknown change reason (%lu)", v10];
    goto LABEL_20;
  }

LABEL_21:
  v13 = [v7 objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
  v14 = +[CRLogging log];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_40;
  }

  if (v10 <= 2)
  {
    switch(v10)
    {
      case 0:
        v15 = @"NSUbiquitousKeyValueStoreServerChange";
        goto LABEL_39;
      case 1:
        v15 = @"NSUbiquitousKeyValueStoreInitialSyncChange";
        goto LABEL_39;
      case 2:
        v15 = @"NSUbiquitousKeyValueStoreQuotaViolationChange";
        goto LABEL_39;
    }

LABEL_35:
    v15 = [NSString stringWithFormat:@"unknown change reason (%lu)", v10];
    goto LABEL_39;
  }

  if (v10 > 2147483646)
  {
    if (v10 == 0x7FFFFFFF)
    {
      v15 = @"com.apple.corerecents.iCloudSignIn";
      goto LABEL_39;
    }

    if (v10 == 0x80000000)
    {
      v15 = @"com.apple.corerecents.newDatabase";
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v10 == 3)
  {
    v15 = @"NSUbiquitousKeyValueStoreAccountChange";
    goto LABEL_39;
  }

  if (v10 != 2147483646)
  {
    goto LABEL_35;
  }

  v15 = @"com.apple.corerecents.iCloudSwitch";
LABEL_39:
  *buf = 138543874;
  v50 = v9;
  v51 = 2114;
  v52 = v15;
  v53 = 2114;
  v54 = v13;
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received external KVS change event: (%{public}@) %{public}@, changed keys=%{public}@", buf, 0x20u);
LABEL_40:
  if (v10 == 2)
  {
    v16 = +[CRLogging log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iCloud Key Value Store Over-Quota: %{public}@", buf, 0xCu);
    }

    if ([(_CRRecentsLibrary *)self expungeRecentsOverLimitsForDomain:v9 forcibly:1 expungedRecentIDs:0])
    {
      v17 = +[CRLogging log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [objc_msgSend(v6 "dictionaryRepresentation")];
        *buf = 134217984;
        v50 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "After expunging, store has %lu entries", buf, 0xCu);
      }

      [(_CRRecentsLibrary *)self _synchronizeStore:v6];
    }

    goto LABEL_92;
  }

  v19 = +[NSMutableDictionary dictionary];
  if (v10 == 3)
  {
    [(CRUbiquitousCoordinator *)self->_ubiquitousCoordinator ubiquitousStoreForDomainChangedAccount:v9];
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v40 = sub_10000C3E0;
  v41 = &unk_10002D018;
  v45 = v10 == 3;
  v33 = self;
  v42 = v19;
  v43 = self;
  v44 = v9;
  if ([v13 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = [v13 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v13);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          v25 = [v6 dictionaryForKey:v24];
          if (!v25)
          {
            v25 = +[NSNull null];
          }

          (v40)(v39, v24, v25, 0);
        }

        v21 = [v13 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [objc_msgSend(v6 "dictionaryRepresentation")];
  }

  v26 = +[CRLogging log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (v10 <= 2)
    {
      if (!v10)
      {
        v27 = @"NSUbiquitousKeyValueStoreServerChange";
        goto LABEL_78;
      }

      if (v10 == 1)
      {
        v27 = @"NSUbiquitousKeyValueStoreInitialSyncChange";
        goto LABEL_78;
      }
    }

    else if (v10 > 2147483646)
    {
      if (v10 == 0x7FFFFFFF)
      {
        v27 = @"com.apple.corerecents.iCloudSignIn";
        goto LABEL_78;
      }

      if (v10 == 0x80000000)
      {
        v27 = @"com.apple.corerecents.newDatabase";
        goto LABEL_78;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v27 = @"NSUbiquitousKeyValueStoreAccountChange";
        goto LABEL_78;
      }

      if (v10 == 2147483646)
      {
        v27 = @"com.apple.corerecents.iCloudSwitch";
LABEL_78:
        *buf = 138543619;
        v50 = v27;
        v51 = 2113;
        v52 = v19;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Acting on change %{public}@: %{private}@", buf, 0x16u);
        goto LABEL_79;
      }
    }

    v27 = [NSString stringWithFormat:@"unknown change reason (%lu)", v10];
    goto LABEL_78;
  }

LABEL_79:
  v28 = [(_CRRecentsLibrary *)v33 _mergeRemoteChanges:v19 fromStore:v6 forRecentsDomain:v9];
  v29 = [(_CRRecentsLibrary *)v33 expungeRecentsOverLimitsForDomain:v9 forcibly:0 expungedRecentIDs:0];
  if (v10 == 1)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000C540;
    v34[3] = &unk_10002D040;
    v34[4] = v33;
    v34[5] = v19;
    v34[6] = v6;
    [(_CRRecentsLibrary *)v33 enumerateRecentsForDomain:v9 usingBlock:v34];
  }

  if (![v6 dictionaryForKey:@"MAX_RECENTS"])
  {
    v46[0] = @"v";
    v46[1] = @"m";
    v47[0] = &off_10002F5E0;
    v47[1] = [NSNumber numberWithUnsignedInteger:500];
    [v6 setDictionary:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", v47, v46, 2), @"MAX_RECENTS"}];
  }

  if (v10 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if ((v30 | v28))
  {
    v31 = +[CRLogging log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Syncing back local changes", buf, 2u);
    }

    [(_CRRecentsLibrary *)v33 _synchronizeStore:v6];
  }

  v32 = +[CRLogging log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Finished handling cloud store change", buf, 2u);
  }

LABEL_92:
}

- (BOOL)_mergeRemoteChanges:(id)a3 fromStore:(id)a4 forRecentsDomain:(id)a5
{
  v9 = +[CRLogging log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v13 = [a3 count];
    v14 = 2114;
    v15 = a4;
    v16 = 2114;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "numChanges:%lu store:%{public}@ recentsDomain:%{public}@", buf, 0x20u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C6E4;
  v11[3] = &unk_10002D0A8;
  v11[4] = self;
  v11[5] = a5;
  v11[6] = a4;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  return 0;
}

- (void)_syncContact:(id)a3 withStore:(id)a4
{
  v7 = [a3 lastSendingAddress];
  if ([(CRAccountAdaptor *)self->_accountAdaptor isSyncingDisabledForAccountWithAddress:v7])
  {
    v8 = +[CRLogging log];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138543875;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = [a3 sanitizedDescription];
    *&buf[22] = 2113;
    v82 = a3;
    v9 = "Account with address %{public}@ is denying sync of contacts, skipping %{public}@ %{private}@";
LABEL_4:
    v10 = v8;
    v11 = 32;
LABEL_72:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    return;
  }

  v12 = [a3 kind];
  v13 = CRAddressKindEmail;
  v80[0] = CRAddressKindEmail;
  v80[1] = CRAddressKindPhoneNumber;
  *buf = @"e";
  *&buf[8] = @"p";
  v80[2] = CRAddressKindInstantMessage;
  v80[3] = CRAddressKindMapLocation;
  *&buf[16] = @"i";
  v82 = @"m";
  v14 = CRAddressKindGroup;
  v80[4] = CRAddressKindURL;
  v80[5] = CRAddressKindGroup;
  *&v83 = @"u";
  *(&v83 + 1) = @"gr";
  v15 = [[NSDictionary dictionaryWithObjects:v80 forKeys:6 count:?], "objectForKey:", v12];
  if (!v15)
  {
    v28 = +[CRLogging log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000186C0(a3, v12, v28);
    }

    return;
  }

  v16 = v15;
  v66 = [(_CRRecentsLibrary *)self keyForContact:a3];
  if (!v66)
  {
    v29 = +[CRLogging log];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v30 = [a3 sanitizedDescription];
    *buf = 138543619;
    *&buf[4] = v30;
    *&buf[12] = 2113;
    *&buf[14] = a3;
    v9 = "SYNC: Skipped syncing contact because we could not calculate sync key: %{public}@ %{private}@";
    goto LABEL_71;
  }

  if (([v14 isEqualToString:v12] & 1) == 0 && !-[_CRRecentsLibrary addressHandlerForAddressKind:](self, "addressHandlerForAddressKind:", v12))
  {
    v8 = +[CRLogging log];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v61 = [a3 sanitizedDescription];
    *buf = 138543875;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v61;
    *&buf[22] = 2113;
    v82 = a3;
    v9 = "SYNC: Skipped syncing contact because there's not a sync transformer registered for address kind '%{public}@': %{public}@ %{private}@";
    goto LABEL_4;
  }

  v17 = [a4 dictionaryForKey:v66];
  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];
  [(NSMutableDictionary *)v18 setObject:&off_10002F5E0 forKey:@"v"];
  v19 = &CPFileBuildDirectoriesToPath_ptr;
  v64 = a4;
  v65 = v18;
  v63 = v17;
  if ([(NSMutableDictionary *)v18 objectForKey:@"a"]&& [(NSMutableDictionary *)v18 objectForKey:@"mrs"])
  {
    goto LABEL_33;
  }

  if (![a3 isGroup])
  {
    -[NSMutableDictionary setObject:forKey:](v18, "setObject:forKey:", [a3 address], @"a");
LABEL_29:
    if (([v12 isEqualToString:v13] & 1) == 0)
    {
      [(NSMutableDictionary *)v18 setObject:v16 forKey:@"k"];
    }

    v31 = [a3 originalSource];
    if (v31)
    {
      [(NSMutableDictionary *)v18 setObject:v31 forKey:@"S"];
    }

LABEL_33:
    v32 = [objc_msgSend(-[__CFString objectForKey:](v17 objectForKey:{@"t", "_cn_filter:", &stru_10002D1E8), "sortedArrayUsingComparator:", &stru_10002D228}];
    v33 = [a3 recentDates];
    v34 = [objc_alloc(v19[307]) initWithCapacity:5];
    obja = v32;
    v35 = [v32 count];
    v68 = v33;
    v36 = [v33 count];
    if ([v34 count] > 4)
    {
LABEL_56:
      if ([v34 count])
      {
        v49 = v65;
        [(NSMutableDictionary *)v65 setObject:v34 forKey:@"t"];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v72 = sub_10000DB8C;
        v73 = &unk_10002D0D0;
        v74 = v65;
        if ([objc_msgSend(a3 "address")])
        {
          v50 = +[CRLogging log];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = [a3 sanitizedDescription];
            v52 = [a3 displayName];
            *buf = 138543619;
            *&buf[4] = v51;
            v49 = v65;
            *&buf[12] = 2113;
            *&buf[14] = v52;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "SYNC: Skipping display name for %{public}@ %{private}@", buf, 0x16u);
          }
        }

        else
        {
          v72(v71, [a3 displayName], @"n");
        }

        v55 = [a3 lastSendingAddress];
        v72(v71, v55, @"s");
        v56 = [a3 metadata];
        v72(v71, v56, @"m");
        [a3 applyWeight:{-[NSMutableDictionary objectForKey:](v49, "objectForKey:", @"w"}];
        v57 = [a3 weight];
        v72(v71, v57, @"w");
        v58 = [(NSMutableDictionary *)v49 objectForKey:@"gK"];
        [a3 setGroupKind:{objc_msgSend(v58, "unsignedIntegerValue")}];
        v72(v71, v58, @"gK");
        v59 = +[CRLogging log];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [a3 sanitizedDescription];
          *buf = 138544131;
          *&buf[4] = v60;
          *&buf[12] = 2113;
          *&buf[14] = a3;
          *&buf[22] = 2113;
          v82 = v63;
          LOWORD(v83) = 2113;
          *(&v83 + 2) = v65;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "SYNC: Merged local changes from %{public}@ %{private}@: remote=%{private}@\nmerge=%{private}@", buf, 0x2Au);
        }

        [v64 setObject:v65 forKey:v66];
      }

      else
      {
        v53 = +[CRLogging log];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [a3 sanitizedDescription];
          *buf = 138543619;
          *&buf[4] = v54;
          *&buf[12] = 2113;
          *&buf[14] = a3;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "SYNC: Skipped syncing contact because we had no dates: %{public}@ %{private}@", buf, 0x16u);
        }
      }

      return;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v37 == v35 && v38 == v36)
      {
        goto LABEL_56;
      }

      if (v37 >= v35)
      {
        v40 = +[NSDate distantPast];
      }

      else
      {
        v40 = [obja objectAtIndex:v37];
      }

      v41 = v40;
      if (v38 >= v36)
      {
        v42 = +[NSDate distantPast];
      }

      else
      {
        v42 = [v68 objectAtIndex:v38];
      }

      v43 = v42;
      [(NSDate *)v41 timeIntervalSinceDate:v42];
      v45 = v44;
      [(NSDate *)v41 timeIntervalSinceNow];
      v47 = v46 >= 172800.0;
      [(NSDate *)v43 timeIntervalSinceNow];
      if (v48 >= 172800.0)
      {
        v47 = 0;
      }

      if (fabs(v45) <= 1.0)
      {
        [v34 addObject:v41];
        ++v37;
      }

      else
      {
        if (v45 > 0.0)
        {
          [v34 addObject:v41];
          if (v47)
          {
            v39 = v37;
          }

          ++v37;
          goto LABEL_55;
        }

        if (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v34 removeObjectAtIndex:v39];
        }

        [v34 addObject:v43];
      }

      ++v38;
      v39 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_55:
      if ([v34 count] >= 5)
      {
        goto LABEL_56;
      }
    }
  }

  v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [objc_msgSend(a3 "members")]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [a3 members];
  v21 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  v23 = *v76;
  v67 = v13;
LABEL_14:
  v24 = 0;
  while (1)
  {
    if (*v76 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v25 = *(*(&v75 + 1) + 8 * v24);
    if (![v25 address] || !objc_msgSend(v25, "kind"))
    {
      break;
    }

    v26 = +[NSMutableDictionary dictionaryWithObjectsAndKeys:](NSMutableDictionary, "dictionaryWithObjectsAndKeys:", [v25 address], @"a", objc_msgSend(v25, "kind"), @"k", 0);
    if ([v25 displayName])
    {
      -[NSMutableDictionary setObject:forKey:](v26, "setObject:forKey:", [v25 displayName], @"n");
    }

    [(NSMutableArray *)v20 addObject:v26];
    if (v22 == ++v24)
    {
      v22 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
      v13 = v67;
      v19 = &CPFileBuildDirectoriesToPath_ptr;
      if (!v22)
      {
LABEL_23:
        v27 = v20;
        v18 = v65;
        [(NSMutableDictionary *)v65 setObject:v27 forKey:@"mrs"];
        -[NSMutableDictionary setObject:forKey:](v65, "setObject:forKey:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 groupKind]), @"gK");
        v17 = v63;
        goto LABEL_29;
      }

      goto LABEL_14;
    }
  }

  v29 = +[CRLogging log];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [a3 sanitizedDescription];
    *buf = 138543619;
    *&buf[4] = v62;
    *&buf[12] = 2113;
    *&buf[14] = a3;
    v9 = "SYNC: skipped syncing contact because not all members have an address or kind: %{public}@ %{private}@";
LABEL_71:
    v10 = v29;
    v11 = 22;
    goto LABEL_72;
  }
}

- (void)scheduleSynchronizationForStore:(id)a3
{
  v5 = [(_CRRecentsLibrary *)self _recentsDomainForStore:?];
  pendingStoreSyncEvents = self->_pendingStoreSyncEvents;
  storeSyncDelay = self->_storeSyncDelay;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DCD8;
  v10[3] = &unk_10002CA38;
  v10[4] = self;
  v10[5] = a3;
  if ([(CRDelayedWorkQueue *)pendingStoreSyncEvents scheduleWorkForKey:v5 afterDelay:v10 work:storeSyncDelay])
  {
    v8 = +[CRLogging log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_storeSyncDelay;
      *buf = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = a3;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduled synchronization with iCloud store (%{public}@) %{public}@ after %.2fs", buf, 0x20u);
    }
  }
}

- (BOOL)_synchronizeStore:(id)a3
{
  v5 = [(_CRRecentsLibrary *)self _recentsDomainForStore:?];
  [(CRDelayedWorkQueue *)self->_pendingStoreSyncEvents cancelWorkForKey:v5];
  v6 = [a3 synchronize];
  v7 = +[CRLogging log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"failed";
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    if (v6)
    {
      v8 = @"succeeded";
    }

    v13 = v8;
    v14 = 2114;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Synchronizing with iCloud store (%{public}@) %{public}@: %{public}@", &v10, 0x20u);
  }

  return v6;
}

- (BOOL)_synchronizeAllStores
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  [(CRDelayedWorkQueue *)self->_pendingStoreSyncEvents cancel];
  cloudStores = self->_cloudStores;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DF54;
  v8[3] = &unk_10002D0F8;
  v8[4] = self;
  v8[5] = &v9;
  [(NSDictionary *)cloudStores enumerateKeysAndObjectsUsingBlock:v8];
  v4 = +[CRLogging log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v10 + 24))
    {
      v5 = @"succeeded";
    }

    else
    {
      v5 = @"failed";
    }

    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Synchronizing with iCloud stores %{public}@", buf, 0xCu);
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)mergeCloudDataOneWayIntoLocalStoreWithReason:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      v5 = @"NSUbiquitousKeyValueStoreServerChange";
      goto LABEL_18;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v5 = @"NSUbiquitousKeyValueStoreQuotaViolationChange";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v5 = @"NSUbiquitousKeyValueStoreInitialSyncChange";
  }

  else if (a3 > 2147483646)
  {
    if (a3 != 0x7FFFFFFF)
    {
      if (a3 == 0x80000000)
      {
        v5 = @"com.apple.corerecents.newDatabase";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v5 = @"com.apple.corerecents.iCloudSignIn";
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 2147483646)
      {
        v5 = @"com.apple.corerecents.iCloudSwitch";
        goto LABEL_18;
      }

LABEL_14:
      v5 = [NSString stringWithFormat:@"unknown change reason (%lu)", a3];
      goto LABEL_18;
    }

    v5 = @"NSUbiquitousKeyValueStoreAccountChange";
  }

LABEL_18:
  v6 = [[CRProcessTransaction alloc] initWithDescription:v5];
  v7 = +[CRLogging log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Merge cloud data one-way into local with reason: %{public}@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E390;
  block[3] = &unk_10002D188;
  block[5] = v6;
  block[6] = a3;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end