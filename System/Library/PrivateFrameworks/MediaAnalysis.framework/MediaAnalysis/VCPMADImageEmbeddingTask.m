@interface VCPMADImageEmbeddingTask
+ (id)embeddingShapeForType:(int64_t)a3;
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
+ (int64_t)bridgeEmbeddingTypeForRequest:(int64_t)a3;
- (VCPMADImageEmbeddingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
@end

@implementation VCPMADImageEmbeddingTask

- (VCPMADImageEmbeddingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VCPMADImageEmbeddingTask;
  v12 = [(VCPMADImageEmbeddingTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
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

+ (id)embeddingShapeForType:(int64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 < 5)
  {
    return qword_1E834D2A8[a3];
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", &v5, 0xCu);
  }

  return 0;
}

+ (int64_t)bridgeEmbeddingTypeForRequest:(int64_t)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 >= 5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", &v5, 0xCu);
    }

    return 0;
  }

  return v3;
}

- (int)run
{
  v86 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask running...", buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  if ([(MADImageEmbeddingRequest *)self->_request embeddingRequestType]< 0 && [(MADImageEmbeddingRequest *)self->_request embeddingRequestType]>= 5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [(MADImageEmbeddingRequest *)self->_request embeddingRequestType];
      *buf = 134217984;
      v85 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", buf, 0xCu);
    }

    request = self->_request;
    v7 = MEMORY[0x1E696ABC0];
    v82 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", -[MADImageEmbeddingRequest embeddingRequestType](request, "embeddingRequestType")];
    v83 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageEmbeddingRequest *)request setError:v10];

    goto LABEL_63;
  }

  v8 = [VCPMADImageEmbeddingResource sharedResourceForRevision:[(MADImageEmbeddingRequest *)self->_request version]];
  v11 = +[VCPMADResourceManager sharedManager];
  v9 = [v11 activateResource:v8];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = [(MADImageEmbeddingRequest *)self->_request version];
    *buf = 67109120;
    LODWORD(v85) = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask with embedding version %d", buf, 8u);
  }

  v13 = [v8 imageBackbone];
  v14 = v13 == 0;

  if (!v14)
  {
    v68 = 0;
    v67 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v68 orientation:&v67])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask image loading failed", buf, 2u);
      }

      v15 = self->_request;
      v16 = MEMORY[0x1E696ABC0];
      v78 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v79 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
      [(MADImageEmbeddingRequest *)v15 setError:v19];
      goto LABEL_62;
    }

    v25 = VCPSignPostLog();
    v26 = os_signpost_id_generate(v25);

    v27 = VCPSignPostLog();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v85 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
    }

    v30 = [(MADImageEmbeddingRequest *)self->_request bypassNormalizaton];
    v31 = [v8 imageBackbone];
    [v31 setBypassNormalizaton:v30];

    v32 = [objc_opt_class() bridgeEmbeddingTypeForRequest:{-[MADImageEmbeddingRequest embeddingRequestType](self->_request, "embeddingRequestType")}];
    v33 = [v8 imageBackbone];
    [v33 setBridgeEmbeddingType:v32];

    v34 = [v8 imageBackbone];
    v66 = 0;
    LODWORD(v32) = [v34 analyzePixelBuffer:v68 flags:0 results:&v66 cancel:&__block_literal_global_18];
    v17 = v66;

    if (v32)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask image embedding analysis failed", buf, 2u);
      }

      v35 = self->_request;
      v36 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask image embedding analysis failed"];
      v77 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v37 = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      [(MADImageEmbeddingRequest *)v35 setError:v37];
      goto LABEL_61;
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = self->_signpostPayload;
      *buf = 138412290;
      v85 = v40;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v26, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
    }

    v18 = [v17 objectForKeyedSubscript:@"ImageEmbeddingResults"];
    if ([v18 count])
    {
      v41 = [v18 objectAtIndexedSubscript:0];
      v42 = [v41 objectForKeyedSubscript:@"attributes"];
      v19 = [v42 objectForKeyedSubscript:@"embeddings"];

      v43 = [v18 objectAtIndexedSubscript:0];
      v44 = [v43 objectForKeyedSubscript:@"attributes"];
      v37 = [v44 objectForKeyedSubscript:@"bridgeEmbeddings"];

      v45 = [v18 objectAtIndexedSubscript:0];
      v46 = [v45 objectForKeyedSubscript:@"attributes"];
      v65 = [v46 objectForKeyedSubscript:@"embeddingVersion"];

      v47 = v65;
      if (!v65 || (v48 = [v65 intValue], v47 = v65, -[MADImageEmbeddingRequest version](self->_request, "version") != v48))
      {
        if ([v47 intValue] != 9 || -[MADImageEmbeddingRequest version](self->_request, "version") != 8)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask unexpected image embedding version", buf, 2u);
          }

          v55 = self->_request;
          v56 = MEMORY[0x1E696ABC0];
          v74 = *MEMORY[0x1E696A578];
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask unexpected image embedding version. Expect %d, got %d", -[MADImageEmbeddingRequest version](v55, "version"), objc_msgSend(v65, "intValue")];
          v75 = v64;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v57 = [v56 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v63];
          [(MADImageEmbeddingRequest *)v55 setError:v57];
          goto LABEL_59;
        }

        v47 = v65;
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask please use MADUnifiedEmbeddingVersion_LuckCheerMD7v2", buf, 2u);
        }
      }
    }

    else
    {
      v37 = 0;
      v19 = 0;
    }

    if ([(MADImageEmbeddingRequest *)self->_request embeddingRequestType])
    {
      v49 = v37;
    }

    else
    {
      v49 = v19;
    }

    v50 = v49;
    v65 = v50;
    v64 = [objc_opt_class() embeddingShapeForType:{-[MADImageEmbeddingRequest embeddingRequestType](self->_request, "embeddingRequestType")}];
    if (v50)
    {
      v63 = [objc_alloc(MEMORY[0x1E69AE318]) initWithVersion:-[MADImageEmbeddingRequest version](self->_request data:"version") type:v50 shape:{1, v64}];
      v51 = [v63 embedding];
      v52 = v51 == 0;

      v53 = self->_request;
      if (!v52)
      {
        v69 = v63;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
        [(MADImageEmbeddingRequest *)v53 setResults:v54];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask complete", buf, 2u);
        }

        [v9 reset];
        goto LABEL_60;
      }

      v61 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A578];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate MADImageEmbeddingResult"];
      v71 = v57;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v62 = [v61 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v60];
      [(MADImageEmbeddingRequest *)v53 setError:v62];
    }

    else
    {
      v58 = self->_request;
      v59 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A578];
      v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate embedding data"];
      v73 = v63;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v60 = [v59 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v57];
      [(MADImageEmbeddingRequest *)v58 setError:v60];
    }

LABEL_59:
LABEL_60:

LABEL_61:
LABEL_62:

    CF<__CVBuffer *>::~CF(&v68);
    goto LABEL_63;
  }

  v20 = self->_request;
  v21 = MEMORY[0x1E696ABC0];
  v80 = *MEMORY[0x1E696A578];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create image backbone"];
  v81 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
  [(MADImageEmbeddingRequest *)v20 setError:v24];

LABEL_63:
  return 0;
}

@end