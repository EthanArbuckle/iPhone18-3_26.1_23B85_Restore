@interface VCPBackgroundAnalysisTask
- (VCPBackgroundAnalysisTask)initWithPhotoLibrary:(id)library;
- (unint64_t)missingAnalysisForAsset:(id)asset existingAnalysis:(id *)analysis resources:(id)resources forLocalResourcesOnly:(BOOL)only;
- (unint64_t)missingAnalysisForAsset:(id)asset withExistingComputeSyncAnalysis:(id *)analysis resources:(id)resources forLocalResourcesOnly:(BOOL)only;
- (unint64_t)possibleAnalysisForAsset:(id)asset withResources:(id)resources forLocalResourcesOnly:(BOOL)only;
@end

@implementation VCPBackgroundAnalysisTask

- (VCPBackgroundAnalysisTask)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = VCPBackgroundAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:libraryCopy];
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

- (unint64_t)possibleAnalysisForAsset:(id)asset withResources:(id)resources forLocalResourcesOnly:(BOOL)only
{
  assetCopy = asset;
  resourcesCopy = resources;
  v9 = [assetCopy vcp_fullAnalysisTypesForResources:resourcesCopy];
  if (!only && (![assetCopy isPhoto] || objc_msgSend(resourcesCopy, "vcp_hasLocalPhoto:", objc_msgSend(assetCopy, "hasAdjustments"))))
  {
    v9 |= [assetCopy vcp_fullAnalysisTypes] & 0xFFFFFFFFFFEFFFFFLL;
  }

  return v9;
}

- (unint64_t)missingAnalysisForAsset:(id)asset withExistingComputeSyncAnalysis:(id *)analysis resources:(id)resources forLocalResourcesOnly:(BOOL)only
{
  onlyCopy = only;
  assetCopy = asset;
  resourcesCopy = resources;
  v12 = objc_autoreleasePoolPush();
  localIdentifier = [assetCopy localIdentifier];
  v14 = [NSString stringWithFormat:@"  [%@][ComputeSync]", localIdentifier];
  vcp_modificationDate = [assetCopy vcp_modificationDate];

  if (!vcp_modificationDate)
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

  v16 = [(VCPBackgroundAnalysisTask *)self possibleAnalysisForAsset:assetCopy withResources:resourcesCopy forLocalResourcesOnly:onlyCopy];
  if ((v16 & 0x40000) != 0)
  {
    v17 = StripMovieCurationResultsForEligibleAsset(assetCopy, *analysis, v14);
    v18 = *analysis;
    *analysis = v17;
  }

  if ((v16 & 0x8000000000000) != 0)
  {
    v19 = StripVideoThumbnailResultsForEligibleAsset(assetCopy, *analysis, v14);
    v20 = *analysis;
    *analysis = v19;
  }

  v21 = v16 & 0xFFFFFFFFDFFFFFFFLL;
  if (*analysis)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v22 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        [*analysis vcp_types];
        v23 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v36 = v14;
        v37 = 2112;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Existing analysis: %@", buf, 0x16u);
      }
    }

    if ([assetCopy vcp_isAnalysisValid:*analysis])
    {
      vcp_types = [*analysis vcp_types];
      if ([assetCopy isVideo] & (vcp_types >> 45))
      {
        vcp_types |= 0x2000000000000uLL;
      }

      [*analysis vcp_version];
      v25 = v21 & MediaAnalysisTypesUpdatedSince() & vcp_types;
      v26 = (vcp_types ^ v16) & v21;
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

    v33 = *analysis;
    *analysis = 0;
  }

LABEL_31:

  objc_autoreleasePoolPop(v12);
  return v21;
}

- (unint64_t)missingAnalysisForAsset:(id)asset existingAnalysis:(id *)analysis resources:(id)resources forLocalResourcesOnly:(BOOL)only
{
  onlyCopy = only;
  assetCopy = asset;
  resourcesCopy = resources;
  context = objc_autoreleasePoolPush();
  localIdentifier = [assetCopy localIdentifier];
  v56 = [NSString stringWithFormat:@"[BackgroundAnalysisTask][%@]", localIdentifier];
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

  vcp_modificationDate = [assetCopy vcp_modificationDate];
  v14 = vcp_modificationDate == 0;

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
    photoLibrary = [(VCPTask *)self photoLibrary];
    v53 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary];

    v64 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary2 = [(VCPTask *)self photoLibrary];
      mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
      v63 = 0;
      [mad_fetchRequest fetchProcessingStatus:0 attempts:&v64 lastAttemptDate:0 nextAttemptDate:&v63 localIdentifier:localIdentifier taskID:self->_taskID];
      v18 = v63;
    }

    else
    {
      v62 = 0;
      [v53 queryProcessingStatus:0 attempts:&v64 lastAttemptDate:0 andNextAttemptDate:&v62 forLocalIdentifier:localIdentifier andTaskID:self->_taskID];
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
      v27 = [(VCPBackgroundAnalysisTask *)self possibleAnalysisForAsset:assetCopy withResources:resourcesCopy forLocalResourcesOnly:onlyCopy];
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        photoLibrary3 = [(VCPTask *)self photoLibrary];
        mad_fetchRequest2 = [photoLibrary3 mad_fetchRequest];
        v30 = [mad_fetchRequest2 fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
        v31 = *analysis;
        *analysis = v30;
      }

      else
      {
        v61 = 0;
        [v53 analysisForAsset:localIdentifier analysis:&v61];
        v32 = v61;
        photoLibrary3 = *analysis;
        *analysis = v32;
      }

      if ((v27 & 0x40000) != 0)
      {
        v33 = StripMovieCurationResultsForEligibleAsset(assetCopy, *analysis, v56);
        v34 = *analysis;
        *analysis = v33;
      }

      if ((v27 & 0x8000000000000) != 0)
      {
        v35 = StripVideoThumbnailResultsForEligibleAsset(assetCopy, *analysis, v56);
        v36 = *analysis;
        *analysis = v35;
      }

      v20 = v27 & 0xFFFFFFFFDFFFFFFFLL;
      if (*analysis)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v37 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            [*analysis vcp_types];
            v38 = MediaAnalysisTypeShortDescription();
            *buf = 138412546;
            v66 = v56;
            v67 = 2112;
            v68[0] = v38;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Existing analysis: %@", buf, 0x16u);
          }
        }

        if ([assetCopy vcp_isAnalysisValid:*analysis])
        {
          vcp_types = [*analysis vcp_types];
          if ([assetCopy isVideo] & (vcp_types >> 45))
          {
            vcp_types |= 0x2000000000000uLL;
          }

          [*analysis vcp_version];
          v40 = v20 & MediaAnalysisTypesUpdatedSince() & vcp_types;
          v41 = (vcp_types ^ v27) & v20;
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
            vcp_version = [*analysis vcp_version];
            if (vcp_version < MediaAnalysisVersion)
            {
              if (+[MADManagedPhotosAsset isMACDPersistEnabled])
              {
                photoLibrary4 = [(VCPTask *)self photoLibrary];
                v57[0] = _NSConcreteStackBlock;
                v57[1] = 3221225472;
                v57[2] = sub_1000C0010;
                v57[3] = &unk_100283AD0;
                v58 = localIdentifier;
                [photoLibrary4 mad_performAnalysisDataStoreChanges:v57 error:0];
              }

              if (+[VCPDatabaseWriter isLegacyPersistEnabled])
              {
                [v53 bumpAnalysisVersionForAsset:localIdentifier];
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
            photoLibrary5 = [(VCPTask *)self photoLibrary];
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000BFF54;
            v59[3] = &unk_100283AD0;
            v60 = localIdentifier;
            [photoLibrary5 mad_performAnalysisDataStoreChanges:v59 error:0];
          }

          if (+[VCPDatabaseWriter isLegacyPersistEnabled])
          {
            [v53 deleteAnalysisForAsset:localIdentifier];
          }

          v48 = *analysis;
          *analysis = 0;
        }
      }
    }
  }

  objc_autoreleasePoolPop(context);
  return v20;
}

@end