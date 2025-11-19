@interface MADPhotosPersonProcessingTask
+ (id)taskWithPhotoLibrary:(id)a3 requirement:(unint64_t)a4 gallery:(id)a5 andContext:(id)a6;
- (BOOL)_buildAndPromotePersonWithError:(id *)a3 needReclustering:(BOOL *)a4;
- (BOOL)_updateGalleryWithError:(id *)a3;
- (BOOL)isCanceled;
- (MADPhotosPersonProcessingTask)initWithPhotoLibrary:(id)a3 requirement:(unint64_t)a4 gallery:(id)a5 andContext:(id)a6;
- (int)_updateVIPModels;
- (int64_t)databaseValueForKey:(id)a3;
- (void)photoLibraryDidBecomeUnavailable:(id)a3;
- (void)process;
- (void)processGallery;
@end

@implementation MADPhotosPersonProcessingTask

- (MADPhotosPersonProcessingTask)initWithPhotoLibrary:(id)a3 requirement:(unint64_t)a4 gallery:(id)a5 andContext:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = MADPhotosPersonProcessingTask;
  v14 = [(MADProcessingTask *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_photoLibrary, a3);
    v15->_requirement = a4;
    objc_storeStrong(&v15->_gallery, a5);
    v16 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];
    analysisDatabase = v15->_analysisDatabase;
    v15->_analysisDatabase = v16;

    objc_storeStrong(&v15->_context, a6);
    v18 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:v15->_photoLibrary];
    persistenceDelegate = v15->_persistenceDelegate;
    v15->_persistenceDelegate = v18;

    v20 = [[PNPersonPromoter alloc] initWithPhotoLibrary:v15->_photoLibrary andDelegate:v15->_persistenceDelegate];
    personPromoter = v15->_personPromoter;
    v15->_personPromoter = v20;

    v22 = [[PNPetPromoterWrapper alloc] initWithLibrary:v15->_photoLibrary andDelegate:v15->_persistenceDelegate];
    petPromoter = v15->_petPromoter;
    v15->_petPromoter = v22;

    v24 = [(PHPhotoLibrary *)v15->_photoLibrary vcp_description];
    v25 = [NSString stringWithFormat:@"[GalleryPerson][%@]", v24];
    logPrefix = v15->_logPrefix;
    v15->_logPrefix = v25;

    v27 = +[VCPMADCoreAnalyticsManager sharedManager];
    analyticsManager = v15->_analyticsManager;
    v15->_analyticsManager = v27;

    v29 = _os_feature_enabled_impl();
    v30 = VCPAnalyticsEventPersonAnalysisRunSession;
    if (!v29)
    {
      v30 = VCPAnalyticsEvent7794FaceAnalysisRunSession;
    }

    objc_storeStrong(&v15->_runSession, *v30);
  }

  return v15;
}

+ (id)taskWithPhotoLibrary:(id)a3 requirement:(unint64_t)a4 gallery:(id)a5 andContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[a1 alloc] initWithPhotoLibrary:v10 requirement:a4 gallery:v11 andContext:v12];

  return v13;
}

- (BOOL)isCanceled
{
  v2 = atomic_load(&self->_canceled);
  if (v2)
  {
    return 1;
  }

  v5 = [(MADProcessingTask *)self cancelBlock];
  if (v5)
  {
    v6 = [(MADProcessingTask *)self cancelBlock];
    v3 = v6[2]();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)_updateVIPModels
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412290;
      v16 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Start QuickFaceID model update", buf, 0xCu);
    }
  }

  v14 = 0;
  v5 = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:self->_photoLibrary];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015DAE8;
  v13[3] = &unk_100283000;
  v13[4] = self;
  v6 = [v5 generateVIPModelWithType:0 ignoreLastGenerationTime:0 evaluationMode:0 allowUnverifiedPerson:0 modelGenerated:&v14 extendTimeout:&stru_100287570 andCancel:v13];
  if (v6)
  {
    goto LABEL_20;
  }

  if (v14 == 1)
  {
    [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:1 forField:@"PeopleVIPGenerated" andEvent:self->_runSession];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015DB54;
  v12[3] = &unk_100283000;
  v12[4] = self;
  v6 = [v5 generateVIPModelWithType:1 ignoreLastGenerationTime:0 evaluationMode:0 allowUnverifiedPerson:0 modelGenerated:&v14 extendTimeout:&stru_100287590 andCancel:v12];
  if (v6)
  {
LABEL_20:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = self->_logPrefix;
        *buf = 138412546;
        v16 = v8;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Failed to update QuickFaceID model - %d", buf, 0x12u);
      }
    }
  }

  else
  {
    if (v14 == 1)
    {
      [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:1 forField:@"PetsVIPGenerated" andEvent:self->_runSession];
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = self->_logPrefix;
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Finished QuickFaceID model update", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (int64_t)databaseValueForKey:(id)a3
{
  v4 = a3;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v5 = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [v5 dataStoreValueForKey:v4];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_analysisDatabase valueForKey:v4];
  }

  return v6;
}

- (BOOL)_updateGalleryWithError:(id *)a3
{
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10015E50C;
  v46[3] = &unk_100283000;
  v46[4] = self;
  v41 = objc_retainBlock(v46);
  if (!(v41[2])())
  {
    v37 = MADPersonProcessingStatusKey;
    if ([(MADPhotosPersonProcessingTask *)self databaseValueForKey:?]|| [(MADPhotosPersonProcessingTask *)self databaseValueForKey:MADPersonProcessingUpdateAttemptCountKey])
    {
      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        [(PHPhotoLibrary *)self->_photoLibrary mad_performAnalysisDataStoreChanges:&stru_1002875B0 error:0];
      }

      else
      {
        [(VCPDatabaseWriter *)self->_analysisDatabase removeKey:v37];
        [(VCPDatabaseWriter *)self->_analysisDatabase removeKey:MADPersonProcessingUpdateAttemptCountKey];
        [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      }
    }

    v39 = objc_alloc_init(VCPTimeMeasurement);
    [v39 start];
    v38 = mach_absolute_time();
    v6 = VCPSignPostLog();
    v7 = os_signpost_id_generate(v6);

    v8 = VCPSignPostLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MADPhotosPersonProcessingTaskClusterFace", "", buf, 2u);
    }

    [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:1 forField:@"NumberOfClusterStartEvents" andEvent:self->_runSession];
    v10 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:VCPKeyValuePrioritizedFaceAnalysisCompleteTimestamp];
    v36 = VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp;
    v11 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:?];
    v12 = +[NSDate now];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v15 = v10 && v10 > v11 || MADFullModeClusterInterval <= (v14 - v11);
    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        logPrefix = self->_logPrefix;
        v18 = @"fast";
        if (v15)
        {
          v18 = @"full";
        }

        *buf = 138412546;
        v50 = logPrefix;
        v51 = 2112;
        v52 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Start Gallery update (mode: %@)", buf, 0x16u);
      }
    }

    gallery = self->_gallery;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10015E5E0;
    v44[3] = &unk_1002861F0;
    v44[4] = self;
    v20 = v41;
    v45 = v20;
    v43 = 0;
    v21 = [(VUWGallery *)gallery updateForType:1 mode:!v15 progressHandler:v44 error:&v43];
    v4 = v43;
    v22 = VCPSignPostLog();
    v23 = v22;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v7, "MADPhotosPersonProcessingTaskClusterFace", "", buf, 2u);
    }

    if (v38)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if ((v41[2])(v20))
    {
      if (a3)
      {
        v47 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithFormat:@"%@ Canceled during Gallery updating", self->_logPrefix];
        v48 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v25];
      }
    }

    else
    {
      [v39 stop];
      if (v21)
      {
        v26 = +[NSDate now];
        [v26 timeIntervalSinceReferenceDate];
        v28 = v27;

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          photoLibrary = self->_photoLibrary;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10015E6E4;
          v42[3] = &unk_100285E20;
          v42[4] = !v15;
          v42[5] = v28;
          [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v42 error:0];
        }

        else
        {
          if (v15)
          {
            [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v28 forKey:v36];
          }

          [(VCPDatabaseWriter *)self->_analysisDatabase setValue:1 forKey:v37];
          [(VCPDatabaseWriter *)self->_analysisDatabase setValue:0 forKey:MADPersonProcessingUpdateAttemptCountKey];
          [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v32 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            v33 = self->_logPrefix;
            *buf = 138412290;
            v50 = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Successfully updated Gallery", buf, 0xCu);
          }
        }

        analyticsManager = self->_analyticsManager;
        [v39 elapsedTimeSeconds];
        [(VCPMADCoreAnalyticsManager *)analyticsManager accumulateDoubleValue:@"FaceClusteringElapsedTimeInSeconds" forField:self->_runSession andEvent:?];
        v5 = 1;
        [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:1 forField:@"NumberOfClusterEvents" andEvent:self->_runSession];
        goto LABEL_46;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v30 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          v31 = self->_logPrefix;
          *buf = 138412546;
          v50 = v31;
          v51 = 2112;
          v52 = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "%@ Failed to update Gallery - %@", buf, 0x16u);
        }
      }

      if (a3)
      {
        v5 = 0;
        *a3 = [(__CFString *)v4 copy];
LABEL_46:

        goto LABEL_47;
      }
    }

    v5 = 0;
    goto LABEL_46;
  }

  if (a3)
  {
    v53 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithFormat:@"%@ Gallery updating cancelled before clustering started", self->_logPrefix];
    v54 = v39;
    v4 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v4];
    *a3 = v5 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v5 = 0;
LABEL_48:

  return v5;
}

- (BOOL)_buildAndPromotePersonWithError:(id *)a3 needReclustering:(BOOL *)a4
{
  if (a4)
  {
    v169[0] = _NSConcreteStackBlock;
    v169[1] = 3221225472;
    v169[2] = sub_1001609B8;
    v169[3] = &unk_100283000;
    v169[4] = self;
    v137 = objc_retainBlock(v169);
    v7 = (v137 + 16);
    if ((*(v137 + 2))())
    {
      if (!a3)
      {
        v9 = 0;
LABEL_135:

        return v9;
      }

      v196 = NSLocalizedDescriptionKey;
      v197 = [NSString stringWithFormat:@"%@ Person updating cancelled", self->_logPrefix];
      v136 = v197;
      v8 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
      [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v8];
      *a3 = v9 = 0;
LABEL_134:

      goto LABEL_135;
    }

    if (+[MADManagedChangeToken isMACDReadEnabled])
    {
      v12 = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
      v168 = 0;
      [v12 fetchChangeToken:&v168 taskID:3 changeTokenType:4];
      v13 = v168;
    }

    else
    {
      analysisDatabase = self->_analysisDatabase;
      v167 = 0;
      v15 = [(VCPDatabaseWriter *)analysisDatabase queryChangeToken:&v167 forTaskID:3 andChangeTokenType:4];
      v13 = v167;
      if (!v15 || MediaAnalysisLogLevel() < 3)
      {
LABEL_15:
        v135 = +[NSMutableSet set];
        if (!v13)
        {
          goto LABEL_37;
        }

        v136 = v13;
        v164[0] = _NSConcreteStackBlock;
        v164[1] = 3221225472;
        v164[2] = sub_100160A14;
        v164[3] = &unk_1002875D8;
        v8 = v135;
        v165 = v8;
        v166 = self;
        v19 = objc_retainBlock(v164);
        gallery = self->_gallery;
        v163 = 0;
        v21 = [(VUWGallery *)gallery changesSince:v13 error:&v163 body:v19];
        v22 = v163;
        if (v21)
        {
          if ([v21 isEqual:v13])
          {
            if (MediaAnalysisLogLevel() < 6)
            {
              v26 = 0;
              goto LABEL_35;
            }

            v23 = &_os_log_default;
            v24 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v24))
            {
              logPrefix = self->_logPrefix;
              *buf = 138412290;
              *&buf[4] = logPrefix;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ No changes from VU; exiting ...", buf, 0xCu);
            }

            v26 = 0;
            goto LABEL_32;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v27 = &_os_log_default;
            v28 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v28))
            {
              v29 = self->_logPrefix;
              *buf = 138412546;
              *&buf[4] = v29;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to fetch Gallery updates; falls to full sync - %@", buf, 0x16u);
            }
          }

          [v8 removeAllObjects];

          v13 = 0;
        }

        v136 = v13;
        if (MediaAnalysisLogLevel() < 6)
        {
          v26 = 1;
          goto LABEL_35;
        }

        v30 = &_os_log_default;
        v31 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          v32 = self->_logPrefix;
          v33 = [v8 count];
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 2048;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Fetched %lu entities to update", buf, 0x16u);
        }

        v26 = 1;
LABEL_32:

LABEL_35:
        if ((v26 & 1) == 0)
        {
          v9 = 1;
          goto LABEL_134;
        }

        v13 = v136;
LABEL_37:
        v136 = v13;
        if ((*(v137 + 2))())
        {
          if (!a3)
          {
            v9 = 0;
LABEL_133:
            v8 = v135;
            goto LABEL_134;
          }

          v194 = NSLocalizedDescriptionKey;
          v134 = [NSString stringWithFormat:@"%@ Person updating cancelled", self->_logPrefix];
          v195 = v134;
          v133 = [NSDictionary dictionaryWithObjects:&v195 forKeys:&v194 count:1];
          [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v133];
          *a3 = v9 = 0;
LABEL_132:

          goto LABEL_133;
        }

        v127 = mach_absolute_time();
        v34 = VCPSignPostLog();
        spid = os_signpost_id_generate(v34);

        v35 = VCPSignPostLog();
        v36 = v35;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, spid, "GalleryPhotosUpdate_UpdateEndToEnd", "", buf, 2u);
        }

        v134 = +[NSDate now];
        if (MediaAnalysisLogLevel() >= 6)
        {
          v37 = &_os_log_default;
          v38 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v38))
          {
            v39 = self->_logPrefix;
            v40 = [v135 count];
            *buf = 138412546;
            *&buf[4] = v39;
            *&buf[12] = 2048;
            *&buf[14] = v40;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "%@ Initiate all entities from Gallery to PhotosDB (with %lu changed entities)", buf, 0x16u);
          }
        }

        v126 = +[NSMutableSet set];
        if (([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary]& 1) == 0)
        {
          v41 = [MADVUUtilities fetchKeyFaceLocalIdentifiersForPhotoLibrary:self->_photoLibrary];
          if ([v41 count])
          {
            [v126 unionSet:v41];
          }
        }

        v162[0] = 0;
        v162[1] = v162;
        v162[2] = 0x2020000000;
        v162[3] = 0;
        v122 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:0];
        [v122 setFetchLimit:1];
        [v122 setShouldPrefetchCount:1];
        v155[0] = _NSConcreteStackBlock;
        v155[1] = 3221225472;
        v155[2] = sub_100160BE4;
        v155[3] = &unk_100287600;
        v161 = v162;
        v155[4] = self;
        v136 = v136;
        v156 = v136;
        v157 = v135;
        v123 = v122;
        v158 = v123;
        v124 = v137;
        v160 = v124;
        v133 = v126;
        v159 = v133;
        v132 = objc_retainBlock(v155);
        v42 = +[MADVUUtilities sharedInstance];
        [v42 flush];

        [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:1 forField:@"NumberOfPersonBuildingStartEvents" andEvent:self->_runSession];
        v43 = self->_gallery;
        v154 = 0;
        v131 = [(VUWGallery *)v43 entities:0 error:&v154 body:v132];
        v125 = v154;
        if (v125)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v44 = &_os_log_default;
            v45 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v45))
            {
              v46 = self->_logPrefix;
              *buf = 138412546;
              *&buf[4] = v46;
              *&buf[12] = 2112;
              *&buf[14] = v125;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Failed to update entities from Gallery - %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if ((*v7)(v124))
          {
            if (!a3)
            {
              v9 = 0;
LABEL_131:

              _Block_object_dispose(v162, 8);
              goto LABEL_132;
            }

            v192 = NSLocalizedDescriptionKey;
            v47 = [NSString stringWithFormat:@"%@ Person updating cancelled", self->_logPrefix];
            v193 = v47;
            v48 = [NSDictionary dictionaryWithObjects:&v193 forKeys:&v192 count:1];
            *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v48];

            goto LABEL_100;
          }

          if (v136)
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v49 = &_os_log_default;
              v50 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v50))
              {
                v51 = self->_logPrefix;
                *buf = 138412546;
                *&buf[4] = v51;
                *&buf[12] = 2112;
                *&buf[14] = v131;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "%@ Update MADVUWChangeBookmark %@", buf, 0x16u);
              }
            }

            if (+[MADManagedChangeToken isMACDPersistEnabled])
            {
              photoLibrary = self->_photoLibrary;
              v147[0] = _NSConcreteStackBlock;
              v147[1] = 3221225472;
              v147[2] = sub_100161594;
              v147[3] = &unk_100283AD0;
              v148 = v131;
              [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v147 error:0];
            }

            else
            {
              [(VCPDatabaseWriter *)self->_analysisDatabase updateChangeToken:v131 forTaskID:3 andChangeTokenType:4];
            }

            v131;

            if (+[MADManagedChangeToken isMACDPersistEnabled])
            {
              v58 = self->_photoLibrary;
              v146[0] = _NSConcreteStackBlock;
              v146[1] = 3221225472;
              v146[2] = sub_1001615A8;
              v146[3] = &unk_100283AD0;
              v146[4] = self;
              [(PHPhotoLibrary *)v58 mad_performAnalysisDataStoreChanges:v146 error:0];
            }

            else
            {
              v59 = self->_analysisDatabase;
              v60 = [(PHPhotoLibrary *)self->_photoLibrary currentToken];
              [(VCPDatabaseWriter *)v59 updateChangeToken:v60 forTaskID:3 andChangeTokenType:3];
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v53 = &_os_log_default;
              v54 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v54))
              {
                v55 = self->_logPrefix;
                *buf = 138412546;
                *&buf[4] = v55;
                *&buf[12] = 2112;
                *&buf[14] = v131;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "%@ Initiate MADVUWChangeBookmark %@", buf, 0x16u);
              }
            }

            v56 = +[NSDate date];
            if (+[MADManagedChangeToken isMACDPersistEnabled])
            {
              v57 = self->_photoLibrary;
              v151[0] = _NSConcreteStackBlock;
              v151[1] = 3221225472;
              v151[2] = sub_1001614E4;
              v151[3] = &unk_100282938;
              v152 = v131;
              v153 = v56;
              [(PHPhotoLibrary *)v57 mad_performAnalysisDataStoreChanges:v151 error:0];
            }

            else
            {
              [(VCPDatabaseWriter *)self->_analysisDatabase setChangeToken:v131 forTaskID:3 andChangeTokenType:4 date:v56];
            }

            v131;
            if (+[MADManagedChangeToken isMACDPersistEnabled])
            {
              v61 = self->_photoLibrary;
              v149[0] = _NSConcreteStackBlock;
              v149[1] = 3221225472;
              v149[2] = sub_1001614F8;
              v149[3] = &unk_100282938;
              v149[4] = self;
              v150 = v56;
              [(PHPhotoLibrary *)v61 mad_performAnalysisDataStoreChanges:v149 error:0];
            }

            else
            {
              v62 = self->_analysisDatabase;
              v63 = [(PHPhotoLibrary *)self->_photoLibrary currentToken];
              [(VCPDatabaseWriter *)v62 setChangeToken:v63 forTaskID:3 andChangeTokenType:3 date:v56];
            }
          }

          if (+[MADManagedKeyValueStore isMACDPersistEnabled])
          {
            v136 = v131;
            [(PHPhotoLibrary *)self->_photoLibrary mad_performAnalysisDataStoreChanges:&stru_100287620 error:0];
          }

          else
          {
            [(VCPDatabaseWriter *)self->_analysisDatabase removeKey:MADPersonProcessingStatusKey];
            [(VCPDatabaseWriter *)self->_analysisDatabase removeKey:MADPersonProcessingUpdateAttemptCountKey];
            v136 = v131;
            [(VCPDatabaseWriter *)self->_analysisDatabase commit];
          }
        }

        v64 = VCPSignPostLog();
        v65 = v64;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, spid, "GalleryPhotosUpdate_UpdateEndToEnd", "", buf, 2u);
        }

        if (v127)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        v47 = +[VCPMADCoreAnalyticsManager sharedManager];
        [v134 timeIntervalSinceNow];
        [v47 accumulateDoubleValue:@"PersonBuildingElapsedTimeInSeconds" forField:self->_runSession andEvent:-v66];
        [v47 accumulateInt64Value:1 forField:@"NumberOfPersonBuildingEvents" andEvent:self->_runSession];
        *a4 = 0;
        if ([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary])
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v67 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v67))
            {
              v68 = self->_logPrefix;
              *buf = 138412290;
              *&buf[4] = v68;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "%@ Skip promoting for Syndication Library", buf, 0xCu);
            }
          }

          v9 = 1;
          goto LABEL_130;
        }

        if ((*v7)(v124))
        {
          if (a3)
          {
            v190 = NSLocalizedDescriptionKey;
            v69 = [NSString stringWithFormat:@"%@ Person promoting cancelled", self->_logPrefix];
            v191 = v69;
            v70 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
            *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v70];
          }

LABEL_100:
          v9 = 0;
LABEL_130:

          goto LABEL_131;
        }

        spida = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:&off_1002963F8 andVerifiedTypes:&off_100296410];
        v71 = [PHPerson fetchPersonsWithOptions:spida];
        v118 = [v71 count];

        v128 = +[NSDate now];
        v115 = mach_absolute_time();
        v72 = VCPSignPostLog();
        v73 = os_signpost_id_generate(v72);

        v74 = VCPSignPostLog();
        v75 = v74;
        if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_BEGIN, v73, "MADPhotosPersonProcessingTaskPromotePerson", "", buf, 2u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v187 = sub_1001616B8;
        v188 = sub_1001616C8;
        v189 = +[NSDate distantPast];
        v120 = dispatch_queue_create("MADPersonPromotingProgress", 0);
        v121 = v47;
        if (MediaAnalysisLogLevel() >= 7)
        {
          v76 = &_os_log_default;
          v77 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v77))
          {
            v78 = self->_logPrefix;
            *v176 = 138412546;
            *&v176[4] = v78;
            *&v176[12] = 2048;
            *&v176[14] = v118;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v77, "%@ Start Person Promoting with %lu graph verified person", v176, 0x16u);
          }
        }

        [PNPersonPromoter setProcessed:0 forLibrary:self->_photoLibrary];
        [v47 accumulateInt64Value:1 forField:@"NumberOfPersonPromotingStartEvents" andEvent:self->_runSession];
        personPromoter = self->_personPromoter;
        v142[0] = _NSConcreteStackBlock;
        v142[1] = 3221225472;
        v142[2] = sub_1001616D0;
        v142[3] = &unk_100287648;
        v144 = self;
        v145 = buf;
        v117 = v120;
        v143 = v117;
        v113 = [(PNPersonPromoter *)personPromoter promoteUnverifiedPersonsWithUpdateBlock:v142];
        v47 = v121;
        if ((*v7)(v124))
        {
          if (a3)
          {
            v184 = NSLocalizedDescriptionKey;
            v185 = [NSString stringWithFormat:@"%@ Person promoting cancelled", self->_logPrefix];
            v119 = v185;
            v80 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
            v81 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
LABEL_126:
            v9 = 0;
            *a3 = v81;
LABEL_127:

LABEL_129:
            _Block_object_dispose(buf, 8);

            goto LABEL_130;
          }
        }

        else
        {
          v82 = VCPSignPostLog();
          v83 = v82;
          if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
          {
            *v176 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_END, v73, "MADPhotosPersonProcessingTaskPromotePerson", "", v176, 2u);
          }

          if (v115)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          [v128 timeIntervalSinceNow];
          [v121 accumulateDoubleValue:@"PersonPromotingElapsedTimeInSeconds" forField:self->_runSession andEvent:-v84];
          [v121 accumulateInt64Value:1 forField:@"NumberOfPersonPromotingEvents" andEvent:self->_runSession];
          v85 = [PHPerson fetchPersonsWithOptions:spida];
          v86 = [v85 count];

          [v121 accumulateInt64Value:v86 - v118 forField:@"NumberOfPeoplePromoted" andEvent:self->_runSession];
          if (v113)
          {
            [PNPersonPromoter setProcessed:1 forLibrary:self->_photoLibrary];
            if (MediaAnalysisLogLevel() >= 6)
            {
              v87 = &_os_log_default;
              v88 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v88))
              {
                v89 = self->_logPrefix;
                *v176 = 138412546;
                *&v176[4] = v89;
                *&v176[12] = 2048;
                *&v176[14] = v86 - v118;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v88, "%@ Finished Person Promoting with %lu new Graph verified persons", v176, 0x16u);
              }

              v47 = v121;
            }

            *a4 |= v86 != v118;
            if (!(*v7)(v124))
            {
              v119 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:&off_100296428 andVerifiedTypes:&off_100296440];
              v91 = [PHPerson fetchPersonsWithOptions:v119];
              v114 = [v91 count];

              v80 = +[NSDate now];
              v110 = mach_absolute_time();
              v92 = VCPSignPostLog();
              v116 = os_signpost_id_generate(v92);

              v93 = VCPSignPostLog();
              v94 = v93;
              if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
              {
                *v176 = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v94, OS_SIGNPOST_INTERVAL_BEGIN, v116, "MADPhotosPersonProcessingTaskPromotePet", "", v176, 2u);
              }

              *v176 = 0;
              *&v176[8] = v176;
              *&v176[16] = 0x3032000000;
              v177 = sub_1001616B8;
              v178 = sub_1001616C8;
              v179 = +[NSDate distantPast];
              v112 = dispatch_queue_create("MADPetPromotingProgress", 0);
              if (MediaAnalysisLogLevel() >= 7)
              {
                v95 = &_os_log_default;
                v96 = VCPLogToOSLogType[7];
                if (os_log_type_enabled(&_os_log_default, v96))
                {
                  v97 = self->_logPrefix;
                  *v172 = 138412546;
                  v173 = v97;
                  v174 = 2048;
                  v175 = v114;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "%@ Start Pet Promoting with %lu graph verified pet", v172, 0x16u);
                }

                v47 = v121;
              }

              [v47 accumulateInt64Value:1 forField:@"NumberOfPetPromotingStartEvents" andEvent:self->_runSession];
              petPromoter = self->_petPromoter;
              v138[0] = _NSConcreteStackBlock;
              v138[1] = 3221225472;
              v138[2] = sub_100161968;
              v138[3] = &unk_100287670;
              v140 = self;
              v141 = v176;
              v111 = v112;
              v139 = v111;
              [(PNPetPromoterWrapper *)petPromoter promoteUnverifiedPetsWithUpdateBlock:v138];
              v47 = v121;
              v99 = (*v7)(v124);
              if (v99)
              {
                if (a3)
                {
                  v170 = NSLocalizedDescriptionKey;
                  v100 = [NSString stringWithFormat:@"%@ Pet promoting cancelled", self->_logPrefix];
                  v171 = v100;
                  v101 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                  *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v101];
                }
              }

              else
              {
                v102 = VCPSignPostLog();
                v103 = v102;
                if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
                {
                  *v172 = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v103, OS_SIGNPOST_INTERVAL_END, v116, "MADPhotosPersonProcessingTaskPromotePet", "", v172, 2u);
                }

                if (v110)
                {
                  mach_absolute_time();
                  VCPPerformance_LogMeasurement();
                }

                [v80 timeIntervalSinceNow];
                [v121 accumulateDoubleValue:@"PetPromotingElapsedTimeInSeconds" forField:self->_runSession andEvent:-v104];
                [v121 accumulateInt64Value:1 forField:@"NumberOfPetPromotingEvents" andEvent:self->_runSession];
                v105 = [PHPerson fetchPersonsWithOptions:v119];
                v106 = [v105 count];

                [v121 accumulateInt64Value:v106 - v114 forField:@"NumberOfPetPromoted" andEvent:self->_runSession];
                if (MediaAnalysisLogLevel() >= 6)
                {
                  v107 = &_os_log_default;
                  v108 = VCPLogToOSLogType[6];
                  if (os_log_type_enabled(&_os_log_default, v108))
                  {
                    v109 = self->_logPrefix;
                    *v172 = 138412546;
                    v173 = v109;
                    v174 = 2048;
                    v175 = (v106 - v114);
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v108, "%@ Finished Pet Promoting with %lu new Graph verified pets", v172, 0x16u);
                  }

                  v47 = v121;
                }

                *a4 |= v106 != v114;
                [MADProgressManager cacheProcessedAssetCountAfterPromoter:[(MADPhotosPersonProcessingTask *)self databaseValueForKey:VCPKeyValueNumberOfAssetsAnalyzedForPhotosFaceProcessing] photoLibrary:self->_photoLibrary];
              }

              _Block_object_dispose(v176, 8);
              v9 = v99 ^ 1;
              goto LABEL_127;
            }

            if (a3)
            {
              v180 = NSLocalizedDescriptionKey;
              v181 = [NSString stringWithFormat:@"%@ Pet promoting cancelled", self->_logPrefix];
              v119 = v181;
              v80 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              v81 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
              goto LABEL_126;
            }
          }

          else if (a3)
          {
            v182 = NSLocalizedDescriptionKey;
            v183 = [NSString stringWithFormat:@"%@ Failed during person promoting", self->_logPrefix];
            v119 = v183;
            v80 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
            v81 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
            goto LABEL_126;
          }
        }

        v9 = 0;
        goto LABEL_129;
      }

      v12 = &_os_log_default;
      v16 = &_os_log_default;
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = self->_logPrefix;
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Failed to query previous VUWGalleryChangeBookmark (code:%d)", buf, 0x12u);
      }
    }

    goto LABEL_15;
  }

  if (a3)
  {
    v198 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"needReclustering is nil"];
    v199 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
    *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v11];
  }

  return 0;
}

- (void)processGallery
{
  if (self->_requirement == 10)
  {
    v3 = [(PHPhotoLibrary *)self->_photoLibrary mad_countOfUnclusteredFaces];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v4 = &_os_log_default;
      v5 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        logPrefix = self->_logPrefix;
        *buf = 138412546;
        v189 = logPrefix;
        v190 = 2048;
        v191 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Found %lu faces to add to Gallery for clustering", buf, 0x16u);
      }
    }

    if (v3 < +[MADVUUtilities clusterFaceCountThreshold])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v7 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          v8 = self->_logPrefix;
          *buf = 138412290;
          v189 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Skipping cluster and person building", buf, 0xCu);
        }
      }

      return;
    }
  }

  v168 = objc_alloc_init(VCPTimeMeasurement);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = &_os_log_default;
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = self->_logPrefix;
      *buf = 138412290;
      v189 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Start Gallery Person Processing", buf, 0xCu);
    }
  }

  [v168 start];
  v187[0] = _NSConcreteStackBlock;
  v187[1] = 3221225472;
  v187[2] = sub_100163C44;
  v187[3] = &unk_100283000;
  v187[4] = self;
  v170 = objc_retainBlock(v187);
  if ((v170[2])())
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v12 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = self->_logPrefix;
        *buf = 138412290;
        v189 = v13;
        v14 = v12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Gallery processing canceled", buf, 0xCu);
      }
    }

    goto LABEL_210;
  }

  [MADProgressManager cacheCurrentFaceProgressForPhotoLibrary:self->_photoLibrary];
  v15 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:MADPersonProcessingStatusKey];
  v16 = MADPersonProcessingUpdateAttemptCountKey;
  v17 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:MADPersonProcessingUpdateAttemptCountKey];
  v18 = v17;
  if (v15 == 1 && v17 <= 4)
  {
    v19 = +[MADVUUtilities sharedInstance];
    [v19 flush];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v20 = &_os_log_default;
      v21 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        v22 = self->_logPrefix;
        *buf = 138412290;
        v189 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Finishing previous Gallery updates to Photos", buf, 0xCu);
      }
    }

    v186 = 0;
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      photoLibrary = self->_photoLibrary;
      v184[0] = _NSConcreteStackBlock;
      v184[1] = 3221225472;
      v184[2] = sub_100163CA0;
      v184[3] = &unk_100287690;
      v185 = v18 + 1;
      [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v184 error:0];
    }

    else
    {
      [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v18 + 1 forKey:v16];
      [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    }

    v183 = 0;
    v30 = [(MADPhotosPersonProcessingTask *)self _buildAndPromotePersonWithError:&v183 needReclustering:&v186];
    v25 = v183;
    if ((v30 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v31 = &_os_log_default;
      v32 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v32))
      {
        v33 = self->_logPrefix;
        *buf = 138412546;
        v189 = v33;
        v190 = 2112;
        v191 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Failed to finish previous person updates to Photos - %@", buf, 0x16u);
      }
    }

    goto LABEL_41;
  }

  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v25 = &_os_log_default;
      v26 = &_os_log_default;
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = self->_logPrefix;
        v29 = MADPersonProcessingStatusDescription();
        *buf = 138412802;
        v189 = v28;
        v190 = 2112;
        v191 = v29;
        v192 = 1024;
        LODWORD(v193) = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Previous Gallery update status: %@, attempts: %d; skip update catch-up", buf, 0x1Cu);

LABEL_40:
        v25 = &_os_log_default;
        goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v25 = &_os_log_default;
    v34 = &_os_log_default;
    v35 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v35))
    {
      v36 = self->_logPrefix;
      v37 = MADPersonProcessingStatusDescription();
      *buf = 138412546;
      v189 = v36;
      v190 = 2112;
      v191 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ No previous Gallery updates (%@)", buf, 0x16u);

      goto LABEL_40;
    }

LABEL_41:
  }

  v165 = 0;
  type = VCPLogToOSLogType[6];
  v167 = VCPLogToOSLogType[7];
  v164 = VCPLogToOSLogType[3];
  *&v24 = 138412290;
  v163 = v24;
  while (1)
  {
    if ((v170[2])())
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        v104 = self->_logPrefix;
        *buf = v163;
        v189 = v104;
        v14 = type;
        goto LABEL_18;
      }

      goto LABEL_210;
    }

    v38 = [(PHPhotoLibrary *)self->_photoLibrary countOfFaceCropsToBeGenerated];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v39 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, type))
      {
        v40 = self->_logPrefix;
        *buf = 138412546;
        v189 = v40;
        v190 = 2048;
        v191 = v38;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Found %lu facecrops to generate", buf, 0x16u);
      }
    }

    if (v38)
    {
      v41 = mach_absolute_time();
      v42 = VCPSignPostLog();
      v43 = os_signpost_id_generate(v42);

      v44 = VCPSignPostLog();
      v45 = v44;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_BEGIN, v43, "MADPhotosPersonProcessingTaskGenerateFaceCrop", "", buf, 2u);
      }

      v46 = objc_alloc_init(MADPhotosFaceCropGenerationTask);
      v182[0] = _NSConcreteStackBlock;
      v182[1] = 3221225472;
      v182[2] = sub_100163CB8;
      v182[3] = &unk_100283000;
      v182[4] = self;
      [(MADProcessingTask *)v46 setCancelBlock:v182];
      v47 = [(PHPhotoLibrary *)self->_photoLibrary newFaceCropsToBeGeneratedFetchOptions];
      v48 = [PHFace fetchFacesWithOptions:v47];
      for (i = 0; i < [v48 count]; ++i)
      {
        v50 = objc_autoreleasePoolPush();
        v51 = [v48 objectAtIndexedSubscript:i];
        [(MADPhotosFaceCropGenerationTask *)v46 addFace:v51];

        if ([(MADPhotosFaceCropGenerationTask *)v46 count]>= 0x64)
        {
          [(MADPhotosFaceCropGenerationTask *)v46 prepare];
          [(MADPhotosFaceCropGenerationTask *)v46 process];
          [(MADAssetProcessingTask *)v46 publish];
          v52 = objc_alloc_init(MADPhotosFaceCropGenerationTask);

          v181[0] = _NSConcreteStackBlock;
          v181[1] = 3221225472;
          v181[2] = sub_100163CC0;
          v181[3] = &unk_100283000;
          v181[4] = self;
          [(MADProcessingTask *)v52 setCancelBlock:v181];
          v46 = v52;
        }

        objc_autoreleasePoolPop(v50);
      }

      if ([(MADPhotosFaceCropGenerationTask *)v46 count])
      {
        [(MADPhotosFaceCropGenerationTask *)v46 prepare];
        [(MADPhotosFaceCropGenerationTask *)v46 process];
        [(MADAssetProcessingTask *)v46 publish];
      }

      v53 = VCPSignPostLog();
      v54 = v53;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, v43, "MADPhotosPersonProcessingTaskGenerateFaceCrop", "", buf, 2u);
      }

      if (v41)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v55 = [(PHPhotoLibrary *)self->_photoLibrary countOfFaceCropsToBeGenerated];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v56 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v167))
        {
          v57 = self->_logPrefix;
          *buf = 138412546;
          v189 = v57;
          v190 = 2048;
          v191 = v55;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v167, "%@ Found %lu facecrops yet to generate", buf, 0x16u);
        }
      }
    }

    if ((v170[2])())
    {
      goto LABEL_141;
    }

    v58 = [(PHPhotoLibrary *)self->_photoLibrary countOfUnprocessedFaceCrops];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v59 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, type))
      {
        v60 = self->_logPrefix;
        *buf = 138412546;
        v189 = v60;
        v190 = 2048;
        v191 = v58;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Found %lu facecrops to process", buf, 0x16u);
      }
    }

    if (v58)
    {
      v61 = mach_absolute_time();
      v62 = VCPSignPostLog();
      v63 = os_signpost_id_generate(v62);

      v64 = VCPSignPostLog();
      v65 = v64;
      if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_BEGIN, v63, "MADPhotosPersonProcessingTaskFaceCropProcessing", "", buf, 2u);
      }

      v66 = [MADPhotosFaceCropProcessingTask taskWithPhotoLibrary:self->_photoLibrary gallery:self->_gallery];
      v180[0] = _NSConcreteStackBlock;
      v180[1] = 3221225472;
      v180[2] = sub_100163CC8;
      v180[3] = &unk_100283000;
      v180[4] = self;
      [v66 setCancelBlock:v180];
      [v66 process];
      v67 = VCPSignPostLog();
      v68 = v67;
      if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_END, v63, "MADPhotosPersonProcessingTaskFaceCropProcessing", "", buf, 2u);
      }

      if (v61)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v69 = [(PHPhotoLibrary *)self->_photoLibrary countOfUnprocessedFaceCrops];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v70 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v167))
        {
          v71 = self->_logPrefix;
          *buf = 138412546;
          v189 = v71;
          v190 = 2048;
          v191 = v69;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v167, "%@ Found %lu facecrops yet to process", buf, 0x16u);
        }
      }
    }

    if ([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      break;
    }

    v72 = +[MADVUUtilities sharedInstance];
    [v72 flush];

    if ((v170[2])())
    {
      goto LABEL_141;
    }

    v73 = [(PHPhotoLibrary *)self->_photoLibrary mad_countOfUnclusteredFaces];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v74 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, type))
      {
        v75 = self->_logPrefix;
        *buf = 138412546;
        v189 = v75;
        v190 = 2048;
        v191 = v73;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Found %lu faces to add to Gallery", buf, 0x16u);
      }
    }

    if (v73)
    {
      v76 = objc_alloc_init(VCPTimeMeasurement);
      [v76 start];
      v77 = mach_absolute_time();
      v78 = VCPSignPostLog();
      v79 = os_signpost_id_generate(v78);

      v80 = VCPSignPostLog();
      v81 = v80;
      if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_INTERVAL_BEGIN, v79, "MADPhotosPersonProcessingTaskClusterFaceSendFaces", "", buf, 2u);
      }

      v166 = [(PHPhotoLibrary *)self->_photoLibrary mad_unclusteredFacesFetchOptions];
      v82 = [PHFace fetchFacesWithOptions:?];
      v83 = +[MADVUUtilities sharedInstance];
      gallery = self->_gallery;
      v179 = 0;
      v85 = [v83 prepareClusteringWithFaces:v82 gallery:gallery cancelOrExtendTimeoutBlock:v170 error:&v179];
      v86 = v179;

      if ((v85 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
      {
        v87 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v164))
        {
          v88 = self->_logPrefix;
          *buf = 138412546;
          v189 = v88;
          v190 = 2112;
          v191 = v86;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Failed to add faces to Gallery - %@", buf, 0x16u);
        }
      }

      v89 = VCPSignPostLog();
      v90 = v89;
      if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_INTERVAL_END, v79, "MADPhotosPersonProcessingTaskClusterFaceSendFaces", "", buf, 2u);
      }

      if (v77)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v91 = [(PHPhotoLibrary *)self->_photoLibrary mad_countOfUnclusteredFaces];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v92 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, type))
        {
          v93 = self->_logPrefix;
          *buf = 138412546;
          v189 = v93;
          v190 = 2048;
          v191 = v91;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Found %lu (expected 0) faces yet to add to Gallery", buf, 0x16u);
        }
      }

      [v76 stop];
      analyticsManager = self->_analyticsManager;
      [v76 elapsedTimeSeconds];
      [(VCPMADCoreAnalyticsManager *)analyticsManager accumulateDoubleValue:@"FaceClusteringElapsedTimeInSeconds" forField:self->_runSession andEvent:?];
      [(VCPMADCoreAnalyticsManager *)self->_analyticsManager accumulateInt64Value:v73 forField:@"NumberOfClusteredFaces" andEvent:self->_runSession];
    }

    v95 = +[MADVUUtilities sharedInstance];
    [v95 flush];

    v96 = &_os_log_default;
    if ([(VUWGallery *)self->_gallery ready])
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_121;
      }

      v97 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, type))
      {
        v98 = self->_logPrefix;
        *buf = v163;
        v189 = v98;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Gallery is ready; skip updating", buf, 0xCu);
      }
    }

    else
    {
      v178 = 0;
      v99 = [(MADPhotosPersonProcessingTask *)self _updateGalleryWithError:&v178];
      v96 = v178;
      if ((v99 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_140;
        }

        v109 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v164))
        {
          v110 = self->_logPrefix;
          *buf = 138412546;
          v189 = v110;
          v190 = 2112;
          v191 = v96;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Failed to update Gallery - %@", buf, 0x16u);
        }

        goto LABEL_139;
      }

      v165 = 1;
    }

LABEL_121:
    if ((v170[2])())
    {
      goto LABEL_141;
    }

    v100 = +[MADVUUtilities sharedInstance];
    [v100 flush];

    v186 = 0;
    v177 = 0;
    v101 = [(MADPhotosPersonProcessingTask *)self _buildAndPromotePersonWithError:&v177 needReclustering:&v186];
    v102 = v177;
    v96 = v102;
    if ((v101 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_140;
      }

      v105 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, v164))
      {
        v106 = self->_logPrefix;
        *buf = 138412546;
        v189 = v106;
        v190 = 2112;
        v191 = v96;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Failed to update person in Photos - %@", buf, 0x16u);
      }

LABEL_139:

      goto LABEL_140;
    }

    if (self->_requirement != 20)
    {
      goto LABEL_140;
    }

    v103 = v186;

    if ((v103 & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v96 = &_os_log_default;
    v107 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, v167))
    {
      v108 = self->_logPrefix;
      *buf = v163;
      v189 = v108;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v167, "%@ Skipping clustering and person processing for syndication library", buf, 0xCu);
    }

LABEL_140:
  }

LABEL_141:
  if (((v170[2])() & 1) == 0)
  {
    if ([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      v111 = +[VCPDefaultPhotoLibraryManager sharedManager];
      v112 = [v111 defaultPhotoLibrary];

      v113 = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:v112];
      v114 = self->_photoLibrary;
      v176[0] = _NSConcreteStackBlock;
      v176[1] = 3221225472;
      v176[2] = sub_100163CD0;
      v176[3] = &unk_100283000;
      v176[4] = self;
      [v113 personIdentificationForSyndicationPhotoLibrary:v114 withCancelOrExtendTimeoutBlock:v176];
    }

    if (((v170[2])() & 1) == 0)
    {
      if (([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary]& 1) == 0)
      {
        [(MADPhotosPersonProcessingTask *)self _updateVIPModels];
      }

      if (((v170[2])() & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v115 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, type))
          {
            v116 = self->_logPrefix;
            *buf = v163;
            v189 = v116;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Start updating VUWGallery plugins", buf, 0xCu);
          }
        }

        v175[0] = _NSConcreteStackBlock;
        v175[1] = 3221225472;
        v175[2] = sub_100163D2C;
        v175[3] = &unk_1002876B8;
        v175[4] = self;
        v117 = objc_retainBlock(v175);
        v118 = [MADVUWGalleryManager sharedGalleryForPhotoLibrary:self->_photoLibrary];
        if (v165)
        {
          v119 = mach_absolute_time();
          v120 = VCPSignPostLog();
          v121 = os_signpost_id_generate(v120);

          v122 = VCPSignPostLog();
          v123 = v122;
          if (v121 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, OS_SIGNPOST_INTERVAL_BEGIN, v121, "MADVUWGalleryPluginTypeDeviceOwner", "", buf, 2u);
          }

          v174 = 0;
          v124 = [v118 updatePlugin:0 progressHandler:v117 error:&v174];
          v125 = v174;
          if ((v124 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
          {
            v126 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v164))
            {
              v127 = self->_logPrefix;
              *buf = 138412546;
              v189 = v127;
              v190 = 2112;
              v191 = v125;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Failed to update device owner - %@", buf, 0x16u);
            }
          }

          v128 = VCPSignPostLog();
          v129 = v128;
          if (v121 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v128))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v129, OS_SIGNPOST_INTERVAL_END, v121, "MADVUWGalleryPluginTypeDeviceOwner", "", buf, 2u);
          }

          if (v119)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          if (DeviceWithGreymatterSupport())
          {
            v130 = mach_absolute_time();
            v131 = VCPSignPostLog();
            v132 = os_signpost_id_generate(v131);

            v133 = VCPSignPostLog();
            v134 = v133;
            if (v132 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v134, OS_SIGNPOST_INTERVAL_BEGIN, v132, "MADVUWGalleryPluginTypePersonalization", "", buf, 2u);
            }

            v173 = v125;
            v135 = [v118 updatePlugin:1 progressHandler:v117 error:&v173];
            v136 = v173;

            v125 = v136;
            if ((v135 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
            {
              v137 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v164))
              {
                v138 = self->_logPrefix;
                *buf = 138412546;
                v189 = v138;
                v190 = 2112;
                v191 = v136;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Failed to update personalization - %@", buf, 0x16u);
              }
            }

            v139 = VCPSignPostLog();
            v140 = v139;
            if (v132 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_INTERVAL_END, v132, "MADVUWGalleryPluginTypePersonalization", "", buf, 2u);
            }

            if (v130)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            if (MediaAnalysisLogLevel() >= 6)
            {
              v141 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, type))
              {
                v142 = self->_logPrefix;
                *buf = v163;
                v189 = v142;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Finished personalization plugin", buf, 0xCu);
              }
            }

            if ([(MADPhotosPersonProcessingTask *)self databaseValueForKey:VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp, v163])
            {
              v143 = VCPKeyValuePersonalizationCheckpointReportedTimestamp;
              if (![(MADPhotosPersonProcessingTask *)self databaseValueForKey:VCPKeyValuePersonalizationCheckpointReportedTimestamp])
              {
                v172 = v136;
                v144 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:50 forFeature:802 error:&v172];
                v145 = v172;

                if (v144)
                {
                  if (MediaAnalysisLogLevel() >= 5)
                  {
                    v146 = &_os_log_default;
                    v147 = VCPLogToOSLogType[5];
                    if (os_log_type_enabled(&_os_log_default, v147))
                    {
                      v148 = self->_logPrefix;
                      *buf = 138412802;
                      v189 = v148;
                      v190 = 2048;
                      v191 = 30;
                      v192 = 2048;
                      v193 = 802;
                      v149 = "%@ Reported checkpoint %lu for %lu";
                      v150 = v147;
                      v151 = 32;
                      goto LABEL_195;
                    }

                    goto LABEL_196;
                  }
                }

                else if (MediaAnalysisLogLevel() >= 3)
                {
                  v152 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, v164))
                  {
                    v153 = self->_logPrefix;
                    *buf = 138413058;
                    v189 = v153;
                    v190 = 2048;
                    v191 = 30;
                    v192 = 2048;
                    v193 = 802;
                    v194 = 2112;
                    v195 = v145;
                    v149 = "%@ Failed to report checkpoint %lu for %lu - %@";
                    v150 = v164;
                    v151 = 42;
LABEL_195:
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v150, v149, buf, v151);
                  }

LABEL_196:
                }

                v154 = +[NSDate now];
                [v154 timeIntervalSinceReferenceDate];
                v156 = v155;

                if (+[MADManagedKeyValueStore isMACDPersistEnabled])
                {
                  v157 = self->_photoLibrary;
                  v171[0] = _NSConcreteStackBlock;
                  v171[1] = 3221225472;
                  v171[2] = sub_100163E78;
                  v171[3] = &unk_100282F90;
                  v171[4] = v156;
                  [(PHPhotoLibrary *)v157 mad_performAnalysisDataStoreChanges:v171 error:0];
                }

                else
                {
                  [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v156 forKey:v143];
                  [(VCPDatabaseWriter *)self->_analysisDatabase commit];
                }

                v125 = v145;
              }
            }
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v158 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, type))
            {
              v159 = self->_logPrefix;
              *buf = v163;
              v189 = v159;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Finished updating VUWGallery plugins", buf, 0xCu);
            }
          }
        }

        else
        {
          v125 = 0;
        }

        [v168 stop];
        if (MediaAnalysisLogLevel() >= 6)
        {
          v160 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, type))
          {
            v161 = self->_logPrefix;
            [v168 elapsedTimeSeconds];
            *buf = 138412546;
            v189 = v161;
            v190 = 2048;
            v191 = v162;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Finished Gallery Person Processing (%.2f seconds)", buf, 0x16u);
          }
        }
      }
    }
  }

LABEL_210:
}

- (void)process
{
  v3 = objc_alloc_init(VCPTimeMeasurement);
  [v3 start];
  [(PHPhotoLibrary *)self->_photoLibrary registerAvailabilityObserver:self];
  [(MADPhotosPersonProcessingTask *)self processGallery];
  if (_os_feature_enabled_impl() && [(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]&& self->_requirement == 20)
  {
    if ([(MADPhotosPersonProcessingTask *)self isCanceled])
    {
      goto LABEL_55;
    }

    v4 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:@"ContactIngestionTimestamp"];
    v5 = v4;
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
    if (v4)
    {
      v7 = +[NSDate now];
      [v7 timeIntervalSinceReferenceDate];
      v9 = v8 - v5 >= 43200.0;
    }

    else
    {
      v9 = 1;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        if (v9)
        {
          v11 = @"Yes";
        }

        else
        {
          v11 = @"No";
        }

        v12 = +[VCPLogManager dateFormatter];
        v13 = [v12 stringFromDate:v6];
        *buf = 138412802;
        v59 = v48;
        v60 = 2112;
        v61 = v11;
        v62 = 2112;
        v63 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Contact ingestion needed: %@ (last ingestion date: %@", buf, 0x20u);
      }
    }

    if (v9)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = objc_alloc_init(MADContactsPersonProcessingTask);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100164848;
      v54[3] = &unk_100283000;
      v54[4] = self;
      [(MADProcessingTask *)v15 setCancelBlock:v54];
      [(MADContactsPersonProcessingTask *)v15 process];
      v16 = [(MADPhotosPersonProcessingTask *)self isCanceled];
      if ((v16 & 1) == 0)
      {
        v17 = +[NSDate now];
        [v17 timeIntervalSinceReferenceDate];
        v19 = v18;

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          photoLibrary = self->_photoLibrary;
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100164850;
          v53[3] = &unk_100282F90;
          v53[4] = v19;
          [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v53 error:0];
        }

        else
        {
          [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v19 forKey:@"ContactIngestionTimestamp"];
          [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v21 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v21))
          {
            logPrefix = self->_logPrefix;
            *buf = 138412290;
            v59 = logPrefix;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Updated contact ingestion timestamp", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(v14);
      if (v16)
      {
        goto LABEL_54;
      }
    }
  }

  if (_os_feature_enabled_impl() && [(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]&& self->_requirement == 20)
  {
    if ([(MADPhotosPersonProcessingTask *)self isCanceled])
    {
      goto LABEL_55;
    }

    v23 = [(MADPhotosPersonProcessingTask *)self databaseValueForKey:@"HomePersonIngestionTimestamp"];
    v24 = v23;
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v23];
    if (v23)
    {
      v25 = +[NSDate now];
      [v25 timeIntervalSinceReferenceDate];
      v27 = v26 - v24 >= 43200.0;
    }

    else
    {
      v27 = 1;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        if (v27)
        {
          v29 = @"Yes";
        }

        else
        {
          v29 = @"No";
        }

        v30 = +[VCPLogManager dateFormatter];
        v31 = [v30 stringFromDate:v6];
        *buf = 138412802;
        v59 = v49;
        v60 = 2112;
        v61 = v29;
        v62 = 2112;
        v63 = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Home person ingestion needed: %@ (last ingestion date: %@", buf, 0x20u);
      }
    }

    if (v27)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = objc_alloc_init(MADHomePersonProcessingTask);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100164868;
      v52[3] = &unk_100283000;
      v52[4] = self;
      [(MADProcessingTask *)v33 setCancelBlock:v52];
      [(MADHomePersonProcessingTask *)v33 process];
      v34 = [(MADPhotosPersonProcessingTask *)self isCanceled];
      if ((v34 & 1) == 0)
      {
        v35 = +[NSDate now];
        [v35 timeIntervalSinceReferenceDate];
        v37 = v36;

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          v38 = self->_photoLibrary;
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100164870;
          v51[3] = &unk_100282F90;
          v51[4] = v37;
          [(PHPhotoLibrary *)v38 mad_performAnalysisDataStoreChanges:v51 error:0];
        }

        else
        {
          [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v37 forKey:@"HomePersonIngestionTimestamp"];
          [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v39 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v39))
          {
            v40 = self->_logPrefix;
            *buf = 138412290;
            v59 = v40;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Updated home person ingestion timestamp", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(v32);
      if (v34)
      {
        goto LABEL_54;
      }
    }
  }

  v41 = _os_feature_enabled_impl();
  if (([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]& v41) != 1 || !VCPMAIsAppleInternal())
  {
    goto LABEL_51;
  }

  if (![(MADPhotosPersonProcessingTask *)self isCanceled])
  {
    v56 = MADFaceLibraryProcessing_AutoCounterOnly;
    v57 = &__kCFBooleanTrue;
    v42 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v55 = self->_photoLibrary;
    v43 = [NSArray arrayWithObjects:&v55 count:1];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100164888;
    v50[3] = &unk_100283000;
    v50[4] = self;
    v44 = [VCPFaceLibraryProcessingTask taskWithPhotoLibraries:v43 andOptions:v42 andProgressHandler:0 andCompletionHandler:0 andCancelBlock:v50];

    [v44 run];
LABEL_51:
    [v3 stop];
    v45 = _os_feature_enabled_impl();
    v46 = VCPAnalyticsFieldTimeAnalyzingInSeconds;
    if (!v45)
    {
      v46 = VCPAnalyticsFieldPersonProcessingTimeInSeconds;
    }

    v6 = *v46;
    analyticsManager = self->_analyticsManager;
    [v3 elapsedTimeSeconds];
    [(VCPMADCoreAnalyticsManager *)analyticsManager accumulateDoubleValue:v6 forField:self->_runSession andEvent:?];
LABEL_54:
  }

LABEL_55:
}

- (void)photoLibraryDidBecomeUnavailable:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
  v6 = [v4 photoLibraryURL];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        logPrefix = self->_logPrefix;
        v10 = 138412546;
        v11 = logPrefix;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Photo Library unavailable (%@); cancelling person processing", &v10, 0x16u);
      }
    }

    [(MADPhotosPersonProcessingTask *)self cancel];
  }
}

@end