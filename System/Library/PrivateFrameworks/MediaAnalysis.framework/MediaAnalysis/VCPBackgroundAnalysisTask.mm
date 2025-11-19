@interface VCPBackgroundAnalysisTask
- (VCPBackgroundAnalysisTask)initWithPhotoLibrary:(id)a3;
- (unint64_t)missingAnalysisForAsset:(id)a3 existingAnalysis:(id *)a4 resources:(id)a5 forLocalResourcesOnly:(BOOL)a6;
- (unint64_t)missingAnalysisForAsset:(id)a3 withExistingComputeSyncAnalysis:(id *)a4 resources:(id)a5 forLocalResourcesOnly:(BOOL)a6;
- (unint64_t)possibleAnalysisForAsset:(id)a3 withResources:(id)a4 forLocalResourcesOnly:(BOOL)a5;
@end

@implementation VCPBackgroundAnalysisTask

- (VCPBackgroundAnalysisTask)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VCPBackgroundAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:v4];
  if (v5)
  {
    v6 = _os_feature_enabled_impl();
    v7 = 254;
    if (!v6)
    {
      v7 = 1;
    }

    v5->_taskID = v7;
  }

  return v5;
}

- (unint64_t)possibleAnalysisForAsset:(id)a3 withResources:(id)a4 forLocalResourcesOnly:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 vcp_fullAnalysisTypesForResources:v8];
  if (!a5 && (![v7 isPhoto] || objc_msgSend(v8, "vcp_hasLocalPhoto:", objc_msgSend(v7, "hasAdjustments"))))
  {
    v9 |= [v7 vcp_fullAnalysisTypes] & 0xFFFFFFFFFFEFFFFFLL;
  }

  return v9;
}

- (unint64_t)missingAnalysisForAsset:(id)a3 withExistingComputeSyncAnalysis:(id *)a4 resources:(id)a5 forLocalResourcesOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = [v10 localIdentifier];
  v14 = [NSString stringWithFormat:@"  [%@][ComputeSync]", v13];
  v15 = [v10 vcp_modificationDate];

  if (!v15)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v31 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Asset missing modification date; skipping analysis with Compute Sync results", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  v16 = [(VCPBackgroundAnalysisTask *)self possibleAnalysisForAsset:v10 withResources:v11 forLocalResourcesOnly:v6];
  if ((v16 & 0x40000) != 0)
  {
    v17 = StripMovieCurationResultsForEligibleAsset(v10, *a4, v14);
    v18 = *a4;
    *a4 = v17;
  }

  if ((v16 & 0x8000000000000) != 0)
  {
    v19 = StripVideoThumbnailResultsForEligibleAsset(v10, *a4, v14);
    v20 = *a4;
    *a4 = v19;
  }

  v21 = v16 & 0xFFFFFFFFDFFFFFFFLL;
  if (*a4)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v22 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        [*a4 vcp_types];
        v23 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v36 = v14;
        v37 = 2112;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Existing analysis: %@", buf, 0x16u);
      }
    }

    if ([v10 vcp_isAnalysisValid:*a4])
    {
      v24 = [*a4 vcp_types];
      if ([v10 isVideo] & (v24 >> 45))
      {
        v24 |= 0x2000000000000uLL;
      }

      [*a4 vcp_version];
      v25 = v21 & MediaAnalysisTypesUpdatedSince() & v24;
      v26 = (v24 ^ v16) & v21;
      if (v25 | v26)
      {
        if (v25)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v27 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v27))
            {
              v28 = MediaAnalysisTypeShortDescription();
              *buf = 138412546;
              v36 = v14;
              v37 = 2112;
              v38 = v28;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Analysis version outdated; re-doing updated analyses (%@) with Compute Sync results", buf, 0x16u);
            }
          }
        }

        if (v26)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v29 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v29))
            {
              v30 = MediaAnalysisTypeShortDescription();
              *buf = 138412546;
              v36 = v14;
              v37 = 2112;
              v38 = v30;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Analysis incomplete; performing missing analysis (%@) with Compute Sync results", buf, 0x16u);
            }
          }
        }

        v21 = v25 | v26;
        goto LABEL_31;
      }

LABEL_26:
      v21 = 0;
      goto LABEL_31;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v32 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v32))
      {
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Asset has been modified; discarding Compute Sync results", buf, 0xCu);
      }
    }

    v33 = *a4;
    *a4 = 0;
  }

LABEL_31:

  objc_autoreleasePoolPop(v12);
  return v21;
}

- (unint64_t)missingAnalysisForAsset:(id)a3 existingAnalysis:(id *)a4 resources:(id)a5 forLocalResourcesOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v55 = a5;
  context = objc_autoreleasePoolPush();
  v11 = [v10 localIdentifier];
  v56 = [NSString stringWithFormat:@"[BackgroundAnalysisTask][%@]", v11];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v12 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 138412290;
      v66 = v56;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Processing", buf, 0xCu);
    }
  }

  v13 = [v10 vcp_modificationDate];
  v14 = v13 == 0;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        v66 = v56;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Asset missing modification date; skipping analysis with MA DB results", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  else
  {
    v15 = [(VCPTask *)self photoLibrary];
    v53 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v15];

    v64 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      v16 = [(VCPTask *)self photoLibrary];
      v17 = [v16 mad_fetchRequest];
      v63 = 0;
      [v17 fetchProcessingStatus:0 attempts:&v64 lastAttemptDate:0 nextAttemptDate:&v63 localIdentifier:v11 taskID:self->_taskID];
      v18 = v63;
    }

    else
    {
      v62 = 0;
      [v53 queryProcessingStatus:0 attempts:&v64 lastAttemptDate:0 andNextAttemptDate:&v62 forLocalIdentifier:v11 andTaskID:self->_taskID];
      v18 = v62;
    }

    if (v64 && (+[NSDate date](NSDate, "date"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v18 compare:v21] == 1, v21, v22))
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v23 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          v24 = v64;
          v25 = +[VCPLogManager dateFormatter];
          v26 = [v25 stringFromDate:v18];
          *buf = 138412802;
          v66 = v56;
          v67 = 1024;
          LODWORD(v68[0]) = v24;
          WORD2(v68[0]) = 2112;
          *(v68 + 6) = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Too many failure attempts (%d); No retry until %@", buf, 0x1Cu);
        }
      }

      v20 = 0;
    }

    else
    {
      v27 = [(VCPBackgroundAnalysisTask *)self possibleAnalysisForAsset:v10 withResources:v55 forLocalResourcesOnly:v6];
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v28 = [(VCPTask *)self photoLibrary];
        v29 = [v28 mad_fetchRequest];
        v30 = [v29 fetchAnalysisWithLocalIdentifier:v11 predicate:0];
        v31 = *a4;
        *a4 = v30;
      }

      else
      {
        v61 = 0;
        [v53 analysisForAsset:v11 analysis:&v61];
        v32 = v61;
        v28 = *a4;
        *a4 = v32;
      }

      if ((v27 & 0x40000) != 0)
      {
        v33 = StripMovieCurationResultsForEligibleAsset(v10, *a4, v56);
        v34 = *a4;
        *a4 = v33;
      }

      if ((v27 & 0x8000000000000) != 0)
      {
        v35 = StripVideoThumbnailResultsForEligibleAsset(v10, *a4, v56);
        v36 = *a4;
        *a4 = v35;
      }

      v20 = v27 & 0xFFFFFFFFDFFFFFFFLL;
      if (*a4)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v37 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            [*a4 vcp_types];
            v38 = MediaAnalysisTypeShortDescription();
            *buf = 138412546;
            v66 = v56;
            v67 = 2112;
            v68[0] = v38;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Existing analysis: %@", buf, 0x16u);
          }
        }

        if ([v10 vcp_isAnalysisValid:*a4])
        {
          v39 = [*a4 vcp_types];
          if ([v10 isVideo] & (v39 >> 45))
          {
            v39 |= 0x2000000000000uLL;
          }

          [*a4 vcp_version];
          v40 = v20 & MediaAnalysisTypesUpdatedSince() & v39;
          v41 = (v39 ^ v27) & v20;
          if (v40 | v41)
          {
            if (v40)
            {
              if (MediaAnalysisLogLevel() >= 6)
              {
                v42 = VCPLogToOSLogType[6];
                if (os_log_type_enabled(&_os_log_default, v42))
                {
                  v43 = MediaAnalysisTypeShortDescription();
                  *buf = 138412546;
                  v66 = v56;
                  v67 = 2112;
                  v68[0] = v43;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Analysis version outdated; re-doing updated analyses (%@) with MA DB results", buf, 0x16u);
                }
              }
            }

            if (v41)
            {
              if (MediaAnalysisLogLevel() >= 6)
              {
                v44 = VCPLogToOSLogType[6];
                if (os_log_type_enabled(&_os_log_default, v44))
                {
                  v45 = MediaAnalysisTypeShortDescription();
                  *buf = 138412546;
                  v66 = v56;
                  v67 = 2112;
                  v68[0] = v45;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Analysis incomplete; performing missing analysis (%@) with MA DB results", buf, 0x16u);
                }
              }
            }
          }

          else
          {
            v49 = [*a4 vcp_version];
            if (v49 < MediaAnalysisVersion)
            {
              if (+[MADManagedPhotosAsset isMACDPersistEnabled])
              {
                v50 = [(VCPTask *)self photoLibrary];
                v57[0] = _NSConcreteStackBlock;
                v57[1] = 3221225472;
                v57[2] = sub_1000C0010;
                v57[3] = &unk_100283AD0;
                v58 = v11;
                [v50 mad_performAnalysisDataStoreChanges:v57 error:0];
              }

              if (+[VCPDatabaseWriter isLegacyPersistEnabled])
              {
                [v53 bumpAnalysisVersionForAsset:v11];
              }
            }

            if (MediaAnalysisLogLevel() >= 7)
            {
              v51 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v51))
              {
                *buf = 138412290;
                v66 = v56;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@ Analysis complete and up-to-date with MA DB results", buf, 0xCu);
              }
            }
          }

          v20 = v40 | v41;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v46 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v46))
            {
              *buf = 138412290;
              v66 = v56;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Asset has been modified; discarding MA DB results", buf, 0xCu);
            }
          }

          if (+[MADManagedPhotosAsset isMACDPersistEnabled])
          {
            v47 = [(VCPTask *)self photoLibrary];
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000BFF54;
            v59[3] = &unk_100283AD0;
            v60 = v11;
            [v47 mad_performAnalysisDataStoreChanges:v59 error:0];
          }

          if (+[VCPDatabaseWriter isLegacyPersistEnabled])
          {
            [v53 deleteAnalysisForAsset:v11];
          }

          v48 = *a4;
          *a4 = 0;
        }
      }
    }
  }

  objc_autoreleasePoolPop(context);
  return v20;
}

@end