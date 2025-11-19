@interface VCPMADImageCaptionTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADImageCaptionTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
@end

@implementation VCPMADImageCaptionTask

- (VCPMADImageCaptionTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = VCPMADImageCaptionTask;
  v12 = [(VCPMADImageCaptionTask *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
    imageCaptionModel = v13->_imageCaptionModel;
    v13->_imageCaptionModel = 0;
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

- (int)run
{
  v79 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageCaptionTask running...", buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  v5 = [(MADImageCaptionRequest *)self->_request modelType];
  v6 = [(MADImageCaptionRequest *)self->_request safetyType];
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v78 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADImageCaptionTask_modelPrepare", "%@", buf, 0xCu);
  }

  v12 = [VCPMADImageCaptionResource sharedResourceForModelType:v5 safetyType:v6];
  v13 = +[VCPMADResourceManager sharedManager];
  v14 = [v13 activateResource:v12];

  v15 = [v12 imageCaptionAnalyzer];
  LODWORD(v13) = v15 == 0;

  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPImageCaptionAnalyzer init fail", buf, 2u);
    }

    request = self->_request;
    v25 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E696A578];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPImageCaptionAnalyzer init fail"];
    v76 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v28 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v27];
    [(MADImageCaptionRequest *)request setError:v28];

    [v14 reset];
  }

  else
  {
    v16 = VCPSignPostLog();
    v17 = v16;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = self->_signpostPayload;
      *buf = 138412290;
      v78 = v18;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADImageCaptionTask_modelPrepare", "%@", buf, 0xCu);
    }

    v69 = 0;
    v68 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v69 orientation:&v68])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageCaptionTask image loading failed", buf, 2u);
      }

      v19 = self->_request;
      v20 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v74 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v23 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
      [(MADImageCaptionRequest *)v19 setError:v23];

      [v14 reset];
    }

    else
    {
      v29 = VCPSignPostLog();
      v30 = os_signpost_id_generate(v29);

      v31 = VCPSignPostLog();
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        v33 = self->_signpostPayload;
        *buf = 138412290;
        v78 = v33;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "VCPMADImageCaptionTask_requestCaption", "%@", buf, 0xCu);
      }

      v34 = [v12 imageCaptionAnalyzer];
      v66[4] = self;
      v67 = 0;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __29__VCPMADImageCaptionTask_run__block_invoke;
      v66[3] = &unk_1E834C078;
      v35 = [v34 analyzePixelBuffer:v69 flags:0 results:&v67 cancel:v66];
      v36 = v67;

      if (v35)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageCaptionTask image caption analysis failed", buf, 2u);
        }

        v37 = self->_request;
        v38 = MEMORY[0x1E696ABC0];
        v71 = *MEMORY[0x1E696A578];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageCaptionTask image caption analysis failed"];
        v72 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v41 = [v38 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v40];
        [(MADImageCaptionRequest *)v37 setError:v41];

        [v14 reset];
      }

      else
      {
        v42 = VCPSignPostLog();
        v43 = v42;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          v44 = self->_signpostPayload;
          *buf = 138412290;
          v78 = v44;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v30, "VCPMADImageCaptionTask_requestCaption", "%@", buf, 0xCu);
        }

        v45 = &MediaAnalysisImageCaptionResultsKey;
        if ((v5 - 1) >= 2)
        {
          v45 = &MediaAnalysisMiCaImageCaptionResultsKey;
        }

        v46 = [v36 objectForKeyedSubscript:*v45];
        if ([v46 count])
        {
          v47 = [v46 objectAtIndexedSubscript:0];
          v48 = [v47 objectForKeyedSubscript:@"attributes"];
          v49 = v48 == 0;

          if (!v49)
          {
            v50 = [v46 objectAtIndexedSubscript:0];
            v51 = [v50 objectForKeyedSubscript:@"attributes"];

            v63 = [v51 objectForKeyedSubscript:@"imageCaptionText"];
            v65 = [v51 objectForKeyedSubscript:@"imageCaptionConfidence"];
            v64 = [v51 objectForKeyedSubscript:@"imageCaptionUnsafeContent"];
            v52 = [v51 objectForKeyedSubscript:@"imageCaptionLowConfidence"];
            v53 = [v51 objectForKeyedSubscript:@"classificationIdentifiers"];
            v54 = objc_alloc(MEMORY[0x1E69AE2F8]);
            [v65 floatValue];
            v56 = v55;
            v57 = [v64 BOOLValue];
            v58 = [v52 BOOLValue];
            LODWORD(v59) = v56;
            v60 = [v54 initWithCaption:v63 score:v57 containsUnsafeContent:v58 isLowConfidence:v53 classificationIdentifiers:v59];
            v61 = self->_request;
            v70 = v60;
            v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
            [(MADImageCaptionRequest *)v61 setResults:v62];
          }
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageCaptionTask complete", buf, 2u);
        }

        [v14 reset];
      }
    }

    CF<__CVBuffer *>::~CF(&v69);
  }

  return 0;
}

@end