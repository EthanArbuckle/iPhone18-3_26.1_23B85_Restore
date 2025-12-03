@interface MADTextEmbeddingSafety
+ (id)createForEmbeddingVersion:(unint64_t)version;
- (MADTextEmbeddingSafety)init;
- (int)_createPlan;
- (int)_loadResources;
- (int)_processEmbedding:(id)embedding safetyScore:(float *)score isSafe:(BOOL *)safe;
- (int)loadResources;
- (int)processEmbedding:(id)embedding safetyScore:(float *)score isSafe:(BOOL *)safe;
- (void)dealloc;
@end

@implementation MADTextEmbeddingSafety

- (MADTextEmbeddingSafety)init
{
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingSafety;
  v2 = [(MADTextEmbeddingSafety *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingSafety", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)createForEmbeddingVersion:(unint64_t)version
{
  v8 = *MEMORY[0x1E69E9840];
  if (version == 9)
  {
    v4 = MADTextEmbeddingSafetyMD7v2;
    goto LABEL_7;
  }

  versionCopy = version;
  if (version == 7)
  {
    v4 = MADTextEmbeddingSafetyMD6;
    goto LABEL_7;
  }

  if (version == 5)
  {
    v4 = MADTextEmbeddingSafetyMD5;
LABEL_7:
    v5 = objc_alloc_init(v4);
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = versionCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Embedding version %d not supported", v7, 8u);
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)dealloc
{
  if (espresso_plan_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to destroy plan", buf, 2u);
  }

  if (espresso_context_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to destroy context", buf, 2u);
  }

  v3.receiver = self;
  v3.super_class = MADTextEmbeddingSafety;
  [(MADTextEmbeddingSafety *)&v3 dealloc];
}

- (int)_createPlan
{
  v22 = *MEMORY[0x1E69E9840];
  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    return -18;
  }

  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v6 = MEMORY[0x1E695DFF8];
  modelName = [objc_opt_class() modelName];
  v8 = [v6 URLWithString:modelName relativeToURL:resourceURL];

  path = [v8 path];
  [path UTF8String];
  blob_dimensions = espresso_plan_add_network();

  if (!blob_dimensions)
  {
    blob_dimensions = espresso_plan_build();
    if (!blob_dimensions)
    {
      v20 = 0u;
      v21 = 0u;
      blob_dimensions = espresso_network_query_blob_dimensions();
      if (!blob_dimensions)
      {
        if (v20 == __PAIR128__(1, [objc_opt_class() embeddingLength]) && v21 == __PAIR128__(1, 1))
        {
          blob_dimensions = espresso_network_bind_cvpixelbuffer();
          if (!blob_dimensions)
          {
            blob_dimensions = espresso_network_bind_buffer();
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = 134218752;
            v13 = v20;
            v14 = 2048;
            v15 = *(&v20 + 1);
            v16 = 2048;
            v17 = v21;
            v18 = 2048;
            v19 = *(&v21 + 1);
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Input has unexpected dimension %zux%zux%zux%zu", &v12, 0x2Au);
          }

          blob_dimensions = -18;
        }
      }
    }
  }

  return blob_dimensions;
}

- (int)_loadResources
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_plan)
  {
    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__MADTextEmbeddingSafety__loadResources__block_invoke;
  aBlock[3] = &unk_1E834DFE0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = VCPSignPostPersistentLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostPersistentLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADTextEmbeddingSafety_loadResources", " enableTelemetry=YES ", buf, 2u);
  }

  v2 = v3[2](v3);
  v8 = VCPSignPostPersistentLog();
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = qos_class_self();
    v11 = VCPMAQoSDescription(v10);
    v12 = v11;
    uTF8String = [v11 UTF8String];
    v14 = "Failure";
    if (!v2)
    {
      v14 = "Success";
    }

    *buf = 136446466;
    v18 = uTF8String;
    v19 = 2082;
    v20 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v5, "MADTextEmbeddingSafety_loadResources", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
  }

  return v2;
}

uint64_t __40__MADTextEmbeddingSafety__loadResources__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[6])
  {
LABEL_2:
    if (v2[2] || (*(*(a1 + 32) + 16) = espresso_create_context(), v2 = *(a1 + 32), v2[2]))
    {
      v3 = [v2 _createPlan];
      if (v3)
      {
        espresso_plan_destroy();
        *(*(a1 + 32) + 24) = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to create ANE context", v11, 2u);
      }

      return 4294967278;
    }

    return v3;
  }

  v12 = *MEMORY[0x1E69660D8];
  v13[0] = MEMORY[0x1E695E0F8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = [objc_opt_class() embeddingLength];
  v6 = *(a1 + 32);
  v9 = *(v6 + 48);
  v8 = (v6 + 48);
  v7 = v9;
  if (v9)
  {
    CFRelease(v7);
    *v8 = 0;
  }

  v3 = CVPixelBufferCreate(0, v5, 1uLL, 0x4C303068u, v4, v8);
  if (!v3)
  {

    v2 = *(a1 + 32);
    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to create input buffer", v11, 2u);
  }

  return v3;
}

- (int)loadResources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MADTextEmbeddingSafety_loadResources__block_invoke;
  v5[3] = &unk_1E834C4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__MADTextEmbeddingSafety_loadResources__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadResources];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)_processEmbedding:(id)embedding safetyScore:(float *)score isSafe:(BOOL *)safe
{
  v35 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  _loadResources = [(MADTextEmbeddingSafety *)self _loadResources];
  if (_loadResources)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to load network", buf, 2u);
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __63__MADTextEmbeddingSafety__processEmbedding_safetyScore_isSafe___block_invoke;
    v26 = &unk_1E8351918;
    v27 = embeddingCopy;
    selfCopy = self;
    scoreCopy = score;
    safeCopy = safe;
    v10 = _Block_copy(&v23);
    v11 = VCPSignPostPersistentLog();
    v12 = os_signpost_id_generate(v11);

    v13 = VCPSignPostPersistentLog();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADTextEmbeddingSafety_processEmbedding", " enableTelemetry=YES ", buf, 2u);
    }

    _loadResources = v10[2](v10);
    v15 = VCPSignPostPersistentLog();
    v16 = v15;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = qos_class_self();
      v18 = VCPMAQoSDescription(v17);
      v19 = v18;
      uTF8String = [v18 UTF8String];
      v21 = "Failure";
      if (!_loadResources)
      {
        v21 = "Success";
      }

      *buf = 136446466;
      v32 = uTF8String;
      v33 = 2082;
      v34 = v21;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v12, "MADTextEmbeddingSafety_processEmbedding", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
    }
  }

  return _loadResources;
}

uint64_t __63__MADTextEmbeddingSafety__processEmbedding_safetyScore_isSafe___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) version];
  if (v2 != [objc_opt_class() embeddingVersion])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "version")}];
      *buf = 138412290;
      v26 = *&v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Embedding version (%@) is not supported", buf, 0xCu);
    }

    return 4294967246;
  }

  if ([*(a1 + 32) type] != 1)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "type")}];
      *buf = 138412290;
      v26 = *&v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Embedding type (%@) is not supported", buf, 0xCu);
    }

    return 4294967246;
  }

  v3 = [*(a1 + 32) count];
  if (v3 != [objc_opt_class() embeddingLength])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
      *buf = 138412290;
      v26 = *&v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Embedding size (%@) is not supported", buf, 0xCu);
    }

    return 4294967246;
  }

  v4 = *(*(a1 + 40) + 48);
  v22 = 0;
  pixelBuffer = v4;
  unlockFlags = 0;
  if (v4)
  {
    v5 = CVPixelBufferLockBaseAddress(v4, 0);
    v22 = v5;
    if (!v5 || (v6 = v5, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v26 = *&v4, v27 = 1024, LODWORD(v28) = v6, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v6 = v22) == 0))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(*(*(a1 + 40) + 48));
      v8 = [*(a1 + 32) data];
      v9 = v8;
      v10 = [v8 bytes];
      v11 = [objc_opt_class() embeddingLength];
      memcpy(BaseAddress, v10, 2 * v11);

      v6 = CVPixelBufferLock::Unlock(&v22);
      if (!v6)
      {
        v6 = espresso_plan_execute_sync();
        if (v6)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Safety] Failed to execute network", buf, 2u);
          }
        }

        else
        {
          v16 = *(*(a1 + 40) + 56);
          v17 = *v16;
          **(a1 + 48) = *v16;
          [objc_opt_class() threshold];
          **(a1 + 56) = v17 <= v18;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v19 = **(a1 + 48);
            [objc_opt_class() threshold];
            v20 = **(a1 + 56);
            *buf = 134218496;
            v26 = v19;
            v27 = 2048;
            v28 = v21;
            v29 = 1024;
            v30 = v20;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Score: %0.3f  Threshold: %0.3f  Safe: %d", buf, 0x1Cu);
          }

          v6 = 0;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v6 = 4294967246;
    v22 = -50;
  }

  if (pixelBuffer && !v22 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v6;
}

- (int)processEmbedding:(id)embedding safetyScore:(float *)score isSafe:(BOOL *)safe
{
  embeddingCopy = embedding;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MADTextEmbeddingSafety_processEmbedding_safetyScore_isSafe___block_invoke;
  block[3] = &unk_1E8351940;
  block[4] = self;
  v13 = embeddingCopy;
  v14 = &v17;
  scoreCopy = score;
  safeCopy = safe;
  v10 = embeddingCopy;
  dispatch_sync(queue, block);
  LODWORD(score) = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return score;
}

uint64_t __62__MADTextEmbeddingSafety_processEmbedding_safetyScore_isSafe___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _processEmbedding:*(a1 + 40) safetyScore:*(a1 + 56) isSafe:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end