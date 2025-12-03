@interface VCPMADRichLabelClassificationTask
+ (id)allSupportedDomainTypes;
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
+ (id)viDomainFromRichLabelDomain:(unint64_t)domain;
+ (unint64_t)richLabelDomainFromVIDomain:(id)domain;
- (VCPMADRichLabelClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)results;
@end

@implementation VCPMADRichLabelClassificationTask

- (VCPMADRichLabelClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADRichLabelClassificationTask;
  v12 = [(VCPMADRichLabelClassificationTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADRichLabelClassificationTask", 0);
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
  block[2] = __43__VCPMADRichLabelClassificationTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

uint64_t __43__VCPMADRichLabelClassificationTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

+ (unint64_t)richLabelDomainFromVIDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:*MEMORY[0x1E69E0530]])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:*MEMORY[0x1E69E0538]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)viDomainFromRichLabelDomain:(unint64_t)domain
{
  if (domain == 1)
  {
    v4 = MEMORY[0x1E69E0530];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (domain == 2)
  {
    v4 = MEMORY[0x1E69E0538];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (id)allSupportedDomainTypes
{
  if (+[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::once != -1)
  {
    +[VCPMADRichLabelClassificationTask allSupportedDomainTypes];
  }

  v3 = +[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::supportedDomainTypes;

  return v3;
}

uint64_t __60__VCPMADRichLabelClassificationTask_allSupportedDomainTypes__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v1 = +[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::supportedDomainTypes;
  +[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::supportedDomainTypes = v0;

  [+[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::supportedDomainTypes addIndex:1];
  v2 = +[VCPMADRichLabelClassificationTask allSupportedDomainTypes]::supportedDomainTypes;

  return [v2 addIndex:2];
}

- (void)storeResults:(id)results
{
  v39 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  visualUnderstanding = [resultsCopy visualUnderstanding];
  imageRegions = [visualUnderstanding imageRegions];

  obj = imageRegions;
  v25 = [imageRegions countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v25)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        domainInfo = [v6 domainInfo];
        v8 = [domainInfo countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v8)
        {
          v9 = *v29;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v29 != v9)
              {
                objc_enumerationMutation(domainInfo);
              }

              v11 = *(*(&v28 + 1) + 8 * j);
              domainKey = [v11 domainKey];
              v13 = [VCPMADRichLabelClassificationTask richLabelDomainFromVIDomain:domainKey];

              if (v13)
              {
                domains = [(MADRichLabelClassificationRequest *)self->_request domains];
                v15 = [domains containsIndex:v13];

                if (v15)
                {
                  v16 = objc_alloc(MEMORY[0x1E69AE3D8]);
                  displayLabel = [v11 displayLabel];
                  v18 = [v16 initWithDomain:v13 displayLabel:displayLabel];
                  [array addObject:v18];
                }
              }
            }

            v8 = [domainInfo countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v8);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v25);
  }

  request = self->_request;
  v20 = [objc_alloc(MEMORY[0x1E69AE3D0]) initWithResultItems:array];
  v36 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [(MADRichLabelClassificationRequest *)request setResults:v21];
}

- (int)run
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADRichLabelClassificationTask running...", buf, 2u);
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset fromGenerativePlayground])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RichLabel] Skipping Generative Playground asset", buf, 2u);
    }

    request = self->_request;
    v4 = objc_alloc(MEMORY[0x1E69AE3D0]);
    v5 = [v4 initWithResultItems:MEMORY[0x1E695E0F0]];
    v56[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    [(MADRichLabelClassificationRequest *)request setResults:v6];

LABEL_9:
    v7 = 0;
    goto LABEL_24;
  }

  if (VCPPhotosParseCachingEnabled() && [(VCPMADServiceImageAsset *)self->_imageAsset hasCachedParseData])
  {
    cachedParseData = [(VCPMADServiceImageAsset *)self->_imageAsset cachedParseData];
    if (!cachedParseData)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RichLabel] Cached parse result empty; returning empty result", buf, 2u);
      }

      v9 = self->_request;
      v10 = objc_alloc(MEMORY[0x1E69AE3D0]);
      v5 = [v10 initWithResultItems:MEMORY[0x1E695E0F0]];
      v55 = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      [(MADRichLabelClassificationRequest *)v9 setResults:v11];

      goto LABEL_9;
    }
  }

  else
  {
    cachedParseData = 0;
  }

  *buf = 0;
  v50 = buf;
  v51 = 0x2020000000;
  v52 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__VCPMADRichLabelClassificationTask_run__block_invoke;
  aBlock[3] = &unk_1E834BE08;
  aBlock[4] = self;
  aBlock[5] = buf;
  v33 = _Block_copy(aBlock);
  v12 = objc_alloc(MEMORY[0x1E69E0460]);
  [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
  v32 = [v12 initWithImageLoader:v33 imageSize:?];
  v13 = [MEMORY[0x1E695DFA8] set];
  domains = [(MADRichLabelClassificationRequest *)self->_request domains];
  v15 = [domains count] == 0;

  if (v15)
  {
    v16 = +[VCPMADRichLabelClassificationTask allSupportedDomainTypes];
    [(MADRichLabelClassificationRequest *)self->_request setDomains:v16];
  }

  domains2 = [(MADRichLabelClassificationRequest *)self->_request domains];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __40__VCPMADRichLabelClassificationTask_run__block_invoke_349;
  v46[3] = &unk_1E834BE30;
  v18 = v13;
  v47 = v18;
  [domains2 enumerateIndexesUsingBlock:v46];

  v19 = [objc_alloc(MEMORY[0x1E69E04C8]) initWithImage:v32 annotation:0 normalizedRegionOfInterest:v18 domainsOfInterest:0 queryContext:{0.0, 0.0, 1.0, 1.0}];
  v20 = +[VCPMADVIVisualSearchResource sharedResource];
  v21 = +[VCPMADResourceManager sharedManager];
  v22 = [v21 activateResource:v20];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v23 = dispatch_group_create();
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCPMADRichLabelClassificationTask_run__block_invoke_2;
  block[3] = &unk_1E834BE80;
  block[4] = self;
  v40 = &v42;
  v25 = v23;
  v35 = v25;
  v26 = v20;
  v36 = v26;
  v27 = v19;
  v37 = v27;
  v28 = cachedParseData;
  v38 = v28;
  v29 = v18;
  v39 = v29;
  v41 = buf;
  dispatch_sync(cancelQueue, block);
  dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  [v22 reset];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v30 = *(v43 + 6);
    *v53 = 67109120;
    v54 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADRichLabelClassificationTask complete (%d)", v53, 8u);
  }

  v7 = *(v43 + 6);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);
  v5 = v28;
LABEL_24:

  return v7;
}

id __40__VCPMADRichLabelClassificationTask_run__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = 0;
  v4 = 0;
  if ([*(*(a1 + 32) + 16) loadPixelBuffer:&v5 orientation:&v4])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MADRichLabelClassificationTask image loading failed", v3, 2u);
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

void __40__VCPMADRichLabelClassificationTask_run__block_invoke_349(uint64_t a1, uint64_t a2)
{
  v3 = [VCPMADRichLabelClassificationTask viDomainFromRichLabelDomain:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __40__VCPMADRichLabelClassificationTask_run__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 80) + 8) + 24) = -128;
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = objc_alloc_init(VCPTimeMeasurement);
    [v23[5] start];
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v29 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VIService_RichLabelClassification", "%@", buf, 0xCu);
    }

    v8 = [*(a1 + 48) service];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__VCPMADRichLabelClassificationTask_run__block_invoke_355;
    v16[3] = &unk_1E834BE58;
    v20 = v4;
    v21 = 0;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v18 = &v22;
    v19 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
    v17 = v12;
    v13 = [v8 parseForENLabelWithVisualQuery:v9 cachedResults:v10 domains:v11 completion:v16];
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;

    _Block_object_dispose(&v22, 8);
  }
}

void __40__VCPMADRichLabelClassificationTask_run__block_invoke_355(uint64_t a1, void *a2, void *a3, void *a4)
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
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v12, "VIService_RichLabelClassification", "%@", &v20, 0xCu);
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