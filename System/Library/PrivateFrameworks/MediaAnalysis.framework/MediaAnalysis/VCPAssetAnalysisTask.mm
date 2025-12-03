@interface VCPAssetAnalysisTask
+ (id)taskWithAnalysisTypes:(unint64_t)types forAsset:(id)asset withExistingAnalysis:(id)analysis;
- (VCPAssetAnalysisTask)initWithAnalysisTypes:(unint64_t)types forAsset:(id)asset withExistingAnalysis:(id)analysis;
- (double)cost;
- (int)mainInternal;
- (int64_t)_valueForKey:(id)key;
- (void)_reportCoreAnalyticsWithAnalysis:(id)analysis analysisStatus:(int64_t)status processingInterval:(double)interval extendedAnalysisStatus:(id)analysisStatus;
- (void)publishLivePhotoEffectsAnalysis:(id)analysis toAsset:(id)asset;
@end

@implementation VCPAssetAnalysisTask

- (VCPAssetAnalysisTask)initWithAnalysisTypes:(unint64_t)types forAsset:(id)asset withExistingAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  if (assetCopy)
  {
    photoLibrary = [assetCopy photoLibrary];
    v20.receiver = self;
    v20.super_class = VCPAssetAnalysisTask;
    v12 = [(VCPTask *)&v20 initWithPhotoLibrary:photoLibrary];

    if (v12)
    {
      v12->_types = types;
      objc_storeStrong(&v12->_asset, asset);
      objc_storeStrong(&v12->_existingAnalysis, analysis);
      v12->_allowStreaming = 0;
      v13 = _os_feature_enabled_impl();
      v14 = 254;
      if (!v13)
      {
        v14 = 1;
      }

      v12->_taskID = v14;
      photoLibrary2 = [(PHAsset *)v12->_asset photoLibrary];
      v16 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary2];
      database = v12->_database;
      v12->_database = v16;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)_valueForKey:(id)key
{
  keyCopy = key;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    photoLibrary = [(VCPTask *)self photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v7 = [mad_fetchRequest dataStoreValueForKey:keyCopy];
  }

  else
  {
    v7 = [(VCPDatabaseWriter *)self->_database valueForKey:keyCopy];
  }

  return v7;
}

+ (id)taskWithAnalysisTypes:(unint64_t)types forAsset:(id)asset withExistingAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  v9 = [objc_alloc(objc_opt_class()) initWithAnalysisTypes:types forAsset:assetCopy withExistingAnalysis:analysisCopy];

  return v9;
}

- (double)cost
{
  if ([(PHAsset *)self->_asset isVideo]&& self->_types != VCPMAFullAnalysisTypesThumbnail)
  {
    asset = self->_asset;

    [(PHAsset *)asset duration];
  }

  else
  {
    if (![(PHAsset *)self->_asset vcp_isLivePhoto])
    {
      return 1.0;
    }

    result = 3.0;
    if ((VCPMAFullAnalysisTypesLivePhoto & self->_types) == 0)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)publishLivePhotoEffectsAnalysis:(id)analysis toAsset:(id)asset
{
  analysisCopy = analysis;
  assetCopy = asset;
  if (assetCopy)
  {
    v7 = [analysisCopy objectForKeyedSubscript:MediaAnalysisResultsKey];
    v8 = [v7 objectForKeyedSubscript:MediaAnalysisLivePhotoEffectsResultsKey];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:MediaAnalysisResultLoopSuggestionStateAttributeKey];
        intValue = [v11 intValue];

        v13 = [v10 objectForKeyedSubscript:MediaAnalysisResultLongExposureSuggestionStateAttributeKey];
        intValue2 = [v13 intValue];

        photoLibrary = [assetCopy photoLibrary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B93B8;
        v21[3] = &unk_1002836E8;
        v22 = assetCopy;
        v23 = intValue;
        v24 = intValue2;
        v20 = 0;
        v16 = [photoLibrary performChangesAndWait:v21 error:&v20];
        v17 = v20;

        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v19 = @"NO";
            if (v16)
            {
              v19 = @"YES";
            }

            *buf = 138412290;
            v26 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Publish live photo effects suggestion states success: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_reportCoreAnalyticsWithAnalysis:(id)analysis analysisStatus:(int64_t)status processingInterval:(double)interval extendedAnalysisStatus:(id)analysisStatus
{
  analysisCopy = analysis;
  analysisStatusCopy = analysisStatus;
  v37 = analysisStatusCopy;
  v11 = +[NSMutableDictionary dictionary];
  vcp_flags = [analysisCopy vcp_flags];
  v12 = [NSNumber numberWithBool:status == 2];
  [v11 setObject:v12 forKeyedSubscript:@"AnalyzeSuccess"];

  vcp_typeDescription = [(PHAsset *)self->_asset vcp_typeDescription];
  [v11 setObject:vcp_typeDescription forKeyedSubscript:@"AssetType"];

  v14 = [NSNumber numberWithDouble:interval];
  [v11 setObject:v14 forKeyedSubscript:@"TimeAnalyzing"];

  if (([(PHAsset *)self->_asset vcp_isLivePhoto]& 1) != 0 || [(PHAsset *)self->_asset isVideo])
  {
    v15 = [NSNumber numberWithBool:(vcp_flags >> 29) & 1];
    [v11 setObject:v15 forKeyedSubscript:@"IsStreamAnalysis"];

    if ([(PHAsset *)self->_asset isVideo])
    {
      [(PHAsset *)self->_asset duration];
      v16 = [NSNumber numberWithDouble:?];
      [v11 setObject:v16 forKeyedSubscript:@"LengthOfMovieContentInSeconds"];
    }
  }

  if (analysisStatusCopy)
  {
    v17 = analysisStatusCopy;
  }

  else
  {
    v17 = &stru_1002890F8;
  }

  [v11 setObject:v17 forKeyedSubscript:@"AnalysisStatusExtension"];
  vcp_fullAnalysisTypes = [(PHAsset *)self->_asset vcp_fullAnalysisTypes];
  v19 = vcp_fullAnalysisTypes & ~[analysisCopy vcp_types] & 0xFFFFFFFFFFEFFFFFLL;
  v20 = [NSNumber numberWithBool:v19 == 0];
  [v11 setObject:v20 forKeyedSubscript:@"ResourceCondition"];

  [v11 setObject:@"full" forKeyedSubscript:@"Activity"];
  vcp_dateAnalyzed = [analysisCopy vcp_dateAnalyzed];
  [vcp_dateAnalyzed timeIntervalSinceReferenceDate];
  v23 = v22;

  creationDate = [(PHAsset *)self->_asset creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v26 = v25;

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    photoLibrary = [(PHAsset *)self->_asset photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v29 = VCPStartTimestampKeyForTask();
    v30 = [mad_fetchRequest dataStoreValueForKey:v29];
  }

  else
  {
    database = self->_database;
    photoLibrary = VCPStartTimestampKeyForTask();
    v30 = [(VCPDatabaseWriter *)database valueForKey:photoLibrary];
  }

  if (v30 <= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = v30;
  }

  v33 = [NSNumber numberWithLongLong:((((v23 - v32) & ~((v23 - v32) >> 63)) * 0x1845C8A0CE512957uLL) >> 64) >> 13];
  [v11 setObject:v33 forKeyedSubscript:@"DaysWaitedBeforeAnalyzed"];

  v34 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v34 sendEvent:@"com.apple.mediaanalysisd.AnalysisPerAssetInfo" withAnalytics:v11];
  if (status == 3)
  {
    [v34 accumulateInt64Value:1 forField:@"NumberOfAssetsIntoBlacklist" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  }

  if ((vcp_flags & 0x20000000) != 0)
  {
    [v34 accumulateInt64Value:1 forField:@"NumberOfAssetsSteamed" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  }

  if ([(PHAsset *)self->_asset isVideo])
  {
    v35 = VCPAnalyticsFieldNumberOfMoviesAnalyzedPartialResource;
    v36 = VCPAnalyticsFieldNumberOfMoviesAnalyzedFullResource;
  }

  else if ([(PHAsset *)self->_asset vcp_isLivePhoto])
  {
    v35 = VCPAnalyticsFieldNumberOfLivePhotosAnalyzedPartialResource;
    v36 = VCPAnalyticsFieldNumberOfLivePhotosAnalyzedFullResource;
  }

  else
  {
    v35 = VCPAnalyticsFieldNumberOfPhotosAnalyzedPartialResource;
    v36 = VCPAnalyticsFieldNumberOfPhotosAnalyzedFullResource;
  }

  if (!v19)
  {
    v35 = v36;
  }

  [v34 accumulateInt64Value:1 forField:*v35 andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
}

- (int)mainInternal
{
  localIdentifier = [(PHAsset *)self->_asset localIdentifier];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = &_os_log_default;
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      vcp_typeDescription = [(PHAsset *)self->_asset vcp_typeDescription];
      v6 = MediaAnalysisTypeShortDescription();
      *buf = 138412802;
      v163 = localIdentifier;
      v164 = 2112;
      v165 = *&vcp_typeDescription;
      v166 = 2112;
      v167 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "  [%@] Analyzing %@ (%@)", buf, 0x20u);
    }
  }

  v138 = +[NSDate date];
  isVideo = [(PHAsset *)self->_asset isVideo];
  types = self->_types;
  if (types == VCPMAFullAnalysisTypesThumbnail)
  {
    v9 = 0;
  }

  else
  {
    v9 = isVideo;
  }

  if (v9 == 1)
  {
    v10 = [[VCPMovieAnalyzer alloc] initWithPHAsset:self->_asset withExistingAnalysis:self->_existingAnalysis forAnalysisTypes:self->_types];
    buf[0] = 0;
    [v10 setAllowStreaming:{-[VCPAssetAnalysisTask allowStreaming](self, "allowStreaming")}];
    [v10 setOnDemand:0];
    v161[0] = _NSConcreteStackBlock;
    v161[1] = 3221225472;
    v161[2] = sub_1000BB55C;
    v161[3] = &unk_100283000;
    v161[4] = self;
    v11 = [v10 analyzeAsset:v161 streamed:buf];
    asset = [v10 status];
    v13 = [v10 status] == 4;
    v14 = v13 & buf[0];
    goto LABEL_30;
  }

  if ((types & 0xFFFFFFFFCBFFFFFFLL) == 0)
  {
    v10 = [(NSDictionary *)self->_existingAnalysis mutableCopy];
LABEL_14:
    if ((self->_types & 0x34000000) != 0)
    {
      vcp_results = [v10 vcp_results];
      v18 = [vcp_results objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

      if ([v18 count] && (objc_msgSend(v18, "objectAtIndexedSubscript:", 0), v19 = objc_claimAutoreleasedReturnValue(), v20 = (objc_msgSend(v19, "vcp_flags") & 0x80000) == 0, v19, !v20))
      {
        0x34000000 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:self->_asset withExistingAnalysis:0 forAnalysisTypes:self->_types & 0x34000000];
        [0x34000000 setAllowStreaming:{-[VCPAssetAnalysisTask allowStreaming](self, "allowStreaming")}];
        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_1000BB64C;
        v159[3] = &unk_100283000;
        v159[4] = self;
        v24 = [0x34000000 analyzeAsset:v159 withOptions:0];
        asset = [0x34000000 status];
        if (asset == 2)
        {
          vcp_results2 = [v24 vcp_results];
          [v10 vcp_addEntriesFromResults:vcp_results2];

          [v10 vcp_addTypes:self->_types & 0x34000000];
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v21 = &_os_log_default;
          v22 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            *buf = 138412290;
            v163 = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "  [%@] Pre-gating for stabilization not passed.", buf, 0xCu);
          }
        }

        [v10 vcp_addTypes:self->_types & 0x34000000];
        asset = 2;
      }
    }

    else
    {
      asset = 2;
    }

    goto LABEL_27;
  }

  0xFFFFFFFFCBFFFFFFLL = [[VCPPhotoAnalyzer alloc] initWithPHAsset:self->_asset withExistingAnalysis:self->_existingAnalysis forAnalysisTypes:self->_types & 0xFFFFFFFFCBFFFFFFLL];
  [0xFFFFFFFFCBFFFFFFLL setAllowStreaming:{-[VCPAssetAnalysisTask allowStreaming](self, "allowStreaming")}];
  v160[0] = _NSConcreteStackBlock;
  v160[1] = 3221225472;
  v160[2] = sub_1000BB5D4;
  v160[3] = &unk_100283000;
  v160[4] = self;
  v16 = [0xFFFFFFFFCBFFFFFFLL analyzeAsset:v160 withOptions:0];
  v10 = [v16 mutableCopy];

  asset = [0xFFFFFFFFCBFFFFFFLL status];
  if (asset == 2)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (v10)
  {
    v10 = v10;
    v14 = 0;
    v11 = v10;
  }

  else
  {
    v14 = 0;
    v11 = 0;
  }

LABEL_30:

  objc_storeStrong(&self->_analysisResults, v11);
  photoLibrary = [(VCPTask *)self photoLibrary];
  v137 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary];

  if (asset == 4)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v47 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v47))
      {
        *buf = 138412290;
        v163 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "  [%@] Analysis cancelled", buf, 0xCu);
      }
    }

    if (v11 && [(PHAsset *)self->_asset isVideo])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v48 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v48))
        {
          *buf = 138412290;
          v163 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "  [%@] Analysis cancelled with partially valid results", buf, 0xCu);
        }
      }

      v49 = [VCPPausedAnalysis pausedAnalysis:v11 forAsset:self->_asset];
      [v49 persist];
      if ([(VCPAssetAnalysisTask *)self previousAttempts])
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          photoLibrary2 = [(PHAsset *)self->_asset photoLibrary];
          v146 = 0;
          v147[0] = _NSConcreteStackBlock;
          v147[1] = 3221225472;
          v147[2] = sub_1000BB850;
          v147[3] = &unk_100283AD0;
          v147[4] = self;
          v51 = [photoLibrary2 mad_performAnalysisDataStoreChanges:v147 error:&v146];
          v52 = v146;

          if ((v51 & 1) == 0)
          {
            code = [v52 code];
LABEL_169:
            LODWORD(asset) = code;

LABEL_173:
            goto LABEL_174;
          }

LABEL_109:

LABEL_122:
          v58 = @"CanceledWithPartialResults";
LABEL_167:
          asset = +[NSDate date];
          [asset timeIntervalSinceDate:v138];
          v129 = v128;

          [(VCPAssetAnalysisTask *)self _reportCoreAnalyticsWithAnalysis:v11 analysisStatus:4 processingInterval:v58 extendedAnalysisStatus:v129];
          LODWORD(asset) = -128;
          goto LABEL_174;
        }

        previousAttempts = [(VCPAssetAnalysisTask *)self previousAttempts];
        asset = self->_asset;
        taskID = self->_taskID;
        previousStatus = [(VCPAssetAnalysisTask *)self previousStatus];
        lastAttemptDate = [(VCPAssetAnalysisTask *)self lastAttemptDate];
        LODWORD(asset) = [v137 setAttempts:previousAttempts asset:asset taskID:taskID status:previousStatus lastAttemptDate:lastAttemptDate];
      }

      else
      {
        v73 = +[MADManagedProcessingStatus isMACDPersistEnabled];
        v74 = self->_asset;
        if (v73)
        {
          photoLibrary3 = [(PHAsset *)v74 photoLibrary];
          v144 = 0;
          v145[0] = _NSConcreteStackBlock;
          v145[1] = 3221225472;
          v145[2] = sub_1000BB924;
          v145[3] = &unk_100283AD0;
          v145[4] = self;
          v76 = [photoLibrary3 mad_performAnalysisDataStoreChanges:v145 error:&v144];
          v52 = v144;

          if ((v76 & 1) == 0)
          {
            code = [v52 code];
            goto LABEL_169;
          }

          goto LABEL_109;
        }

        localIdentifier2 = [(PHAsset *)v74 localIdentifier];
        LODWORD(asset) = [v137 removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:self->_taskID];
      }

      if (asset == -108 || asset == -36 || asset == -23)
      {
        goto LABEL_173;
      }

      goto LABEL_122;
    }

    v54 = +[NSDate date];
    [v54 timeIntervalSinceDate:v138];
    v56 = v55;

    if (v56 >= 1800.0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v70 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v70))
        {
          *buf = 138412546;
          v163 = localIdentifier;
          v164 = 2048;
          v165 = v56;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v70, "  [%@] Analysis failed to progress in extended processing interval (%.0fs)", buf, 0x16u);
        }
      }

      v58 = @"CanceledWithNoProgress";
      goto LABEL_167;
    }

    if (v14)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v57 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v57))
        {
          *buf = 138412290;
          v163 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "  [%@] Analysis cancelled after resource streamed", buf, 0xCu);
        }
      }

      v58 = @"CanceledAfterStreaming";
      goto LABEL_167;
    }

    if ([(VCPAssetAnalysisTask *)self previousAttempts])
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        photoLibrary4 = [(PHAsset *)self->_asset photoLibrary];
        v142 = 0;
        v143[0] = _NSConcreteStackBlock;
        v143[1] = 3221225472;
        v143[2] = sub_1000BB9C4;
        v143[3] = &unk_100283AD0;
        v143[4] = self;
        v72 = [photoLibrary4 mad_performAnalysisDataStoreChanges:v143 error:&v142];
        v49 = v142;

        if (v72)
        {

LABEL_166:
          v58 = 0;
          goto LABEL_167;
        }

        code2 = [v49 code];
        goto LABEL_172;
      }

      previousAttempts2 = [(VCPAssetAnalysisTask *)self previousAttempts];
      asset = self->_asset;
      v88 = self->_taskID;
      previousStatus2 = [(VCPAssetAnalysisTask *)self previousStatus];
      lastAttemptDate2 = [(VCPAssetAnalysisTask *)self lastAttemptDate];
      LODWORD(asset) = [v137 setAttempts:previousAttempts2 asset:asset taskID:v88 status:previousStatus2 lastAttemptDate:lastAttemptDate2];
    }

    else
    {
      v82 = +[MADManagedProcessingStatus isMACDPersistEnabled];
      v83 = self->_asset;
      if (v82)
      {
        photoLibrary5 = [(PHAsset *)v83 photoLibrary];
        v140 = 0;
        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_1000BBA98;
        v141[3] = &unk_100283AD0;
        v141[4] = self;
        v85 = [photoLibrary5 mad_performAnalysisDataStoreChanges:v141 error:&v140];
        v49 = v140;

        if (v85)
        {

          goto LABEL_166;
        }

        code2 = [v49 code];
LABEL_172:
        LODWORD(asset) = code2;
        goto LABEL_173;
      }

      localIdentifier3 = [(PHAsset *)v83 localIdentifier];
      LODWORD(asset) = [v137 removeProcessingStatusForLocalIdentifier:localIdentifier3 andTaskID:self->_taskID];
    }

    if (asset == -108 || asset == -36 || asset == -23)
    {
      goto LABEL_174;
    }

    goto LABEL_166;
  }

  if (asset == 3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v41 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v41))
      {
        *buf = 138412290;
        v163 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "  [%@] Analysis failed", buf, 0xCu);
      }
    }

    asset = self->_asset;
    v42 = +[NSDate now];
    v43 = [asset mad_nextAttemptDateForStatus:3 currentAttemptDate:v42 attemptCount:self->_previousAttempts + 1];

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      photoLibrary6 = [(PHAsset *)self->_asset photoLibrary];
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_1000BB7A0;
      v149[3] = &unk_100282938;
      v150 = v43;
      selfCopy = self;
      v148 = 0;
      v45 = [photoLibrary6 mad_performAnalysisDataStoreChanges:v149 error:&v148];
      v46 = v148;

      if ((v45 & 1) == 0)
      {
        LODWORD(asset) = [v46 code];
      }

      if (v45)
      {
        goto LABEL_81;
      }
    }

    else
    {
      asset = self->_database;
      localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
      LODWORD(asset) = [asset updateProcessingStatus:3 andNextAttemptDate:v43 forLocalIdentifier:localIdentifier4 andTaskID:self->_taskID];

      if (asset != -108 && asset != -36 && asset != -23)
      {
LABEL_81:
        v60 = +[NSDate date];
        [v60 timeIntervalSinceDate:v138];
        v62 = v61;

        [(VCPAssetAnalysisTask *)self _reportCoreAnalyticsWithAnalysis:v11 analysisStatus:3 processingInterval:0 extendedAnalysisStatus:v62];
        goto LABEL_82;
      }
    }

    goto LABEL_174;
  }

  if (asset != 2)
  {
LABEL_82:
    v63 = v11;
LABEL_83:
    LODWORD(asset) = 0;
    goto LABEL_175;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    asset = &_os_log_default;
    v27 = &_os_log_default;
    v28 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v28))
    {
      *buf = 138412290;
      v163 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "  [%@] Analysis completed", buf, 0xCu);
    }
  }

  if ((+[MADManagedPhotosAsset isMACDPersistEnabled](MADManagedPhotosAsset, "isMACDPersistEnabled") & 1) != 0 || +[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v29 = MADMergeAnalysis();
    if (MediaAnalysisLogLevel() >= 6)
    {
      v30 = &_os_log_default;
      v31 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        *buf = 138412290;
        v163 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@][MACD] Persisting results to CoreData", buf, 0xCu);
      }
    }

    v32 = VCPSignPostLog();
    asset = os_signpost_id_generate(v32);

    v33 = VCPSignPostLog();
    v34 = v33;
    if (asset - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, asset, "VCPAssetAnalysisTask_PublishCoreData_Single", "", buf, 2u);
    }

    photoLibrary7 = [(VCPTask *)self photoLibrary];
    v156[0] = _NSConcreteStackBlock;
    v156[1] = 3221225472;
    v156[2] = sub_1000BB6C4;
    v156[3] = &unk_100284FF0;
    v156[4] = self;
    v36 = v29;
    v157 = v36;
    v158 = localIdentifier;
    v155 = 0;
    v37 = [photoLibrary7 mad_performAnalysisDataStoreChanges:v156 error:&v155];
    v38 = v155;

    if (v37)
    {
      v39 = VCPSignPostLog();
      v40 = v39;
      if (asset - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, asset, "VCPAssetAnalysisTask_PublishCoreData_Single", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(asset) = [v38 code];
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_174;
    }
  }

  if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    goto LABEL_132;
  }

  v64 = VCPSignPostLog();
  v65 = os_signpost_id_generate(v64);

  v66 = VCPSignPostLog();
  v67 = v66;
  if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_BEGIN, v65, "VCPAssetAnalysisTask_PublishLegacy_Single", "", buf, 2u);
  }

  v68 = [v137 storeAnalysisForAsset:self->_asset analysis:v11];
  if (v68 == -108 || v68 == -36)
  {
    v69 = v68;
  }

  else
  {
    v69 = v68;
    if (v68 != -23)
    {
      v69 = asset;
    }
  }

  if (v68 == -108 || v68 == -36 || v68 == -23)
  {
    v63 = v11;
    LODWORD(asset) = v69;
    goto LABEL_175;
  }

  v81 = [v137 removeProcessingStatusForLocalIdentifier:localIdentifier andTaskID:self->_taskID];
  if (v81 == -108 || v81 == -36)
  {
    LODWORD(asset) = v81;
  }

  else
  {
    LODWORD(asset) = v81;
    if (v81 != -23)
    {
      LODWORD(asset) = v69;
    }
  }

  if (v81 == -108 || v81 == -36 || v81 == -23)
  {
LABEL_174:
    v63 = v11;
    goto LABEL_175;
  }

  v91 = VCPSignPostLog();
  v92 = v91;
  if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, OS_SIGNPOST_INTERVAL_END, v65, "VCPAssetAnalysisTask_PublishLegacy_Single", "", buf, 2u);
  }

LABEL_132:
  embeddingChangeManager = self->_embeddingChangeManager;
  v94 = self->_asset;
  v154 = 0;
  [(MADVectorDatabaseChangeManager *)embeddingChangeManager updateAsset:v94 analysis:v11 imageOnly:0 vskResults:&v154];
  v95 = v154;
  if ([(PHAsset *)self->_asset vcp_isLivePhoto])
  {
    [(VCPAssetAnalysisTask *)self publishLivePhotoEffectsAnalysis:v11 toAsset:self->_asset];
  }

  v135 = v95;
  v96 = +[MADManagedPhotosAsset isMACDReadEnabled];
  v97 = self->_asset;
  if (v96)
  {
    photoLibrary8 = [(PHAsset *)v97 photoLibrary];
    mad_fetchRequest = [photoLibrary8 mad_fetchRequest];

    localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
    v136 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier5 predicate:0];
  }

  else
  {
    localIdentifier6 = [(PHAsset *)v97 localIdentifier];
    v153 = 0;
    v102 = [v137 analysisForAsset:localIdentifier6 analysis:&v153];
    v136 = v153;

    if (v102 == -108 || v102 == -36)
    {
      v103 = v102;
    }

    else
    {
      v103 = v102;
      if (v102 != -23)
      {
        v103 = asset;
      }
    }

    if (v102 == -108 || v102 == -36 || v102 == -23)
    {

      v63 = v11;
      LODWORD(asset) = v103;
      goto LABEL_175;
    }

    LODWORD(asset) = v103;
  }

  vcp_results3 = [v11 vcp_results];
  v134 = [vcp_results3 objectForKeyedSubscript:MediaAnalysisKeyFrameResourceResultsKey];

  vcp_results4 = [v11 vcp_results];
  v133 = [vcp_results4 objectForKeyedSubscript:MediaAnalysisVideoThumbnailResourcesResultsKey];

  v106 = MergeKeyFrameResourceResultsIntoExistingAnalysis(v134, v136);

  v63 = MergeVideoThumbnailResourcesResultsIntoExistingAnalysis(v133, v106);

  photosChangeManager = self->_photosChangeManager;
  if (photosChangeManager)
  {
    mediaAnalysisProperties = [(PHAsset *)self->_asset mediaAnalysisProperties];
    v109 = mediaAnalysisProperties;
    v132 = mediaAnalysisProperties;
    if (!mediaAnalysisProperties || (v110 = [mediaAnalysisProperties mediaAnalysisVersion], v110 < MediaAnalysisVersion) || (objc_msgSend(v109, "mediaAnalysisTimeStamp"), v111 = objc_claimAutoreleasedReturnValue(), -[PHAsset vcp_modificationDate](self->_asset, "vcp_modificationDate"), v112 = objc_claimAutoreleasedReturnValue(), v113 = objc_msgSend(v111, "isEqualToDate:", v112), v112, v111, v113))
    {
      v114 = self->_photosChangeManager;
      v115 = self->_asset;
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_1000BB74C;
      v152[3] = &unk_100283000;
      v152[4] = self;
      if ([(VCPPhotosAssetChangeManager *)v114 updateAsset:v115 analysis:v63 imageOnly:0 vskResults:v135 cancelBlock:v152])
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v116 = &_os_log_default;
          v117 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v117))
          {
            *buf = 138412290;
            v163 = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v117, "  [%@] Failed to store PHAssetMediaAnalysisProperties", buf, 0xCu);
          }
        }
      }
    }

    v118 = +[NSDate now];
    [v118 timeIntervalSinceDate:v138];
    v120 = v119;

    photoLibrary9 = [(VCPTask *)self photoLibrary];
    v122 = [VCPBackgroundProcessingMetrics sharedMetricsWithPhotoLibrary:photoLibrary9];

    [v122 loadMetrics];
    [v122 reportAnalyzedAsset:self->_asset withAnalysis:v63 andProcessingTime:v120];
    [(VCPAssetAnalysisTask *)self _reportCoreAnalyticsWithAnalysis:v63 analysisStatus:2 processingInterval:0 extendedAnalysisStatus:v120];
    v123 = VCPTaskIDDescription();
    vcp_typeDescription2 = [(PHAsset *)self->_asset vcp_typeDescription];
    v124 = [NSString stringWithFormat:@"%@-Analyze-%@", v123, vcp_typeDescription2];

    VCPCoreAnalyticsQoSReportSpeed(v124, v120 * 1000.0);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v126 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v126))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v126, "Failed to retrieve VCPPhotosAssetChangeManager", buf, 2u);
      }
    }

    LODWORD(asset) = -18;
  }

  if (photosChangeManager)
  {
    goto LABEL_83;
  }

LABEL_175:

  return asset;
}

@end