@interface VCPBackgroundProcessingMetrics
+ (id)sharedMetricsWithPhotoLibrary:(id)a3;
- (VCPBackgroundProcessingMetrics)initWithPhotoLibrary:(id)a3;
- (int)_persistToMACDWithElapsedTime:(int64_t)a3;
- (int)_persistWithLegacyDatabaseWithElapsedTime:(int64_t)a3;
- (int)loadMetrics;
- (int)persist;
- (int)reportAnalyzedAsset:(id)a3 withAnalysis:(id)a4 andProcessingTime:(double)a5;
@end

@implementation VCPBackgroundProcessingMetrics

- (VCPBackgroundProcessingMetrics)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VCPBackgroundProcessingMetrics;
  v6 = [(VCPBackgroundProcessingMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photolibrary, a3);
  }

  return v7;
}

+ (id)sharedMetricsWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 photoLibraryURL];
  v7 = [v6 absoluteString];
  v8 = [NSString stringWithFormat:@"%@-%@", v5, v7];

  v9 = +[VCPSharedInstanceManager sharedManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C1168;
  v13[3] = &unk_100285978;
  v10 = v3;
  v14 = v10;
  v11 = [v9 sharedInstanceWithIdentifier:v8 andCreationBlock:v13];

  return v11;
}

- (int)loadMetrics
{
  if (self->_isMetricsLoaded)
  {
    return 0;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VCPBackgroundProcessingMetrics] Loading background processing metrics from database", buf, 2u);
    }
  }

  v5 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self->_photolibrary];
  database = self->_database;
  self->_database = v5;

  if (self->_database)
  {
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v7 = [(PHPhotoLibrary *)self->_photolibrary mad_fetchRequest];
      v48 = 0;
      v2 = [v7 fetchAllDataStoreKeyValuePairs:&v48];
      v8 = v48;

      if (v2)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v9 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v9))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[VCPBackgroundProcessingMetrics][MACD] Failed to load background processing metrics", buf, 2u);
          }
        }

LABEL_21:

        return v2;
      }

      v11 = v8;
    }

    else
    {
      v11 = +[NSMutableDictionary dictionary];
      v2 = [(VCPDatabaseWriter *)self->_database loadAllKeyValuePairs:v11];
      if (v2)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v12 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v12))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[VCPBackgroundProcessingMetrics] Failed to load background processing metrics", buf, 2u);
          }
        }

        v8 = 0;
        goto LABEL_21;
      }
    }

    v14 = [v11 objectForKeyedSubscript:@"NumberOfTimesScheduledDatabaseCreation"];
    self->_numOfTimesScheduledDatabaseCreation = [v14 longLongValue];

    v15 = [v11 objectForKeyedSubscript:@"TotalAnalyzingTimeDatabaseCreation"];
    self->_analyzingTimeDatabaseCreation = [v15 longLongValue];

    v16 = [v11 objectForKeyedSubscript:@"NumberOfImagesFullyAnalyzedToday"];
    self->_numImageFullyAnalyzedToday = [v16 longLongValue];

    v17 = [v11 objectForKeyedSubscript:@"NumberOfLivePhotosFullyAnalyzedToday"];
    self->_numLivePhotoFullyAnalyzedToday = [v17 longLongValue];

    v18 = [v11 objectForKeyedSubscript:@"NumberOfMoviesFullyAnalyzedToday"];
    self->_numMovieFullyAnalyzedToday = [v18 longLongValue];

    v19 = [v11 objectForKeyedSubscript:@"MovieDurationFullyAnalyzedToday"];
    self->_movieDurationFullyAnalyzedToday = [v19 longLongValue];

    v20 = [v11 objectForKeyedSubscript:@"NumberOfImagesFullyAnalyzedInLatestVersion"];
    self->_numImageFullyAnalyzedLatestVersion = [v20 longLongValue];

    v21 = [v11 objectForKeyedSubscript:@"NumberOfLivePhotosFullyAnalyzedInLatestVersion"];
    self->_numLivePhotoFullyAnalyzedLatestVersion = [v21 longLongValue];

    v22 = [v11 objectForKeyedSubscript:@"NumberOfMoviesFullyAnalyzedInLatestVersion"];
    self->_numMovieFullyAnalyzedLatestVersion = [v22 longLongValue];

    v23 = [v11 objectForKeyedSubscript:@"MovieDurationFullyAnalyzedInLatestVersion"];
    self->_movieDurationFullyAnalyzedLatestVersion = [v23 longLongValue];

    v24 = [v11 objectForKeyedSubscript:@"TotalTimeSpentFullyAnalyzingImageInLatestVersion"];
    self->_timeFullyAnalyzingImageLatestVersion = [v24 longLongValue];

    v25 = [v11 objectForKeyedSubscript:@"TotalTimeSpentFullyAnalyzingLivePhotoInLatestVersion"];
    self->_timeFullyAnalyzingLivePhotoLatestVersion = [v25 longLongValue];

    v26 = [v11 objectForKeyedSubscript:@"TotalTimeSpentFullyAnalyzingMovieInLatestVersion"];
    self->_timeFullyAnalyzingMovieLatestVersion = [v26 longLongValue];

    v27 = [v11 objectForKeyedSubscript:@"NumberOfImagesPartiallyAnalyzedToday"];
    self->_numImagePartiallyAnalyzedToday = [v27 longLongValue];

    v28 = [v11 objectForKeyedSubscript:@"NumberOfLivePhotosPartiallyAnalyzedToday"];
    self->_numLivePhotoPartiallyAnalyzedToday = [v28 longLongValue];

    v29 = [v11 objectForKeyedSubscript:@"NumberOfMoviesPartiallyAnalyzedToday"];
    self->_numMoviePartiallyAnalyzedToday = [v29 longLongValue];

    v30 = [v11 objectForKeyedSubscript:@"MovieDurationPartiallyAnalyzedToday"];
    self->_movieDurationPartiallyAnalyzedToday = [v30 longLongValue];

    v31 = [v11 objectForKeyedSubscript:@"NumberOfImagesPartiallyAnalyzedInLatestVersion"];
    self->_numImagePartiallyAnalyzedLatestVersion = [v31 longLongValue];

    v32 = [v11 objectForKeyedSubscript:@"NumberOfLivePhotosPartiallyAnalyzedInLatestVersion"];
    self->_numLivePhotoPartiallyAnalyzedLatestVersion = [v32 longLongValue];

    v33 = [v11 objectForKeyedSubscript:@"NumberOfMoviesPartiallyAnalyzedInLatestVersion"];
    self->_numMoviePartiallyAnalyzedLatestVersion = [v33 longLongValue];

    v34 = [v11 objectForKeyedSubscript:@"MovieDurationPartiallyAnalyzedInLatestVersion"];
    self->_movieDurationPartiallyAnalyzedLatestVersion = [v34 longLongValue];

    v35 = [v11 objectForKeyedSubscript:@"TotalTimeSpentPartiallyAnalyzingImageInLatestVersion"];
    self->_timePartiallyAnalyzingImageLatestVersion = [v35 longLongValue];

    v36 = [v11 objectForKeyedSubscript:@"TotalTimeSpentPartiallyAnalyzingLivePhotoInLatestVersion"];
    self->_timePartiallyAnalyzingLivePhotoLatestVersion = [v36 longLongValue];

    v37 = [v11 objectForKeyedSubscript:@"TotalTimeSpentPartiallyAnalyzingMovieInLatestVersion"];
    self->_timePartiallyAnalyzingMovieLatestVersion = [v37 longLongValue];

    v38 = [v11 objectForKeyedSubscript:@"TotalTimeRunningWithPendingAnalysisToday"];
    self->_timeRunningWithPendingToday = [v38 longLongValue];

    v39 = [v11 objectForKeyedSubscript:@"NumberOfTimesScheduledWithPendingAnalysisToday"];
    self->_numOfTimesScheduledWithPendingToday = [v39 longLongValue];

    v40 = [v11 objectForKeyedSubscript:@"TotalTimeRunningWithPendingAnalysisInLatestVersion"];
    self->_timeRunningWithPendingLatestVersion = [v40 longLongValue];

    v41 = [v11 objectForKeyedSubscript:@"NumberOfTimesScheduledWithPendingAnalysisInLatestVersion"];
    self->_numOfTimesScheduledWithPendingLatestVersion = [v41 longLongValue];

    v42 = [v11 objectForKeyedSubscript:@"TotalTimeRunningWithoutPendingAnalysisToday"];
    self->_timeRunningWithoutPendingToday = [v42 longLongValue];

    v43 = [v11 objectForKeyedSubscript:@"NumberOfTimesScheduledWithoutPendingAnalysisToday"];
    self->_numOfTimesScheduledWithoutPendingToday = [v43 longLongValue];

    v44 = [v11 objectForKeyedSubscript:@"TotalTimeRunningWithoutPendingAnalysisInLatestVersion"];
    self->_timeRunningWithoutPendingLatestVersion = [v44 longLongValue];

    v45 = [v11 objectForKeyedSubscript:@"NumberOfTimesScheduledWithoutPendingAnalysisInLatestVersion"];
    self->_numOfTimesScheduledWithoutPendingLatestVersion = [v45 longLongValue];

    v46 = +[NSDate now];
    start = self->_start;
    self->_start = v46;

    *&self->_hasFullyAnalyzedMovie = 0;
    *&self->_hasPendingAnalysis = 0;
    self->_isMetricsLoaded = 1;

    return 0;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VCPBackgroundProcessingMetrics] Failed to open database for background processing metrics", buf, 2u);
    }
  }

  return -18;
}

- (int)reportAnalyzedAsset:(id)a3 withAnalysis:(id)a4 andProcessingTime:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_isMetricsLoaded)
  {
    if (v8)
    {
      self->_hasPendingAnalysis = 1;
      v10 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v8];
      v11 = [v8 vcp_fullAnalysisTypesForResources:v10];
      if ([v8 vcp_fullAnalysisTypes] == v11)
      {
        if ([v8 isVideo])
        {
          self->_hasFullyAnalyzedMovie = 1;
          [v8 duration];
          self->_movieDurationFullyAnalyzedToday += vcvtpd_s64_f64(v12);
          [v8 duration];
          self->_movieDurationFullyAnalyzedLatestVersion += vcvtpd_s64_f64(v13);
          v14 = ceil(a5);
          v15 = 56;
          v16 = 24;
          v17 = 88;
        }

        else
        {
          v22 = [v8 vcp_isLivePhoto];
          v14 = ceil(a5);
          if (v22)
          {
            self->_hasFullyAnalyzedLivePhoto = 1;
            v15 = 48;
            v16 = 16;
            v17 = 80;
          }

          else
          {
            self->_hasFullyAnalyzedImage = 1;
            v15 = 40;
            v16 = 8;
            v17 = 72;
          }
        }
      }

      else if ([v8 isVideo])
      {
        self->_hasPartiallyAnalyzedMovie = 1;
        [v8 duration];
        self->_movieDurationPartiallyAnalyzedToday += vcvtpd_s64_f64(v20);
        [v8 duration];
        self->_movieDurationPartiallyAnalyzedLatestVersion += vcvtpd_s64_f64(v21);
        v14 = ceil(a5);
        v15 = 144;
        v16 = 112;
        v17 = 176;
      }

      else
      {
        v23 = [v8 vcp_isLivePhoto];
        v14 = ceil(a5);
        if (v23)
        {
          self->_hasPartiallyAnalyzedLivePhoto = 1;
          v15 = 136;
          v16 = 104;
          v17 = 168;
        }

        else
        {
          self->_hasPartiallyAnalyzedImage = 1;
          v15 = 128;
          v16 = 96;
          v17 = 160;
        }
      }

      *(&self->super.isa + v17) = (*(&self->super.isa + v17) + v14);
      ++*(&self->super.isa + v16);
      ++*(&self->super.isa + v15);

      v19 = 0;
    }

    else
    {
      v19 = -50;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[VCPBackgroundProcessingMetrics] No existing metrics from database, skip reporting", v25, 2u);
      }
    }

    v19 = -18;
  }

  return v19;
}

- (int)_persistWithLegacyDatabaseWithElapsedTime:(int64_t)a3
{
  v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numOfTimesScheduledDatabaseCreation + 1 forKey:@"NumberOfTimesScheduledDatabaseCreation"];
  if (v5)
  {
    goto LABEL_3;
  }

  v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_analyzingTimeDatabaseCreation + a3 forKey:@"TotalAnalyzingTimeDatabaseCreation"];
  if (v5)
  {
    goto LABEL_3;
  }

  database = self->_database;
  if (self->_hasPendingAnalysis)
  {
    v5 = [(VCPDatabaseWriter *)database setValue:self->_timeRunningWithPendingToday + a3 forKey:@"TotalTimeRunningWithPendingAnalysisToday"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numOfTimesScheduledWithPendingToday + 1 forKey:@"NumberOfTimesScheduledWithPendingAnalysisToday"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timeRunningWithPendingLatestVersion + a3 forKey:@"TotalTimeRunningWithPendingAnalysisInLatestVersion"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numOfTimesScheduledWithPendingLatestVersion + 1 forKey:@"NumberOfTimesScheduledWithPendingAnalysisInLatestVersion"];
    if (v5)
    {
      goto LABEL_3;
    }

    if (self->_hasFullyAnalyzedImage || self->_hasFullyAnalyzedLivePhoto || self->_hasFullyAnalyzedMovie)
    {
      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoFullyAnalyzedToday + self->_numImageFullyAnalyzedToday + self->_numMovieFullyAnalyzedToday forKey:@"NumberOfAssetsFullyAnalyzedToday"];
      if (v5)
      {
        goto LABEL_3;
      }

      if (self->_hasFullyAnalyzedImage)
      {
        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numImageFullyAnalyzedToday forKey:@"NumberOfImagesFullyAnalyzedToday"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numImageFullyAnalyzedLatestVersion forKey:@"NumberOfImagesFullyAnalyzedInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timeFullyAnalyzingImageLatestVersion forKey:@"TotalTimeSpentFullyAnalyzingImageInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }
      }

      if (self->_hasFullyAnalyzedLivePhoto)
      {
        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoFullyAnalyzedToday forKey:@"NumberOfLivePhotosFullyAnalyzedToday"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoFullyAnalyzedLatestVersion forKey:@"NumberOfLivePhotosFullyAnalyzedInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timeFullyAnalyzingLivePhotoLatestVersion forKey:@"TotalTimeSpentFullyAnalyzingLivePhotoInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }
      }

      if (self->_hasFullyAnalyzedMovie)
      {
        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numMovieFullyAnalyzedToday forKey:@"NumberOfMoviesFullyAnalyzedToday"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numMovieFullyAnalyzedLatestVersion forKey:@"NumberOfMoviesFullyAnalyzedInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_movieDurationFullyAnalyzedToday forKey:@"MovieDurationFullyAnalyzedToday"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timeFullyAnalyzingMovieLatestVersion forKey:@"TotalTimeSpentFullyAnalyzingMovieInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }

        v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_movieDurationFullyAnalyzedLatestVersion forKey:@"MovieDurationFullyAnalyzedInLatestVersion"];
        if (v5)
        {
          goto LABEL_3;
        }
      }
    }

    if (!self->_hasPartiallyAnalyzedImage && !self->_hasPartiallyAnalyzedLivePhoto && !self->_hasPartiallyAnalyzedMovie)
    {
      return [(VCPDatabaseWriter *)self->_database commit];
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoPartiallyAnalyzedToday + self->_numImagePartiallyAnalyzedToday + self->_numMoviePartiallyAnalyzedToday forKey:@"NumberOfAssetsPartiallyAnalyzedToday"];
    if (v5)
    {
      goto LABEL_3;
    }

    if (self->_hasPartiallyAnalyzedImage)
    {
      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numImagePartiallyAnalyzedToday forKey:@"NumberOfImagesPartiallyAnalyzedToday"];
      if (v5)
      {
        goto LABEL_3;
      }

      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numImagePartiallyAnalyzedLatestVersion forKey:@"NumberOfImagesPartiallyAnalyzedInLatestVersion"];
      if (v5)
      {
        goto LABEL_3;
      }

      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timePartiallyAnalyzingImageLatestVersion forKey:@"TotalTimeSpentPartiallyAnalyzingImageInLatestVersion"];
      if (v5)
      {
        goto LABEL_3;
      }
    }

    if (self->_hasPartiallyAnalyzedLivePhoto)
    {
      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoPartiallyAnalyzedToday forKey:@"NumberOfLivePhotosPartiallyAnalyzedToday"];
      if (v5)
      {
        goto LABEL_3;
      }

      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numLivePhotoPartiallyAnalyzedLatestVersion forKey:@"NumberOfLivePhotosPartiallyAnalyzedInLatestVersion"];
      if (v5)
      {
        goto LABEL_3;
      }

      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timePartiallyAnalyzingLivePhotoLatestVersion forKey:@"TotalTimeSpentPartiallyAnalyzingLivePhotoInLatestVersion"];
      if (v5)
      {
        goto LABEL_3;
      }
    }

    if (!self->_hasPartiallyAnalyzedMovie)
    {
      return [(VCPDatabaseWriter *)self->_database commit];
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numMoviePartiallyAnalyzedToday forKey:@"NumberOfMoviesPartiallyAnalyzedToday"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numMoviePartiallyAnalyzedLatestVersion forKey:@"NumberOfMoviesPartiallyAnalyzedInLatestVersion"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_movieDurationPartiallyAnalyzedToday forKey:@"MovieDurationPartiallyAnalyzedToday"];
    if (v5)
    {
      goto LABEL_3;
    }

    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timePartiallyAnalyzingMovieLatestVersion forKey:@"TotalTimeSpentPartiallyAnalyzingMovieInLatestVersion"];
    if (v5)
    {
      goto LABEL_3;
    }

    v10 = self->_database;
    movieDurationPartiallyAnalyzedLatestVersion = self->_movieDurationPartiallyAnalyzedLatestVersion;
    v12 = @"MovieDurationPartiallyAnalyzedInLatestVersion";
LABEL_53:
    v6 = [(VCPDatabaseWriter *)v10 setValue:movieDurationPartiallyAnalyzedLatestVersion forKey:v12];
    if (!v6)
    {
      return [(VCPDatabaseWriter *)self->_database commit];
    }

    goto LABEL_4;
  }

  v5 = [(VCPDatabaseWriter *)database setValue:self->_timeRunningWithoutPendingToday + a3 forKey:@"TotalTimeRunningWithoutPendingAnalysisToday"];
  if (!v5)
  {
    v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_numOfTimesScheduledWithoutPendingToday + 1 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisToday"];
    if (!v5)
    {
      v5 = [(VCPDatabaseWriter *)self->_database setValue:self->_timeRunningWithoutPendingLatestVersion + a3 forKey:@"TotalTimeRunningWithoutPendingAnalysisInLatestVersion"];
      if (!v5)
      {
        v10 = self->_database;
        v12 = @"NumberOfTimesScheduledWithoutPendingAnalysisInLatestVersion";
        movieDurationPartiallyAnalyzedLatestVersion = self->_numOfTimesScheduledWithoutPendingLatestVersion + 1;
        goto LABEL_53;
      }
    }
  }

LABEL_3:
  v6 = v5;
LABEL_4:
  if (MediaAnalysisLogLevel() >= 4)
  {
    v7 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v13[0] = 67109120;
      v13[1] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Failed to persist VCPBackgroundProcessingMetrics - %d", v13, 8u);
    }
  }

  return [(VCPDatabaseWriter *)self->_database commit];
}

- (int)_persistToMACDWithElapsedTime:(int64_t)a3
{
  photolibrary = self->_photolibrary;
  v9 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C2190;
  v10[3] = &unk_100285478;
  v10[4] = self;
  v10[5] = a3;
  v4 = [(PHPhotoLibrary *)photolibrary mad_performAnalysisDataStoreChanges:v10 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 code];
  }

  return v7;
}

- (int)persist
{
  isMetricsLoaded = self->_isMetricsLoaded;
  v4 = MediaAnalysisLogLevel();
  if (!isMetricsLoaded)
  {
    if (v4 < 3)
    {
      return -18;
    }

    v13 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v13))
    {
      return -18;
    }

    *v21 = 0;
    v14 = "[VCPBackgroundProcessingMetrics] No existing metrics from database, skip persisting";
    v15 = v21;
    goto LABEL_13;
  }

  if (v4 >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "VCPBackgroundProcessingMetrics persisting results ...", buf, 2u);
    }
  }

  v6 = +[NSDate now];
  [v6 timeIntervalSinceDate:self->_start];
  v8 = vcvtpd_s64_f64(v7);

  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v9 = [(VCPBackgroundProcessingMetrics *)self _persistToMACDWithElapsedTime:v8];
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v10 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v19 = 0;
          v11 = "[VCPBackgroundProcessingMetrics][MACD] Failed to persist results";
          v12 = &v19;
LABEL_19:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, v11, v12, 2u);
          return v9;
        }
      }
    }

    return v9;
  }

  if (!self->_database)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return -18;
    }

    v13 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v13))
    {
      return -18;
    }

    v18 = 0;
    v14 = "[VCPBackgroundProcessingMetrics] Failed to initialize database to persist results";
    v15 = &v18;
LABEL_13:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, v15, 2u);
    return -18;
  }

  v9 = [(VCPBackgroundProcessingMetrics *)self _persistWithLegacyDatabaseWithElapsedTime:v8];
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v17 = 0;
        v11 = "[VCPBackgroundProcessingMetrics] Failed to persist results";
        v12 = &v17;
        goto LABEL_19;
      }
    }
  }

  return v9;
}

@end