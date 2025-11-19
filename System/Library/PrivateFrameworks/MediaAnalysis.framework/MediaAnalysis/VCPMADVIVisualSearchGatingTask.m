@interface VCPMADVIVisualSearchGatingTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id)createQueryContextWithError:(id *)a3;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)a3;
@end

@implementation VCPMADVIVisualSearchGatingTask

- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VCPMADVIVisualSearchGatingTask;
  v12 = [(VCPMADVIVisualSearchGatingTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
    v14 = dispatch_queue_create("VCPMADVIVisualSearchGatingTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
  }

  return v13;
}

+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
    v11 = [[a1 alloc] initWithRequest:v8 imageAsset:v9 andSignpostPayload:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCPMADVIVisualSearchGatingTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

uint64_t __40__VCPMADVIVisualSearchGatingTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (id)createQueryContextWithError:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(MADVIVisualSearchGatingRequest *)self->_request queryID];

  if (v6)
  {
    v7 = [(MADVIVisualSearchGatingRequest *)self->_request queryID];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  v8 = [(MADVIVisualSearchGatingRequest *)self->_request location];

  v9 = MEMORY[0x1E69E0500];
  if (v8)
  {
    v10 = [(MADVIVisualSearchGatingRequest *)self->_request location];
    [v5 setObject:v10 forKeyedSubscript:*v9];
  }

  v11 = [(MADVIVisualSearchGatingRequest *)self->_request imageType];

  v12 = MEMORY[0x1E69E04F0];
  if (v11)
  {
    v13 = [(MADVIVisualSearchGatingRequest *)self->_request imageType];
    [v5 setObject:v13 forKeyedSubscript:*v12];
  }

  v14 = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];

  if (v14)
  {
    v15 = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];
    [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69E04E8]];
  }

  v16 = [(VCPMADServiceImageAsset *)self->_imageAsset location];

  if (v16)
  {
    v17 = [(VCPMADServiceImageAsset *)self->_imageAsset location];
    [v5 setObject:v17 forKeyedSubscript:*v9];
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot])
  {
    [v5 setObject:&unk_1F49BD9D8 forKeyedSubscript:*v12];
  }

  v18 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];

  if (v18)
  {
    v19 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
    [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69E04D0]];
  }

  preferredMetalDevice = self->_preferredMetalDevice;
  if (preferredMetalDevice)
  {
    [v5 setObject:preferredMetalDevice forKeyedSubscript:*MEMORY[0x1E69E0508]];
  }

  v21 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];

  v22 = MEMORY[0x1E69E04F8];
  if (v21)
  {
    [v5 setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E04F8]];
  }

  v23 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];

  v24 = MEMORY[0x1E69E0518];
  if (v23)
  {
    [v5 setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E0518]];
  }

  v25 = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];

  if (v25)
  {
    v26 = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];
    [v5 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  v27 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
    [v5 setObject:v29 forKeyedSubscript:*v22];
  }

  v30 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
  v31 = v30 == 0;

  if (!v31)
  {
    v32 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
    [v5 setObject:v32 forKeyedSubscript:*v24];
  }

  v37 = 0;
  v33 = [MEMORY[0x1E69E0470] contextWithDictionary:v5 error:&v37];
  v34 = v37;
  v35 = v37;
  if (a3)
  {
    objc_storeStrong(a3, v34);
  }

  return v33;
}

- (void)storeResults:(id)a3
{
  v31 = self;
  v52 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v35 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [v32 visualUnderstanding];
  v4 = [v3 imageRegions];

  obj = v4;
  v36 = [v4 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v36)
  {
    v34 = *v46;
    do
    {
      v38 = 0;
      do
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * v38);
        v40 = [MEMORY[0x1E695DF70] array];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v37 = v5;
        v6 = [v5 domainInfo];
        v7 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v7)
        {
          v8 = *v42;
          v39 = v6;
          do
          {
            v9 = 0;
            do
            {
              if (*v42 != v8)
              {
                objc_enumerationMutation(v39);
              }

              v10 = *(*(&v41 + 1) + 8 * v9);
              v11 = objc_alloc(MEMORY[0x1E69AE478]);
              v12 = [v10 domainKey];
              v13 = [v10 labelName];
              v14 = [v10 glyphName];
              v15 = [v10 hasFocalPoint];
              [v10 focalPoint];
              v17 = v16;
              v19 = v18;
              v20 = [v10 displayLabel];
              v21 = [v10 displayMessage];
              v22 = [v11 initWithDomain:v12 label:v13 glyphName:v14 hasFocalPoint:v15 focalPoint:v20 displayLabel:v21 displayMessage:{v17, v19}];
              [v40 addObject:v22];

              ++v9;
            }

            while (v7 != v9);
            v6 = v39;
            v7 = [v39 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v7);
        }

        v23 = objc_alloc(MEMORY[0x1E69AE490]);
        [v37 regionOfInterest];
        v24 = [v23 initWithNormalizedBoundingBox:v40 andDomains:?];
        [v35 addObject:v24];

        ++v38;
      }

      while (v38 != v36);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v36);
  }

  request = v31->_request;
  v26 = objc_alloc(MEMORY[0x1E69AE488]);
  v27 = [v32 visualUnderstanding];
  v28 = [v27 payload];
  v29 = [v26 initWithResultItems:v35 andPayload:v28];
  v49 = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [(MADVIVisualSearchGatingRequest *)request setResults:v30];
}

- (int)run
{
  v60[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchGatingTask running...", &buf, 2u);
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset fromGenerativePlayground])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS] Skipping Generative Playground asset", &buf, 2u);
    }

    request = self->_request;
    v4 = objc_alloc(MEMORY[0x1E69AE488]);
    v5 = [v4 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
    v60[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    [(MADVIVisualSearchGatingRequest *)request setResults:v6];

LABEL_9:
    v7 = 0;
    goto LABEL_30;
  }

  if (VCPPhotosParseCachingEnabled() && [(VCPMADServiceImageAsset *)self->_imageAsset hasCachedParseData])
  {
    v5 = [(VCPMADServiceImageAsset *)self->_imageAsset cachedParseData];
    if (!v5)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS] Cached parse result empty; returning empty result", &buf, 2u);
      }

      v8 = self->_request;
      v9 = objc_alloc(MEMORY[0x1E69AE488]);
      v5 = [v9 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
      v59 = v5;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [(MADVIVisualSearchGatingRequest *)v8 setResults:v10];

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
  }

  v51 = 0;
  v11 = [(VCPMADVIVisualSearchGatingTask *)self createQueryContextWithError:&v51];
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v55 = 0x2020000000;
    v56 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke;
    aBlock[3] = &unk_1E834BE08;
    aBlock[4] = self;
    aBlock[5] = &buf;
    v36 = _Block_copy(aBlock);
    v12 = objc_alloc(MEMORY[0x1E69E0460]);
    [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
    v37 = [v12 initWithImageLoader:v36 imageSize:?];
    v38 = [(VCPMADServiceImageAsset *)self->_imageAsset vcp_annotationWithTypes:7];
    v13 = VIAllVisualSearchDomains();
    v14 = [(MADVIVisualSearchGatingRequest *)self->_request domains];
    v15 = [v14 count] == 0;

    if (!v15)
    {
      v16 = MEMORY[0x1E695DFD8];
      v17 = [(MADVIVisualSearchGatingRequest *)self->_request domains];
      v18 = [v16 setWithArray:v17];

      v13 = v18;
    }

    v19 = [objc_alloc(MEMORY[0x1E69E04C8]) initWithImage:v37 annotation:v38 normalizedRegionOfInterest:v13 domainsOfInterest:v11 queryContext:{0.0, 0.0, 1.0, 1.0}];
    v20 = +[VCPMADVIVisualSearchResource sharedResource];
    v21 = +[VCPMADResourceManager sharedManager];
    v22 = [v21 activateResource:v20];

    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v23 = dispatch_group_create();
    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_363;
    block[3] = &unk_1E83500C8;
    block[4] = self;
    v44 = &v46;
    v25 = v23;
    v40 = v25;
    v26 = v20;
    v41 = v26;
    v27 = v19;
    v42 = v27;
    v43 = v5;
    p_buf = &buf;
    dispatch_sync(cancelQueue, block);
    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    [v22 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v28 = *(v47 + 6);
      *v52 = 67109120;
      v53 = v28;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchGatingTask complete (%d)", v52, 8u);
    }

    v7 = *(v47 + 6);

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v51 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchGatingTask failed to create visual search query context (%@)", &buf, 0xCu);
    }

    v30 = self->_request;
    v31 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create visual search query context"];
    v58 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v33];
    [(MADVIVisualSearchGatingRequest *)v30 setError:v34];

    v7 = 0;
  }

LABEL_30:
  return v7;
}

id __37__VCPMADVIVisualSearchGatingTask_run__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = 0;
  v4 = 0;
  if ([*(*(a1 + 32) + 16) loadPixelBuffer:&v5 orientation:&v4])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchGatingTask image loading failed", v3, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E69E0450] imageWithPixelBuffer:v5 orientation:v4];
  }

  CF<__CVBuffer *>::~CF(&v5);

  return v1;
}

void __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_363(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 72) + 8) + 24) = -128;
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__41;
    v25 = __Block_byref_object_dispose__41;
    v26 = objc_alloc_init(VCPTimeMeasurement);
    [v22[5] start];
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v28 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VIService_VisualSearchGating", "%@", buf, 0xCu);
    }

    v8 = [*(a1 + 48) service];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_365;
    v15[3] = &unk_1E834BE58;
    v19 = v4;
    v20 = 0;
    v11 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v17 = &v21;
    v18 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v16 = v11;
    v12 = [v8 parseWithVisualQuery:v9 cachedResults:v10 completion:v15];
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = v12;

    _Block_object_dispose(&v21, 8);
  }
}

void __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_365(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = VCPSignPostLog();
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(*(a1 + 32) + 24);
    v20 = 138412290;
    v21 = v13;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v12, "VIService_VisualSearchGating", "%@", &v20, 0xCu);
  }

  if (*(a1 + 80))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  [*(*(*(a1 + 48) + 8) + 40) stop];
  v14 = *(a1 + 32);
  if (v9)
  {
    v15 = atomic_load(v14 + 48);
    if (v15)
    {
      *(*(*(a1 + 64) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v9];
    }
  }

  else
  {
    [v14 storeResults:v7];
    v16 = [*(*(a1 + 32) + 8) results];
    v17 = [v16 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v17 setExecutionNanoseconds:(v18 * 1000000000.0)];

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v19 = [*(*(a1 + 32) + 16) hasValidSceneProcessing];
    }

    else
    {
      v19 = 0;
    }

    if (VCPPhotosParseCachingEnabled() && v19 & 1 | (([*(*(a1 + 32) + 16) hasCachedParseData] & 1) == 0))
    {
      [*(*(a1 + 32) + 16) setCachedParseData:v8 overwriteExisting:v19];
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

@end