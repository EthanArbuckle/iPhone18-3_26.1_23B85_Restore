@interface MADPhotosBackupAnalysisTask
+ (id)taskWithPhotoLibrary:(id)a3 forTaskID:(unint64_t)a4 encryptionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7 andCancelBlock:(id)a8;
- (BOOL)_shouldPerformBackup;
- (BOOL)isCancelled;
- (MADPhotosBackupAnalysisTask)initWithPhotoLibrary:(id)a3 forTaskID:(unint64_t)a4 encryptionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7 andCancelBlock:(id)a8;
- (id)fetchProcessedAssetsForPhotoLibrary:(id)a3 taskID:(unint64_t)a4;
- (int)_performBackup;
- (int)_performBackupAtFilepath:(id)a3;
- (int)run;
@end

@implementation MADPhotosBackupAnalysisTask

- (MADPhotosBackupAnalysisTask)initWithPhotoLibrary:(id)a3 forTaskID:(unint64_t)a4 encryptionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7 andCancelBlock:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36.receiver = self;
  v36.super_class = MADPhotosBackupAnalysisTask;
  v20 = [(MADPhotosBackupAnalysisTask *)&v36 init];
  v21 = v20;
  v22 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_photoLibrary, a3);
    v22->_taskID = a4;
    objc_storeStrong(&v21->_encryptionManager, a5);
    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v23 = VCPTaskIDDescription();
      v24 = [NSString stringWithFormat:@"  [Photos][Backup][MACD][%@]", v23];
    }

    else
    {
      v23 = VCPTaskIDDescription();
      v24 = [NSString stringWithFormat:@"  [Photos][Backup][%@]", v23];
    }

    logPrefix = v22->_logPrefix;
    v22->_logPrefix = v24;

    if (v17)
    {
      v26 = v17;
    }

    else
    {
      v26 = &stru_100285E40;
    }

    v27 = objc_retainBlock(v26);
    progressHandler = v22->_progressHandler;
    v22->_progressHandler = v27;

    if (v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = &stru_100285E60;
    }

    v30 = objc_retainBlock(v29);
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v30;

    if (v19)
    {
      v32 = v19;
    }

    else
    {
      v32 = &stru_100285E80;
    }

    v33 = objc_retainBlock(v32);
    cancelBlock = v22->_cancelBlock;
    v22->_cancelBlock = v33;
  }

  return v22;
}

+ (id)taskWithPhotoLibrary:(id)a3 forTaskID:(unint64_t)a4 encryptionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7 andCancelBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [[a1 alloc] initWithPhotoLibrary:v14 forTaskID:a4 encryptionManager:v15 progressHandler:v16 completionHandler:v17 andCancelBlock:v18];

  return v19;
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (id)fetchProcessedAssetsForPhotoLibrary:(id)a3 taskID:(unint64_t)a4
{
  v6 = a3;
  [PHAsset mad_sceneConfidenceThresholdForTask:a4];
  v8 = v7;
  v9 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:v6];
  v10 = PHMediaProcessingTaskIDForVCPTaskID();
  v18 = 0;
  LODWORD(v11) = v8;
  v12 = [v6 fetchProcessedAssetsForMediaProcessingTaskID:v10 priority:0 algorithmVersion:v9 sceneConfidenceThreshold:&v18 error:v11];
  v13 = v18;
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        logPrefix = self->_logPrefix;
        *buf = 138412546;
        v20 = logPrefix;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to fetch processed assets: %@\n", buf, 0x16u);
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (int)_performBackupAtFilepath:(id)a3
{
  v58 = a3;
  context = objc_autoreleasePoolPush();
  v66 = NSFileProtectionKey;
  v67 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v56 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 createFileAtPath:v58 contents:0 attributes:v56];

  if ((v5 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        logPrefix = self->_logPrefix;
        *buf = 138412290;
        v61 = logPrefix;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Failed to create backup file", buf, 0xCu);
      }
    }

    v57 = -23;
    goto LABEL_72;
  }

  v59 = [NSOutputStream outputStreamToFileAtPath:v58 append:0];
  [v59 open];
  v52 = [VCPBackupFileHeader headerForTask:self->_taskID];
  v57 = [v52 writeToStream:v59];
  if (v57)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = self->_logPrefix;
        *buf = 138412290;
        v61 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Failed to write backup file header", buf, 0xCu);
      }
    }

    goto LABEL_71;
  }

  v10 = [(MADPhotosBackupAnalysisTask *)self fetchProcessedAssetsForPhotoLibrary:self->_photoLibrary taskID:self->_taskID];
  v11 = 0;
  *&v50[8] = 0;
  v55 = 0;
  v57 = 0;
  type = VCPLogToOSLogType[7];
  *v50 = VCPLogToOSLogType[3];
  v51 = VCPLogToOSLogType[4];
  while (v11 < [v10 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v10 objectAtIndexedSubscript:v11];
    v14 = v59;
    if (((v11 + 1) & 0x7FLL) == 0)
    {
      if ([(MADPhotosBackupAnalysisTask *)self isCancelled])
      {
        v57 = -128;
        v15 = 6;
        goto LABEL_62;
      }

      v16 = +[VCPWatchdog sharedWatchdog];
      [v16 pet];

      v14 = v59;
    }

    if ([v13 vcp_needsProcessingForTask:self->_taskID])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        v17 = self->_logPrefix;
        v18 = [v13 localIdentifier];
        *buf = 138412546;
        v61 = v17;
        v62 = 2112;
        v63 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] No analysis available; skipping", buf, 0x16u);
      }

      v15 = 13;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        v19 = self->_logPrefix;
        v20 = [v13 localIdentifier];
        *buf = 138412546;
        v61 = v19;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Performing backup", buf, 0x16u);

        v14 = v59;
      }

      [v13 fetchPropertySetsIfNeeded];
      v21 = [MADAssetProtoClassForTask(self->_taskID) protoFromPhotosAsset:v13];
      if (v21)
      {
        if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [VSKAsset mad_fetchImageEmbeddingForPhotosAsset:v13];
            if (v22)
            {
              v23 = [v13 mediaAnalysisProperties];
              v24 = [v23 imageEmbeddingVersion];

              [v21 setImageEmbeddingResultsFromVSKAsset:v22 imageEmbeddingVersion:v24];
            }

            v14 = v59;
          }
        }

        v25 = [v21 data];
        if (v25)
        {
          v26 = +[VCPBackupEntryHeader header];
          if ([v25 length] <= 0x200000)
          {
            [v26 setDataLength:{objc_msgSend(v25, "length")}];
            v33 = [v26 writeToStream:v14];
            if (v33)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v50[0]))
              {
                v34 = self->_logPrefix;
                v35 = [v13 localIdentifier];
                *buf = 138412546;
                v61 = v34;
                v62 = 2112;
                v63 = v35;
                v36 = v35;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v50[0], "%@[%@] Failed to write backup entry header", buf, 0x16u);
              }

              v15 = 6;
              v57 = v33;
            }

            else
            {
              v37 = v25;
              v38 = [v59 vcp_writeBuffer:objc_msgSend(v25 ofLength:{"bytes"), objc_msgSend(v25, "length")}];
              if (v38)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v50[0]))
                {
                  v39 = self->_logPrefix;
                  v40 = [v13 localIdentifier];
                  *buf = 138412546;
                  v61 = v39;
                  v62 = 2112;
                  v63 = v40;
                  v41 = v40;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v50[0], "%@[%@] Failed to write backup entry data", buf, 0x16u);
                }

                v15 = 6;
                v57 = v38;
              }

              else
              {
                v15 = 0;
              }

              v42 = *&v50[4];
              if (!v38)
              {
                v42 = *&v50[4] + 1;
              }

              *&v50[4] = v42;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v51))
            {
              v27 = self->_logPrefix;
              v28 = [v13 localIdentifier];
              *buf = 138412546;
              v61 = v27;
              v62 = 2112;
              v63 = v28;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@[%@] Serialized analysis exceeds per-entry limit; skipping", buf, 0x16u);
            }

            v15 = 13;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v51))
          {
            v31 = self->_logPrefix;
            v32 = [v13 localIdentifier];
            *buf = 138412546;
            v61 = v31;
            v62 = 2112;
            v63 = v32;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@[%@] Failed to serialize asset; skipping", buf, 0x16u);
          }

          v15 = 13;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v51))
        {
          v29 = self->_logPrefix;
          v30 = [v13 localIdentifier];
          *buf = 138412546;
          v61 = v29;
          v62 = 2112;
          v63 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@[%@] Failed to create asset protobuf; skipping", buf, 0x16u);
        }

        v15 = 13;
      }

      ++v55;
    }

LABEL_62:

    objc_autoreleasePoolPop(v12);
    if (v15 && v15 != 13)
    {
      goto LABEL_70;
    }

    ++v11;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v43 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v43))
    {
      v44 = self->_logPrefix;
      *buf = 138412802;
      v61 = v44;
      v62 = 2048;
      v63 = *&v50[4];
      v64 = 2048;
      v65 = v55;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Backed up %zu/%zu analysis records", buf, 0x20u);
    }
  }

  [v59 close];
LABEL_70:

LABEL_71:
LABEL_72:

  objc_autoreleasePoolPop(context);
  v45 = +[NSFileManager defaultManager];
  v46 = v45;
  if (v57)
  {
    if ([v45 fileExistsAtPath:v58])
    {
      if (([v46 removeItemAtPath:v58 error:0] & 1) == 0 && MediaAnalysisLogLevel() >= 4)
      {
        v47 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v47))
        {
          v48 = self->_logPrefix;
          *buf = 138412290;
          v61 = v48;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "%@ Failed to delete intermediate file on aborted backup", buf, 0xCu);
        }
      }
    }
  }

  return v57;
}

- (BOOL)_shouldPerformBackup
{
  v3 = MADLastAnalysisBackupTimestampKeyForTask(self->_taskID);
  if (v3)
  {
    v4 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self->_photoLibrary];
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v5 = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
      v6 = [v5 dataStoreValueForKey:v3];

      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = [v4 valueForKey:v3];
      if (!v6)
      {
LABEL_4:
        if (MediaAnalysisLogLevel() >= 6)
        {
          v7 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v7))
          {
            logPrefix = self->_logPrefix;
            *buf = 138412290;
            v31 = logPrefix;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ No last backup time; performing backup", buf, 0xCu);
          }
        }

        v9 = 1;
        goto LABEL_29;
      }
    }

    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    v13 = +[NSDate now];
    [v13 timeIntervalSinceDate:v12];
    v9 = v14 >= 1209600.0;
    if (v14 < 1209600.0)
    {
      [v13 timeIntervalSinceDate:v12];
      if (v18 < 0.0)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v19 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v19))
          {
            v20 = self->_logPrefix;
            *buf = 138412546;
            v31 = v20;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Invalid backup date (%@); adjusting date and skipping backup", buf, 0x16u);
          }
        }

        v21 = +[NSDate now];
        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          photoLibrary = self->_photoLibrary;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000DF3EC;
          v27[3] = &unk_100285478;
          v29 = v23;
          v28 = v3;
          [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v27 error:0];
        }

        else
        {
          [v4 setValue:v23 forKey:v3];
          [v4 commit];
        }

        goto LABEL_28;
      }

      if (MediaAnalysisLogLevel() < 6 || (v15 = VCPLogToOSLogType[6], !os_log_type_enabled(&_os_log_default, v15)))
      {
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v25 = self->_logPrefix;
      *buf = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v12;
      v17 = "%@ Analysis backup up-to-date (%@)";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_28;
      }

      v15 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v15))
      {
        goto LABEL_28;
      }

      v16 = self->_logPrefix;
      *buf = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v12;
      v17 = "%@ Backup outdated (%@); performing backup";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v15, v17, buf, 0x16u);
    goto LABEL_28;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = self->_logPrefix;
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Unknown backup date key; skipping backup", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (int)_performBackup
{
  if ([(MADPhotosBackupAnalysisTask *)self _shouldPerformBackup])
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisBackupDirectory];
    if ([v3 fileExistsAtPath:v4])
    {
      v5 = 0;
    }

    else
    {
      v88 = NSFilePosixPermissions;
      v89 = &off_100294848;
      v6 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v77 = 0;
      v7 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v6 error:&v77];
      v8 = v77;

      if ((v7 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v15 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v15))
          {
            logPrefix = self->_logPrefix;
            *buf = 138412546;
            *&buf[4] = logPrefix;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Failed to create backup directory (%@); backup failed", buf, 0x16u);
          }
        }

        goto LABEL_64;
      }

      v5 = v8;
    }

    v9 = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisIntermediateBackupDirectory];
    v10 = [(PHPhotoLibrary *)self->_photoLibrary mad_intermediateUnencryptedBackupFilepathForTask:self->_taskID];
    v11 = [(PHPhotoLibrary *)self->_photoLibrary mad_intermediateEncryptedBackupFilepathForTask:self->_taskID];
    v12 = v11;
    if (!v9 || !v10 || !v11)
    {
      goto LABEL_62;
    }

    if ([v3 fileExistsAtPath:v9])
    {
      if ([v3 fileExistsAtPath:v10])
      {
        v75 = 0;
        v13 = [v3 removeItemAtPath:v10 error:&v75];
        v14 = v75;
        if (!v13)
        {
LABEL_28:
          if (MediaAnalysisLogLevel() >= 3)
          {
            v27 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v27))
            {
              v28 = self->_logPrefix;
              *buf = 138412546;
              *&buf[4] = v28;
              *&buf[12] = 2112;
              *&buf[14] = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to remove existing intermediate backup (%@); backup failed", buf, 0x16u);
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        v14 = 0;
      }

      if ([v3 fileExistsAtPath:v12])
      {
        v74 = v14;
        v19 = [v3 removeItemAtPath:v12 error:&v74];
        v20 = v74;

        v14 = v20;
        if ((v19 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v86 = NSFilePosixPermissions;
      v87 = &off_100294848;
      v17 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v76 = v5;
      v18 = [v3 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:v17 error:&v76];
      v8 = v76;

      if ((v18 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v25 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            v26 = self->_logPrefix;
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to create intermediate backup directory (%@); backup failed", buf, 0x16u);
          }
        }

        goto LABEL_63;
      }

      v5 = v8;
    }

    if (!self->_encryptionManager)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v29 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          v30 = self->_logPrefix;
          *buf = 138412290;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Unable to encrypt intermediate backup file; backup failed", buf, 0xCu);
        }
      }

      goto LABEL_62;
    }

    v58 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self->_photoLibrary];
    v59 = MADLastAnalysisBackupTimestampKeyForTask(self->_taskID);
    v21 = +[NSDate now];
    [v21 timeIntervalSinceReferenceDate];
    v23 = v22;

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      photoLibrary = self->_photoLibrary;
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_1000E0048;
      v71[3] = &unk_100285478;
      v73 = v23;
      v72 = v59;
      [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v71 error:0];
    }

    else
    {
      [v58 setValue:v23 forKey:v59];
      [v58 commit];
    }

    v31 = [(MADPhotosBackupAnalysisTask *)self _performBackupAtFilepath:v10];
    if (v31)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v32 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = self->_logPrefix;
          *buf = 138412546;
          *&buf[4] = v33;
          *&buf[12] = 1024;
          *&buf[14] = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Failed to create backup file; backup failed (%d)", buf, 0x12u);
        }
      }

      goto LABEL_61;
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000E0054;
    v65[3] = &unk_100285EA8;
    v55 = v10;
    v66 = v55;
    v57 = objc_retainBlock(v65);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v83 = sub_1000E00A8;
    v84 = sub_1000E00B8;
    v85 = dispatch_semaphore_create(0);
    encryptionManager = self->_encryptionManager;
    v35 = [NSURL fileURLWithPath:v9];
    v36 = [NSURL fileURLWithPath:v12];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000E00C0;
    v64[3] = &unk_100285ED0;
    v64[4] = self;
    v64[5] = &v67;
    v64[6] = buf;
    [(PFClientSideEncryptionManager *)encryptionManager archiveDirectoryAtURL:v35 toOutputURL:v36 dataType:1 options:0 entryPredicate:v57 completionHandler:v64];

    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    v63 = 0;
    LOBYTE(v36) = [v3 removeItemAtPath:v55 error:&v63];
    v37 = v63;
    if ((v36 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v38 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v38))
      {
        v39 = self->_logPrefix;
        *v78 = 138412546;
        v79 = v39;
        v80 = 2112;
        v81 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "%@ Failed to remove intermediate unencrypted backup (%@)", v78, 0x16u);
      }
    }

    if (*(v68 + 24) != 1)
    {
LABEL_60:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v67, 8);
LABEL_61:

LABEL_62:
      v8 = v5;
LABEL_63:

LABEL_64:
      return 0;
    }

    v54 = [(PHPhotoLibrary *)self->_photoLibrary mad_backupFilepathForTask:self->_taskID];
    if ([v3 fileExistsAtPath:?])
    {
      v53 = [NSURL fileURLWithPath:v54];
      v40 = [NSURL fileURLWithPath:v12];
      v62 = 0;
      v41 = [v3 replaceItemAtURL:v53 withItemAtURL:v40 backupItemName:0 options:0 resultingItemURL:0 error:&v62];
      v56 = v62;

      if ((v41 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v61 = 0;
      v48 = [v3 moveItemAtPath:v12 toPath:v54 error:&v61];
      v56 = v61;
      if (!v48)
      {
LABEL_47:
        if (MediaAnalysisLogLevel() >= 3)
        {
          v42 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v42))
          {
            v43 = self->_logPrefix;
            *v78 = 138412546;
            v79 = v43;
            v80 = 2112;
            v81 = v56;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to migrate file to backup directory (%@); backup failed", v78, 0x16u);
          }
        }

        v60 = v37;
        v44 = [v3 removeItemAtPath:v12 error:&v60];
        v45 = v60;

        if ((v44 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
        {
          v46 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v46))
          {
            v47 = self->_logPrefix;
            *v78 = 138412546;
            v79 = v47;
            v80 = 2112;
            v81 = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Failed to remove intermediate encrypted backup (%@)", v78, 0x16u);
          }
        }

        v37 = v45;
LABEL_59:

        goto LABEL_60;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v49 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v49))
      {
        v50 = self->_logPrefix;
        v51 = VCPTaskIDDescription();
        *v78 = 138412546;
        v79 = v50;
        v80 = 2112;
        v81 = v51;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v49, "%@ Successfully backed up %@", v78, 0x16u);
      }
    }

    goto LABEL_59;
  }

  return 0;
}

- (int)run
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = self->_logPrefix;
      v5 = VCPTaskIDDescription();
      v7 = 138412546;
      v8 = logPrefix;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Attempting backup for %@", &v7, 0x16u);
    }
  }

  result = [(PHPhotoLibrary *)self->_photoLibrary mad_isBackupRestoreEligibleForTask:self->_taskID];
  if (result)
  {
    return [(MADPhotosBackupAnalysisTask *)self _performBackup];
  }

  return result;
}

@end