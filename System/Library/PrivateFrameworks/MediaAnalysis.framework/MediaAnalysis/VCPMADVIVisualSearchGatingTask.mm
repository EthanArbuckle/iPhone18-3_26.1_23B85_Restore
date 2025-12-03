@interface VCPMADVIVisualSearchGatingTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id)createQueryContextWithError:(id *)error;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)results;
@end

@implementation VCPMADVIVisualSearchGatingTask

- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIVisualSearchGatingTask;
  v12 = [(VCPMADVIVisualSearchGatingTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIVisualSearchGatingTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
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

- (id)createQueryContextWithError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queryID = [(MADVIVisualSearchGatingRequest *)self->_request queryID];

  if (queryID)
  {
    queryID2 = [(MADVIVisualSearchGatingRequest *)self->_request queryID];
    [dictionary setObject:queryID2 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  location = [(MADVIVisualSearchGatingRequest *)self->_request location];

  v9 = MEMORY[0x1E69E0500];
  if (location)
  {
    location2 = [(MADVIVisualSearchGatingRequest *)self->_request location];
    [dictionary setObject:location2 forKeyedSubscript:*v9];
  }

  imageType = [(MADVIVisualSearchGatingRequest *)self->_request imageType];

  v12 = MEMORY[0x1E69E04F0];
  if (imageType)
  {
    imageType2 = [(MADVIVisualSearchGatingRequest *)self->_request imageType];
    [dictionary setObject:imageType2 forKeyedSubscript:*v12];
  }

  featureIdentifier = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];

  if (featureIdentifier)
  {
    featureIdentifier2 = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];
    [dictionary setObject:featureIdentifier2 forKeyedSubscript:*MEMORY[0x1E69E04E8]];
  }

  location3 = [(VCPMADServiceImageAsset *)self->_imageAsset location];

  if (location3)
  {
    location4 = [(VCPMADServiceImageAsset *)self->_imageAsset location];
    [dictionary setObject:location4 forKeyedSubscript:*v9];
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot])
  {
    [dictionary setObject:&unk_1F49BD9D8 forKeyedSubscript:*v12];
  }

  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];

  if (clientBundleID)
  {
    clientBundleID2 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
    [dictionary setObject:clientBundleID2 forKeyedSubscript:*MEMORY[0x1E69E04D0]];
  }

  preferredMetalDevice = self->_preferredMetalDevice;
  if (preferredMetalDevice)
  {
    [dictionary setObject:preferredMetalDevice forKeyedSubscript:*MEMORY[0x1E69E0508]];
  }

  imageURL = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];

  v22 = MEMORY[0x1E69E04F8];
  if (imageURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E04F8]];
  }

  referralURL = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];

  v24 = MEMORY[0x1E69E0518];
  if (referralURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E0518]];
  }

  engagementSuggestionType = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];

  if (engagementSuggestionType)
  {
    engagementSuggestionType2 = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];
    [dictionary setObject:engagementSuggestionType2 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = dictionary;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  imageURL2 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
  v28 = imageURL2 == 0;

  if (!v28)
  {
    imageURL3 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
    [dictionary setObject:imageURL3 forKeyedSubscript:*v22];
  }

  referralURL2 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
  v31 = referralURL2 == 0;

  if (!v31)
  {
    referralURL3 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
    [dictionary setObject:referralURL3 forKeyedSubscript:*v24];
  }

  v37 = 0;
  v33 = [MEMORY[0x1E69E0470] contextWithDictionary:dictionary error:&v37];
  v34 = v37;
  v35 = v37;
  if (error)
  {
    objc_storeStrong(error, v34);
  }

  return v33;
}

- (void)storeResults:(id)results
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  visualUnderstanding = [resultsCopy visualUnderstanding];
  imageRegions = [visualUnderstanding imageRegions];

  obj = imageRegions;
  v36 = [imageRegions countByEnumeratingWithState:&v45 objects:v51 count:16];
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
        array2 = [MEMORY[0x1E695DF70] array];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v37 = v5;
        domainInfo = [v5 domainInfo];
        v7 = [domainInfo countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v7)
        {
          v8 = *v42;
          v39 = domainInfo;
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
              domainKey = [v10 domainKey];
              labelName = [v10 labelName];
              glyphName = [v10 glyphName];
              hasFocalPoint = [v10 hasFocalPoint];
              [v10 focalPoint];
              v17 = v16;
              v19 = v18;
              displayLabel = [v10 displayLabel];
              displayMessage = [v10 displayMessage];
              v22 = [v11 initWithDomain:domainKey label:labelName glyphName:glyphName hasFocalPoint:hasFocalPoint focalPoint:displayLabel displayLabel:displayMessage displayMessage:{v17, v19}];
              [array2 addObject:v22];

              ++v9;
            }

            while (v7 != v9);
            domainInfo = v39;
            v7 = [v39 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v7);
        }

        v23 = objc_alloc(MEMORY[0x1E69AE490]);
        [v37 regionOfInterest];
        v24 = [v23 initWithNormalizedBoundingBox:array2 andDomains:?];
        [array addObject:v24];

        ++v38;
      }

      while (v38 != v36);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v36);
  }

  request = selfCopy->_request;
  v26 = objc_alloc(MEMORY[0x1E69AE488]);
  visualUnderstanding2 = [resultsCopy visualUnderstanding];
  payload = [visualUnderstanding2 payload];
  v29 = [v26 initWithResultItems:array andPayload:payload];
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
    cachedParseData = [v4 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
    v60[0] = cachedParseData;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    [(MADVIVisualSearchGatingRequest *)request setResults:v6];

LABEL_9:
    v7 = 0;
    goto LABEL_30;
  }

  if (VCPPhotosParseCachingEnabled() && [(VCPMADServiceImageAsset *)self->_imageAsset hasCachedParseData])
  {
    cachedParseData = [(VCPMADServiceImageAsset *)self->_imageAsset cachedParseData];
    if (!cachedParseData)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS] Cached parse result empty; returning empty result", &buf, 2u);
      }

      v8 = self->_request;
      v9 = objc_alloc(MEMORY[0x1E69AE488]);
      cachedParseData = [v9 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
      v59 = cachedParseData;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [(MADVIVisualSearchGatingRequest *)v8 setResults:v10];

      goto LABEL_9;
    }
  }

  else
  {
    cachedParseData = 0;
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
    domains = [(MADVIVisualSearchGatingRequest *)self->_request domains];
    v15 = [domains count] == 0;

    if (!v15)
    {
      v16 = MEMORY[0x1E695DFD8];
      domains2 = [(MADVIVisualSearchGatingRequest *)self->_request domains];
      v18 = [v16 setWithArray:domains2];

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
    v43 = cachedParseData;
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