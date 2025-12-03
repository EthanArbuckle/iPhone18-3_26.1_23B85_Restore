@interface MBCKManifest
+ (MBCKManifest)manifestWithSnapshot:(id)snapshot domainName:(id)name count:(unint64_t)count cache:(id)cache;
+ (MBCKManifest)manifestWithSnapshot:(id)snapshot manifestID:(id)d count:(unint64_t)count cache:(id)cache;
+ (id)domainHmac:(id)hmac key:(id)key;
- (BOOL)deleteSavedFilesWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)fetchFilesWithOperationTracker:(id)tracker progress:(id)progress error:(id *)error;
- (BOOL)queueUploadOfFileChange:(id)change batchSave:(id)save engine:(id)engine skipped:(BOOL *)skipped error:(id *)error;
- (MBCKDevice)device;
- (MBCKManifest)initWithCoder:(id)coder;
- (MBCKManifest)initWithDictionary:(id)dictionary cache:(id)cache;
- (MBCKManifest)initWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot;
- (MBCKManifest)initWithSnapshot:(id)snapshot domainName:(id)name manifestID:(id)d count:(unint64_t)count cache:(id)cache;
- (MBCKSnapshot)snapshot;
- (NSMutableDictionary)filesInFlightByID;
- (NSSet)fileRecordIDs;
- (NSSet)placeholderFileRecordIDs;
- (NSString)manifestID;
- (NSString)snapshotID;
- (id)_manifestRecordIDsForManifestPageCount:(unint64_t)count;
- (id)_manifestRecordWithFiles:(id)files placeholderFiles:(id)placeholderFiles manifestIndex:(unint64_t)index;
- (id)_recordIDStringForManifestAtIndex:(unint64_t)index;
- (id)baseRecordIDString;
- (id)description;
- (void)_queryManifestWithOperationTracker:(id)tracker progress:(id)progress recordName:(id)name cursor:(id)cursor completion:(id)completion;
- (void)_reportProgressOfSuccessfullyFetchedManifestPageRecord:(id)record referenceFetchProgress:(id)progress;
- (void)addSavesWithBatchSave:(id)save completion:(id)completion;
- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)deletePendingCloudFilesWithBatchDelete:(id)delete completion:(id)completion;
- (void)deletePendingManifestPagesWithBatchDelete:(id)delete completion:(id)completion;
- (void)deleteSavedFilesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)didSaveAssetsForRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
- (void)fetchFilesWithOperationTracker:(id)tracker progress:(id)progress completion:(id)completion;
- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion;
- (void)record:(id)record madeProgress:(double)progress;
- (void)recordWasSaved:(id)saved withError:(id)error;
- (void)refreshWithRecord:(id)record;
- (void)saveToCacheWithCompletion:(id)completion;
- (void)setManifestID:(id)d;
- (void)updateFromServerWithBatchFetch:(id)fetch referenceFetchProgress:(id)progress manifestCompletion:(id)completion;
@end

@implementation MBCKManifest

+ (MBCKManifest)manifestWithSnapshot:(id)snapshot domainName:(id)name count:(unint64_t)count cache:(id)cache
{
  cacheCopy = cache;
  nameCopy = name;
  snapshotCopy = snapshot;
  v12 = [[MBCKManifest alloc] initWithSnapshot:snapshotCopy domainName:nameCopy manifestID:0 count:count cache:cacheCopy];

  return v12;
}

+ (MBCKManifest)manifestWithSnapshot:(id)snapshot manifestID:(id)d count:(unint64_t)count cache:(id)cache
{
  cacheCopy = cache;
  dCopy = d;
  snapshotCopy = snapshot;
  v12 = [[MBCKManifest alloc] initWithSnapshot:snapshotCopy domainName:0 manifestID:dCopy count:count cache:cacheCopy];

  return v12;
}

+ (id)domainHmac:(id)hmac key:(id)key
{
  hmacCopy = hmac;
  keyCopy = key;
  if (!keyCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MBCKManifest.m" lineNumber:58 description:@"No key specified to domainHmac"];
  }

  v9 = [MBDigestSHA1 sha1HmacForString:hmacCopy key:keyCopy];
  v10 = [v9 base64EncodedStringWithOptions:0];

  return v10;
}

- (MBCKManifest)initWithSnapshot:(id)snapshot domainName:(id)name manifestID:(id)d count:(unint64_t)count cache:(id)cache
{
  snapshotCopy = snapshot;
  nameCopy = name;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = MBCKManifest;
  v15 = [(MBCKModel *)&v25 initWithRecord:0 cache:cache];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_snapshot, snapshotCopy);
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    v16->_manifestCount = countCopy;
    [(MBCKManifest *)v16 setManifestID:dCopy];
    objc_storeStrong(&v16->_domainName, name);
    if (v16->_domainName)
    {
      domainName = [(MBCKManifest *)v16 domainName];
      device = [snapshotCopy device];
      hmacKey = [device hmacKey];
      v21 = [MBCKManifest domainHmac:domainName key:hmacKey];
      domainHmac = v16->_domainHmac;
      v16->_domainHmac = v21;

      domainName = v16->_domainName;
    }

    else
    {
      domainName = 0;
    }

    v16->_isAppDomain = [MBDomain isAppName:domainName];
    [snapshotCopy addManifest:v16];
  }

  return v16;
}

- (MBCKManifest)initWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = MBCKManifest;
  v9 = [(MBCKModel *)&v12 initWithRecord:record cache:cache];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_snapshot, snapshotCopy);
    v10->_manifestCount = 1;
  }

  return v10;
}

- (id)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = MBCKManifest;
  v4 = [(MBCKManifest *)&v8 description];
  manifestID = [(MBCKManifest *)self manifestID];
  v6 = [v3 initWithFormat:@"%@ (%@)", v4, manifestID];

  return v6;
}

- (void)updateFromServerWithBatchFetch:(id)fetch referenceFetchProgress:(id)progress manifestCompletion:(id)completion
{
  fetchCopy = fetch;
  progressCopy = progress;
  completionCopy = completion;
  if (!fetchCopy)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 94, "batchFetch");
  }

  v11 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 95, "manifestCompletion");
  }

  if (progressCopy)
  {
    manifestCount = [(MBCKManifest *)self manifestCount];
    if (!manifestCount)
    {
      __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 98, "numManifestPages != 0");
    }
  }

  else
  {
    manifestCount = 1;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(MBCKManifest *)self _manifestRecordIDsForManifestPageCount:manifestCount];
  firstObject = [v14 firstObject];
  recordName = [firstObject recordName];

  if (!recordName)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 103, "firstRecordName");
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F4BB0;
  v22[3] = &unk_1003BE790;
  v23 = recordName;
  selfCopy = self;
  v17 = progressCopy;
  v25 = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F4C3C;
  v20[3] = &unk_1003BE7B8;
  v20[4] = self;
  v18 = v11;
  v21 = v18;
  v19 = recordName;
  [fetchCopy fetchRecordsWithIDs:v14 progress:v22 completion:v20];

  objc_autoreleasePoolPop(v13);
}

- (id)_manifestRecordIDsForManifestPageCount:(unint64_t)count
{
  v5 = [MBCKDatabaseManager zoneIDOfType:[(MBCKManifest *)self recordZone]];
  v6 = +[NSMutableArray array];
  if (count)
  {
    v7 = 0;
    do
    {
      v8 = [(MBCKManifest *)self _recordIDStringForManifestAtIndex:v7];
      v9 = [[CKRecordID alloc] initWithRecordName:v8 zoneID:v5];
      [v6 addObject:v9];

      ++v7;
    }

    while (count != v7);
  }

  return v6;
}

- (void)_reportProgressOfSuccessfullyFetchedManifestPageRecord:(id)record referenceFetchProgress:(id)progress
{
  if (progress)
  {
    progressCopy = progress;
    recordCopy = record;
    v9 = [recordCopy objectForKeyedSubscript:@"files"];
    v8 = [recordCopy objectForKeyedSubscript:@"placeholderFiles"];

    progressCopy[2](progressCopy, self, v9, v8);
  }
}

- (MBCKManifest)initWithDictionary:(id)dictionary cache:(id)cache
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = MBCKManifest;
  v7 = [(MBCKModel *)&v21 initWithRecord:0 cache:cache];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"manifestID"];
    [(MBCKManifest *)v7 setManifestID:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"snapshotID"];
    snapshotID = v7->_snapshotID;
    v7->_snapshotID = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"snapshot"];
    objc_storeWeak(&v7->_snapshot, v11);
    v12 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    domainName = v7->_domainName;
    v7->_domainName = v12;

    if (v7->_domainName)
    {
      domainName = [(MBCKManifest *)v7 domainName];
      device = [v11 device];
      hmacKey = [device hmacKey];
      v17 = [MBCKManifest domainHmac:domainName key:hmacKey];
      domainHmac = v7->_domainHmac;
      v7->_domainHmac = v17;

      v19 = v7->_domainName;
    }

    else
    {
      v19 = 0;
    }

    v7->_isAppDomain = [MBDomain isAppName:v19];
  }

  return v7;
}

- (NSString)manifestID
{
  manifestID = self->_manifestID;
  if (!manifestID)
  {
    snapshotID = [(MBCKManifest *)self snapshotID];
    if (!snapshotID)
    {
      __assert_rtn("[MBCKManifest manifestID]", "MBCKManifest.m", 161, "snapshotID && Manifest is missing a snapshot ID");
    }

    v5 = snapshotID;
    domainHmac = [(MBCKManifest *)self domainHmac];
    if (!domainHmac)
    {
      __assert_rtn("[MBCKManifest manifestID]", "MBCKManifest.m", 163, "domainHmac && Manifest is missing a domain hash");
    }

    v7 = domainHmac;
    v8 = [[NSString alloc] initWithFormat:@"%@:%@", v5, domainHmac];
    v9 = self->_manifestID;
    self->_manifestID = v8;

    manifestID = self->_manifestID;
  }

  return manifestID;
}

- (void)setManifestID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"M:"])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"M:", "length")}];
  }

  else
  {
    v4 = dCopy;
  }

  manifestID = self->_manifestID;
  self->_manifestID = v4;
}

- (NSString)snapshotID
{
  snapshotID = self->_snapshotID;
  if (snapshotID)
  {
    snapshotID = snapshotID;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_snapshot);
    snapshotID = [WeakRetained snapshotID];
  }

  return snapshotID;
}

- (MBCKDevice)device
{
  snapshot = [(MBCKManifest *)self snapshot];
  device = [snapshot device];

  return device;
}

- (NSMutableDictionary)filesInFlightByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  filesInFlightByID = selfCopy->_filesInFlightByID;
  if (!filesInFlightByID)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_filesInFlightByID;
    selfCopy->_filesInFlightByID = v4;

    filesInFlightByID = selfCopy->_filesInFlightByID;
  }

  v6 = filesInFlightByID;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSSet)fileRecordIDs
{
  v3 = objc_opt_new();
  cache = [(MBCKModel *)self cache];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F5454;
  v8[3] = &unk_1003BD658;
  v5 = v3;
  v9 = v5;
  v6 = [cache enumerateFilesForManifest:self foundFile:v8];

  return v5;
}

- (NSSet)placeholderFileRecordIDs
{
  v3 = objc_opt_new();
  cache = [(MBCKModel *)self cache];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F55C0;
  v8[3] = &unk_1003BD658;
  v5 = v3;
  v9 = v5;
  v6 = [cache enumerateFilesForManifest:self foundFile:v8];

  return v5;
}

- (BOOL)queueUploadOfFileChange:(id)change batchSave:(id)save engine:(id)engine skipped:(BOOL *)skipped error:(id *)error
{
  changeCopy = change;
  saveCopy = save;
  engineCopy = engine;
  if (!saveCopy)
  {
    __assert_rtn("[MBCKManifest queueUploadOfFileChange:batchSave:engine:skipped:error:]", "MBCKManifest.m", 224, "batchSave");
  }

  v15 = engineCopy;
  v16 = [MBCKFile fileWithFileChange:changeCopy manifest:self];
  if (v16)
  {
    serviceAccount = [v15 serviceAccount];
    device = [(MBCKManifest *)self device];
    v19 = [v16 refreshFromFilesystemWithAccount:serviceAccount device:device error:error];

    if (v19)
    {
      snapshot = [(MBCKManifest *)self snapshot];
      if (!snapshot)
      {
        __assert_rtn("[MBCKManifest queueUploadOfFileChange:batchSave:engine:skipped:error:]", "MBCKManifest.m", 236, "snapshot");
      }

      v20 = [v16 prepareForUploadWithEngine:v15 error:error];
      if (v20 != 2)
      {
        v30 = v20;
        v31 = v20 == 1;
        v32 = MBGetDefaultLog();
        v24 = v32;
        if (!v31)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            recordIDString = [v16 recordIDString];
            relativePath = [v16 relativePath];
            v38 = relativePath;
            if (error)
            {
              v39 = *error;
            }

            else
            {
              v39 = 0;
            }

            *buf = 138544386;
            v115 = recordIDString;
            v116 = 2112;
            v117 = v16;
            v118 = 2112;
            v119 = relativePath;
            v120 = 1024;
            *v121 = v30;
            *&v121[4] = 2112;
            *&v121[6] = v39;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to prepare file %{public}@ (%@, %@): %d, %@", buf, 0x30u);

            recordIDString2 = [v16 recordIDString];
            relativePath2 = [v16 relativePath];
            if (error)
            {
              v73 = *error;
            }

            _MBLog();
          }

          [v16 cleanupAfterUpload];
          LOBYTE(error) = 0;
          goto LABEL_66;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          recordIDString3 = [v16 recordIDString];
          relativePath3 = [v16 relativePath];
          *buf = 138543874;
          v115 = recordIDString3;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = relativePath3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ (%@, %@)", buf, 0x20u);

          recordIDString4 = [v16 recordIDString];
          relativePath4 = [v16 relativePath];
          _MBLog();
        }

        goto LABEL_16;
      }

      cache = [(MBCKModel *)self cache];
      fileID = [v16 fileID];
      v23 = [cache fetchFileFromFileID:fileID error:error];

      if (v23)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          recordIDString5 = [v16 recordIDString];
          relativePath5 = [v16 relativePath];
          *buf = 138543874;
          v115 = recordIDString5;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = relativePath5;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skipping already uploaded file %{public}@ (%@, %@)", buf, 0x20u);

          recordIDString6 = [v16 recordIDString];
          relativePath6 = [v16 relativePath];
          _MBLog();
        }

LABEL_16:

        [v16 cleanupAfterUpload];
        LOBYTE(error) = 1;
        if (skipped)
        {
          *skipped = 1;
        }

        goto LABEL_66;
      }

      recordID = [v16 recordID];
      filesInFlightByID = [(MBCKManifest *)self filesInFlightByID];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v41 = [filesInFlightByID objectForKeyedSubscript:recordID];

      if (v41)
      {
        objc_sync_exit(selfCopy);

        error = MBGetDefaultLog();
        if (os_log_type_enabled(error, OS_LOG_TYPE_INFO))
        {
          recordIDString7 = [v16 recordIDString];
          relativePath7 = [v16 relativePath];
          *buf = 138543874;
          v115 = recordIDString7;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = relativePath7;
          _os_log_impl(&_mh_execute_header, error, OS_LOG_TYPE_INFO, "Skipping already in-flight file %{public}@ (%@, %@)", buf, 0x20u);

          recordIDString8 = [v16 recordIDString];
          relativePath8 = [v16 relativePath];
          _MBLog();
        }

        [v16 cleanupAfterUpload];
        LOBYTE(error) = 1;
        if (skipped)
        {
          *skipped = 1;
        }

        goto LABEL_60;
      }

      [filesInFlightByID setObject:v16 forKeyedSubscript:recordID];
      objc_sync_exit(selfCopy);
      v104 = selfCopy;

      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        domainName = [(MBCKManifest *)selfCopy domainName];
        relativePath9 = [v16 relativePath];
        recordIDString9 = [v16 recordIDString];
        *buf = 138413314;
        v115 = domainName;
        v116 = 2112;
        v117 = relativePath9;
        v118 = 2114;
        v119 = recordIDString9;
        v120 = 2048;
        *v121 = [v16 inode];
        *&v121[8] = 1024;
        *&v121[10] = [v16 isDataless];
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Uploading file %@:%@ as %{public}@ (inode:%llu) (isDataless:%d)", buf, 0x30u);

        domainName2 = [(MBCKManifest *)v104 domainName];
        relativePath10 = [v16 relativePath];
        recordIDString10 = [v16 recordIDString];
        inode = [v16 inode];
        isDataless = [v16 isDataless];
        v87 = relativePath10;
        v90 = recordIDString10;
        v85 = domainName2;
        _MBLog();
      }

      recordRepresentation = [v16 recordRepresentation];
      if (([v16 deleted] & 1) == 0)
      {
        if (MBIsInternalInstall())
        {
          aggregateSize = [v16 aggregateSize];
          v54 = [v16 sizeFromFileIDWithDefaultValue:-1];
          if (v54 != -1 && v54 != aggregateSize && dword_100421710 <= 9 && atomic_fetch_add_explicit(&dword_100421710, 1u, memory_order_relaxed) <= 9)
          {
            v55 = MBGetDefaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              fileID2 = [v16 fileID];
              *buf = 134218242;
              v115 = aggregateSize;
              v116 = 2112;
              v117 = fileID2;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "The aggregate size (%llu) doesn't match the size for fileID:%@", buf, 0x16u);

              [v16 fileID];
              v87 = v85 = aggregateSize;
              _MBLog();
            }
          }
        }
      }

      domainManager = [v15 domainManager];
      if (!domainManager)
      {
        __assert_rtn("[MBCKManifest queueUploadOfFileChange:batchSave:engine:skipped:error:]", "MBCKManifest.m", 291, "domainManager");
      }

      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_1000F6648;
      v109[3] = &unk_1003BE7E0;
      v57 = v15;
      v110 = v57;
      v58 = v16;
      v111 = v58;
      v112 = v104;
      v113 = changeCopy;
      [saveCopy saveRecord:recordRepresentation delegate:v104 completion:v109];
      if (([v58 deleted] & 1) != 0 || !objc_msgSend(v58, "hadTemporarySQLiteArchive") || !objc_msgSend(v58, "isSQLiteFile"))
      {
        LOBYTE(error) = 1;
        goto LABEL_59;
      }

      v97 = +[NSFileManager defaultManager];
      domain = [v58 domain];
      name = [domain name];

      relativePath11 = [v58 relativePath];
      v99 = [relativePath11 stringByAppendingString:@"-wal"];

      absolutePath = [v58 absolutePath];
      v96 = [absolutePath stringByAppendingString:@"-wal"];

      cache2 = [(MBCKModel *)v104 cache];
      v100 = [cache2 lastBackedUpFileWithDomainName:name relativePath:v99 error:0];

      if (!v100 || ([v100 deleted] & 1) != 0 || !objc_msgSend(v97, "fileExistsAtPath:", v96))
      {
LABEL_48:
        relativePath12 = [v58 relativePath];
        v102 = [relativePath12 stringByAppendingString:@"-shm"];

        absolutePath2 = [v58 absolutePath];
        oslog = [absolutePath2 stringByAppendingString:@"-shm"];

        cache3 = [(MBCKModel *)v104 cache];
        absolutePath7 = [cache3 lastBackedUpFileWithDomainName:name relativePath:v102 error:0];

        if (!absolutePath7 || ([absolutePath7 deleted] & 1) != 0 || !objc_msgSend(v97, "fileExistsAtPath:", oslog))
        {
          goto LABEL_55;
        }

        v105 = objc_alloc_init(MBCKFileChange);
        domain2 = [v58 domain];
        [(MBCKFileChange *)v105 setDomain:domain2];

        [(MBCKFileChange *)v105 setRelativePath:v102];
        [(MBCKFileChange *)v105 setAbsolutePath:oslog];
        [(MBCKFileChange *)v105 setChangeType:3];
        [(MBCKFileChange *)v105 setShouldCopy:0];
        v70 = MBGetDefaultLog();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v115 = oslog;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Adding deletion marker for %@", buf, 0xCu);
          _MBLog();
        }

        if ([snapshot addFileChange:v105 batchSave:saveCopy engine:v57 skipped:0 error:error])
        {

LABEL_55:
          LOBYTE(error) = 1;
LABEL_56:

LABEL_57:
LABEL_59:

LABEL_60:
LABEL_66:

          goto LABEL_67;
        }

        v78 = MBGetDefaultLog();
        v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
        if (error)
        {
          if (v79)
          {
            absolutePath3 = [v58 absolutePath];
            v81 = *error;
            *buf = 138412546;
            v115 = absolutePath3;
            v116 = 2112;
            v117 = v81;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the SHM file of checkpointed SQLite db at absolute path %@ - %@", buf, 0x16u);

            absolutePath4 = [v58 absolutePath];
            v89 = *error;
            _MBLog();
LABEL_81:
          }
        }

        else if (v79)
        {
          absolutePath5 = [v58 absolutePath];
          *buf = 138412290;
          v115 = absolutePath5;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the SHM file of checkpointed SQLite db at absolute path %@", buf, 0xCu);

          absolutePath4 = [v58 absolutePath];
          _MBLog();
          goto LABEL_81;
        }

        goto LABEL_83;
      }

      v102 = objc_alloc_init(MBCKFileChange);
      domain3 = [v58 domain];
      [(MBCKFileChange *)v102 setDomain:domain3];

      [(MBCKFileChange *)v102 setRelativePath:v99];
      [(MBCKFileChange *)v102 setAbsolutePath:v96];
      [(MBCKFileChange *)v102 setChangeType:3];
      [(MBCKFileChange *)v102 setShouldCopy:0];
      v64 = MBGetDefaultLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v115 = v96;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Adding deletion marker for %@", buf, 0xCu);
        v86 = v96;
        _MBLog();
      }

      if ([snapshot addFileChange:v102 batchSave:saveCopy engine:v57 skipped:0 error:error])
      {

        goto LABEL_48;
      }

      oslog = MBGetDefaultLog();
      v75 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (error)
      {
        if (v75)
        {
          absolutePath6 = [v58 absolutePath];
          v77 = *error;
          *buf = 138412546;
          v115 = absolutePath6;
          v116 = 2112;
          v117 = v77;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the WAL file of checkpointed SQLite db at absolute path %@ - %@", buf, 0x16u);

          absolutePath7 = [v58 absolutePath];
          v88 = *error;
          _MBLog();
LABEL_83:
          LOBYTE(error) = 0;
          goto LABEL_56;
        }
      }

      else if (v75)
      {
        absolutePath8 = [v58 absolutePath];
        *buf = 138412290;
        v115 = absolutePath8;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the WAL file of checkpointed SQLite db at absolute path %@", buf, 0xCu);

        absolutePath7 = [v58 absolutePath];
        _MBLog();
        goto LABEL_83;
      }

      LOBYTE(error) = 0;
      goto LABEL_57;
    }

    goto LABEL_12;
  }

  if (error)
  {
    relativePath13 = [changeCopy relativePath];
    domainName3 = [(MBCKManifest *)self domainName];
    *error = [MBError errorWithCode:100 path:relativePath13 format:@"Failed to add file change to manifest: %@ : %@", domainName3, changeCopy];

LABEL_12:
    LOBYTE(error) = 0;
  }

LABEL_67:

  return error;
}

- (void)_queryManifestWithOperationTracker:(id)tracker progress:(id)progress recordName:(id)name cursor:(id)cursor completion:(id)completion
{
  trackerCopy = tracker;
  progressCopy = progress;
  nameCopy = name;
  cursorCopy = cursor;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManifest _queryManifestWithOperationTracker:progress:recordName:cursor:completion:]", "MBCKManifest.m", 430, "tracker");
  }

  v17 = completionCopy;
  if (cursorCopy)
  {
    v18 = [[CKQueryOperation alloc] initWithCursor:cursorCopy];
    v19 = MBGetDefaultLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v38 = progressCopy;
    v39 = v17;
    domainName = [(MBCKManifest *)self domainName];
    operationID = [v18 operationID];
    *buf = 138412802;
    v49 = domainName;
    v50 = 2112;
    v51 = nameCopy;
    v52 = 2114;
    v53 = operationID;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Querying: %@ %@ - continuing - operationID: %{public}@", buf, 0x20u);

    domainName2 = [(MBCKManifest *)self domainName];
    operationID2 = [v18 operationID];
    _MBLog();
  }

  else
  {
    v38 = progressCopy;
    v39 = completionCopy;
    v19 = [[CKRecordID alloc] initWithRecordName:nameCopy];
    domainName2 = [NSPredicate predicateWithFormat:@"recordID==%@", v19];
    operationID2 = [[CKQuery alloc] initWithRecordType:@"PrivilegedManifestDownload" predicate:domainName2];
    v18 = [[CKQueryOperation alloc] initWithQuery:operationID2];
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      [(MBCKManifest *)self domainName];
      v25 = v37 = trackerCopy;
      operationID3 = [v18 operationID];
      *buf = 138412802;
      v49 = v25;
      v50 = 2112;
      v51 = nameCopy;
      v52 = 2114;
      v53 = operationID3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Querying: %@ %@ - operationID: %{public}@", buf, 0x20u);

      domainName3 = [(MBCKManifest *)self domainName];
      operationID4 = [v18 operationID];
      _MBLog();

      trackerCopy = v37;
    }
  }

  progressCopy = v38;
  v17 = v39;
LABEL_9:

  v28 = +[MBCKFile keysToFetchWithoutContents];
  [v18 setDesiredKeys:v28];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000F74F4;
  v46[3] = &unk_1003BE808;
  v46[4] = self;
  v29 = progressCopy;
  v47 = v29;
  [v18 setRecordFetchedBlock:v46];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000F7594;
  v40[3] = &unk_1003BE830;
  v30 = nameCopy;
  v41 = v30;
  v31 = v17;
  v44 = v31;
  selfCopy = self;
  v32 = trackerCopy;
  v43 = v32;
  v33 = v29;
  v45 = v33;
  [v18 setQueryCompletionBlock:v40];
  ckOperationPolicy = [v32 ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKManifest _queryManifestWithOperationTracker:progress:recordName:cursor:completion:]", "MBCKManifest.m", 462, "policy");
  }

  v35 = ckOperationPolicy;
  [v32 addDatabaseOperation:v18 policy:ckOperationPolicy];
}

- (void)fetchFilesWithOperationTracker:(id)tracker progress:(id)progress completion:(id)completion
{
  trackerCopy = tracker;
  progressCopy = progress;
  completionCopy = completion;
  v11 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000F7960;
  v28 = sub_1000F7970;
  v29 = 0;
  v20 = completionCopy;
  while (v11 < [(MBCKManifest *)self manifestCount])
  {
    retryStrategy = [(MBCKModel *)self retryStrategy];
    [retryStrategy reset];

    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v25[5];
      v25[5] = 0;

      v15 = dispatch_semaphore_create(0);
      v16 = [(MBCKManifest *)self _recordIDStringForManifestAtIndex:v11];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000F7978;
      v21[3] = &unk_1003BE858;
      v17 = v15;
      v22 = v17;
      v23 = &v24;
      [(MBCKManifest *)self _queryManifestWithOperationTracker:trackerCopy progress:progressCopy recordName:v16 cursor:0 completion:v21];
      MBSemaphoreWaitForever();

      objc_autoreleasePoolPop(v13);
      if (!v25[5])
      {
        break;
      }

      retryStrategy2 = [(MBCKModel *)self retryStrategy];
      v19 = [retryStrategy2 shouldRetryAfterError:v25[5]];
    }

    while ((v19 & 1) != 0);
    ++v11;
    completionCopy = v20;
  }

  completionCopy[2](completionCopy, v25[5]);
  _Block_object_dispose(&v24, 8);
}

- (BOOL)fetchFilesWithOperationTracker:(id)tracker progress:(id)progress error:(id *)error
{
  trackerCopy = tracker;
  progressCopy = progress;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000F7960;
  v20 = sub_1000F7970;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F7B34;
  v13[3] = &unk_1003BC160;
  v15 = &v16;
  v10 = dispatch_semaphore_create(0);
  v14 = v10;
  [(MBCKManifest *)self fetchFilesWithOperationTracker:trackerCopy progress:progressCopy completion:v13];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v17[5];
  }

  v11 = v17[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)deleteSavedFilesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManifest deleteSavedFilesWithOperationTracker:completion:]", "MBCKManifest.m", 497, "tracker");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKManifest deleteSavedFilesWithOperationTracker:completion:]", "MBCKManifest.m", 498, "completion");
  }

  v9 = objc_opt_new();
  cache = [(MBCKModel *)self cache];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F7DDC;
  v23[3] = &unk_1003BD658;
  v11 = v9;
  v24 = v11;
  v12 = [cache enumerateFilesForManifest:self foundFile:v23];

  if ([v11 count])
  {
    startBatchDelete = [trackerCopy startBatchDelete];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [startBatchDelete deleteRecordWithID:*(*(&v19 + 1) + 8 * i) completion:{0, v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v16);
    }

    [trackerCopy finishBatchDelete:startBatchDelete completion:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (BOOL)deleteSavedFilesWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000F7960;
  v17 = sub_1000F7970;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F7F78;
  v10[3] = &unk_1003BC160;
  v12 = &v13;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(MBCKManifest *)self deleteSavedFilesWithOperationTracker:trackerCopy completion:v10];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)saveToCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  cache = [(MBCKModel *)self cache];
  snapshot = [(MBCKManifest *)self snapshot];
  v7 = [cache addManifest:self toPendingSnapshot:snapshot];

  completionCopy[2](completionCopy, v7);
}

- (id)_manifestRecordWithFiles:(id)files placeholderFiles:(id)placeholderFiles manifestIndex:(unint64_t)index
{
  filesCopy = files;
  placeholderFilesCopy = placeholderFiles;
  v11 = [(MBCKManifest *)self _recordIDStringForManifestAtIndex:index];
  v12 = [CKRecordID alloc];
  v13 = [MBCKDatabaseManager zoneIDOfType:[(MBCKManifest *)self recordZone]];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  v15 = [CKRecord alloc];
  recordType = [(MBCKManifest *)self recordType];
  v17 = [v15 initWithRecordType:recordType recordID:v14];

  if (!index)
  {
    domainName = [(MBCKManifest *)self domainName];

    if (!domainName)
    {
      v37 = +[NSAssertionHandler currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"MBCKManifest.m" lineNumber:545 description:@"Manifest domain is nil!"];
    }

    domainName2 = [(MBCKManifest *)self domainName];
    v20 = [domainName2 dataUsingEncoding:4];
    encryptedValues = [v17 encryptedValues];
    [encryptedValues setObject:v20 forKeyedSubscript:@"domain"];

    domainName3 = [(MBCKManifest *)self domainName];
    [v17 setObject:domainName3 forKeyedSubscript:@"domainName"];

    dependentDomainNames = [(MBCKManifest *)self dependentDomainNames];
    v24 = [dependentDomainNames count];

    if (v24)
    {
      dependentDomainNames2 = [(MBCKManifest *)self dependentDomainNames];
      v26 = [NSKeyedArchiver archivedDataWithRootObject:dependentDomainNames2 requiringSecureCoding:1 error:0];

      encryptedValues2 = [v17 encryptedValues];
      [encryptedValues2 setObject:v26 forKeyedSubscript:@"dependentDomains"];
    }

    entitlements = [(MBCKManifest *)self entitlements];

    if (entitlements)
    {
      entitlements2 = [(MBCKManifest *)self entitlements];
      v30 = [NSKeyedArchiver archivedDataWithRootObject:entitlements2 requiringSecureCoding:1 error:0];

      [v17 setObject:v30 forKeyedSubscript:@"entitlements"];
    }

    entitlementsPath = [(MBCKManifest *)self entitlementsPath];
    [v17 setObject:entitlementsPath forKeyedSubscript:@"entitlementsPath"];

    owningBundleID = [(MBCKManifest *)self owningBundleID];
    [v17 setObject:owningBundleID forKeyedSubscript:@"owningBundleID"];
  }

  if ([filesCopy count])
  {
    v33 = [filesCopy copy];
    [v17 setObject:v33 forKeyedSubscript:@"files"];
  }

  if ([placeholderFilesCopy count])
  {
    v34 = [placeholderFilesCopy copy];
    [v17 setObject:v34 forKeyedSubscript:@"placeholderFiles"];
  }

  v35 = MBGetDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v39 = v11;
    v40 = 2048;
    v41 = [filesCopy count];
    v42 = 2048;
    v43 = [placeholderFilesCopy count];
    v44 = 2048;
    v45 = [v17 size];
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Manifest record %{public}@ has %lu regular files and %lu placeholder files (%lu bytes)", buf, 0x2Au);
    [filesCopy count];
    [placeholderFilesCopy count];
    [v17 size];
    _MBLog();
  }

  return v17;
}

- (void)deletePendingCloudFilesWithBatchDelete:(id)delete completion:(id)completion
{
  deleteCopy = delete;
  completionCopy = completion;
  v24 = deleteCopy;
  if (!deleteCopy)
  {
    __assert_rtn("[MBCKManifest deletePendingCloudFilesWithBatchDelete:completion:]", "MBCKManifest.m", 571, "batchDelete");
  }

  v8 = completionCopy;
  v9 = objc_opt_new();
  cache = [(MBCKModel *)self cache];
  manifestID = [(MBCKManifest *)self manifestID];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F8830;
  v33[3] = &unk_1003BC450;
  v12 = v9;
  v34 = v12;
  v13 = [cache enumerateCloudFilesPendingDeleteForManifestID:manifestID withFoundFileID:v33];

  if ([v12 count])
  {
    v14 = dispatch_group_create();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v12;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          dispatch_group_enter(v14);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000F88C8;
          v27[3] = &unk_1003BE880;
          v27[4] = self;
          v28 = v14;
          [v24 deleteRecordWithID:v20 completion:v27];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    if (v8)
    {
      if (qword_100421720 != -1)
      {
        dispatch_once(&qword_100421720, &stru_1003BE8A0);
      }

      v21 = qword_100421718;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F89E8;
      block[3] = &unk_1003BCB38;
      v26 = v8;
      v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_group_notify(v14, v21, v22);
    }

    v12 = v23;
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)deletePendingManifestPagesWithBatchDelete:(id)delete completion:(id)completion
{
  deleteCopy = delete;
  completionCopy = completion;
  if (!deleteCopy)
  {
    __assert_rtn("[MBCKManifest deletePendingManifestPagesWithBatchDelete:completion:]", "MBCKManifest.m", 614, "batchDelete");
  }

  v8 = completionCopy;
  manifestID = [(MBCKManifest *)self manifestID];
  cache = [(MBCKModel *)self cache];
  manifestID2 = [(MBCKManifest *)self manifestID];
  v31 = 0;
  v12 = [cache countManifestPagesForManifestID:manifestID2 error:&v31];
  v13 = v31;

  if (v13)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = manifestID;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to delete pending manifest pages for manifest %{public}@: %@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_6;
  }

  v15 = v12;
  if (!v12)
  {
LABEL_6:
    if (v8)
    {
      v8[2](v8);
    }

    goto LABEL_19;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = manifestID;
    v34 = 2048;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting previously uploaded manifests for %{public}@ (%lu pages)", buf, 0x16u);
    _MBLog();
  }

  v17 = dispatch_group_create();
  v18 = 0;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  do
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [NSString alloc];
    v21 = [NSNumber numberWithUnsignedInteger:v18];
    v22 = [v20 initWithFormat:@"%@%@:%@", @"M:", manifestID, v21];

    v23 = [[CKRecordID alloc] initWithRecordName:v22];
    dispatch_group_enter(v17);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000F8E28;
    v29[3] = &unk_1003BE8C8;
    v24 = v17;
    v30 = v24;
    [deleteCopy deleteRecordWithID:v23 completion:v29];

    objc_autoreleasePoolPop(v19);
    ++v18;
  }

  while (v15 != v18);
  if (v8)
  {
    if (qword_100421730 != -1)
    {
      dispatch_once(&qword_100421730, &stru_1003BE8E8);
    }

    v25 = qword_100421728;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8FFC;
    block[3] = &unk_1003BCB38;
    v28 = v8;
    v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_group_notify(v24, v25, v26);
  }

  v13 = 0;
LABEL_19:
}

- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManifest prepareForSaveWithOperationTracker:completion:]", "MBCKManifest.m", 663, "tracker");
  }

  v9 = completionCopy;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManifest prepareForSaveWithOperationTracker:completion:]", "MBCKManifest.m", 665, "serviceAccount");
  }

  v11 = account;
  v12 = +[MBBehaviorOptions sharedOptions];
  manifestPageSize = [v12 manifestPageSize];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  cache = [(MBCKModel *)self cache];
  manifestID = [(MBCKManifest *)self manifestID];
  v18 = [cache deleteManifestPagesForManifestID:manifestID];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F9334;
  v31[3] = &unk_1003BE910;
  v31[4] = self;
  v33 = &v35;
  v19 = v11;
  v32 = v19;
  v34 = a2;
  v20 = objc_retainBlock(v31);
  cache2 = [(MBCKModel *)self cache];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000F9594;
  v26[3] = &unk_1003BE938;
  v22 = v15;
  v27 = v22;
  v23 = v14;
  v28 = v23;
  v30 = manifestPageSize;
  v24 = v20;
  v29 = v24;
  v25 = [cache2 enumerateFilesForManifest:self foundFile:v26];

  (v24[2])(v24, v23, v22);
  self->_manifestCount = v36[3];
  v9[2](v9, 0);

  _Block_object_dispose(&v35, 8);
}

- (void)addSavesWithBatchSave:(id)save completion:(id)completion
{
  saveCopy = save;
  completionCopy = completion;
  if (!saveCopy)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 711, "batchSave");
  }

  if (!completionCopy)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 712, "completion");
  }

  v38 = completionCopy;
  ckOperationTracker = [saveCopy ckOperationTracker];
  v39 = ckOperationTracker;
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 714, "tracker");
  }

  account = [ckOperationTracker account];
  if (!account)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 716, "serviceAccount");
  }

  manifestCount = [(MBCKManifest *)self manifestCount];
  if (manifestCount)
  {
    v10 = manifestCount;
    baseRecordIDString = [(MBCKManifest *)self baseRecordIDString];
    manifestID = [(MBCKManifest *)self manifestID];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = baseRecordIDString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saving %lu manifest records for %@", buf, 0x16u);
      _MBLog();
    }

    group = dispatch_group_create();
    v12 = 0;
    v13 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v66 = sub_1000F7960;
    v67 = sub_1000F7970;
    v68 = 0;
    while (1)
    {
      v14 = objc_autoreleasePoolPush();

      cache = [(MBCKModel *)self cache];
      v58 = 0;
      v16 = [cache fetchManifestPageForManifestID:manifestID pageIndex:v13 error:&v58];
      v12 = v58;

      if (v16)
      {
        dispatch_group_enter(group);
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000F9D88;
        v55[3] = &unk_1003BE960;
        v55[4] = self;
        v57 = buf;
        v56 = group;
        [saveCopy saveRecord:v16 delegate:self completion:v55];
      }

      objc_autoreleasePoolPop(v14);
      if (!v16)
      {
        break;
      }

      if (v10 == ++v13)
      {
        v13 = v10;
        break;
      }
    }

    if (qword_100421740 != -1)
    {
      dispatch_once(&qword_100421740, &stru_1003BE980);
    }

    if (v13 == v10)
    {
      v17 = qword_100421738;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F9F14;
      block[3] = &unk_1003BE9D0;
      v48 = buf;
      v49 = v10;
      v44 = baseRecordIDString;
      v47 = v38;
      selfCopy = self;
      v46 = manifestID;
      v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_group_notify(group, v17, v18);

      v19 = v44;
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v59 = 134218498;
        v60 = v13;
        v61 = 2112;
        selfCopy3 = self;
        v63 = 2112;
        v64 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to fetch manifestPage %lu for manifest: %@ : %@", v59, 0x20u);
        _MBLog();
      }

      v22 = +[MBCKManager sharedInstance];
      v54 = 0;
      [v22 resetCacheWithAccount:account error:&v54];
      v19 = v54;

      v23 = +[MBCKManager sharedInstance];
      v53 = 0;
      v24 = [v23 openCacheWithAccount:account accessType:1 error:&v53];
      v25 = v53;

      [(MBCKModel *)self setCache:v24];
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *v59 = 134218498;
        v60 = v13;
        v61 = 2112;
        selfCopy3 = self;
        v63 = 2112;
        v64 = v12;
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Unable to fetch manifestPage: %lu for manifest: %@ : %@", v59, 0x20u);
      }

      v34 = sub_10012F338(@"Unable to fetch manifestPage: %lu for manifest: %@ : %@", v27, v28, v29, v30, v31, v32, v33, v13);

      v35 = qword_100421738;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000F9F00;
      v50[3] = &unk_1003BE9A8;
      v52 = v38;
      v12 = v34;
      v51 = v12;
      v36 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v50);
      dispatch_group_notify(group, v35, v36);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = [MBError errorWithCode:10 format:@"No manifest pages to save for %@", self];
    (v38)[2](v38, v20);
  }
}

- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManifest addSavesWithOperationTracker:completion:]", "MBCKManifest.m", 789, "tracker");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKManifest addSavesWithOperationTracker:completion:]", "MBCKManifest.m", 790, "completion");
  }

  if ([(MBCKManifest *)self manifestCount])
  {
    v9 = dispatch_group_create();
    startBatchSave = [trackerCopy startBatchSave];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_1000F7960;
    v28[4] = sub_1000F7970;
    v29 = 0;
    dispatch_group_enter(v9);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000FA4F8;
    v25[3] = &unk_1003BC160;
    v27 = v28;
    v11 = v9;
    v26 = v11;
    [(MBCKManifest *)self addSavesWithBatchSave:startBatchSave completion:v25];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_1000F7960;
    v23[4] = sub_1000F7970;
    v24 = 0;
    dispatch_group_enter(v11);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000FA558;
    v20[3] = &unk_1003BC160;
    v22 = v23;
    v12 = v11;
    v21 = v12;
    [trackerCopy finishBatchSave:startBatchSave completion:v20];
    v13 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FA5B8;
    block[3] = &unk_1003BE9F8;
    v18 = v28;
    v19 = v23;
    v17 = v8;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_group_notify(v12, v13, v14);

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v28, 8);
  }

  else
  {
    v15 = [MBError errorWithCode:10 format:@"No manifest pages to save for %@", self];
    (v8)[2](v8, v15);
  }
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  encryptedValues = [recordCopy encryptedValues];
  v6 = [encryptedValues objectForKeyedSubscript:@"domain"];

  if (!v6 || (v7 = [[NSString alloc] initWithData:v6 encoding:4]) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      recordID = [recordCopy recordID];
      *buf = 138543362;
      v43 = recordID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Found nil domain field for %{public}@", buf, 0xCu);

      recordID2 = [recordCopy recordID];
      _MBLog();
    }

    v7 = [recordCopy objectForKeyedSubscript:@"domainName"];
  }

  objc_storeStrong(&self->_domainName, v7);
  if (self->_domainName)
  {
    domainName = [(MBCKManifest *)self domainName];
    device = [(MBCKManifest *)self device];
    hmacKey = [device hmacKey];
    v13 = [MBCKManifest domainHmac:domainName key:hmacKey];
    domainHmac = self->_domainHmac;
    self->_domainHmac = v13;
  }

  encryptedValues2 = [recordCopy encryptedValues];
  v16 = [encryptedValues2 objectForKeyedSubscript:@"dependentDomains"];

  if (v16)
  {
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v17 = [NSArray arrayWithObjects:v41 count:2];
    v18 = [NSSet setWithArray:v17];
    encryptedValues3 = [recordCopy encryptedValues];
    v20 = [encryptedValues3 objectForKeyedSubscript:@"dependentDomains"];
    v39 = 0;
    v21 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v18 fromData:v20 error:&v39];
    v16 = v39;
    dependentDomainNames = self->_dependentDomainNames;
    self->_dependentDomainNames = v21;

    if (!self->_dependentDomainNames)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Couldn't unarchive dependent domain names: %@", buf, 0xCu);
        v35 = v16;
        _MBLog();
      }
    }
  }

  v24 = [recordCopy objectForKeyedSubscript:{@"owningBundleID", v35}];
  owningBundleID = self->_owningBundleID;
  self->_owningBundleID = v24;

  v26 = [recordCopy objectForKeyedSubscript:@"entitlements"];
  if (v26)
  {
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v40[5] = objc_opt_class();
    v27 = [NSArray arrayWithObjects:v40 count:6];
    v28 = [NSSet setWithArray:v27];
    v38 = v16;
    v29 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v28 fromData:v26 error:&v38];
    v30 = v38;

    [(MBCKManifest *)self setEntitlements:v29];
    entitlements = [(MBCKManifest *)self entitlements];

    if (!entitlements)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't unarchive entitlements from record data: %@", buf, 0xCu);
        v36 = v30;
        _MBLog();
      }
    }
  }

  else
  {
    v30 = v16;
  }

  v33 = [recordCopy objectForKeyedSubscript:{@"entitlementsPath", v36}];
  [(MBCKManifest *)self setEntitlementsPath:v33];

  v37.receiver = self;
  v37.super_class = MBCKManifest;
  [(MBCKModel *)&v37 refreshWithRecord:recordCopy];
}

- (id)baseRecordIDString
{
  manifestID = [(MBCKManifest *)self manifestID];
  if (!manifestID)
  {
    __assert_rtn("[MBCKManifest baseRecordIDString]", "MBCKManifest.m", 857, "manifestID && Manifest is missing a base manifest ID");
  }

  v3 = manifestID;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"M:", manifestID];

  return v4;
}

- (id)_recordIDStringForManifestAtIndex:(unint64_t)index
{
  manifestID = [(MBCKManifest *)self manifestID];
  if (!manifestID)
  {
    __assert_rtn("[MBCKManifest _recordIDStringForManifestAtIndex:]", "MBCKManifest.m", 863, "manifestID && Manifest is missing a base manifest ID");
  }

  v5 = manifestID;
  index = [[NSString alloc] initWithFormat:@"%@%@:%lu", @"M:", manifestID, index];

  return index;
}

- (void)record:(id)record madeProgress:(double)progress
{
  recordCopy = record;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recordID = [recordCopy recordID];

  if (recordID)
  {
    filesInFlightByID = [(MBCKManifest *)selfCopy filesInFlightByID];
    recordID2 = [recordCopy recordID];
    recordID = [filesInFlightByID objectForKeyedSubscript:recordID2];
  }

  objc_sync_exit(selfCopy);

  if (recordID)
  {
    snapshot = [(MBCKManifest *)selfCopy snapshot];
    progressModel = [snapshot progressModel];
    [progressModel updatingProgress:recordID forItem:progress];
  }
}

- (void)recordWasSaved:(id)saved withError:(id)error
{
  savedCopy = saved;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  filesInFlightByID = [(MBCKManifest *)selfCopy filesInFlightByID];
  recordID = [savedCopy recordID];
  [filesInFlightByID removeObjectForKey:recordID];

  objc_sync_exit(selfCopy);
}

- (void)didSaveAssetsForRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  filesInFlightByID = [(MBCKManifest *)selfCopy filesInFlightByID];
  recordID = [recordCopy recordID];
  v8 = [filesInFlightByID objectForKeyedSubscript:recordID];

  objc_sync_exit(selfCopy);
  if (v8)
  {
    fileID = [v8 fileID];
    cache = [(MBCKModel *)selfCopy cache];
    v11 = [cache setFileStateToPending:v8];

    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = fileID;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to mark %{public}@ as pending: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = fileID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Marked %{public}@ as pending", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = MBCKManifest;
  [(MBCKModel *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_manifestID forKey:@"ManifestID"];
  snapshotID = [(MBCKManifest *)self snapshotID];
  [coderCopy encodeObject:snapshotID forKey:@"ManifestSnapshotID"];

  [coderCopy encodeObject:self->_domainName forKey:@"ManifestDomainName"];
  [coderCopy encodeObject:self->_domainHmac forKey:@"ManifestDomainHMAC"];
  [coderCopy encodeInteger:self->_manifestCount forKey:@"ManifestCount"];
  [coderCopy encodeObject:self->_dependentDomainNames forKey:@"ManifestDependentDomainNames"];
  [coderCopy encodeObject:self->_entitlements forKey:@"ManifestEntitlements"];
  [coderCopy encodeObject:self->_entitlementsPath forKey:@"ManifestEntitlementsPath"];
  [coderCopy encodeObject:self->_owningBundleID forKey:@"ManifestOwningBundleID"];
  [coderCopy encodeBool:self->_isAppDomain forKey:@"ManifestIsAppDomain"];
  objc_autoreleasePoolPop(v5);
}

- (MBCKManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v29.receiver = self;
  v29.super_class = MBCKManifest;
  v6 = [(MBCKModel *)&v29 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestID"];
    manifestID = v6->_manifestID;
    v6->_manifestID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestSnapshotID"];
    snapshotID = v6->_snapshotID;
    v6->_snapshotID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestDomainName"];
    domainName = v6->_domainName;
    v6->_domainName = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestDomainHMAC"];
    domainHmac = v6->_domainHmac;
    v6->_domainHmac = v13;

    v6->_manifestCount = [coderCopy decodeIntegerForKey:@"ManifestCount"];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v31 count:2];
    v16 = [NSSet setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ManifestDependentDomainNames"];
    dependentDomainNames = v6->_dependentDomainNames;
    v6->_dependentDomainNames = v17;

    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v30[4] = objc_opt_class();
    v30[5] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v30 count:6];
    v20 = [NSSet setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"ManifestEntitlements"];
    entitlements = v6->_entitlements;
    v6->_entitlements = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestEntitlementsPath"];
    entitlementsPath = v6->_entitlementsPath;
    v6->_entitlementsPath = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestOwningBundleID"];
    owningBundleID = v6->_owningBundleID;
    v6->_owningBundleID = v25;

    v6->_isAppDomain = [coderCopy decodeBoolForKey:@"ManifestIsAppDomain"];
  }

  v27 = v6;
  objc_autoreleasePoolPop(v5);

  return v27;
}

- (MBCKSnapshot)snapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshot);

  return WeakRetained;
}

@end