@interface PHAsset
- (BOOL)mad_isFullAnalysisVersionOutdated:(BOOL)outdated;
- (BOOL)vcp_eligibleForFullAnalysis;
- (BOOL)vcp_isAnalysisValid:(id)valid;
@end

@implementation PHAsset

- (BOOL)vcp_eligibleForFullAnalysis
{
  if (_os_feature_enabled_impl())
  {
    v3 = 254;
  }

  else
  {
    v3 = 1;
  }

  localIdentifier = [(PHAsset *)self localIdentifier];
  vcp_modificationDate = [(PHAsset *)self vcp_modificationDate];

  if (vcp_modificationDate)
  {
    v21 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary = [(PHAsset *)self photoLibrary];
      mad_fetchRequest = [photoLibrary mad_fetchRequest];
      v20 = 0;
      [mad_fetchRequest fetchProcessingStatus:0 attempts:&v21 lastAttemptDate:0 nextAttemptDate:&v20 localIdentifier:localIdentifier taskID:v3];
      v8 = v20;
    }

    else
    {
      photoLibrary2 = [(PHAsset *)self photoLibrary];
      photoLibrary = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary2];

      v19 = 0;
      [photoLibrary queryProcessingStatus:0 attempts:&v21 lastAttemptDate:0 andNextAttemptDate:&v19 forLocalIdentifier:localIdentifier andTaskID:v3];
      v8 = v19;
    }

    if (v21 && (+[NSDate date](NSDate, "date"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v8 compare:v12] == 1, v12, v13))
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v14 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          v15 = v21;
          v16 = +[VCPLogManager dateFormatter];
          v17 = [v16 stringFromDate:v8];
          *buf = 138412802;
          v23 = localIdentifier;
          v24 = 1024;
          v25 = v15;
          v26 = 2112;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "  [%@] Too many failure attempts (%d); No retry until %@", buf, 0x1Cu);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v23 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "  [%@] Missing modification date; ineligible", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)vcp_isAnalysisValid:(id)valid
{
  validCopy = valid;
  vcp_modificationDate = [(PHAsset *)self vcp_modificationDate];
  vcp_dateModified = [validCopy vcp_dateModified];
  v7 = [vcp_modificationDate isEqualToDate:vcp_dateModified];

  return v7;
}

- (BOOL)mad_isFullAnalysisVersionOutdated:(BOOL)outdated
{
  outdatedCopy = outdated;
  if (([(PHAsset *)self vcp_needsFullAnalysisProcessing:?]& 1) != 0)
  {
    return 1;
  }

  if (([(PHAsset *)self mad_isNonLivePhotoImage]& 1) != 0 || !outdatedCopy)
  {
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      photoLibrary = [(PHAsset *)self photoLibrary];
      mad_fetchRequest = [photoLibrary mad_fetchRequest];

      localIdentifier = [(PHAsset *)self localIdentifier];
      v9 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
    }

    else
    {
      photoLibrary2 = [(PHAsset *)self photoLibrary];
      v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary2];

      v12 = +[NSMutableDictionary dictionary];
      localIdentifier2 = [(PHAsset *)self localIdentifier];
      v20 = localIdentifier2;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [v11 queryHeadersForAssets:v14 analyses:v12];

      localIdentifier3 = [(PHAsset *)self localIdentifier];
      v9 = [v12 objectForKeyedSubscript:localIdentifier3];
    }

    if (v9)
    {
      vcp_version = [v9 vcp_version];
      if (vcp_version < MediaAnalysisVersion)
      {

        return 1;
      }

      vcp_dateModified = [v9 vcp_dateModified];
      vcp_modificationDate = [(PHAsset *)self vcp_modificationDate];
      v19 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

      if ((v19 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

@end