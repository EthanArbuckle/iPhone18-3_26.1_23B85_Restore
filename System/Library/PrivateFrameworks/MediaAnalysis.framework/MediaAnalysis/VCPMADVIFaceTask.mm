@interface VCPMADVIFaceTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIFaceTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIFaceTask

- (VCPMADVIFaceTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIFaceTask;
  v12 = [(VCPMADVIFaceTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIFaceTask", 0);
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
  block[2] = __26__VCPMADVIFaceTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __26__VCPMADVIFaceTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  v2 = objc_loadWeakRetained((*(a1 + 32) + 64));

  if (v2)
  {
    [v2 cancel];
  }

  v5 = objc_loadWeakRetained((*(a1 + 32) + 72));

  if (v5)
  {
    [v5 cancel];
  }

  v3 = objc_loadWeakRetained((*(a1 + 32) + 80));

  if (v3)
  {
    [v3 cancel];
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 88));

  if (v6)
  {
    [v6 cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 48));
}

- (int)run
{
  v182[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_canceled);
  if ((v2 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIFaceTask running...", buf, 2u);
    }

    v161 = 0;
    v160 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v161 orientation:&v160])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIFaceTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v6 = MEMORY[0x1E696ABC0];
      v181 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v182[0] = v7;
      v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v182 forKeys:&v181 count:1];
      v8 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v138];
      [(MADVIFaceRequest *)request setError:v8];
      v3 = 0;
      goto LABEL_43;
    }

    v138 = +[VCPMADVIFaceResource sharedResource];
    v9 = +[VCPMADResourceManager sharedManager];
    v135 = [v9 activateResource:v138];

    v10 = +[VCPDefaultPhotoLibraryManager sharedManager];
    defaultPhotoLibrary = [v10 defaultPhotoLibrary];

    [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:defaultPhotoLibrary];
    v136 = v159 = 0;
    LODWORD(v10) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v159, objc_opt_class(), [v136 processingVersion]);
    v11 = v159;
    v134 = v11;
    if (v10)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceRectanglesRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v13 = self->_request;
      v14 = MEMORY[0x1E696ABC0];
      v179 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
      v180 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
      [(MADVIFaceRequest *)v13 setError:v17];

      v7 = 0;
      v3 = 0;
      goto LABEL_42;
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__VCPMADVIFaceTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v132 = v11;
    v158 = v132;
    dispatch_sync(cancelQueue, block);
    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v164 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPMADVIFaceTask_VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x1E69845B8]);
    v25 = v161;
    v26 = v160;
    session = [v138 session];
    v133 = [v24 initWithCVPixelBuffer:v25 orientation:v26 options:MEMORY[0x1E695E0F8] session:session];

    v28 = VCPSignPostLog();
    v29 = v28;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = self->_signpostPayload;
      *buf = 138412290;
      v164 = v30;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v20, "VCPMADVIFaceTask_VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v31 = VCPSignPostLog();
    v32 = os_signpost_id_generate(v31);

    v33 = VCPSignPostLog();
    v34 = v33;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      v35 = self->_signpostPayload;
      *buf = 138412290;
      v164 = v35;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "VCPMADVIFaceTask_detectFace", "%@", buf, 0xCu);
    }

    v178 = v132;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
    v156 = 0;
    v37 = [v133 performRequests:v36 error:&v156];
    v7 = v156;

    if ((v37 & 1) == 0)
    {
      array = [MEMORY[0x1E696AEC0] stringWithFormat:@"[≈] Failed to detect faces - %@", v7];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = array;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v51 = self->_request;
      v52 = MEMORY[0x1E696ABC0];
      v176 = *MEMORY[0x1E696A578];
      array = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", array];
      v130 = array;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&array forKeys:&v176 count:1];
      v54 = [v52 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v53];
      [(MADVIFaceRequest *)v51 setError:v54];

      goto LABEL_39;
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = self->_signpostPayload;
      *buf = 138412290;
      v164 = v40;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v32, "VCPMADVIFaceTask_detectFace", "%@", buf, 0xCu);
    }

    results = [v132 results];
    v42 = [results count];

    if (!v42)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADVIFaceTask] No face detected from CVPixelBuffer", buf, 2u);
      }

      [(MADVIFaceRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
      v3 = 0;
      goto LABEL_41;
    }

    array = [MEMORY[0x1E695DF70] array];
    v155 = 0;
    v43 = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v155, objc_opt_class(), [v136 processingVersion]);
    v44 = v155;
    v130 = v44;
    if (v43)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNCreateFaceprintRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = v45;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v46 = self->_request;
      v47 = MEMORY[0x1E696ABC0];
      v174 = *MEMORY[0x1E696A578];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v45];
      v175 = v48;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
      v50 = [v47 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v49];
      [(MADVIFaceRequest *)v46 setError:v50];

LABEL_39:
      v3 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

      v8 = v135;
LABEL_43:

      CF<__CVBuffer *>::~CF(&v161);
      return v3;
    }

    v56 = v44;
    results2 = [v132 results];
    [v56 setInputFaceObservations:results2];

    [(NSString *)array addObject:v130];
    v58 = self->_cancelQueue;
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __23__VCPMADVIFaceTask_run__block_invoke_375;
    v153[3] = &unk_1E834D238;
    v153[4] = self;
    v130 = v130;
    v154 = v130;
    dispatch_sync(v58, v153);
    v152 = 0;
    LODWORD(v58) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v152, objc_opt_class(), [v136 processingVersion]);
    v59 = v152;
    v129 = v59;
    if (v58)
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNClassifyFaceAttributesRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = v60;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v61 = self->_request;
      v62 = MEMORY[0x1E696ABC0];
      v172 = *MEMORY[0x1E696A578];
      v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v60];
      v173 = v63;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
      v65 = [v62 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v64];
      [(MADVIFaceRequest *)v61 setError:v65];

      v3 = 0;
      goto LABEL_95;
    }

    v66 = v59;
    results3 = [v132 results];
    [v66 setInputFaceObservations:results3];

    [(NSString *)array addObject:v129];
    v68 = self->_cancelQueue;
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __23__VCPMADVIFaceTask_run__block_invoke_380;
    v150[3] = &unk_1E834D238;
    v150[4] = self;
    v127 = v129;
    v151 = v127;
    dispatch_sync(v68, v150);
    v149 = 0;
    LODWORD(v68) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v149, objc_opt_class(), [v136 processingVersion]);
    v69 = v149;
    v128 = v69;
    if (v68)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceExpressionsRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = v70;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v71 = self->_request;
      v72 = MEMORY[0x1E696ABC0];
      v170 = *MEMORY[0x1E696A578];
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v70];
      v171 = v73;
      v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
      v75 = [v72 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v74];
      [(MADVIFaceRequest *)v71 setError:v75];

      v3 = 0;
      goto LABEL_94;
    }

    v76 = v69;
    results4 = [v132 results];
    [v76 setInputFaceObservations:results4];

    [(NSString *)array addObject:v128];
    v78 = self->_cancelQueue;
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = __23__VCPMADVIFaceTask_run__block_invoke_385;
    v147[3] = &unk_1E834D238;
    v147[4] = self;
    v125 = v128;
    v148 = v125;
    dispatch_sync(v78, v147);
    v146 = 0;
    LODWORD(v78) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v146, objc_opt_class(), [v136 processingVersion]);
    v79 = v146;
    v126 = v79;
    if (v78)
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceLandmarksRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v164 = v80;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v81 = self->_request;
      v82 = MEMORY[0x1E696ABC0];
      v168 = *MEMORY[0x1E696A578];
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v80];
      v169 = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
      v85 = [v82 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v84];
      [(MADVIFaceRequest *)v81 setError:v85];

      v3 = 0;
      goto LABEL_93;
    }

    v86 = v79;
    results5 = [v132 results];
    [v86 setInputFaceObservations:results5];

    [(NSString *)array addObject:v126];
    v88 = self->_cancelQueue;
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __23__VCPMADVIFaceTask_run__block_invoke_390;
    v144[3] = &unk_1E834D238;
    v144[4] = self;
    v124 = v126;
    v145 = v124;
    dispatch_sync(v88, v144);
    if (self->_preferredMetalDevice)
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v89 = array;
      v90 = [(NSString *)v89 countByEnumeratingWithState:&v140 objects:v167 count:16];
      if (v90)
      {
        v91 = *v141;
        do
        {
          for (i = 0; i != v90; ++i)
          {
            if (*v141 != v91)
            {
              objc_enumerationMutation(v89);
            }

            v93 = *(*(&v140 + 1) + 8 * i);
            v94 = [MEMORY[0x1E6984608] deviceForMetalDevice:self->_preferredMetalDevice];
            [v93 setProcessingDevice:v94];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              processingDevice = [v93 processingDevice];
              preferredMetalDevice = self->_preferredMetalDevice;
              *buf = 138412546;
              v164 = processingDevice;
              v165 = 2112;
              v166 = preferredMetalDevice;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADVIFaceTask] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
            }
          }

          v90 = [(NSString *)v89 countByEnumeratingWithState:&v140 objects:v167 count:16];
        }

        while (v90);
      }
    }

    v97 = atomic_load(&self->_canceled);
    if (v97)
    {
      goto LABEL_77;
    }

    v98 = VCPSignPostLog();
    v99 = os_signpost_id_generate(v98);

    v100 = VCPSignPostLog();
    v101 = v100;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
    {
      v102 = self->_signpostPayload;
      *buf = 138412290;
      v164 = v102;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v101, OS_SIGNPOST_INTERVAL_BEGIN, v99, "VCPMADVIFaceTask_additionalFaceRequests", "%@", buf, 0xCu);
    }

    v139 = v7;
    v103 = [v133 performRequests:array error:&v139];
    v104 = v139;

    v7 = v104;
    v105 = VCPSignPostLog();
    v106 = v105;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
    {
      v107 = self->_signpostPayload;
      *buf = 138412290;
      v164 = v107;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v106, OS_SIGNPOST_INTERVAL_END, v99, "VCPMADVIFaceTask_additionalFaceRequests", "%@", buf, 0xCu);
    }

    if (v103)
    {
      v108 = objc_alloc_init(MEMORY[0x1E69AE420]);
      results6 = [v132 results];
      [v108 setFaceRectanglesObservations:results6];

      results7 = [v130 results];
      [v108 setFaceprintObservations:results7];

      results8 = [v127 results];
      [v108 setFaceAttributesObservations:results8];

      results9 = [v125 results];
      [v108 setFaceExpressionsObservations:results9];

      results10 = [v124 results];
      [v108 setFaceLandmarksObservations:results10];

      v114 = self->_request;
      v162 = v108;
      v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
      [(MADVIFaceRequest *)v114 setResults:v115];

      executionNanoseconds = [v132 executionNanoseconds];
      executionNanoseconds2 = [v130 executionNanoseconds];
      executionNanoseconds3 = [v127 executionNanoseconds];
      executionNanoseconds4 = [v125 executionNanoseconds];
      executionNanoseconds5 = [v124 executionNanoseconds];
      results11 = [(MADVIFaceRequest *)self->_request results];
      firstObject = [results11 firstObject];
      [firstObject setExecutionNanoseconds:executionNanoseconds2 + executionNanoseconds + executionNanoseconds3 + executionNanoseconds4 + executionNanoseconds5];
    }

    else
    {
      v123 = atomic_load(&self->_canceled);
      if (v123)
      {
LABEL_77:
        v3 = -128;
LABEL_92:

LABEL_93:
LABEL_94:

LABEL_95:
        goto LABEL_40;
      }

      [(MADVIFaceRequest *)self->_request setError:v7];
    }

    [v135 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIFaceTask complete", buf, 2u);
    }

    v3 = 0;
    goto LABEL_92;
  }

  return -128;
}

@end