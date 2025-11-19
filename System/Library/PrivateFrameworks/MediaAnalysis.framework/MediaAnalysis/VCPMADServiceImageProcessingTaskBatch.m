@interface VCPMADServiceImageProcessingTaskBatch
+ (id)taskWithCloudIdentifierRequests:(id)a3 photoLibrary:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6 cancelBlock:(id)a7 andCompletionHandler:(id)a8;
- (BOOL)run:(id *)a3;
- (VCPMADServiceImageProcessingTaskBatch)initWithCloudIdentifierRequests:(id)a3 photoLibrary:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6 cancelBlock:(id)a7 andCompletionHandler:(id)a8;
- (id)assetWithIdentifier:(id)a3 isCloudIdentifier:(BOOL)a4 error:(id *)a5;
@end

@implementation VCPMADServiceImageProcessingTaskBatch

- (VCPMADServiceImageProcessingTaskBatch)initWithCloudIdentifierRequests:(id)a3 photoLibrary:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6 cancelBlock:(id)a7 andCompletionHandler:(id)a8
{
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __147__VCPMADServiceImageProcessingTaskBatch_initWithCloudIdentifierRequests_photoLibrary_clientBundleID_clientTeamID_cancelBlock_andCompletionHandler___block_invoke;
  v27[3] = &unk_1E834C7A0;
  v20 = v19;
  v28 = v20;
  v26.receiver = self;
  v26.super_class = VCPMADServiceImageProcessingTaskBatch;
  v21 = [(VCPMABaseTask *)&v26 initWithCompletionHandler:v27];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_requests, a3);
    objc_storeStrong(&v22->_photolibrary, a4);
    objc_storeStrong(&v22->_clientBundleID, a5);
    objc_storeStrong(&v22->_clientTeamID, a6);
    signpostPayload = v22->_signpostPayload;
    v22->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v22 setCancelBlock:v18, v25];
  }

  return v22;
}

+ (id)taskWithCloudIdentifierRequests:(id)a3 photoLibrary:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6 cancelBlock:(id)a7 andCompletionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [objc_alloc(objc_opt_class()) initWithCloudIdentifierRequests:v13 photoLibrary:v14 clientBundleID:v15 clientTeamID:v16 cancelBlock:v17 andCompletionHandler:v18];

  return v19;
}

- (id)assetWithIdentifier:(id)a3 isCloudIdentifier:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADServiceImageProcessing] Fetching Photos asset with identifier %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E6978838] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:self->_photolibrary];
  [v10 setIncludeHiddenAssets:1];
  [v10 setIncludeTrashedAssets:1];
  [v10 setIncludeGuestAssets:1];
  v11 = *MEMORY[0x1E6978CA0];
  v28[0] = *MEMORY[0x1E6978BF8];
  v28[1] = v11;
  v12 = *MEMORY[0x1E6978C98];
  v28[2] = *MEMORY[0x1E6978CE8];
  v28[3] = v12;
  v28[4] = *MEMORY[0x1E6978D20];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  [v10 addFetchPropertySets:v13];

  v14 = MEMORY[0x1E6978628];
  if (v6)
  {
    v27 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v16 = [v14 fetchAssetsWithCloudIdentifiers:v15 options:v10];
  }

  else
  {
    v26 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [v14 fetchAssetsWithLocalIdentifiers:v15 options:v10];
  }

  v17 = v16;

  if ([v17 count])
  {
    if ([v17 count] >= 2 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMADServiceImageProcessing] Fetch returned multiple assets for identifier (%@)", buf, 0xCu);
    }

    a5 = [v17 objectAtIndexedSubscript:0];
  }

  else if (a5)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADServiceImageProcessing] Specified identifier not found (%@)", v8, *MEMORY[0x1E696A578]];
    v25 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
    v22 = *a5;
    *a5 = v21;

    a5 = 0;
  }

  objc_autoreleasePoolPop(v9);

  return a5;
}

- (BOOL)run:(id *)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = VCPSignPostLog();
  spid = os_signpost_id_generate(v4);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    *v59 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageProcessingTaskBatch_Run", "%@", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(NSDictionary *)self->_requests allKeys];
  v8 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v8)
  {
    v43 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v41 = *v52;
    v37 = *MEMORY[0x1E696A768];
    v38 = *MEMORY[0x1E696A578];
    while (2)
    {
      v10 = 0;
      v42 = v8;
      do
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v50 = 0;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          v43 = (v43 + 1);
          *v59 = v43;
          *&v59[4] = 2112;
          *&v59[6] = v11;
          _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_DEBUG, "[ImageProcessingTask%d] Build task for asset (%@)", buf, 0x12u);
        }

        v13 = [(VCPMADServiceImageProcessingTaskBatch *)self assetWithIdentifier:v11 isCloudIdentifier:1 error:&v50];
        if (v13)
        {
          v14 = [VCPMADServiceImageAsset assetWithPhotosAsset:v13 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
          v15 = [(NSDictionary *)self->_requests objectForKeyedSubscript:v11];
          v16 = [(VCPMABaseTask *)self cancelBlock];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __45__VCPMADServiceImageProcessingTaskBatch_run___block_invoke;
          v44[3] = &unk_1E834E458;
          v45 = v43;
          v44[4] = v11;
          v17 = [VCPMADServiceImageProcessingTask taskWithRequests:v15 forAsset:v14 cancelBlock:v16 andCompletionHandler:v44];

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ImageProcessingTask%d] Identifier %@", v43, v11];
          [v17 setSignpostPayload:v18];

          v19 = [v17 run];
          v20 = v19;
          if (v19)
          {
            if (v19 == -128)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
              }

              if (a3)
              {
                v21 = MEMORY[0x1E696ABC0];
                v55 = v38;
                v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
                v56 = v22;
                v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v24 = [v21 errorWithDomain:v37 code:-128 userInfo:v23];
                v25 = *a3;
                *a3 = v24;
              }

              v20 = 1;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v29 = objc_opt_class();
                v30 = NSStringFromClass(v29);
                *buf = 138412546;
                *v59 = v30;
                *&v59[8] = 1024;
                *&v59[10] = v20;
                _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_DEFAULT, "%@ returned unexpected status (%d)", buf, 0x12u);
              }

              v20 = 0;
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *v59 = v43;
            *&v59[4] = 2112;
            *&v59[6] = v11;
            v60 = 2112;
            v61 = v50;
            _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, "[ImageProcessingTask%d] Failed to fetch asset (%@) - %@", buf, 0x1Cu);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v14 = [(NSDictionary *)self->_requests objectForKeyedSubscript:v11];
          v26 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v26)
          {
            v27 = *v47;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v47 != v27)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v46 + 1) + 8 * i) setError:v50];
              }

              v26 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
            }

            while (v26);
          }

          v20 = 3;
        }

        objc_autoreleasePoolPop(v12);
        if (v20 != 3 && v20)
        {
          v34 = 0;
          goto LABEL_46;
        }

        ++v10;
      }

      while (v10 != v42);
      v8 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v31 = VCPSignPostLog();
  v32 = v31;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v31))
  {
    v33 = self->_signpostPayload;
    *buf = 138412290;
    *v59 = v33;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageProcessingTaskBatch_Run", "%@", buf, 0xCu);
  }

  obj = [(VCPMABaseTask *)self completionHandler];
  (*(obj + 2))(obj, 0, 0);
  v34 = 1;
LABEL_46:

  return v34;
}

void __45__VCPMADServiceImageProcessingTaskBatch_run___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      v12 = 67109634;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "[ImageProcessingTask%d] Failed to process asset (%@) - %@";
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 28;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v6, v8, v7, &v12, v9);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = 67109378;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[ImageProcessingTask%d] Finished processing asset (%@)";
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 18;
    goto LABEL_8;
  }
}

@end