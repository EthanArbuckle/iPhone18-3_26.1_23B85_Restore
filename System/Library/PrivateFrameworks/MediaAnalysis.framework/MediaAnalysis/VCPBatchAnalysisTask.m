@interface VCPBatchAnalysisTask
+ (VCPBatchAnalysisTask)taskWithPhotoLibrary:(id)a3;
- (BOOL)containsAsset:(id)a3;
- (VCPBatchAnalysisTask)initWithPhotoLibrary:(id)a3;
- (int)mainInternal;
- (void)addAnalysis:(unint64_t)a3 withExistingAnalysis:(id)a4 forAsset:(id)a5;
- (void)addAnalysis:(unint64_t)a3 withExistingAnalysis:(id)a4 forAsset:(id)a5 allowStreaming:(BOOL)a6;
@end

@implementation VCPBatchAnalysisTask

- (VCPBatchAnalysisTask)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VCPBatchAnalysisTask;
  v5 = [(VCPTask *)&v12 initWithPhotoLibrary:v4];
  v6 = v5;
  if (v5)
  {
    v5->_cost = 0.0;
    v5->_allowStreaming = 0;
    v7 = +[NSMutableArray array];
    subtasks = v6->_subtasks;
    v6->_subtasks = v7;

    v9 = _os_feature_enabled_impl();
    v10 = 254;
    if (!v9)
    {
      v10 = 1;
    }

    v6->_taskID = v10;
  }

  return v6;
}

+ (VCPBatchAnalysisTask)taskWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v3];

  return v4;
}

- (void)addAnalysis:(unint64_t)a3 withExistingAnalysis:(id)a4 forAsset:(id)a5 allowStreaming:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  if (([(VCPBatchAnalysisTask *)self isExecuting]& 1) != 0 || [(VCPBatchAnalysisTask *)self isFinished])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v12 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [v11 localIdentifier];
        v23 = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "  [%@] Batch analysis task cannot be modified; dropping", &v23, 0xCu);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [v11 localIdentifier];
        v16 = [v11 vcp_typeDescription];
        v17 = MediaAnalysisTypeShortDescription();
        v23 = 138412802;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "  [%@] Batching %@ for analysis (%@)", &v23, 0x20u);
      }
    }

    v18 = [VCPAssetAnalysisTask taskWithAnalysisTypes:a3 forAsset:v11 withExistingAnalysis:v10];
    v19 = [(VCPTask *)self cancel];
    [v18 setCancel:v19];

    [v18 setAllowStreaming:v6];
    v20 = [(VCPBatchAnalysisTask *)self photosChangeManager];
    [v18 setPhotosChangeManager:v20];

    v21 = [(VCPBatchAnalysisTask *)self embeddingChangeManager];
    [v18 setEmbeddingChangeManager:v21];

    [v18 cost];
    self->_cost = v22 + self->_cost;
    [(NSMutableArray *)self->_subtasks addObject:v18];
  }
}

- (void)addAnalysis:(unint64_t)a3 withExistingAnalysis:(id)a4 forAsset:(id)a5
{
  v9 = a4;
  v8 = a5;
  [(VCPBatchAnalysisTask *)self addAnalysis:a3 withExistingAnalysis:v9 forAsset:v8 allowStreaming:[(VCPBatchAnalysisTask *)self allowStreaming]];
}

- (BOOL)containsAsset:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_subtasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) asset];
        v10 = [v9 localIdentifier];
        v11 = [v4 localIdentifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSMutableArray *)self->_subtasks count];
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Batch analyzing %d assets", buf, 8u);
    }
  }

  v5 = [(VCPTask *)self photoLibrary];
  v56 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v5];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = self->_subtasks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v7)
  {
    v54 = *v76;
    v57 = "ecTask=}32";
    obj = v6;
    do
    {
      v52 = v7;
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v76 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        *buf = 0;
        v74 = 0;
        if (+[MADManagedProcessingStatus isMACDReadEnabled])
        {
          v11 = [(VCPTask *)self photoLibrary];
          v12 = [v11 mad_fetchRequest];
          v72 = 0;
          v73 = 0;
          v13 = [v10 asset];
          v14 = [v13 localIdentifier];
          [v12 fetchProcessingStatus:buf attempts:&v74 lastAttemptDate:&v73 nextAttemptDate:&v72 localIdentifier:v14 taskID:self->_taskID];
          v15 = v73;
          v16 = v72;
        }

        else
        {
          v70 = 0;
          v71 = 0;
          v11 = [v10 asset];
          v12 = [v11 localIdentifier];
          [v56 queryProcessingStatus:buf attempts:&v74 lastAttemptDate:&v71 andNextAttemptDate:&v70 forLocalIdentifier:v12 andTaskID:self->_taskID];
          v15 = v71;
          v16 = v70;
        }

        v17 = +[NSDate now];
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          v18 = [(VCPTask *)self photoLibrary];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1000D3A70;
          v67[3] = &unk_100285130;
          v69 = v74;
          v67[4] = v10;
          v67[5] = self;
          v68 = v17;
          v66 = 0;
          v19 = [v18 mad_performAnalysisDataStoreChanges:v67 error:&v66];
          v20 = v66;

          if ((v19 & 1) == 0)
          {
            v57 = [v20 code];
          }

          if ((v19 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v21 = v74;
          v22 = [v10 asset];
          v23 = [v56 setAttempts:v21 + 1 asset:v22 taskID:self->_taskID status:1 lastAttemptDate:v17];

          if (v23 == -108 || v23 == -36)
          {
            v24 = v23;
          }

          else
          {
            v24 = v23;
            if (v23 != -23)
            {
              v24 = v57;
            }
          }

          if (v23 == -108 || v23 == -36)
          {
            LODWORD(v57) = v24;
LABEL_35:

            goto LABEL_36;
          }

          v57 = v24;
          if (v23 == -23)
          {
            goto LABEL_35;
          }
        }

        [v10 setPreviousStatus:*buf];
        [v10 setPreviousAttempts:v74];
        [v10 setLastAttemptDate:v15];
      }

      v6 = obj;
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v7);
  }

  else
  {
    v57 = v8;
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    v25 = [v56 commit];
    if (v25 == -108 || v25 == -36)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25;
      if (v25 != -23)
      {
        v26 = v57;
      }
    }

    if (v25 == -108 || v25 == -36 || v25 == -23)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v26 = v57;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = self->_subtasks;
  obj = v28;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v62 objects:v79 count:16];
  if (!v29)
  {
    LODWORD(v57) = 0;
    LODWORD(v30) = v26;
    goto LABEL_81;
  }

  LODWORD(v57) = 0;
  v55 = *v63;
  v30 = v26;
  while (2)
  {
    v31 = 0;
    v32 = v30;
    v53 = v29;
    do
    {
      if (*v63 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v62 + 1) + 8 * v31);
      v34 = objc_autoreleasePoolPush();
      v35 = +[VCPWatchdog sharedWatchdog];
      [v35 pet];

      if (!v57)
      {
        if (![(VCPTask *)self isCancelled])
        {
          [v33 start];
          LODWORD(v57) = [v33 error];
LABEL_59:
          v30 = v32;
LABEL_69:
          [(VCPProgressReporter *)self->_progressReporter increaseProcessedJobCountByOne];
          v40 = 1;
          goto LABEL_70;
        }

        LODWORD(v57) = -128;
      }

      if ([v33 previousAttempts])
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          v36 = [(VCPTask *)self photoLibrary];
          v60 = 0;
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_1000D3B18;
          v61[3] = &unk_100282938;
          v61[4] = v33;
          v61[5] = self;
          v37 = [v36 mad_performAnalysisDataStoreChanges:v61 error:&v60];
          v38 = v60;

          if ((v37 & 1) == 0)
          {
            v32 = [v38 code];
          }

          goto LABEL_55;
        }

        v41 = [v33 previousAttempts];
        v42 = [v33 asset];
        taskID = self->_taskID;
        v44 = [v33 previousStatus];
        v45 = [v33 lastAttemptDate];
        v46 = [v56 setAttempts:v41 asset:v42 taskID:taskID status:v44 lastAttemptDate:v45];
      }

      else
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          v39 = [(VCPTask *)self photoLibrary];
          v58 = 0;
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_1000D3C00;
          v59[3] = &unk_100282938;
          v59[4] = v33;
          v59[5] = self;
          v37 = [v39 mad_performAnalysisDataStoreChanges:v59 error:&v58];
          v38 = v58;

          if ((v37 & 1) == 0)
          {
            v32 = [v38 code];
          }

LABEL_55:

          if ((v37 & 1) == 0)
          {
            v40 = 0;
            v30 = v32;
            goto LABEL_70;
          }

          goto LABEL_59;
        }

        v47 = [v33 asset];
        v48 = [v47 localIdentifier];
        v46 = [v56 removeProcessingStatusForLocalIdentifier:v48 andTaskID:self->_taskID];
      }

      if (v46 == -108 || v46 == -36)
      {
        v30 = v46;
      }

      else
      {
        v30 = v46;
        if (v46 != -23)
        {
          v30 = v32;
        }
      }

      v40 = 0;
      if (v46 != -108 && v46 != -36 && v46 != -23)
      {
        goto LABEL_69;
      }

LABEL_70:
      objc_autoreleasePoolPop(v34);
      if (!v40)
      {
        LODWORD(v57) = v30;
        goto LABEL_36;
      }

      v31 = v31 + 1;
      v32 = v30;
    }

    while (v53 != v31);
    v28 = obj;
    v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_81:

  if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    goto LABEL_90;
  }

  v49 = [v56 commit];
  if (v49 == -108 || v49 == -36)
  {
    LODWORD(v26) = v49;
  }

  else
  {
    LODWORD(v26) = v49;
    if (v49 != -23)
    {
      LODWORD(v26) = v30;
    }
  }

  if (v49 != -108 && v49 != -36 && v49 != -23)
  {
LABEL_90:
    obj = [(VCPTask *)self photoLibrary];
    v50 = [VCPBackgroundProcessingMetrics sharedMetricsWithPhotoLibrary:obj];
    [v50 persist];

LABEL_36:
    LODWORD(v26) = v57;
  }

LABEL_37:

  return v26;
}

@end