@interface MADPhotosBackupProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
- (BOOL)_shouldPerformBackup:(id)a3;
- (BOOL)_shouldPerformBackupForCoreData:(id)a3;
- (BOOL)isCancelled;
- (MADPhotosBackupProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
- (id)_legacyBackupFilepathForTask:(unint64_t)a3 withPhotoLibrary:(id)a4;
- (int)_backupFullAnalysisForCoreDataDBWithPhotoLibrary:(id)a3 currentTimestamp:(int64_t)a4 encryptionManager:(id)a5;
- (int)_backupFullAnalysisForPhotoLibrary:(id)a3 currentTimestamp:(int64_t)a4 encryptionManager:(id)a5;
- (int)_changeLocalIdentifierToCloudIdentifierForPhotoLibrary:(id)a3 managedAssetBatch:(id)a4 managedObjectContext:(id)a5;
- (int)_createBackupAtFilepath:(id)a3 forPhotoLibrary:(id)a4;
- (int)_createBackupForCoreDataDBAtFilepath:(id)a3 forPhotoLibrary:(id)a4 persistentStoreCoordinator:(id)a5;
- (int)_removePersistentStoresForCoordinator:(id)a3;
- (int)_run;
- (int)changeLocalIdentifierToCloudIdentifierForPhotoLibrary:(id)a3 managedObjectContext:(id)a4;
- (int)run;
- (void)_deleteIntermediateBackupDirectory:(id)a3;
- (void)_removeLegacyBackupForTask:(unint64_t)a3 withPhotoLibrary:(id)a4;
- (void)_sanitizeCoreDataDBWithManagedObjectContext:(id)a3;
- (void)dealloc;
@end

@implementation MADPhotosBackupProcessingTask

- (MADPhotosBackupProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v24.receiver = self;
  v24.super_class = MADPhotosBackupProcessingTask;
  v12 = [(MADPhotosBackupProcessingTask *)&v24 init];
  v13 = v12;
  if (v12)
  {
    logPrefix = v12->_logPrefix;
    v12->_logPrefix = @"  [Photos][Backup][MACD][MediaAnalysis]";

    v15 = objc_retainBlock(v9);
    progressHandler = v13->_progressHandler;
    v13->_progressHandler = v15;

    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = &stru_1002866B0;
    }

    v18 = objc_retainBlock(v17);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v18;

    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = &stru_1002866D0;
    }

    v21 = objc_retainBlock(v20);
    cancelBlock = v13->_cancelBlock;
    v13->_cancelBlock = v21;
  }

  return v13;
}

+ (id)taskWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:v9 andProgressHandler:v10 andCompletionHandler:v11 andCancelBlock:v12];

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = MADPhotosBackupProcessingTask;
  [(MADPhotosBackupProcessingTask *)&v4 dealloc];
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

- (BOOL)_shouldPerformBackup:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 vcp_mediaAnalysisDatabaseFilepath];
  if ([v4 fileExistsAtPath:v5])
  {
    v6 = MADLastAnalysisBackupTimestampKeyForTask(1);
    if (!v6)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "  Unknown backup date key; skipping backup", &v39, 2u);
        }
      }

      v19 = 0;
      goto LABEL_52;
    }

    v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v3];
    v8 = [v7 backup_valueForKey:v6];
    if (!v8)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "  No last backup time; performing backup", &v39, 2u);
        }
      }

      v19 = 1;
      goto LABEL_51;
    }

    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v8];
    v10 = +[NSDate now];
    v11 = [v7 backup_analysisRecordsModifiedSinceDate:v9];
    v12 = [v7 backup_valueForKey:@"HasDeletedAssetsSinceLastBackup"];
    [v10 timeIntervalSinceDate:v9];
    if (v13 < 1209600.0)
    {
      [v10 timeIntervalSinceDate:v9];
      if (v14 < 0.0)
      {
        v15 = +[NSDate now];
        [v15 timeIntervalSinceReferenceDate];
        v17 = v16;

        if (MediaAnalysisLogLevel() >= 4)
        {
          v18 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v39 = 138412290;
            *v40 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "  Invalid backup date (%@); adjusting date and skipping backup", &v39, 0xCu);
          }
        }

        [v7 setValue:v17 forKey:v6];
        [v7 commit];
        goto LABEL_10;
      }

      [v10 timeIntervalSinceDate:v9];
      if (v25 >= 604800.0)
      {
        if (v11 >= 0xC8)
        {
          if (MediaAnalysisLogLevel() < 6)
          {
            goto LABEL_49;
          }

          v32 = VCPLogToOSLogType[6];
          if (!os_log_type_enabled(&_os_log_default, v32))
          {
            goto LABEL_49;
          }

          v39 = 67109378;
          *v40 = v11;
          *&v40[4] = 2112;
          *&v40[6] = v9;
          v24 = "  Significant changes (%d) since last backup (%@); performing early backup";
          v33 = v32;
          v34 = 18;
          goto LABEL_48;
        }

        if (v12)
        {
          if (MediaAnalysisLogLevel() < 6)
          {
            goto LABEL_49;
          }

          v38 = VCPLogToOSLogType[6];
          if (!os_log_type_enabled(&_os_log_default, v38))
          {
            goto LABEL_49;
          }

          LOWORD(v39) = 0;
          v24 = "  Has asset deletion changes since last backup; performing early backup";
          v33 = v38;
          v34 = 2;
          goto LABEL_48;
        }
      }

      [v10 timeIntervalSinceDate:v9];
      if (v26 >= 86400.0 && v12 != 0)
      {
        v35 = MediaAnalysisLogLevel();
        if (v35 < 6)
        {
          goto LABEL_49;
        }

        v23 = VCPLogToOSLogType[6];
        if (!os_log_type_enabled(&_os_log_default, v23))
        {
          goto LABEL_49;
        }

        v39 = 138412290;
        *v40 = v9;
        v24 = "  Has asset deletion changes since last backup (%@); performing 1-day early backup";
        goto LABEL_47;
      }

      if (MediaAnalysisLogLevel() < 6 || (v28 = VCPLogToOSLogType[6], !os_log_type_enabled(&_os_log_default, v28)))
      {
LABEL_10:
        v19 = 0;
LABEL_50:

LABEL_51:
LABEL_52:

        goto LABEL_53;
      }

      v39 = 138412290;
      *v40 = v9;
      v29 = "  Analysis backup up-to-date (%@)";
      v30 = v28;
      v31 = 12;
LABEL_57:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v30, v29, &v39, v31);
      goto LABEL_10;
    }

    if (v11)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_49;
      }

      v23 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v23))
      {
        goto LABEL_49;
      }

      v39 = 138412290;
      *v40 = v9;
      v24 = "  Backup outdated (%@); performing backup";
    }

    else
    {
      if (!v12)
      {
        if (MediaAnalysisLogLevel() < 6)
        {
          goto LABEL_10;
        }

        v37 = VCPLogToOSLogType[6];
        if (!os_log_type_enabled(&_os_log_default, v37))
        {
          goto LABEL_10;
        }

        v39 = 67109634;
        *v40 = 0;
        *&v40[4] = 1024;
        *&v40[6] = 0;
        *&v40[10] = 2112;
        *&v40[12] = v9;
        v29 = "  Changes too few (%d, threshold: %d) since last backup (%@); skipping backup";
        v30 = v37;
        v31 = 24;
        goto LABEL_57;
      }

      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_49;
      }

      v23 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v23))
      {
        goto LABEL_49;
      }

      v39 = 138412290;
      *v40 = v9;
      v24 = "  Has asset deletion changes since last backup (%@); performing backup";
    }

LABEL_47:
    v33 = v23;
    v34 = 12;
LABEL_48:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v33, v24, &v39, v34);
LABEL_49:
    v19 = 1;
    goto LABEL_50;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v20 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "  No analysis database present; skipping backup", &v39, 2u);
    }
  }

  v19 = 0;
LABEL_53:

  return v19;
}

- (BOOL)_shouldPerformBackupForCoreData:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [MADPhotosDataStoreClient defaultDatabasePathForPhotoLibrary:v4];
  if ([v5 fileExistsAtPath:v6])
  {
    v7 = MADLastAnalysisBackupTimestampKeyForTask(1);
    if (!v7)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          logPrefix = self->_logPrefix;
          *buf = 138412290;
          v55 = logPrefix;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Unknown backup date key; skipping backup", buf, 0xCu);
        }
      }

      v15 = 0;
      goto LABEL_47;
    }

    if (!+[MADManagedKeyValueStore isMACDReadEnabled](MADManagedKeyValueStore, "isMACDReadEnabled") || ([v4 mad_fetchRequest], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "dataStoreValueForKey:", v7), v8, !v9))
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v16 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          v17 = self->_logPrefix;
          *buf = 138412290;
          v55 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ No last backup time; performing backup", buf, 0xCu);
        }
      }

      v15 = 1;
      goto LABEL_47;
    }

    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
    v50 = +[NSDate now];
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v11 = [v4 mad_fetchRequest];
      v12 = [v11 fetchModifiedAssetCountSinceDate:v10];
    }

    else
    {
      v12 = 0;
    }

    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v20 = [v4 mad_fetchRequest];
      v21 = [v20 dataStoreValueForKey:@"HasDeletedAssetsSinceLastBackup"] != 0;
    }

    else
    {
      v21 = 0;
    }

    [v50 timeIntervalSinceDate:v10];
    if (v22 < 1209600.0)
    {
      [v50 timeIntervalSinceDate:v10];
      if (v23 < 0.0)
      {
        v24 = +[NSDate now];
        [v24 timeIntervalSinceReferenceDate];
        v26 = v25;

        if (MediaAnalysisLogLevel() >= 4)
        {
          v27 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            v28 = self->_logPrefix;
            *buf = 138412546;
            v55 = v28;
            v56 = 2112;
            *v57 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Invalid backup date (%@); adjusting date and skipping backup", buf, 0x16u);
          }
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10010C7F4;
        v51[3] = &unk_100285478;
        v53 = v26;
        v52 = v7;
        [v4 mad_performAnalysisDataStoreChanges:v51 error:0];

        goto LABEL_29;
      }

      [v50 timeIntervalSinceDate:v10];
      if (v32 >= 604800.0)
      {
        if (v12 >= 0xC8)
        {
          if (MediaAnalysisLogLevel() < 6)
          {
            goto LABEL_45;
          }

          v39 = VCPLogToOSLogType[6];
          if (!os_log_type_enabled(&_os_log_default, v39))
          {
            goto LABEL_45;
          }

          v40 = self->_logPrefix;
          *buf = 138412802;
          v55 = v40;
          v56 = 1024;
          *v57 = v12;
          *&v57[4] = 2112;
          *&v57[6] = v10;
          v31 = "%@ Significant changes (%d) since last backup (%@); performing early backup";
          v36 = v39;
          v37 = 28;
          goto LABEL_44;
        }

        if (v21)
        {
          if (MediaAnalysisLogLevel() < 6)
          {
            goto LABEL_45;
          }

          v48 = VCPLogToOSLogType[6];
          if (!os_log_type_enabled(&_os_log_default, v48))
          {
            goto LABEL_45;
          }

          v49 = self->_logPrefix;
          *buf = 138412290;
          v55 = v49;
          v31 = "%@ Has asset deletion changes since last backup; performing early backup";
          v36 = v48;
          v37 = 12;
          goto LABEL_44;
        }
      }

      [v50 timeIntervalSinceDate:v10];
      if (v33 >= 86400.0 && v21)
      {
        if (MediaAnalysisLogLevel() < 6)
        {
          goto LABEL_45;
        }

        v29 = VCPLogToOSLogType[6];
        if (!os_log_type_enabled(&_os_log_default, v29))
        {
          goto LABEL_45;
        }

        v34 = self->_logPrefix;
        *buf = 138412546;
        v55 = v34;
        v56 = 2112;
        *v57 = v10;
        v31 = "%@ Has asset deletion changes since last backup (%@); performing 1-day early backup";
        goto LABEL_43;
      }

      if (MediaAnalysisLogLevel() < 6 || (v46 = VCPLogToOSLogType[6], !os_log_type_enabled(&_os_log_default, v46)))
      {
LABEL_29:
        v15 = 0;
LABEL_46:

LABEL_47:
        goto LABEL_48;
      }

      v47 = self->_logPrefix;
      *buf = 138412546;
      v55 = v47;
      v56 = 2112;
      *v57 = v10;
      v43 = "%@ Analysis backup up-to-date (%@)";
      v44 = v46;
      v45 = 22;
LABEL_59:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v44, v43, buf, v45);
      goto LABEL_29;
    }

    if (v12)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_45;
      }

      v29 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_45;
      }

      v30 = self->_logPrefix;
      *buf = 138412546;
      v55 = v30;
      v56 = 2112;
      *v57 = v10;
      v31 = "%@ Backup outdated (%@); performing backup";
    }

    else
    {
      if (!v21)
      {
        if (MediaAnalysisLogLevel() < 6)
        {
          goto LABEL_29;
        }

        v41 = VCPLogToOSLogType[6];
        if (!os_log_type_enabled(&_os_log_default, v41))
        {
          goto LABEL_29;
        }

        v42 = self->_logPrefix;
        *buf = 138413058;
        v55 = v42;
        v56 = 1024;
        *v57 = 0;
        *&v57[4] = 1024;
        *&v57[6] = 0;
        *&v57[10] = 2112;
        *&v57[12] = v10;
        v43 = "%@ Changes too few (%d, threshold: %d) since last backup (%@); skipping backup";
        v44 = v41;
        v45 = 34;
        goto LABEL_59;
      }

      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_45;
      }

      v29 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_45;
      }

      v35 = self->_logPrefix;
      *buf = 138412546;
      v55 = v35;
      v56 = 2112;
      *v57 = v10;
      v31 = "%@ Has asset deletion changes since last backup (%@); performing backup";
    }

LABEL_43:
    v36 = v29;
    v37 = 22;
LABEL_44:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v36, v31, buf, v37);
LABEL_45:
    v15 = 1;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = self->_logPrefix;
      *buf = 138412290;
      v55 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ No analysis database present; skipping backup", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_48:

  return v15;
}

- (int)_createBackupAtFilepath:(id)a3 forPhotoLibrary:(id)a4
{
  v59 = a3;
  v60 = a4;
  context = objc_autoreleasePoolPush();
  v68 = NSFileProtectionKey;
  v69 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v56 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 createFileAtPath:v59 contents:0 attributes:v56];

  if ((v6 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "  Failed to create backup file", buf, 2u);
      }
    }

    v58 = -23;
    goto LABEL_86;
  }

  v50 = [NSOutputStream outputStreamToFileAtPath:v59 append:0];
  [v50 open];
  v49 = [VCPBackupFileHeader headerForTask:1];
  v58 = [v49 writeToStream:v50];
  if (v58)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "  Failed to write backup file header", buf, 2u);
      }
    }

    goto LABEL_85;
  }

  v52 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v60];
  v48 = [PHAsset vcp_fetchOptionsForLibrary:v60 forTaskID:1];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v67 = v9;
  v10 = [NSArray arrayWithObjects:&v67 count:1];
  [v48 setSortDescriptors:v10];

  v11 = [PHAsset fetchAssetsWithOptions:v48];
  v12 = 0;
  *&v42[8] = 0;
  v54 = 0;
  v58 = 0;
  v53 = MediaAnalysisChangedVersion7;
  v44 = VCPLogToOSLogType[3];
  *v42 = VCPLogToOSLogType[4];
  type = VCPLogToOSLogType[7];
  v45 = VCPLogToOSLogType[6];
  while (v12 < [v11 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v11 objectAtIndexedSubscript:v12];
    if (((v12 + 1) & 0x7FLL) != 0)
    {
      goto LABEL_17;
    }

    if (![(MADPhotosBackupProcessingTask *)self isCancelled])
    {
      v16 = +[VCPWatchdog sharedWatchdog];
      [v16 pet];

LABEL_17:
      v17 = [v14 localIdentifier];
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v18 = [v60 mad_fetchRequest];
        v19 = [v18 fetchAnalysisWithLocalIdentifier:v17 predicate:0];

        if (v19)
        {
          goto LABEL_19;
        }

LABEL_24:
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v45))
        {
          *buf = 138412290;
          v64 = v17;
          v21 = v45;
          v22 = "  [%@] No analysis available; skipping";
          v23 = 12;
LABEL_27:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, v22, buf, v23);
        }

        goto LABEL_28;
      }

      v62 = 0;
      [v52 analysisForAsset:v17 analysis:&v62];
      v19 = v62;
      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_19:
      if ([v19 vcp_version] < v53)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v20 = [v19 vcp_version];
          *buf = 138412546;
          v64 = v17;
          v65 = 1024;
          *v66 = v20;
          v21 = type;
          v22 = "  [%@] Deprecated analysis version (%d); skipping";
          v23 = 18;
          goto LABEL_27;
        }

LABEL_28:
        v15 = 13;
LABEL_75:

        goto LABEL_76;
      }

      v61 = 0;
      v24 = [v60 mad_cloudIdentifierForLocalIdentifier:v17 error:&v61];
      v51 = v61;
      if (v24)
      {
        if ([v14 isPhoto])
        {
          v25 = [VCPProtoAssetAnalysis imageAnalysisFromLegacyDictionary:v19 assetCloudIdentifier:v24];
          goto LABEL_37;
        }

        if ([v14 isVideo])
        {
          v25 = [VCPProtoAssetAnalysis movieAnalysisFromLegacyDictionary:v19 assetCloudIdentifier:v24];
LABEL_37:
          v29 = v25;
          if (v25)
          {
            [v25 setAssetIdentifier:v17];
            v30 = [v14 mediaAnalysisProperties];
            [v29 setVideoEmbeddingVersion:{objc_msgSend(v30, "videoEmbeddingVersion")}];

            v46 = [v29 data];
            if (v46)
            {
              v43 = +[VCPBackupEntryHeader header];
              if ([v46 length] <= 0x200000)
              {
                [v43 setDataLength:{objc_msgSend(v46, "length")}];
                v33 = [v43 writeToStream:v50];
                if (v33)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
                  {
                    *buf = 138412290;
                    v64 = v17;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v44, " [%@] Failed to write backup entry header", buf, 0xCu);
                  }

                  v15 = 6;
                  v58 = v33;
                }

                else
                {
                  v34 = v46;
                  v35 = [v50 vcp_writeBuffer:objc_msgSend(v46 ofLength:{"bytes"), objc_msgSend(v46, "length")}];
                  if (v35)
                  {
                    if (MediaAnalysisLogLevel() < 3)
                    {
                      v15 = 6;
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, v44))
                      {
                        *buf = 138412290;
                        v64 = v17;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v44, " [%@] Failed to write backup entry data", buf, 0xCu);
                      }

                      v15 = 6;
                    }

                    v58 = v35;
                  }

                  else
                  {
                    v15 = 0;
                  }

                  v36 = *&v42[4];
                  if (!v35)
                  {
                    v36 = *&v42[4] + 1;
                  }

                  *&v42[4] = v36;
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v42[0]))
                {
                  *buf = 138412290;
                  v64 = v17;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v42[0], "  [%@] Serialized analysis exceeds per-entry limit; skipping", buf, 0xCu);
                }

                v15 = 13;
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
              {
                *buf = 138412290;
                v64 = v17;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "  [%@] Failed to serialize asset analysis; skipping", buf, 0xCu);
              }

              v15 = 13;
            }

            goto LABEL_74;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
          {
            *buf = 138412290;
            v64 = v17;
            v26 = v44;
            v27 = "  [%@] Failed to convert asset analysis; skipping";
            v28 = 12;
            goto LABEL_50;
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
        {
          v31 = [v14 mediaType];
          v32 = [v14 mediaSubtypes];
          *buf = 138412802;
          v64 = v17;
          v65 = 1024;
          *v66 = v31;
          *&v66[4] = 1024;
          *&v66[6] = v32;
          v26 = v44;
          v27 = "  [%@] Invalid asset (media type %d, subtype %d) for backup; skipping";
          v28 = 24;
LABEL_50:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, v27, buf, v28);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
      {
        *buf = 138412546;
        v64 = v17;
        v65 = 2112;
        *v66 = v51;
        v26 = v44;
        v27 = "  [%@] Failed to fetch asset's cloud identifier: %@; skipping";
        v28 = 22;
        goto LABEL_50;
      }

      v15 = 13;
LABEL_74:

      ++v54;
      goto LABEL_75;
    }

    v58 = -128;
    v15 = 6;
LABEL_76:

    objc_autoreleasePoolPop(v13);
    if (v15 && v15 != 13)
    {
      goto LABEL_84;
    }

    ++v12;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v37 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v37))
    {
      *buf = 134218240;
      v64 = *&v42[4];
      v65 = 2048;
      *v66 = v54;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "  Backed up %zu/%zu full analysis records", buf, 0x16u);
    }
  }

  [v50 close];
LABEL_84:

LABEL_85:
LABEL_86:

  objc_autoreleasePoolPop(context);
  v38 = +[NSFileManager defaultManager];
  v39 = v38;
  if (v58)
  {
    if ([v38 fileExistsAtPath:v59])
    {
      if (([v39 removeItemAtPath:v59 error:0] & 1) == 0 && MediaAnalysisLogLevel() >= 4)
      {
        v40 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v40))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "  Failed to delete intermediate file on aborted backup", buf, 2u);
        }
      }
    }
  }

  return v58;
}

- (int)_backupFullAnalysisForPhotoLibrary:(id)a3 currentTimestamp:(int64_t)a4 encryptionManager:(id)a5
{
  v8 = a3;
  v53 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [v8 photoLibraryURL];
      v11 = [v10 absoluteString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Checking full analysis backup for PHPhotoLibrary (%@) ... ", &buf, 0xCu);
    }
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v8 vcp_mediaAnalysisBackupDirectory];
  if ([v12 fileExistsAtPath:v13])
  {
    v14 = 0;
LABEL_8:
    v18 = [v8 vcp_mediaAnalysisIntermediateBackupDirectory];
    v54 = [v8 mad_intermediateUnencryptedBackupFilepathForTask:1];
    v19 = [v8 mad_intermediateEncryptedBackupFilepathForTask:1];
    v20 = v19;
    if (!v18 || !v54 || !v19)
    {
      v17 = v14;
LABEL_60:

      goto LABEL_61;
    }

    v52 = v19;
    if ([v12 fileExistsAtPath:v18])
    {
      if ([v12 fileExistsAtPath:v54])
      {
        v67 = 0;
        v21 = [v12 removeItemAtPath:v54 error:&v67];
        v22 = v67;
        if (!v21)
        {
LABEL_32:
          if (MediaAnalysisLogLevel() >= 3)
          {
            v31 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v31))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v22;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "  Failed to remove existing intermediate backup (%@); backup failed", &buf, 0xCu);
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        v22 = 0;
      }

      if ([v12 fileExistsAtPath:v52])
      {
        v66 = v22;
        v26 = [v12 removeItemAtPath:v52 error:&v66];
        v27 = v66;

        v22 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v77 = NSFilePosixPermissions;
      v78 = &off_100294A88;
      v24 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v68 = v14;
      v25 = [v12 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v24 error:&v68];
      v17 = v68;

      if ((v25 & 1) == 0)
      {
        v20 = v52;
        if (MediaAnalysisLogLevel() >= 3)
        {
          v30 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v30))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "  Failed to create intermediate backup directory (%@); backup failed", &buf, 0xCu);
          }
        }

        goto LABEL_60;
      }

      v14 = v17;
    }

    v51 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v8];
    v50 = MADLastAnalysisBackupTimestampKeyForTask(1);
    [v51 setValue:a4 forKey:?];
    [v51 commit];
    v28 = [(MADPhotosBackupProcessingTask *)self _createBackupAtFilepath:v54 forPhotoLibrary:v8];
    if (v28)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v29 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "  Failed to create backup file; backup failed (%d)", &buf, 8u);
        }
      }

      goto LABEL_58;
    }

    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10010E04C;
    v60[3] = &unk_100285EA8;
    v32 = v54;
    v61 = v32;
    v49 = objc_retainBlock(v60);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x3032000000;
    v74 = sub_10010E0A0;
    v75 = sub_10010E0B0;
    v76 = dispatch_semaphore_create(0);
    v33 = [NSURL fileURLWithPath:v18];
    v34 = [NSURL fileURLWithPath:v52];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10010E0B8;
    v59[3] = &unk_1002866F8;
    v59[4] = &v62;
    v59[5] = &buf;
    [v53 archiveDirectoryAtURL:v33 toOutputURL:v34 dataType:1 options:0 entryPredicate:v49 completionHandler:v59];

    dispatch_semaphore_wait(*(*(&buf + 1) + 40), 0xFFFFFFFFFFFFFFFFLL);
    v58 = 0;
    LOBYTE(v32) = [v12 removeItemAtPath:v32 error:&v58];
    v35 = v58;
    if ((v32 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v36 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v36))
      {
        *v70 = 138412290;
        v71 = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "  Failed to remove intermediate unencrypted backup (%@)", v70, 0xCu);
      }
    }

    if (*(v63 + 24) != 1)
    {
LABEL_57:

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v62, 8);
LABEL_58:

LABEL_59:
      v17 = v14;
      v20 = v52;
      goto LABEL_60;
    }

    v48 = [v8 vcp_mediaAnalysisBackupFilepath];
    if ([v12 fileExistsAtPath:?])
    {
      v37 = [NSURL fileURLWithPath:v48];
      v38 = [NSURL fileURLWithPath:v52];
      v57 = 0;
      v39 = v37;
      LOBYTE(v37) = [v12 replaceItemAtURL:v37 withItemAtURL:v38 backupItemName:0 options:0 resultingItemURL:0 error:&v57];
      v40 = v57;

      if ((v37 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v56 = 0;
      v45 = [v12 moveItemAtPath:v52 toPath:v48 error:&v56];
      v40 = v56;
      if (!v45)
      {
LABEL_43:
        if (MediaAnalysisLogLevel() >= 3)
        {
          v41 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v41))
          {
            *v70 = 138412290;
            v71 = v40;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "  Failed to migrate file to backup directory (%@); backup failed", v70, 0xCu);
          }
        }

        v55 = v35;
        v42 = [v12 removeItemAtPath:v52 error:&v55];
        v43 = v55;

        if ((v42 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
        {
          v44 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v44))
          {
            *v70 = 138412290;
            v71 = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "  Failed to remove intermediate encrypted backup (%@)", v70, 0xCu);
          }
        }

        v35 = v43;
LABEL_56:

        goto LABEL_57;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v46 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v46))
      {
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "  Successfully backed up analysis database", v70, 2u);
      }
    }

    [v51 removeKey:@"HasDeletedAssetsSinceLastBackup"];
    [v51 commit];
    goto LABEL_56;
  }

  v79 = NSFilePosixPermissions;
  v80 = &off_100294A88;
  v15 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v69 = 0;
  v16 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:v15 error:&v69];
  v17 = v69;

  if (v16)
  {
    v14 = v17;
    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v23 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "  Failed to create backup directory (%@); backup failed", &buf, 0xCu);
    }
  }

LABEL_61:

  return 0;
}

- (int)_changeLocalIdentifierToCloudIdentifierForPhotoLibrary:(id)a3 managedAssetBatch:(id)a4 managedObjectContext:(id)a5
{
  v30 = a3;
  v8 = a4;
  v31 = a5;
  v9 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v11)
  {
    v12 = *v44;
    v13 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [v15 localIdentifier];
        v5 = v16 == 0;

        if (v5)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v13))
          {
            logPrefix = self->_logPrefix;
            *buf = 138412546;
            v48 = logPrefix;
            v49 = 2112;
            v50 = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Managed asset without localIdentifier %@; skipping", buf, 0x16u);
          }
        }

        else
        {
          v17 = [v15 localIdentifier];
          [v9 addObject:v17];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v11);
  }

  v19 = [v30 cloudIdentifierMappingsForLocalIdentifiers:v9];
  v20 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10010E6F4;
  v38[3] = &unk_100286720;
  v21 = v10;
  v39 = v21;
  v22 = v19;
  v40 = v22;
  v41 = self;
  v23 = v20;
  v42 = v23;
  [v31 mad_performAndSaveChanges:v38 error:0];
  if (![v23 count])
  {
    goto LABEL_19;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10010EAF0;
  v34[3] = &unk_100286748;
  v35 = v31;
  v36 = v23;
  v37 = self;
  v33 = 0;
  v24 = [v35 mad_performAndSaveChanges:v34 error:&v33];
  v25 = v33;
  v26 = v25;
  if ((v24 & 1) == 0)
  {
    v5 = [v25 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = self->_logPrefix;
        *buf = 138412546;
        v48 = v28;
        v49 = 2112;
        v50 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to delete assets that do not have cloud identifier: %@", buf, 0x16u);
      }
    }
  }

  if (v24)
  {
LABEL_19:
    v5 = 0;
  }

  return v5;
}

- (int)changeLocalIdentifierToCloudIdentifierForPhotoLibrary:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MADManagedPhotosAsset fetchRequest];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"SELF" ascending:1];
  v28 = v9;
  v10 = [NSArray arrayWithObjects:&v28 count:1];
  [v8 setSortDescriptors:v10];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v11 = [MADPhotosDataStoreBatchIterator iteratorForFetchRequest:v8 mangedObjectContext:v7 batchSize:256];
  v12 = v11;
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010EF34;
    v17[3] = &unk_100286770;
    v18 = v11;
    v19 = self;
    v22 = v24;
    p_buf = &buf;
    v20 = v6;
    v21 = v7;
    [v21 performBlockAndWait:v17];
    v13 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        logPrefix = self->_logPrefix;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = logPrefix;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to create PhotosDataStoreBatchIterator", &buf, 0xCu);
      }
    }

    v13 = -18;
  }

  _Block_object_dispose(v24, 8);
  return v13;
}

- (void)_sanitizeCoreDataDBWithManagedObjectContext:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010F2EC;
  v5[3] = &unk_100286798;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 mad_performAndSaveChanges:v5 error:0];
}

- (int)_removePersistentStoresForCoordinator:(id)a3
{
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 persistentStores];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v6 = *v23;
    v7 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[3];
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 URL];
        v11 = [v10 path];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v7))
        {
          logPrefix = self->_logPrefix;
          *buf = 138412546;
          v27 = logPrefix;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Removing persistent store at %@", buf, 0x16u);
        }

        v21 = 0;
        v13 = [v3 removePersistentStore:v9 error:&v21];
        v14 = v21;
        if ((v13 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          v15 = self->_logPrefix;
          *buf = v17;
          v27 = v15;
          v28 = 2112;
          v29 = v11;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to remove persistent store at %@ with error %@", buf, 0x20u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v4);
  }

  return 0;
}

- (void)_deleteIntermediateBackupDirectory:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412546;
      v14 = logPrefix;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Deleting intermediate backup directory at %@", buf, 0x16u);
    }
  }

  if ([v5 fileExistsAtPath:v4])
  {
    v12 = 0;
    v8 = [v5 removeItemAtPath:v4 error:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v10 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = self->_logPrefix;
        *buf = 138412802;
        v14 = v11;
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Failed to delete intermediate backup directory at %@ with error %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = 0;
  }
}

- (int)_createBackupForCoreDataDBAtFilepath:(id)a3 forPhotoLibrary:(id)a4 persistentStoreCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v11 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      logPrefix = self->_logPrefix;
      v30 = 138412290;
      v31 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Creating backup for CoreData db...", &v30, 0xCu);
    }
  }

  v13 = [v10 persistentStores];
  v14 = [v13 firstObject];
  v15 = v14 == 0;

  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = self->_logPrefix;
        v30 = 138412290;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Failed to find persistent store in persistent store coordinator", &v30, 0xCu);
      }
    }

    v19 = -18;
  }

  else
  {
    v16 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [v16 setPersistentStoreCoordinator:v10];
    [v16 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    [(MADPhotosBackupProcessingTask *)self _sanitizeCoreDataDBWithManagedObjectContext:v16];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = self->_logPrefix;
        v30 = 138412290;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ About to change local ids to cloud ids...", &v30, 0xCu);
      }
    }

    v19 = [(MADPhotosBackupProcessingTask *)self changeLocalIdentifierToCloudIdentifierForPhotoLibrary:v9 managedObjectContext:v16];
    if (v19)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          v21 = self->_logPrefix;
          v30 = 138412290;
          v31 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to change local identifier to cloud identifier", &v30, 0xCu);
        }
      }
    }

    else
    {
      v24 = +[MADPhotosDataStoreClient sharedClient];
      v25 = [NSURL fileURLWithPath:v8];
      v26 = [v24 flushWALCheckpointForPersistentStoreAtURL:v25 persistentStoreCoordinator:v10];

      if (v26)
      {
        v19 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v27 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            v28 = self->_logPrefix;
            v30 = 138412546;
            v31 = v28;
            v32 = 2112;
            v33 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to flush WAL checkpoint for persistent store at %@", &v30, 0x16u);
          }
        }

        v19 = -18;
      }
    }
  }

  return v19;
}

- (int)_backupFullAnalysisForCoreDataDBWithPhotoLibrary:(id)a3 currentTimestamp:(int64_t)a4 encryptionManager:(id)a5
{
  v8 = a3;
  v61 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      logPrefix = self->_logPrefix;
      v11 = [v8 photoLibraryURL];
      v12 = [v11 absoluteString];
      *buf = 138412546;
      *&buf[4] = logPrefix;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Backing up CoreData DB for full analysis with PHPhotoLibrary (%@) ... ", buf, 0x16u);
    }
  }

  v13 = [v8 vcp_mediaAnalysisIntermediateBackupDirectory];
  v14 = [MADPhotosDataStoreClient defaultDatabasePathForPhotoLibrary:v8];
  v15 = [v14 lastPathComponent];
  v16 = [v13 stringByAppendingPathComponent:v15];

  v62 = MADLastAnalysisBackupTimestampKeyForTask(1);
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100110D44;
    v78[3] = &unk_100285478;
    v80 = a4;
    v79 = v62;
    [v8 mad_performAnalysisDataStoreChanges:v78 error:0];
  }

  v17 = +[MADPhotosDataStoreClient sharedClient];
  v18 = [NSURL fileURLWithPath:v16];
  v19 = [v17 copyPersistentStoreForPhotoLibrary:v8 toURL:v18];

  if (!v19)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = self->_logPrefix;
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to initialize new persistent store coordinator", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v20 = [(MADPhotosBackupProcessingTask *)self _createBackupForCoreDataDBAtFilepath:v16 forPhotoLibrary:v8 persistentStoreCoordinator:v19];
  [(MADPhotosBackupProcessingTask *)self _removePersistentStoresForCoordinator:v19];
  if (!v20)
  {
    v60 = +[NSFileManager defaultManager];
    v59 = [v8 vcp_mediaAnalysisBackupDirectory];
    if ([v60 fileExistsAtPath:?])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v26 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          v27 = self->_logPrefix;
          *buf = 138412546;
          *&buf[4] = v27;
          *&buf[12] = 2112;
          *&buf[14] = v59;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Backup directory already exists at %@", buf, 0x16u);
        }
      }

      v55 = 0;
    }

    else
    {
      v91 = NSFilePosixPermissions;
      v92 = &off_100294A88;
      v28 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v77 = 0;
      v29 = [v60 createDirectoryAtPath:v59 withIntermediateDirectories:1 attributes:v28 error:&v77];
      v30 = v77;

      if ((v29 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v46 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v46))
          {
            v47 = self->_logPrefix;
            *buf = 138412802;
            *&buf[4] = v47;
            *&buf[12] = 2112;
            *&buf[14] = v59;
            *&buf[22] = 2112;
            v88 = v30;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Failed to create backup directory at %@ with error %@; backup failed", buf, 0x20u);
          }
        }

        goto LABEL_52;
      }

      v55 = v30;
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v56 = [v8 mad_intermediateEncryptedBackupFilepathForTask:1];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100110D50;
    v71[3] = &unk_100285EA8;
    v31 = v16;
    v72 = v31;
    v58 = objc_retainBlock(v71);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v88 = sub_10010E0A0;
    v89 = sub_10010E0B0;
    v90 = dispatch_semaphore_create(0);
    v32 = [NSURL fileURLWithPath:v13];
    v33 = [NSURL fileURLWithPath:v56];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100110DA4;
    v66[3] = &unk_1002867C0;
    v69 = &v73;
    v66[4] = self;
    v67 = v31;
    v57 = v56;
    v68 = v57;
    v70 = buf;
    [v61 archiveDirectoryAtURL:v32 toOutputURL:v33 dataType:1 options:0 entryPredicate:v58 completionHandler:v66];

    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    if ((v74[3] & 1) == 0)
    {
      [(MADPhotosBackupProcessingTask *)self _deleteIntermediateBackupDirectory:v13];
LABEL_51:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v73, 8);
      v30 = v55;
LABEL_52:

      v25 = 0;
      goto LABEL_53;
    }

    v54 = [v8 vcp_mediaAnalysisCoreDataBackupFilepath];
    if ([v60 fileExistsAtPath:?])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v34 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = self->_logPrefix;
          *v81 = 138412802;
          v82 = v35;
          v83 = 2112;
          v84 = v54;
          v85 = 2112;
          v86 = v57;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ Previous backup exists. Replacing the backup at %@ with %@", v81, 0x20u);
        }
      }

      v36 = [NSURL fileURLWithPath:v54];
      v37 = [NSURL fileURLWithPath:v57];
      v65 = 0;
      v38 = v36;
      LOBYTE(v36) = [v60 replaceItemAtURL:v36 withItemAtURL:v37 backupItemName:0 options:0 resultingItemURL:0 error:&v65];
      v39 = v65;

      if ((v36 & 1) == 0)
      {
LABEL_29:
        if (MediaAnalysisLogLevel() >= 3)
        {
          v40 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v40))
          {
            v41 = self->_logPrefix;
            *v81 = 138412546;
            v82 = v41;
            v83 = 2112;
            v84 = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@ Failed to migrate file to backup directory (%@); backup failed", v81, 0x16u);
          }
        }

        v63 = 0;
        v42 = [v60 removeItemAtPath:v57 error:&v63];
        v43 = v63;
        if ((v42 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
        {
          v44 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v44))
          {
            v45 = self->_logPrefix;
            *v81 = 138412546;
            v82 = v45;
            v83 = 2112;
            v84 = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Failed to remove intermediate encrypted backup (%@)", v81, 0x16u);
          }
        }

LABEL_50:
        [(MADPhotosBackupProcessingTask *)self _deleteIntermediateBackupDirectory:v13];

        goto LABEL_51;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v48 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v48))
        {
          v49 = self->_logPrefix;
          *v81 = 138412802;
          v82 = v49;
          v83 = 2112;
          v84 = v57;
          v85 = 2112;
          v86 = v54;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "%@ Previous backup does not exist. Move intermediate backup from %@ to %@", v81, 0x20u);
        }
      }

      v64 = 0;
      v50 = [v60 moveItemAtPath:v57 toPath:v54 error:&v64];
      v39 = v64;
      if (!v50)
      {
        goto LABEL_29;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v51 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v51))
      {
        v52 = self->_logPrefix;
        *v81 = 138412290;
        v82 = v52;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@ Successfully backed up analysis database", v81, 0xCu);
      }
    }

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [v8 mad_performAnalysisDataStoreChanges:&stru_1002867E0 error:0];
    }

    goto LABEL_50;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = self->_logPrefix;
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to create backup DB at %@", buf, 0x16u);
    }
  }

  [(MADPhotosBackupProcessingTask *)self _deleteIntermediateBackupDirectory:v13];
LABEL_15:
  v25 = -18;
LABEL_53:

  return v25;
}

- (id)_legacyBackupFilepathForTask:(unint64_t)a3 withPhotoLibrary:(id)a4
{
  v5 = [a4 vcp_mediaAnalysisBackupDirectory];
  v6 = v5;
  if (v5)
  {
    switch(a3)
    {
      case 1uLL:
        v7 = @"mediaanalysis.backup";
        goto LABEL_8;
      case 0xAuLL:
        v7 = @"ocranalysis.backup";
        goto LABEL_8;
      case 2uLL:
        v7 = @"sceneanalysis.backup";
LABEL_8:
        v8 = [v5 stringByAppendingPathComponent:v7];
        goto LABEL_13;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v9 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v11[0] = 67109120;
        v11[1] = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Unexpected taskID %d", v11, 8u);
      }
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)_removeLegacyBackupForTask:(unint64_t)a3 withPhotoLibrary:(id)a4
{
  v4 = [MADPhotosBackupProcessingTask _legacyBackupFilepathForTask:"_legacyBackupFilepathForTask:withPhotoLibrary:" withPhotoLibrary:?];
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    if ([v5 fileExistsAtPath:v4])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v6 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          v7 = VCPTaskIDDescription();
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Removing existing legacy backup for %@", buf, 0xCu);
        }
      }

      v12 = 0;
      v8 = [v5 removeItemAtPath:v4 error:&v12];
      v9 = v12;
      if ((v8 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
      {
        v10 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = VCPTaskIDDescription();
          *buf = 138412546;
          v14 = v11;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Failed to remove legacy backup for %@ (%@)", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }
}

- (int)_run
{
  v58 = +[NSDate now];
  v59 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v59 accumulateInt64Value:1 forField:@"BackupStart" andEvent:?];
  v3 = +[VCPPhotoLibraryManager sharedManager];
  v4 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v5 = [v3 photoLibraryWithURL:v4];

  if (![(MADPhotosBackupProcessingTask *)self isCancelled])
  {
    if (([v5 isReadyForAnalysis] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_21;
      }

      v12 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v13 = "[Photos][Backup][SPL] Not ready for analysis; Skipping ...";
      goto LABEL_20;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = [&off_1002962C0 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v7)
    {
      v8 = *v66;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v66 != v8)
          {
            objc_enumerationMutation(&off_1002962C0);
          }

          v10 = *(*(&v65 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          -[MADPhotosBackupProcessingTask _removeLegacyBackupForTask:withPhotoLibrary:](self, "_removeLegacyBackupForTask:withPhotoLibrary:", [v10 unsignedIntegerValue], v5);
          objc_autoreleasePoolPop(v11);
        }

        v7 = [&off_1002962C0 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v7);
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v5])
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_21;
        }

        v12 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v12))
        {
          goto LABEL_21;
        }

        *buf = 0;
        v13 = "  [Photos][Backup][SPL][MACD] MADB migration incomplete; Skipping ...";
LABEL_20:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, 2u);
LABEL_21:
        v6 = 0;
        goto LABEL_81;
      }
    }

    else if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:v5])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_21;
      }

      v12 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v13 = "  [Photos][Backup][SPL] MADB does not exist; Skipping ...";
      goto LABEL_20;
    }

    v14 = [PFClientSideEncryptionManager alloc];
    v15 = [v14 initWithProfile:PFClientSideEncryptionManagerProfileMediaAnalysis];
    v16 = v15;
    v60 = v15;
    if (!v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v40 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v40))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[Photos][Backup][SPL] Failed to create encryption manager", buf, 2u);
        }
      }

      v6 = -18;
      goto LABEL_80;
    }

    [v15 start];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = [&off_1002962D8 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v17)
    {
      v57 = *v62;
      *&v18 = 138412290;
      v55 = v18;
LABEL_26:
      v19 = 0;
      v56 = v17;
      while (1)
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(&off_1002962D8);
        }

        v20 = *(*(&v61 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 unsignedIntegerValue];
        v23 = VCPTaskIDDescription();
        v24 = VCPSignPostLog();
        v25 = os_signpost_id_generate(v24);

        v26 = VCPSignPostLog();
        v27 = v26;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = v55;
          v70 = v23;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPMADLibraryBackup", "_%@", buf, 0xCu);
        }

        v28 = [MADPhotosBackupAnalysisTask taskWithPhotoLibrary:v5 forTaskID:v22 encryptionManager:v60 progressHandler:self->_progressHandler completionHandler:self->_completionHandler andCancelBlock:self->_cancelBlock];
        v6 = [v28 run];
        if (!v6)
        {
          v29 = VCPSignPostLog();
          v30 = v29;
          if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *buf = v55;
            v70 = v23;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v25, "VCPMADLibraryBackup", "_%@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v21);
        v16 = v60;
        if (v6)
        {
          goto LABEL_80;
        }

        if (v56 == ++v19)
        {
          v17 = [&off_1002962D8 countByEnumeratingWithState:&v61 objects:v73 count:16];
          if (v17)
          {
            goto LABEL_26;
          }

          break;
        }
      }
    }

    v31 = +[NSDate now];
    [v31 timeIntervalSinceReferenceDate];
    v33 = v32;

    v16 = v60;
    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      if ([(MADPhotosBackupProcessingTask *)self _shouldPerformBackupForCoreData:v5])
      {
        v34 = VCPSignPostLog();
        v35 = os_signpost_id_generate(v34);

        v36 = VCPSignPostLog();
        v37 = v36;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPMADLibraryBackup_FullAnalysis_CoreDataDB", "", buf, 2u);
        }

        v16 = v60;
        v6 = [(MADPhotosBackupProcessingTask *)self _backupFullAnalysisForCoreDataDBWithPhotoLibrary:v5 currentTimestamp:v33 encryptionManager:v60];
        if (v6)
        {
          goto LABEL_80;
        }

        v38 = VCPSignPostLog();
        v39 = v38;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v35, "VCPMADLibraryBackup_FullAnalysis_CoreDataDB", "", buf, 2u);
        }

        v16 = v60;
      }

      else if (MediaAnalysisLogLevel() >= 5)
      {
        v41 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v41))
        {
          logPrefix = self->_logPrefix;
          *buf = 138412290;
          v70 = logPrefix;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Skip performing backup for CoreData DB", buf, 0xCu);
        }
      }

      if (+[VCPDatabaseWriter isLegacyPersistEnabled]|| ![VCPDatabaseManager removeLegacyDatabaseFilesForPhotoLibrary:v5]|| MediaAnalysisLogLevel() < 3 || (v43 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v43)))
      {
LABEL_79:
        [v16 shutdownWithCompletionHandler:0];
        MediaAnalysisDaemonReleaseSharedDataStores(v5);
        [v58 timeIntervalSinceNow];
        [v59 accumulateDoubleValue:@"BackupDuration" forField:@"com.apple.mediaanalysisd.BackupRunSession" andEvent:-v53];
        v6 = 0;
LABEL_80:

        goto LABEL_81;
      }

      v44 = self->_logPrefix;
      v45 = [v5 photoLibraryURL];
      *buf = 138412546;
      v70 = v44;
      v71 = 2112;
      v72 = v45;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Failed to remove legacy database files for photo library %@", buf, 0x16u);
    }

    else
    {
      if (![(MADPhotosBackupProcessingTask *)self _shouldPerformBackup:v5])
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v52 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v52))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "  [Photos][Backup] Skip performing backup for legacy DB", buf, 2u);
          }
        }

        goto LABEL_79;
      }

      v46 = VCPSignPostLog();
      v47 = os_signpost_id_generate(v46);

      v48 = VCPSignPostLog();
      v49 = v48;
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "VCPMADLibraryBackup_FullAnalysis", "", buf, 2u);
      }

      v16 = v60;
      v6 = [(MADPhotosBackupProcessingTask *)self _backupFullAnalysisForPhotoLibrary:v5 currentTimestamp:v33 encryptionManager:v60];
      if (v6)
      {
        goto LABEL_80;
      }

      v50 = VCPSignPostLog();
      v51 = v50;
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v47, "VCPMADLibraryBackup_FullAnalysis", "", buf, 2u);
      }
    }

    v16 = v60;
    goto LABEL_79;
  }

  v6 = -128;
LABEL_81:

  return v6;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v3 = [(MADPhotosBackupProcessingTask *)self _run];
  v4 = v3;
  if (v3 != -128)
  {
    if (v3)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v5 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v7[0] = 67109120;
          v7[1] = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Photos][Backup][SPL] Failed during processing (%d)", v7, 8u);
        }
      }
    }
  }

  (*(self->_completionHandler + 2))();
  return v4;
}

@end