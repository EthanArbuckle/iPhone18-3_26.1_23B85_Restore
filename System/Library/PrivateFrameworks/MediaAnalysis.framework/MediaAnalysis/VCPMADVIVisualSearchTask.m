@interface VCPMADVIVisualSearchTask
+ (id)dependencies;
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADVIVisualSearchTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id)createQueryContextWithError:(id *)a3;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)a3;
@end

@implementation VCPMADVIVisualSearchTask

- (VCPMADVIVisualSearchTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VCPMADVIVisualSearchTask;
  v12 = [(VCPMADVIVisualSearchTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
    v14 = dispatch_queue_create("VCPMADVIVisualSearchTask", 0);
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

+ (id)dependencies
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCPMADVIVisualSearchTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

uint64_t __34__VCPMADVIVisualSearchTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (id)createQueryContextWithError:(id *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(MADVIVisualSearchRequest *)self->_request queryID];

  if (v6)
  {
    v7 = [(MADVIVisualSearchRequest *)self->_request queryID];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  v8 = [(MADVIVisualSearchRequest *)self->_request uiScale];

  if (v8)
  {
    v9 = [(MADVIVisualSearchRequest *)self->_request uiScale];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69E0528]];
  }

  v10 = [(MADVIVisualSearchRequest *)self->_request location];

  v11 = MEMORY[0x1E69E0500];
  if (v10)
  {
    v12 = [(MADVIVisualSearchRequest *)self->_request location];
    [v5 setObject:v12 forKeyedSubscript:*v11];
  }

  v13 = [(MADVIVisualSearchRequest *)self->_request imageType];

  v14 = MEMORY[0x1E69E04F0];
  if (v13)
  {
    v15 = [(MADVIVisualSearchRequest *)self->_request imageType];
    [v5 setObject:v15 forKeyedSubscript:*v14];
  }

  v16 = [(MADVIVisualSearchRequest *)self->_request catalogIDs];

  if (v16)
  {
    v17 = [(MADVIVisualSearchRequest *)self->_request catalogIDs];
    [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69E04D8]];
  }

  v18 = [(MADVIVisualSearchRequest *)self->_request featureIdentifier];

  if (v18)
  {
    v19 = [(MADVIVisualSearchRequest *)self->_request featureIdentifier];
    [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69E04E8]];
  }

  v20 = [(VCPMADServiceImageAsset *)self->_imageAsset location];

  if (v20)
  {
    v21 = [(VCPMADServiceImageAsset *)self->_imageAsset location];
    [v5 setObject:v21 forKeyedSubscript:*v11];
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot])
  {
    [v5 setObject:&unk_1F49BDBE8 forKeyedSubscript:*v14];
  }

  v22 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];

  if (v22)
  {
    v23 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
    [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69E04D0]];
  }

  v24 = [(VCPMADServiceImageAsset *)self->_imageAsset clientTeamID];

  if (v24)
  {
    v25 = [(VCPMADServiceImageAsset *)self->_imageAsset clientTeamID];
    [v5 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69E0520]];
  }

  preferredMetalDevice = self->_preferredMetalDevice;
  if (preferredMetalDevice)
  {
    [v5 setObject:preferredMetalDevice forKeyedSubscript:*MEMORY[0x1E69E0508]];
  }

  v27 = [(MADVIVisualSearchRequest *)self->_request imageURL];

  v28 = MEMORY[0x1E69E04F8];
  if (v27)
  {
    [v5 setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E04F8]];
  }

  v29 = [(MADVIVisualSearchRequest *)self->_request referralURL];

  v30 = MEMORY[0x1E69E0518];
  if (v29)
  {
    [v5 setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E0518]];
  }

  v31 = [(MADVIVisualSearchRequest *)self->_request engagementSuggestionType];

  if (v31)
  {
    v32 = [(MADVIVisualSearchRequest *)self->_request engagementSuggestionType];
    [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  v33 = [(MADVIVisualSearchRequest *)self->_request imageURL];
  v34 = v33 == 0;

  if (!v34)
  {
    v35 = [(MADVIVisualSearchRequest *)self->_request imageURL];
    [v5 setObject:v35 forKeyedSubscript:*v28];
  }

  v36 = [(MADVIVisualSearchRequest *)self->_request referralURL];
  v37 = v36 == 0;

  if (!v37)
  {
    v38 = [(MADVIVisualSearchRequest *)self->_request referralURL];
    [v5 setObject:v38 forKeyedSubscript:*v30];
  }

  v43 = 0;
  v39 = [MEMORY[0x1E69E0470] contextWithDictionary:v5 error:&v43];
  v40 = v43;
  v41 = v43;
  if (a3)
  {
    objc_storeStrong(a3, v40);
  }

  return v39;
}

- (void)storeResults:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v61 = a3;
  v65 = [MEMORY[0x1E695DF70] array];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = [v61 regionOfInterestResults];
  v60 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v60)
  {
    v62 = *v88;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v88 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v87 + 1) + 8 * i);
        v72 = [MEMORY[0x1E695DF70] array];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v63 = v3;
        v67 = [v3 resultItems];
        v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
        if (v69)
        {
          v68 = *v84;
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v84 != v68)
              {
                objc_enumerationMutation(v67);
              }

              v4 = *(*(&v83 + 1) + 8 * j);
              v5 = [MEMORY[0x1E695DF90] dictionary];
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v6 = [v4 objectKnowledge];
              v7 = [v6 knowledgeProperties];

              v8 = [v7 countByEnumeratingWithState:&v79 objects:v92 count:16];
              if (v8)
              {
                v9 = *v80;
                do
                {
                  for (k = 0; k != v8; ++k)
                  {
                    if (*v80 != v9)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v11 = *(*(&v79 + 1) + 8 * k);
                    v12 = [v11 value];
                    v13 = [v11 name];
                    [v5 setObject:v12 forKeyedSubscript:v13];
                  }

                  v8 = [v7 countByEnumeratingWithState:&v79 objects:v92 count:16];
                }

                while (v8);
              }

              v14 = [v4 objectKnowledge];
              v15 = [v14 knowledgeGraphID];
              if (v15)
              {
                [v4 objectKnowledge];
              }

              else
              {
                [v4 ontologyNode];
              }
              v16 = ;
              v77 = [v16 knowledgeGraphID];

              v17 = [v4 thirdPartyObject];
              v18 = v17 == 0;

              if (v18)
              {
                v29 = 0;
              }

              else
              {
                v19 = objc_alloc(MEMORY[0x1E69AE4B8]);
                v75 = [v4 thirdPartyObject];
                v20 = [v75 objectIdentifier];
                v21 = [v4 thirdPartyObject];
                v22 = [v21 imageURL];
                v23 = [v4 thirdPartyObject];
                v24 = [v23 thumbnailURL];
                v25 = [v4 thirdPartyObject];
                v26 = [v25 metadata];
                v27 = v19;
                v28 = v20;
                v29 = [v27 initWithObjectIdentifier:v20 imageURL:v22 thumbnailURL:v24 metadata:v26];
              }

              v30 = objc_alloc(MEMORY[0x1E69AE498]);
              v73 = [v4 domain];
              v70 = [v4 objectKnowledge];
              v76 = [v70 title];
              v71 = [v4 objectKnowledge];
              v74 = [v71 thumbnailURL];
              v31 = [v4 objectKnowledge];
              [v31 thumbnailAspectRatio];
              v33 = v32;
              v34 = [v4 objectKnowledge];
              v35 = [v34 shortDescription];
              v36 = [v4 objectKnowledge];
              v37 = [v36 detailedDescription];
              v38 = [v4 objectKnowledge];
              v39 = [v38 webURL];
              LODWORD(v40) = v33;
              v41 = [v30 initWithDomain:v73 knowledgeGraphID:v77 title:v76 thumbnailURL:v74 thumbnailAspectRatio:v35 shortDescription:v37 detailedDescription:v40 webURL:v39 knowledgeProperties:v5];
              [v72 addObject:v41];

              v42 = [v72 lastObject];
              [v42 setThirdPartyObject:v29];
            }

            v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
          }

          while (v69);
        }

        v43 = objc_alloc(MEMORY[0x1E69AE4B0]);
        [v63 normalizedBoundingBox];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v52 = [v63 searchSections];
        v53 = [v43 initWithNormalizedBoundingBox:v72 regionAttributes:v52 andSearchSections:{v45, v47, v49, v51}];
        [v65 addObject:v53];
      }

      v60 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
    }

    while (v60);
  }

  request = self->_request;
  v55 = objc_alloc(MEMORY[0x1E69AE4A8]);
  v56 = [v61 userFeedbackPayload];
  v57 = [v55 initWithResultItems:v65 andUserFeedbackPayload:v56];
  v91 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  [(MADVIVisualSearchRequest *)request setResults:v58];
}

- (int)run
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchTask running...", buf, 2u);
  }

  v32 = 0;
  v31 = 0;
  if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v32 orientation:&v31])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchTask image loading failed", buf, 2u);
    }

    request = self->_request;
    v4 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
    v36[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v7 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v6];
    [(MADVIVisualSearchRequest *)request setError:v7];

    v8 = 0;
  }

  else
  {
    v9 = +[VCPMADVIVisualSearchResource sharedResource];
    v10 = +[VCPMADResourceManager sharedManager];
    v6 = [v10 activateResource:v9];

    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 0;
    v11 = dispatch_group_create();
    cancelQueue = self->_cancelQueue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3321888768;
    v19 = __31__VCPMADVIVisualSearchTask_run__block_invoke;
    v20 = &unk_1F4968EC0;
    v21 = self;
    v24 = buf;
    v13 = v11;
    v22 = v13;
    v25 = v32;
    if (v32)
    {
      CFRetain(v32);
    }

    v26 = v31;
    v5 = v9;
    v23 = v5;
    dispatch_sync(cancelQueue, &v17);
    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = [v5 service];
    [v14 clearCacheWithOption:16];

    [v6 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v15 = *(v28 + 6);
      *v33 = 67109120;
      v34 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchTask complete (%d)", v33, 8u);
    }

    v8 = *(v28 + 6);

    CF<__CVBuffer *>::~CF(&v25);
    _Block_object_dispose(buf, 8);
  }

  CF<__CVBuffer *>::~CF(&v32);
  return v8;
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = -128;
  }

  else
  {
    v70 = 0;
    v52 = [*(a1 + 32) createQueryContextWithError:&v70];
    v53 = a1;
    if (v52)
    {
      v3 = [*(*(a1 + 32) + 8) documentObservations];
      v4 = v3 == 0;

      if (!v4)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VisualSearch] Using client provided OCR results", &buf, 2u);
        }

        v5 = [*(*(v53 + 32) + 8) documentObservations];
        [*(*(v53 + 32) + 16) setDocumentObservations:v5];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v76 = 0x3032000000;
      v77 = __Block_byref_object_copy__44;
      v78 = __Block_byref_object_dispose__44;
      v79 = objc_alloc_init(VCPTimeMeasurement);
      [*(*(&buf + 1) + 40) start];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_364;
      aBlock[3] = &unk_1E83501F0;
      v6 = *(v53 + 32);
      p_buf = &buf;
      aBlock[4] = v6;
      v69 = *(v53 + 56);
      v67 = *(v53 + 40);
      v51 = _Block_copy(aBlock);
      dispatch_group_enter(*(v53 + 40));
      v7 = [*(*(v53 + 32) + 8) gatingResultItems];
      v8 = [v7 count] == 0;

      if (v8)
      {
        v55 = [*(*(v53 + 32) + 16) vcp_annotationWithTypes:15];
        v27 = [MEMORY[0x1E69E04C8] queryWithPixelBuffer:*(v53 + 64) orientation:*(v53 + 72) normalizedRegionOfInterest:0.0 annotation:0.0 queryContext:{1.0, 1.0}];
        v43 = VCPSignPostLog();
        v44 = os_signpost_id_generate(v43);

        v45 = VCPSignPostLog();
        v46 = v45;
        if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          v47 = *(*(v53 + 32) + 24);
          *v71 = 138412290;
          v72 = v47;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "VIService_VisualSearch", "%@", v71, 0xCu);
        }

        v33 = [*(v53 + 48) service];
        v34 = v56;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_371;
        v56[3] = &unk_1E8350218;
        v48 = *(v53 + 32);
        v56[6] = v44;
        v56[7] = 0;
        v56[4] = v48;
        v56[5] = v51;
        v36 = [v33 searchWithVisualQuery:v27 completion:v56];
      }

      else
      {
        v55 = [MEMORY[0x1E695DF70] array];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v9 = [*(*(v53 + 32) + 8) gatingResultItems];
        obj = v9;
        v10 = [v9 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v10)
        {
          v11 = *v63;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v63 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v62 + 1) + 8 * i);
              v14 = [MEMORY[0x1E695DF70] array];
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v15 = [v13 domains];
              v16 = [v15 countByEnumeratingWithState:&v58 objects:v73 count:16];
              if (v16)
              {
                v17 = *v59;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v59 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = [*(*(&v58 + 1) + 8 * j) domain];
                    [v14 addObject:v19];
                  }

                  v16 = [v15 countByEnumeratingWithState:&v58 objects:v73 count:16];
                }

                while (v16);
              }

              v20 = objc_alloc(MEMORY[0x1E69E0458]);
              [v13 normalizedBoundingBox];
              v21 = [v20 initWithRegionOfInterest:v14 domains:?];
              [v55 addObject:v21];
            }

            v9 = obj;
            v10 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v10);
        }

        v22 = MEMORY[0x1E69E0468];
        v23 = *(v53 + 64);
        v24 = *(v53 + 72);
        v25 = [*(*(v53 + 32) + 16) vcp_textAnnotation];
        v26 = [*(*(v53 + 32) + 8) gatingPayload];
        v27 = [v22 queryWithPixelBuffer:v23 orientation:v24 imageRegions:v55 textBlockAnnotation:v25 queryContext:v52 payload:v26];

        v28 = VCPSignPostLog();
        v29 = os_signpost_id_generate(v28);

        v30 = VCPSignPostLog();
        v31 = v30;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          v32 = *(*(v53 + 32) + 24);
          *v71 = 138412290;
          v72 = v32;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "VIService_ParsedVisualSearch", "%@", v71, 0xCu);
        }

        v33 = [*(v53 + 48) service];
        v34 = v57;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_368;
        v57[3] = &unk_1E8350218;
        v35 = *(v53 + 32);
        v57[6] = v29;
        v57[7] = 0;
        v57[4] = v35;
        v57[5] = v51;
        v36 = [v33 searchWithParsedVisualQuery:v27 completion:v57];
      }

      v49 = *(v53 + 32);
      v50 = *(v49 + 56);
      *(v49 + 56) = v36;

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = [v70 description];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v37;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADVIVisualSearchTask failed to create visual search query context (%@)", &buf, 0xCu);
      }

      v38 = *(*(a1 + 32) + 8);
      v39 = MEMORY[0x1E696ABC0];
      v80 = *MEMORY[0x1E696A578];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create visual search query context"];
      v81[0] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
      v42 = [v39 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v41];
      [v38 setError:v42];
    }
  }
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_364(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  [*(*(*(a1 + 48) + 8) + 40) stop];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = atomic_load(v6 + 48);
    if (v7)
    {
      *(*(*(a1 + 56) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v5];
    }
  }

  else
  {
    [v6 storeResults:v11];
    v8 = [*(*(a1 + 32) + 8) results];
    v9 = [v8 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v9 setExecutionNanoseconds:(v10 * 1000000000.0)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_368(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1[4] + 24);
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_ParsedVisualSearch", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_371(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1[4] + 24);
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_VisualSearch", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

@end