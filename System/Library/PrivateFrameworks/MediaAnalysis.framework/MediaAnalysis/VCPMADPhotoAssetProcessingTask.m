@interface VCPMADPhotoAssetProcessingTask
- (BOOL)run:(id *)a3;
- (VCPMADPhotoAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation VCPMADPhotoAssetProcessingTask

- (VCPMADPhotoAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10012E708;
  v24[3] = &unk_100282858;
  v17 = a7;
  v25 = v17;
  v23.receiver = self;
  v23.super_class = VCPMADPhotoAssetProcessingTask;
  v18 = [(VCPMADPhotosProcessingTask *)&v23 initWithCompletionHandler:v24];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 28), a3);
    objc_storeStrong((v19 + 36), a4);
    v20 = objc_retainBlock(v16);
    v21 = *(v19 + 44);
    *(v19 + 44) = v20;

    [v19 setCancelBlock:v15];
  }

  return v19;
}

- (BOOL)run:(id *)a3
{
  +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", [*(&self->super._publishError + 1) count]);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10012F030;
  v53[3] = &unk_100282F50;
  v5 = v53[4] = self;
  v54 = v5;
  v52 = [VCPTimer timerWithIntervalSeconds:10 isOneShot:0 andBlock:v53];
  v6 = *(&self->_photoLibraryURL + 4);
  if (v6)
  {
    (*(v6 + 16))(0.0);
  }

  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPProcessPhotoAssets", "", buf, 2u);
  }

  v11 = +[VCPPhotoLibraryManager sharedManager];
  v12 = [v11 photoLibraryWithURL:*(&self->_localIdentifiers + 4)];

  if (v12)
  {
    if (+[MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:](MADPhotosDataStoreClient, "needsDataStoreMigrationForPhotoLibrary:", v12) && ([objc_opt_class() allowBeforeMigration] & 1) == 0)
    {
      if (a3)
      {
        v67 = NSLocalizedDescriptionKey;
        v22 = a3;
        v13 = [objc_opt_class() name];
        v14 = [*(&self->_localIdentifiers + 4) path];
        v15 = [NSString stringWithFormat:@"[%@] Failed to process assets due to database migration incomplete for library %@", v13, v14];
        v68 = v15;
        v25 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v26 = NSOSStatusErrorDomain;
        v27 = -18;
        goto LABEL_29;
      }
    }

    else
    {
      if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
      {
        v13 = 0;
        goto LABEL_12;
      }

      v13 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v12];
      if (v13)
      {
LABEL_12:
        v49 = a3;
        v14 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v12, [objc_opt_class() taskID]);
        if ([objc_opt_class() taskID] == 2)
        {
          [v14 setIncludeAssetSourceTypes:{objc_msgSend(v14, "includeAssetSourceTypes") | 0x102}];
        }

        v15 = [PHAsset fetchAssetsWithLocalIdentifiers:*(&self->super._publishError + 1) options:v14];
        if ([v15 count])
        {
          v50 = v5;
          v16 = [v15 count];
          if (v16 != [*(&self->super._publishError + 1) count] && MediaAnalysisLogLevel() >= 4)
          {
            v17 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v17))
            {
              v48 = [objc_opt_class() name];
              v46 = [v15 count];
              v18 = [*(&self->super._publishError + 1) count];
              *buf = 138412802;
              v60 = v48;
              v61 = 2048;
              v62 = v46;
              v63 = 2048;
              v64 = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] Fetched asset count (%ld) does not match requested (%ld)", buf, 0x20u);
            }
          }

          v5 = v50;
          v19 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v15 initialScan:0 analysisDatabase:v13 allowDownload:0 progress:v50];
          if (v19 || (v19 = [(VCPMADPhotosProcessingTask *)self waitForPublishing]) != 0)
          {
            if (v19 == -128)
            {
              v33 = v52;
              if (v49)
              {
                v57 = NSLocalizedDescriptionKey;
                v25 = [objc_opt_class() name];
                v34 = [NSString stringWithFormat:@"[%@] Asset processing cancelled", v25];
                v58 = v34;
                v35 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v35];
                v37 = *v49;
                *v49 = v36;

                v5 = v50;
LABEL_46:
                v32 = 0;
                goto LABEL_47;
              }
            }

            else
            {
              v33 = v52;
              if (v49)
              {
                v47 = v19;
                v55 = NSLocalizedDescriptionKey;
                v25 = [objc_opt_class() name];
                v41 = [NSString stringWithFormat:@"[%@] Asset processing failed", v25];
                v56 = v41;
                v42 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v43 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v47 userInfo:v42];
                v44 = *v49;
                *v49 = v43;

                v5 = v50;
                goto LABEL_46;
              }
            }

            v32 = 0;
            goto LABEL_48;
          }
        }

        else if (MediaAnalysisLogLevel() >= 4)
        {
          v28 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            [objc_opt_class() name];
            v29 = v51 = v5;
            *buf = 138412290;
            v60 = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[%@] Fetched yielded no assets; skipping processing", buf, 0xCu);

            v5 = v51;
          }
        }

        v38 = VCPSignPostLog();
        v39 = v38;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v8, "VCPProcessPhotoAssets", "", buf, 2u);
        }

        v40 = *(&self->_photoLibraryURL + 4);
        v33 = v52;
        if (v40)
        {
          (*(v40 + 16))(100.0);
        }

        [v52 destroy];
        v25 = [(VCPMADPhotoAssetProcessingTask *)self completionHandler];
        v25[2](v25, 0, 0);
        v32 = 1;
        goto LABEL_47;
      }

      if (a3)
      {
        v20 = v5;
        v21 = NSOSStatusErrorDomain;
        v65 = NSLocalizedDescriptionKey;
        v22 = a3;
        v13 = [objc_opt_class() name];
        v14 = [*(&self->_localIdentifiers + 4) path];
        v15 = [NSString stringWithFormat:@"[%@] Failed to open Media Analysis for Photo Library (%@)", v13, v14];
        v66 = v15;
        v23 = &v66;
        v24 = &v65;
        goto LABEL_23;
      }
    }
  }

  else if (a3)
  {
    v20 = v5;
    v21 = NSOSStatusErrorDomain;
    v69 = NSLocalizedDescriptionKey;
    v22 = a3;
    v13 = [objc_opt_class() name];
    v14 = [*(&self->_localIdentifiers + 4) path];
    v15 = [NSString stringWithFormat:@"[%@] Failed to open Photo Library (%@)", v13, v14];
    v70 = v15;
    v23 = &v70;
    v24 = &v69;
LABEL_23:
    v25 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1];
    v26 = v21;
    v5 = v20;
    v27 = -23;
LABEL_29:
    v30 = [NSError errorWithDomain:v26 code:v27 userInfo:v25];
    v31 = *v22;
    *v22 = v30;

    v32 = 0;
    v33 = v52;
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  v32 = 0;
  v33 = v52;
LABEL_49:

  return v32;
}

@end