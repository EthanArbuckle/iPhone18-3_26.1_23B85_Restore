@interface VCPMADQuickFaceIDAssetBatch
+ (BOOL)_allowConcurrentFaceProcessing;
+ (id)batchWithAnalysisDatabase:(id)a3 quickFaceIDManager:(id)a4 cancelBlock:(id)a5;
+ (unint64_t)_concurrentQueueCount;
- (VCPMADQuickFaceIDAssetBatch)initWithAnalysisDatabase:(id)a3 quickFaceIDManager:(id)a4 cancelBlock:(id)a5;
- (int)_propagateAssetProcessingStatus;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)prepare;
- (int)process;
- (int)publish;
- (void)_processAssetEntry:(id)a3;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
@end

@implementation VCPMADQuickFaceIDAssetBatch

+ (BOOL)_allowConcurrentFaceProcessing
{
  if ((atomic_load_explicit(&qword_1002B81F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B81F8))
  {
    byte_1002B81F0 = DeviceHasANE();
    __cxa_guard_release(&qword_1002B81F8);
  }

  return byte_1002B81F0;
}

+ (unint64_t)_concurrentQueueCount
{
  if ((atomic_load_explicit(&qword_1002B8208, memory_order_acquire) & 1) == 0)
  {
    sub_10005DC3C();
  }

  if (byte_1002B8200)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (VCPMADQuickFaceIDAssetBatch)initWithAnalysisDatabase:(id)a3 quickFaceIDManager:(id)a4 cancelBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = VCPMADQuickFaceIDAssetBatch;
  v12 = [(VCPMADQuickFaceIDAssetBatch *)&v27 init];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = +[NSMutableArray array];
  assetEntries = v12->_assetEntries;
  v12->_assetEntries = v13;

  objc_storeStrong(&v12->_analysisDatabase, a3);
  objc_storeStrong(&v12->_quickFaceIDManager, a4);
  v15 = objc_retainBlock(v11);
  cancelBlock = v12->_cancelBlock;
  v12->_cancelBlock = v15;

  v17 = +[VCPMADProcessingJobManager sharedManager];
  v12->_processQueuesAllowed = 1;
  if ([objc_opt_class() _allowConcurrentFaceProcessing])
  {
    processQueuesAllowed = [objc_opt_class() _concurrentQueueCount];
    v12->_processQueuesAllowed = processQueuesAllowed;
  }

  else
  {
    processQueuesAllowed = v12->_processQueuesAllowed;
  }

  [v17 registerQueueGroupWithName:@"QuickFaceID" andNumberOfQueues:processQueuesAllowed];
  v19 = dispatch_group_create();
  processGroup = v12->_processGroup;
  v12->_processGroup = v19;

  v21 = [v17 getJobScheduler];
  scheduler = v12->_scheduler;
  v12->_scheduler = v21;

  if (v12->_scheduler)
  {

LABEL_7:
    v23 = v12;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v24 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "Failed to get job scheduler to dispatch analysis jobs onto global queues across batches", v26, 2u);
    }
  }

  v23 = 0;
LABEL_12:

  return v23;
}

+ (id)batchWithAnalysisDatabase:(id)a3 quickFaceIDManager:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithAnalysisDatabase:v8 quickFaceIDManager:v9 cancelBlock:v10];

  return v11;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v8 = a3;
  v22 = a6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) asset];
        v14 = [v13 localIdentifier];
        v15 = [v8 localIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v18 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v18))
            {
              v19 = [v8 localIdentifier];
              *buf = 138412290;
              v28 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[QuickFaceID][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  assetEntries = self->_assetEntries;
  v9 = [VCPMADQuickFaceIDAssetEntry entryWithAsset:v8 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v22];
  [(NSMutableArray *)assetEntries addObject:v9];
LABEL_13:
}

- (int)prepare
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v6 = VCPMAQoSDescription();
      *buf = 67109378;
      v52 = v5;
      v53 = 2112;
      v54 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[QuickFaceID] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v7 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v8 = [(NSMutableArray *)self->_assetEntries firstObject];
    v9 = [v8 asset];
    v10 = [v9 photoLibrary];

    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v10])
    {
      if (!self->_allowBeforeMigration)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v36 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[QuickFaceID][MACD] Skipping processing due to migration incomplete", buf, 2u);
          }
        }

        LODWORD(v2) = -18;
        goto LABEL_54;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[QuickFaceID][MACD] Skipping processing status setting due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      v26 = VCPSignPostLog();
      v2 = os_signpost_id_generate(v26);

      v27 = VCPSignPostLog();
      v28 = v27;
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VCPMADQuickFaceIDAssetBatch_Prepare", "", buf, 2u);
      }

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10005B5F0;
      v48[3] = &unk_100282938;
      v48[4] = self;
      v49 = v7;
      v47 = 0;
      v29 = [(NSMutableArray *)v10 mad_performAnalysisDataStoreChanges:v48 error:&v47];
      v30 = v47;
      v31 = v30;
      if (v29)
      {
        v32 = VCPSignPostLog();
        v33 = v32;
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v2, "VCPMADQuickFaceIDAssetBatch_Prepare", "", buf, 2u);
        }
      }

      else
      {
        LODWORD(v2) = [v30 code];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v37 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            v38 = [(NSMutableArray *)self->_assetEntries count];
            *buf = 67109378;
            v52 = v38;
            v53 = 2112;
            v54 = v31;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[QuickFaceID][MACD] Failed to prepare %d assets: %@", buf, 0x12u);
          }
        }
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(v2) = 0;
LABEL_54:

    v35 = v2;
    goto LABEL_55;
  }

  v12 = VCPSignPostLog();
  spid = os_signpost_id_generate(v12);

  v13 = VCPSignPostLog();
  v14 = v13;
  v41 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADQuickFaceIDAssetBatch_LegacyPrepare", "", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = self->_assetEntries;
  v15 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v15)
  {
    v16 = *v44;
LABEL_15:
    v17 = 0;
    v18 = v2;
    while (1)
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v43 + 1) + 8 * v17);
      analysisDatabase = self->_analysisDatabase;
      v21 = [v19 previousAttempts];
      v22 = [v19 asset];
      v23 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:v21 + 1 asset:v22 taskID:8 status:1 lastAttemptDate:v7];

      if (v23 == -108)
      {
        v2 = v23;
      }

      else
      {
        v24 = v23 == -36 || v23 == -23;
        v2 = v23;
        if (!v24)
        {
          v2 = v18;
        }
      }

      if (v23 == -108)
      {
        goto LABEL_54;
      }

      if (v23 == -36 || v23 == -23)
      {
        goto LABEL_54;
      }

      v17 = v17 + 1;
      v18 = v2;
      if (v15 == v17)
      {
        v15 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  v34 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
  if (v34 == -108 || v34 == -36)
  {
    v35 = v34;
  }

  else
  {
    v35 = v34;
    if (v34 != -23)
    {
      v35 = v2;
    }
  }

  if (v34 != -108 && v34 != -36 && v34 != -23)
  {
    v40 = VCPSignPostLog();
    v10 = v40;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &v10->super.super, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADQuickFaceIDAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    goto LABEL_53;
  }

LABEL_55:

  return v35;
}

- (void)_processAssetEntry:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [v4 asset];
      v7 = [v6 localIdentifier];
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[QuickFaceID][%@] Processing asset", buf, 0xCu);
    }
  }

  v8 = +[VCPWatchdog sharedWatchdog];
  [v8 pet];

  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPMADQuickFaceIDAssetBatch_ProcessAsset", "", buf, 2u);
  }

  quickFaceIDManager = self->_quickFaceIDManager;
  v14 = [v4 asset];
  v23 = 0;
  v24 = 0;
  v15 = [(VCPPhotosQuickFaceIdentificationManager *)quickFaceIDManager processAsset:v14 onDemandDetection:1 detectedFaces:&v24 detectedPersons:&v23];
  v16 = v24;
  v17 = v23;
  [v4 setStatus:v15];

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v10, "VCPMADQuickFaceIDAssetBatch_ProcessAsset", "", buf, 2u);
  }

  if ([v4 status])
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v21 = [v4 asset];
        v22 = [v21 localIdentifier];
        *buf = 138412290;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[QuickFaceID][%@] Failed to process asset", buf, 0xCu);
      }
    }
  }

  else
  {
    [v4 setDetectedFaces:v16];
    [v4 setDetectedPersons:v17];
  }
}

- (int)process
{
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPMADQuickFaceIDAssetBatch_Process", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 67109378;
      LODWORD(v38[0]) = v8;
      WORD2(v38[0]) = 2112;
      *(v38 + 6) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[QuickFaceID] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v10 = +[VCPWatchdog sharedWatchdog];
  [v10 pet];

  v11 = +[NSMutableArray array];
  v12 = 0;
  v13 = VCPLogToOSLogType[5];
  *&v14 = 138412290;
  v34 = v14;
  while (v12 < [(NSMutableArray *)self->_assetEntries count])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v12];
    cancelBlock = self->_cancelBlock;
    if (cancelBlock && cancelBlock[2]())
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v13))
      {
        v18 = [v16 asset];
        v19 = [v18 localIdentifier];
        *buf = v34;
        v38[0] = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[QuickFaceID][%@] Processing canceled; skipping asset", buf, 0xCu);
      }

      [v16 setStatus:4294967168];
    }

    else
    {
      v20 = [v16 asset];
      v21 = [v20 vcp_isPano];

      if (v21)
      {
        [v11 addObject:v16];
      }

      else
      {
        processGroup = self->_processGroup;
        scheduler = self->_scheduler;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10005C0B0;
        v35[3] = &unk_100282BC8;
        v35[4] = self;
        v36 = v16;
        scheduler[2](scheduler, @"QuickFaceID", processGroup, v35);
      }
    }

    objc_autoreleasePoolPop(v15);
    ++v12;
  }

  dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);
  v24 = 0;
  while (v24 < [v11 count])
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [v11 objectAtIndexedSubscript:v24];
    v27 = self->_cancelBlock;
    if (v27 && v27[2]())
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v13))
      {
        v28 = [v26 asset];
        v29 = [v28 localIdentifier];
        *buf = v34;
        v38[0] = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[QuickFaceID][%@] Processing canceled; skipping asset", buf, 0xCu);
      }

      [v26 setStatus:4294967168];
      v30 = 0;
    }

    else
    {
      [(VCPMADQuickFaceIDAssetBatch *)self _processAssetEntry:v26];
      v30 = 1;
    }

    objc_autoreleasePoolPop(v25);
    ++v24;
    if ((v30 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v31 = self->_cancelBlock;
  if (v31 && (v31[2]() & 1) != 0)
  {
LABEL_32:
    v32 = -128;
    goto LABEL_34;
  }

  v32 = 0;
LABEL_34:

  return v32;
}

- (int)_propagateAssetProcessingStatus
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_assetEntries;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 status];
      if (v9 == -128)
      {
        v3 = -128;
      }

      else if ([v7 status] == -23808)
      {
        v3 = -23808;
      }

      objc_autoreleasePoolPop(v8);
      if (v9 == -128)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (int)_publishProcessingStatusForPhotoLibrary:(id)a3
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005C2EC;
  v9[3] = &unk_100283AD0;
  v9[4] = self;
  v3 = [a3 mad_performAnalysisDataStoreChanges:v9 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 code];
  }

  return v6;
}

- (int)_publishProcessingStatusToLegacyDatabase
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v3)
  {
    goto LABEL_51;
  }

  v36 = *v39;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v5 = v2;
    v35 = v3;
    do
    {
      if (*v39 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v38 + 1) + 8 * v4);
      v7 = objc_autoreleasePoolPush();
      v8 = [v6 asset];
      v9 = [v8 localIdentifier];
      v10 = [NSString stringWithFormat:@"[QuickFaceID][%@][Legacy]", v9];

      if (![v6 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

        analysisDatabase = self->_analysisDatabase;
        v18 = [v6 asset];
        v19 = [v18 localIdentifier];
        v20 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v19 andTaskID:8];

LABEL_33:
        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

LABEL_38:
        v31 = 0;
        if (v20 != -108 && v20 != -36 && v20 != -23)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if ([v6 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v6 status];
        v21 = MADProcessingStatusForOSStatus();
        v22 = [v6 asset];
        v23 = [v6 currentAttemptDate];
        v24 = [v22 mad_nextAttemptDateForStatus:v21 currentAttemptDate:v23 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v25 = self->_analysisDatabase;
        v26 = [v6 asset];
        v27 = [v26 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v25 updateProcessingStatus:v21 andNextAttemptDate:v24 forLocalIdentifier:v27 andTaskID:8];

        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

        goto LABEL_38;
      }

      if (![v6 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        v28 = self->_analysisDatabase;
        v29 = [v6 asset];
        v30 = [v29 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v28 removeProcessingStatusForLocalIdentifier:v30 andTaskID:8];

        goto LABEL_33;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v11 = self->_analysisDatabase;
      v12 = [v6 previousAttempts];
      v13 = [v6 asset];
      v14 = [v6 previousStatus];
      v15 = [v6 lastAttemptDate];
      v16 = [(VCPDatabaseWriter *)v11 setAttempts:v12 asset:v13 taskID:8 status:v14 lastAttemptDate:v15];

      if (v16 == -108 || v16 == -36)
      {
        v2 = v16;
      }

      else
      {
        v2 = v16;
        if (v16 != -23)
        {
          v2 = v5;
        }
      }

      v31 = 0;
      if (v16 != -108 && v16 != -36 && v16 != -23)
      {
LABEL_41:
        v31 = 1;
      }

LABEL_42:

      objc_autoreleasePoolPop(v7);
      if (!v31)
      {
        goto LABEL_52;
      }

      v4 = v4 + 1;
      v5 = v2;
    }

    while (v35 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v3);
LABEL_51:
  LODWORD(v2) = 0;
LABEL_52:

  return v2;
}

- (int)publish
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSMutableArray *)self->_assetEntries count];
      *buf = 134217984;
      v52 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[QuickFaceID] Persisting %lu assets", buf, 0xCu);
    }
  }

  if (![(NSMutableArray *)self->_assetEntries count])
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_assetEntries firstObject];
  v6 = [v5 asset];
  v41 = [v6 photoLibrary];

  v7 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v41];
  if (v7 && !self->_allowBeforeMigration)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v34 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v34))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[QuickFaceID] Skipping persisting due to migration incomplete", buf, 2u);
      }
    }

    v11 = -18;
  }

  else
  {
    v8 = VCPSignPostLog();
    spid = os_signpost_id_generate(v8);

    v9 = VCPSignPostLog();
    v10 = v9;
    v36 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADQuickFaceIDAssetBatch_Publish", "", buf, 2u);
    }

    v11 = [(VCPMADQuickFaceIDAssetBatch *)self _propagateAssetProcessingStatus];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10005D450;
    v47[3] = &unk_100282BC8;
    v37 = v41;
    v48 = v37;
    v49 = self;
    v39 = objc_retainBlock(v47);
    cancelBlock = self->_cancelBlock;
    v46 = 0;
    v13 = [v37 mad_performChangesAndWait:v39 activity:8 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100284348 error:&v46];
    v40 = v46;
    if ((v13 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 138412290;
          v52 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[QuickFaceID] Failed to persist person identification results to Photos (%@)", buf, 0xCu);
        }
      }

      if ([v40 code] == -128)
      {
        v15 = 4294967168;
      }

      else
      {
        v15 = 4294967278;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = self->_assetEntries;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v17)
      {
        v18 = *v43;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            if (![v20 status])
            {
              [v20 setStatus:v15];
            }

            objc_autoreleasePoolPop(v21);
          }

          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v17);
      }

      v22 = [v40 code];
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == 0;
      }

      if (!v23)
      {
        v11 = v22;
      }
    }

    if (v7)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v24 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[QuickFaceID] Skipping processing status updating due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        v25 = [(VCPMADQuickFaceIDAssetBatch *)self _publishProcessingStatusForPhotoLibrary:v37];
        if (!v11 && v25 != 0)
        {
          v11 = v25;
        }
      }

      if (+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        v27 = [(VCPMADQuickFaceIDAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
        v28 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        if (v11)
        {
          v29 = 1;
        }

        else
        {
          v29 = v27 == 0;
        }

        if (v29)
        {
          v30 = v11;
        }

        else
        {
          v30 = v27;
        }

        if (v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = v28 == 0;
        }

        if (v31)
        {
          v11 = v30;
        }

        else
        {
          v11 = v28;
        }
      }
    }

    v32 = VCPSignPostLog();
    v33 = v32;
    if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADQuickFaceIDAssetBatch_Publish", "", buf, 2u);
    }
  }

  return v11;
}

@end