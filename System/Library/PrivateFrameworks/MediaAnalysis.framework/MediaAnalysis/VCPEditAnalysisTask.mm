@interface VCPEditAnalysisTask
+ (id)taskWithPhotoLibrary:(id)library;
- (BOOL)isAutoplayable:(id)autoplayable;
- (VCPEditAnalysisTask)initWithPhotoLibrary:(id)library;
- (int)duplicateAsset:(id)asset;
- (int)mainInternal;
- (int)processAsset:(id)asset withTypes:(unint64_t)types;
- (int)processPendingBatch;
- (void)resetPendingBatch;
@end

@implementation VCPEditAnalysisTask

- (VCPEditAnalysisTask)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = VCPEditAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:libraryCopy];
  if (v5)
  {
    v6 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    database = v5->_database;
    v5->_database = v6;
  }

  return v5;
}

+ (id)taskWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

- (void)resetPendingBatch
{
  photoLibrary = [(VCPTask *)self photoLibrary];
  v3 = [VCPBatchAnalysisTask taskWithPhotoLibrary:?];
  pendingBatch = self->_pendingBatch;
  self->_pendingBatch = v3;

  cancel = [(VCPTask *)self cancel];
  [(VCPTask *)self->_pendingBatch setCancel:?];
}

- (int)processPendingBatch
{
  [(VCPBatchAnalysisTask *)self->_pendingBatch start];
  error = [(VCPTask *)self->_pendingBatch error];
  if (!error)
  {
    [(VCPEditAnalysisTask *)self resetPendingBatch];
  }

  return error;
}

- (int)processAsset:(id)asset withTypes:(unint64_t)types
{
  assetCopy = asset;
  [(VCPBatchAnalysisTask *)self->_pendingBatch addAnalysis:types withExistingAnalysis:0 forAsset:assetCopy];
  [(VCPBatchAnalysisTask *)self->_pendingBatch cost];
  if (v7 < 100.0 || (v8 = [(VCPEditAnalysisTask *)self processPendingBatch]) == 0)
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAutoplayable:(id)autoplayable
{
  autoplayableCopy = autoplayable;
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary = [autoplayableCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];

    localIdentifier = [autoplayableCopy localIdentifier];
    v8 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
  }

  else
  {
    database = self->_database;
    mad_fetchRequest = [autoplayableCopy localIdentifier];
    v16 = 0;
    [(VCPDatabaseWriter *)database analysisForAsset:mad_fetchRequest analysis:&v16];
    v8 = v16;
  }

  v10 = MediaAnalysisStripOutdatedAnalysis();

  vcp_results = [v10 vcp_results];
  v12 = [vcp_results objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

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

- (int)duplicateAsset:(id)asset
{
  assetCopy = asset;
  v5 = objc_alloc_init(PHAssetCreationOptions);
  [v5 setCopyAsAlternateAsset:1];
  v6 = NSTemporaryDirectory();
  localIdentifier = [assetCopy localIdentifier];
  v8 = [localIdentifier componentsSeparatedByString:@"/"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [NSString stringWithFormat:@"%@frc-tmp-%@.MOV", v6, v9];

  v11 = [NSURL fileURLWithPath:v10];
  v12 = +[NSFileManager defaultManager];
  if ([v12 fileExistsAtPath:v10])
  {
    photoLibrary = [(VCPTask *)self photoLibrary];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009D7BC;
    v21[3] = &unk_1002832A0;
    v22 = assetCopy;
    v23 = v5;
    v24 = v11;
    v20 = 0;
    v14 = [photoLibrary performChangesAndWait:v21 error:&v20];
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

  photoLibrary = [(VCPTask *)self photoLibrary];
  v56 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary forTaskID:1];

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
            photoLibrary2 = [(VCPTask *)self photoLibrary];
            mad_fetchRequest = [photoLibrary2 mad_fetchRequest];

            localIdentifier = [v10 localIdentifier];
            v18 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
          }

          else
          {
            database = self->_database;
            mad_fetchRequest = [v10 localIdentifier];
            v60 = 0;
            [(VCPDatabaseWriter *)database analysisForAsset:mad_fetchRequest analysis:&v60];
            v18 = v60;
          }

          v20 = MediaAnalysisStripOutdatedAnalysis();

          if (([v20 vcp_types] & 0x20000000) != 0)
          {
            v11 = 8;
          }

          else
          {
            vcp_results = [v20 vcp_results];
            v22 = [vcp_results objectForKeyedSubscript:v55];

            if ([v22 count] && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), v24 = (objc_msgSend(v23, "vcp_flags") & 0x80000) == 0, v23, !v24))
            {
              v11 = 8;
            }

            else
            {
              0x20000000 = [(VCPEditAnalysisTask *)self processAsset:v10 withTypes:v14 & 0x20000000];
              if (0x20000000)
              {
                v11 = 11;
              }

              else
              {
                v11 = 0;
              }

              v26 = v57;
              if (0x20000000)
              {
                v26 = 0x20000000;
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
    processPendingBatch = [(VCPEditAnalysisTask *)self processPendingBatch];
    if (processPendingBatch)
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
            photoLibrary3 = [(VCPTask *)self photoLibrary];
            mad_fetchRequest2 = [photoLibrary3 mad_fetchRequest];

            localIdentifier2 = [v32 localIdentifier];
            v40 = [mad_fetchRequest2 fetchAnalysisWithLocalIdentifier:localIdentifier2 predicate:0];
          }

          else
          {
            v41 = self->_database;
            mad_fetchRequest2 = [v32 localIdentifier];
            v59 = 0;
            [(VCPDatabaseWriter *)v41 analysisForAsset:mad_fetchRequest2 analysis:&v59];
            v40 = v59;
          }

          v42 = MediaAnalysisStripOutdatedAnalysis();

          if (([v42 vcp_types] & 0x20000000) != 0)
          {
            v33 = 20;
          }

          else
          {
            vcp_results2 = [v42 vcp_results];
            v44 = [vcp_results2 objectForKeyedSubscript:v55];

            if ([v44 count] && (objc_msgSend(v44, "objectAtIndexedSubscript:", 0), v45 = objc_claimAutoreleasedReturnValue(), v46 = (objc_msgSend(v45, "vcp_flags") & 0x80000) == 0, v45, !v46))
            {
              v47 = [VCPAssetAnalysisTask taskWithAnalysisTypes:v36 & 0x20000000 forAsset:v32 withExistingAnalysis:v42];
              cancel = [(VCPTask *)self cancel];
              [v47 setCancel:cancel];

              [v47 start];
              error = [v47 error];
              if (error)
              {
                v33 = 11;
              }

              else
              {
                v50 = [(VCPEditAnalysisTask *)self duplicateAsset:v32];
                v33 = v50 ? 11 : 0;
                error = v50 ? v50 : v57;
              }

              v57 = error;
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

  commit = [(VCPDatabaseWriter *)self->_database commit];
  if (commit == -108)
  {
    processPendingBatch = -108;
  }

  else
  {
    v52 = commit == -36 || commit == -23;
    processPendingBatch = commit;
    if (!v52)
    {
      processPendingBatch = 0;
    }
  }

  if (commit != -108 && commit != -36 && commit != -23)
  {
LABEL_84:
    processPendingBatch = v57;
  }

LABEL_85:

  return processPendingBatch;
}

@end