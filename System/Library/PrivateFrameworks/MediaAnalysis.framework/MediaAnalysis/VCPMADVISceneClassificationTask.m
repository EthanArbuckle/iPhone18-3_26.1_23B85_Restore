@interface VCPMADVISceneClassificationTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADVISceneClassificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
- (void)cancel;
- (void)configureRequest:(id)a3;
- (void)configureRequest:(id)a3 withRevision:(unint64_t)a4;
@end

@implementation VCPMADVISceneClassificationTask

- (VCPMADVISceneClassificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VCPMADVISceneClassificationTask;
  v12 = [(VCPMADVISceneClassificationTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
    v14 = dispatch_queue_create("VCPMADVISceneClassificationTask", 0);
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
  block[2] = __41__VCPMADVISceneClassificationTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __41__VCPMADVISceneClassificationTask_cancel__block_invoke(uint64_t a1)
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

- (void)configureRequest:(id)a3
{
  v4 = a3;
  [v4 setMetalContextPriority:0];
  if (DeviceHasANE())
  {
    v3 = [MEMORY[0x1E6984608] defaultANEDevice];
    [v4 setProcessingDevice:v3];
  }
}

- (void)configureRequest:(id)a3 withRevision:(unint64_t)a4
{
  v6 = a3;
  [v6 setRevision:a4];
  [(VCPMADVISceneClassificationTask *)self configureRequest:v6];
}

- (int)run
{
  v144[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_canceled);
  if ((v2 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVISceneClassificationTask running...", buf, 2u);
    }

    v134 = 0;
    v133 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v134 orientation:&v133])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVISceneClassificationTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v6 = MEMORY[0x1E696ABC0];
      v143 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v144[0] = v7;
      v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
      v8 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v113];
      [(MADVISceneClassificationRequest *)request setError:v8];
      v3 = 0;
      goto LABEL_101;
    }

    v113 = +[VCPMADVISceneClassificationResource sharedResource];
    v9 = +[VCPMADResourceManager sharedManager];
    v110 = [v9 activateResource:v113];

    v111 = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(MEMORY[0x1E6984668]);
    v112 = v10;
    if (!v10)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        *buf = 138412290;
        v140 = v43;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v7 = 0;
      v3 = -18;
      goto LABEL_100;
    }

    [(VCPMADVISceneClassificationTask *)self configureRequest:v10];
    [v112 setMaximumLeafObservations:{-[MADVISceneClassificationRequest maximumLeafObservations](self->_request, "maximumLeafObservations")}];
    [v112 setMaximumHierarchicalObservations:{-[MADVISceneClassificationRequest maximumHierarchicalObservations](self->_request, "maximumHierarchicalObservations")}];
    v11 = [(MADVISceneClassificationRequest *)self->_request classificationRevision];
    v132 = 0;
    v12 = [v112 setRevision:v11 error:&v132];
    v7 = v132;
    if ((v12 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = [(MADVISceneClassificationRequest *)self->_request classificationRevision];
        *buf = 134218242;
        v140 = v44;
        v141 = 2112;
        v142 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNSceneClassificationRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v45 = self->_request;
      v46 = MEMORY[0x1E696ABC0];
      v137 = *MEMORY[0x1E696A578];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNSceneClassificationRequest::setRevision %lu: %@", -[MADVISceneClassificationRequest classificationRevision](v45, "classificationRevision"), v7];
      v138 = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v49 = [v46 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v48];
      [(MADVISceneClassificationRequest *)v45 setError:v49];

      v3 = 0;
      goto LABEL_100;
    }

    [v111 addObject:v112];
    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v14 = v112;
    v131 = v14;
    dispatch_sync(cancelQueue, block);
    v15 = objc_alloc_init(MEMORY[0x1E69846B0]);
    if (!v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v3 = -18;
LABEL_99:

LABEL_100:
        v8 = v110;
LABEL_101:

        CF<__CVBuffer *>::~CF(&v134);
        return v3;
      }

      v109 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = objc_opt_class();
        *buf = 138412290;
        v140 = v50;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
LABEL_98:
      v15 = v109;
      goto LABEL_99;
    }

    v109 = v15;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v15 withRevision:[(MADVISceneClassificationRequest *)self->_request nsfwRevision]];
    [v111 addObject:v15];
    v16 = self->_cancelQueue;
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_360;
    v128[3] = &unk_1E834D238;
    v128[4] = self;
    v107 = v15;
    v129 = v107;
    dispatch_sync(v16, v128);
    v17 = objc_alloc_init(MEMORY[0x1E69843F0]);
    if (!v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        *buf = 138412290;
        v140 = v51;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
      goto LABEL_97;
    }

    v106 = v14;
    v108 = v17;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v17];
    v18 = [(MADVISceneClassificationRequest *)self->_request significantEventRevision];
    v127 = v7;
    v19 = [v17 setRevision:v18 error:&v127];
    v20 = v127;

    if ((v19 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v52 = [(MADVISceneClassificationRequest *)self->_request significantEventRevision];
        *buf = 134218242;
        v140 = v52;
        v141 = 2112;
        v142 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNClassifySignificantEventRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v3 = -18;
      v7 = v20;
      goto LABEL_97;
    }

    [v111 addObject:v17];
    v21 = self->_cancelQueue;
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_362;
    v125[3] = &unk_1E834D238;
    v125[4] = self;
    v104 = v17;
    v126 = v104;
    dispatch_sync(v21, v125);
    v22 = objc_alloc_init(MEMORY[0x1E6984630]);
    if (!v22)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        *buf = 138412290;
        v140 = v53;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
      goto LABEL_96;
    }

    v105 = v22;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v22];
    v23 = [(MADVISceneClassificationRequest *)self->_request recognizeObjectsRevision];
    v124 = v20;
    v24 = [v22 setRevision:v23 error:&v124];
    v25 = v124;

    if ((v24 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v54 = [(MADVISceneClassificationRequest *)self->_request recognizeObjectsRevision];
        *buf = 134218242;
        v140 = v54;
        v141 = 2112;
        v142 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNRecognizeObjectsRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v3 = -18;
      v20 = v25;
      goto LABEL_96;
    }

    [v111 addObject:v22];
    v26 = self->_cancelQueue;
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_364;
    v122[3] = &unk_1E834D238;
    v122[4] = self;
    v27 = v22;
    v123 = v27;
    dispatch_sync(v26, v122);
    v28 = objc_alloc_init(MEMORY[0x1E6984540]);
    v29 = v28;
    if (v28)
    {
      v101 = v27;
      v102 = v28;
      [(VCPMADVISceneClassificationTask *)self configureRequest:v28];
      v30 = [(MADVISceneClassificationRequest *)self->_request saliencyRevision];
      v121 = v25;
      v31 = [v29 setRevision:v30 error:&v121];
      v103 = v121;

      if (v31)
      {
        [v111 addObject:v102];
        v32 = self->_cancelQueue;
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_366;
        v119[3] = &unk_1E834D238;
        v119[4] = self;
        v100 = v102;
        v120 = v100;
        dispatch_sync(v32, v119);
        if (self->_preferredMetalDevice)
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v33 = v111;
          v34 = [v33 countByEnumeratingWithState:&v115 objects:v136 count:16];
          if (v34)
          {
            v35 = *v116;
            v36 = MEMORY[0x1E69E9C10];
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v116 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v115 + 1) + 8 * i);
                v39 = [MEMORY[0x1E6984608] deviceForMetalDevice:self->_preferredMetalDevice];
                [v38 setProcessingDevice:v39];

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v40 = [v38 processingDevice];
                  preferredMetalDevice = self->_preferredMetalDevice;
                  *buf = 138412546;
                  v140 = v40;
                  v141 = 2112;
                  v142 = preferredMetalDevice;
                  _os_log_impl(&dword_1C9B70000, v36, OS_LOG_TYPE_DEBUG, "[SceneClassification] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
                }
              }

              v34 = [v33 countByEnumeratingWithState:&v115 objects:v136 count:16];
            }

            while (v34);
          }
        }

        v42 = atomic_load(&self->_canceled);
        if (v42)
        {
          v3 = -128;
LABEL_94:

          v29 = v102;
          v25 = v103;
          goto LABEL_95;
        }

        v60 = VCPSignPostLog();
        v61 = os_signpost_id_generate(v60);

        v62 = VCPSignPostLog();
        v63 = v62;
        if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
        {
          signpostPayload = self->_signpostPayload;
          *buf = 138412290;
          v140 = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v63, OS_SIGNPOST_INTERVAL_BEGIN, v61, "VNImageRequestHandler_init", "%@", buf, 0xCu);
        }

        v65 = objc_alloc(MEMORY[0x1E69845B8]);
        v66 = v134;
        v67 = v133;
        v68 = [v113 session];
        v69 = [v65 initWithCVPixelBuffer:v66 orientation:v67 options:MEMORY[0x1E695E0F8] session:v68];

        v70 = VCPSignPostLog();
        v71 = v70;
        if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
        {
          v72 = self->_signpostPayload;
          *buf = 138412290;
          v140 = v72;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_END, v61, "VNImageRequestHandler_init", "%@", buf, 0xCu);
        }

        v73 = VCPSignPostLog();
        v74 = os_signpost_id_generate(v73);

        v75 = VCPSignPostLog();
        v76 = v75;
        if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
        {
          v77 = self->_signpostPayload;
          *buf = 138412290;
          v140 = v77;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v74, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
        }

        v114 = v103;
        v78 = [v69 performRequests:v111 error:&v114];
        v79 = v114;

        v103 = v79;
        v80 = VCPSignPostLog();
        v81 = v80;
        if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
        {
          v82 = self->_signpostPayload;
          *buf = 138412290;
          v140 = v82;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v81, OS_SIGNPOST_INTERVAL_END, v74, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
        }

        if (v78)
        {
          v83 = objc_alloc_init(MEMORY[0x1E69AE450]);
          v84 = [v106 results];
          [v83 setClassificationObservations:v84];

          v85 = [v107 results];
          [v83 setNSFWObservations:v85];

          v86 = [v104 results];
          [v83 setSignificantEventObservations:v86];

          v87 = [v101 results];
          [v83 setRecognizedObjectObservations:v87];

          v88 = [v100 results];
          [v83 setSaliencyObservations:v88];

          v89 = self->_request;
          v135 = v83;
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
          [(MADVISceneClassificationRequest *)v89 setResults:v90];

          v91 = [v106 executionNanoseconds];
          v92 = [v107 executionNanoseconds];
          v93 = [v104 executionNanoseconds];
          v94 = [v101 executionNanoseconds];
          v95 = [v100 executionNanoseconds];
          v96 = [(MADVISceneClassificationRequest *)self->_request results];
          v97 = [v96 firstObject];
          [v97 setExecutionNanoseconds:v92 + v91 + v93 + v94 + v95];
        }

        else
        {
          v98 = atomic_load(&self->_canceled);
          if (v98)
          {
            v3 = -128;
LABEL_93:

            goto LABEL_94;
          }

          [(MADVISceneClassificationRequest *)self->_request setError:v103];
        }

        [v110 reset];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVISceneClassificationTask complete", buf, 2u);
        }

        v3 = 0;
        goto LABEL_93;
      }

      v29 = v102;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = -18;
        v25 = v103;
        goto LABEL_95;
      }

      v59 = [(MADVISceneClassificationRequest *)self->_request saliencyRevision];
      *buf = 134218242;
      v140 = v59;
      v141 = 2112;
      v25 = v103;
      v142 = v103;
      v56 = MEMORY[0x1E69E9C10];
      v57 = "Failed to set VNGenerateAttentionBasedSaliencyImageRequest::setRevision %lu: %@";
      v58 = 22;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v55 = objc_opt_class();
      *buf = 138412290;
      v140 = v55;
      v56 = MEMORY[0x1E69E9C10];
      v57 = "Failed to create %@";
      v58 = 12;
    }

    _os_log_impl(&dword_1C9B70000, v56, OS_LOG_TYPE_ERROR, v57, buf, v58);
LABEL_70:
    v3 = -18;
LABEL_95:

    v20 = v25;
    v22 = v105;
LABEL_96:

    v7 = v20;
    v17 = v108;
LABEL_97:

    goto LABEL_98;
  }

  return -128;
}

@end