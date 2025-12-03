@interface MADSceneResources
- (MADSceneResources)init;
@end

@implementation MADSceneResources

- (MADSceneResources)init
{
  v35 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MADSceneResources;
  v2 = [(MADSceneResources *)&v30 init];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = objc_alloc_init(MEMORY[0x1E6984688]);
  session = v2->_session;
  v2->_session = v3;

  v5 = [[VCPPoolBasedPixelBufferCreator alloc] initWithBufferWidth:299 bufferHeight:299 andPixelFormat:1278226488];
  monochromeBufferCreator = v2->_monochromeBufferCreator;
  v2->_monochromeBufferCreator = v5;

  if (!v2->_monochromeBufferCreator)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v21 = objc_opt_class();
    *buf = 138412290;
    v32 = v21;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "[%@] Failed to create VCPPoolBasedPixelBufferCreator for monochrome";
    goto LABEL_13;
  }

  v7 = [[VCPPreAnalysisImageLoader alloc] initWithMonochromeBufferCreator:v2->_monochromeBufferCreator];
  imageLoader = v2->_imageLoader;
  v2->_imageLoader = v7;

  if (+[VCPPreAnalysisRequests includeRotation])
  {
    v9 = [VCPMAMLModel vcp_sharedModelWithModelName:@"MonzaV4_1"];
    rotationModel = v2->_rotationModel;
    v2->_rotationModel = v9;

    if (!v2->_rotationModel)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v25 = objc_opt_class();
      *buf = 138412546;
      v32 = v25;
      v33 = 2112;
      v34 = @"MonzaV4_1";
      v22 = MEMORY[0x1E69E9C10];
      v23 = "[%@] Failed to load ProbableRotation model %@";
      v24 = 22;
      goto LABEL_17;
    }

    v11 = [[VCPPoolBasedPixelBufferCreator alloc] initWithBufferWidth:[(VCPMAMLModel *)v2->_rotationModel inputSize] bufferHeight:[(VCPMAMLModel *)v2->_rotationModel inputSize] andPixelFormat:1111970369];
    rotationBufferCreator = v2->_rotationBufferCreator;
    v2->_rotationBufferCreator = v11;

    if (v2->_rotationBufferCreator)
    {
      goto LABEL_6;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    v28 = objc_opt_class();
    *buf = 138412290;
    v32 = v28;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "[%@] Failed to create VCPPoolBasedPixelBufferCreator for rotation";
LABEL_13:
    v24 = 12;
LABEL_17:
    _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
    goto LABEL_24;
  }

LABEL_6:
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v13 = +[VCPVideoTransformerBackbone revision];
    1111970369 = [[VCPPoolBasedPixelBufferCreator alloc] initWithBufferWidth:[VCPVideoTransformerBackbone idealInputWidthWithRevision:?], [VCPVideoTransformerBackbone idealInputHeightWithRevision:v13], 1111970369];
    embeddingBufferCreator = v2->_embeddingBufferCreator;
    v2->_embeddingBufferCreator = 1111970369;

    if (!v2->_embeddingBufferCreator)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        *buf = 138412290;
        v32 = v26;
        v27 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create VCPPoolBasedPixelBufferCreator for embedding", buf, 0xCu);
      }

      goto LABEL_24;
    }
  }

  v16 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_29];
  safetyTypeNPool = v2->_safetyTypeNPool;
  v2->_safetyTypeNPool = v16;

  v18 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_353];
  safetyTypeGVPool = v2->_safetyTypeGVPool;
  v2->_safetyTypeGVPool = v18;

LABEL_9:
  v20 = v2;
LABEL_25:

  return v20;
}

id __25__MADSceneResources_init__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CA820];
  v12[0] = *MEMORY[0x1E69CA830];
  v12[1] = v0;
  v13[0] = &unk_1F49BBE90;
  v13[1] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v1 error:&v7];
  v3 = v7;
  if (v3 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = [v3 description];
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@ (Type N): %@", buf, 0x16u);
  }

  return v2;
}

id __25__MADSceneResources_init__block_invoke_351()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CA820];
  v12[0] = *MEMORY[0x1E69CA830];
  v12[1] = v0;
  v13[0] = &unk_1F49BBEA8;
  v13[1] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v1 error:&v7];
  v3 = v7;
  if (v3 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = [v3 description];
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@ (Type GV): %@", buf, 0x16u);
  }

  return v2;
}

@end