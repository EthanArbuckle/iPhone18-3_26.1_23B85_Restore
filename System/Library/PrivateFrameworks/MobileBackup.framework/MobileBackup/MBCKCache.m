@interface MBCKCache
- (BOOL)_isNotFoundError:(id)a3;
- (BOOL)_openWithFlags:(int)a3 error:(id *)a4;
- (BOOL)committedManifestContainsDomain:(id)a3 relativePath:(id)a4 pendingManifestID:(id)a5 error:(id *)a6;
- (BOOL)computeSignatureRetainCountsWithError:(id *)a3;
- (BOOL)domainShouldRestoreToSafeHarbor:(id)a3 error:(id *)a4;
- (BOOL)hasBackupContentsWithError:(id *)a3;
- (BOOL)hasPendingBackupContents:(id *)a3;
- (BOOL)previousSnapshotHasSkippedFiles;
- (BOOL)removeAllScannedDomains:(id *)a3;
- (BOOL)saveAccount:(id)a3 error:(id *)a4;
- (BOOL)saveDevice:(id)a3 error:(id *)a4;
- (MBCKCache)initWithTracker:(id)a3;
- (NSNumber)size;
- (id)_clientLastError:(id)a3;
- (id)_enumerateObjectsOfClass:(Class)a3 callback:(id)a4 format:(id)a5;
- (id)_enumerateRestoreFilesForDomain:(id)a3 state:(unint64_t)a4 negatingStateAndErrorState:(BOOL)a5 foundRestorable:(id)a6 range:(_NSRange)a7;
- (id)_executeSQL:(id)a3;
- (id)_fetchObjectOfClass:(Class)a3 error:(id *)a4 format:(id)a5;
- (id)_removePropertyForKey:(id)a3;
- (id)addDependentDomains:(id)a3 forApp:(id)a4;
- (id)addFile:(id)a3 toManifest:(id)a4;
- (id)addFileToRestoreFiles:(id)a3;
- (id)addManifest:(id)a3 toPendingSnapshot:(id)a4;
- (id)addPendingSnapshot:(id)a3;
- (id)addSnapshotIntoFileChanges:(id)a3;
- (id)clearAllRestoreData;
- (id)commitSnapshot:(id)a3;
- (id)dependentDomainsForApp:(id)a3 error:(id *)a4;
- (id)domainNameForManifestID:(id)a3 error:(id *)a4;
- (id)domainNamesForRestoreFailures:(id *)a3;
- (id)enumerateChangedDomainNames:(id)a3;
- (id)enumerateCloudFilesPendingDeleteForManifestID:(id)a3 withFoundFileID:(id)a4;
- (id)enumerateDomainNames:(id)a3;
- (id)enumerateDomainNamesOfPendingSnapshot:(id)a3 domainCallback:(id)a4;
- (id)enumerateFileChangesForDomainName:(id)a3 skipUnmodified:(BOOL)a4 foundChange:(id)a5;
- (id)enumerateFiles:(id)a3;
- (id)enumerateFilesForManifest:(id)a3 foundFile:(id)a4;
- (id)enumerateFilesForSnapshotOrderedByDomain:(id)a3 block:(id)a4;
- (id)enumerateFilesMissingEncryptionKeys:(id)a3;
- (id)enumerateKeybagUUIDsForAllFiles:(id)a3;
- (id)enumerateManifestsForSnapshot:(id)a3 foundManifest:(id)a4;
- (id)enumeratePendingRestorableDomainsWithCallback:(id)a3;
- (id)enumeratePendingRestoreFilesForAnyDomainOrderAscendingWithBlock:(id)a3;
- (id)enumeratePendingRestoreFilesForDomain:(id)a3 excludingType:(unint64_t)a4 foundRestorable:(id)a5;
- (id)enumeratePendingRestoreFilesForDomain:(id)a3 forType:(unint64_t)a4 orderAscending:(BOOL)a5 foundRestorable:(id)a6;
- (id)enumeratePendingRestoreFilesForDomain:(id)a3 orderAscending:(BOOL)a4 foundRestorable:(id)a5;
- (id)enumeratePendingRestoreRegularFilesForAnyDomainOrderAscendingWithBlock:(id)a3;
- (id)enumerateSnapshotIDs:(id)a3;
- (id)enumerateSnapshots:(id)a3;
- (id)fetchDomainRestoreStateForDomain:(id)a3 callback:(id)a4;
- (id)fetchDomainsWithTopNFileCounts:(unint64_t)a3 error:(id *)a4;
- (id)fetchDomainsWithTopNSizes:(unint64_t)a3 error:(id *)a4;
- (id)fetchFileFromFileID:(id)a3 error:(id *)a4;
- (id)fetchFileWithDomain:(id)a3 relativePath:(id)a4 snapshotID:(id)a5 error:(id *)a6;
- (id)fetchManifestPageForManifestID:(id)a3 pageIndex:(unint64_t)a4 error:(id *)a5;
- (id)fetchMostRecentSnapshotForDevice:(id)a3 error:(id *)a4;
- (id)fetchMostRecentSnapshotWithError:(id *)a3;
- (id)fetchPendingRestoreSizeForDomain:(id)a3 callback:(id)a4;
- (id)fetchRestorableFileForPath:(id)a3 error:(id *)a4;
- (id)fetchRestoreSizeForDomain:(id)a3 callback:(id)a4;
- (id)fileAssetMetadataForSignature:(id)a3 volumeType:(unint64_t)a4;
- (id)fileSeen:(id)a3 changeType:(unint64_t)a4;
- (id)hasDomainBeenBackedUp:(id)a3 backedUp:(BOOL *)a4;
- (id)hasRestoreFilesWithCallback:(id)a3;
- (id)lastBackedUpFileForFile:(id)a3 error:(id *)a4;
- (id)lastBackedUpFileWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5;
- (id)markFileAsCopyable:(id)a3;
- (id)markFileChangesAsUnmodifiedForDomainNames:(id)a3;
- (id)mergeManifest:(id)a3 withNewerManifest:(id)a4 outputManifest:(id)a5 mergeDeletions:(BOOL)a6;
- (id)performInTransaction:(id)a3;
- (id)prioritizeRestoreFileWithDomain:(id)a3 relativePath:(id)a4;
- (id)propertyForKey:(id)a3 error:(id *)a4;
- (id)rebuildEncryptionKeysTable;
- (id)removeAllOrphanedItems;
- (id)removeAllOrphanedItemsForSnapshot:(id)a3;
- (id)removeManifestAndFiles:(id)a3;
- (id)removeSnapshot:(id)a3;
- (id)removeSnapshotID:(id)a3;
- (id)removeUncommittedFileWithDomain:(id)a3 relativePath:(id)a4 pendingManifestID:(id)a5;
- (id)retainCountForSignature:(id)a3 volumeType:(unint64_t)a4 error:(id *)a5;
- (id)setDomainRestoreAgent:(id)a3 forDomain:(id)a4;
- (id)setDomainRestoreState:(unint64_t)a3 forDomain:(id)a4;
- (id)setFileEncryptionKey:(id)a3 forInodeNumber:(unint64_t)a4 volumeType:(unint64_t)a5 atPath:(id)a6;
- (id)setFileMissingEncryptionKeyForPath:(id)a3;
- (id)setFileStateToCompleted:(id)a3;
- (id)setFileStateToPending:(id)a3;
- (id)setProperty:(id)a3 forKey:(id)a4;
- (id)setRestoreState:(unint64_t)a3 forFile:(id)a4;
- (id)setRestoreType:(int)a3 forFile:(id)a4;
- (id)summarizeCloudFilesPendingDeleteForManifestID:(id)a3 callback:(id)a4;
- (id)summarizeFileChanges:(id)a3;
- (id)summarizeFileChangesForAllChanges:(id)a3;
- (id)summarizeFileChangesForDomainName:(id)a3 foundChanges:(id)a4;
- (id)summarizeFileChangesGroupByDomain:(id)a3;
- (id)updateDecodedAssetPath:(id)a3 forSignature:(id)a4 volumeType:(unint64_t)a5;
- (id)updateFile:(id)a3;
- (id)uploadedFileInPendingSnapshotWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5;
- (int)countManifestPagesForManifestID:(id)a3 error:(id *)a4;
- (int)countManifestsForSnapshot:(id)a3 error:(id *)a4;
- (int64_t)checksumForManifest:(id)a3 shouldLog:(BOOL)a4 error:(id *)a5;
- (unint64_t)countDomainHmacForManifest:(id)a3 error:(id *)a4;
- (unint64_t)countFilesForManifest:(id)a3 error:(id *)a4;
- (unint64_t)countFilesForManifestID:(id)a3 error:(id *)a4;
- (unint64_t)countFilesMissingEncryptionKeysWithError:(id *)a3;
- (unint64_t)countRestoreFilesWithSourceDeviceInode:(unint64_t)a3 signature:(id)a4 volumeType:(unint64_t)a5 error:(id *)a6;
- (unint64_t)fetchRestoreFileStateForFileID:(id)a3 error:(id *)a4;
- (unint64_t)fetchRestoreStateForDeviceUUID:(id)a3 snapshotUUID:(id)a4 error:(id *)a5;
- (unint64_t)sizeOfDomain:(id)a3 error:(id *)a4;
- (unint64_t)sizeOfPendingRestore:(id *)a3;
- (unint64_t)sizeOfScannedDomain:(id)a3 error:(id *)a4;
- (unint64_t)sizeOfSnapshot:(id)a3 error:(id *)a4;
- (void)_invalidate;
- (void)_perform:(id)a3;
- (void)_removeCorruptDatabaseWithError:(id)a3 completion:(id)a4;
- (void)beginBatch;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)removeFileEncryptionKeyForInode:(unint64_t)a3 volumeType:(unint64_t)a4;
@end

@implementation MBCKCache

- (MBCKCache)initWithTracker:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKCache initWithTracker:]", "MBCKCache.m", 350, "tracker");
  }

  v5 = v4;
  v11.receiver = self;
  v11.super_class = MBCKCache;
  v6 = [(MBCKCache *)&v11 init];
  if (v6)
  {
    v7 = [v5 path];
    path = v6->_path;
    v6->_path = v7;

    [(MBCKCache *)v6 setTracker:v5];
    v9 = [v5 sharedQueue];
    [(MBCKCache *)v6 setSharedQueue:v9];
  }

  return v6;
}

- (void)dealloc
{
  v3 = self->_pdb;
  v4 = v3;
  if (v3)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BFD88;
    block[3] = &unk_1003BC0B0;
    v8 = v3;
    dispatch_async(queue, block);
  }

  v6.receiver = self;
  v6.super_class = MBCKCache;
  [(MBCKCache *)&v6 dealloc];
}

- (BOOL)_openWithFlags:(int)a3 error:(id *)a4
{
  dispatch_assert_queue_V2(self->_sharedQueue);
  v5 = [(MBCKCache *)self tracker];
  v37 = v5;
  if (!v5)
  {
    __assert_rtn("[MBCKCache _openWithFlags:error:]", "MBCKCache.m", 374, "tracker");
  }

  v6 = [v5 path];
  v39 = v6;
  if (!v6)
  {
    __assert_rtn("[MBCKCache _openWithFlags:error:]", "MBCKCache.m", 376, "path");
  }

  v38 = [v6 stringByDeletingLastPathComponent];
  if (!v38)
  {
    __assert_rtn("[MBCKCache _openWithFlags:error:]", "MBCKCache.m", 378, "dir");
  }

  v8 = 0;
  v9 = 1;
  v10 = PQLSqliteErrorDomain;
  *&v7 = 138412290;
  v34 = v7;
  while (1)
  {
    v11 = v9;

    v12 = +[NSFileManager defaultManager];
    v45[0] = NSFileOwnerAccountName;
    v45[1] = NSFileGroupOwnerAccountName;
    v46[0] = @"mobile";
    v46[1] = @"mobile";
    v13 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    v42 = 0;
    v14 = [v12 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:v13 error:&v42];
    v15 = v42;

    if ((v14 & 1) == 0)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v44 = v39;
        *&v44[8] = 2112;
        *&v44[10] = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create the directory at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v8 = v15;
      goto LABEL_34;
    }

    v41 = v15;
    v16 = [(MBCKCache *)self _makePQLConnectionWithFlags:a3 error:&v41];
    v8 = v41;

    if (v16 || a3 & 1)
    {
      break;
    }

    v18 = [v8 domain];
    if ([v18 isEqualToString:v10])
    {
      v19 = [v8 code] == 13;

      if (v19)
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v44 = 30;
          *&v44[4] = 2114;
          *&v44[6] = v8;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Sleeping for %d seconds: %{public}@", buf, 0x12u);
          _MBLog();
        }

        sleep(0x1Eu);
        MBExit(1);
      }
    }

    else
    {
    }

    v40 = 0;
    v20 = [v37 _removeDatabaseAtPath:v39 error:{&v40, v32, v33, v34}];
    v21 = v40;
    if ((v20 & 1) == 0)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v44 = v39;
        *&v44[8] = 2112;
        *&v44[10] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to remove the db at %@: %@", buf, 0x16u);
        v32 = v39;
        v33 = v21;
        _MBLog();
      }
    }

    if (!v8)
    {
      __assert_rtn("[MBCKCache _openWithFlags:error:]", "MBCKCache.m", 414, "localError");
    }

    v9 = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (!v16)
  {
LABEL_34:
    if (!v8)
    {
      __assert_rtn("[MBCKCache _openWithFlags:error:]", "MBCKCache.m", 424, "localError");
    }

LABEL_35:
    if (a4)
    {
      v30 = v8;
      v16 = 0;
      *a4 = v8;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_38;
  }

  atomic_store(1u, &self->_openCount);
  self->_readOnly = a3 & 1;
  objc_storeStrong(&self->_pdb, v16);
  v24 = [v16 serialQueue];
  queue = self->_queue;
  self->_queue = v24;

  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v27 = 111;
    }

    else
    {
      v27 = 119;
    }

    *buf = 67109378;
    *v44 = v27;
    *&v44[4] = 2112;
    *&v44[6] = v16;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Opened r/%c PQL connection %@", buf, 0x12u);
    _MBLog();
  }

LABEL_38:
  return v16 != 0;
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_sharedQueue);
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating cache connection %p", buf, 0xCu);
      _MBLog();
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C069C;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)close
{
  add = atomic_fetch_add(&self->_openCount, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("[MBCKCache close]", "MBCKCache.m", 457, "0 < openCount");
  }

  if (add == 1)
  {
    v4 = [(MBCKCache *)self tracker];
    if (!v4)
    {
      __assert_rtn("[MBCKCache close]", "MBCKCache.m", 460, "tracker");
    }

    v5 = v4;
    [v4 _closeCache:self];
  }
}

- (id)performInTransaction:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000BE7F8;
  v14 = sub_1000BE808;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0A0C;
  v6[3] = &unk_1003BDBF0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)beginBatch
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C0BCC;
  v2[3] = &unk_1003BC0B0;
  v2[4] = self;
  [(MBCKCache *)self _perform:v2];
}

- (void)flush
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C0C44;
  v2[3] = &unk_1003BC0B0;
  v2[4] = self;
  [(MBCKCache *)self _perform:v2];
}

- (void)_removeCorruptDatabaseWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedQueue = self->_sharedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0D14;
  block[3] = &unk_1003BD9D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedQueue, block);
}

- (BOOL)_isNotFoundError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 12)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:PQLSqliteErrorDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_clientLastError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 12 && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", PQLSqliteErrorDomain), v4, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)_perform:(id)a3
{
  block = a3;
  specific = dispatch_get_specific(self);
  queue = self->_queue;
  if (specific == self)
  {
    dispatch_assert_queue_V2(queue);
    v6 = objc_autoreleasePoolPush();
    block[2]();
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    dispatch_assert_queue_not_V2(queue);
    dispatch_sync(self->_queue, block);
  }
}

- (id)_executeSQL:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000BE7F8;
  v16 = sub_1000BE808;
  v17 = 0;
  v11 = &v19;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C2E84;
  v6[3] = &unk_1003BDF28;
  v7 = self;
  v9 = &v12;
  v3 = a3;
  v8 = v3;
  v10 = &v11;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)_enumerateObjectsOfClass:(Class)a3 callback:(id)a4 format:(id)a5
{
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000BE7F8;
  v24 = sub_1000BE808;
  v25 = 0;
  v19 = &v27;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C3084;
  v13[3] = &unk_1003BDF50;
  v13[4] = self;
  v16 = &v20;
  v9 = a5;
  v14 = v9;
  v17 = &v19;
  v18 = a3;
  v10 = v8;
  v15 = v10;
  [(MBCKCache *)self _perform:v13];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (id)_fetchObjectOfClass:(Class)a3 error:(id *)a4 format:(id)a5
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000BE7F8;
  v28 = sub_1000BE808;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000BE7F8;
  v22 = sub_1000BE808;
  v23 = 0;
  v17 = &v31;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C344C;
  v10[3] = &unk_1003BDF78;
  v11 = self;
  v13 = &v24;
  v14 = &v18;
  v15 = a3;
  v6 = a5;
  v12 = v6;
  v16 = &v17;
  [(MBCKCache *)v11 _perform:v10];
  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v25[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (id)propertyForKey:(id)a3 error:(id *)a4
{
  v11 = a3;
  if (!v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = 0;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Null key: %@", buf, 0xCu);
    }
  }

  if (sub_10012F400(v11 != 0, a4, @"Null key: %@", v6, v7, v8, v9, v10, v11))
  {
    v13 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a4 format:@"SELECT value FROM Properties WHERE key = %@ AND key IS NOT NULL", v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v13 = a4;
  if (!v13)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = 0;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Null key: %@", buf, 0xCu);
    }
  }

  v15 = _MBAssert(v13 != 0, @"Null key: %@", v7, v8, v9, v10, v11, v12, v13);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    if (v6)
    {
      [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Properties (key, value) VALUES (%@, %@)", v13, v6];
    }

    else
    {
      [(MBCKCache *)self _removePropertyForKey:v13];
    }
    v17 = ;
  }

  v18 = v17;

  return v18;
}

- (id)_removePropertyForKey:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Null key: %@", buf, 0xCu);
    }
  }

  v12 = _MBAssert(v10 != 0, @"Null key: %@", v4, v5, v6, v7, v8, v9, v10);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Properties WHERE key == %@", v10];
  }

  v15 = v14;

  return v15;
}

- (BOOL)saveAccount:(id)a3 error:(id *)a4
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [a3 devicesByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = [v12 deviceUUID];
      v14 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Devices (deviceUUID, device) VALUES (%@, %@)", v13, v12];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to add device: %@", buf, 0xCu);
      _MBLog();
    }

    v17 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_9:

  v15 = +[NSDate date];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];

  v16 = [v7 base64EncodedStringWithOptions:0];
  v14 = [(MBCKCache *)self setProperty:v16 forKey:@"AccountSaved"];

  v17 = v14 == 0;
  if (v14)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to set cached at date for account: %@", buf, 0xCu);
      _MBLog();
    }

    if (a4)
    {
LABEL_17:
      v20 = v14;
      *a4 = v14;
    }
  }

LABEL_18:

  return v17;
}

- (BOOL)saveDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 deviceUUID];
  v8 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Devices (deviceUUID, device) VALUES (%@, %@)", v7, v6];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to add device: %@", buf, 0xCu);
      _MBLog();
    }

    if (a4)
    {
      v10 = v8;
      *a4 = v8;
    }
  }

  return v8 == 0;
}

- (BOOL)hasBackupContentsWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000BE7F8;
  v15 = sub_1000BE808;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C3DE8;
  v6[3] = &unk_1003BCFA0;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(MBCKCache *)self _perform:v6];
  if (a3)
  {
    *a3 = v12[5];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)hasPendingBackupContents:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000BE7F8;
  v15 = sub_1000BE808;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C400C;
  v6[3] = &unk_1003BCFA0;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(MBCKCache *)self _perform:v6];
  if (a3)
  {
    *a3 = v12[5];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSNumber)size
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(MBCKCache *)self path];
  v5 = [v3 attributesOfItemAtPath:v4 error:0];

  v6 = [v5 fileSize];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = [(MBCKCache *)self path];
    *buf = 138544130;
    v39 = v8;
    v40 = 2114;
    v41 = v9;
    v42 = 2048;
    v43 = v6;
    v44 = 2048;
    v45 = [v5 fileSystemFileNumber];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@: %{public}@, size:%llu, inode:%llu", buf, 0x2Au);

    v10 = objc_opt_class();
    v11 = [(MBCKCache *)self path];
    v29 = v6;
    v30 = [v5 fileSystemFileNumber];
    v27 = v10;
    v28 = v11;
    _MBLog();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = MBSQLiteJournalSuffixes();
  v32 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v13 = *v34;
    v31 = v3;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(MBCKCache *)self path:v27];
        v17 = [v16 stringByAppendingString:v15];

        if ([v3 fileExistsAtPath:v17])
        {
          v18 = [v3 attributesOfItemAtPath:v17 error:0];

          v19 = [v18 fileSize];
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = v6;
            v22 = objc_opt_class();
            v23 = [v18 fileSystemFileNumber];
            *buf = 138544130;
            v39 = v22;
            v40 = 2114;
            v41 = v17;
            v42 = 2048;
            v43 = v19;
            v44 = 2048;
            v45 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@: %{public}@, size:%llu, inode:%llu", buf, 0x2Au);
            v24 = objc_opt_class();
            v29 = v19;
            v30 = [v18 fileSystemFileNumber];
            v27 = v24;
            v28 = v17;
            v6 = v21;
            v3 = v31;
            _MBLog();
          }

          v6 = &v6[v19];
          v5 = v18;
        }
      }

      v32 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  v25 = [NSNumber numberWithUnsignedLongLong:v6];

  return v25;
}

- (id)addPendingSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 snapshotID];
  v6 = [v4 committed];
  v7 = [v4 created];
  v8 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Snapshots (snapshotID, committed, created, snapshot) VALUES (%@, %d, %@, %@)", v5, v6, v7, v4];

  return v8;
}

- (id)commitSnapshot:(id)a3
{
  v4 = a3;
  [v4 setCommitted:1];
  v5 = [v4 created];
  v6 = [v4 snapshotID];
  v7 = [(MBCKCache *)self _executeSQL:@"UPDATE Snapshots SET committed = 1, created = %@, snapshot = %@ WHERE snapshotID = %@", v5, v4, v6];

  return v7;
}

- (id)removeSnapshotID:(id)a3
{
  if (a3)
  {
    v4 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Snapshots WHERE snapshotID = %@", a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)removeSnapshot:(id)a3
{
  v4 = [a3 snapshotID];
  v5 = [(MBCKCache *)self removeSnapshotID:v4];

  return v5;
}

- (id)enumerateSnapshots:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT snapshot FROM Snapshots ORDER BY created DESC"];

  return v5;
}

- (id)enumerateSnapshotIDs:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT snapshotID FROM Snapshots ORDER BY created DESC"];

  return v5;
}

- (id)fetchMostRecentSnapshotWithError:(id *)a3
{
  v5 = objc_opt_class();

  return [(MBCKCache *)self _fetchObjectOfClass:v5 error:a3 format:@"SELECT snapshot FROM Snapshots ORDER BY created DESC LIMIT 1"];
}

- (id)fetchMostRecentSnapshotForDevice:(id)a3 error:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000BE7F8;
  v16 = sub_1000BE808;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C4900;
  v9[3] = &unk_1003BDFA0;
  v5 = a3;
  v10 = v5;
  v11 = &v12;
  v6 = [(MBCKCache *)self enumerateSnapshots:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (unint64_t)sizeOfSnapshot:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000BE7F8;
  v17 = sub_1000BE808;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4AF4;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v13;
  v5 = a3;
  v10 = v5;
  v12 = &v19;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v14[5];
  }

  v6 = v20[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)addManifest:(id)a3 toPendingSnapshot:(id)a4
{
  v5 = a3;
  v6 = [v5 manifestID];
  v7 = [v5 snapshotID];
  v8 = [v5 domainName];
  v9 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Manifests (manifestID, snapshotID, domain, manifest) VALUES (%@, %@, %@, %@)", v6, v7, v8, v5];

  return v9;
}

- (id)enumerateManifestsForSnapshot:(id)a3 foundManifest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 snapshotID];

  v10 = [(MBCKCache *)self _enumerateObjectsOfClass:v8 callback:v6 format:@"SELECT manifest FROM Manifests WHERE snapshotID = %@", v9];

  return v10;
}

- (id)removeManifestAndFiles:(id)a3
{
  v4 = [a3 manifestID];
  v5 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Manifests WHERE manifestID = %@", v4];

  return v5;
}

- (int)countManifestsForSnapshot:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000BE7F8;
  v21 = sub_1000BE808;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4F30;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v17;
  v5 = a3;
  v10 = v5;
  v12 = &v13;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v18[5];
  }

  v6 = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (int)countManifestPagesForManifestID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000BE7F8;
  v21 = sub_1000BE808;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C51CC;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v17;
  v5 = a3;
  v10 = v5;
  v12 = &v13;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v18[5];
  }

  v6 = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)fetchManifestPageForManifestID:(id)a3 pageIndex:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a5 format:@"SELECT manifestPage from ManifestPages WHERE manifestID = %@ AND pageIndex = %lu", v8, a4];

  return v9;
}

- (id)updateFile:(id)a3
{
  v4 = a3;
  v5 = [v4 fileID];
  v6 = [(MBCKCache *)self _executeSQL:@"UPDATE Files SET file = %@ WHERE fileID = %@", v4, v5];

  return v6;
}

- (id)addFile:(id)a3 toManifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 deleted] & 1) != 0 || (objc_msgSend(v6, "isDirectory") & 1) != 0 || (v8 = objc_msgSend(v6, "protectionClass"), v8 == 255) || (v9 = v8, +[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", v8)))
  {
    v10 = [v6 fileID];
    v11 = [v7 manifestID];
    v12 = [v6 domainName];
    v13 = [v6 relativePath];
    v14 = [v6 modified];
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 deleted]);
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 fileType]);
    -[MBCKCache _executeSQL:](self, "_executeSQL:", @"INSERT OR REPLACE INTO Files (fileID, manifestID, domain, relativePath, modified, deleted, fileType, file, size) VALUES (%@, %@, %@, %@, %@, %@, %@, %@, %llu)", v10, v11, v12, v13, v14, v15, v16, v6, [v6 size], v19);
  }

  else
  {
    [v6 fileID];
    v10 = v20 = v9;
    v11 = [v7 manifestID];
    v12 = [v6 domainName];
    v13 = [v6 relativePath];
    v14 = [v6 modified];
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 deleted]);
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 fileType]);
    -[MBCKCache _executeSQL:](self, "_executeSQL:", @"INSERT OR REPLACE INTO Files (fileID, manifestID, domain, relativePath, modified, deleted, fileType, file, size, protectionClass) VALUES (%@, %@, %@, %@, %@, %@, %@, %@, %llu, %d)", v10, v11, v12, v13, v14, v15, v16, v6, [v6 size], v20);
  }
  v17 = ;

  return v17;
}

- (int64_t)checksumForManifest:(id)a3 shouldLog:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Cache] Calculating checksum for %@", buf, 0xCu);
      _MBLog();
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C58C0;
  v18[3] = &unk_1003BDFF0;
  v19 = v6;
  v18[4] = self;
  v18[5] = &v20;
  v10 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v18 format:@"SELECT fileID FROM Files WHERE manifestID = %@", v8];
  v11 = v10;
  if (a5)
  {
    v12 = v10;
    *a5 = v11;
  }

  if (v6)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v21[3];
      *buf = 134218242;
      v25 = v14;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Cache] %llx checksum for %@", buf, 0x16u);
      v17 = v21[3];
      _MBLog();
    }
  }

  v15 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v15;
}

- (id)mergeManifest:(id)a3 withNewerManifest:(id)a4 outputManifest:(id)a5 mergeDeletions:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO Files (fileID, manifestID, domain, modified, relativePath, deleted, fileType, size, file, protectionClass) SELECT  fileID, %@, domain, modified, relativePath, deleted, fileType, size, file, protectionClass FROM Files WHERE manifestID == %@", v12, v11];
  if (!v13)
  {
    v13 = [(MBCKCache *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, manifestID, domain, modified, relativePath, deleted, fileType, size, file, protectionClass) SELECT  fileID, %@, domain, modified, relativePath, deleted, fileType, size, file, protectionClass FROM Files WHERE manifestID == %@", v12, v10];
    if (!v13 && !a6)
    {
      v13 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Files WHERE manifestID == %@ AND deleted == 1 AND fileID IN (SELECT fileID FROM Files WHERE manifestID == %@)", v12, v11];
    }
  }

  return v13;
}

- (id)enumerateFilesForManifest:(id)a3 foundFile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 manifestID];

  v10 = [(MBCKCache *)self _enumerateObjectsOfClass:v8 callback:v6 format:@"SELECT file FROM Files WHERE manifestID = %@ ORDER BY relativePath ASC", v9];

  return v10;
}

- (id)enumerateFilesForSnapshotOrderedByDomain:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C5D44;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)removeUncommittedFileWithDomain:(id)a3 relativePath:(id)a4 pendingManifestID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Files WHERE domain = %@ AND relativePath = %@ AND manifestID = %@", v8, v9, a5];
  if (!v10)
  {
    v10 = [(MBCKCache *)self _executeSQL:@"DELETE FROM FileChanges WHERE domain = %@ AND relativePath = %@", v8, v9];
  }

  v11 = v10;

  return v11;
}

- (id)enumerateFiles:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT file FROM Files"];

  return v5;
}

- (id)fetchFileFromFileID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a4 format:@"SELECT file FROM Files where fileID = %@ LIMIT 1", v6];

  return v7;
}

- (id)domainNameForManifestID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a4 format:@"SELECT domain FROM Manifests where manifestID = %@", v6];

  return v7;
}

- (BOOL)committedManifestContainsDomain:(id)a3 relativePath:(id)a4 pendingManifestID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000BE7F8;
  v33 = sub_1000BE808;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C627C;
  v19[3] = &unk_1003BE040;
  v19[4] = self;
  v23 = &v29;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v24 = &v25;
  [(MBCKCache *)self _perform:v19];
  v16 = v30[5];
  if (v16)
  {
    v17 = 0;
    if (a6)
    {
      *a6 = v16;
    }
  }

  else
  {
    v17 = *(v26 + 24);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17 & 1;
}

- (unint64_t)countFilesForManifest:(id)a3 error:(id *)a4
{
  v6 = [a3 manifestID];
  v7 = [(MBCKCache *)self countFilesForManifestID:v6 error:a4];

  return v7;
}

- (unint64_t)countFilesForManifestID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000BE7F8;
  v21 = sub_1000BE808;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6544;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v17;
  v5 = a3;
  v10 = v5;
  v12 = &v13;
  [(MBCKCache *)v9 _perform:v8];
  v6 = v14[3];
  if (a4 && !v6)
  {
    *a4 = v18[5];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (unint64_t)countDomainHmacForManifest:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000BE7F8;
  v21 = sub_1000BE808;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C67B4;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v17;
  v5 = a3;
  v10 = v5;
  v12 = &v13;
  [(MBCKCache *)v9 _perform:v8];
  v6 = v14[3];
  if (a4 && !v6)
  {
    *a4 = v18[5];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)fetchFileWithDomain:(id)a3 relativePath:(id)a4 snapshotID:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a6 format:@"SELECT file FROM Files WHERE domain = %@ AND relativePath = %@ AND manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID = %@)", v12, v11, v10];

  return v13;
}

- (unint64_t)countRestoreFilesWithSourceDeviceInode:(unint64_t)a3 signature:(id)a4 volumeType:(unint64_t)a5 error:(id *)a6
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000BE7F8;
  v27 = sub_1000BE808;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C6B04;
  v12[3] = &unk_1003BE068;
  v13 = self;
  v15 = &v23;
  v17 = a3;
  v8 = a4;
  v18 = a5;
  v14 = v8;
  v16 = &v19;
  [(MBCKCache *)v13 _perform:v12];
  v9 = v20[3];
  if (!v9)
  {
    if (a6)
    {
      v10 = v24[5];
      if (v10)
      {
        *a6 = v10;
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (id)setFileStateToPending:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000BE7F8;
  v16 = sub_1000BE808;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6D84;
  v8[3] = &unk_1003BE090;
  v11 = &v12;
  v9 = self;
  v3 = a3;
  v10 = v3;
  v4 = [(MBCKCache *)v9 performInTransaction:v8];
  v5 = v13;
  if (v4 && !v13[5])
  {
    objc_storeStrong(v13 + 5, v4);
    v5 = v13;
  }

  v6 = v5[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)setFileStateToCompleted:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000BE7F8;
  v16 = sub_1000BE808;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6F94;
  v8[3] = &unk_1003BE090;
  v11 = &v12;
  v9 = self;
  v3 = a3;
  v10 = v3;
  v4 = [(MBCKCache *)v9 performInTransaction:v8];
  v5 = v13;
  if (v4 && !v13[5])
  {
    objc_storeStrong(v13 + 5, v4);
    v5 = v13;
  }

  v6 = v5[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)summarizeCloudFilesPendingDeleteForManifestID:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C73E4;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)enumerateCloudFilesPendingDeleteForManifestID:(id)a3 withFoundFileID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v6 format:@"SELECT fileID FROM CloudFilesPendingDelete WHERE manifestID = %@", v7];

  return v8;
}

- (id)enumerateKeybagUUIDsForAllFiles:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = +[NSMutableSet set];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C781C;
  v15[3] = &unk_1003BE0B8;
  v15[4] = &v16;
  v5 = [(MBCKCache *)self enumerateFiles:v15];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v17[5];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v4[2](v4, *(*(&v11 + 1) + 8 * i));
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v16, 8);

  return v5;
}

- (id)addSnapshotIntoFileChanges:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _executeSQL:@"INSERT or REPLACE INTO FileChanges (domain, relativePath, size, changeType, shouldCopy) SELECT domain, relativePath, size, %d, 0 FROM Files WHERE deleted == 0 AND (manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID == %@))", 0, v4];
  if (!v5)
  {
    v5 = [(MBCKCache *)self _executeSQL:@"INSERT or REPLACE INTO FileChanges (domain, relativePath, size, changeType, shouldCopy) SELECT domain, relativePath, size, %d, 0 FROM Files WHERE deleted == 1 AND (manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID == %@))", 3, v4];
  }

  v6 = v5;

  return v6;
}

- (id)markFileChangesAsUnmodifiedForDomainNames:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MBCKCache *)self _executeSQL:@"UPDATE FileChanges SET changeType = %d WHERE domain = %@", 0, *(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)fileSeen:(id)a3 changeType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 domainName];
  v8 = [v6 relativePath];
  v9 = [v6 size];

  v10 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO FileChanges (domain, relativePath, size, changeType, shouldCopy) VALUES (%@, %@, %llu, %lu, 0)", v7, v8, v9, a4];

  return v10;
}

- (id)markFileAsCopyable:(id)a3
{
  v4 = a3;
  v5 = [v4 domainName];
  v6 = [v4 relativePath];

  v7 = [(MBCKCache *)self _executeSQL:@"UPDATE FileChanges SET shouldCopy = 1 WHERE domain = %@ AND relativePath = %@", v5, v6];

  return v7;
}

- (id)lastBackedUpFileWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a5 format:@"WITH LastBackedUpFiles(file, created) AS( SELECT file, %llu from Files where domain = %@ AND relativePath = %@ AND SUBSTR(fileID, 0, 36) == (SELECT SUBSTR(value, 3, 36) from Properties where key == %@) UNION ALL  SELECT Files.file, Snapshots.created FROM Files, Manifests, Snapshots WHERE Files.domain = %@ AND Files.relativePath = %@ AND Files.manifestID == Manifests.manifestID AND Manifests.snapshotID == Snapshots.snapshotID)SELECT file from LastBackedUpFiles ORDER BY created DESC LIMIT 1", 0x7FFFFFFFFFFFFFFFLL, v9, v8, @"PendingSnapshotID", v9, v8];

  return v10;
}

- (id)uploadedFileInPendingSnapshotWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a5 format:@" SELECT file from Files where domain = %@ AND relativePath = %@ AND SUBSTR(manifestID, 0, 36) == (SELECT SUBSTR(value, 3, 36) from Properties where key == %@)", v9, v8, @"PendingSnapshotID"];

  return v10;
}

- (id)lastBackedUpFileForFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 domainName];
  v8 = [v6 relativePath];

  v9 = [(MBCKCache *)self lastBackedUpFileWithDomainName:v7 relativePath:v8 error:a4];

  return v9;
}

- (id)enumerateFileChangesForDomainName:(id)a3 skipUnmodified:(BOOL)a4 foundChange:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000BE7F8;
  v23 = sub_1000BE808;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C7F5C;
  v14[3] = &unk_1003BE0E0;
  v14[4] = self;
  v17 = &v19;
  v18 = a4;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  [(MBCKCache *)self _perform:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)summarizeFileChangesForDomainName:(id)a3 foundChanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C824C;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)summarizeFileChangesForAllChanges:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000BE7F8;
  v14 = sub_1000BE808;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C849C;
  v6[3] = &unk_1003BDBF0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)summarizeFileChanges:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000BE7F8;
  v14 = sub_1000BE808;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C86E4;
  v6[3] = &unk_1003BDBF0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)hasDomainBeenBackedUp:(id)a3 backedUp:(BOOL *)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:&v13 format:@"SELECT domain FROM FileChanges WHERE domain = %@ LIMIT 1", v6];

  v8 = v13;
  v9 = v13;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v11 = !v10;
  *a4 = v11;

  return v8;
}

- (id)summarizeFileChangesGroupByDomain:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000BE7F8;
  v14 = sub_1000BE808;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8A18;
  v6[3] = &unk_1003BDBF0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)previousSnapshotHasSkippedFiles
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000BE7F8;
  v15 = sub_1000BE808;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8CE8;
  v6[3] = &unk_1003BCFA0;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(MBCKCache *)self _perform:v6];
  if (v12[5])
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to check if previous snapshot has skipped files", v5, 2u);
      _MBLog();
    }

    v3 = 0;
    *(v8 + 24) = 0;
  }

  else
  {
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v3 & 1;
}

- (id)setFileMissingEncryptionKeyForPath:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self setFileEncryptionKey:0 forInodeNumber:0 volumeType:0 atPath:v4];
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to track the missing encryption key for %@: %@", buf, 0x16u);
      _MBLog();
    }
  }

  return v5;
}

- (id)setFileEncryptionKey:(id)a3 forInodeNumber:(unint64_t)a4 volumeType:(unint64_t)a5 atPath:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (!v11 || (!a5 ? (v13 = v10 != 0) : (v13 = 0), (v10 != 0) != (a4 != 0) || v13))
  {
    v14 = [MBError errorWithCode:1 format:@"Invalid call to setFileEncryptionKey"];
  }

  else
  {
    v14 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO FoundEncryptionKeys (inode, volumeType, path, key) VALUES (%llu, %lu, %@, %@)", a4, a5, v11, v10];
  }

  v15 = v14;

  return v15;
}

- (void)removeFileEncryptionKeyForInode:(unint64_t)a3 volumeType:(unint64_t)a4
{
  v7 = [(MBCKCache *)self _executeSQL:@"DELETE FROM FoundEncryptionKeys WHERE inode = %llu AND volumeType = %lu", a3, a4];
  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to remove the cached encryption key (FoundEncryptionKeys) for inode %llu volumeType %lu: %@", buf, 0x20u);
      v11 = v7;
      _MBLog();
    }
  }

  v9 = [(MBCKCache *)self _executeSQL:@"DELETE FROM EncryptionKeys WHERE inode = %llu AND volumeType = %lu", a3, a4, v11];

  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove the cached encryption key (EncryptionKeys) for inode %llu volumeType %lu: %@", buf, 0x20u);
      _MBLog();
    }
  }
}

- (id)enumerateFilesMissingEncryptionKeys:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT path FROM FoundEncryptionKeys WHERE key IS NULL AND inode = 0 AND volumeType = 0"];

  return v5;
}

- (unint64_t)countFilesMissingEncryptionKeysWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000BE7F8;
  v11 = sub_1000BE808;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C93B4;
  v6[3] = &unk_1003BCFA0;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v13;
  [(MBCKCache *)self _perform:v6];
  if (a3)
  {
    *a3 = v8[5];
  }

  v4 = v14[3];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (id)rebuildEncryptionKeysTable
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [(MBCKCache *)self _executeSQL:@"DELETE FROM EncryptionKeys"];
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to remove all the cached encryption keys: %@", &buf, 0xCu);
      _MBLog();
    }

    v7 = v5;
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v9 - v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removed all cached encryption keys in %.3fs", &buf, 0xCu);
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v12 = v11;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = sub_1000BE7F8;
    v44 = sub_1000BE808;
    v45 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000C9920;
    v26[3] = &unk_1003BE108;
    v26[6] = &v27;
    v26[7] = &buf;
    v26[4] = self;
    v26[5] = &v31;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000C9C38;
    v24[3] = &unk_1003BE130;
    v24[4] = self;
    v13 = objc_retainBlock(v26);
    v25 = v13;
    [(MBCKCache *)self performInTransaction:v24];
    v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (v14 == 0.0 && (v14 = COERCE_DOUBLE(*(*(&buf + 1) + 40)), v14 == 0.0))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v18 = v17;
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v32[3];
        v21 = v28[3];
        *v35 = 134218496;
        v36 = v18 - v12;
        v37 = 2048;
        v38 = v20;
        v39 = 2048;
        v40 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rebuilt the cached encryption keys table in %.3fs (%llu keys, %llu bytes)", v35, 0x20u);
        v22 = v32[3];
        v23 = v28[3];
        _MBLog();
      }

      v7 = 0;
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v35 = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to enumerate all the files from the Files table: %@", v35, 0xCu);
        _MBLog();
      }

      v7 = *&v14;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&buf, 8);
  }

  return v7;
}

- (unint64_t)sizeOfDomain:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000BE7F8;
  v17 = sub_1000BE808;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C9E0C;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v13;
  v5 = a3;
  v10 = v5;
  v12 = &v19;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v14[5];
  }

  v6 = v20[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)enumerateDomainNames:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT DISTINCT(domain) FROM Manifests WHERE snapshotID IN (SELECT snapshotID FROM Snapshots)"];

  return v5;
}

- (id)enumerateChangedDomainNames:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT DISTINCT(domain) FROM FileChanges WHERE changeType != %lu", 0];

  return v5;
}

- (id)enumerateDomainNamesOfPendingSnapshot:(id)a3 domainCallback:(id)a4
{
  v5 = a4;
  v6 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v5 format:@"SELECT DISTINCT(domain) FROM Files WHERE manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots))"];
  if (!v6)
  {
    v6 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v5 format:@"SELECT DISTINCT(domain) FROM Files WHERE manifestID NOT IN (SELECT manifestID FROM Manifests)"];
    if (!v6)
    {
      v6 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v5 format:@"SELECT DISTINCT(domain) FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots) AND manifestID NOT IN (SELECT manifestID FROM Files)"];
    }
  }

  v7 = v6;

  return v7;
}

- (BOOL)computeSignatureRetainCountsWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000BE7F8;
  v13 = sub_1000BE808;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CA1F4;
  v8[3] = &unk_1003BE158;
  v8[4] = self;
  v8[5] = &v9;
  v4 = [(MBCKCache *)self performInTransaction:v8];
  v5 = v10[5];
  if (!v5)
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_8;
    }

    v5 = v4;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 0;
  *a3 = v5;
LABEL_8:

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)retainCountForSignature:(id)a3 volumeType:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (_os_feature_enabled_impl())
  {
    v9 = objc_opt_class();
    v16 = 0;
    v10 = [v8 base64EncodedStringWithOptions:0];
    v11 = [(MBCKCache *)self _fetchObjectOfClass:v9 error:&v16 format:@"SELECT retainCount from HardlinkCloneFiles WHERE signature = %@ AND volumeType = %lu", v10, a4];
    v12 = v16;

    if (v12)
    {
      if (a5)
      {
        v13 = v12;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = &off_1003E0D80;
  }

  return v14;
}

- (id)fileAssetMetadataForSignature:(id)a3 volumeType:(unint64_t)a4
{
  v6 = a3;
  if (!_os_feature_enabled_impl())
  {
    v10 = 0;
    goto LABEL_11;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000BE7F8;
  v41 = sub_1000BE808;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000BE7F8;
  v31 = sub_1000BE808;
  v32 = 0;
  [v6 base64EncodedStringWithOptions:0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000BE7F8;
  v25 = sub_1000BE808;
  v26 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CA8E8;
  v14[3] = &unk_1003BE180;
  v14[4] = self;
  v7 = v16 = &v21;
  v19 = &v27;
  v20 = a4;
  v15 = v7;
  v17 = &v37;
  v18 = &v33;
  [(MBCKCache *)self _perform:v14];
  if (v22[5])
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v22[5];
      *buf = 138412546;
      v44 = v7;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching cached file metadata for %@: %@", buf, 0x16u);
      v13 = v22[5];
      _MBLog();
    }
  }

  else
  {
    if (v38[5] || v28[5])
    {
      v11 = [MBCKFileAssetMetadata alloc];
      v10 = [(MBCKFileAssetMetadata *)v11 initWithStashedAssetPath:v38[5] stashedAssetIsDecrypted:*(v34 + 24) decodedAssetPath:v28[5]];
      goto LABEL_10;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Found nil stashed and decoded asset path for %@", buf, 0xCu);
      _MBLog();
    }
  }

  v10 = 0;
LABEL_10:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

LABEL_11:

  return v10;
}

- (id)updateDecodedAssetPath:(id)a3 forSignature:(id)a4 volumeType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (_os_feature_enabled_impl())
  {
    v10 = [v9 base64EncodedStringWithOptions:0];
    v11 = [(MBCKCache *)self _executeSQL:@"UPDATE HardlinkCloneFiles SET decodedAssetPath = %@ WHERE signature = %@ AND volumeType = %lu", v8, v10, a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)addFileToRestoreFiles:(id)a3
{
  v4 = a3;
  v5 = [v4 domainName];

  if (v5)
  {
    v6 = [v4 signature];
    if (!v6 && [v4 size])
    {
      __assert_rtn("[MBCKCache addFileToRestoreFiles:]", "MBCKCache.m", 2314, "file.signature || file.size == 0");
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000BE7F8;
    v19 = sub_1000BE808;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CACB4;
    v12[3] = &unk_1003BE090;
    v14 = &v15;
    v12[4] = self;
    v13 = v4;
    v7 = [(MBCKCache *)self performInTransaction:v12];
    v8 = v7;
    v9 = v16[5];
    if (v9 || (v9 = v7) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = [MBError errorWithCode:1 format:@"Invalid domain name"];
  }

  return v10;
}

- (id)prioritizeRestoreFileWithDomain:(id)a3 relativePath:(id)a4
{
  if (a3)
  {
    [(MBCKCache *)self _executeSQL:@"UPDATE RestoreFiles SET priority = (SELECT COALESCE(MAX(priority), 0)+1 FROM RestoreFiles) WHERE domain = %@ AND relativePath = %@", a3, a4];
  }

  else
  {
    [MBError errorWithCode:1 format:@"Invalid domain name"];
  }
  v4 = ;

  return v4;
}

- (id)setRestoreState:(unint64_t)a3 forFile:(id)a4
{
  v6 = [a4 fileID];
  v7 = [(MBCKCache *)self _executeSQL:@"UPDATE RestoreFiles SET restoreState = %lu WHERE fileID = %@", a3, v6];

  return v7;
}

- (id)setRestoreType:(int)a3 forFile:(id)a4
{
  v5 = a3;
  v6 = [a4 fileID];
  v7 = [(MBCKCache *)self _executeSQL:@"UPDATE RestoreFiles SET restoreType = %lu WHERE fileID = %@", v5, v6];

  return v7;
}

- (id)hasRestoreFilesWithCallback:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000BE7F8;
  v14 = sub_1000BE808;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CB0A8;
  v6[3] = &unk_1003BDBF0;
  v7 = self;
  v9 = &v10;
  v3 = a3;
  v8 = v3;
  [(MBCKCache *)v7 _perform:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)_enumerateRestoreFilesForDomain:(id)a3 state:(unint64_t)a4 negatingStateAndErrorState:(BOOL)a5 foundRestorable:(id)a6 range:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000BE7F8;
  v31 = sub_1000BE808;
  v32 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CB368;
  v19[3] = &unk_1003BE1A8;
  v19[4] = self;
  v22 = &v27;
  v23 = a4;
  v26 = a5;
  v15 = v13;
  v20 = v15;
  v24 = location;
  v25 = length;
  v16 = v14;
  v21 = v16;
  [(MBCKCache *)self _perform:v19];
  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (id)enumeratePendingRestoreFilesForAnyDomainOrderAscendingWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState < %lu ORDER BY Files.relativePath ASC", 11];

  return v5;
}

- (id)enumeratePendingRestoreRegularFilesForAnyDomainOrderAscendingWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState < %lu AND Files.fileType = 0 ORDER BY Files.relativePath ASC", 11];

  return v5;
}

- (id)enumeratePendingRestoreFilesForDomain:(id)a3 orderAscending:(BOOL)a4 foundRestorable:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  if (v5)
  {
    v11 = @"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState < %lu AND Files.domain = %@ ORDER BY Files.relativePath ASC";
  }

  else
  {
    v11 = @"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState < %lu AND Files.domain = %@ ORDER BY Files.relativePath DESC";
  }

  v12 = [(MBCKCache *)self _enumerateObjectsOfClass:v10 callback:v8 format:v11, 11, v9];

  return v12;
}

- (id)enumeratePendingRestoreFilesForDomain:(id)a3 forType:(unint64_t)a4 orderAscending:(BOOL)a5 foundRestorable:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = objc_opt_class();
  if (v6)
  {
    v13 = @"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE Files.fileType = %lu AND Files.domain = %@ ORDER BY Files.relativePath ASC";
  }

  else
  {
    v13 = @"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE Files.fileType = %lu AND Files.domain = %@ ORDER BY Files.relativePath DESC";
  }

  v14 = [(MBCKCache *)self _enumerateObjectsOfClass:v12 callback:v10 format:v13, a4, v11];

  return v14;
}

- (id)enumeratePendingRestoreFilesForDomain:(id)a3 excludingType:(unint64_t)a4 foundRestorable:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v8 format:@"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE Files.fileType != %lu AND Files.domain = %@ ORDER BY Files.relativePath", a4, v9];

  return v10;
}

- (id)fetchRestorableFileForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBCKCache fetchRestorableFileForPath:error:]", "MBCKCache.m", 2464, "absolutePath");
  }

  v7 = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000BE7F8;
  v22 = sub_1000BE808;
  v23 = 0;
  v8 = objc_opt_class();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CB9C0;
  v15[3] = &unk_1003BE1D0;
  v17 = &v18;
  v9 = v7;
  v16 = v9;
  v10 = [(MBCKCache *)self _enumerateObjectsOfClass:v8 callback:v15 format:@"SELECT Files.file FROM RestoreFiles JOIN Files ON Files.fileID = RestoreFiles.fileID WHERE absolutePath = %@", v9];
  v11 = v10;
  if (a4)
  {
    v12 = v10;
    *a4 = v11;
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

- (unint64_t)fetchRestoreFileStateForFileID:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000BE7F8;
  v17 = sub_1000BE808;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CBB7C;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v13;
  v5 = a3;
  v10 = v5;
  v12 = &v19;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v14[5];
  }

  v6 = v20[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)enumeratePendingRestorableDomainsWithCallback:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCache *)self _enumerateObjectsOfClass:objc_opt_class() callback:v4 format:@"SELECT DISTINCT(Files.domain) FROM RestoreFiles JOIN Files on Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState < %lu", 11];

  return v5;
}

- (id)setDomainRestoreState:(unint64_t)a3 forDomain:(id)a4
{
  v6 = a4;
  v7 = [(MBCKCache *)self _executeSQL:@"UPDATE RestoreDomains SET state = %lu WHERE domain = %@", a3, v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(MBCKCache *)self _executeSQL:@"INSERT OR IGNORE INTO RestoreDomains (state, domain) VALUES (%lu, %@)", a3, v6];
  }

  v10 = v9;

  return v10;
}

- (id)setDomainRestoreAgent:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBCKCache *)self _executeSQL:@"UPDATE RestoreDomains SET agent = %@ WHERE domain = %@", v6, v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(MBCKCache *)self _executeSQL:@"INSERT OR IGNORE INTO RestoreDomains (agent, domain, state) VALUES (%@, %@, %lu)", v6, v7, 1];
  }

  v11 = v10;

  return v11;
}

- (BOOL)domainShouldRestoreToSafeHarbor:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000BE7F8;
  v22 = sub_1000BE808;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CC07C;
  v9[3] = &unk_1003BDFC8;
  v10 = self;
  v12 = &v18;
  v5 = a3;
  v11 = v5;
  v13 = &v14;
  [(MBCKCache *)v10 _perform:v9];
  if (a4)
  {
    v6 = v19[5];
    if (v6)
    {
      *a4 = v6;
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

- (id)fetchDomainRestoreStateForDomain:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CC2C4;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)fetchPendingRestoreSizeForDomain:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CC564;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)fetchRestoreSizeForDomain:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000BE7F8;
  v20 = sub_1000BE808;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CC7F4;
  v12[3] = &unk_1003BE018;
  v12[4] = self;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(MBCKCache *)self _perform:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (unint64_t)fetchRestoreStateForDeviceUUID:(id)a3 snapshotUUID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000BE7F8;
  v23 = sub_1000BE808;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CCAC0;
  v14[3] = &unk_1003BD5B8;
  v14[4] = self;
  v17 = &v19;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v18 = &v25;
  [(MBCKCache *)self _perform:v14];
  if (a5)
  {
    *a5 = v20[5];
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)clearAllRestoreData
{
  v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Restores"];;
  if (!v3)
  {
    v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM RestoreFiles"];;
    if (!v3)
    {
      v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM RestoreDomains"];;
    }
  }

  return v3;
}

- (BOOL)removeAllScannedDomains:(id *)a3
{
  v4 = [(MBCKCache *)self _executeSQL:@"DELETE FROM ScannedDomains"];
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = v4 == 0;

  return v5;
}

- (unint64_t)sizeOfScannedDomain:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000BE7F8;
  v17 = sub_1000BE808;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CCE34;
  v8[3] = &unk_1003BDFC8;
  v9 = self;
  v11 = &v13;
  v5 = a3;
  v10 = v5;
  v12 = &v19;
  [(MBCKCache *)v9 _perform:v8];
  if (a4)
  {
    *a4 = v14[5];
  }

  v6 = v20[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)domainNamesForRestoreFailures:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000BE7F8;
  v16 = sub_1000BE808;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CD088;
  v8[3] = &unk_1003BE1F8;
  v9 = self;
  v11 = &v12;
  v4 = objc_alloc_init(NSMutableSet);
  v10 = v4;
  [(MBCKCache *)v9 _perform:v8];
  v5 = v13[5];
  if (v5)
  {
    v6 = 0;
    if (a3)
    {
      *a3 = v5;
    }
  }

  else
  {
    v6 = [v4 allObjects];
  }

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (unint64_t)sizeOfPendingRestore:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000BE7F8;
  v17 = sub_1000BE808;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD2F4;
  v7[3] = &unk_1003BE220;
  v7[4] = self;
  v7[5] = &v13;
  v7[6] = v8;
  v7[7] = &v9;
  [(MBCKCache *)self _perform:v7];
  if (a3)
  {
    v4 = v14[5];
    if (v4)
    {
      *a3 = v4;
    }
  }

  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

- (id)dependentDomainsForApp:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKCache *)self _fetchObjectOfClass:objc_opt_class() error:a4 format:@"SELECT dependentDomains from RestoreApps where domain = %@", v6];

  v8 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:0];
  v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];

  return v9;
}

- (id)addDependentDomains:(id)a3 forApp:(id)a4
{
  v6 = a4;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v8 = [(MBCKCache *)self _executeSQL:@"INSERT OR REPLACE INTO RestoreApps (domain, dependentDomains) VALUES (%@, %@)", v6, v7];

  return v8;
}

- (id)fetchDomainsWithTopNFileCounts:(unint64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000BE7F8;
  v18 = sub_1000BE808;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CD6CC;
  v9[3] = &unk_1003BDF28;
  v10 = self;
  v12 = &v14;
  v13 = a3;
  v5 = objc_opt_new();
  v11 = v5;
  [(MBCKCache *)v10 _perform:v9];
  v6 = v15[5];
  if (v6)
  {
    v7 = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  else
  {
    v7 = v5;
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)fetchDomainsWithTopNSizes:(unint64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000BE7F8;
  v18 = sub_1000BE808;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CD978;
  v9[3] = &unk_1003BDF28;
  v10 = self;
  v12 = &v14;
  v13 = a3;
  v5 = objc_opt_new();
  v11 = v5;
  [(MBCKCache *)v10 _perform:v9];
  v6 = v15[5];
  if (v6)
  {
    v7 = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  else
  {
    v7 = v5;
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)removeAllOrphanedItemsForSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 snapshotID];
  v6 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Files WHERE manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots) AND snapshotID != %@)", v5];

  if (!v6)
  {
    v7 = [v4 snapshotID];
    v6 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots) AND snapshotID != %@", v7];
  }

  v8 = v6;

  return v8;
}

- (id)removeAllOrphanedItems
{
  v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Files WHERE manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots))"];
  if (!v3)
  {
    v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Files WHERE manifestID NOT IN (SELECT manifestID FROM Manifests)"];
    if (!v3)
    {
      v3 = [(MBCKCache *)self _executeSQL:@"DELETE FROM Manifests WHERE snapshotID NOT IN (SELECT snapshotID FROM Snapshots)"];
    }
  }

  v4 = v3;

  return v4;
}

@end