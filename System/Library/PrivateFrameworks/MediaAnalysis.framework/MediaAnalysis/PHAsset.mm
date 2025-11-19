@interface PHAsset
- (BOOL)mad_isFullAnalysisVersionOutdated:(BOOL)a3;
- (BOOL)vcp_eligibleForFullAnalysis;
- (BOOL)vcp_isAnalysisValid:(id)a3;
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

  v4 = [(PHAsset *)self localIdentifier];
  v5 = [(PHAsset *)self vcp_modificationDate];

  if (v5)
  {
    v21 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      v6 = [(PHAsset *)self photoLibrary];
      v7 = [v6 mad_fetchRequest];
      v20 = 0;
      [v7 fetchProcessingStatus:0 attempts:&v21 lastAttemptDate:0 nextAttemptDate:&v20 localIdentifier:v4 taskID:v3];
      v8 = v20;
    }

    else
    {
      v11 = [(PHAsset *)self photoLibrary];
      v6 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];

      v19 = 0;
      [v6 queryProcessingStatus:0 attempts:&v21 lastAttemptDate:0 andNextAttemptDate:&v19 forLocalIdentifier:v4 andTaskID:v3];
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
          v23 = v4;
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
        v23 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "  [%@] Missing modification date; ineligible", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)vcp_isAnalysisValid:(id)a3
{
  v4 = a3;
  v5 = [(PHAsset *)self vcp_modificationDate];
  v6 = [v4 vcp_dateModified];
  v7 = [v5 isEqualToDate:v6];

  return v7;
}

- (BOOL)mad_isFullAnalysisVersionOutdated:(BOOL)a3
{
  v3 = a3;
  if (([(PHAsset *)self vcp_needsFullAnalysisProcessing:?]& 1) != 0)
  {
    return 1;
  }

  if (([(PHAsset *)self mad_isNonLivePhotoImage]& 1) != 0 || !v3)
  {
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v6 = [(PHAsset *)self photoLibrary];
      v7 = [v6 mad_fetchRequest];

      v8 = [(PHAsset *)self localIdentifier];
      v9 = [v7 fetchAnalysisWithLocalIdentifier:v8 predicate:0];
    }

    else
    {
      v10 = [(PHAsset *)self photoLibrary];
      v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v10];

      v12 = +[NSMutableDictionary dictionary];
      v13 = [(PHAsset *)self localIdentifier];
      v20 = v13;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [v11 queryHeadersForAssets:v14 analyses:v12];

      v15 = [(PHAsset *)self localIdentifier];
      v9 = [v12 objectForKeyedSubscript:v15];
    }

    if (v9)
    {
      v16 = [v9 vcp_version];
      if (v16 < MediaAnalysisVersion)
      {

        return 1;
      }

      v17 = [v9 vcp_dateModified];
      v18 = [(PHAsset *)self vcp_modificationDate];
      v19 = [v17 isEqualToDate:v18];

      if ((v19 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

@end