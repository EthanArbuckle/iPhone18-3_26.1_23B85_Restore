@interface MBRestorePlanDB
+ (id)_createSchemaStatements;
+ (id)createDatabaseAt:(id)at restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error;
+ (id)openDatabaseAt:(id)at restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error;
- (BOOL)_addRemainingProgress:(id)progress forDomainID:(unint64_t)d domainName:(id)name readOnlyDB:(id)b error:(id *)error;
- (BOOL)_ingest:(id)_ingest into:(id)into error:(id *)error;
- (BOOL)_skipDomainID:(unint64_t)d into:(id)into error:(id *)error;
- (BOOL)_withReadOnlyDB:(id *)b accessor:(id)accessor;
- (BOOL)_writeRestoreFailuresTo:(id *)to sortedNewLineSeparatedDomainNamesOut:(id *)out error:(id *)error;
- (BOOL)addRemainingProgress:(id)progress forDomainNames:(id)names error:(id *)error;
- (BOOL)atcRestorableForAbsolutePath:(id)path error:(id *)error domainProvider:(id)provider restorableAccessor:(id)accessor;
- (BOOL)close:(id *)close;
- (BOOL)enumerateBundleIDsWithPlaceholderIPAsWithError:(id *)error enumerator:(id)enumerator;
- (BOOL)enumerateDomainNamesPendingRestoreWithError:(id *)error enumerator:(id)enumerator;
- (BOOL)enumerateDomainsAndAttributes:(id *)attributes enumerator:(id)enumerator;
- (BOOL)fetchPendingRestoreSize:(int64_t *)size remainingFileCount:(int64_t *)count totalFileCount:(int64_t *)fileCount error:(id *)error;
- (BOOL)incrementPriorityOfRestorableForDomain:(id)domain relativePath:(id)path error:(id *)error;
- (BOOL)ingestFileListForDomainNamed:(id)named error:(id *)error;
- (BOOL)skipDomains:(id)domains error:(id *)error;
- (id)_atcPathsByDomainNameForPaths:(id)paths error:(id *)error;
- (id)_domainSummary:(id *)summary fromReadOnly:(id)only;
- (id)_initWithPath:(id)path restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error;
- (id)_upgradeFileListDBForDomainName:(id)name error:(id *)error;
- (id)_validRWDatabase:(id *)database;
- (id)atcRestorePlansForAbsolutePaths:(id)paths domainProvider:(id)provider error:(id *)error;
- (id)restoreVerificationSummary:(id *)summary;
- (id)topDomainsByAssetBytes:(unint64_t)bytes error:(id *)error;
- (id)topDomainsByItemCount:(unint64_t)count error:(id *)error;
- (unint64_t)_domainIDForDomainName:(id)name inDB:(id)b error:(id *)error;
- (unint64_t)_verificationStateForDomainID:(unint64_t)d error:(id *)error;
- (unint64_t)fatalErrorCount:(id *)count;
- (void)dealloc;
@end

@implementation MBRestorePlanDB

- (BOOL)_writeRestoreFailuresTo:(id *)to sortedNewLineSeparatedDomainNamesOut:(id *)out error:(id *)error
{
  if (!to)
  {
    __assert_rtn("[MBRestorePlanDB(MBTTRAdditions) _writeRestoreFailuresTo:sortedNewLineSeparatedDomainNamesOut:error:]", "MBTapToRadar.m", 289, "outRestoreFailuresPath");
  }

  if (!out)
  {
    __assert_rtn("[MBRestorePlanDB(MBTTRAdditions) _writeRestoreFailuresTo:sortedNewLineSeparatedDomainNamesOut:error:]", "MBTapToRadar.m", 290, "sortedNewLineSeparateDomainNamesOut");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB(MBTTRAdditions) _writeRestoreFailuresTo:sortedNewLineSeparatedDomainNamesOut:error:]", "MBTapToRadar.m", 291, "error");
  }

  v9 = +[NSMutableSet set];
  v10 = [(MBRestorePlanDB *)self _failuresFor:2 isFatal:1 domainsNamesOut:v9 error:error];
  if (v10)
  {
    allObjects = [v9 allObjects];
    v12 = [allObjects sortedArrayUsingSelector:"compare:"];

    *out = [v12 componentsJoinedByString:@"\n"];
    v13 = [(MBRestorePlanDB *)self _failuresFor:2 isFatal:0 domainsNamesOut:0 error:error];
    v14 = v13;
    if (v13)
    {
      v24[0] = @"Fatal Errors";
      v24[1] = @"Retryable Errors";
      v25[0] = v10;
      v25[1] = v13;
      v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      v16 = [NSPropertyListSerialization dataWithPropertyList:v15 format:100 options:0 error:error];
      if (v16)
      {
        v23 = v12;
        path = [(MBRestorePlanDB *)self path];
        stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
        v19 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"restore_failures.plist"];

        v20 = [v16 writeToFile:v19 options:0 error:error];
        if (v20)
        {
          v21 = v19;
          *to = v19;
        }

        v12 = v23;
      }

      else
      {
        LOBYTE(v20) = 0;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

+ (id)createDatabaseAt:(id)at restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error
{
  atCopy = at;
  dirCopy = dir;
  dCopy = d;
  if (!atCopy)
  {
    __assert_rtn("+[MBRestorePlanDB createDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 250, "path");
  }

  if (!dirCopy)
  {
    __assert_rtn("+[MBRestorePlanDB createDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 251, "restoreSnapshotsDir");
  }

  v12 = dCopy;
  if (!dCopy)
  {
    __assert_rtn("+[MBRestorePlanDB createDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 252, "snapshotUUID");
  }

  if (!error)
  {
    __assert_rtn("+[MBRestorePlanDB createDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 253, "error");
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 mb_moveAsideAndMarkPurgeableDBFilesAtPath:atCopy error:error];

  if (v14)
  {
    v15 = [[MBRestorePlanDB alloc] _initWithPath:atCopy restoreSnapshotsDir:dirCopy snapshotUUID:v12 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)openDatabaseAt:(id)at restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error
{
  atCopy = at;
  dirCopy = dir;
  dCopy = d;
  if (!atCopy)
  {
    __assert_rtn("+[MBRestorePlanDB openDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 263, "path");
  }

  if (!dirCopy)
  {
    __assert_rtn("+[MBRestorePlanDB openDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 264, "restoreSnapshotsDir");
  }

  v12 = dCopy;
  if (!dCopy)
  {
    __assert_rtn("+[MBRestorePlanDB openDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 265, "snapshotUUID");
  }

  if (!error)
  {
    __assert_rtn("+[MBRestorePlanDB openDatabaseAt:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 266, "error");
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 fileExistsAtPath:atCopy];

  if (v14)
  {
    v15 = [[MBRestorePlanDB alloc] _initWithPath:atCopy restoreSnapshotsDir:dirCopy snapshotUUID:v12 error:error];
  }

  else
  {
    [MBError errorWithCode:4 path:atCopy format:@"No restore plan database found"];
    *error = v15 = 0;
  }

  return v15;
}

- (id)_initWithPath:(id)path restoreSnapshotsDir:(id)dir snapshotUUID:(id)d error:(id *)error
{
  pathCopy = path;
  dirCopy = dir;
  dCopy = d;
  if (!pathCopy)
  {
    __assert_rtn("[MBRestorePlanDB _initWithPath:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 277, "path");
  }

  if (!dirCopy)
  {
    __assert_rtn("[MBRestorePlanDB _initWithPath:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 278, "restoreSnapshotsDir");
  }

  v14 = dCopy;
  if (!dCopy)
  {
    __assert_rtn("[MBRestorePlanDB _initWithPath:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 279, "snapshotUUID");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _initWithPath:restoreSnapshotsDir:snapshotUUID:error:]", "MBRestorePlanDB.m", 280, "error");
  }

  v26.receiver = self;
  v26.super_class = MBRestorePlanDB;
  v15 = [(MBRestorePlanDB *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_restoreSnapshotsDirectoryRoot, dir);
    objc_storeStrong(&v16->_snapshotUUID, d);
    objc_storeStrong(&v16->_path, path);
    v17 = [_RWPlanDB alloc];
    _createSchemaStatements = [objc_opt_class() _createSchemaStatements];
    v19 = [MBPQLSchemaUpgrade upgradeWithVersion:1 shouldVacuum:0 statements:_createSchemaStatements];
    v27 = v19;
    v20 = [NSArray arrayWithObjects:&v27 count:1];
    v21 = [(MBSQLiteDB *)v17 initWithPath:pathCopy readOnly:0 shouldDeleteOnFailureToOpen:0 usePQLBatching:0 schemaCurrentVersion:1 schemaMinDatabaseVersionForUpgrade:1 error:error schemaUpgrades:v20];
    readWriteDB = v16->_readWriteDB;
    v16->_readWriteDB = v21;

    v23 = v16->_readWriteDB;
    if (!v23 || (v24 = [(MBSQLiteDB *)v23 fetchCountWithError:error sql:@"\nSELECT COUNT(*)\n  FROM Restorables"], v16->_restorableCount = v24, v24 == 0x7FFFFFFFFFFFFFFFLL))
    {

      v16 = 0;
    }
  }

  return v16;
}

+ (id)_createSchemaStatements
{
  v4[0] = @"\nPRAGMA foreign_keys = ON;";
  v4[1] = @"\nCREATE TABLE IF NOT EXISTS Domains (\ndomainID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, \ndomain TEXT NOT NULL UNIQUE, \ntotalAssetRecords INTEGER NOT NULL, \ntotalAssetBytes INTEGER NOT NULL, \ntotalXattrBytes INTEGER NOT NULL, \ntotalRegularAssets INTEGER NOT NULL, \ntotalEmptyAssets INTEGER NOT NULL, \ntotalDBAssets INTEGER NOT NULL, \ntotalEncryptedAssets INTEGER NOT NULL, \ntotalItems INTEGER NOT NULL, \ntotalDirs INTEGER NOT NULL, \ntotalSymlinks INTEGER NOT NULL, \ntotalZeroByteFiles INTEGER NOT NULL, \ntotalAssetFiles INTEGER NOT NULL, \ntotalXattrItems INTEGER NOT NULL, \ntotalHardlinks INTEGER NOT NULL, \ntotalATCItems INTEGER NOT NULL, \ntotalATCFiles INTEGER NOT NULL, \ntotalATCBytes INTEGER NOT NULL, \ntotalDatalessItems INTEGER NOT NULL, \nrootPath TEXT, \nengineState INTEGER NOT NULL, \nverificationStatus INTEGER NOT NULL\n);";
  v4[2] = @"\nCREATE INDEX IF NOT EXISTS DomainIdx ON Domains(\ndomain\n);";
  v4[3] = @"\nCREATE TABLE IF NOT EXISTS Restorables (\nrestorableID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, \ndomainID INTEGER NOT NULL, \ntype INTEGER NOT NULL, \nrelativePath TEXT NOT NULL, \ninode INTEGER NOT NULL, size INTEGER NOT NULL, birth INTEGER NOT NULL, modified INTEGER NOT NULL, statusChanged INTEGER NOT NULL, userID INTEGER NOT NULL, groupID INTEGER NOT NULL, mode INTEGER NOT NULL, flags INTEGER NOT NULL, protectionClass INTEGER NOT NULL, \nxattrs BLOB, \npriority INTEGER NOT NULL, \nrestoreState INTEGER NOT NULL, \nabsolutePath TEXT UNIQUE, \nFOREIGN KEY (domainID) REFERENCES Domains(domainID)\n);";
  v4[4] = @"\nCREATE INDEX IF NOT EXISTS RestorableStateIdx ON Restorables(\nrestoreState, domainID, type, restorableID\n);";
  v4[5] = @"\nCREATE INDEX IF NOT EXISTS RestorableDomainInodeIdx ON Restorables(\ndomainID, inode\n);";
  v4[6] = @"\nCREATE TABLE IF NOT EXISTS RestorableSymlinkTargets (\ndomainID INTEGER NOT NULL, \ninode INTEGER NOT NULL, \ntargetPath TEXT NOT NULL, \nlinkCount INTEGER NOT NULL, \nPRIMARY KEY (domainID, inode), \nFOREIGN KEY (inode) REFERENCES Restorables (inode), \nFOREIGN KEY (domainID) REFERENCES Domains(domainID)\n);";
  v4[7] = @"\nCREATE TABLE IF NOT EXISTS RestorableAssets (\ndomainID INTEGER NOT NULL, \ninode INTEGER NOT NULL, \ngenCount INTEGER NOT NULL, \nrecordIDSuffix TEXT, \ncompressionMethod INTEGER NOT NULL, \nassetType INTEGER NOT NULL, \nassetSize INTEGER NOT NULL, \nassetSignature BLOB, \nencryptionKey BLOB, \nlinkCount INTEGER NOT NULL, \nassetState INTEGER NOT NULL, \nPRIMARY KEY (domainID, inode), \nFOREIGN KEY (inode) REFERENCES Restorables (inode), \nFOREIGN KEY (domainID) REFERENCES Domains(domainID)\n);";
  v4[8] = @"\nCREATE INDEX IF NOT EXISTS RestoreAssetStateIdx ON RestorableAssets(\nassetState, domainID, inode\n);";
  v4[9] = @"\nCREATE TABLE IF NOT EXISTS Errors (\nerrorID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, \ncount INTEGER NOT NULL, \ntimestamp REAL NOT NULL, \nerrorDomain TEXT NOT NULL, \nerrorCode INTEGER NOT NULL, \ndescription TEXT NOT NULL, \ndomainID INTEGER NOT NULL, \nrestoreType INTEGER NOT NULL, \ninode INTEGER, \nrestorableID INTEGER, \nFOREIGN KEY (domainID) REFERENCES Domains(domainID), \nFOREIGN KEY (inode) REFERENCES Restorables (inode), \nFOREIGN KEY (restorableID) REFERENCES Restorables (restorableID)\n);";
  v4[10] = @"\nCREATE INDEX IF NOT EXISTS RestoreErrorIdx ON Errors (\nerrorDomain, errorCode, domainID, restoreType, inode, restorableID\n);";
  v4[11] = @"\nCREATE TABLE IF NOT EXISTS FatalErrorRelationships (\nerrorID INTEGER NOT NULL, \nparentErrorID INTEGER, \nPRIMARY KEY (errorID, parentErrorID), \nFOREIGN KEY (errorID) REFERENCES Errors (errorID), \nFOREIGN KEY (parentErrorID) REFERENCES Errors (errorID)\n);";
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

- (void)dealloc
{
  if (self->_readWriteDB)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v8 = path;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=plan= Database (%@) was not closed before dealloc", buf, 0xCu);
      v5 = self->_path;
      _MBLog();
    }

    [(MBRestorePlanDB *)self close:0];
  }

  v6.receiver = self;
  v6.super_class = MBRestorePlanDB;
  [(MBRestorePlanDB *)&v6 dealloc];
}

- (BOOL)close:(id *)close
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_readWriteDB;
  if (v5)
  {
    readWriteDB = selfCopy->_readWriteDB;
    selfCopy->_readWriteDB = 0;

    objc_sync_exit(selfCopy);
    v12 = 0;
    v7 = [(MBSQLiteDB *)v5 close:&v12];
    v8 = v12;
    if ((v7 & 1) == 0)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = selfCopy;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=plan= Error closing %@: %@", buf, 0x16u);
        _MBLog();
      }

      if (close)
      {
        v10 = v8;
        *close = v8;
      }
    }
  }

  else
  {
    objc_sync_exit(selfCopy);

    v7 = 1;
  }

  return v7;
}

- (id)_validRWDatabase:(id *)database
{
  if (!database)
  {
    __assert_rtn("[MBRestorePlanDB _validRWDatabase:]", "MBRestorePlanDB.m", 472, "error");
  }

  readWriteDB = self->_readWriteDB;
  if (readWriteDB)
  {
    v4 = readWriteDB;
  }

  else
  {
    *database = [MBError errorWithCode:16 path:self->_path format:@"Restore plan is closed"];
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *database;
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=plan= Restore plan is unexpectedly closed: %@", buf, 0xCu);
      v9 = *database;
      _MBLog();
    }
  }

  return readWriteDB;
}

- (BOOL)ingestFileListForDomainNamed:(id)named error:(id *)error
{
  namedCopy = named;
  if (!namedCopy)
  {
    __assert_rtn("[MBRestorePlanDB ingestFileListForDomainNamed:error:]", "MBRestorePlanDB.m", 484, "domainName");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB ingestFileListForDomainNamed:error:]", "MBRestorePlanDB.m", 485, "error");
  }

  v7 = namedCopy;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v7;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=plan= Ingesting file list for %@ into %@", buf, 0x16u);
    _MBLog();
  }

  v9 = [(MBRestorePlanDB *)self _validRWDatabase:error];
  if (v9)
  {
    v10 = [(MBRestorePlanDB *)self _upgradeFileListDBForDomainName:v7 error:error];
    v11 = v10;
    if (v10 && [v9 executeWithError:error sql:{@"ATTACH DATABASE %@ AS %@;", v10, v7}])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10026AB28;
      v19[3] = &unk_1003C2A30;
      v19[4] = self;
      v12 = v7;
      v20 = v12;
      v13 = v9;
      v21 = v13;
      v14 = [v13 groupInTransaction:error transaction:v19];

      v18 = 0;
      LOBYTE(v13) = [v13 executeWithError:&v18 sql:{@"DETACH DATABASE %@;", v12}];
      v15 = v18;
      if ((v13 & 1) == 0)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=plan= Error detaching file list database: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)_ingest:(id)_ingest into:(id)into error:(id *)error
{
  _ingestCopy = _ingest;
  intoCopy = into;
  if (!_ingestCopy)
  {
    __assert_rtn("[MBRestorePlanDB _ingest:into:error:]", "MBRestorePlanDB.m", 515, "domainName");
  }

  v10 = intoCopy;
  if (!intoCopy)
  {
    __assert_rtn("[MBRestorePlanDB _ingest:into:error:]", "MBRestorePlanDB.m", 516, "readWriteDB");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _ingest:into:error:]", "MBRestorePlanDB.m", 517, "error");
  }

  v11 = [intoCopy fetchObjectOfClass:objc_opt_class() error:error sql:{@"\nINSERT INTO Domains (\ndomain, \nengineState, \ntotalItems, \ntotalDirs, \ntotalSymlinks, \ntotalHardlinks, \ntotalXattrItems, \ntotalZeroByteFiles, \ntotalAssetFiles, \ntotalAssetBytes, \ntotalXattrBytes, \ntotalAssetRecords, \ntotalRegularAssets, \ntotalEmptyAssets, \ntotalDBAssets, \ntotalEncryptedAssets, \ntotalATCItems, \ntotalATCFiles, \ntotalATCBytes, \ntotalDatalessItems, \nrootPath, \nverificationStatus\n) VALUES (%@, %u, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, NULL, %u)\nRETURNING domainID", _ingestCopy, 1, 1}];;
  v12 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  unsignedLongLongValue = [v11 unsignedLongLongValue];
  if (![v10 executeWithError:error sql:{@"\nINSERT INTO Restorables (\ninode, size, birth, modified, statusChanged, userID, groupID, mode, flags, protectionClass, xattrs, relativePath, \ntype, \ndomainID, \npriority, \nrestoreState\n) SELECT \ninode, size, birth, modified, statusChanged, userID, groupID, mode, flags, protectionClass, xattrs, relativePath, \nmode & %u, \n  %llu, 0, %u\n  FROM FileMetadata\n  ORDER BY relativePath;", 57344, unsignedLongLongValue, 1}])
  {
    goto LABEL_15;
  }

  v14 = [v10 fetchCountWithError:error sql:@"SELECT COUNT(*) FROM Restorables;"];
  self->_restorableCount = v14;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v14)
  {
    if ([v10 executeWithError:error sql:{@"\nINSERT INTO RestorableSymlinkTargets (\ninode, \ntargetPath, \nlinkCount, \ndomainID\n) SELECT \ninode, targetPath, 0, %llu\n  FROM SymlinkTargets;", unsignedLongLongValue}] && objc_msgSend(v10, "executeWithError:sql:", error, @"\nUPDATE RestorableSymlinkTargets\n  SET  linkCount = Temporary.linkCount\n FROM(\n   SELECT COUNT(*) as linkCount, domainID, inode \n   FROM Restorables\n   WHERE domainID = %llu \n   GROUP BY domainID, inode\n) AS Temporary \n WHERE RestorableSymlinkTargets.domainID = Temporary.domainID\n   AND RestorableSymlinkTargets.inode = Temporary.inode;", unsignedLongLongValue) && objc_msgSend(v10, "executeWithError:sql:", error, @"\nINSERT INTO RestorableAssets (\ninode, genCount, recordIDSuffix, compressionMethod, assetType, assetSize, assetSignature, \nencryptionKey, \nlinkCount, \ndomainID, \nassetState\n) SELECT \ninode, genCount, recordIDSuffix, compressionMethod, assetType, assetSize, assetSignature, \nencryptionKey, \n0, \n%llu, \nIIF(assetType == %llu, %u, %u)\n FROM Assets ORDER BY assetSize;", unsignedLongLongValue, 4, 2, 1) && objc_msgSend(v10, "executeWithError:sql:", error, @"\nUPDATE RestorableAssets\n  SET  linkCount = Temporary.linkCount\n FROM (\n   SELECT COUNT(*) as linkCount, domainID, inode \n   FROM Restorables\n   WHERE domainID = %llu\n   GROUP BY domainID, inode\n) AS Temporary \n WHERE RestorableAssets.domainID = Temporary.domainID\n   AND RestorableAssets.inode = Temporary.inode;", unsignedLongLongValue) && objc_msgSend(v10, "executeWithError:sql:", error, @"\nUPDATE Domains\n SET (\ntotalAssetRecords, \ntotalAssetBytes, \ntotalRegularAssets, \ntotalEmptyAssets, \ntotalDBAssets, \ntotalEncryptedAssets, \ntotalHardlinks\n) = (\n SELECT \nCOUNT(*),\nIFNULL(SUM(assetSize), 0),\nIFNULL(SUM(IIF(assetType == %llu, 1, 0)), 0),\nIFNULL(SUM(IIF(assetType == %llu, 1, 0)), 0),\nIFNULL(SUM(IIF(assetType == %llu, 1, 0)), 0),\nIFNULL(SUM(IIF(assetType == %llu, 1, 0)), 0),\nIFNULL(SUM(IIF(linkCount > 1, 1, 0)), 0)\n FROM RestorableAssets\n WHERE domainID = %llu\n) WHERE domainID = %llu;", 1, 4, 3, 2, unsignedLongLongValue, unsignedLongLongValue))
    {
      v15 = [v10 executeWithError:error sql:{@"\nUPDATE Domains\n SET (\ntotalItems, \ntotalDirs, \ntotalSymlinks, \ntotalZeroByteFiles, \ntotalAssetFiles, \ntotalDatalessItems, \ntotalXattrItems, \ntotalXattrBytes\n) = (\n SELECT \nCOUNT(*), \nIFNULL(SUM(IIF(type == %u, 1, 0)), 0), \nIFNULL(SUM(IIF(type == %u, 1, 0)), 0), \nIFNULL(SUM(IIF(type == %u AND size == 0, 1, 0)), 0), \nIFNULL(SUM(IIF(type == %u AND size != 0, 1, 0)), 0), \nIFNULL(SUM(IIF((flags & %d) == %d, 1, 0)), 0), \nIFNULL(SUM(IIF(xattrs IS NULL, 0, 1)), 0), \nIFNULL(SUM(LENGTH(xattrs)), 0)\n FROM Restorables\n WHERE domainID = %llu\n) WHERE domainID = %llu;", 0x4000, 40960, 0x8000, 0x8000, 0x40000000, 0x40000000, unsignedLongLongValue, unsignedLongLongValue}];
      goto LABEL_16;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (id)_upgradeFileListDBForDomainName:(id)name error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    __assert_rtn("[MBRestorePlanDB _upgradeFileListDBForDomainName:error:]", "MBRestorePlanDB.m", 708, "domainName");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _upgradeFileListDBForDomainName:error:]", "MBRestorePlanDB.m", 709, "error");
  }

  v7 = nameCopy;
  v8 = [MBFileListDB openDatabaseIn:self->_restoreSnapshotsDirectoryRoot commitID:self->_snapshotUUID domainName:nameCopy error:error];
  v9 = v8;
  if (v8)
  {
    path = [v8 path];
    v16 = 0;
    v11 = [v9 close:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = path;
    }

    else
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=plan= Error closing file list database %@: %@", buf, 0x16u);
        _MBLog();
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)atcRestorableForAbsolutePath:(id)path error:(id *)error domainProvider:(id)provider restorableAccessor:(id)accessor
{
  pathCopy = path;
  providerCopy = provider;
  accessorCopy = accessor;
  if (!pathCopy)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]", "MBRestorePlanDB.m", 802, "absolutePath");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]", "MBRestorePlanDB.m", 803, "error");
  }

  if (!providerCopy)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]", "MBRestorePlanDB.m", 804, "domainProvider");
  }

  if (!accessorCopy)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]", "MBRestorePlanDB.m", 805, "accessor");
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10026B3F8;
  v18[3] = &unk_1003C2A80;
  v21 = providerCopy;
  v22 = accessorCopy;
  v19 = pathCopy;
  selfCopy = self;
  v13 = accessorCopy;
  v14 = providerCopy;
  v15 = pathCopy;
  v16 = [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v18];

  return v16;
}

- (id)atcRestorePlansForAbsolutePaths:(id)paths domainProvider:(id)provider error:(id *)error
{
  pathsCopy = paths;
  providerCopy = provider;
  if (!pathsCopy)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorePlansForAbsolutePaths:domainProvider:error:]", "MBRestorePlanDB.m", 860, "absolutePaths");
  }

  v10 = providerCopy;
  if (!providerCopy)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorePlansForAbsolutePaths:domainProvider:error:]", "MBRestorePlanDB.m", 861, "domainProvider");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorePlansForAbsolutePaths:domainProvider:error:]", "MBRestorePlanDB.m", 862, "error");
  }

  v31 = [(MBRestorePlanDB *)self _validRWDatabase:error];
  v11 = [(MBRestorePlanDB *)self _atcPathsByDomainNameForPaths:pathsCopy error:error];
  if (v11)
  {
    v12 = +[NSMutableArray array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v29 = *v33;
      v27 = v11;
      v28 = pathsCopy;
      v30 = v12;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [v13 objectForKeyedSubscript:v17];
          v19 = [(MBRestorePlanDB *)self _domainIDForDomainName:v17 inDB:v31 error:error];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_17;
          }

          v20 = v19;
          errorCopy = error;
          v22 = v10[2](v10, v17);
          if (!v22)
          {
            *error = [MBError errorWithCode:1 format:@"Failed to get domain for %@", v17];
LABEL_17:

            v25 = 0;
            v11 = v27;
            pathsCopy = v28;
            v12 = v30;
            goto LABEL_18;
          }

          v23 = v22;
          v24 = [[_RestoreDomainPlanATC alloc] _initWithParentPlan:self domain:v22 domainID:v20 atcPaths:v18];
          [v30 addObject:v24];

          error = errorCopy;
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v11 = v27;
        pathsCopy = v28;
        v12 = v30;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = v12;
LABEL_18:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_atcPathsByDomainNameForPaths:(id)paths error:(id *)error
{
  pathsCopy = paths;
  if (!pathsCopy)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]", "MBRestorePlanDB.m", 893, "absolutePaths");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]", "MBRestorePlanDB.m", 894, "error");
  }

  v7 = pathsCopy;
  +[NSMutableDictionary dictionary];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10026BC38;
  v13[3] = &unk_1003C2AD0;
  v8 = v14 = v7;
  v15 = v8;
  v9 = v7;
  v10 = [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v13];

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)incrementPriorityOfRestorableForDomain:(id)domain relativePath:(id)path error:(id *)error
{
  domainCopy = domain;
  pathCopy = path;
  name = [domainCopy name];
  if (!name)
  {
    __assert_rtn("[MBRestorePlanDB incrementPriorityOfRestorableForDomain:relativePath:error:]", "MBRestorePlanDB.m", 967, "domainName");
  }

  if (!pathCopy)
  {
    __assert_rtn("[MBRestorePlanDB incrementPriorityOfRestorableForDomain:relativePath:error:]", "MBRestorePlanDB.m", 968, "relativePath");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB incrementPriorityOfRestorableForDomain:relativePath:error:]", "MBRestorePlanDB.m", 969, "error");
  }

  v11 = name;
  v12 = [(MBRestorePlanDB *)self _validRWDatabase:error];
  v13 = [v12 executeWithError:error sql:{@"\n UPDATE Restorables\n    SET priority = (\n      SELECT COALESCE(MAX( priority), 0) + 1\n      FROM Restorables\n   )   \n  WHERE relativePath = %@\n   AND  Restorables.domainID IN (\n    SELECT Domains.domainID\n      FROM Domains\n     WHERE Domains.domain = %@\n  );", pathCopy, v11}];

  return v13;
}

- (BOOL)enumerateDomainNamesPendingRestoreWithError:(id *)error enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]", "MBRestorePlanDB.m", 987, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]", "MBRestorePlanDB.m", 988, "enumerator");
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026C414;
  v10[3] = &unk_1003C2AF8;
  v11 = enumeratorCopy;
  v7 = enumeratorCopy;
  v8 = [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v10];

  return v8;
}

- (BOOL)enumerateBundleIDsWithPlaceholderIPAsWithError:(id *)error enumerator:(id)enumerator
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10026C68C;
  v8[3] = &unk_1003C2AF8;
  enumeratorCopy = enumerator;
  v6 = enumeratorCopy;
  LOBYTE(error) = [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v8];

  return error;
}

- (BOOL)addRemainingProgress:(id)progress forDomainNames:(id)names error:(id *)error
{
  progressCopy = progress;
  namesCopy = names;
  if (!progressCopy)
  {
    __assert_rtn("[MBRestorePlanDB addRemainingProgress:forDomainNames:error:]", "MBRestorePlanDB.m", 1035, "progress");
  }

  v10 = namesCopy;
  if (!namesCopy)
  {
    __assert_rtn("[MBRestorePlanDB addRemainingProgress:forDomainNames:error:]", "MBRestorePlanDB.m", 1036, "domainNames");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB addRemainingProgress:forDomainNames:error:]", "MBRestorePlanDB.m", 1037, "error");
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10026C9E0;
  v15[3] = &unk_1003C2B20;
  v16 = namesCopy;
  selfCopy = self;
  v18 = progressCopy;
  v11 = progressCopy;
  v12 = v10;
  v13 = [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v15];

  return v13;
}

- (BOOL)_addRemainingProgress:(id)progress forDomainID:(unint64_t)d domainName:(id)name readOnlyDB:(id)b error:(id *)error
{
  progressCopy = progress;
  nameCopy = name;
  bCopy = b;
  if (!progressCopy)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]", "MBRestorePlanDB.m", 1064, "progress");
  }

  if (!d)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]", "MBRestorePlanDB.m", 1065, "domainID");
  }

  v14 = bCopy;
  if (!bCopy)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]", "MBRestorePlanDB.m", 1066, "readOnlyDB");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]", "MBRestorePlanDB.m", 1067, "error");
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v15 = [bCopy fetchSQL:{@"\nSELECT assetSize\n FROM  RestorableAssets\n JOIN  Restorables ON\n      (RestorableAssets.inode = Restorables.inode\n   AND RestorableAssets.domainID = Restorables.domainID\n     )\n WHERE RestorableAssets.assetState = %u\n   AND Restorables.restoreState != %u\n   AND Restorables.restoreState != %u\n   AND RestorableAssets.domainID = %llu\n GROUP BY RestorableAssets.inode", 1, 2, 5, d}];;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10026D078;
  v50[3] = &unk_1003C2B48;
  v50[4] = &v55;
  v50[5] = &v51;
  v16 = [v15 enumerateWithError:error block:v50];

  if (v16)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v17 = [v14 fetchSQL:{@"\n SELECT \n    IFNULL(SUM(IIF(type == %u, 1, 0)), 0), \n    IFNULL(SUM(IIF(type == %u, 1, 0)), 0), \n    IFNULL(SUM(IIF(type == %u AND restoreState == %u, 1, 0)), 0), \n    IFNULL(SUM(IIF(type == %u AND restoreState == %u, 1, 0)), 0)\n FROM   Restorables\n WHERE (restoreState = %u\n     OR restoreState = %u\n      )\n    AND domainID = %llu", 0x8000, 40960, 0x4000, 1, 0x4000, 4, 1, 4, d}];;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10026D12C;
    v33[3] = &unk_1003C2B70;
    v33[4] = &v46;
    v33[5] = &v42;
    v33[6] = &v38;
    v33[7] = &v34;
    v18 = [v17 enumerateWithError:error block:v33];

    if (v18)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v52[3];
        v21 = v56[3];
        v22 = v47[3];
        v23 = v43[3];
        v24 = v39[3];
        v25 = v35[3];
        *buf = 134219522;
        v60 = v20;
        v61 = 2048;
        v62 = v21;
        v63 = 2048;
        v64 = v22;
        v65 = 2048;
        v66 = v23;
        v67 = 2048;
        v68 = v24;
        v69 = 2048;
        v70 = v25;
        v71 = 2112;
        v72 = nameCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=plan= Notifying progressModel of pending assetCount %llu assetSize %llu regCount %llu symlink %llu dir (%llu + %llu) for domain %@", buf, 0x48u);
        v32 = v35[3];
        v30 = v43[3];
        v31 = v39[3];
        v28 = v56[3];
        v29 = v47[3];
        v27 = v52[3];
        _MBLog();
      }

      [progressCopy willTransferItemsWithSize:v56[3] count:v47[3] + v52[3] + v43[3] + 2 * v39[3] + v35[3]];
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v18;
}

- (unint64_t)_domainIDForDomainName:(id)name inDB:(id)b error:(id *)error
{
  nameCopy = name;
  bCopy = b;
  if (!nameCopy)
  {
    __assert_rtn("[MBRestorePlanDB _domainIDForDomainName:inDB:error:]", "MBRestorePlanDB.m", 1147, "domainName");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _domainIDForDomainName:inDB:error:]", "MBRestorePlanDB.m", 1148, "error");
  }

  v9 = bCopy;
  v10 = [bCopy fetchCountWithError:error sql:{@"\n SELECT domainID\n   FROM Domains\n  WHERE domain = %@;", nameCopy}];

  return v10;
}

- (BOOL)_withReadOnlyDB:(id *)b accessor:(id)accessor
{
  accessorCopy = accessor;
  if (!b)
  {
    __assert_rtn("[MBRestorePlanDB _withReadOnlyDB:accessor:]", "MBRestorePlanDB.m", 1181, "error");
  }

  v7 = accessorCopy;
  if (!accessorCopy)
  {
    __assert_rtn("[MBRestorePlanDB _withReadOnlyDB:accessor:]", "MBRestorePlanDB.m", 1182, "accessor");
  }

  if ([(MBRestorePlanDB *)self isPopulated])
  {
    v8 = [(MBRestorePlanDB *)self _validRWDatabase:b];
    v9 = [v8 openReadOnlyInstance:objc_opt_class() error:b];

    if (v9)
    {
      v10 = (v7)[2](v7, v9, b);
      [v9 close:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (BOOL)fetchPendingRestoreSize:(int64_t *)size remainingFileCount:(int64_t *)count totalFileCount:(int64_t *)fileCount error:(id *)error
{
  if (!size)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]", "MBRestorePlanDB.m", 1199, "outPendingRestoreSize");
  }

  if (!count)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]", "MBRestorePlanDB.m", 1200, "outFileCount");
  }

  if (!fileCount)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]", "MBRestorePlanDB.m", 1201, "outTotalFileCount");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]", "MBRestorePlanDB.m", 1202, "error");
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10026D674;
  v7[3] = &unk_1003C2B90;
  v7[4] = size;
  v7[5] = count;
  v7[6] = fileCount;
  return [(MBRestorePlanDB *)self _withReadOnlyDB:error accessor:v7];
}

- (unint64_t)fatalErrorCount:(id *)count
{
  if (!count)
  {
    __assert_rtn("[MBRestorePlanDB fatalErrorCount:]", "MBRestorePlanDB.m", 1278, "error");
  }

  v4 = [(MBRestorePlanDB *)self _validRWDatabase:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fetchCountWithError:count sql:@"\nSELECT COUNT(*)\n  FROM FatalErrorRelationships\n WHERE parentErrorID IS NULL"];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)restoreVerificationSummary:(id *)summary
{
  if (!summary)
  {
    __assert_rtn("[MBRestorePlanDB restoreVerificationSummary:]", "MBRestorePlanDB.m", 1293, "error");
  }

  summaryCopy = summary;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [(MBRestorePlanDB *)self _validRWDatabase:?];
  v5 = [v4 fetchSQL:{@"\n  SELECT verificationStatus, COUNT(*)\n    FROM Domains\nGROUP BY verificationStatus"}];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10026DF04;
  v9[3] = &unk_1003C2B70;
  v9[4] = &v22;
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  LOBYTE(summaryCopy) = [v5 enumerateWithError:summaryCopy block:v9];

  if (summaryCopy)
  {
    v6 = [MBRestoreVerificationSummary alloc];
    v7 = [(MBRestoreVerificationSummary *)v6 initWithDomainsNotVerifiedCount:v23[3] domainsPassingVerificationCount:v19[3] domainsFailingVerificationCount:v15[3] domainsSkippedVerificationCount:v11[3]];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v7;
}

- (BOOL)skipDomains:(id)domains error:(id *)error
{
  domainsCopy = domains;
  if (!domainsCopy)
  {
    __assert_rtn("[MBRestorePlanDB skipDomains:error:]", "MBRestorePlanDB.m", 1343, "domainNames");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB skipDomains:error:]", "MBRestorePlanDB.m", 1344, "error");
  }

  v7 = domainsCopy;
  v8 = [(MBRestorePlanDB *)self _validRWDatabase:error];
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10026E1BC;
    v11[3] = &unk_1003C17E0;
    v12 = v7;
    selfCopy = self;
    v9 = [v8 groupInTransaction:error transaction:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_skipDomainID:(unint64_t)d into:(id)into error:(id *)error
{
  intoCopy = into;
  if (!d)
  {
    __assert_rtn("[MBRestorePlanDB _skipDomainID:into:error:]", "MBRestorePlanDB.m", 1379, "domainID");
  }

  v8 = intoCopy;
  if (!intoCopy)
  {
    __assert_rtn("[MBRestorePlanDB _skipDomainID:into:error:]", "MBRestorePlanDB.m", 1380, "pdb");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _skipDomainID:into:error:]", "MBRestorePlanDB.m", 1381, "error");
  }

  if ([intoCopy _recordVerificationState:4 domainID:d error:error] && objc_msgSend(v8, "executeWithError:sql:", error, @"\n UPDATE Domains\n    SET engineState = %u\n  WHERE domainID = %llu;", 10, d))
  {
    v9 = [v8 executeWithError:error sql:{@"\n UPDATE Restorables\n    SET restoreState = %u\n  WHERE domainID = %llu;", 2, d}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_verificationStateForDomainID:(unint64_t)d error:(id *)error
{
  if (!d)
  {
    __assert_rtn("[MBRestorePlanDB _verificationStateForDomainID:error:]", "MBRestorePlanDB.m", 1407, "domainID");
  }

  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB _verificationStateForDomainID:error:]", "MBRestorePlanDB.m", 1408, "error");
  }

  v6 = [(MBRestorePlanDB *)self _validRWDatabase:error];
  v7 = [v6 fetchObjectOfClass:objc_opt_class() error:error sql:{@"\n SELECT verificationStatus\n   FROM Domains\n  WHERE domainID = %llu", d}];;

  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (BOOL)enumerateDomainsAndAttributes:(id *)attributes enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!attributes)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainsAndAttributes:enumerator:]", "MBRestorePlanDB.m", 1424, "error");
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026E664;
  v10[3] = &unk_1003C2AF8;
  v11 = enumeratorCopy;
  v7 = enumeratorCopy;
  v8 = [(MBRestorePlanDB *)self _withReadOnlyDB:attributes accessor:v10];

  return v8;
}

- (id)_domainSummary:(id *)summary fromReadOnly:(id)only
{
  onlyCopy = only;
  if (!summary)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]", "MBRestorePlanDB.m", 1469, "error");
  }

  v7 = onlyCopy;
  if (!onlyCopy)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]", "MBRestorePlanDB.m", 1470, "creator");
  }

  +[NSMutableDictionary dictionary];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10026E9E0;
  v13[3] = &unk_1003C2CA0;
  v8 = v15 = v7;
  v14 = v8;
  v9 = v7;
  v10 = [(MBRestorePlanDB *)self _withReadOnlyDB:summary accessor:v13];

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)topDomainsByItemCount:(unint64_t)count error:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByItemCount:error:]", "MBRestorePlanDB.m", 1495, "error");
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10026EC68;
  v6[3] = &unk_1003C2BD8;
  v6[4] = count;
  v4 = [(MBRestorePlanDB *)self _domainSummary:error fromReadOnly:v6];

  return v4;
}

- (id)topDomainsByAssetBytes:(unint64_t)bytes error:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByAssetBytes:error:]", "MBRestorePlanDB.m", 1512, "error");
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10026EDCC;
  v6[3] = &unk_1003C2BD8;
  v6[4] = bytes;
  v4 = [(MBRestorePlanDB *)self _domainSummary:error fromReadOnly:v6];

  return v4;
}

@end