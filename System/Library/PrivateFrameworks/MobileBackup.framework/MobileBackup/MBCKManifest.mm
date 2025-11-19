@interface MBCKManifest
+ (MBCKManifest)manifestWithSnapshot:(id)a3 domainName:(id)a4 count:(unint64_t)a5 cache:(id)a6;
+ (MBCKManifest)manifestWithSnapshot:(id)a3 manifestID:(id)a4 count:(unint64_t)a5 cache:(id)a6;
+ (id)domainHmac:(id)a3 key:(id)a4;
- (BOOL)deleteSavedFilesWithOperationTracker:(id)a3 error:(id *)a4;
- (BOOL)fetchFilesWithOperationTracker:(id)a3 progress:(id)a4 error:(id *)a5;
- (BOOL)queueUploadOfFileChange:(id)a3 batchSave:(id)a4 engine:(id)a5 skipped:(BOOL *)a6 error:(id *)a7;
- (MBCKDevice)device;
- (MBCKManifest)initWithCoder:(id)a3;
- (MBCKManifest)initWithDictionary:(id)a3 cache:(id)a4;
- (MBCKManifest)initWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5;
- (MBCKManifest)initWithSnapshot:(id)a3 domainName:(id)a4 manifestID:(id)a5 count:(unint64_t)a6 cache:(id)a7;
- (MBCKSnapshot)snapshot;
- (NSMutableDictionary)filesInFlightByID;
- (NSSet)fileRecordIDs;
- (NSSet)placeholderFileRecordIDs;
- (NSString)manifestID;
- (NSString)snapshotID;
- (id)_manifestRecordIDsForManifestPageCount:(unint64_t)a3;
- (id)_manifestRecordWithFiles:(id)a3 placeholderFiles:(id)a4 manifestIndex:(unint64_t)a5;
- (id)_recordIDStringForManifestAtIndex:(unint64_t)a3;
- (id)baseRecordIDString;
- (id)description;
- (void)_queryManifestWithOperationTracker:(id)a3 progress:(id)a4 recordName:(id)a5 cursor:(id)a6 completion:(id)a7;
- (void)_reportProgressOfSuccessfullyFetchedManifestPageRecord:(id)a3 referenceFetchProgress:(id)a4;
- (void)addSavesWithBatchSave:(id)a3 completion:(id)a4;
- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4;
- (void)deletePendingCloudFilesWithBatchDelete:(id)a3 completion:(id)a4;
- (void)deletePendingManifestPagesWithBatchDelete:(id)a3 completion:(id)a4;
- (void)deleteSavedFilesWithOperationTracker:(id)a3 completion:(id)a4;
- (void)didSaveAssetsForRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchFilesWithOperationTracker:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4;
- (void)record:(id)a3 madeProgress:(double)a4;
- (void)recordWasSaved:(id)a3 withError:(id)a4;
- (void)refreshWithRecord:(id)a3;
- (void)saveToCacheWithCompletion:(id)a3;
- (void)setManifestID:(id)a3;
- (void)updateFromServerWithBatchFetch:(id)a3 referenceFetchProgress:(id)a4 manifestCompletion:(id)a5;
@end

@implementation MBCKManifest

+ (MBCKManifest)manifestWithSnapshot:(id)a3 domainName:(id)a4 count:(unint64_t)a5 cache:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[MBCKManifest alloc] initWithSnapshot:v11 domainName:v10 manifestID:0 count:a5 cache:v9];

  return v12;
}

+ (MBCKManifest)manifestWithSnapshot:(id)a3 manifestID:(id)a4 count:(unint64_t)a5 cache:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[MBCKManifest alloc] initWithSnapshot:v11 domainName:0 manifestID:v10 count:a5 cache:v9];

  return v12;
}

+ (id)domainHmac:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"MBCKManifest.m" lineNumber:58 description:@"No key specified to domainHmac"];
  }

  v9 = [MBDigestSHA1 sha1HmacForString:v7 key:v8];
  v10 = [v9 base64EncodedStringWithOptions:0];

  return v10;
}

- (MBCKManifest)initWithSnapshot:(id)a3 domainName:(id)a4 manifestID:(id)a5 count:(unint64_t)a6 cache:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v25.receiver = self;
  v25.super_class = MBCKManifest;
  v15 = [(MBCKModel *)&v25 initWithRecord:0 cache:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_snapshot, v12);
    if (a6 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a6;
    }

    v16->_manifestCount = v17;
    [(MBCKManifest *)v16 setManifestID:v14];
    objc_storeStrong(&v16->_domainName, a4);
    if (v16->_domainName)
    {
      v18 = [(MBCKManifest *)v16 domainName];
      v19 = [v12 device];
      v20 = [v19 hmacKey];
      v21 = [MBCKManifest domainHmac:v18 key:v20];
      domainHmac = v16->_domainHmac;
      v16->_domainHmac = v21;

      domainName = v16->_domainName;
    }

    else
    {
      domainName = 0;
    }

    v16->_isAppDomain = [MBDomain isAppName:domainName];
    [v12 addManifest:v16];
  }

  return v16;
}

- (MBCKManifest)initWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MBCKManifest;
  v9 = [(MBCKModel *)&v12 initWithRecord:a3 cache:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_snapshot, v8);
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
  v5 = [(MBCKManifest *)self manifestID];
  v6 = [v3 initWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (void)updateFromServerWithBatchFetch:(id)a3 referenceFetchProgress:(id)a4 manifestCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 94, "batchFetch");
  }

  v11 = v10;
  if (!v10)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 95, "manifestCompletion");
  }

  if (v9)
  {
    v12 = [(MBCKManifest *)self manifestCount];
    if (!v12)
    {
      __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 98, "numManifestPages != 0");
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(MBCKManifest *)self _manifestRecordIDsForManifestPageCount:v12];
  v15 = [v14 firstObject];
  v16 = [v15 recordName];

  if (!v16)
  {
    __assert_rtn("[MBCKManifest updateFromServerWithBatchFetch:referenceFetchProgress:manifestCompletion:]", "MBCKManifest.m", 103, "firstRecordName");
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F4BB0;
  v22[3] = &unk_1003BE790;
  v23 = v16;
  v24 = self;
  v17 = v9;
  v25 = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F4C3C;
  v20[3] = &unk_1003BE7B8;
  v20[4] = self;
  v18 = v11;
  v21 = v18;
  v19 = v16;
  [v8 fetchRecordsWithIDs:v14 progress:v22 completion:v20];

  objc_autoreleasePoolPop(v13);
}

- (id)_manifestRecordIDsForManifestPageCount:(unint64_t)a3
{
  v5 = [MBCKDatabaseManager zoneIDOfType:[(MBCKManifest *)self recordZone]];
  v6 = +[NSMutableArray array];
  if (a3)
  {
    v7 = 0;
    do
    {
      v8 = [(MBCKManifest *)self _recordIDStringForManifestAtIndex:v7];
      v9 = [[CKRecordID alloc] initWithRecordName:v8 zoneID:v5];
      [v6 addObject:v9];

      ++v7;
    }

    while (a3 != v7);
  }

  return v6;
}

- (void)_reportProgressOfSuccessfullyFetchedManifestPageRecord:(id)a3 referenceFetchProgress:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v9 = [v7 objectForKeyedSubscript:@"files"];
    v8 = [v7 objectForKeyedSubscript:@"placeholderFiles"];

    v6[2](v6, self, v9, v8);
  }
}

- (MBCKManifest)initWithDictionary:(id)a3 cache:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = MBCKManifest;
  v7 = [(MBCKModel *)&v21 initWithRecord:0 cache:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"manifestID"];
    [(MBCKManifest *)v7 setManifestID:v8];

    v9 = [v6 objectForKeyedSubscript:@"snapshotID"];
    snapshotID = v7->_snapshotID;
    v7->_snapshotID = v9;

    v11 = [v6 objectForKeyedSubscript:@"snapshot"];
    objc_storeWeak(&v7->_snapshot, v11);
    v12 = [v6 objectForKeyedSubscript:@"domain"];
    domainName = v7->_domainName;
    v7->_domainName = v12;

    if (v7->_domainName)
    {
      v14 = [(MBCKManifest *)v7 domainName];
      v15 = [v11 device];
      v16 = [v15 hmacKey];
      v17 = [MBCKManifest domainHmac:v14 key:v16];
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
    v4 = [(MBCKManifest *)self snapshotID];
    if (!v4)
    {
      __assert_rtn("[MBCKManifest manifestID]", "MBCKManifest.m", 161, "snapshotID && Manifest is missing a snapshot ID");
    }

    v5 = v4;
    v6 = [(MBCKManifest *)self domainHmac];
    if (!v6)
    {
      __assert_rtn("[MBCKManifest manifestID]", "MBCKManifest.m", 163, "domainHmac && Manifest is missing a domain hash");
    }

    v7 = v6;
    v8 = [[NSString alloc] initWithFormat:@"%@:%@", v5, v6];
    v9 = self->_manifestID;
    self->_manifestID = v8;

    manifestID = self->_manifestID;
  }

  return manifestID;
}

- (void)setManifestID:(id)a3
{
  v6 = a3;
  if ([v6 hasPrefix:@"M:"])
  {
    v4 = [v6 substringFromIndex:{objc_msgSend(@"M:", "length")}];
  }

  else
  {
    v4 = v6;
  }

  manifestID = self->_manifestID;
  self->_manifestID = v4;
}

- (NSString)snapshotID
{
  snapshotID = self->_snapshotID;
  if (snapshotID)
  {
    v3 = snapshotID;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_snapshot);
    v3 = [WeakRetained snapshotID];
  }

  return v3;
}

- (MBCKDevice)device
{
  v2 = [(MBCKManifest *)self snapshot];
  v3 = [v2 device];

  return v3;
}

- (NSMutableDictionary)filesInFlightByID
{
  v2 = self;
  objc_sync_enter(v2);
  filesInFlightByID = v2->_filesInFlightByID;
  if (!filesInFlightByID)
  {
    v4 = objc_opt_new();
    v5 = v2->_filesInFlightByID;
    v2->_filesInFlightByID = v4;

    filesInFlightByID = v2->_filesInFlightByID;
  }

  v6 = filesInFlightByID;
  objc_sync_exit(v2);

  return v6;
}

- (NSSet)fileRecordIDs
{
  v3 = objc_opt_new();
  v4 = [(MBCKModel *)self cache];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F5454;
  v8[3] = &unk_1003BD658;
  v5 = v3;
  v9 = v5;
  v6 = [v4 enumerateFilesForManifest:self foundFile:v8];

  return v5;
}

- (NSSet)placeholderFileRecordIDs
{
  v3 = objc_opt_new();
  v4 = [(MBCKModel *)self cache];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F55C0;
  v8[3] = &unk_1003BD658;
  v5 = v3;
  v9 = v5;
  v6 = [v4 enumerateFilesForManifest:self foundFile:v8];

  return v5;
}

- (BOOL)queueUploadOfFileChange:(id)a3 batchSave:(id)a4 engine:(id)a5 skipped:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v13)
  {
    __assert_rtn("[MBCKManifest queueUploadOfFileChange:batchSave:engine:skipped:error:]", "MBCKManifest.m", 224, "batchSave");
  }

  v15 = v14;
  v16 = [MBCKFile fileWithFileChange:v12 manifest:self];
  if (v16)
  {
    v17 = [v15 serviceAccount];
    v18 = [(MBCKManifest *)self device];
    v19 = [v16 refreshFromFilesystemWithAccount:v17 device:v18 error:a7];

    if (v19)
    {
      v108 = [(MBCKManifest *)self snapshot];
      if (!v108)
      {
        __assert_rtn("[MBCKManifest queueUploadOfFileChange:batchSave:engine:skipped:error:]", "MBCKManifest.m", 236, "snapshot");
      }

      v20 = [v16 prepareForUploadWithEngine:v15 error:a7];
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
            v36 = [v16 recordIDString];
            v37 = [v16 relativePath];
            v38 = v37;
            if (a7)
            {
              v39 = *a7;
            }

            else
            {
              v39 = 0;
            }

            *buf = 138544386;
            v115 = v36;
            v116 = 2112;
            v117 = v16;
            v118 = 2112;
            v119 = v37;
            v120 = 1024;
            *v121 = v30;
            *&v121[4] = 2112;
            *&v121[6] = v39;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to prepare file %{public}@ (%@, %@): %d, %@", buf, 0x30u);

            v71 = [v16 recordIDString];
            v72 = [v16 relativePath];
            if (a7)
            {
              v73 = *a7;
            }

            _MBLog();
          }

          [v16 cleanupAfterUpload];
          LOBYTE(a7) = 0;
          goto LABEL_66;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v16 recordIDString];
          v34 = [v16 relativePath];
          *buf = 138543874;
          v115 = v33;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = v34;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ (%@, %@)", buf, 0x20u);

          v35 = [v16 recordIDString];
          v92 = [v16 relativePath];
          _MBLog();
        }

        goto LABEL_16;
      }

      v21 = [(MBCKModel *)self cache];
      v22 = [v16 fileID];
      v23 = [v21 fetchFileFromFileID:v22 error:a7];

      if (v23)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v16 recordIDString];
          v26 = [v16 relativePath];
          *buf = 138543874;
          v115 = v25;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skipping already uploaded file %{public}@ (%@, %@)", buf, 0x20u);

          v27 = [v16 recordIDString];
          v91 = [v16 relativePath];
          _MBLog();
        }

LABEL_16:

        [v16 cleanupAfterUpload];
        LOBYTE(a7) = 1;
        if (a6)
        {
          *a6 = 1;
        }

        goto LABEL_66;
      }

      v107 = [v16 recordID];
      v106 = [(MBCKManifest *)self filesInFlightByID];
      v40 = self;
      objc_sync_enter(v40);
      v41 = [v106 objectForKeyedSubscript:v107];

      if (v41)
      {
        objc_sync_exit(v40);

        a7 = MBGetDefaultLog();
        if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
        {
          v42 = [v16 recordIDString];
          v43 = [v16 relativePath];
          *buf = 138543874;
          v115 = v42;
          v116 = 2112;
          v117 = v16;
          v118 = 2112;
          v119 = v43;
          _os_log_impl(&_mh_execute_header, a7, OS_LOG_TYPE_INFO, "Skipping already in-flight file %{public}@ (%@, %@)", buf, 0x20u);

          v44 = [v16 recordIDString];
          v93 = [v16 relativePath];
          _MBLog();
        }

        [v16 cleanupAfterUpload];
        LOBYTE(a7) = 1;
        if (a6)
        {
          *a6 = 1;
        }

        goto LABEL_60;
      }

      [v106 setObject:v16 forKeyedSubscript:v107];
      objc_sync_exit(v40);
      v104 = v40;

      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [(MBCKManifest *)v40 domainName];
        v47 = [v16 relativePath];
        v48 = [v16 recordIDString];
        *buf = 138413314;
        v115 = v46;
        v116 = 2112;
        v117 = v47;
        v118 = 2114;
        v119 = v48;
        v120 = 2048;
        *v121 = [v16 inode];
        *&v121[8] = 1024;
        *&v121[10] = [v16 isDataless];
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Uploading file %@:%@ as %{public}@ (inode:%llu) (isDataless:%d)", buf, 0x30u);

        v49 = [(MBCKManifest *)v104 domainName];
        v50 = [v16 relativePath];
        v51 = [v16 recordIDString];
        v94 = [v16 inode];
        v95 = [v16 isDataless];
        v87 = v50;
        v90 = v51;
        v85 = v49;
        _MBLog();
      }

      v52 = [v16 recordRepresentation];
      if (([v16 deleted] & 1) == 0)
      {
        if (MBIsInternalInstall())
        {
          v53 = [v16 aggregateSize];
          v54 = [v16 sizeFromFileIDWithDefaultValue:-1];
          if (v54 != -1 && v54 != v53 && dword_100421710 <= 9 && atomic_fetch_add_explicit(&dword_100421710, 1u, memory_order_relaxed) <= 9)
          {
            v55 = MBGetDefaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              v56 = [v16 fileID];
              *buf = 134218242;
              v115 = v53;
              v116 = 2112;
              v117 = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "The aggregate size (%llu) doesn't match the size for fileID:%@", buf, 0x16u);

              [v16 fileID];
              v87 = v85 = v53;
              _MBLog();
            }
          }
        }
      }

      v103 = [v15 domainManager];
      if (!v103)
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
      v113 = v12;
      [v13 saveRecord:v52 delegate:v104 completion:v109];
      if (([v58 deleted] & 1) != 0 || !objc_msgSend(v58, "hadTemporarySQLiteArchive") || !objc_msgSend(v58, "isSQLiteFile"))
      {
        LOBYTE(a7) = 1;
        goto LABEL_59;
      }

      v97 = +[NSFileManager defaultManager];
      v59 = [v58 domain];
      v101 = [v59 name];

      v60 = [v58 relativePath];
      v99 = [v60 stringByAppendingString:@"-wal"];

      v61 = [v58 absolutePath];
      v96 = [v61 stringByAppendingString:@"-wal"];

      v62 = [(MBCKModel *)v104 cache];
      v100 = [v62 lastBackedUpFileWithDomainName:v101 relativePath:v99 error:0];

      if (!v100 || ([v100 deleted] & 1) != 0 || !objc_msgSend(v97, "fileExistsAtPath:", v96))
      {
LABEL_48:
        v65 = [v58 relativePath];
        v102 = [v65 stringByAppendingString:@"-shm"];

        v66 = [v58 absolutePath];
        oslog = [v66 stringByAppendingString:@"-shm"];

        v67 = [(MBCKModel *)v104 cache];
        v68 = [v67 lastBackedUpFileWithDomainName:v101 relativePath:v102 error:0];

        if (!v68 || ([v68 deleted] & 1) != 0 || !objc_msgSend(v97, "fileExistsAtPath:", oslog))
        {
          goto LABEL_55;
        }

        v105 = objc_alloc_init(MBCKFileChange);
        v69 = [v58 domain];
        [(MBCKFileChange *)v105 setDomain:v69];

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

        if ([v108 addFileChange:v105 batchSave:v13 engine:v57 skipped:0 error:a7])
        {

LABEL_55:
          LOBYTE(a7) = 1;
LABEL_56:

LABEL_57:
LABEL_59:

LABEL_60:
LABEL_66:

          goto LABEL_67;
        }

        v78 = MBGetDefaultLog();
        v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
        if (a7)
        {
          if (v79)
          {
            v80 = [v58 absolutePath];
            v81 = *a7;
            *buf = 138412546;
            v115 = v80;
            v116 = 2112;
            v117 = v81;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the SHM file of checkpointed SQLite db at absolute path %@ - %@", buf, 0x16u);

            v82 = [v58 absolutePath];
            v89 = *a7;
            _MBLog();
LABEL_81:
          }
        }

        else if (v79)
        {
          v84 = [v58 absolutePath];
          *buf = 138412290;
          v115 = v84;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the SHM file of checkpointed SQLite db at absolute path %@", buf, 0xCu);

          v82 = [v58 absolutePath];
          _MBLog();
          goto LABEL_81;
        }

        goto LABEL_83;
      }

      v102 = objc_alloc_init(MBCKFileChange);
      v63 = [v58 domain];
      [(MBCKFileChange *)v102 setDomain:v63];

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

      if ([v108 addFileChange:v102 batchSave:v13 engine:v57 skipped:0 error:a7])
      {

        goto LABEL_48;
      }

      oslog = MBGetDefaultLog();
      v75 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (a7)
      {
        if (v75)
        {
          v76 = [v58 absolutePath];
          v77 = *a7;
          *buf = 138412546;
          v115 = v76;
          v116 = 2112;
          v117 = v77;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the WAL file of checkpointed SQLite db at absolute path %@ - %@", buf, 0x16u);

          v68 = [v58 absolutePath];
          v88 = *a7;
          _MBLog();
LABEL_83:
          LOBYTE(a7) = 0;
          goto LABEL_56;
        }
      }

      else if (v75)
      {
        v83 = [v58 absolutePath];
        *buf = 138412290;
        v115 = v83;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Couldn't add deletion marker for the WAL file of checkpointed SQLite db at absolute path %@", buf, 0xCu);

        v68 = [v58 absolutePath];
        _MBLog();
        goto LABEL_83;
      }

      LOBYTE(a7) = 0;
      goto LABEL_57;
    }

    goto LABEL_12;
  }

  if (a7)
  {
    v28 = [v12 relativePath];
    v29 = [(MBCKManifest *)self domainName];
    *a7 = [MBError errorWithCode:100 path:v28 format:@"Failed to add file change to manifest: %@ : %@", v29, v12];

LABEL_12:
    LOBYTE(a7) = 0;
  }

LABEL_67:

  return a7;
}

- (void)_queryManifestWithOperationTracker:(id)a3 progress:(id)a4 recordName:(id)a5 cursor:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    __assert_rtn("[MBCKManifest _queryManifestWithOperationTracker:progress:recordName:cursor:completion:]", "MBCKManifest.m", 430, "tracker");
  }

  v17 = v16;
  if (v15)
  {
    v18 = [[CKQueryOperation alloc] initWithCursor:v15];
    v19 = MBGetDefaultLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v38 = v13;
    v39 = v17;
    v20 = [(MBCKManifest *)self domainName];
    v21 = [v18 operationID];
    *buf = 138412802;
    v49 = v20;
    v50 = 2112;
    v51 = v14;
    v52 = 2114;
    v53 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Querying: %@ %@ - continuing - operationID: %{public}@", buf, 0x20u);

    v22 = [(MBCKManifest *)self domainName];
    v23 = [v18 operationID];
    _MBLog();
  }

  else
  {
    v38 = v13;
    v39 = v16;
    v19 = [[CKRecordID alloc] initWithRecordName:v14];
    v22 = [NSPredicate predicateWithFormat:@"recordID==%@", v19];
    v23 = [[CKQuery alloc] initWithRecordType:@"PrivilegedManifestDownload" predicate:v22];
    v18 = [[CKQueryOperation alloc] initWithQuery:v23];
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      [(MBCKManifest *)self domainName];
      v25 = v37 = v12;
      v26 = [v18 operationID];
      *buf = 138412802;
      v49 = v25;
      v50 = 2112;
      v51 = v14;
      v52 = 2114;
      v53 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Querying: %@ %@ - operationID: %{public}@", buf, 0x20u);

      v27 = [(MBCKManifest *)self domainName];
      v36 = [v18 operationID];
      _MBLog();

      v12 = v37;
    }
  }

  v13 = v38;
  v17 = v39;
LABEL_9:

  v28 = +[MBCKFile keysToFetchWithoutContents];
  [v18 setDesiredKeys:v28];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000F74F4;
  v46[3] = &unk_1003BE808;
  v46[4] = self;
  v29 = v13;
  v47 = v29;
  [v18 setRecordFetchedBlock:v46];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000F7594;
  v40[3] = &unk_1003BE830;
  v30 = v14;
  v41 = v30;
  v31 = v17;
  v44 = v31;
  v42 = self;
  v32 = v12;
  v43 = v32;
  v33 = v29;
  v45 = v33;
  [v18 setQueryCompletionBlock:v40];
  v34 = [v32 ckOperationPolicy];
  if (!v34)
  {
    __assert_rtn("[MBCKManifest _queryManifestWithOperationTracker:progress:recordName:cursor:completion:]", "MBCKManifest.m", 462, "policy");
  }

  v35 = v34;
  [v32 addDatabaseOperation:v18 policy:v34];
}

- (void)fetchFilesWithOperationTracker:(id)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000F7960;
  v28 = sub_1000F7970;
  v29 = 0;
  v20 = v10;
  while (v11 < [(MBCKManifest *)self manifestCount])
  {
    v12 = [(MBCKModel *)self retryStrategy];
    [v12 reset];

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
      [(MBCKManifest *)self _queryManifestWithOperationTracker:v8 progress:v9 recordName:v16 cursor:0 completion:v21];
      MBSemaphoreWaitForever();

      objc_autoreleasePoolPop(v13);
      if (!v25[5])
      {
        break;
      }

      v18 = [(MBCKModel *)self retryStrategy];
      v19 = [v18 shouldRetryAfterError:v25[5]];
    }

    while ((v19 & 1) != 0);
    ++v11;
    v10 = v20;
  }

  v10[2](v10, v25[5]);
  _Block_object_dispose(&v24, 8);
}

- (BOOL)fetchFilesWithOperationTracker:(id)a3 progress:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  [(MBCKManifest *)self fetchFilesWithOperationTracker:v8 progress:v9 completion:v13];
  MBSemaphoreWaitForever();
  if (a5)
  {
    *a5 = v17[5];
  }

  v11 = v17[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)deleteSavedFilesWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKManifest deleteSavedFilesWithOperationTracker:completion:]", "MBCKManifest.m", 497, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKManifest deleteSavedFilesWithOperationTracker:completion:]", "MBCKManifest.m", 498, "completion");
  }

  v9 = objc_opt_new();
  v10 = [(MBCKModel *)self cache];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F7DDC;
  v23[3] = &unk_1003BD658;
  v11 = v9;
  v24 = v11;
  v12 = [v10 enumerateFilesForManifest:self foundFile:v23];

  if ([v11 count])
  {
    v13 = [v6 startBatchDelete];
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

          [v13 deleteRecordWithID:*(*(&v19 + 1) + 8 * i) completion:{0, v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v16);
    }

    [v6 finishBatchDelete:v13 completion:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (BOOL)deleteSavedFilesWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [(MBCKManifest *)self deleteSavedFilesWithOperationTracker:v6 completion:v10];
  MBSemaphoreWaitForever();
  if (a4)
  {
    *a4 = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)saveToCacheWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MBCKModel *)self cache];
  v6 = [(MBCKManifest *)self snapshot];
  v7 = [v5 addManifest:self toPendingSnapshot:v6];

  v4[2](v4, v7);
}

- (id)_manifestRecordWithFiles:(id)a3 placeholderFiles:(id)a4 manifestIndex:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(MBCKManifest *)self _recordIDStringForManifestAtIndex:a5];
  v12 = [CKRecordID alloc];
  v13 = [MBCKDatabaseManager zoneIDOfType:[(MBCKManifest *)self recordZone]];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  v15 = [CKRecord alloc];
  v16 = [(MBCKManifest *)self recordType];
  v17 = [v15 initWithRecordType:v16 recordID:v14];

  if (!a5)
  {
    v18 = [(MBCKManifest *)self domainName];

    if (!v18)
    {
      v37 = +[NSAssertionHandler currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"MBCKManifest.m" lineNumber:545 description:@"Manifest domain is nil!"];
    }

    v19 = [(MBCKManifest *)self domainName];
    v20 = [v19 dataUsingEncoding:4];
    v21 = [v17 encryptedValues];
    [v21 setObject:v20 forKeyedSubscript:@"domain"];

    v22 = [(MBCKManifest *)self domainName];
    [v17 setObject:v22 forKeyedSubscript:@"domainName"];

    v23 = [(MBCKManifest *)self dependentDomainNames];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [(MBCKManifest *)self dependentDomainNames];
      v26 = [NSKeyedArchiver archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];

      v27 = [v17 encryptedValues];
      [v27 setObject:v26 forKeyedSubscript:@"dependentDomains"];
    }

    v28 = [(MBCKManifest *)self entitlements];

    if (v28)
    {
      v29 = [(MBCKManifest *)self entitlements];
      v30 = [NSKeyedArchiver archivedDataWithRootObject:v29 requiringSecureCoding:1 error:0];

      [v17 setObject:v30 forKeyedSubscript:@"entitlements"];
    }

    v31 = [(MBCKManifest *)self entitlementsPath];
    [v17 setObject:v31 forKeyedSubscript:@"entitlementsPath"];

    v32 = [(MBCKManifest *)self owningBundleID];
    [v17 setObject:v32 forKeyedSubscript:@"owningBundleID"];
  }

  if ([v9 count])
  {
    v33 = [v9 copy];
    [v17 setObject:v33 forKeyedSubscript:@"files"];
  }

  if ([v10 count])
  {
    v34 = [v10 copy];
    [v17 setObject:v34 forKeyedSubscript:@"placeholderFiles"];
  }

  v35 = MBGetDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v39 = v11;
    v40 = 2048;
    v41 = [v9 count];
    v42 = 2048;
    v43 = [v10 count];
    v44 = 2048;
    v45 = [v17 size];
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Manifest record %{public}@ has %lu regular files and %lu placeholder files (%lu bytes)", buf, 0x2Au);
    [v9 count];
    [v10 count];
    [v17 size];
    _MBLog();
  }

  return v17;
}

- (void)deletePendingCloudFilesWithBatchDelete:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = v6;
  if (!v6)
  {
    __assert_rtn("[MBCKManifest deletePendingCloudFilesWithBatchDelete:completion:]", "MBCKManifest.m", 571, "batchDelete");
  }

  v8 = v7;
  v9 = objc_opt_new();
  v10 = [(MBCKModel *)self cache];
  v11 = [(MBCKManifest *)self manifestID];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F8830;
  v33[3] = &unk_1003BC450;
  v12 = v9;
  v34 = v12;
  v13 = [v10 enumerateCloudFilesPendingDeleteForManifestID:v11 withFoundFileID:v33];

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

- (void)deletePendingManifestPagesWithBatchDelete:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKManifest deletePendingManifestPagesWithBatchDelete:completion:]", "MBCKManifest.m", 614, "batchDelete");
  }

  v8 = v7;
  v9 = [(MBCKManifest *)self manifestID];
  v10 = [(MBCKModel *)self cache];
  v11 = [(MBCKManifest *)self manifestID];
  v31 = 0;
  v12 = [v10 countManifestPagesForManifestID:v11 error:&v31];
  v13 = v31;

  if (v13)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = v9;
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
    v33 = v9;
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
    v22 = [v20 initWithFormat:@"%@%@:%@", @"M:", v9, v21];

    v23 = [[CKRecordID alloc] initWithRecordName:v22];
    dispatch_group_enter(v17);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000F8E28;
    v29[3] = &unk_1003BE8C8;
    v24 = v17;
    v30 = v24;
    [v6 deleteRecordWithID:v23 completion:v29];

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

- (void)prepareForSaveWithOperationTracker:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[MBCKManifest prepareForSaveWithOperationTracker:completion:]", "MBCKManifest.m", 663, "tracker");
  }

  v9 = v8;
  v10 = [v7 account];
  if (!v10)
  {
    __assert_rtn("[MBCKManifest prepareForSaveWithOperationTracker:completion:]", "MBCKManifest.m", 665, "serviceAccount");
  }

  v11 = v10;
  v12 = +[MBBehaviorOptions sharedOptions];
  v13 = [v12 manifestPageSize];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v16 = [(MBCKModel *)self cache];
  v17 = [(MBCKManifest *)self manifestID];
  v18 = [v16 deleteManifestPagesForManifestID:v17];

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
  v21 = [(MBCKModel *)self cache];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000F9594;
  v26[3] = &unk_1003BE938;
  v22 = v15;
  v27 = v22;
  v23 = v14;
  v28 = v23;
  v30 = v13;
  v24 = v20;
  v29 = v24;
  v25 = [v21 enumerateFilesForManifest:self foundFile:v26];

  (v24[2])(v24, v23, v22);
  self->_manifestCount = v36[3];
  v9[2](v9, 0);

  _Block_object_dispose(&v35, 8);
}

- (void)addSavesWithBatchSave:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 711, "batchSave");
  }

  if (!v7)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 712, "completion");
  }

  v38 = v7;
  v8 = [v6 ckOperationTracker];
  v39 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 714, "tracker");
  }

  v40 = [v8 account];
  if (!v40)
  {
    __assert_rtn("[MBCKManifest addSavesWithBatchSave:completion:]", "MBCKManifest.m", 716, "serviceAccount");
  }

  v9 = [(MBCKManifest *)self manifestCount];
  if (v9)
  {
    v10 = v9;
    v37 = [(MBCKManifest *)self baseRecordIDString];
    v42 = [(MBCKManifest *)self manifestID];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v37;
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

      v15 = [(MBCKModel *)self cache];
      v58 = 0;
      v16 = [v15 fetchManifestPageForManifestID:v42 pageIndex:v13 error:&v58];
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
        [v6 saveRecord:v16 delegate:self completion:v55];
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
      v44 = v37;
      v47 = v38;
      v45 = self;
      v46 = v42;
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
        v62 = self;
        v63 = 2112;
        v64 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to fetch manifestPage %lu for manifest: %@ : %@", v59, 0x20u);
        _MBLog();
      }

      v22 = +[MBCKManager sharedInstance];
      v54 = 0;
      [v22 resetCacheWithAccount:v40 error:&v54];
      v19 = v54;

      v23 = +[MBCKManager sharedInstance];
      v53 = 0;
      v24 = [v23 openCacheWithAccount:v40 accessType:1 error:&v53];
      v25 = v53;

      [(MBCKModel *)self setCache:v24];
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *v59 = 134218498;
        v60 = v13;
        v61 = 2112;
        v62 = self;
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

- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKManifest addSavesWithOperationTracker:completion:]", "MBCKManifest.m", 789, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKManifest addSavesWithOperationTracker:completion:]", "MBCKManifest.m", 790, "completion");
  }

  if ([(MBCKManifest *)self manifestCount])
  {
    v9 = dispatch_group_create();
    v10 = [v6 startBatchSave];
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
    [(MBCKManifest *)self addSavesWithBatchSave:v10 completion:v25];
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
    [v6 finishBatchSave:v10 completion:v20];
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

- (void)refreshWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"domain"];

  if (!v6 || (v7 = [[NSString alloc] initWithData:v6 encoding:4]) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 recordID];
      *buf = 138543362;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Found nil domain field for %{public}@", buf, 0xCu);

      v34 = [v4 recordID];
      _MBLog();
    }

    v7 = [v4 objectForKeyedSubscript:@"domainName"];
  }

  objc_storeStrong(&self->_domainName, v7);
  if (self->_domainName)
  {
    v10 = [(MBCKManifest *)self domainName];
    v11 = [(MBCKManifest *)self device];
    v12 = [v11 hmacKey];
    v13 = [MBCKManifest domainHmac:v10 key:v12];
    domainHmac = self->_domainHmac;
    self->_domainHmac = v13;
  }

  v15 = [v4 encryptedValues];
  v16 = [v15 objectForKeyedSubscript:@"dependentDomains"];

  if (v16)
  {
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v17 = [NSArray arrayWithObjects:v41 count:2];
    v18 = [NSSet setWithArray:v17];
    v19 = [v4 encryptedValues];
    v20 = [v19 objectForKeyedSubscript:@"dependentDomains"];
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

  v24 = [v4 objectForKeyedSubscript:{@"owningBundleID", v35}];
  owningBundleID = self->_owningBundleID;
  self->_owningBundleID = v24;

  v26 = [v4 objectForKeyedSubscript:@"entitlements"];
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
    v31 = [(MBCKManifest *)self entitlements];

    if (!v31)
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

  v33 = [v4 objectForKeyedSubscript:{@"entitlementsPath", v36}];
  [(MBCKManifest *)self setEntitlementsPath:v33];

  v37.receiver = self;
  v37.super_class = MBCKManifest;
  [(MBCKModel *)&v37 refreshWithRecord:v4];
}

- (id)baseRecordIDString
{
  v2 = [(MBCKManifest *)self manifestID];
  if (!v2)
  {
    __assert_rtn("[MBCKManifest baseRecordIDString]", "MBCKManifest.m", 857, "manifestID && Manifest is missing a base manifest ID");
  }

  v3 = v2;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"M:", v2];

  return v4;
}

- (id)_recordIDStringForManifestAtIndex:(unint64_t)a3
{
  v4 = [(MBCKManifest *)self manifestID];
  if (!v4)
  {
    __assert_rtn("[MBCKManifest _recordIDStringForManifestAtIndex:]", "MBCKManifest.m", 863, "manifestID && Manifest is missing a base manifest ID");
  }

  v5 = v4;
  v6 = [[NSString alloc] initWithFormat:@"%@%@:%lu", @"M:", v4, a3];

  return v6;
}

- (void)record:(id)a3 madeProgress:(double)a4
{
  v12 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [v12 recordID];

  if (v7)
  {
    v8 = [(MBCKManifest *)v6 filesInFlightByID];
    v9 = [v12 recordID];
    v7 = [v8 objectForKeyedSubscript:v9];
  }

  objc_sync_exit(v6);

  if (v7)
  {
    v10 = [(MBCKManifest *)v6 snapshot];
    v11 = [v10 progressModel];
    [v11 updatingProgress:v7 forItem:a4];
  }
}

- (void)recordWasSaved:(id)a3 withError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MBCKManifest *)v7 filesInFlightByID];
  v9 = [v10 recordID];
  [v8 removeObjectForKey:v9];

  objc_sync_exit(v7);
}

- (void)didSaveAssetsForRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKManifest *)v5 filesInFlightByID];
  v7 = [v4 recordID];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);
  if (v8)
  {
    v9 = [v8 fileID];
    v10 = [(MBCKModel *)v5 cache];
    v11 = [v10 setFileStateToPending:v8];

    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to mark %{public}@ as pending: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Marked %{public}@ as pending", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = MBCKManifest;
  [(MBCKModel *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_manifestID forKey:@"ManifestID"];
  v6 = [(MBCKManifest *)self snapshotID];
  [v4 encodeObject:v6 forKey:@"ManifestSnapshotID"];

  [v4 encodeObject:self->_domainName forKey:@"ManifestDomainName"];
  [v4 encodeObject:self->_domainHmac forKey:@"ManifestDomainHMAC"];
  [v4 encodeInteger:self->_manifestCount forKey:@"ManifestCount"];
  [v4 encodeObject:self->_dependentDomainNames forKey:@"ManifestDependentDomainNames"];
  [v4 encodeObject:self->_entitlements forKey:@"ManifestEntitlements"];
  [v4 encodeObject:self->_entitlementsPath forKey:@"ManifestEntitlementsPath"];
  [v4 encodeObject:self->_owningBundleID forKey:@"ManifestOwningBundleID"];
  [v4 encodeBool:self->_isAppDomain forKey:@"ManifestIsAppDomain"];
  objc_autoreleasePoolPop(v5);
}

- (MBCKManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v29.receiver = self;
  v29.super_class = MBCKManifest;
  v6 = [(MBCKModel *)&v29 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestID"];
    manifestID = v6->_manifestID;
    v6->_manifestID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestSnapshotID"];
    snapshotID = v6->_snapshotID;
    v6->_snapshotID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestDomainName"];
    domainName = v6->_domainName;
    v6->_domainName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestDomainHMAC"];
    domainHmac = v6->_domainHmac;
    v6->_domainHmac = v13;

    v6->_manifestCount = [v4 decodeIntegerForKey:@"ManifestCount"];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v31 count:2];
    v16 = [NSSet setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ManifestDependentDomainNames"];
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
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"ManifestEntitlements"];
    entitlements = v6->_entitlements;
    v6->_entitlements = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestEntitlementsPath"];
    entitlementsPath = v6->_entitlementsPath;
    v6->_entitlementsPath = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestOwningBundleID"];
    owningBundleID = v6->_owningBundleID;
    v6->_owningBundleID = v25;

    v6->_isAppDomain = [v4 decodeBoolForKey:@"ManifestIsAppDomain"];
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