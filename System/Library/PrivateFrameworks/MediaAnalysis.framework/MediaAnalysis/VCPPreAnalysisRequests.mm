@interface VCPPreAnalysisRequests
+ (id)_cachedRequestIdealDimension;
+ (unint64_t)sharpnessRevision;
+ (void)asyncCacheRequestIdealDimension;
+ (void)asyncLoadSharedPhotoFormatsObjects;
+ (void)sharpnessRevision;
- (id)gatherAvailableRequests;
- (id)mapAvailableRequestsToResolution;
@end

@implementation VCPPreAnalysisRequests

+ (unint64_t)sharpnessRevision
{
  if ((atomic_load_explicit(&qword_1ED942810, memory_order_acquire) & 1) == 0)
  {
    +[VCPPreAnalysisRequests sharpnessRevision];
  }

  return _MergedGlobals_0;
}

- (id)gatherAvailableRequests
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_aestheticsRequest)
  {
    [array addObject:?];
  }

  if (self->_classificationRequest)
  {
    [v4 addObject:?];
  }

  if (self->_sceneprintRequest)
  {
    [v4 addObject:?];
  }

  if (self->_saliencyRequest)
  {
    [v4 addObject:?];
  }

  if (self->_junkImageRequest)
  {
    [v4 addObject:?];
  }

  if (self->_objectRequest)
  {
    [v4 addObject:?];
  }

  if (self->_saliencyObjectnessRequest)
  {
    [v4 addObject:?];
  }

  if (self->_landmarkRequest)
  {
    [v4 addObject:?];
  }

  if (self->_nsfwRequest)
  {
    [v4 addObject:?];
  }

  if (self->_tabooRequest)
  {
    [v4 addObject:?];
  }

  if (self->_semanticRequest)
  {
    [v4 addObject:?];
  }

  if (self->_sceneprintRawRequest)
  {
    [v4 addObject:?];
  }

  if (self->_memeRequest)
  {
    [v4 addObject:?];
  }

  if (self->_adjustmentsRequest)
  {
    [v4 addObject:?];
  }

  if (self->_documentRequest)
  {
    [v4 addObject:?];
  }

  if (self->_cityNatureRequest)
  {
    [v4 addObject:?];
  }

  if (self->_imagefingerprintsRequest)
  {
    [v4 addObject:?];
  }

  if (self->_classifyImageRequest)
  {
    [v4 addObject:?];
  }

  return v4;
}

+ (id)_cachedRequestIdealDimension
{
  if (+[VCPPreAnalysisRequests _cachedRequestIdealDimension]::once != -1)
  {
    +[VCPPreAnalysisRequests _cachedRequestIdealDimension];
  }

  v3 = +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension;

  return v3;
}

void __54__VCPPreAnalysisRequests__cachedRequestIdealDimension__block_invoke()
{
  v64[15] = *MEMORY[0x1E69E9840];
  v63[0] = objc_opt_class();
  v63[1] = &unk_1F49BBCB0;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v64[0] = v27;
  v62[0] = objc_opt_class();
  v62[1] = &unk_1F49BBCC8;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v64[1] = v35;
  v61[0] = objc_opt_class();
  v61[1] = &unk_1F49BBCE0;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v64[2] = v33;
  v60[0] = objc_opt_class();
  v60[1] = &unk_1F49BBCB0;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v64[3] = v31;
  v59[0] = objc_opt_class();
  v59[1] = &unk_1F49BBCF8;
  type = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v64[4] = type;
  v58[0] = objc_opt_class();
  v58[1] = &unk_1F49BBCB0;
  obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v64[5] = obja;
  v57[0] = objc_opt_class();
  v57[1] = &unk_1F49BBD10;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v64[6] = v0;
  v56[0] = objc_opt_class();
  v56[1] = &unk_1F49BBD28;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v64[7] = v1;
  v55[0] = objc_opt_class();
  v55[1] = &unk_1F49BBCB0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v64[8] = v2;
  v54[0] = objc_opt_class();
  v54[1] = &unk_1F49BBD40;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v64[9] = v3;
  v53[0] = objc_opt_class();
  v53[1] = &unk_1F49BBD58;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v64[10] = v4;
  v52[0] = objc_opt_class();
  v52[1] = &unk_1F49BBD70;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v64[11] = v5;
  v51[0] = objc_opt_class();
  v51[1] = &unk_1F49BBD28;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v64[12] = v6;
  v50[0] = objc_opt_class();
  v50[1] = &unk_1F49BBD58;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v64[13] = v7;
  v49[0] = objc_opt_class();
  v49[1] = &unk_1F49BBCB0;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v64[14] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:15];

  v10 = v9;
  v34 = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v36 = 0;
    v32 = *v39;
    v12 = MEMORY[0x1E69E9C10];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v14 objectAtIndexedSubscript:1];
        v17 = [v16 unsignedIntValue];

        v18 = objc_alloc_init(v15);
        v37 = v36;
        v19 = [v18 setRevision:v17 error:&v37];
        v20 = v37;

        v36 = v20;
        if (!v19)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v43 = v15;
            v44 = 2048;
            v45 = v17;
            v46 = 2112;
            v47 = v20;
            v22 = v12;
            v23 = "Failed to set %@::setRevision %lu: %@";
            v24 = 32;
LABEL_14:
            _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
          }

LABEL_15:
          v21 = &unk_1F49BBC98;
          goto LABEL_16;
        }

        v21 = [v18 vcp_idealDimension];
        if (!v21)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = v15;
            v44 = 2048;
            v45 = v17;
            v22 = v12;
            v23 = "Failed to get the ideal size of request %@ with revision %lu";
            v24 = 22;
            goto LABEL_14;
          }

          goto LABEL_15;
        }

LABEL_16:
        [v34 setObject:v21 forKeyedSubscript:v14];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v43 = v15;
          v44 = 2048;
          v45 = v17;
          v46 = 2112;
          v47 = v21;
          _os_log_impl(&dword_1C9B70000, v12, OS_LOG_TYPE_DEBUG, "Request %@ (revision %lu) ideal size %@", buf, 0x20u);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  v36 = 0;
LABEL_23:

  v25 = +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension;
  +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension = v34;
  v26 = v34;
}

- (id)mapAvailableRequestsToResolution
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  gatherAvailableRequests = [(VCPPreAnalysisRequests *)self gatherAvailableRequests];
  _cachedRequestIdealDimension = [objc_opt_class() _cachedRequestIdealDimension];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = gatherAvailableRequests;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v26[0] = objc_opt_class();
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "revision")}];
        v26[1] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

        v11 = [_cachedRequestIdealDimension objectForKeyedSubscript:v10];
        if (!v11)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = [v8 description];
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Ideal size for request %@ not cached", buf, 0xCu);
          }

          v11 = &unk_1F49BBC98;
        }

        v13 = [dictionary objectForKeyedSubscript:v11];
        v14 = v13 == 0;

        if (v14)
        {
          array = [MEMORY[0x1E695DF70] array];
          [dictionary setObject:array forKeyedSubscript:v11];
        }

        v16 = [dictionary objectForKeyedSubscript:v11];
        [v16 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (void)asyncCacheRequestIdealDimension
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCPPreAnalysisRequests_asyncCacheRequestIdealDimension__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__VCPPreAnalysisRequests_asyncCacheRequestIdealDimension__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPPreAnalysisRequests_CacheRequestIdealDimension", "", &v11, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Caching Vision request input resolutions ... ", &v11, 2u);
  }

  v7 = [*(a1 + 32) _cachedRequestIdealDimension];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = [v7 count];
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Cached %lu request", &v11, 0xCu);
  }

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v4, "VCPPreAnalysisRequests_CacheRequestIdealDimension", "", &v11, 2u);
  }

  if (v2)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

+ (void)asyncLoadSharedPhotoFormatsObjects
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_444);
}

void __60__VCPPreAnalysisRequests_asyncLoadSharedPhotoFormatsObjects__block_invoke()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v20 = mach_absolute_time();
  v0 = VCPSignPostLog();
  v1 = os_signpost_id_generate(v0);

  v2 = VCPSignPostLog();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "VCPPreAnalysisRequests_LoadPFSceneObjects", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Initializing PFSceneObjects ... ", buf, 2u);
  }

  v4 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  if (!v4)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "[PreAnalysis] Failed to initialize PFSceneTaxonomy";
    goto LABEL_20;
  }

  v5 = [MEMORY[0x1E69C0848] vcp_sharedSceneGeography];
  if (!v5)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "[PreAnalysis] Failed to initialize PFSceneGeography";
LABEL_20:
    _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_21:
    v14 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  v6 = [MEMORY[0x1E6978A30] vcp_instanceWithExtendedSceneIdentifier:1472 confidence:0.001];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69C1528];
    v25[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v8 assetIconicScoreForSceneClassifications:v9 assetLatitude:v5 assetLongitude:v4 sceneGeography:45.5787 sceneTaxonomy:-122.1177];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Initialized %@ and %@", buf, 0x16u);
    }

    v14 = v7;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PreAnalysis] Failed to create scene classification", buf, 2u);
    }

    v14 = 0;
  }

  v17 = v5;
LABEL_27:
  v18 = VCPSignPostLog();
  v19 = v18;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v1, "VCPPreAnalysisRequests_LoadPFSceneObjects", "", buf, 2u);
  }

  if (v20)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

+ (void)sharpnessRevision
{
  if (__cxa_guard_acquire(&qword_1ED942810))
  {
    _MergedGlobals_0 = 2;

    __cxa_guard_release(&qword_1ED942810);
  }
}

@end