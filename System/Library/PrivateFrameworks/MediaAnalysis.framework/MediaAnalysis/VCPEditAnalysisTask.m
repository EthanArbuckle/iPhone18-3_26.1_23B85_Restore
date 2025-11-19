@interface VCPEditAnalysisTask
+ (id)taskWithPhotoLibrary:(id)a3;
- (BOOL)isAutoplayable:(id)a3;
- (VCPEditAnalysisTask)initWithPhotoLibrary:(id)a3;
- (int)duplicateAsset:(id)a3;
- (int)mainInternal;
- (int)processAsset:(id)a3 withTypes:(unint64_t)a4;
- (int)processPendingBatch;
- (void)resetPendingBatch;
@end

@implementation VCPEditAnalysisTask

- (VCPEditAnalysisTask)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VCPEditAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:v4];
  if (v5)
  {
    v6 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    database = v5->_database;
    v5->_database = v6;
  }

  return v5;
}

+ (id)taskWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v3];

  return v4;
}

- (void)resetPendingBatch
{
  v5 = [(VCPTask *)self photoLibrary];
  v3 = [VCPBatchAnalysisTask taskWithPhotoLibrary:?];
  pendingBatch = self->_pendingBatch;
  self->_pendingBatch = v3;

  v6 = [(VCPTask *)self cancel];
  [(VCPTask *)self->_pendingBatch setCancel:?];
}

- (int)processPendingBatch
{
  [(VCPBatchAnalysisTask *)self->_pendingBatch start];
  v3 = [(VCPTask *)self->_pendingBatch error];
  if (!v3)
  {
    [(VCPEditAnalysisTask *)self resetPendingBatch];
  }

  return v3;
}

- (int)processAsset:(id)a3 withTypes:(unint64_t)a4
{
  v6 = a3;
  [(VCPBatchAnalysisTask *)self->_pendingBatch addAnalysis:a4 withExistingAnalysis:0 forAsset:v6];
  [(VCPBatchAnalysisTask *)self->_pendingBatch cost];
  if (v7 < 100.0 || (v8 = [(VCPEditAnalysisTask *)self processPendingBatch]) == 0)
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAutoplayable:(id)a3
{
  v4 = a3;
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v5 = [v4 photoLibrary];
    v6 = [v5 mad_fetchRequest];

    v7 = [v4 localIdentifier];
    v8 = [v6 fetchAnalysisWithLocalIdentifier:v7 predicate:0];
  }

  else
  {
    database = self->_database;
    v6 = [v4 localIdentifier];
    v16 = 0;
    [(VCPDatabaseWriter *)database analysisForAsset:v6 analysis:&v16];
    v8 = v16;
  }

  v10 = MediaAnalysisStripOutdatedAnalysis();

  v11 = [v10 vcp_results];
  v12 = [v11 objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

  if ([v12 count])
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = ([v13 vcp_flags] >> 19) & 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (int)duplicateAsset:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PHAssetCreationOptions);
  [v5 setCopyAsAlternateAsset:1];
  v6 = NSTemporaryDirectory();
  v7 = [v4 localIdentifier];
  v8 = [v7 componentsSeparatedByString:@"/"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [NSString stringWithFormat:@"%@frc-tmp-%@.MOV", v6, v9];

  v11 = [NSURL fileURLWithPath:v10];
  v12 = +[NSFileManager defaultManager];
  if ([v12 fileExistsAtPath:v10])
  {
    v13 = [(VCPTask *)self photoLibrary];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009D7BC;
    v21[3] = &unk_1002832A0;
    v22 = v4;
    v23 = v5;
    v24 = v11;
    v20 = 0;
    v14 = [v13 performChangesAndWait:v21 error:&v20];
    v15 = v20;

    if (v14)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v16 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Duplicate Video Interpolation asset succeeded", buf, 2u);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = [v15 description];
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Error duplicating Video Interpolation asset: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return 0;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Processing Video Interpolation...", buf, 2u);
    }
  }

  [(VCPEditAnalysisTask *)self resetPendingBatch];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Update analysis types for non-autoplayable assets", buf, 2u);
    }
  }

  v4 = [(VCPTask *)self photoLibrary];
  v56 = [PHAsset vcp_fetchOptionsForLibrary:v4 forTaskID:1];

  v5 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v62 = v5;
  v6 = [NSArray arrayWithObjects:&v62 count:1];
  [v56 setSortDescriptors:v6];

  v7 = [PHAsset fetchAssetsWithMediaType:1 options:v56];
  v8 = 0;
  v57 = 0;
  v55 = MediaAnalysisMovieSummaryResultsKey;
  while (v8 < [v7 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 objectAtIndexedSubscript:v8];
    if ([(VCPTask *)self isCancelled])
    {
      v57 = -128;
      v11 = 11;
    }

    else
    {
      v12 = +[VCPWatchdog sharedWatchdog];
      [v12 pet];

      if ([v10 vcp_isLivePhoto])
      {
        v13 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v10];
        v14 = [v10 vcp_fullAnalysisTypesForResources:v13];
        if ((v14 & 0x20000000) != 0)
        {
          if (+[MADManagedPhotosAsset isMACDReadEnabled])
          {
            v15 = [(VCPTask *)self photoLibrary];
            v16 = [v15 mad_fetchRequest];

            v17 = [v10 localIdentifier];
            v18 = [v16 fetchAnalysisWithLocalIdentifier:v17 predicate:0];
          }

          else
          {
            database = self->_database;
            v16 = [v10 localIdentifier];
            v60 = 0;
            [(VCPDatabaseWriter *)database analysisForAsset:v16 analysis:&v60];
            v18 = v60;
          }

          v20 = MediaAnalysisStripOutdatedAnalysis();

          if (([v20 vcp_types] & 0x20000000) != 0)
          {
            v11 = 8;
          }

          else
          {
            v21 = [v20 vcp_results];
            v22 = [v21 objectForKeyedSubscript:v55];

            if ([v22 count] && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), v24 = (objc_msgSend(v23, "vcp_flags") & 0x80000) == 0, v23, !v24))
            {
              v11 = 8;
            }

            else
            {
              v25 = [(VCPEditAnalysisTask *)self processAsset:v10 withTypes:v14 & 0x20000000];
              if (v25)
              {
                v11 = 11;
              }

              else
              {
                v11 = 0;
              }

              v26 = v57;
              if (v25)
              {
                v26 = v25;
              }

              v57 = v26;
            }
          }
        }

        else
        {
          v11 = 8;
        }
      }

      else
      {
        v11 = 8;
      }
    }

    objc_autoreleasePoolPop(v9);
    if (v11 > 8)
    {
      goto LABEL_71;
    }

    ++v8;
  }

  [(VCPBatchAnalysisTask *)self->_pendingBatch cost];
  if (v27 != 0.0)
  {
    v28 = [(VCPEditAnalysisTask *)self processPendingBatch];
    if (v28)
    {
      goto LABEL_85;
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v29 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v29))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "Perform Video Interpolation for autoplayable assets", buf, 2u);
    }
  }

  for (i = 0; i < [v7 count]; ++i)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = [v7 objectAtIndexedSubscript:i];
    if ([(VCPTask *)self isCancelled])
    {
      v57 = -128;
      v33 = 11;
    }

    else
    {
      v34 = +[VCPWatchdog sharedWatchdog];
      [v34 pet];

      if ([v32 vcp_isLivePhoto])
      {
        v35 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v32];
        v36 = [v32 vcp_fullAnalysisTypesForResources:v35];
        if ((v36 & 0x20000000) != 0)
        {
          if (+[MADManagedPhotosAsset isMACDReadEnabled])
          {
            v37 = [(VCPTask *)self photoLibrary];
            v38 = [v37 mad_fetchRequest];

            v39 = [v32 localIdentifier];
            v40 = [v38 fetchAnalysisWithLocalIdentifier:v39 predicate:0];
          }

          else
          {
            v41 = self->_database;
            v38 = [v32 localIdentifier];
            v59 = 0;
            [(VCPDatabaseWriter *)v41 analysisForAsset:v38 analysis:&v59];
            v40 = v59;
          }

          v42 = MediaAnalysisStripOutdatedAnalysis();

          if (([v42 vcp_types] & 0x20000000) != 0)
          {
            v33 = 20;
          }

          else
          {
            v43 = [v42 vcp_results];
            v44 = [v43 objectForKeyedSubscript:v55];

            if ([v44 count] && (objc_msgSend(v44, "objectAtIndexedSubscript:", 0), v45 = objc_claimAutoreleasedReturnValue(), v46 = (objc_msgSend(v45, "vcp_flags") & 0x80000) == 0, v45, !v46))
            {
              v47 = [VCPAssetAnalysisTask taskWithAnalysisTypes:v36 & 0x20000000 forAsset:v32 withExistingAnalysis:v42];
              v48 = [(VCPTask *)self cancel];
              [v47 setCancel:v48];

              [v47 start];
              v49 = [v47 error];
              if (v49)
              {
                v33 = 11;
              }

              else
              {
                v50 = [(VCPEditAnalysisTask *)self duplicateAsset:v32];
                v33 = v50 ? 11 : 0;
                v49 = v50 ? v50 : v57;
              }

              v57 = v49;
            }

            else
            {
              v33 = 20;
            }
          }
        }

        else
        {
          v33 = 20;
        }
      }

      else
      {
        v33 = 20;
      }
    }

    objc_autoreleasePoolPop(v31);
    if (v33 <= 17)
    {
      if (v33)
      {
        break;
      }
    }
  }

LABEL_71:
  if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    goto LABEL_84;
  }

  v51 = [(VCPDatabaseWriter *)self->_database commit];
  if (v51 == -108)
  {
    v28 = -108;
  }

  else
  {
    v52 = v51 == -36 || v51 == -23;
    v28 = v51;
    if (!v52)
    {
      v28 = 0;
    }
  }

  if (v51 != -108 && v51 != -36 && v51 != -23)
  {
LABEL_84:
    v28 = v57;
  }

LABEL_85:

  return v28;
}

@end