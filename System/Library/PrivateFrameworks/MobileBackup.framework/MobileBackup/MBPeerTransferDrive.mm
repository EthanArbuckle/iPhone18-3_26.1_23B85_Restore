@interface MBPeerTransferDrive
- (BOOL)_handleMoveItem:(id)a3 metadata:(id)a4 error:(id *)a5;
- (BOOL)_handleReceivedItem:(id)a3 metadata:(id)a4 error:(id *)a5;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBPeerTransferDrive)initWithRootURL:(id)a3 fileTransferSession:(id)a4 uploadBatchSize:(unint64_t)a5 concurrentUploadBatchCount:(unint64_t)a6 concurrentOpenBatchCount:(unint64_t)a7;
- (id)_queueWithBatch:(id)a3;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (id)fullURLForDriveRelativePath:(id)a3;
- (void)_resetReceivedFilesProgress;
- (void)_updateProgressForReceivedItem:(id)a3 size:(int64_t)a4;
- (void)_updateProgressForSentItem:(id)a3 size:(int64_t)a4;
- (void)_uploadBatch:(id)a3 options:(id)a4 completion:(id)a5;
- (void)cleanUpReceivedFilesDirectory;
- (void)dealloc;
- (void)finishBatchUploadsWithOptions:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)startListeningForFileTransfers;
- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MBPeerTransferDrive

- (MBPeerTransferDrive)initWithRootURL:(id)a3 fileTransferSession:(id)a4 uploadBatchSize:(unint64_t)a5 concurrentUploadBatchCount:(unint64_t)a6 concurrentOpenBatchCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  if (!a5)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 54, "uploadBatchSize");
  }

  if (!a6)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 55, "concurrentUploadBatchCount");
  }

  if (!a7)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 56, "concurrentOpenBatchCount");
  }

  v14 = v13;
  v55.receiver = self;
  v55.super_class = MBPeerTransferDrive;
  v15 = [(MBPeerTransferDrive *)&v55 init];
  v16 = v15;
  if (v15)
  {
    v50 = a5;
    v51 = a6;
    v15->_progressLock._os_unfair_lock_opaque = 0;
    v53 = v14;
    [(MBPeerTransferDrive *)v15 setFileTransferSession:v14];
    v54 = v12;
    [(MBPeerTransferDrive *)v16 setRootURL:v12];
    v17 = [[NSMutableArray alloc] initWithCapacity:a7];
    v18 = 0;
    do
    {
      v19 = [NSString stringWithFormat:@"com.apple.backup.batch.%lu", v18];
      v20 = [v19 UTF8String];
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_UTILITY, 0);
      v23 = dispatch_queue_create(v20, v22);

      [v17 addObject:v23];
      ++v18;
    }

    while (a7 != v18);
    v52 = v16;
    [(MBPeerTransferDrive *)v16 setBatchQueues:v17];
    v24 = [[NSMutableArray alloc] initWithCapacity:a7];
    v25 = 0;
    do
    {
      v26 = [NSString stringWithFormat:@"com.apple.backup.medatada.%lu", v25];
      v27 = [v26 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);
      v30 = dispatch_queue_create(v27, v29);

      [v24 addObject:v30];
      ++v25;
    }

    while (a7 != v25);
    [(MBPeerTransferDrive *)v52 setMetadataQueues:v24];
    v31 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v31 responseClass:objc_opt_class() forTask:@"MBPeerTaskMove"];
    v16 = v52;
    v32 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v32 responseClass:objc_opt_class() forTask:@"MBPeerTaskRemove"];
    v52->_uploadBatchSize = v50;
    v52->_concurrentUploadBatchCount = v51;
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      uploadBatchSize = v52->_uploadBatchSize;
      concurrentUploadBatchCount = v52->_concurrentUploadBatchCount;
      *buf = 138544130;
      v57 = v34;
      v58 = 2048;
      v59 = uploadBatchSize;
      v60 = 2048;
      v61 = concurrentUploadBatchCount;
      v62 = 2048;
      v63 = a7;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@, uploadBatchSize:%lu, concurrentUploadBatchCount:%lu, concurrentOpenBatchCount:%lu", buf, 0x2Au);
      objc_opt_class();
      v49 = v52->_concurrentUploadBatchCount;
      v48 = v52->_uploadBatchSize;
      _MBLog();
    }

    v37 = dispatch_semaphore_create(v52->_concurrentUploadBatchCount);
    batchUploadSemaphore = v52->_batchUploadSemaphore;
    v52->_batchUploadSemaphore = v37;

    v39 = dispatch_semaphore_create(v52->_uploadBatchSize * a7);
    openSQLiteFilesSemaphore = v52->_openSQLiteFilesSemaphore;
    v52->_openSQLiteFilesSemaphore = v39;

    v41 = [MBError errorWithCode:202 format:@"Invalidated"];
    invalidationError = v52->_invalidationError;
    v52->_invalidationError = v41;

    if (_os_feature_enabled_impl())
    {
      v43 = NSTemporaryDirectory();
      v44 = [v43 stringByAppendingPathComponent:@"filehashes.db"];

      v45 = [[MBFileHashDB alloc] initWithPath:v44];
      fileHashDB = v52->_fileHashDB;
      v52->_fileHashDB = v45;
    }

    v14 = v53;
    v12 = v54;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [(MBFileHashDB *)self->_fileHashDB path];
  fileHashDB = self->_fileHashDB;
  v17 = 0;
  v5 = [(MBFileHashDB *)fileHashDB close:&v17];
  v6 = v17;
  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to close the SQLite DB at %@: %@", buf, 0x16u);
      v13 = v3;
      v14 = v6;
      _MBLog();
    }
  }

  if (MBIsInternalInstall())
  {
    v8 = MBGetCacheDir();
    v9 = [v8 stringByAppendingPathComponent:@"filehashes.db"];
    v16 = v6;
    v10 = [MBSQLiteFileHandle copySQLiteFileAtPath:v3 toPath:v9 error:&v16];
    v11 = v16;

    if ((v10 & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v3;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to copy the SQLite file at %@: %@", buf, 0x16u);
        v13 = v3;
        v14 = v11;
        _MBLog();
      }
    }
  }

  else
  {
    v11 = v6;
  }

  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v3, v13, v14];
  [(MBPeerTransferDrive *)self stopListeningForFileTransfers];

  v15.receiver = self;
  v15.super_class = MBPeerTransferDrive;
  [(MBPeerTransferDrive *)&v15 dealloc];
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v4 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidated %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[MBPeerTransferDrive contentsOfDirectoryAtPath:options:error:]", "MBPeerTransferDrive.m", 133, "0 && not yet implemented");
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  __assert_rtn("[MBPeerTransferDrive copyItemAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 138, "0 && not yet implemented");
}

- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = v10;
  v23 = v11;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v21 = 0;
  v14 = [(MBPeerTransferDrive *)self uploadFilesAtPaths:v13 options:v12 results:&v21 error:&v20];
  v15 = v21;
  v16 = v20;

  if (!v14)
  {
    if (!v16)
    {
      __assert_rtn("[MBPeerTransferDrive uploadFileAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 146, "error");
    }

    v17 = [v15 objectForKeyedSubscript:v10];

    if (!v17)
    {
      __assert_rtn("[MBPeerTransferDrive uploadFileAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 148, "error");
    }

    if (a6)
    {
      v18 = v17;
      *a6 = v17;
    }

    v16 = v17;
  }

  return v14;
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10018970C;
  v32 = sub_10018971C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10018970C;
  v26 = sub_10018971C;
  v27 = 0;
  v12 = [[MBDriveUploadBatch alloc] initWithPaths:v10 size:0 last:1];
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100189724;
  v18[3] = &unk_1003C0368;
  v20 = &v28;
  v21 = &v22;
  v14 = v13;
  v19 = v14;
  [(MBPeerTransferDrive *)self uploadBatch:v12 options:v11 completion:v18];
  MBGroupWaitForever();
  v15 = v29[5];
  if (v15 || v23[5])
  {
    if (a5)
    {
      *a5 = v15;
    }

    v16 = 0;
    if (a6)
    {
      *a6 = v23[5];
    }
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

- (void)_uploadBatch:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v73 = a4;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 176, "batch");
  }

  v69 = v9;
  if (!v9)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 177, "completion");
  }

  v10 = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!v10)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 179, "fileTransferSession");
  }

  v11 = [v73 objectForKeyedSubscript:@"FileHandleFactory"];
  v76 = [v8 paths];
  v75 = [v76 count];
  if (v75 > self->_uploadBatchSize)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 183, "pathCount <= _uploadBatchSize");
  }

  v12 = [v8 index];
  v13 = [v8 size];
  v71 = [v8 last];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v105 = v12;
    *&v105[4] = 2048;
    *&v105[6] = v75;
    *&v105[14] = 2048;
    *&v105[16] = v13;
    *&v105[24] = 1024;
    *&v105[26] = v71;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Preparing batch i:%u, pc:%lu, s:%llu, l:%d", buf, 0x22u);
    v61 = v13;
    v62 = v71;
    v59 = v12;
    v60 = v75;
    _MBLog();
  }

  v15 = dispatch_group_create();
  v16 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v17 = [[NSMutableArray alloc] initWithCapacity:v75];
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_10018A2D4;
  v91[3] = &unk_1003C0400;
  v91[4] = self;
  v68 = v16;
  v92 = v68;
  v66 = v11;
  v93 = v66;
  v98 = &v100;
  v18 = v8;
  v94 = v18;
  v99 = v12;
  v70 = v10;
  v95 = v70;
  group = v15;
  v96 = group;
  v19 = v17;
  v97 = v19;
  [v76 enumerateKeysAndObjectsUsingBlock:v91];
  [v18 setItems:v19];

  context = objc_autoreleasePoolPush();
  if (v71 & 1) != 0 || (v101[3])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(MBPeerTransferDrive *)self invalidated];
  }

  v21 = self;
  objc_sync_enter(v21);
  v22 = [(NSMutableArray *)v21->_pendingUploadBatches count];
  concurrentUploadBatchCount = v21->_concurrentUploadBatchCount;
  if (v22 >= concurrentUploadBatchCount)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 358, "pendingUploadBatchCount < _concurrentUploadBatchCount");
  }

  v24 = &v13[v21->_pendingUploadSize];
  if (v24 > 0xF423F)
  {
    v25 = 1;
  }

  else
  {
    v25 = v20;
  }

  if ((v25 & 1) != 0 || (v26 = v22 + 1, v22 + 1 >= concurrentUploadBatchCount / 3) && v24 > 0x249EF)
  {
    v27 = 1;
  }

  else
  {
    v28 = v24 >> 5;
    v27 = v26 >= 2 * concurrentUploadBatchCount / 3 && v28 > 0xC34 || concurrentUploadBatchCount <= v26;
  }

  pendingUploadBatches = v21->_pendingUploadBatches;
  if (!pendingUploadBatches)
  {
    v32 = [[NSMutableArray alloc] initWithCapacity:v21->_concurrentUploadBatchCount];
    v33 = v21->_pendingUploadBatches;
    v21->_pendingUploadBatches = v32;

    pendingUploadBatches = v21->_pendingUploadBatches;
  }

  if (![(NSMutableArray *)pendingUploadBatches count:v59]&& v21->_pendingUploadSize)
  {
    v57 = "_pendingUploadBatches.count || !_pendingUploadSize";
    v58 = 367;
LABEL_64:
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", v58, v57);
  }

  [(NSMutableArray *)v21->_pendingUploadBatches addObject:v18];
  v72 = &v13[v21->_pendingUploadSize];
  v21->_pendingUploadSize = v72;
  if (v27)
  {
    v34 = v21->_pendingUploadBatches;
    v35 = v21->_pendingUploadBatches;
    v21->_pendingUploadBatches = 0;

    v21->_pendingUploadSize = 0;
  }

  else
  {
    v34 = 0;
  }

  if ([(NSMutableArray *)v21->_pendingUploadBatches count]>= v21->_concurrentUploadBatchCount)
  {
    v57 = "_pendingUploadBatches.count < _concurrentUploadBatchCount";
    v58 = 376;
    goto LABEL_64;
  }

  objc_sync_exit(v21);

  if (v34)
  {
    v36 = v27;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 378, "flush || !pendingUploadBatches");
  }

  v37 = dword_100421930;
  v38 = dword_100421934;
  v39 = MBGetDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v105 = v12;
    *&v105[4] = 1024;
    *&v105[6] = v37;
    *&v105[10] = 1024;
    *&v105[12] = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Queued batch i:%u, o:%u(%u)", buf, 0x14u);
    _MBLog();
  }

  if (v27)
  {
    v40 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    dispatch_semaphore_wait(v21->_batchUploadSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v41 = [[NSMutableArray alloc] initWithCapacity:{self->_uploadBatchSize * -[NSMutableArray count](v34, "count")}];
    v42 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](v34, "count")}];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10018B3CC;
    v87[3] = &unk_1003C0428;
    v90 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v43 = v41;
    v88 = v43;
    v44 = v42;
    v89 = v44;
    [(NSMutableArray *)v34 enumerateObjectsUsingBlock:v87];
    v45 = [v44 componentsJoinedByString:{@", "}];
    add_explicit = atomic_fetch_add_explicit(&dword_100421930, 1u, memory_order_relaxed);
    v64 = atomic_fetch_add_explicit(&dword_100421934, [v43 count], memory_order_relaxed);
    if ([(MBPeerTransferDrive *)v21 invalidated])
    {
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = v46;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [v43 count];
          *buf = 134218754;
          *v105 = v48;
          *&v105[8] = 2114;
          *&v105[10] = v45;
          *&v105[18] = 1024;
          *&v105[20] = add_explicit;
          *&v105[24] = 1024;
          *&v105[26] = v64;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Invalidating %lu items for batches i:[%{public}@], o:%u(%u)", buf, 0x22u);
        }

        [v43 count];
        _MBLog();
      }

      v49 = [v70 dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018B494;
      block[3] = &unk_1003BC060;
      v85 = v43;
      v86 = v21;
      dispatch_group_async(group, v49, block);
    }

    else
    {
      v50 = MBGetDefaultLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v50;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v43 count];
          *buf = 138544642;
          *v105 = v45;
          *&v105[8] = 2048;
          *&v105[10] = v52;
          *&v105[18] = 2048;
          *&v105[20] = v72;
          *&v105[28] = 2048;
          v106 = (v63 - v40) / 1000000000.0;
          v107 = 1024;
          v108 = add_explicit;
          v109 = 1024;
          v110 = v64;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Uploading batches i:[%{public}@], c:%lu, s:%llu, tq:%.3f, o:%u(%u)", buf, 0x36u);
        }

        [v43 count];
        _MBLog();
      }

      [v70 addItems:v43];
    }

    v34 = 0;
  }

  v53 = dispatch_get_global_queue(17, 0);
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10018B570;
  v77[3] = &unk_1003C0478;
  v54 = v18;
  v83 = v27;
  v78 = v54;
  v79 = v21;
  v82 = v75;
  v55 = v68;
  v80 = v55;
  v56 = v69;
  v81 = v56;
  dispatch_group_notify(group, v53, v77);

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v100, 8);
}

- (id)_queueWithBatch:(id)a3
{
  v4 = a3;
  v5 = [(MBPeerTransferDrive *)self batchQueues];
  v6 = [v4 index];

  v7 = [v5 objectAtIndexedSubscript:{v6 % objc_msgSend(v5, "count")}];

  return v7;
}

- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MBPeerTransferDrive *)self _queueWithBatch:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018BA44;
  v15[3] = &unk_1003C04A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)finishBatchUploadsWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[MBDriveUploadBatch alloc] initWithPaths:0 size:0 last:1];
  v9 = [(MBPeerTransferDrive *)self _queueWithBatch:v8];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018BB6C;
  v13[3] = &unk_1003C04A0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(v9, v13);
}

- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [MBError errorWithCode:4 path:a3 format:@"Download file at path is not implemented"];
  }

  return 0;
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __assert_rtn("[MBPeerTransferDrive downloadFilesAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 472, "0 && not yet implemented");
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v15 = a3;
  v16 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  LOBYTE(a6) = [(MBPeerTransferDrive *)self moveItemsAtPaths:v13 options:v10 results:0 error:a6];
  return a6;
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!v12)
  {
    __assert_rtn("[MBPeerTransferDrive moveItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 482, "fileTransferSession");
  }

  v13 = v12;
  if ([(MBPeerTransferDrive *)self invalidated])
  {
    v14 = self->_invalidationError;
  }

  else
  {
    v15 = objc_opt_new();
    [v15 setRelativePaths:v10];
    v25 = 0;
    v16 = [MBPeerMessenger sendRequestSync:v15 session:v13 error:&v25];
    v14 = v25;

    if (v16)
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  if (!v14)
  {
    __assert_rtn("[MBPeerTransferDrive moveItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 497, "error");
  }

  if (a5)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10018BFB0;
    v22[3] = &unk_1003C04F0;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    v24 = v14;
    v18 = v23;
    [v10 enumerateKeysAndObjectsUsingBlock:v22];
    v19 = v18;
    *a5 = v18;
  }

  if (a6)
  {
    v20 = v14;
    v17 = 0;
    v16 = 0;
    *a6 = v14;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

LABEL_12:

  return v17;
}

- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  LOBYTE(a5) = [(MBPeerTransferDrive *)self removeItemsAtPaths:v10 options:v8 results:0 error:a5, v12];
  return a5;
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!v12)
  {
    __assert_rtn("[MBPeerTransferDrive removeItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 520, "fileTransferSession");
  }

  v13 = v12;
  if ([(MBPeerTransferDrive *)self invalidated])
  {
    v14 = self->_invalidationError;
  }

  else
  {
    v15 = objc_opt_new();
    [v15 setRelativePaths:v10];
    v25 = 0;
    v16 = [MBPeerMessenger sendRequestSync:v15 session:v13 error:&v25];
    v14 = v25;

    if (v16)
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  if (!v14)
  {
    __assert_rtn("[MBPeerTransferDrive removeItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 535, "error");
  }

  if (a5)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10018C2A4;
    v22[3] = &unk_1003C0518;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    v24 = v14;
    v18 = v23;
    [v10 enumerateObjectsUsingBlock:v22];
    v19 = v18;
    *a5 = v18;
  }

  if (a6)
  {
    v20 = v14;
    v17 = 0;
    v16 = 0;
    *a6 = v14;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

LABEL_12:

  return v17;
}

- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4
{
  if (a3)
  {
    *a3 = self->_freeSpace;
  }

  return 1;
}

- (void)startListeningForFileTransfers
{
  v3 = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!v3)
  {
    __assert_rtn("[MBPeerTransferDrive startListeningForFileTransfers]", "MBPeerTransferDrive.m", 567, "fileTransferSession");
  }

  [(MBPeerTransferDrive *)self _resetReceivedFilesProgress];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C590;
  v10[3] = &unk_1003C0540;
  objc_copyWeak(&v11, &location);
  [v3 setReceivedItemHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018C8A0;
  v9[3] = &unk_1003C0568;
  v9[4] = self;
  [MBPeerMessenger registerRequestHandler:v9 forTask:@"MBPeerTaskMove" session:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018CD98;
  v8[3] = &unk_1003C0590;
  v8[4] = self;
  [MBPeerMessenger registerRequestHandler:v8 forTask:@"MBPeerTaskRemove" session:v3];
  [v3 activate];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 selfPublicKey];
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activated the FT session (selfPublicKey: %@)", buf, 0xCu);
    }

    v7 = [v3 selfPublicKey];
    _MBLog();
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)_handleReceivedItem:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBPeerTransferDrive _handleReceivedItem:metadata:error:]", "MBPeerTransferDrive.m", 663, "errorOut");
  }

  v10 = v9;
  v11 = [v8 itemURL];
  if (!v11)
  {
    __assert_rtn("[MBPeerTransferDrive _handleReceivedItem:metadata:error:]", "MBPeerTransferDrive.m", 668, "fromFileURL");
  }

  v12 = v11;
  v13 = [v10 relativePath];
  if (v13)
  {
    v14 = [v10 protectionClass];
    v94 = 0;
    v15 = MBProtectionClassSupportedValue([v14 intValue], 1, &v94);
    v16 = v94;

    v88 = a5;
    if (v15 == 255)
    {
      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v18 = v16;
        goto LABEL_13;
      }

      v23 = [v12 path];
      *buf = 138412546;
      v96 = v23;
      v97 = 2112;
      v98 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "invalid protection class at %@: %@", buf, 0x16u);

      v21 = [v12 path];
      v75 = v21;
      v78 = v16;
      _MBLog();
      v18 = v16;
    }

    else
    {
      v93 = v16;
      v17 = +[MBProtectionClassUtils setWithPathFSR:value:error:](MBProtectionClassUtils, "setWithPathFSR:value:error:", [v12 fileSystemRepresentation], v15, &v93);
      v18 = v93;

      if (v17)
      {
        goto LABEL_14;
      }

      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v18 = 0;
LABEL_14:
        v89 = v13;
        v24 = [(MBPeerTransferDrive *)self fullURLForDriveRelativePath:v13, v75, v78];
        v25 = [v24 URLByDeletingLastPathComponent];
        v26 = +[NSFileManager defaultManager];
        [v26 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:0];

        if (!self->_fileHashDB)
        {
          goto LABEL_42;
        }

        v86 = v25;
        v87 = v8;
        v27 = [v8 sha256HashData];
        fileHashDB = self->_fileHashDB;
        v92 = v18;
        v29 = [(MBFileHashDB *)fileHashDB filePathForHash:v27 error:&v92];
        v83 = v92;

        v84 = v27;
        if (v29)
        {
          v85 = v10;
          v30 = copyfile_state_alloc();
          v31 = copyfile([v29 fileSystemRepresentation], objc_msgSend(v24, "fileSystemRepresentation"), v30, 0x12C0000u);
          v32 = *__error();
          copyfile_state_free(v30);
          if (!v31)
          {
            v46 = MBGetDefaultLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = [v24 path];
              *buf = 138412546;
              v96 = v29;
              v97 = 2112;
              v98 = v47;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Cloned %@ to %@", buf, 0x16u);

              v81 = [v24 path];
              _MBLog();
            }

            v48 = +[NSFileManager defaultManager];
            v91 = v83;
            v49 = [v48 removeItemAtURL:v12 error:&v91];
            v18 = v91;

            v50 = v27;
            if (v49)
            {
              goto LABEL_49;
            }

            v56 = MBGetDefaultLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = [v12 path];
              *buf = 138412546;
              v96 = v57;
              v97 = 2112;
              v98 = v18;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to remove received file %@: %@", buf, 0x16u);

              v76 = [v12 path];
              _MBLog();
            }

LABEL_48:

LABEL_49:
            v25 = v86;
            v8 = v87;
LABEL_50:

            v71 = [v8 fileSize];
            [(MBPeerTransferDrive *)self _updateProgressForReceivedItem:v24 size:v71];
            v72 = MBGetDefaultLog();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              v73 = [v24 path];
              *buf = 138412546;
              v96 = v73;
              v97 = 2048;
              v98 = v71;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Downloaded %@ (%llu)", buf, 0x16u);

              v77 = [v24 path];
              _MBLog();
            }

            v22 = 1;
            v10 = v85;
            goto LABEL_53;
          }

          if (v32 == 18)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v24 path];
              *buf = 138412546;
              v96 = v29;
              v97 = 2112;
              v98 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to clone from %@ to %@. Destination is on a different volume. Will copy instead", buf, 0x16u);

              v79 = [v24 path];
              _MBLog();
            }

            v35 = copyfile_state_alloc();
            v36 = copyfile([v29 fileSystemRepresentation], objc_msgSend(v24, "fileSystemRepresentation"), v35, 0x120000u);
            v37 = *__error();
            copyfile_state_free(v35);
            v10 = v85;
            if (v36)
            {
              v38 = MBGetDefaultLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = [v12 path];
                v40 = [v24 path];
                *buf = 138412802;
                v96 = v39;
                v97 = 2112;
                v98 = v40;
                v99 = 1024;
                LODWORD(v100[0]) = v37;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to copy received file from %@ to %@: %{errno}d", buf, 0x1Cu);

                v41 = [v12 path];
                v80 = [v24 path];
                _MBLog();
              }

              v42 = [v24 path];
              v18 = [MBError posixErrorWithPath:v42 format:@"Failed to move transferred item into place"];

              v43 = v18;
              *v88 = v18;

              v22 = 0;
              v25 = v86;
              v8 = v87;
              v13 = v89;
LABEL_53:

              goto LABEL_54;
            }

            v13 = v89;
            v18 = v83;
            v50 = v27;
            goto LABEL_49;
          }

          v51 = [MBError posixErrorWithPath:v29 format:@"copyfile failed"];

          v52 = MBGetDefaultLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v10 = v85;
            goto LABEL_40;
          }

          v53 = [v24 path];
          *buf = 138413058;
          v96 = v29;
          v97 = 2112;
          v98 = v53;
          v99 = 1024;
          LODWORD(v100[0]) = v31;
          WORD2(v100[0]) = 1024;
          *(v100 + 6) = v32;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "copyfile(%@, %@) failed (%d): %{errno}d", buf, 0x22u);

          v54 = [v24 path];
          _MBLog();
          v10 = v85;
        }

        else
        {
          v44 = self->_fileHashDB;
          v45 = [v24 path];
          v90 = 0;
          LOBYTE(v44) = [(MBFileHashDB *)v44 addFilePath:v45 forHash:v27 error:&v90];
          v29 = v90;

          if (v44)
          {
            v18 = v83;
LABEL_41:

            v25 = v86;
            v8 = v87;
LABEL_42:
            v58 = [v12 fileSystemRepresentation];
            v59 = [v24 fileSystemRepresentation];
            rename(v58, v59, v60);
            if (v61)
            {
              v62 = [v24 path];
              v63 = [MBError posixErrorWithPath:v62 format:@"Failed to move transferred item into place"];

              v64 = MBGetDefaultLog();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v65 = [v12 path];
                v66 = [v24 path];
                *buf = 138412802;
                v96 = v65;
                v97 = 2112;
                v98 = v66;
                v99 = 2112;
                v100[0] = v63;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to move received file from %@ to %@: %@", buf, 0x20u);

                v67 = [v12 path];
                v82 = [v24 path];
                _MBLog();
              }

              v68 = v63;
              v22 = 0;
              *v88 = v63;
              v18 = v63;
              goto LABEL_53;
            }

            v85 = v10;
            v50 = MBGetDefaultLog();
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_50;
            }

            v86 = v25;
            v87 = v8;
            v69 = [v12 path];
            v70 = [v24 path];
            *buf = 138412546;
            v96 = v69;
            v97 = 2112;
            v98 = v70;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Moved %@ to %@", buf, 0x16u);

            v29 = [v12 path];
            v56 = [v24 path];
            _MBLog();
            goto LABEL_48;
          }

          v52 = MBGetDefaultLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v51 = v83;
            goto LABEL_40;
          }

          v55 = [v24 path];
          *buf = 138412802;
          v96 = v55;
          v97 = 2112;
          v98 = v27;
          v99 = 2112;
          v100[0] = v29;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to add file path for hash %@ %@: %@", buf, 0x20u);

          v54 = [v24 path];
          _MBLog();
          v51 = v83;
        }

LABEL_40:
        v18 = v51;
        goto LABEL_41;
      }

      v20 = [v12 path];
      *buf = 138412546;
      v96 = v20;
      v97 = 2112;
      v98 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to set the protection class at %@: %@", buf, 0x16u);

      v21 = [v12 path];
      v75 = v21;
      v78 = v18;
      _MBLog();
    }

    goto LABEL_13;
  }

  [MBError errorWithCode:1 format:@"nil path"];
  *a5 = v22 = 0;
LABEL_54:

  return v22;
}

- (BOOL)_handleMoveItem:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 relativePath];
  v11 = [(MBPeerTransferDrive *)self fullURLForDriveRelativePath:v10];

  v12 = [v11 URLByDeletingLastPathComponent];
  v13 = +[NSFileManager defaultManager];
  [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];

  v14 = [v8 itemURL];
  if (!v14)
  {
    __assert_rtn("[MBPeerTransferDrive _handleMoveItem:metadata:error:]", "MBPeerTransferDrive.m", 775, "item.itemURL");
  }

  v15 = +[NSFileManager defaultManager];
  v16 = [v8 itemURL];
  v36 = 0;
  v17 = [v15 moveItemAtURL:v16 toURL:v11 error:&v36];
  v18 = v36;

  v19 = MBGetDefaultLog();
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v8 itemURL];
      v22 = [v21 path];
      v23 = [v11 path];
      *buf = 138412546;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Moved %@ to %@", buf, 0x16u);

      v24 = [v8 itemURL];
      v25 = [v24 path];
      v33 = [v11 path];
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = [v8 itemURL];
      v27 = [v26 path];
      [v11 path];
      v28 = v35 = a5;
      *buf = 138412802;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to move received file from %@ to %@: %@", buf, 0x20u);

      v29 = [v8 itemURL];
      v30 = [v29 path];
      v34 = [v11 path];
      _MBLog();

      a5 = v35;
    }

    if (a5)
    {
      v31 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (void)cleanUpReceivedFilesDirectory
{
  v2 = [(MBPeerTransferDrive *)self rootURL];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
      v16 = v3;
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = +[NSFileManager defaultManager];
    v18 = 0;
    v10 = [v9 removeItemAtPath:v3 error:&v18];
    v11 = COERCE_DOUBLE(v18);

    if ((v10 & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        v16 = v3;
        v17 = v11;
        _MBLog();
      }
    }

    [NSDate timeIntervalSinceReferenceDate:v16];
    v14 = v13;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v3;
      v21 = 2048;
      v22 = v14 - v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)_resetReceivedFilesProgress
{
  os_unfair_lock_lock(&self->_progressLock);
  self->_filesReceived = 0;
  self->_bytesReceived = 0;
  self->_filesSent = 0;
  self->_bytesSent = 0;

  os_unfair_lock_unlock(&self->_progressLock);
}

- (id)fullURLForDriveRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(MBPeerTransferDrive *)self rootURL];
  v6 = [v5 URLByAppendingPathComponent:v4];

  return v6;
}

- (void)_updateProgressForReceivedItem:(id)a3 size:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x8000000000000000) == 0)
  {
LABEL_4:
    os_unfair_lock_lock(&self->_progressLock);
    self->_bytesReceived += a4;
    v11 = self->_filesReceived + 1;
    self->_filesReceived = v11;
    bytesReceived = self->_bytesReceived;
    os_unfair_lock_unlock(&self->_progressLock);
    v13 = [(MBPeerTransferDrive *)self receiveProgressHandler];
    v10 = v13;
    if (v13)
    {
      v14 = *(v13 + 16);
      *buf = v11;
      *&buf[8] = bytesReceived;
      *&buf[16] = 0;
      v21 = 0;
      v14(v13, buf);
    }

    goto LABEL_9;
  }

  v19 = 0;
  v18 = 0;
  v8 = [v6 getResourceValue:&v19 forKey:NSURLFileSizeKey error:&v18];
  v9 = v19;
  v10 = v18;
  if (v8)
  {
    a4 = [v9 longLongValue];

    goto LABEL_4;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [v7 path];
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get file size of %@: %@", buf, 0x16u);

    v17 = [v7 path];
    _MBLog();
  }

LABEL_9:
}

- (void)_updateProgressForSentItem:(id)a3 size:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x8000000000000000) == 0)
  {
LABEL_4:
    os_unfair_lock_lock(&self->_progressLock);
    self->_bytesSent += a4;
    v11 = self->_filesSent + 1;
    self->_filesSent = v11;
    bytesSent = self->_bytesSent;
    os_unfair_lock_unlock(&self->_progressLock);
    v13 = [(MBPeerTransferDrive *)self sendProgressHandler];
    v10 = v13;
    if (v13)
    {
      v14 = *(v13 + 16);
      *buf = v11;
      *&buf[8] = bytesSent;
      *&buf[16] = 0;
      v21 = 0;
      v14(v13, buf);
    }

    goto LABEL_9;
  }

  v19 = 0;
  v18 = 0;
  v8 = [v6 getResourceValue:&v19 forKey:NSURLFileSizeKey error:&v18];
  v9 = v19;
  v10 = v18;
  if (v8)
  {
    a4 = [v9 longLongValue];

    goto LABEL_4;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [v7 path];
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get file size of %@: %@", buf, 0x16u);

    v17 = [v7 path];
    _MBLog();
  }

LABEL_9:
}

@end