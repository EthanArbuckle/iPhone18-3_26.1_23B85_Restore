@interface VCPPreAnalyzer
+ (id)_nonPanoPreWarmDimensions;
+ (unint64_t)_getSHRevision;
+ (void)_getSHRevision;
- (VCPPreAnalyzer)init;
- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)a3;
- (id)_processBoundingBoxFromDetectedObjects:(id)a3 forSceneClassID:(id)a4;
- (int)_collectSceneAnalysisResults:(id *)a3 fromRequests:(id)a4 wpResults:(id)a5 safetyNResults:(id)a6 safetyGVResults:(id)a7 abnormalDimension:(unint64_t)a8;
- (int)_createRequests:(id)a3 withMediaType:(int64_t)a4;
- (int)_performAnalysis:(id *)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 abnormalDimension:(unint64_t)a6 colorPixelBuffer:(__CVBuffer *)a7 andLumaPixelBuffer:(__CVBuffer *)a8 image:(id)a9;
- (int)_performBlurAnalysis:(id *)a3 withLumaPixelBuffer:(__CVBuffer *)a4 abnormalDimension:(unint64_t)a5 isSDOF:(BOOL)a6;
- (int)_performBlurAnalysis:(id *)a3 withPixelBuffer:(__CVBuffer *)a4 usingAnalyzer:(id)a5;
- (int)_performEmbeddingAnalysis:(id *)a3 withColorPixelBuffer:(__CVBuffer *)a4;
- (int)_performExposureAnalysis:(id *)a3 withLumaPixelBuffer:(__CVBuffer *)a4;
- (int)_performRotationAnalysis:(id *)a3 withColorPixelBuffer:(__CVBuffer *)a4;
- (int)_performSceneAnalysis:(id *)a3 image:(id)a4 mediaType:(int64_t)a5 mediaSubtypes:(unint64_t)a6 abnormalDimension:(unint64_t)a7;
- (int)_performWallpaperAnalysis:(id *)a3 withSceneprint:(id)a4;
- (void)_configureRequest:(id)a3;
- (void)_configureRequest:(id)a3 withRevision:(unint64_t)a4;
- (void)_generateSceneClassifications:(id)a3 fromRequests:(id)a4;
- (void)_insertBoundingBox:(id)a3 toSortedBoundingBoxes:(id)a4;
- (void)_parseClassificationObservations:(id)a3 toClassificationResults:(id)a4;
- (void)_parseClassificationObservations:(id)a3 withPrefix:(id)a4 toClassificationResults:(id)a5;
- (void)_parsePhotosTaxonomyClassificationObservations:(id)a3 toClassificationResults:(id)a4 andDetectorSceneClassIds:(id)a5 isEntityNet:(BOOL)a6;
- (void)analyzeWithImageURL:(id)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 abnormalDimension:(unint64_t)a6 completionHandler:(id)a7;
@end

@implementation VCPPreAnalyzer

+ (unint64_t)_getSHRevision
{
  if ((atomic_load_explicit(&qword_1ED942840, memory_order_acquire) & 1) == 0)
  {
    +[VCPPreAnalyzer _getSHRevision];
  }

  return _MergedGlobals_3;
}

+ (id)_nonPanoPreWarmDimensions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCPPreAnalyzer__nonPanoPreWarmDimensions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VCPPreAnalyzer _nonPanoPreWarmDimensions]::once != -1)
  {
    dispatch_once(&+[VCPPreAnalyzer _nonPanoPreWarmDimensions]::once, block);
  }

  v2 = +[VCPPreAnalyzer _nonPanoPreWarmDimensions]::cachedDimensions;

  return v2;
}

void __43__VCPPreAnalyzer__nonPanoPreWarmDimensions__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = [MEMORY[0x1E696B098] valueWithSize:{299.0, 299.0}];
  [v0 addObject:v1];

  if ([objc_opt_class() _includeMeme])
  {
    v2 = [MEMORY[0x1E696B098] valueWithSize:{360.0, 360.0}];
    [v0 addObject:v2];
  }

  if ([objc_opt_class() _includeDocument])
  {
    v3 = [MEMORY[0x1E696B098] valueWithSize:{256.0, 256.0}];
    [v0 addObject:v3];
  }

  v4 = +[VCPPreAnalyzer _nonPanoPreWarmDimensions]::cachedDimensions;
  +[VCPPreAnalyzer _nonPanoPreWarmDimensions]::cachedDimensions = v0;
}

- (VCPPreAnalyzer)init
{
  v12.receiver = self;
  v12.super_class = VCPPreAnalyzer;
  v2 = [(VCPPreAnalyzer *)&v12 init];
  if (v2)
  {
    +[VCPPreAnalysisRequests asyncCacheRequestIdealDimension];
    +[VCPPreAnalysisRequests asyncLoadSharedPhotoFormatsObjects];
    v3 = dispatch_group_create();
    processingGroup = v2->_processingGroup;
    v2->_processingGroup = v3;

    v5 = dispatch_queue_create("com.apple.mediaanalysis.SceneProcessingGroup", 0);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v5;

    v7 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_65];
    sessionPool = v2->_sessionPool;
    v2->_sessionPool = v7;

    v9 = objc_alloc_init(MADSceneResources);
    resources = v2->_resources;
    v2->_resources = v9;
  }

  return v2;
}

id __22__VCPPreAnalyzer_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6984688]);

  return v0;
}

- (void)_configureRequest:(id)a3
{
  v4 = a3;
  [v4 setMetalContextPriority:1];
  [v4 setPreferBackgroundProcessing:1];
  if (DeviceHasANE() && [objc_opt_class() _allowANE])
  {
    v3 = [MEMORY[0x1E6984608] defaultANEDevice];
    [v4 setProcessingDevice:v3];
  }
}

- (void)_configureRequest:(id)a3 withRevision:(unint64_t)a4
{
  v6 = a3;
  [v6 setRevision:a4];
  [(VCPPreAnalyzer *)self _configureRequest:v6];
}

- (int)_createRequests:(id)a3 withMediaType:(int64_t)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E6984430]);
  [v6 setAestheticsRequest:v7];

  v8 = objc_alloc_init(MEMORY[0x1E6984668]);
  [v6 setClassificationRequest:v8];

  v9 = objc_alloc_init(MEMORY[0x1E6984490]);
  [v6 setSceneprintRequest:v9];

  v10 = objc_alloc_init(MEMORY[0x1E6984440]);
  [v6 setJunkImageRequest:v10];

  v11 = objc_alloc_init(MEMORY[0x1E6984540]);
  [v6 setSaliencyRequest:v11];

  v12 = [v6 aestheticsRequest];

  if (!v12)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "Failed to create VNClassifyImageAestheticsRequest";
    goto LABEL_30;
  }

  v13 = [v6 classificationRequest];

  if (!v13)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "Failed to create VNSceneClassificationRequest";
    goto LABEL_30;
  }

  v14 = [v6 sceneprintRequest];

  if (!v14)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "Failed to create VNCreateSceneprintRequest";
    goto LABEL_30;
  }

  v15 = [v6 junkImageRequest];

  if (!v15)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "Failed to create VNClassifyJunkImageRequest";
    goto LABEL_30;
  }

  v16 = [v6 saliencyRequest];

  if (v16)
  {
    v17 = [v6 aestheticsRequest];
    [(VCPPreAnalyzer *)self _configureRequest:v17];

    v18 = [v6 classificationRequest];
    [(VCPPreAnalyzer *)self _configureRequest:v18];

    v19 = [v6 sceneprintRequest];
    [(VCPPreAnalyzer *)self _configureRequest:v19];

    v20 = [v6 junkImageRequest];
    [(VCPPreAnalyzer *)self _configureRequest:v20];

    v21 = [v6 saliencyRequest];
    [(VCPPreAnalyzer *)self _configureRequest:v21];

    v22 = [v6 classificationRequest];
    [v22 setMaximumLeafObservations:15];

    v23 = [v6 classificationRequest];
    [v23 setMaximumHierarchicalObservations:15];

    v24 = [v6 aestheticsRequest];
    v107 = 0;
    v25 = [v24 setRevision:3737841667 error:&v107];
    v26 = v107;

    if (v25)
    {
      v27 = [v6 classificationRequest];
      v106 = v26;
      v28 = [v27 setRevision:3737841665 error:&v106];
      v29 = v106;

      if ((v28 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_135;
        }

        *buf = 134218242;
        v109 = 3737841665;
        v110 = 2112;
        v111 = v29;
        v43 = MEMORY[0x1E69E9C10];
        v44 = "Failed to set VNSceneClassificationRequest::setRevision %lu: %@";
        goto LABEL_41;
      }

      v30 = [v6 sceneprintRequest];
      v105 = v29;
      v31 = [v30 setRevision:3737841671 error:&v105];
      v26 = v105;

      if (v31)
      {
        v32 = [v6 saliencyRequest];
        v104 = v26;
        v33 = [v32 setRevision:3737841667 error:&v104];
        v29 = v104;

        if ((v33 & 1) == 0)
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_135;
          }

          *buf = 134218242;
          v109 = 3737841667;
          v110 = 2112;
          v111 = v29;
          v43 = MEMORY[0x1E69E9C10];
          v44 = "Failed to set VNGenerateAttentionBasedSaliencyImageRequest::setRevision %lu: %@";
          goto LABEL_41;
        }

        if ([objc_opt_class() _useR14J9])
        {
          v34 = [v6 junkImageRequest];
          v103 = v29;
          v35 = [v34 setRevision:3737841669 error:&v103];
          v26 = v103;

          if ((v35 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            *buf = 134218242;
            v109 = 3737841669;
            v110 = 2112;
            v111 = v26;
            v36 = MEMORY[0x1E69E9C10];
            v37 = "Failed to set VNClassifyJunkImageRequest::setRevision %lu: %@";
            goto LABEL_36;
          }
        }

        else
        {
          v26 = v29;
        }

        if ([objc_opt_class() _includeDO])
        {
          v45 = objc_alloc_init(MEMORY[0x1E6984630]);
          [v6 setObjectRequest:v45];

          v46 = [v6 objectRequest];
          LODWORD(v45) = v46 == 0;

          if (v45)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            v89 = objc_opt_class();
            *buf = 138412290;
            v109 = v89;
            v36 = MEMORY[0x1E69E9C10];
            v37 = "Failed to create %@";
            goto LABEL_140;
          }

          v47 = [v6 objectRequest];
          [(VCPPreAnalyzer *)self _configureRequest:v47];

          v48 = [v6 objectRequest];
          v102 = v26;
          v49 = [v48 setRevision:3737841667 error:&v102];
          v29 = v102;

          if ((v49 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }

            *buf = 134218242;
            v109 = 3737841667;
            v110 = 2112;
            v111 = v29;
            v43 = MEMORY[0x1E69E9C10];
            v44 = "Failed to set VNRecognizeObjectsRequest::setRevision %lu: %@";
            goto LABEL_41;
          }

          v26 = v29;
        }

        if ([objc_opt_class() _includeSO])
        {
          v50 = objc_alloc_init(MEMORY[0x1E6984568]);
          [v6 setSaliencyObjectnessRequest:v50];

          v51 = [v6 saliencyObjectnessRequest];
          LODWORD(v50) = v51 == 0;

          if (v50)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            v90 = objc_opt_class();
            *buf = 138412290;
            v109 = v90;
            v36 = MEMORY[0x1E69E9C10];
            v37 = "Failed to create %@";
            goto LABEL_140;
          }

          v52 = [v6 saliencyObjectnessRequest];
          v101 = v26;
          v53 = [v52 setRevision:3737841666 error:&v101];
          v29 = v101;

          if ((v53 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }

            *buf = 134218242;
            v109 = 3737841666;
            v110 = 2112;
            v111 = v29;
            v43 = MEMORY[0x1E69E9C10];
            v44 = "Failed to set VNGenerateObjectnessBasedSaliencyImageRequest::setRevision %lu: %@";
            goto LABEL_41;
          }

          v26 = v29;
        }

        if ([objc_opt_class() _includeSE])
        {
          v54 = objc_alloc_init(MEMORY[0x1E69843F0]);
          [v6 setTabooRequest:v54];

          v55 = [v6 tabooRequest];
          LODWORD(v54) = v55 == 0;

          if (v54)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            v91 = objc_opt_class();
            *buf = 138412290;
            v109 = v91;
            v36 = MEMORY[0x1E69E9C10];
            v37 = "Failed to create %@";
            goto LABEL_140;
          }

          v56 = [v6 tabooRequest];
          [(VCPPreAnalyzer *)self _configureRequest:v56];

          v57 = [v6 tabooRequest];
          v100 = v26;
          v58 = [v57 setRevision:2 error:&v100];
          v29 = v100;

          if ((v58 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }

            *buf = 134218242;
            v109 = 2;
            v110 = 2112;
            v111 = v29;
            v43 = MEMORY[0x1E69E9C10];
            v44 = "Failed to set VNClassifySignificantEventRequest::setRevision %lu: %@";
            goto LABEL_41;
          }

          v26 = v29;
        }

        if ([objc_opt_class() _includeSDG])
        {
          v59 = objc_alloc_init(MEMORY[0x1E69843E8]);
          [v6 setSemanticRequest:v59];

          v60 = [v6 semanticRequest];
          LODWORD(v59) = v60 == 0;

          if (v59)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            v92 = objc_opt_class();
            *buf = 138412290;
            v109 = v92;
            v36 = MEMORY[0x1E69E9C10];
            v37 = "Failed to create %@";
            goto LABEL_140;
          }

          v61 = [v6 semanticRequest];
          [(VCPPreAnalyzer *)self _configureRequest:v61];

          v62 = [v6 semanticRequest];
          v99 = v26;
          v63 = [v62 setRevision:3737841667 error:&v99];
          v29 = v99;

          if ((v63 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }

            *buf = 134218242;
            v109 = 3737841667;
            v110 = 2112;
            v111 = v29;
            v43 = MEMORY[0x1E69E9C10];
            v44 = "Failed to set VNClassifySemanticDevelopmentGatingRequest::setRevision %lu: %@";
            goto LABEL_41;
          }

          v26 = v29;
        }

        if ([objc_opt_class() _includeMeme])
        {
          v64 = objc_alloc_init(MEMORY[0x1E6984448]);
          [v6 setMemeRequest:v64];

          v65 = [v6 memeRequest];
          LODWORD(v64) = v65 == 0;

          if (v64)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            goto LABEL_119;
          }

          v66 = [v6 memeRequest];
          [(VCPPreAnalyzer *)self _configureRequest:v66 withRevision:3];
        }

        if ([objc_opt_class() _includeDocument] && (objc_msgSend(MEMORY[0x1E6984620], "vcp_sceneRequest"), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setDocumentRequest:", v67), v67, objc_msgSend(v6, "documentRequest"), v68 = objc_claimAutoreleasedReturnValue(), LODWORD(v67) = v68 == 0, v68, v67))
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (![objc_opt_class() _includePA])
          {
            goto LABEL_74;
          }

          v69 = objc_alloc_init(MEMORY[0x1E69843E0]);
          [v6 setAdjustmentsRequest:v69];

          v70 = [v6 adjustmentsRequest];
          LODWORD(v69) = v70 == 0;

          if (!v69)
          {
            v71 = [v6 adjustmentsRequest];
            [(VCPPreAnalyzer *)self _configureRequest:v71];

            v72 = [v6 adjustmentsRequest];
            v98 = v26;
            v73 = [v72 setRevision:3737841664 error:&v98];
            v29 = v98;

            if ((v73 & 1) == 0)
            {
              if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_135;
              }

              *buf = 134218242;
              v109 = 3737841664;
              v110 = 2112;
              v111 = v29;
              v43 = MEMORY[0x1E69E9C10];
              v44 = "Failed to set VNGeneratePhotosAdjustmentsRequest::setRevision %lu: %@";
              goto LABEL_41;
            }

            v26 = v29;
LABEL_74:
            if ([objc_opt_class() _includeCN])
            {
              v74 = objc_alloc_init(MEMORY[0x1E6984420]);
              [v6 setCityNatureRequest:v74];

              v75 = [v6 cityNatureRequest];
              LODWORD(v74) = v75 == 0;

              if (v74)
              {
                if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

                v94 = objc_opt_class();
                *buf = 138412290;
                v109 = v94;
                v36 = MEMORY[0x1E69E9C10];
                v37 = "Failed to create %@";
                goto LABEL_140;
              }

              v76 = [v6 cityNatureRequest];
              [(VCPPreAnalyzer *)self _configureRequest:v76];

              v77 = [v6 cityNatureRequest];
              v97 = v26;
              v78 = [v77 setRevision:2 error:&v97];
              v29 = v97;

              if ((v78 & 1) == 0)
              {
                if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_135;
                }

                *buf = 134218242;
                v109 = 2;
                v110 = 2112;
                v111 = v29;
                v43 = MEMORY[0x1E69E9C10];
                v44 = "Failed to set VNClassifyCityNatureImageRequest::setRevision %lu: %@";
                goto LABEL_41;
              }

              v26 = v29;
            }

            if ([objc_opt_class() _includeDMF] && (objc_msgSend(objc_opt_class(), "_isMovieWithMediaType:", a4) & 1) == 0)
            {
              v79 = objc_alloc_init(MEMORY[0x1E6984480]);
              [v6 setImagefingerprintsRequest:v79];

              v80 = [v6 imagefingerprintsRequest];
              LODWORD(v79) = v80 == 0;

              if (v79)
              {
                if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

LABEL_139:
                v95 = objc_opt_class();
                *buf = 138412290;
                v109 = v95;
                v36 = MEMORY[0x1E69E9C10];
                v37 = "Failed to create %@";
                goto LABEL_140;
              }

              v81 = [v6 imagefingerprintsRequest];
              [(VCPPreAnalyzer *)self _configureRequest:v81 withRevision:1];
            }

            if (![MEMORY[0x1E6984658] mad_includeEntityNet])
            {
              v40 = 0;
LABEL_142:

              goto LABEL_32;
            }

            v82 = objc_alloc_init(MEMORY[0x1E6984438]);
            [v6 setClassifyImageRequest:v82];

            v83 = [v6 classifyImageRequest];
            LODWORD(v82) = v83 == 0;

            if (!v82)
            {
              v84 = [v6 classifyImageRequest];
              [(VCPPreAnalyzer *)self _configureRequest:v84];

              v85 = [v6 classifyImageRequest];
              v96 = v26;
              v86 = [v85 setRevision:3737841667 error:&v96];
              v29 = v96;

              if (v86)
              {
                v87 = [v6 classifyImageRequest];
                [v87 setMaximumLeafObservations:15];

                v88 = [v6 classifyImageRequest];
                [v88 setMaximumHierarchicalObservations:15];

                v40 = 0;
LABEL_136:
                v26 = v29;
                goto LABEL_142;
              }

              if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
LABEL_135:
                v40 = -18;
                goto LABEL_136;
              }

              *buf = 134218242;
              v109 = 3737841667;
              v110 = 2112;
              v111 = v29;
              v43 = MEMORY[0x1E69E9C10];
              v44 = "Failed to set VNClassifyImageRequest::setRevision %lu: %@";
LABEL_41:
              _os_log_impl(&dword_1C9B70000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x16u);
              goto LABEL_135;
            }

            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            goto LABEL_139;
          }

          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }
        }

LABEL_119:
        v93 = objc_opt_class();
        *buf = 138412290;
        v109 = v93;
        v36 = MEMORY[0x1E69E9C10];
        v37 = "Failed to create %@";
LABEL_140:
        v42 = 12;
        goto LABEL_37;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }

      *buf = 134218242;
      v109 = 3737841671;
      v110 = 2112;
      v111 = v26;
      v36 = MEMORY[0x1E69E9C10];
      v37 = "Failed to set VNCreateSceneprintRequest::setRevision %lu: %@";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }

      *buf = 134218242;
      v109 = 3737841667;
      v110 = 2112;
      v111 = v26;
      v36 = MEMORY[0x1E69E9C10];
      v37 = "Failed to set VNClassifyImageAestheticsRequest::setRevision %lu: %@";
    }

LABEL_36:
    v42 = 22;
LABEL_37:
    _os_log_impl(&dword_1C9B70000, v36, OS_LOG_TYPE_ERROR, v37, buf, v42);
LABEL_141:
    v40 = -18;
    goto LABEL_142;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "Failed to create VNGenerateAttentionBasedSaliencyImageRequest";
LABEL_30:
    _os_log_impl(&dword_1C9B70000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
  }

LABEL_31:
  v40 = -18;
LABEL_32:

  return v40;
}

- (void)_parseClassificationObservations:(id)a3 toClassificationResults:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v10 = *v23;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        [v12 confidence];
        if (v13 >= 0.01)
        {
          v14 = [v12 identifier];
          v15 = VCPSpecialLabelToExtendedSceneClassificationID(v14);

          if (v15)
          {
            v28 = @"Confidence";
            v16 = MEMORY[0x1E696AD98];
            [v12 confidence];
            v17 = [v16 numberWithFloat:?];
            v29 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v19 = [v15 stringValue];
            [v6 setObject:v18 forKeyedSubscript:v19];
          }

          else
          {
            v17 = [v12 identifier];
            if (MediaAnalysisLogLevel() >= 3)
            {
              v20 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v27 = v17;
                _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_ERROR, "Unsupported observation label in VCPSpecialLabelToExtendedSceneClassificationID %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (void)_parseClassificationObservations:(id)a3 withPrefix:(id)a4 toClassificationResults:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 identifier];
        [v13 confidence];
        if (v15 >= 0.01)
        {
          if (v8 && ([v14 hasPrefix:v8] & 1) == 0)
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, v14];

            v14 = v16;
          }

          v17 = VCPSpecialLabelToExtendedSceneClassificationID(v14);
          if (v17)
          {
            v30 = @"Confidence";
            v18 = MEMORY[0x1E696AD98];
            [v13 confidence];
            v19 = [v18 numberWithFloat:?];
            v31 = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            v21 = [v17 stringValue];
            [v23 setObject:v20 forKeyedSubscript:v21];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v13 identifier];
            *buf = 138412290;
            v29 = v22;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported observation label %@", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)_parsePhotosTaxonomyClassificationObservations:(id)a3 toClassificationResults:(id)a4 andDetectorSceneClassIds:(id)a5 isEntityNet:(BOOL)a6
{
  v37 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v38 = a5;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v10)
  {
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        [v13 confidence];
        if (v15 >= 0.01)
        {
          v16 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v17 = [v13 identifier];
          v18 = [v16 nodeForName:v17];

          if (v18)
          {
            [v18 highPrecisionThreshold];
            v20 = v19;
            [v18 highRecallThreshold];
            v22 = v21;
            [v18 searchThreshold];
            v24 = v23;
            [v13 confidence];
            if (v22 >= v20)
            {
              v26 = v20;
            }

            else
            {
              v26 = v22;
            }

            if (v24 < v26)
            {
              v26 = v24;
            }

            v27 = v25;
            if (v26 < 0.00999999978)
            {
              v26 = 0.00999999978;
            }

            if (v26 <= v27)
            {
              v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v18, "extendedSceneClassId")}];
              v29 = [v28 stringValue];

              v47 = @"Confidence";
              v30 = MEMORY[0x1E696AD98];
              [v13 confidence];
              v31 = [v30 numberWithFloat:?];
              v48 = v31;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              [v36 setObject:v32 forKeyedSubscript:v29];

              if (v38)
              {
                v33 = [v18 detectors];
                v39[0] = MEMORY[0x1E69E9820];
                v39[1] = 3221225472;
                v39[2] = __126__VCPPreAnalyzer__parsePhotosTaxonomyClassificationObservations_toClassificationResults_andDetectorSceneClassIds_isEntityNet___block_invoke;
                v39[3] = &unk_1E8350680;
                v40 = v38;
                [v33 enumerateObjectsUsingBlock:v39];
              }
            }
          }

          else if (v37)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v34 = [v13 identifier];
              *buf = 138412290;
              v46 = v34;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Unsupported EntityNet label in PFSceneTaxonomyNode: %@", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v35 = [v13 identifier];
            *buf = 138412290;
            v46 = v35;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported SceneNet label in PFSceneTaxonomyNode: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v10);
  }
}

void __126__VCPPreAnalyzer__parsePhotosTaxonomyClassificationObservations_toClassificationResults_andDetectorSceneClassIds_isEntityNet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "extendedSceneClassId")}];
  v6 = [v5 stringValue];
  [v4 addObject:v6];
}

- (id)_processBoundingBoxFromDetectedObjects:(id)a3 forSceneClassID:(id)a4
{
  v73[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v52 = a4;
  v53 = v5;
  if (![v5 count])
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "[DO] detectedObjects count is 0; skip detectedObjects";
    v21 = 2;
    goto LABEL_22;
  }

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [v6 objectForKeyedSubscript:@"Confidence"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v5 firstObject];
    v11 = [v10 objectForKeyedSubscript:@"size"];
    [v11 floatValue];
    v13 = v12;

    v73[0] = v52;
    v72[0] = @"classID";
    v72[1] = @"BoundingBox";
    v14 = [v5 firstObject];
    v15 = [v14 objectForKeyedSubscript:@"BoundingBox"];
    v73[1] = v15;
    v72[2] = @"score";
    *&v16 = v9 * v13;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v73[2] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];

    goto LABEL_47;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = v5;
  v23 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v23)
  {
    v24 = *v59;
    v25 = -1.0;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v58 + 1) + 8 * i) objectForKeyedSubscript:@"Confidence"];
        [v27 floatValue];
        v29 = v28;

        if (v29 > v25)
        {
          v25 = v29;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v23);
  }

  else
  {
    v25 = -1.0;
  }

  v30 = v25;
  if (v25 < 0.01)
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    v65 = v25;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "[DO] invalid confidenceMax: %f; skip detectedObjects";
    v21 = 12;
LABEL_22:
    _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
LABEL_23:
    v18 = 0;
    goto LABEL_47;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v31 = v22;
  v32 = [v31 countByEnumeratingWithState:&v54 objects:v70 count:16];
  v33 = v25 * 0.8;
  v34 = 0;
  if (v32)
  {
    v35 = *v55;
    v36 = -1.0;
    v37 = -1.0;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v55 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v39 = *(*(&v54 + 1) + 8 * j);
        v40 = [v39 objectForKeyedSubscript:@"Confidence"];
        [v40 floatValue];
        v42 = v41;

        v43 = [v39 objectForKeyedSubscript:@"size"];
        [v43 floatValue];
        v45 = v44;

        if (v42 >= v33 && v45 > v36)
        {
          v47 = [v39 objectForKeyedSubscript:@"BoundingBox"];

          v36 = v45;
          v37 = v42;
          v34 = v47;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v32);
  }

  else
  {
    v36 = -1.0;
    v37 = -1.0;
  }

  if (v36 == -1.0 || v37 == -1.0 || !v34)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v50 = [v31 description];
      *buf = 134218498;
      v65 = v30;
      v66 = 2048;
      v67 = v33;
      v68 = 2112;
      v69 = v50;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[DO] Failed to choose the best bounding box c_max: %f, c_threshold (0.8x): %f from %@", buf, 0x20u);
    }

    v18 = 0;
  }

  else
  {
    v62[0] = @"classID";
    v62[1] = @"BoundingBox";
    v63[0] = v52;
    v63[1] = v34;
    v62[2] = @"score";
    *&v48 = v36 * v37;
    v49 = [MEMORY[0x1E696AD98] numberWithFloat:v48];
    v63[2] = v49;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
  }

LABEL_47:

  return v18;
}

- (void)_insertBoundingBox:(id)a3 toSortedBoundingBoxes:(id)a4
{
  v14 = a3;
  v5 = a4;
  if (v14 && v5)
  {
    v6 = [v14 objectForKeyedSubscript:@"score"];
    [v6 floatValue];
    v8 = v7;

    for (i = 0; i < [v5 count]; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      v11 = [v10 objectForKeyedSubscript:@"score"];
      [v11 floatValue];
      v13 = v12;

      if (v13 < v8)
      {
        break;
      }
    }

    [v5 insertObject:v14 atIndex:i];
  }
}

- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__VCPPreAnalyzer__extractAndSortBoundingBoxFromDetectedObjects___block_invoke;
  v14[3] = &unk_1E83506A8;
  v6 = v5;
  v15 = v6;
  [v4 enumerateObjectsUsingBlock:v14];
  v7 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__VCPPreAnalyzer__extractAndSortBoundingBoxFromDetectedObjects___block_invoke_381;
  v12[3] = &unk_1E83506D0;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __64__VCPPreAnalyzer__extractAndSortBoundingBoxFromDetectedObjects___block_invoke(uint64_t a1, void *a2)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  v5 = [v3 labels];
  v6 = [v5 firstObject];
  v7 = [v6 identifier];
  v8 = [v4 nodeForName:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "extendedSceneClassId")}];
    v10 = [v9 stringValue];

    v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
    }

    v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v27[0] = @"Confidence";
    v14 = MEMORY[0x1E696AD98];
    [v3 confidence];
    v15 = [v14 numberWithFloat:?];
    v28[0] = v15;
    v27[1] = @"BoundingBox";
    [v3 boundingBox];
    v16 = NSStringFromRect(v29);
    v28[1] = v16;
    v27[2] = @"size";
    v17 = MEMORY[0x1E696AD98];
    [v3 boundingBox];
    v19 = v18;
    [v3 boundingBox];
    v21 = [v17 numberWithDouble:v19 * v20];
    v28[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [v13 addObject:v22];
  }

  else
  {
    v23 = [v3 labels];
    v24 = [v23 firstObject];
    v10 = [v24 identifier];

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 138412290;
      v26 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[DO] Unsupported observation label in PFSceneTaxonomyNode %@", &v25, 0xCu);
    }
  }
}

void __64__VCPPreAnalyzer__extractAndSortBoundingBoxFromDetectedObjects___block_invoke_381(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _processBoundingBoxFromDetectedObjects:a3 forSceneClassID:a2];
  [*(a1 + 32) _insertBoundingBox:? toSortedBoundingBoxes:?];
}

- (void)_generateSceneClassifications:(id)a3 fromRequests:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _includeDO];
  v9 = [MEMORY[0x1E695DFA8] set];
  v10 = [v7 classificationRequest];
  v11 = [v10 results];
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  [(VCPPreAnalyzer *)self _parsePhotosTaxonomyClassificationObservations:v11 toClassificationResults:v6 andDetectorSceneClassIds:v12 isEntityNet:0];

  if (v8)
  {
    v13 = [v7 objectRequest];
    v14 = [v13 results];

    v15 = [(VCPPreAnalyzer *)self _extractAndSortBoundingBoxFromDetectedObjects:v14];
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v46[3] = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __61__VCPPreAnalyzer__generateSceneClassifications_fromRequests___block_invoke;
    v42[3] = &unk_1E83506F8;
    v43 = v9;
    v44 = v6;
    v45 = v46;
    [v15 enumerateObjectsUsingBlock:v42];

    _Block_object_dispose(v46, 8);
  }

  v16 = [v7 classifyImageRequest];
  v17 = [v16 results];
  [(VCPPreAnalyzer *)self _parsePhotosTaxonomyClassificationObservations:v17 toClassificationResults:v6 andDetectorSceneClassIds:0 isEntityNet:1];

  v18 = [v7 junkImageRequest];
  v19 = [v18 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v19 toClassificationResults:v6];

  v20 = [v7 landmarkRequest];
  v21 = [v20 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v21 toClassificationResults:v6];

  v22 = [v7 nsfwRequest];
  v23 = [v22 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v23 toClassificationResults:v6];

  v24 = [v7 tabooRequest];
  v25 = [v24 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v25 toClassificationResults:v6];

  v26 = [v7 semanticRequest];
  v27 = [v26 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v27 toClassificationResults:v6];

  v28 = [v7 memeRequest];
  v29 = [v28 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v29 withPrefix:@"meme_" toClassificationResults:v6];

  v30 = [v7 cityNatureRequest];
  v31 = [v30 results];
  [(VCPPreAnalyzer *)self _parseClassificationObservations:v31 toClassificationResults:v6];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [v7 documentRequest];
  v33 = [v32 results];

  v34 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v34)
  {
    v35 = *v39;
    do
    {
      v36 = 0;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [*(*(&v38 + 1) + 8 * v36) labels];
        [(VCPPreAnalyzer *)self _parseClassificationObservations:v37 toClassificationResults:v6];

        ++v36;
      }

      while (v34 != v36);
      v34 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v34);
  }
}

void __61__VCPPreAnalyzer__generateSceneClassifications_fromRequests___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"classID"];
  v8 = [v6 objectForKeyedSubscript:@"BoundingBox"];
  if ([*(a1 + 32) containsObject:v7])
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v7];

    if (v9)
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
      v11 = [v10 mutableCopy];

      [v11 setObject:v8 forKeyedSubscript:@"BoundingBox"];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
    }

    else
    {
      v13[0] = @"Confidence";
      v13[1] = @"BoundingBox";
      v14[0] = &unk_1F49BB6D8;
      v14[1] = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
    }

    if (++*(*(*(a1 + 48) + 8) + 24) >= 5uLL)
    {
      *a4 = 1;
    }
  }
}

- (int)_collectSceneAnalysisResults:(id *)a3 fromRequests:(id)a4 wpResults:(id)a5 safetyNResults:(id)a6 safetyGVResults:(id)a7 abnormalDimension:(unint64_t)a8
{
  v8 = a8;
  v206[22] = *MEMORY[0x1E69E9840];
  v179 = a4;
  v174 = a5;
  v176 = a6;
  v177 = a7;
  v178 = [MEMORY[0x1E695DF90] dictionary];
  v171 = v8;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Ignoring SceneNet result for tiny image", buf, 2u);
    }
  }

  else
  {
    [(VCPPreAnalyzer *)self _generateSceneClassifications:v178 fromRequests:v179];
  }

  if (v176)
  {
    v12 = [v176 mad_sceneClassifications:@"SafetyTypeN"];
    [v178 addEntriesFromDictionary:v12];
  }

  if (v177)
  {
    v13 = [v177 mad_sceneClassifications:@"SafetyTypeGV"];
    [v178 addEntriesFromDictionary:v13];
  }

  v14 = [v179 aestheticsRequest];
  v15 = [v14 results];
  v16 = [v15 count] == 1;

  if (!v16)
  {
    v59 = -18;
    goto LABEL_25;
  }

  v17 = [v179 aestheticsRequest];
  v18 = [v17 results];
  v175 = [v18 firstObject];

  v205[0] = @"overallScore";
  v19 = MEMORY[0x1E696AD98];
  [v175 aestheticScore];
  v169 = [v19 numberWithFloat:?];
  v206[0] = v169;
  v205[1] = @"wellFramedSubjectScore";
  v20 = MEMORY[0x1E696AD98];
  [v175 wellFramedSubjectScore];
  v167 = [v20 numberWithFloat:?];
  v206[1] = v167;
  v205[2] = @"wellChosenBackgroundScore";
  v21 = MEMORY[0x1E696AD98];
  [v175 wellChosenBackgroundScore];
  v165 = [v21 numberWithFloat:?];
  v206[2] = v165;
  v205[3] = @"tastefullyBlurredScore";
  v22 = MEMORY[0x1E696AD98];
  [v175 tastefullyBlurredScore];
  v163 = [v22 numberWithFloat:?];
  v206[3] = v163;
  v205[4] = @"sharplyFocusedSubjectScore";
  v23 = MEMORY[0x1E696AD98];
  [v175 sharplyFocusedSubjectScore];
  obja = [v23 numberWithFloat:?];
  v206[4] = obja;
  v205[5] = @"wellTimedShotScore";
  v24 = MEMORY[0x1E696AD98];
  [v175 wellTimedShotScore];
  v159 = [v24 numberWithFloat:?];
  v206[5] = v159;
  v205[6] = @"pleasantLightingScore";
  v25 = MEMORY[0x1E696AD98];
  [v175 pleasantLightingScore];
  v158 = [v25 numberWithFloat:?];
  v206[6] = v158;
  v205[7] = @"pleasantReflectionsScore";
  v26 = MEMORY[0x1E696AD98];
  [v175 pleasantReflectionsScore];
  v157 = [v26 numberWithFloat:?];
  v206[7] = v157;
  v205[8] = @"harmoniousColorScore";
  v27 = MEMORY[0x1E696AD98];
  [v175 harmoniousColorScore];
  v156 = [v27 numberWithFloat:?];
  v206[8] = v156;
  v205[9] = @"livelyColorScore";
  v28 = MEMORY[0x1E696AD98];
  [v175 livelyColorScore];
  v155 = [v28 numberWithFloat:?];
  v206[9] = v155;
  v205[10] = @"pleasantSymmetryScore";
  v29 = MEMORY[0x1E696AD98];
  [v175 pleasantSymmetryScore];
  v154 = [v29 numberWithFloat:?];
  v206[10] = v154;
  v205[11] = @"pleasantPatternScore";
  v30 = MEMORY[0x1E696AD98];
  [v175 pleasantPatternScore];
  v153 = [v30 numberWithFloat:?];
  v206[11] = v153;
  v205[12] = @"immersivenessScore";
  v31 = MEMORY[0x1E696AD98];
  [v175 immersivenessScore];
  v152 = [v31 numberWithFloat:?];
  v206[12] = v152;
  v205[13] = @"pleasantPerspectiveScore";
  v32 = MEMORY[0x1E696AD98];
  [v175 pleasantPerspectiveScore];
  v33 = [v32 numberWithFloat:?];
  v206[13] = v33;
  v205[14] = @"pleasantPostProcessingScore";
  v34 = MEMORY[0x1E696AD98];
  [v175 pleasantPostProcessingScore];
  v35 = [v34 numberWithFloat:?];
  v206[14] = v35;
  v205[15] = @"noiseScore";
  v36 = MEMORY[0x1E696AD98];
  [v175 noiseScore];
  v37 = [v36 numberWithFloat:?];
  v206[15] = v37;
  v205[16] = @"failureScore";
  v38 = MEMORY[0x1E696AD98];
  [v175 failureScore];
  v39 = [v38 numberWithFloat:?];
  v206[16] = v39;
  v205[17] = @"pleasantCompositionScore";
  v40 = MEMORY[0x1E696AD98];
  [v175 pleasantCompositionScore];
  v41 = [v40 numberWithFloat:?];
  v206[17] = v41;
  v205[18] = @"interestingSubjectScore";
  v42 = MEMORY[0x1E696AD98];
  [v175 interestingSubjectScore];
  v43 = [v42 numberWithFloat:?];
  v206[18] = v43;
  v205[19] = @"intrusiveObjectPresenceScore";
  v44 = MEMORY[0x1E696AD98];
  [v175 intrusiveObjectPresenceScore];
  v45 = [v44 numberWithFloat:?];
  v206[19] = v45;
  v205[20] = @"pleasantCameraTiltScore";
  v46 = MEMORY[0x1E696AD98];
  [v175 pleasantCameraTiltScore];
  v47 = [v46 numberWithFloat:?];
  v206[20] = v47;
  v205[21] = @"lowKeyLightingScore";
  v48 = MEMORY[0x1E696AD98];
  [v175 lowKeyLightingScore];
  v49 = [v48 numberWithFloat:?];
  v206[21] = v49;
  v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v206 forKeys:v205 count:22];

  v50 = [v179 saliencyRequest];
  v51 = [v50 results];
  LOBYTE(v33) = [v51 count] == 1;

  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  v52 = [v179 saliencyRequest];
  v53 = [v52 results];
  v54 = [v53 firstObject];
  [v54 boundingBox];
  x = v207.origin.x;
  y = v207.origin.y;
  width = v207.size.width;
  height = v207.size.height;
  if (CGRectGetMinX(v207) < 0.0 || (v208.origin.x = x, v208.origin.y = y, v208.size.width = width, v208.size.height = height, CGRectGetMinX(v208) > 1.0) || (v209.origin.x = x, v209.origin.y = y, v209.size.width = width, v209.size.height = height, CGRectGetMinY(v209) < 0.0) || (v210.origin.x = x, v210.origin.y = y, v210.size.width = width, v210.size.height = height, CGRectGetMinY(v210) > 1.0) || (v211.origin.x = x, v211.origin.y = y, v211.size.width = width, v211.size.height = height, CGRectGetMaxX(v211) < 0.0) || (v212.origin.x = x, v212.origin.y = y, v212.size.width = width, v212.size.height = height, CGRectGetMaxX(v212) > 1.0) || (v213.origin.x = x, v213.origin.y = y, v213.size.width = width, v213.size.height = height, CGRectGetMaxY(v213) < 0.0))
  {

    goto LABEL_20;
  }

  v215.origin.x = x;
  v215.origin.y = y;
  v215.size.width = width;
  v215.size.height = height;
  v65 = CGRectGetMaxY(v215) > 1.0;

  if (!v65)
  {
    v66 = [v179 saliencyRequest];
    v67 = [v66 results];
    v68 = [v67 firstObject];
    [v68 boundingBox];
    v170 = NSStringFromRect(v216);

    v69 = [v179 saliencyRequest];
    v70 = [v69 results];
    v71 = [v70 firstObject];
    [v71 narrowedBoundingBox];
    v72 = v217.origin.x;
    v73 = v217.origin.y;
    v74 = v217.size.width;
    v75 = v217.size.height;
    if (CGRectGetMinX(v217) < 0.0 || (v218.origin.x = v72, v218.origin.y = v73, v218.size.width = v74, v218.size.height = v75, CGRectGetMinX(v218) > 1.0) || (v219.origin.x = v72, v219.origin.y = v73, v219.size.width = v74, v219.size.height = v75, CGRectGetMinY(v219) < 0.0) || (v220.origin.x = v72, v220.origin.y = v73, v220.size.width = v74, v220.size.height = v75, CGRectGetMinY(v220) > 1.0) || (v221.origin.x = v72, v221.origin.y = v73, v221.size.width = v74, v221.size.height = v75, CGRectGetMaxX(v221) < 0.0) || (v222.origin.x = v72, v222.origin.y = v73, v222.size.width = v74, v222.size.height = v75, CGRectGetMaxX(v222) > 1.0) || (v223.origin.x = v72, v223.origin.y = v73, v223.size.width = v74, v223.size.height = v75, CGRectGetMaxY(v223) < 0.0))
    {

LABEL_35:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v76 = [v179 saliencyRequest];
        v77 = [v76 results];
        v78 = [v77 firstObject];
        [v78 narrowedBoundingBox];
        v79 = NSStringFromRect(v224);
        *buf = 138412290;
        v204 = v79;
        _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unnormalized saliencyRequest narrowed bounding box %@; skip", buf, 0xCu);
      }

      v59 = -18;
      goto LABEL_38;
    }

    v225.origin.x = v72;
    v225.origin.y = v73;
    v225.size.width = v74;
    v225.size.height = v75;
    v80 = CGRectGetMaxY(v225) > 1.0;

    if (v80)
    {
      goto LABEL_35;
    }

    v81 = [v179 saliencyRequest];
    v82 = [v81 results];
    v83 = [v82 firstObject];
    [v83 narrowedBoundingBox];
    v166 = NSStringFromRect(v226);

    v168 = [MEMORY[0x1E695DF70] array];
    if ([objc_opt_class() _includeSO])
    {
      v84 = [v179 saliencyObjectnessRequest];
      v85 = [v84 results];
      v86 = [v85 count] == 1;

      if (!v86)
      {
        goto LABEL_67;
      }

      v87 = [v179 saliencyObjectnessRequest];
      v88 = [v87 results];
      v89 = [v88 firstObject];
      v90 = [v89 salientObjects];

      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      obj = v90;
      v91 = [obj countByEnumeratingWithState:&v184 objects:v202 count:16];
      if (v91)
      {
        v92 = *v185;
        while (2)
        {
          for (i = 0; i != v91; ++i)
          {
            if (*v185 != v92)
            {
              objc_enumerationMutation(obj);
            }

            v94 = *(*(&v184 + 1) + 8 * i);
            [v94 boundingBox];
            v95 = v227.origin.x;
            v96 = v227.origin.y;
            v97 = v227.size.width;
            v98 = v227.size.height;
            if (CGRectGetMinX(v227) < 0.0 || (v228.origin.x = v95, v228.origin.y = v96, v228.size.width = v97, v228.size.height = v98, CGRectGetMinX(v228) > 1.0) || (v229.origin.x = v95, v229.origin.y = v96, v229.size.width = v97, v229.size.height = v98, CGRectGetMinY(v229) < 0.0) || (v230.origin.x = v95, v230.origin.y = v96, v230.size.width = v97, v230.size.height = v98, CGRectGetMinY(v230) > 1.0) || (v231.origin.x = v95, v231.origin.y = v96, v231.size.width = v97, v231.size.height = v98, CGRectGetMaxX(v231) < 0.0) || (v232.origin.x = v95, v232.origin.y = v96, v232.size.width = v97, v232.size.height = v98, CGRectGetMaxX(v232) > 1.0) || (v233.origin.x = v95, v233.origin.y = v96, v233.size.width = v97, v233.size.height = v98, CGRectGetMaxY(v233) < 0.0) || (v234.origin.x = v95, v234.origin.y = v96, v234.size.width = v97, v234.size.height = v98, CGRectGetMaxY(v234) > 1.0))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                [v94 boundingBox];
                v117 = NSStringFromRect(v236);
                [VCPPreAnalyzer _collectSceneAnalysisResults:v117 fromRequests:buf wpResults:? safetyNResults:? safetyGVResults:? abnormalDimension:?];
              }

              v59 = -18;
              v164 = obj;
              goto LABEL_72;
            }

            [v94 boundingBox];
            v99 = NSStringFromRect(v235);
            v100 = MEMORY[0x1E696AD98];
            [v94 confidence];
            v101 = [v100 numberWithFloat:?];
            v200 = @"attributes";
            v198[0] = @"saliencyBounds";
            v198[1] = @"saliencyConfidence";
            v199[0] = v99;
            v199[1] = v101;
            v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:v198 count:2];
            v201 = v102;
            v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];

            [v168 addObject:v103];
          }

          v91 = [obj countByEnumeratingWithState:&v184 objects:v202 count:16];
          if (v91)
          {
            continue;
          }

          break;
        }
      }
    }

    v104 = [v179 sceneprintRequest];
    v105 = [v104 results];
    v106 = [v105 count] == 1;

    if (v106)
    {
      v107 = [v179 sceneprintRequest];
      v108 = [v107 results];
      v109 = [v108 firstObject];
      v110 = [v109 sceneprints];
      v164 = [v110 firstObject];

      if ([v164 elementType] != 1 || objc_msgSend(v164, "elementCount") != 768 || (objc_msgSend(v164, "descriptorData"), v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "length") == 3072, v111, !v112))
      {
        v59 = -18;
LABEL_73:

        goto LABEL_74;
      }

      obj = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v164 requiringSecureCoding:1 error:0];
      if ([objc_opt_class() _includeWP])
      {
        v113 = [v174 objectForKeyedSubscript:@"WPResults"];
        v114 = [v113 count] == 1;

        if (!v114 || ([v174 objectForKeyedSubscript:@"WPResults"], v115 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v115, "objectAtIndexedSubscript:", 0), v116 = objc_claimAutoreleasedReturnValue(), v115, !v116))
        {
          v59 = -18;

LABEL_72:
          goto LABEL_73;
        }

        v160 = [v116 objectForKeyedSubscript:@"wallpaperScore"];

        if (!v160)
        {
          v160 = 0;
LABEL_105:
          v59 = -18;
LABEL_110:

          goto LABEL_72;
        }
      }

      else
      {
        v160 = &unk_1F49BB6E8;
      }

      if ([objc_opt_class() _includePA])
      {
        v118 = [v179 adjustmentsRequest];
        v119 = [v118 results];
        v120 = [v119 count] == 0;

        if (v120)
        {
          goto LABEL_105;
        }

        v121 = [MEMORY[0x1E695DF90] dictionary];
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v122 = [v179 adjustmentsRequest];
        v123 = [v122 results];
        v124 = [v123 objectAtIndexedSubscript:0];
        v125 = [v124 adjustmentKeys];

        v126 = [v125 countByEnumeratingWithState:&v180 objects:v197 count:16];
        if (v126)
        {
          v127 = *v181;
          do
          {
            for (j = 0; j != v126; ++j)
            {
              if (*v181 != v127)
              {
                objc_enumerationMutation(v125);
              }

              v129 = *(*(&v180 + 1) + 8 * j);
              v130 = [v179 adjustmentsRequest];
              v131 = [v130 results];
              v132 = [v131 objectAtIndexedSubscript:0];
              v133 = [v132 adjustmentValuesForKey:v129];
              [v121 setObject:v133 forKeyedSubscript:v129];
            }

            v126 = [v125 countByEnumeratingWithState:&v180 objects:v197 count:16];
          }

          while (v126);
        }

        v134 = MEMORY[0x1CCA954E0](v121, 0);
      }

      else
      {
        v134 = 0;
      }

      v135 = [MEMORY[0x1E695DEF0] data];
      v136 = [MEMORY[0x1E695DEF0] data];
      v137 = [v179 imagefingerprintsRequest];
      v139 = (v171 & 1) == 0 && v137 != 0;

      if (v139)
      {
        v140 = [v179 imagefingerprintsRequest];
        v141 = [v140 results];

        if (![v141 count])
        {
          v59 = -18;
          goto LABEL_109;
        }

        v142 = [v141 firstObject];
        v143 = [v142 fingerprintHashes];

        if (v143 && [v143 count] == 2)
        {
          v144 = [v143 objectAtIndexedSubscript:0];
          v145 = [v144 hashData];

          if ([v145 length] == 24)
          {
            v146 = [v143 objectAtIndexedSubscript:1];
            v147 = [v146 hashData];

            if ([v147 length] == 24)
            {
              v136 = [MEMORY[0x1E695DF88] dataWithBytes:&-[VCPPreAnalyzer _collectSceneAnalysisResults:fromRequests:wpResults:safetyNResults:safetyGVResults:abnormalDimension:]::kPrefixByte length:1];
              [v136 appendData:v147];

              v135 = v145;
              goto LABEL_101;
            }

            v59 = -18;
            v135 = v145;
            v136 = v147;
          }

          else
          {
            v59 = -18;
            v135 = v145;
          }
        }

        else
        {
          v59 = -18;
        }

LABEL_107:

LABEL_109:
        goto LABEL_110;
      }

LABEL_101:
      v195 = @"ClassificationResults";
      v192 = @"attributes";
      v190[0] = @"aesthetic";
      v190[1] = @"sceneClassification";
      v191[0] = v151;
      v191[1] = v178;
      v190[2] = @"saliency";
      v188[0] = @"preferredCrop";
      v188[1] = @"acceptableCrop";
      v189[0] = v170;
      v189[1] = v166;
      v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:v188 count:2];
      v191[2] = v141;
      v191[3] = obj;
      v190[3] = @"sceneprint";
      v190[4] = @"saliencyObjectness";
      v191[4] = v168;
      v191[5] = v160;
      v190[5] = @"wallpaperScore";
      v190[6] = @"colorNormalizationData";
      v143 = v134;
      if (!v134)
      {
        v143 = objc_alloc_init(MEMORY[0x1E695DEF0]);
      }

      v191[6] = v143;
      v191[7] = v135;
      v190[7] = @"duplicateMatchingFeature";
      v190[8] = @"duplicateMatchingAlternateFeature";
      v191[8] = v136;
      v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:v190 count:9];
      v193 = v148;
      v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
      v194 = v149;
      v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v194 count:1];
      v196 = v150;
      *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];

      v59 = 0;
      if (v134)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }

LABEL_67:
    v59 = -18;
LABEL_74:

LABEL_38:
    goto LABEL_23;
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v61 = [v179 saliencyRequest];
    v62 = [v61 results];
    v63 = [v62 firstObject];
    [v63 boundingBox];
    v64 = NSStringFromRect(v214);
    *buf = 138412290;
    v204 = v64;
    _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unnormalized saliencyRequest bounding box %@; skip", buf, 0xCu);
  }

LABEL_22:
  v59 = -18;
LABEL_23:

LABEL_25:
  return v59;
}

- (int)_performSceneAnalysis:(id *)a3 image:(id)a4 mediaType:(int64_t)a5 mediaSubtypes:(unint64_t)a6 abnormalDimension:(unint64_t)a7
{
  v151 = *MEMORY[0x1E69E9840];
  v124 = a4;
  v9 = objc_alloc_init(VCPPreAnalysisRequests);
  v10 = [(VCPPreAnalyzer *)self _createRequests:v9 withMediaType:a5];
  if (!v10)
  {
    v116 = v9;
    v120 = [(VCPObjectPool *)self->_sessionPool getObject];
    v112 = self;
    if (a7)
    {
      v11 = objc_alloc(MEMORY[0x1E69845B8]);
      v12 = [v124 sourcePixelBuffer];
      v13 = [v120 object];
      v14 = [v11 initWithCVPixelBuffer:v12 options:MEMORY[0x1E695E0F8] session:v13];

      v15 = VCPSignPostLog();
      v16 = os_signpost_id_generate(v15);

      v17 = VCPSignPostLog();
      v18 = v17;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPSceneAnalyzerImageRequestHandlerPerformRequest", "", buf, 2u);
      }

      v19 = [(VCPPreAnalysisRequests *)v9 gatherAvailableRequests];
      v146 = 0;
      v20 = [v14 performRequests:v19 error:&v146];
      v21 = v146;

      v22 = VCPSignPostLog();
      v23 = v22;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v16, "VCPSceneAnalyzerImageRequestHandlerPerformRequest", "", buf, 2u);
      }

      if ((v20 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v149 = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run VNImageRequestHandler::performRequests: %@", buf, 0xCu);
        }

        v39 = 0;
        goto LABEL_124;
      }

      if ([objc_opt_class() _includeIVS])
      {
        v24 = objc_autoreleasePoolPush();
        v25 = [(MADSceneResources *)v112->_resources safetyTypeNPool];
        v121 = [v25 getObject];

        v26 = [v121 object];
        LODWORD(v25) = v26 == 0;

        if (v25)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v66 = objc_opt_class();
            *buf = 138412290;
            *v149 = v66;
            v67 = v66;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ unavailable for IVS", buf, 0xCu);
          }

          v39 = 0;
          v36 = 0;
          v10 = -18;
        }

        else
        {
          v27 = VCPSignPostLog();
          v28 = os_signpost_id_generate(v27);

          v29 = VCPSignPostLog();
          v30 = v29;
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
          }

          v31 = [v121 object];
          v145 = v21;
          v32 = [v31 analyzePixelBuffer:objc_msgSend(v124 error:{"sourcePixelBuffer"), &v145}];
          v33 = v145;

          v34 = VCPSignPostLog();
          v35 = v34;
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v28, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
          }

          v36 = v33 == 0;
          if (v33)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v37 = objc_opt_class();
              v38 = [v33 description];
              *buf = 138412546;
              *v149 = v37;
              *&v149[8] = 2112;
              v150 = v38;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::analyzePixelBuffer:error: %@", buf, 0x16u);
            }

            v39 = 0;
            v10 = -18;
          }

          else
          {
            v39 = v32;
            v10 = 0;
          }

          v21 = v33;
        }

        objc_autoreleasePoolPop(v24);
        if (!v36)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v39 = 0;
        v10 = 0;
      }

LABEL_100:
      v84 = v116;
      if ([objc_opt_class() _includeWP])
      {
        v85 = [(VCPPreAnalysisRequests *)v116 sceneprintRequest];
        v86 = [v85 results];

        v87 = [v86 firstObject];
        v88 = [v87 sceneprints];
        v89 = [v88 firstObject];

        v126 = 0;
        [(VCPPreAnalyzer *)v112 _performWallpaperAnalysis:&v126 withSceneprint:v89];
        v14 = v126;

        v84 = v116;
      }

      else
      {
        v14 = 0;
      }

      if (!_os_feature_enabled_impl())
      {
        v21 = 0;
LABEL_118:
        v10 = [(VCPPreAnalyzer *)v112 _collectSceneAnalysisResults:a3 fromRequests:v84 wpResults:v14 safetyNResults:v39 safetyGVResults:v21 abnormalDimension:a7];
LABEL_125:

        goto LABEL_126;
      }

      v90 = [(VCPPreAnalysisRequests *)v84 sceneprintRequest];
      v119 = [v90 results];

      v91 = [v119 firstObject];
      v92 = [v91 sceneprints];
      v123 = [v92 firstObject];

      if (v123)
      {
        v93 = [(MADSceneResources *)v112->_resources safetyTypeGVPool];
        obja = [v93 getObject];

        v94 = [obja object];
        LODWORD(v93) = v94 == 0;

        if (!v93)
        {
          v95 = VCPSignPostLog();
          v96 = os_signpost_id_generate(v95);

          v97 = VCPSignPostLog();
          v98 = v97;
          if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v98, OS_SIGNPOST_INTERVAL_BEGIN, v96, "SCMLHandler_analyzePixelBufferGV", "", buf, 2u);
          }

          v99 = [obja object];
          v100 = [v123 descriptorData];
          v125 = 0;
          v101 = [v99 analyzePixelBuffer:0 scenePrint:v100 error:&v125];
          v102 = v125;

          v103 = VCPSignPostLog();
          v104 = v103;
          if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_END, v96, "SCMLHandler_analyzePixelBufferGV", "", buf, 2u);
          }

          if (v102)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v105 = [v102 description];
              *buf = 138412290;
              *v149 = v105;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Safety (type GV) failed (%@)", buf, 0xCu);
            }

            v21 = 0;
            v10 = -18;
          }

          else
          {
            v21 = v101;
          }

          v84 = v116;
          if (v102)
          {
            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v106 = objc_opt_class();
          *buf = 138412290;
          *v149 = v106;
          v107 = v106;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ unavailable for safety (type GV)", buf, 0xCu);
        }
      }

      v21 = 0;
LABEL_124:
      v10 = -18;
      goto LABEL_125;
    }

    cf = 0;
    [(VCPPreAnalysisRequests *)v9 mapAvailableRequestsToResolution];
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v122 = v141 = 0u;
    obj = [v122 allKeys];
    v40 = 0;
    v41 = [obj countByEnumeratingWithState:&v140 objects:v147 count:16];
    if (v41)
    {
      v118 = *v141;
      v110 = v130;
      v111 = v135;
      *&v42 = 67109376;
      v109 = v42;
      while (2)
      {
        v43 = 0;
        v44 = v40;
        do
        {
          if (*v141 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v140 + 1) + 8 * v43);
          if ([VCPPreAnalysisRequests isDimensionUnknown:v45, v109, v110, v111])
          {
            Width = CVPixelBufferGetWidth([v124 sourcePixelBuffer]);
            Height = CVPixelBufferGetHeight([v124 sourcePixelBuffer]);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v135[0] = __88__VCPPreAnalyzer__performSceneAnalysis_image_mediaType_mediaSubtypes_abnormalDimension___block_invoke;
            v135[1] = &unk_1E8350720;
            v136 = v122;
            v137 = v45;
            v138 = Width;
            v139 = Height;
            if ([VCPPreAnalyzer _performSceneAnalysis:image:mediaType:mediaSubtypes:abnormalDimension:]::once != -1)
            {
              dispatch_once(&[VCPPreAnalyzer _performSceneAnalysis:image:mediaType:mediaSubtypes:abnormalDimension:]::once, block);
            }
          }

          else
          {
            [v45 sizeValue];
            Width = v48;
            Height = v49;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v10 = [v124 pixelBuffer:&cf width:Width height:Height];
          if (v10)
          {
            v40 = v44;
LABEL_67:

            v39 = 0;
            v65 = 0;
            v62 = v122;
            goto LABEL_99;
          }

          v50 = objc_alloc(MEMORY[0x1E69845B8]);
          v51 = cf;
          v52 = [v120 object];
          v53 = [v50 initWithCVPixelBuffer:v51 options:MEMORY[0x1E695E0F8] session:v52];

          v54 = [v122 objectForKeyedSubscript:v45];
          if ([v54 count] == 1)
          {
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v130[0] = __88__VCPPreAnalyzer__performSceneAnalysis_image_mediaType_mediaSubtypes_abnormalDimension___block_invoke_404;
            v130[1] = &unk_1E8350748;
            v131 = v54;
            v132 = Width;
            v133 = Height;
            if ([VCPPreAnalyzer _performSceneAnalysis:image:mediaType:mediaSubtypes:abnormalDimension:]::once != -1)
            {
              dispatch_once(&[VCPPreAnalyzer _performSceneAnalysis:image:mediaType:mediaSubtypes:abnormalDimension:]::once, v129);
            }
          }

          v55 = VCPSignPostLog();
          v56 = os_signpost_id_generate(v55);

          v57 = VCPSignPostLog();
          v58 = v57;
          if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
          {
            *buf = v109;
            *v149 = Width;
            *&v149[4] = 1024;
            *&v149[6] = Height;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v56, "VCPSceneAnalyzerImageRequestHandlerPerformRequest", "%dx%d", buf, 0xEu);
          }

          v128 = v44;
          v59 = [v53 performRequests:v54 error:&v128];
          v40 = v128;

          v60 = VCPSignPostLog();
          v61 = v60;
          if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
          {
            *buf = v109;
            *v149 = Width;
            *&v149[4] = 1024;
            *&v149[6] = Height;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_END, v56, "VCPSceneAnalyzerImageRequestHandlerPerformRequest", "%dx%d", buf, 0xEu);
          }

          if ((v59 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v149 = v40;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run VNImageRequestHandler::performRequests: %@", buf, 0xCu);
            }

            v10 = -18;
            goto LABEL_67;
          }

          ++v43;
          v44 = v40;
        }

        while (v41 != v43);
        v41 = [obj countByEnumeratingWithState:&v140 objects:v147 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v62 = v122;
    if ([objc_opt_class() _includeIVS])
    {
      v63 = objc_autoreleasePoolPush();
      v62 = v122;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = [v124 pixelBuffer:&cf width:299 height:299];
      if (v10)
      {
        v39 = 0;
        v64 = 0;
      }

      else
      {
        v68 = [(MADSceneResources *)v112->_resources safetyTypeNPool];
        v69 = [v68 getObject];

        v70 = [v69 object];
        LODWORD(v68) = v70 == 0;

        if (v68)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v82 = objc_opt_class();
            *buf = 138412290;
            *v149 = v82;
            v83 = v82;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ unavailable for IVS", buf, 0xCu);
          }

          v39 = 0;
          v64 = 0;
          v10 = -18;
        }

        else
        {
          v71 = VCPSignPostLog();
          v72 = os_signpost_id_generate(v71);

          v73 = VCPSignPostLog();
          v74 = v73;
          if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v74, OS_SIGNPOST_INTERVAL_BEGIN, v72, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
          }

          v75 = [v69 object];
          v127 = v40;
          v76 = [v75 analyzePixelBuffer:cf error:&v127];
          v77 = v127;

          v78 = VCPSignPostLog();
          v79 = v78;
          if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v79, OS_SIGNPOST_INTERVAL_END, v72, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
          }

          v64 = v77 == 0;
          if (v77)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v80 = objc_opt_class();
              v81 = [v77 description];
              *buf = 138412546;
              *v149 = v80;
              *&v149[8] = 2112;
              v150 = v81;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::analyzePixelBuffer:error: %@", buf, 0x16u);
            }

            v39 = 0;
            v10 = -18;
          }

          else
          {
            v39 = v76;
            v10 = 0;
          }

          v40 = v77;
        }

        v62 = v122;
      }

      objc_autoreleasePoolPop(v63);
      if (!v64)
      {
        v65 = 0;
LABEL_99:

        CF<__CVBuffer *>::~CF(&cf);
        if ((v65 & 1) == 0)
        {
LABEL_126:

          v9 = v116;
          goto LABEL_127;
        }

        goto LABEL_100;
      }
    }

    else
    {
      v39 = 0;
      v10 = 0;
    }

    v65 = 1;
    goto LABEL_99;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating VNRequest", buf, 2u);
  }

LABEL_127:

  return v10;
}

void __88__VCPPreAnalyzer__performSceneAnalysis_image_mediaType_mediaSubtypes_abnormalDimension___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    v5 = 138412802;
    v6 = v2;
    v7 = 1024;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unknown ideal dimension for VNRequests (%@), using image dimension %dx%d", &v5, 0x18u);
  }
}

void __88__VCPPreAnalyzer__performSceneAnalysis_image_mediaType_mediaSubtypes_abnormalDimension___block_invoke_404(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v6 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Only one VNRequest (%@) for dimension %dx%d; consider coalescing to common resolution", &v7, 0x18u);
  }
}

- (int)_performBlurAnalysis:(id *)a3 withPixelBuffer:(__CVBuffer *)a4 usingAnalyzer:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a5;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v11 = Height;
  if (Width <= Height)
  {
    v12 = Height / Width;
  }

  else
  {
    v12 = Width / Height;
  }

  cf = 0;
  v13 = [(MADSceneResources *)self->_resources monochromeBufferCreator];
  v14 = [v13 createPixelBuffer:&cf];

  if (!v14)
  {
    v38 = 0;
    v39 = a4;
    v40 = 1;
    if (a4)
    {
      v14 = CVPixelBufferLockBaseAddress(a4, 1uLL);
      v38 = v14;
      if (!v14 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = v39, WORD2(buf.height) = 1024, *(&buf.height + 6) = v14, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v14 = v38) == 0))
      {
        v35 = 0;
        pixelBuffer = cf;
        unlockFlags = 0;
        if (cf)
        {
          v14 = CVPixelBufferLockBaseAddress(cf, 0);
          v35 = v14;
          if (!v14 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v14, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v14 = v35) == 0))
          {
            BaseAddress = CVPixelBufferGetBaseAddress(a4);
            BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
            if (v12)
            {
              v33 = 0;
              v17 = BytesPerRow;
              if (Width > v11)
              {
                v17 = 1;
              }

              v31 = 299 * v17;
              v18 = 0.0;
              while (1)
              {
                buf.data = BaseAddress;
                buf.height = 299;
                buf.width = 299;
                buf.rowBytes = BytesPerRow;
                dest.data = CVPixelBufferGetBaseAddress(cf);
                dest.height = CVPixelBufferGetHeight(cf);
                dest.width = CVPixelBufferGetWidth(cf);
                dest.rowBytes = CVPixelBufferGetBytesPerRow(cf);
                v14 = vImageScale_Planar8(&buf, &dest, 0, 0);
                if (v14)
                {
                  break;
                }

                v14 = [v8 analyzePixelBuffer:cf flags:0 results:a3 cancel:&__block_literal_global_410];
                if (v14)
                {
                  break;
                }

                v19 = [*a3 objectForKeyedSubscript:@"BlurResults"];
                v20 = [v19 firstObject];
                v21 = [v20 objectForKeyedSubscript:@"attributes"];

                v22 = [v21 objectForKeyedSubscript:@"sharpness"];
                v23 = v22;
                if (v22)
                {
                  [v22 floatValue];
                  v18 = v18 + v24;
                  ++v33;
                }

                BaseAddress += v31;
                if (!--v12)
                {
                  v25 = v33;
                  goto LABEL_41;
                }
              }
            }

            else
            {
              v18 = 0.0;
              v25 = 0.0;
LABEL_41:
              v14 = CVPixelBufferLock::Unlock(&v35);
              if (!v14)
              {
                v14 = CVPixelBufferLock::Unlock(&v38);
                if (!v14)
                {
                  v47 = @"BlurResults";
                  v44 = @"attributes";
                  v42 = @"sharpness";
                  *&v26 = v18 / v25;
                  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
                  v43 = v27;
                  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
                  v45 = v28;
                  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
                  v46 = v29;
                  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
                  v48 = v30;
                  *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

                  v14 = 0;
                }
              }
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }

          v14 = -50;
          v35 = -50;
        }

        if (pixelBuffer && !v35 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }

        if (v39 && !v38 && CVPixelBufferUnlockBaseAddress(v39, v40) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v14 = -50;
    }
  }

  CF<__CVBuffer *>::~CF(&cf);

  return v14;
}

- (int)_performBlurAnalysis:(id *)a3 withLumaPixelBuffer:(__CVBuffer *)a4 abnormalDimension:(unint64_t)a5 isSDOF:(BOOL)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v29 = @"BlurResults";
    v26 = @"attributes";
    v24 = @"sharpness";
    v25 = &unk_1F49BB208;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:{1, a6}];
    v27 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v28 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v30[0] = v19;
    *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  v7 = a6;
  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPSceneAnalyzerImageBlurAnalysis", "", v23, 2u);
  }

  v15 = -[VCPImageBlurAnalyzer initWithFaceResults:sdof:revision:]([VCPImageBlurAnalyzer alloc], "initWithFaceResults:sdof:revision:", 0, v7, [objc_opt_class() _getSHRevision]);
  v16 = v15;
  if (a5)
  {
    v17 = [(VCPPreAnalyzer *)self _performBlurAnalysis:a3 withPixelBuffer:a4 usingAnalyzer:v15];
  }

  else
  {
    v17 = [(VCPImageBlurAnalyzer *)v15 analyzePixelBuffer:a4 flags:0 results:a3 cancel:&__block_literal_global_413];
  }

  v20 = v17;
  if (!v17)
  {
    v21 = VCPSignPostLog();
    v18 = v21;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v12, "VCPSceneAnalyzerImageBlurAnalysis", "", v23, 2u);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v20;
}

- (int)_performExposureAnalysis:(id *)a3 withLumaPixelBuffer:(__CVBuffer *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v19 = @"ExposureResults";
    v16 = @"quality";
    v17 = &unk_1F49BB208;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v18 = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20[0] = v13;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a3 = v11 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPSceneAnalyzerExposureAnalysis", "", v15, 2u);
  }

  v10 = objc_alloc_init(VCPImageExposurePreAnalyzer);
  v11 = [(VCPImageExposurePreAnalyzer *)v10 analyzePixelBuffer:a4 flags:0 results:a3 cancel:&__block_literal_global_417_0];
  if (!v11)
  {
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v7, "VCPSceneAnalyzerExposureAnalysis", "", v15, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (int)_performRotationAnalysis:(id *)a3 withColorPixelBuffer:(__CVBuffer *)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPSceneAnalyzerRotationAnalysisScaling", "", &buf, 2u);
    }

    cf = 0;
    v11 = [(MADSceneResources *)self->_resources rotationBufferCreator];
    v12 = [v11 createPixelBuffer:&cf];

    if (!v12)
    {
      pixelBuffer = a4;
      unlockFlags = 1;
      v12 = CVPixelBufferLockBaseAddress(a4, 1uLL);
      v54 = v12;
      if (!v12 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v12 = v54) == 0))
      {
        buf.data = CVPixelBufferGetBaseAddress(a4);
        buf.height = CVPixelBufferGetHeight(a4);
        buf.width = CVPixelBufferGetWidth(a4);
        buf.rowBytes = CVPixelBufferGetBytesPerRow(a4);
        v51 = 0;
        v52 = cf;
        v53 = 0;
        if (cf)
        {
          v12 = CVPixelBufferLockBaseAddress(cf, 0);
          v51 = v12;
          if (!v12 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(v65.data) = 134218240, *(&v65.data + 4) = v52, WORD2(v65.height) = 1024, *(&v65.height + 6) = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v65, 0x12u), (v12 = v51) == 0))
          {
            v65.data = CVPixelBufferGetBaseAddress(cf);
            v65.height = CVPixelBufferGetHeight(cf);
            v65.width = CVPixelBufferGetWidth(cf);
            v65.rowBytes = CVPixelBufferGetBytesPerRow(cf);
            v12 = vImageScale_ARGB8888(&buf, &v65, 0, 0x20u);
            if (!v12)
            {
              v12 = CVPixelBufferLock::Unlock(&v51);
              if (!v12)
              {
                v12 = CVPixelBufferLock::Unlock(&v54);
                if (!v12)
                {
                  v17 = VCPSignPostLog();
                  v18 = v17;
                  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
                  {
                    *v50 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v8, "VCPSceneAnalyzerRotationAnalysisScaling", "", v50, 2u);
                  }

                  v19 = VCPSignPostLog();
                  spid = os_signpost_id_generate(v19);

                  v20 = VCPSignPostLog();
                  v21 = v20;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
                  {
                    *v50 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPSceneAnalyzerRotationAnalysisInference", "", v50, 2u);
                  }

                  v22 = [(MADSceneResources *)self->_resources rotationModel];
                  v23 = cf;
                  v24 = [v22 inputFeatureName];
                  v25 = [VCPMAMLFeatureProvider featureProviderWithCVPixelBuffer:v23 andFeatureName:v24];

                  v26 = [v22 model];
                  v49 = 0;
                  v47 = [v26 predictionFromFeatures:v25 error:&v49];
                  v45 = v49;

                  v27 = [v22 outputFeatureName];
                  v48 = [v47 featureValueForName:v27];

                  v28 = [v48 multiArrayValue];
                  if ([v28 count] == 4)
                  {
                    v29 = 0;
                    LOWORD(v30) = 0;
                    v31 = 0.0;
                    v44 = v25;
                    do
                    {
                      v32 = [v28 objectAtIndexedSubscript:{v29, v44, v45}];
                      [v32 floatValue];
                      v34 = v33;

                      if (v34 <= v31)
                      {
                        v35 = v30;
                      }

                      else
                      {
                        v31 = v34;
                        v35 = v29;
                      }

                      v30 = v35;
                      ++v29;
                    }

                    while (v29 != 4);
                    v63 = @"RotationAnalysisResults";
                    v60 = @"attributes";
                    v58[0] = @"probableRotation";
                    v36 = [MEMORY[0x1E696AD98] numberWithShort:v30];
                    v59[0] = v36;
                    v58[1] = @"probableRotationConfidence";
                    *&v37 = v31;
                    v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
                    v59[1] = v38;
                    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
                    v61 = v39;
                    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                    v62 = v40;
                    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
                    v64 = v41;
                    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
                    *a3 = v25 = v44;

                    v42 = VCPSignPostLog();
                    v43 = v42;
                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
                    {
                      *v50 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, spid, "VCPSceneAnalyzerRotationAnalysisInference", "", v50, 2u);
                    }

                    v12 = 0;
                  }

                  else
                  {
                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *v50 = 0;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProbableRotation] invalid coreML results", v50, 2u);
                    }

                    v12 = -18;
                  }
                }
              }
            }

            if (v52 && !v51 && CVPixelBufferUnlockBaseAddress(v52, v53) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }

          v12 = -50;
        }

        if (pixelBuffer && !v54 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }
      }
    }

    CF<__CVBuffer *>::~CF(&cf);
  }

  else
  {
    v72 = @"RotationAnalysisResults";
    v69 = @"attributes";
    v67[0] = @"probableRotation";
    v67[1] = @"probableRotationConfidence";
    v68[0] = &unk_1F49BDE88;
    v68[1] = &unk_1F49BB218;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v70 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v71 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    v73[0] = v15;
    *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];

    return 0;
  }

  return v12;
}

- (int)_performEmbeddingAnalysis:(id *)a3 withColorPixelBuffer:(__CVBuffer *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPPreAnalyzer][Embedding]"];
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPSceneAnalyzerEmbeddingAnalysisScaling", "", &buf, 2u);
  }

  cf = 0;
  v12 = [(MADSceneResources *)self->_resources embeddingBufferCreator];
  v13 = [v12 createPixelBuffer:&cf];

  if (!v13)
  {
    v33 = 0;
    pixelBuffer = a4;
    unlockFlags = 1;
    if (a4)
    {
      v13 = CVPixelBufferLockBaseAddress(a4, 1uLL);
      v33 = v13;
      if (!v13 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v13, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v13 = v33) == 0))
      {
        buf.data = CVPixelBufferGetBaseAddress(a4);
        buf.height = CVPixelBufferGetHeight(a4);
        buf.width = CVPixelBufferGetWidth(a4);
        buf.rowBytes = CVPixelBufferGetBytesPerRow(a4);
        v30 = 0;
        v31 = cf;
        v32 = 0;
        if (cf)
        {
          v13 = CVPixelBufferLockBaseAddress(cf, 0);
          v30 = v13;
          if (!v13 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(v39.data) = 134218240, *(&v39.data + 4) = v31, WORD2(v39.height) = 1024, *(&v39.height + 6) = v13, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v39, 0x12u), (v13 = v30) == 0))
          {
            v39.data = CVPixelBufferGetBaseAddress(cf);
            v39.height = CVPixelBufferGetHeight(cf);
            v39.width = CVPixelBufferGetWidth(cf);
            v39.rowBytes = CVPixelBufferGetBytesPerRow(cf);
            v13 = vImageScale_ARGB8888(&buf, &v39, 0, 0x20u);
            if (!v13)
            {
              v13 = CVPixelBufferLock::Unlock(&v30);
              if (!v13)
              {
                v13 = CVPixelBufferLock::Unlock(&v33);
                if (!v13)
                {
                  v15 = VCPSignPostLog();
                  v16 = v15;
                  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
                  {
                    *v37 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v9, "VCPSceneAnalyzerEmbeddingAnalysisScaling", "", v37, 2u);
                  }

                  v17 = VCPSignPostLog();
                  v18 = os_signpost_id_generate(v17);

                  v19 = VCPSignPostLog();
                  v20 = v19;
                  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
                  {
                    *v37 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPSceneAnalyzerEmbeddingAnalysisInference", "", v37, 2u);
                  }

                  v21 = [VCPImageBackboneAnalyzer alloc];
                  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision")}];
                  v23 = [(VCPImageBackboneAnalyzer *)v21 initWithRequestedAnalyses:0x1000000000000 andRevision:v22 useSharedModel:1];

                  v13 = [(VCPImageBackboneAnalyzer *)v23 analyzePixelBuffer:cf flags:0 results:a3 cancel:&__block_literal_global_432];
                  if (!v13)
                  {
                    v24 = VCPSignPostLog();
                    v25 = v24;
                    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
                    {
                      *v37 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v18, "VCPSceneAnalyzerEmbeddingAnalysisInference", "", v37, 2u);
                    }

                    v26 = [*a3 objectForKeyedSubscript:@"ImageEmbeddingResults"];
                    if ([v26 count])
                    {
                      v27 = [v26 firstObject];
                      v28 = [v27 objectForKeyedSubscript:@"attributes"];
                      v29 = [v28 objectForKeyedSubscript:@"embeddings"];

                      if (v29)
                      {
                        v13 = 0;
                      }

                      else
                      {
                        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *v37 = 138412290;
                          v38 = v7;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Empty embedding data", v37, 0xCu);
                        }

                        v13 = -18;
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *v37 = 138412290;
                        v38 = v7;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Empty embedding results", v37, 0xCu);
                      }

                      v13 = -18;
                    }
                  }
                }
              }
            }

            if (v31 && !v30 && CVPixelBufferUnlockBaseAddress(v31, v32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }

          v13 = -50;
        }

        if (pixelBuffer && !v33 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v13 = -50;
    }
  }

  CF<__CVBuffer *>::~CF(&cf);

  return v13;
}

- (int)_performWallpaperAnalysis:(id *)a3 withSceneprint:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!v5)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No sceneprint data for WP analysis; return default value", v15, 2u);
    }

    v19 = @"WPResults";
    v16 = @"wallpaperScore";
    v17 = &unk_1F49BB208;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v18 = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20[0] = v13;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a3 = v11 = 0;
    goto LABEL_13;
  }

  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPWallpaperAnalysis", "", v15, 2u);
  }

  v10 = objc_alloc_init(VCPWallpaperAnalyzer);
  v11 = [(VCPWallpaperAnalyzer *)v10 analyzeWithSceneprint:v5 results:a3 cancel:&__block_literal_global_436];
  if (!v11)
  {
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v7, "VCPWallpaperAnalysis", "", v15, 2u);
    }

LABEL_13:
  }

  return v11;
}

- (int)_performAnalysis:(id *)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 abnormalDimension:(unint64_t)a6 colorPixelBuffer:(__CVBuffer *)a7 andLumaPixelBuffer:(__CVBuffer *)a8 image:(id)a9
{
  v15 = a9;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__51;
  v67 = __Block_byref_object_dispose__51;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__51;
  v61 = __Block_byref_object_dispose__51;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__51;
  v55 = __Block_byref_object_dispose__51;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__51;
  v49 = __Block_byref_object_dispose__51;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__51;
  v43 = __Block_byref_object_dispose__51;
  v44 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VCPPreAnalyzer__performAnalysis_mediaType_mediaSubtypes_abnormalDimension_colorPixelBuffer_andLumaPixelBuffer_image___block_invoke;
  block[3] = &unk_1E8350770;
  v24 = &v77;
  v25 = &v51;
  block[4] = self;
  v35 = a5;
  v36 = a6;
  v16 = v15;
  v23 = v16;
  v26 = &v85;
  v27 = &v63;
  v28 = &v81;
  v29 = &v57;
  v30 = &v73;
  v31 = &v45;
  v37 = a8;
  v38 = a7;
  v32 = &v69;
  v33 = &v39;
  v34 = a4;
  dispatch_apply(5uLL, 0, block);
  if (*(v86 + 6) || *(v82 + 6) || *(v78 + 6) || *(v74 + 6) || *(v70 + 6))
  {
    v17 = 1;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v19 addEntriesFromDictionary:v64[5]];
    [v19 addEntriesFromDictionary:v58[5]];
    [v19 addEntriesFromDictionary:v52[5]];
    if ([objc_opt_class() _includeRotation])
    {
      [v19 addEntriesFromDictionary:v46[5]];
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      [v19 addEntriesFromDictionary:v40[5]];
    }

    v20 = v19;
    *a3 = v19;

    v17 = 0;
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);

  return v17;
}

void __119__VCPPreAnalyzer__performAnalysis_mediaType_mediaSubtypes_abnormalDimension_colorPixelBuffer_andLumaPixelBuffer_image___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v10 = *(a1 + 32);
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      v5 = (v11 + 40);
      v26 = v12;
      v7 = [v10 _performBlurAnalysis:&v26 withLumaPixelBuffer:*(a1 + 152) abnormalDimension:*(a1 + 144) isSDOF:{objc_msgSend(objc_opt_class(), "_isSDOFWithMediaType:andMediaSubtypes:", *(a1 + 128), *(a1 + 136))}];
      v8 = 64;
      v9 = v26;
    }

    else
    {
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      v5 = (v19 + 40);
      v27 = v20;
      v7 = [*(a1 + 32) _performSceneAnalysis:&v27 image:*(a1 + 40) mediaType:*(a1 + 128) mediaSubtypes:*(a1 + 136) abnormalDimension:*(a1 + 144)];
      v8 = 48;
      v9 = v27;
    }

    goto LABEL_14;
  }

  if (a2 == 2)
  {
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 88) + 8);
    v15 = *(v14 + 40);
    v5 = (v14 + 40);
    v25 = v15;
    v7 = [v13 _performExposureAnalysis:&v25 withLumaPixelBuffer:*(a1 + 152)];
    v8 = 80;
    v9 = v25;
    goto LABEL_14;
  }

  if (a2 == 3)
  {
    if (![objc_opt_class() _includeRotation])
    {
      return;
    }

    v16 = *(a1 + 32);
    v17 = *(*(a1 + 104) + 8);
    v18 = *(v17 + 40);
    v5 = (v17 + 40);
    v24 = v18;
    v7 = [v16 _performRotationAnalysis:&v24 withColorPixelBuffer:*(a1 + 160)];
    v8 = 96;
    v9 = v24;
    goto LABEL_14;
  }

  if (a2 == 4 && +[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 120) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    v23 = v6;
    v7 = [v3 _performEmbeddingAnalysis:&v23 withColorPixelBuffer:*(a1 + 160)];
    v8 = 112;
    v9 = v23;
LABEL_14:
    v21 = v9;
    v22 = *v5;
    *v5 = v21;

    *(*(*(a1 + v8) + 8) + 24) = v7;
  }
}

- (void)analyzeWithImageURL:(id)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 abnormalDimension:(unint64_t)a6 completionHandler:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  context = objc_autoreleasePoolPush();
  v13 = VCPSignPostLog();
  v14 = os_signpost_id_generate(v13);

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VCPSceneAnalyzerLoadImageRequestHandler", "", buf, 2u);
  }

  v47 = 0;
  v48 = 0;
  v17 = [(MADSceneResources *)self->_resources imageLoader];
  v18 = [objc_opt_class() _nonPanoPreWarmDimensions];
  v46 = 0;
  v19 = [v17 loadImageURL:v11 abnormalDimension:a6 withNonPanoPreWarmSizes:v18 toColorPixelBuffer:&v47 lumaPixelBuffer:&v48 andImage:&v46];
  v20 = v46;

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v14, "VCPSceneAnalyzerLoadImageRequestHandler", "", buf, 2u);
  }

  if (v19)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load imageURL: %@", buf, 0xCu);
    }

    v12[2](v12, v19, 0);
  }

  else if ([objc_opt_class() _enableSceneAssetConcurrency])
  {
    if (v48)
    {
      v23 = CFRetain(v48);
    }

    else
    {
      v23 = 0;
    }

    if (v47)
    {
      v32 = CFRetain(v47);
    }

    else
    {
      v32 = 0;
    }

    dispatch_group_wait(self->_processingGroup, 0xFFFFFFFFFFFFFFFFLL);
    processingGroup = self->_processingGroup;
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__VCPPreAnalyzer_analyzeWithImageURL_mediaType_mediaSubtypes_abnormalDimension_completionHandler___block_invoke;
    block[3] = &unk_1E8350798;
    block[4] = self;
    v41 = a4;
    v42 = a5;
    v43 = a6;
    v44 = v32;
    v45 = v23;
    v39 = v20;
    v40 = v12;
    dispatch_group_async(processingGroup, processingQueue, block);
  }

  else
  {
    v24 = VCPSignPostLog();
    v25 = os_signpost_id_generate(v24);

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPSceneAnalyzerPerformAnalysis", "", buf, 2u);
    }

    v37 = 0;
    v28 = [(VCPPreAnalyzer *)self _performAnalysis:&v37 mediaType:a4 mediaSubtypes:a5 abnormalDimension:a6 colorPixelBuffer:v47 andLumaPixelBuffer:v48 image:v20];
    v29 = v37;
    v30 = VCPSignPostLog();
    v31 = v30;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, v25, "VCPSceneAnalyzerPerformAnalysis", "", buf, 2u);
    }

    (v12)[2](v12, v28, v29);
  }

  CF<__CVBuffer *>::~CF(&v47);
  CF<__CVBuffer *>::~CF(&v48);
  objc_autoreleasePoolPop(context);
}

void __98__VCPPreAnalyzer_analyzeWithImageURL_mediaType_mediaSubtypes_abnormalDimension_completionHandler___block_invoke(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPSceneAnalyzerPerformAnalysis", "", buf, 2u);
  }

  v12 = 0;
  [*(a1 + 32) _performAnalysis:&v12 mediaType:*(a1 + 56) mediaSubtypes:*(a1 + 64) abnormalDimension:*(a1 + 72) colorPixelBuffer:*(a1 + 80) andLumaPixelBuffer:*(a1 + 88) image:*(a1 + 40)];
  v6 = v12;
  v7 = VCPSignPostLog();
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v3, "VCPSceneAnalyzerPerformAnalysis", "", v11, 2u);
  }

  (*(*(a1 + 48) + 16))();
  v9 = *(a1 + 88);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    CFRelease(v10);
  }
}

+ (void)_getSHRevision
{
  if (__cxa_guard_acquire(&qword_1ED942840))
  {
    _MergedGlobals_3 = 2;

    __cxa_guard_release(&qword_1ED942840);
  }
}

- (void)_collectSceneAnalysisResults:(void *)a1 fromRequests:(uint8_t *)buf wpResults:safetyNResults:safetyGVResults:abnormalDimension:.cold.1(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unnormalized salientObject narrowed bounding box %@; skip", buf, 0xCu);
}

@end