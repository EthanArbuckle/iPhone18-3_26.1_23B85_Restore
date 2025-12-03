@interface MBBackgroundRestoreSizeEstimator
- (MBBackgroundRestoreSizeEstimator)initWithAccount:(id)account serviceManager:(id)manager snapshotUUID:(id)d;
- (MBCKManager)serviceManager;
- (unint64_t)_estimateCurrentBackgroundRestoreSizeWithError:(id *)error;
- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error;
@end

@implementation MBBackgroundRestoreSizeEstimator

- (MBBackgroundRestoreSizeEstimator)initWithAccount:(id)account serviceManager:(id)manager snapshotUUID:(id)d
{
  accountCopy = account;
  managerCopy = manager;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = MBBackgroundRestoreSizeEstimator;
  v12 = [(MBBackgroundRestoreSizeEstimator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_serviceManager, managerCopy);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_snapshotUUID, d);
    persona = [accountCopy persona];
    v19 = 0;
    v15 = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v13->_isRestoringFromFileLists persona:persona error:&v19];
    v16 = v19;

    if ((v15 & 1) == 0)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "=bg-estimate= Failed to determine whether restoring from file lists: %@", buf, 0xCu);
        _MBLog();
      }

      v13->_isRestoringFromFileLists = 0;
    }
  }

  return v13;
}

- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error
{
  v5 = +[NSDate now];
  dateOfLastSizeEstimate = [(MBBackgroundRestoreSizeEstimator *)self dateOfLastSizeEstimate];
  estimatedBackgroundRestoreSize = [(MBBackgroundRestoreSizeEstimator *)self estimatedBackgroundRestoreSize];
  if (estimatedBackgroundRestoreSize && dateOfLastSizeEstimate && ([v5 timeIntervalSinceDate:dateOfLastSizeEstimate], v8 < 30.0))
  {
    unsignedLongLongValue = [estimatedBackgroundRestoreSize unsignedLongLongValue];
  }

  else
  {
    v15 = 0;
    unsignedLongLongValue = [(MBBackgroundRestoreSizeEstimator *)self _estimateCurrentBackgroundRestoreSizeWithError:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }
    }

    else
    {
      [(MBBackgroundRestoreSizeEstimator *)self setDateOfLastSizeEstimate:v5];
      v13 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
      [(MBBackgroundRestoreSizeEstimator *)self setEstimatedBackgroundRestoreSize:v13];
    }
  }

  return unsignedLongLongValue;
}

- (unint64_t)_estimateCurrentBackgroundRestoreSizeWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 73, "error");
  }

  v5 = dispatch_group_create();
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  serviceManager = [(MBBackgroundRestoreSizeEstimator *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 79, "serviceManager");
  }

  account = [(MBBackgroundRestoreSizeEstimator *)self account];
  if (!account)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 81, "account");
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v9 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E32F0;
  block[3] = &unk_1003C1380;
  block[4] = self;
  v10 = serviceManager;
  v65 = v10;
  v11 = account;
  v66 = v11;
  v12 = v6;
  v67 = v12;
  v68 = &v79;
  v69 = &v75;
  v70 = &v71;
  dispatch_group_async(v5, v9, block);

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  if ([v11 isPrimaryAccount])
  {
    dispatch_group_enter(v5);
    v13 = objc_alloc_init(ASDRestoreTotalDownloadSizeEstimateRequest);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1001E37A8;
    v56[3] = &unk_1003C13A8;
    v57 = v12;
    v59 = &v60;
    v58 = v5;
    [v13 startWithCompletionHandler:v56];
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if ([v11 isPrimaryAccount])
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001E38DC;
    v43[3] = &unk_1003BD2C8;
    v45 = &v48;
    v44 = v10;
    v46 = &v83;
    v47 = &v52;
    dispatch_group_async(v5, v9, v43);
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v14 = atomic_load(v84 + 24);
  if (v14)
  {
    v15 = [MBError errorWithCode:17 format:@"Cannot fetch background size estimate for account:%@", v11];
LABEL_12:
    v16 = 0;
    *error = v15;
    goto LABEL_13;
  }

  if ([v12 count])
  {
    v15 = [MBError errorWithErrors:v12];
    goto LABEL_12;
  }

  v18 = v61[3] + v80[3] + v53[3];
  v19 = 100000000 * (v18 / 0x5F5E100);
  v20 = v18 == v19;
  v21 = v19 + 100000000;
  if (v20)
  {
    v16 = v61[3] + v80[3] + v53[3];
  }

  else
  {
    v16 = v21;
  }

  if (self->_isRestoringFromFileLists)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v80[3];
      v24 = v76[3];
      v25 = v72[3];
      v26 = v61[3];
      v27 = v53[3];
      v28 = *(v49 + 24);
      *buf = 138414082;
      v88 = v11;
      v89 = 2048;
      v90 = v23;
      v91 = 2048;
      v92 = v24;
      v93 = 2048;
      v94 = v25;
      v95 = 2048;
      *v96 = v26;
      *&v96[8] = 2048;
      *&v96[10] = v27;
      v97 = 1024;
      v98 = v28;
      v99 = 2048;
      v100 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=bg-estimate= Fetched background restore sizes for account %@ plan:%llu(%llu/%llu) appStore:%llu atc:%llu(%d) total:%llu", buf, 0x4Eu);
      v42 = *(v49 + 24);
      v39 = v61[3];
      v41 = v53[3];
      v35 = v76[3];
      v37 = v72[3];
      v33 = v80[3];
      _MBLog();
    }
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v80[3];
      v30 = v61[3];
      v31 = v53[3];
      v32 = *(v49 + 24);
      *buf = 138413570;
      v88 = v11;
      v89 = 2048;
      v90 = v29;
      v91 = 2048;
      v92 = v30;
      v93 = 2048;
      v94 = v31;
      v95 = 1024;
      *v96 = v32;
      *&v96[4] = 2048;
      *&v96[6] = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=bg-estimate= Fetched background restore sizes for account %@ cache:%llu appStore:%llu atc:%llu(%d) total:%llu", buf, 0x3Au);
      v40 = *(v49 + 24);
      v36 = v61[3];
      v38 = v53[3];
      v34 = v80[3];
      _MBLog();
    }
  }

LABEL_13:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  return v16;
}

- (MBCKManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end