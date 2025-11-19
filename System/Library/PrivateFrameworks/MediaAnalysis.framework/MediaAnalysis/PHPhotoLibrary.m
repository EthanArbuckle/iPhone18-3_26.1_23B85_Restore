@interface PHPhotoLibrary
- (BOOL)mad_isBackupRestoreEligibleForTask:(unint64_t)a3;
- (BOOL)mad_rebuildCoreDataStore;
- (BOOL)vcp_openAndWaitWithUpgrade:(BOOL)a3 error:(id *)a4;
- (id)mad_backupFilepathForTask:(unint64_t)a3;
- (id)mad_intermediateEncryptedBackupFilepathForTask:(unint64_t)a3;
- (id)mad_intermediateEncryptedRestoreFilepathForTask:(unint64_t)a3;
- (id)mad_intermediateUnencryptedBackupFilepathForTask:(unint64_t)a3;
- (id)mad_intermediateUnencryptedRestoreFilepathForTask:(unint64_t)a3;
- (id)vcp_mediaAnalysisBackupDirectory;
- (id)vcp_mediaAnalysisCoreDataBackupFilepath;
- (id)vcp_mediaAnalysisIntermediateBackupDirectory;
- (id)vcp_mediaAnalysisIntermediateRestoreDirectory;
- (int)_resetChangeTokenAndProcessingStatusForFaceProcessing;
- (int)_resetCurrentFaceProgress;
- (int)_resetEmbeddingClusteringProgress;
- (int)_signalPhotosResetAvailabilityWithError:(id *)a3;
- (int)_updateAnalysisInfoWithCurrentVersion:(int)a3 timestamp:(int64_t)a4 taskID:(unint64_t)a5 fetchRequest:(id)a6 changeRequest:(id)a7;
- (int)clearCheckpointTimestampForTask:(unint64_t)a3 changeRequest:(id)a4;
- (int)mad_bumpFaceProcessingVersionIfNeededWithError:(id *)a3;
- (int)mad_migrateVectorDatabaseIfNeededWithError:(id *)a3;
- (int)mad_updateAnalysisMetricsOnVersionUpdateWithError:(id *)a3;
- (int)vcp_bumpFaceProcessingToVersion:(int)a3 withError:(id *)a4;
@end

@implementation PHPhotoLibrary

- (id)vcp_mediaAnalysisBackupDirectory
{
  v2 = [(PHPhotoLibrary *)self vcp_mediaAnalysisDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@".backup"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)vcp_mediaAnalysisCoreDataBackupFilepath
{
  v2 = [(PHPhotoLibrary *)self vcp_mediaAnalysisBackupDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"mediaanalysis_cd.aea"];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Unexpected nil backup directory", v7, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

- (id)mad_backupFilepathForTask:(unint64_t)a3
{
  v4 = [(PHPhotoLibrary *)self vcp_mediaAnalysisBackupDirectory];
  v5 = v4;
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Unexpected nil backup directory", &v12, 2u);
      }
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"faceanalysis.aea";
      goto LABEL_18;
    }

    if (a3 == 10)
    {
      v6 = @"ocranalysis.aea";
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = @"mediaanalysis.aea";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ unavailable for backup", &v12, 0xCu);
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = @"sceneanalysis.aea";
LABEL_18:
  v10 = [v4 stringByAppendingPathComponent:v6];
LABEL_19:

  return v10;
}

- (id)vcp_mediaAnalysisIntermediateBackupDirectory
{
  v2 = [(PHPhotoLibrary *)self vcp_mediaAnalysisDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@".intermediate_backup"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mad_intermediateUnencryptedBackupFilepathForTask:(unint64_t)a3
{
  v4 = [(PHPhotoLibrary *)self vcp_mediaAnalysisIntermediateBackupDirectory];
  v5 = v4;
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Unexpected nil intermediate backup directory", &v12, 2u);
      }
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"faceanalysis_unencrypted.backup";
      goto LABEL_18;
    }

    if (a3 == 10)
    {
      v6 = @"ocranalysis_unencrypted.backup";
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = @"mediaanalysis_unencrypted.backup";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ unavailable for backup", &v12, 0xCu);
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = @"sceneanalysis_unencrypted.backup";
LABEL_18:
  v10 = [v4 stringByAppendingPathComponent:v6];
LABEL_19:

  return v10;
}

- (id)mad_intermediateEncryptedBackupFilepathForTask:(unint64_t)a3
{
  v4 = [(PHPhotoLibrary *)self vcp_mediaAnalysisIntermediateBackupDirectory];
  v5 = v4;
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Unexpected nil intermediate backup directory", &v12, 2u);
      }
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"faceanalysis.aea";
      goto LABEL_18;
    }

    if (a3 == 10)
    {
      v6 = @"ocranalysis.aea";
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = @"mediaanalysis.aea";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ unavailable for backup", &v12, 0xCu);
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = @"sceneanalysis.aea";
LABEL_18:
  v10 = [v4 stringByAppendingPathComponent:v6];
LABEL_19:

  return v10;
}

- (id)vcp_mediaAnalysisIntermediateRestoreDirectory
{
  v2 = [(PHPhotoLibrary *)self vcp_mediaAnalysisDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@".intermediate_restore"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mad_intermediateEncryptedRestoreFilepathForTask:(unint64_t)a3
{
  v4 = [(PHPhotoLibrary *)self vcp_mediaAnalysisIntermediateRestoreDirectory];
  v5 = v4;
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Unexpected nil intermediate restore directory", &v12, 2u);
      }
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"faceanalysis.aea";
      goto LABEL_18;
    }

    if (a3 == 10)
    {
      v6 = @"ocranalysis.aea";
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = @"mediaanalysis.aea";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ unavailable for restore", &v12, 0xCu);
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = @"sceneanalysis.aea";
LABEL_18:
  v10 = [v4 stringByAppendingPathComponent:v6];
LABEL_19:

  return v10;
}

- (id)mad_intermediateUnencryptedRestoreFilepathForTask:(unint64_t)a3
{
  v4 = [(PHPhotoLibrary *)self vcp_mediaAnalysisIntermediateRestoreDirectory];
  v5 = v4;
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Unexpected nil intermediate restore directory", &v12, 2u);
      }
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = @"faceanalysis_unencrypted.backup";
      goto LABEL_18;
    }

    if (a3 == 10)
    {
      v6 = @"ocranalysis_unencrypted.backup";
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = @"mediaanalysis_unencrypted.backup";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ unavailable for restore", &v12, 0xCu);
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = @"sceneanalysis_unencrypted.backup";
LABEL_18:
  v10 = [v4 stringByAppendingPathComponent:v6];
LABEL_19:

  return v10;
}

- (BOOL)mad_isBackupRestoreEligibleForTask:(unint64_t)a3
{
  v3 = a3;
  if (a3 - 1 < 2)
  {
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    if (_os_feature_enabled_impl())
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_21;
      }

      v10 = VCPLogToOSLogType[6];
      v6 = os_log_type_enabled(&_os_log_default, v10);
      if (!v6)
      {
        return v6;
      }

      LOWORD(v12[0]) = 0;
      v7 = "Face analysis backup/restore is disabled, not eligible for backup/restore";
LABEL_19:
      v8 = v10;
      v9 = 2;
      goto LABEL_20;
    }

LABEL_11:
    v6 = MADCheckBackUpVersion();
    if (!v6)
    {
      return v6;
    }

    if (([(PHPhotoLibrary *)self isSystemPhotoLibrary]& 1) != 0)
    {
      if ((v3 & 3) != 2 || ([(PHPhotoLibrary *)self isCloudPhotoLibraryEnabled]& 1) != 0)
      {
        LOBYTE(v6) = 1;
        return v6;
      }

      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_21;
      }

      v10 = VCPLogToOSLogType[6];
      v6 = os_log_type_enabled(&_os_log_default, v10);
      if (!v6)
      {
        return v6;
      }

      LOWORD(v12[0]) = 0;
      v7 = "iCloud photo library not enabled, not eligible for backup/restore";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_21;
      }

      v10 = VCPLogToOSLogType[6];
      v6 = os_log_type_enabled(&_os_log_default, v10);
      if (!v6)
      {
        return v6;
      }

      LOWORD(v12[0]) = 0;
      v7 = "Library is not System Photo Library, not eligible for backup/restore";
    }

    goto LABEL_19;
  }

  if (a3 == 10)
  {
    goto LABEL_11;
  }

  if (MediaAnalysisLogLevel() < 4)
  {
LABEL_21:
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = VCPLogToOSLogType[4];
  v6 = os_log_type_enabled(&_os_log_default, v5);
  if (v6)
  {
    v12[0] = 67109120;
    v12[1] = v3;
    v7 = "TaskID %d is not eligible for backup/restore";
    v8 = v5;
    v9 = 8;
LABEL_20:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v7, v12, v9);
    goto LABEL_21;
  }

  return v6;
}

- (int)_resetChangeTokenAndProcessingStatusForFaceProcessing
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:self])
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        return 0;
      }

      v3 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v3))
      {
        return 0;
      }

      v4 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v23 = v4;
      v5 = "[FaceModelBump][%@][MACD] Database migration incomplete, skipping ChangeToken and ProcessingStatus reset";
LABEL_27:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v5, buf, 0xCu);

      return 0;
    }
  }

  else if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:self])
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      return 0;
    }

    v3 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v3))
    {
      return 0;
    }

    v4 = [(PHPhotoLibrary *)self vcp_description];
    *buf = 138412290;
    v23 = v4;
    v5 = "[FaceModelBump][%@] Media analysis database does not exist, skipping ChangeToken and ProcessingStatus reset";
    goto LABEL_27;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[FaceModelBump][%@] Flushing ChangeToken and ProcessingStatus ... ", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled](MADManagedProcessingStatus, "isMACDPersistEnabled") && +[MADManagedChangeToken isMACDPersistEnabled])
  {
    v20 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001A1110;
    v21[3] = &unk_100282F00;
    v21[4] = self;
    v8 = [(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:v21 error:&v20];
    v9 = v20;
    v10 = v9;
    if (v8)
    {

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v12 = [v9 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          v18 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412290;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[FaceModelBump][%@] Failed to flush", buf, 0xCu);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self];
    v13 = [v11 removeAllProcessingStatusForTaskID:3];
    v12 = v13;
    if (v13 != -108 && v13 != -36 && v13 != -23)
    {
      v16 = [v11 removeAllChangeTokensForTaskID:3];
      v12 = v16;
      if (v16 != -108 && v16 != -36 && v16 != -23)
      {
        v12 = 0;
      }
    }

    if (v11)
    {
      [v11 commit];
    }

    if (v12)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          v15 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412546;
          v23 = v15;
          v24 = 1024;
          v25 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[FaceModelBump][%@] Failed to flush (%d)", buf, 0x12u);
        }
      }
    }
  }

  return v12;
}

- (int)_resetCurrentFaceProgress
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:self])
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        return 0;
      }

      v3 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v3))
      {
        return 0;
      }

      v4 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v39 = v4;
      v5 = "[FaceModelBump][%@][MACD] Database migration incomplete, skipping ChangeToken and ProcessingStatus reset";
LABEL_21:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v5, buf, 0xCu);

      return 0;
    }
  }

  else if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:self])
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      return 0;
    }

    v3 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v3))
    {
      return 0;
    }

    v4 = [(PHPhotoLibrary *)self vcp_description];
    *buf = 138412290;
    v39 = v4;
    v5 = "[FaceModelBump][%@] Media analysis database does not exist, skipping ChangeToken and ProcessingStatus reset";
    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[FaceModelBump][%@] Reset cached face analysis progress ...", buf, 0xCu);
    }
  }

  v8 = [MADProgressManager cacheCurrentFaceProgressForPhotoLibrary:self];
  v9 = v8;
  v10 = 0;
  switch(v8)
  {
    case 0xFFFFFF94:
      goto LABEL_75;
    case 0xFFFFFFDC:
      goto LABEL_75;
    case 0xFFFFFFE9:
      goto LABEL_75;
  }

  v14 = [MADProgressManager cacheProcessedAssetCountAfterPromoter:0 photoLibrary:self];
  v9 = v14;
  v10 = 0;
  if (v14 == -108 || v14 == -36 || v14 == -23)
  {
    goto LABEL_75;
  }

  if (+[MADManagedChangeToken isMACDPersistEnabled](MADManagedChangeToken, "isMACDPersistEnabled") && +[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v15 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412546;
        v39 = v16;
        v40 = 1024;
        v41 = 3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[FaceModelBump][%@][MACD] Removing all person change tokens for taskID %d", buf, 0x12u);
      }
    }

    v37 = 0;
    v17 = [(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:&stru_1002884F8 error:&v37];
    v18 = v37;
    v19 = v18;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v20 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          v21 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412290;
          v39 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[FaceModelBump][%@][MACD] Resetting person process timestamps ...", buf, 0xCu);
        }
      }

      v36 = v19;
      v22 = [(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:&stru_100288518 error:&v36];
      v23 = v36;

      if (v22)
      {
        v9 = 0;
      }

      else
      {
        v9 = [v23 code];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v35 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            v39 = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "Failed to reset person process timestamps: %@", buf, 0xCu);
          }
        }
      }

      v19 = v23;
    }

    else
    {
      v9 = [v18 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v33 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v33))
        {
          v34 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412802;
          v39 = v34;
          v40 = 1024;
          v41 = 3;
          v42 = 2112;
          v43 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceModelBump][%@][MACD] Failed to remove all change tokens for taskID %d: %@", buf, 0x1Cu);
        }
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self];
    if (MediaAnalysisLogLevel() >= 5)
    {
      v24 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        v25 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[FaceModelBump][%@] Resetting person process change tokens ...", buf, 0xCu);
      }
    }

    v26 = [v10 removeAllChangeTokensForTaskID:3];
    v9 = v26;
    if (v26 != -108 && v26 != -36 && v26 != -23)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v27 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          v28 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412290;
          v39 = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[FaceModelBump][%@] Resetting person process timestamps ...", buf, 0xCu);
        }
      }

      v29 = [v10 removeKey:@"ContactIngestionTimestamp"];
      v9 = v29;
      if (v29 != -108 && v29 != -36 && v29 != -23)
      {
        v30 = [v10 removeKey:@"HomePersonIngestionTimestamp"];
        v9 = v30;
        if (v30 != -108 && v30 != -36 && v30 != -23)
        {
          v31 = [v10 removeKey:@"VUDeepSyncTimestamp"];
          v9 = v31;
          if (v31 != -108 && v31 != -36 && v31 != -23)
          {
            v32 = [v10 removeKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
            v9 = v32;
            if (v32 != -108 && v32 != -36 && v32 != -23)
            {
              v9 = 0;
            }
          }
        }
      }
    }

    if (v10 && +[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      [v10 commit];
    }
  }

  if (v9)
  {
LABEL_75:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412546;
        v39 = v12;
        v40 = 1024;
        v41 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[FaceModelBump][%@] Failed to reset (%d)", buf, 0x12u);
      }
    }
  }

  return v9;
}

- (int)vcp_bumpFaceProcessingToVersion:(int)a3 withError:(id *)a4
{
  v4 = *&a3;
  v6 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self, a4];
  v7 = [v6 currentProcessingVersion];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [(PHPhotoLibrary *)self vcp_description];
      v15 = 138412802;
      v16 = v9;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[FaceModelBump][%@] Migrating version from: %d to %d", &v15, 0x18u);
    }
  }

  v10 = [(PHPhotoLibrary *)self _resetChangeTokenAndProcessingStatusForFaceProcessing];
  if (v10 || (v10 = [v6 migrateFaceProcessingToVersion:v4]) != 0 || (v10 = -[PHPhotoLibrary _resetCurrentFaceProgress](self, "_resetCurrentFaceProgress")) != 0)
  {
    v11 = v10;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [(PHPhotoLibrary *)self vcp_description];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[FaceModelBump][%@] Migration finished", &v15, 0xCu);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (int)mad_bumpFaceProcessingVersionIfNeededWithError:(id *)a3
{
  v5 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self];
  v6 = [v5 currentProcessingVersion];
  v7 = [v5 defaultProcessingVersion];
  if (v7 == v6)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [(PHPhotoLibrary *)self vcp_description];
        v12 = 138412802;
        v13 = v9;
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[FaceModelBump][%@] Version %d meets requirement %d", &v12, 0x18u);
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = [(PHPhotoLibrary *)self vcp_bumpFaceProcessingToVersion:v7 withError:a3];
  }

  return v10;
}

- (int)_resetEmbeddingClusteringProgress
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:self])
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        return 0;
      }

      v3 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v3))
      {
        return 0;
      }

      v4 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v36 = v4;
      v5 = "[FaceModelBump][%@][MACD] Database migration incomplete, skipping ChangeToken and ProcessingStatus reset";
LABEL_31:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v5, buf, 0xCu);

      return 0;
    }
  }

  else if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:self])
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      return 0;
    }

    v3 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v3))
    {
      return 0;
    }

    v4 = [(PHPhotoLibrary *)self vcp_description];
    *buf = 138412290;
    v36 = v4;
    v5 = "[FaceModelBump][%@] Media analysis database does not exist, skipping ChangeToken and ProcessingStatus reset";
    goto LABEL_31;
  }

  v6 = [MADVUWGalleryManager sharedGalleryForPhotoLibrary:self];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(PHPhotoLibrary *)self vcp_description];
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VSKDBMigration][%@] Reset embedding clustering progress ... ", buf, 0xCu);
    }
  }

  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v34 = 0;
    v9 = [(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:&stru_100288538 error:&v34];
    v10 = v34;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v14 = [v10 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = [(PHPhotoLibrary *)self vcp_description];
          *buf = 138412290;
          v36 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[VSKDBMigration][%@] Failed to reset embedding clustering progress", buf, 0xCu);
        }
      }

      v12 = 0;
      v15 = 0;
      goto LABEL_48;
    }

    v12 = 0;
  }

  else
  {
    v12 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self];
    v13 = [v12 removeKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];
    v14 = v13;
    v15 = 0;
    if (v13 == -108)
    {
      goto LABEL_45;
    }

    if (v13 == -36 || v13 == -23)
    {
      goto LABEL_45;
    }
  }

  if (v6)
  {
    v17 = VCPSignPostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = VCPSignPostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VUWGallery_resetForType_Scene", "", buf, 2u);
    }

    v33 = 0;
    v21 = [v6 resetForType:0 error:&v33];
    v15 = v33;
    if (v21)
    {
      v22 = VCPSignPostLog();
      v23 = v22;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v18, "VUWGallery_resetForType_Scene", "", buf, 2u);
      }

      v14 = 0;
      goto LABEL_45;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        v29 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412802;
        v36 = v29;
        v37 = 1024;
        v38 = 0;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[VSKDBMigration][%@] Failed to reset VUWGallery for type %d: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        v27 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[VSKDBMigration][%@] Failed to obtain VUWGallery", buf, 0xCu);
      }
    }

    v15 = 0;
  }

  v14 = -18;
LABEL_45:
  if (v12 && +[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    [v12 commit];
  }

LABEL_48:
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v30 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        v31 = [(PHPhotoLibrary *)self vcp_description];
        *buf = 138412546;
        v36 = v31;
        v37 = 1024;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[VSKDBMigration][%@] Failed to reset (%d)", buf, 0x12u);
      }
    }
  }

  return v14;
}

- (int)_signalPhotosResetAvailabilityWithError:(id *)a3
{
  v5 = [PLFeatureAvailabilitySignalledChanges alloc];
  v6 = [v5 initWithSourceIdentifier:MediaAnalysisDaemonDomain];
  [v6 setResetLastFullVUIndexClusterDate:1];
  [v6 setCountOfAssetsIndexedInVUClustering:&off_100295340];
  [v6 setFractionOfCuratedAssetsIndexedInVUClustering:&off_100295340];
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PhotoLibraryClient_SignalAvailabilityWithChanges", "", buf, 2u);
  }

  v11 = [(PHPhotoLibrary *)self photoLibrary];
  v12 = [v11 assetsdClient];
  v13 = [v12 libraryInternalClient];
  v29 = 0;
  v14 = [v13 signalAvailabilityWithChanges:v6 error:&v29];
  v15 = v29;

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v8, "PhotoLibraryClient_SignalAvailabilityWithChanges", "", buf, 2u);
  }

  v18 = MediaAnalysisLogLevel();
  if (v14)
  {
    if (v18 >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v6 resetLastFullVUIndexClusterDate];
        v21 = [v6 countOfAssetsIndexedInVUClustering];
        v22 = [v6 fractionOfCuratedAssetsIndexedInVUClustering];
        *buf = 67109634;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        v34 = 2112;
        v35 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[VSKDBMigration] Signalled Photos availability state change (resetLastFullVUIndexClusterDate=%d, countOfAssetsIndexedInVUClustering=%@, fractionOfCuratedAssetsIndexedInVUClustering=%@)", buf, 0x1Cu);
      }
    }

    v23 = 0;
  }

  else
  {
    if (v18 >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        v25 = [v6 resetLastFullVUIndexClusterDate];
        v26 = [v6 countOfAssetsIndexedInVUClustering];
        v27 = [v6 fractionOfCuratedAssetsIndexedInVUClustering];
        *buf = 67109890;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[VSKDBMigration] Failed to signal Photos availability state change (resetLastFullVUIndexClusterDate=%d, countOfAssetsIndexedInVUClustering=%@, fractionOfCuratedAssetsIndexedInVUClustering=%@): %@", buf, 0x26u);
      }
    }

    if (a3)
    {
      *a3 = [v15 copy];
    }

    v23 = -18;
  }

  return v23;
}

- (int)mad_migrateVectorDatabaseIfNeededWithError:(id *)a3
{
  v5 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:self];
  if ([v5 hasMigration])
  {
    v6 = [(PHPhotoLibrary *)self _resetEmbeddingClusteringProgress];
    if (!v6)
    {
      v6 = [(PHPhotoLibrary *)self _signalPhotosResetAvailabilityWithError:a3];
    }
  }

  else
  {
    v6 = 0;
  }

  MediaAnalysisDaemonReleaseSharedDataStores(self);

  return v6;
}

- (BOOL)mad_rebuildCoreDataStore
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(PHPhotoLibrary *)self photoLibraryURL];
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MACDRebuild] Rebuilding database for photo library %@", &v14, 0xCu);
    }
  }

  v5 = +[MADPhotosDataStoreClient sharedClient];
  v6 = [v5 recreatePersistentStoreForPhotoLibrary:self];
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1001A38B0(self, v7);
    }
  }

  else
  {
    v10 = [v5 setDatabaseVersion:+[MADPhotosDataStoreClient latestDataStoreVersion](MADPhotosDataStoreClient photoLibrary:{"latestDataStoreVersion"), self}];
    if (!v10)
    {
      v8 = [(PHPhotoLibrary *)self mad_clearCoreDataErrorIndicatorFile];
      goto LABEL_8;
    }

    v11 = v10;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [(PHPhotoLibrary *)self photoLibraryURL];
        v14 = 138412546;
        v15 = v13;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MACDRebuild] Failed to set database version for photo library %@ (%d)", &v14, 0x12u);
      }
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (int)_updateAnalysisInfoWithCurrentVersion:(int)a3 timestamp:(int64_t)a4 taskID:(unint64_t)a5 fetchRequest:(id)a6 changeRequest:(id)a7
{
  v9 = a6;
  v10 = a7;
  v11 = VCPVersionKeyForTask();
  v12 = VCPStartTimestampKeyForTask();
  v48 = VCPPercentCompleteTimestampKeyForTask();
  v47 = VCPPercentCompleteTimestampKeyForTask();
  v46 = VCPPercentCompleteTimestampKeyForTask();
  v13 = VCPPercentCompleteTimestampKeyForTask();
  v14 = VCPPercentCompleteTimestampKeyForTask();
  v15 = VCPPercentCompleteTimestampKeyForTask();
  v16 = VCPBGSTCheckpointTimestampKeyForTask();
  v45 = VCPBGSTCheckpointTimestampKeyForTask();
  if (v11 && v12)
  {
    v17 = !v48 || v47 == 0;
    v18 = v17 || v46 == 0;
    v19 = v18 || v13 == 0;
    v20 = v19 || v14 == 0;
    if (!v20 && v15 != 0)
    {
      v22 = [v9 dataStoreValueForKey:v11];
      if (v22 == a3)
      {
        v23 = 0;
        goto LABEL_40;
      }

      v26 = v22;
      v41 = v16;
      if (MediaAnalysisLogLevel() >= 5)
      {
        type = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 134218240;
          v50 = v26;
          v51 = 1024;
          v52 = a3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Analysis version changed from %lld to %d", buf, 0x12u);
        }
      }

      [v10 setDataStoreValue:a3 forKey:v11];
      [v10 setDataStoreValue:a4 forKey:v12];
      [v10 removeDataStoreKey:v48];
      [v10 removeDataStoreKey:v47];
      [v10 removeDataStoreKey:v46];
      [v10 removeDataStoreKey:v13];
      [v10 removeDataStoreKey:v14];
      [v10 removeDataStoreKey:v15];
      [v10 removeDataStoreKey:v16];
      [v10 removeDataStoreKey:v45];
      if (a5 == 3)
      {
        *typea = v9;
        v38 = &VCPKeyValuePersonalizationCheckpointReportedTimestamp;
        v27 = &VCPKeyValuePrioritizedFaceCheckpointWithFailureReportedTimestamp;
        v28 = &VCPKeyValuePrioritizedFaceAnalysisCompleteWithFailureTimestamp;
        v29 = &VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp;
        v30 = &VCPKeyValuePrioritizedFaceAnalysisCompleteTimestamp;
      }

      else
      {
        if (a5 != 1)
        {
          goto LABEL_34;
        }

        *typea = v9;
        [v10 removeDataStoreKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
        v38 = &VCPKeyValueMediaAnalysisImageCheckpointWithFailureReportedTimestamp;
        v27 = &VCPKeyValueMediaAnalysisImageCheckpointReportedTimestamp;
        v28 = &VCPKeyValueMediaAnalysisImagePriority1CheckpointWithFailureReportedTimestamp;
        v29 = &VCPKeyValueMediaAnalysisImagePriority1CheckpointReportedTimestamp;
        v30 = &VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp;
      }

      [v10 removeDataStoreKey:*v30];
      [v10 removeDataStoreKey:*v29];
      [v10 removeDataStoreKey:*v28];
      [v10 removeDataStoreKey:*v27];
      [v10 removeDataStoreKey:*v38];
      v9 = *typea;
LABEL_34:
      if (MediaAnalysisLogLevel() >= 7)
      {
        v31 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          *buf = 138412802;
          v50 = v11;
          v51 = 1024;
          v52 = a3;
          v53 = 2048;
          v54 = a4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "Updated %@ with %d (timestamp: %lld)", buf, 0x1Cu);
        }
      }

      v44 = v12;
      [v10 removeAllProcessingStatusImmediatelyForTaskID:a5];
      if (a5 == 1)
      {
        [v10 removeAllProcessingStatusImmediatelyForTaskID:255];
      }

      [MADProgressManager resetProcessingCheckpointForTask:a5];
      v32 = [v9 dataStoreValueForKey:MajorOSVersionNumberKey];
      v33 = [v9 dataStoreValueForKey:MinorOSVersionNumberKey];
      VCPOSMajorOfLastVersionUpdateKeyForTask();
      v35 = v34 = v9;
      [v10 setDataStoreValue:v32 forKey:v35];

      v9 = v34;
      v36 = VCPOSMinorOfLastVersionUpdateKeyForTask();
      [v10 setDataStoreValue:v33 forKey:v36];

      v23 = 0;
      v12 = v44;
      v16 = v41;
      goto LABEL_40;
    }
  }

  if (MediaAnalysisLogLevel() < 3)
  {
    v23 = -50;
  }

  else
  {
    v24 = v16;
    v25 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v25))
    {
      *buf = 134217984;
      v50 = a5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "No corresponding keys found for taskID %lu", buf, 0xCu);
    }

    v23 = -50;
    v16 = v24;
  }

LABEL_40:

  return v23;
}

- (int)clearCheckpointTimestampForTask:(unint64_t)a3 changeRequest:(id)a4
{
  v5 = a4;
  v6 = VCPBGSTCheckpointTimestampKeyForTask();
  if (!v6 && MediaAnalysisLogLevel() >= 3)
  {
    v7 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "No corresponding checkpoint key found for taskID %lu", &v11, 0xCu);
    }
  }

  [v5 removeDataStoreKey:v6];
  v8 = VCPBGSTCheckpointTimestampKeyForTask();
  if (!v8 && MediaAnalysisLogLevel() >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "No corresponding checkpoint_with_failure key found for taskID %lu", &v11, 0xCu);
    }
  }

  [v5 removeDataStoreKey:v8];
  if (a3 == 3)
  {
    [v5 removeDataStoreKey:VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp];
    [v5 removeDataStoreKey:VCPKeyValuePrioritizedFaceCheckpointWithFailureReportedTimestamp];
    [v5 removeDataStoreKey:VCPKeyValuePersonalizationCheckpointReportedTimestamp];
  }

  return 0;
}

- (int)mad_updateAnalysisMetricsOnVersionUpdateWithError:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Checking KeyValueStore for analysis versions ...", buf, 2u);
    }
  }

  v6 = +[NSDate now];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  [(PHPhotoLibrary *)self mad_fetchRequest];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A3358;
  v17[3] = &unk_100288560;
  v9 = v21 = v8;
  v18 = v9;
  v19 = &off_100296620;
  v20 = self;
  if (([(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:v17 error:a3]& 1) != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A367C;
    v12[3] = &unk_100288560;
    v13 = &off_100296620;
    v14 = self;
    v16 = v8;
    v15 = v9;
    [(PHPhotoLibrary *)self mad_performAnalysisDataStoreChanges:v12 error:a3];

    v10 = 0;
  }

  else
  {
    v10 = [*a3 code];
  }

  return v10;
}

- (BOOL)vcp_openAndWaitWithUpgrade:(BOOL)a3 error:(id *)a4
{
  v6 = [(PHPhotoLibrary *)self openAndWaitWithUpgrade:a3 error:?];
  if (v6)
  {
    if (![(PHPhotoLibrary *)self mad_checkCoreDataErrorIndicatorFileExistence]|| (v6 = [(PHPhotoLibrary *)self mad_rebuildCoreDataStore]) != 0)
    {
      LOBYTE(v6) = ![(PHPhotoLibrary *)self mad_bumpFaceProcessingVersionIfNeededWithError:a4]&& ![(PHPhotoLibrary *)self mad_migrateVectorDatabaseIfNeededWithError:a4]&& [(PHPhotoLibrary *)self mad_updateAnalysisMetricsOnVersionUpdateWithError:a4]== 0;
    }
  }

  return v6;
}

@end