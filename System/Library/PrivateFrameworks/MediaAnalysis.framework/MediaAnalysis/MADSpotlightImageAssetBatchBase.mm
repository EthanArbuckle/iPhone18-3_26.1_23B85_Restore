@interface MADSpotlightImageAssetBatchBase
- (MADSpotlightImageAssetBatchBase)initWithCancelBlock:(id)block;
- (int)prepare;
- (int)process;
- (int)publish;
@end

@implementation MADSpotlightImageAssetBatchBase

- (MADSpotlightImageAssetBatchBase)initWithCancelBlock:(id)block
{
  blockCopy = block;
  v33.receiver = self;
  v33.super_class = MADSpotlightImageAssetBatchBase;
  v5 = [(MADSpotlightImageAssetBatchBase *)&v33 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = +[NSMutableArray array];
  assetEntries = v5->_assetEntries;
  v5->_assetEntries = v6;

  v8 = objc_retainBlock(blockCopy);
  cancelBlock = v5->_cancelBlock;
  v5->_cancelBlock = v8;

  v10 = [SCMLHandler alloc];
  v40[0] = SCMLUseAnyAvailableDevice;
  v40[1] = SCMLUseImageClassificationModel;
  v41[0] = &__kCFBooleanTrue;
  v41[1] = &off_100294B78;
  v11 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  v32 = 0;
  v12 = [v10 initWithOptions:v11 error:&v32];
  v13 = v32;
  commSafetyHandler = v5->_commSafetyHandler;
  v5->_commSafetyHandler = v12;

  if (v5->_commSafetyHandler && !v13)
  {
    queueName = [(MADSpotlightImageAssetBatchBase *)v5 queueName];
    v16 = [NSString stringWithFormat:@"%@.compute", queueName];

    queueName2 = [(MADSpotlightImageAssetBatchBase *)v5 queueName];
    v18 = [NSString stringWithFormat:@"%@.request", queueName2];

    v19 = dispatch_group_create();
    computeGroup = v5->_computeGroup;
    v5->_computeGroup = v19;

    v21 = v16;
    v22 = dispatch_queue_create([v16 UTF8String], 0);
    computeQueue = v5->_computeQueue;
    v5->_computeQueue = v22;

    v24 = v18;
    v25 = dispatch_queue_create([v18 UTF8String], 0);
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = v25;

LABEL_5:
    v27 = v5;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    logPrefix = [(MADSpotlightImageAssetBatchBase *)v5 logPrefix];
    v30 = objc_opt_class();
    v31 = [v13 description];
    *buf = 138412802;
    v35 = logPrefix;
    v36 = 2112;
    v37 = v30;
    v38 = 2112;
    v39 = v31;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Failed to create %@: %@", buf, 0x20u);
  }

  v27 = 0;
LABEL_9:

  return v27;
}

- (int)prepare
{
  if (MediaAnalysisLogLevel() >= 3)
  {
    v3 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = [(MADSpotlightImageAssetBatchBase *)self logPrefix];
      v6 = 138412290;
      v7 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@][Prepare] prepare() should be implemented in sub-class", &v6, 0xCu);
    }
  }

  return -4;
}

- (int)process
{
  v3 = VCPSignPostLog();
  spid = os_signpost_id_generate(v3);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADFilesystemAssetEntry_Process", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      logPrefix = [(MADSpotlightImageAssetBatchBase *)self logPrefix];
      v8 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 138412802;
      v35 = logPrefix;
      v36 = 1024;
      LODWORD(v37[0]) = v8;
      WORD2(v37[0]) = 2112;
      *(v37 + 6) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@][Process] Processing %d assets (QoS: %@)", buf, 0x1Cu);
    }
  }

  v10 = +[VCPWatchdog sharedWatchdog];
  [v10 pet];

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    v11 = 0;
    v12 = VCPLogToOSLogType[4];
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v11];
      filePath = [v14 filePath];
      if (filePath && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v16 = objc_claimAutoreleasedReturnValue(), [v14 filePath], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "fileExistsAtPath:", v17), v17, v16, filePath, v18))
      {
        computeGroup = self->_computeGroup;
        computeQueue = self->_computeQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10012CF7C;
        block[3] = &unk_100282BC8;
        v32 = v14;
        selfCopy = self;
        dispatch_group_async(computeGroup, computeQueue, block);
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v12))
        {
          logPrefix2 = [(MADSpotlightImageAssetBatchBase *)self logPrefix];
          uniqueIdentifier = [v14 uniqueIdentifier];
          *buf = 138412546;
          v35 = logPrefix2;
          v36 = 2112;
          v37[0] = uniqueIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@][Process][%@] File path does not exist.", buf, 0x16u);
        }

        [v14 setStatus:4294967278];
      }

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v11 < [(NSMutableArray *)self->_assetEntries count]);
  }

  if (MediaAnalysisLogLevel() > 5)
  {
    v23 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      logPrefix3 = [(MADSpotlightImageAssetBatchBase *)self logPrefix];
      *buf = 138412290;
      v35 = logPrefix3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@][Process] Waiting for compute to complete", buf, 0xCu);
    }
  }

  dispatch_group_wait(self->_computeGroup, 0xFFFFFFFFFFFFFFFFLL);
  v25 = VCPSignPostLog();
  v26 = v25;
  if (v29 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADFilesystemAssetEntry_Process", "", buf, 2u);
  }

  cancelBlock = self->_cancelBlock;
  if (cancelBlock && (cancelBlock[2]() & 1) != 0)
  {
    return -128;
  }

  else
  {
    return 0;
  }
}

- (int)publish
{
  if (MediaAnalysisLogLevel() >= 3)
  {
    v3 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = [(MADSpotlightImageAssetBatchBase *)self logPrefix];
      v6 = 138412290;
      v7 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@][Publish] publish() should be implemented in sub-class", &v6, 0xCu);
    }
  }

  return -4;
}

@end