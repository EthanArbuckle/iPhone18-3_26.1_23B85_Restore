@interface MADTextEmbeddingThreshold
+ (float)computeThresholdBase:(float)a3;
+ (id)createForEmbeddingVersion:(unint64_t)a3;
- (MADTextEmbeddingThreshold)init;
- (int)_createPlan;
- (int)_loadResources;
- (int)_processEmbedding:(id)a3 bias:(float *)a4 scale:(float *)a5 threshold:(float *)a6;
- (int)loadResources;
- (int)processEmbedding:(id)a3 bias:(float *)a4 scale:(float *)a5 threshold:(float *)a6;
- (void)dealloc;
@end

@implementation MADTextEmbeddingThreshold

- (MADTextEmbeddingThreshold)init
{
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingThreshold;
  v2 = [(MADTextEmbeddingThreshold *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingThreshold", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)createForEmbeddingVersion:(unint64_t)a3
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 <= 4)
  {
    if (a3 == 3)
    {
      v4 = MADTextEmbeddingThresholdMD3;
      goto LABEL_12;
    }

    if (a3 == 4)
    {
      v4 = MADTextEmbeddingThresholdMD4;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case 5uLL:
        v4 = MADTextEmbeddingThresholdMD5;
        goto LABEL_12;
      case 7uLL:
        v4 = MADTextEmbeddingThresholdMD6;
        goto LABEL_12;
      case 9uLL:
        v4 = MADTextEmbeddingThresholdMD7v2;
LABEL_12:
        v5 = objc_alloc_init(v4);
        goto LABEL_13;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Embedding version %d not supported", v7, 8u);
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (void)dealloc
{
  if (espresso_plan_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to destroy plan", buf, 2u);
  }

  if (espresso_context_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to destroy context", buf, 2u);
  }

  v3.receiver = self;
  v3.super_class = MADTextEmbeddingThreshold;
  [(MADTextEmbeddingThreshold *)&v3 dealloc];
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

  v4 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v5 = [v4 resourceURL];

  v6 = MEMORY[0x1E695DFF8];
  v7 = [objc_opt_class() modelName];
  v8 = [v6 URLWithString:v7 relativeToURL:v5];

  v9 = [v8 path];
  [v9 UTF8String];
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
            if (!blob_dimensions)
            {
              blob_dimensions = espresso_network_bind_buffer();
            }
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
  aBlock[2] = __43__MADTextEmbeddingThreshold__loadResources__block_invoke;
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
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADTextEmbeddingThreshold_loadResources", " enableTelemetry=YES ", buf, 2u);
  }

  v2 = v3[2](v3);
  v8 = VCPSignPostPersistentLog();
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = qos_class_self();
    v11 = VCPMAQoSDescription(v10);
    v12 = v11;
    v13 = [v11 UTF8String];
    v14 = "Failure";
    if (!v2)
    {
      v14 = "Success";
    }

    *buf = 136446466;
    v18 = v13;
    v19 = 2082;
    v20 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v5, "MADTextEmbeddingThreshold_loadResources", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
  }

  return v2;
}

uint64_t __43__MADTextEmbeddingThreshold__loadResources__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[48])
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
        *v9 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to create ANE context", v9, 2u);
      }

      return 4294967278;
    }

    return v3;
  }

  v10 = *MEMORY[0x1E69660D8];
  v11[0] = MEMORY[0x1E695E0F8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [objc_opt_class() embeddingLength];
  v6 = *(a1 + 32);
  v7 = *(v6 + 384);
  if (v7)
  {
    CFRelease(v7);
    *(v6 + 384) = 0;
  }

  v3 = CVPixelBufferCreate(0, v5, 1uLL, 0x4C303068u, v4, (v6 + 384));
  if (!v3)
  {

    v2 = *(a1 + 32);
    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to create input buffer", v9, 2u);
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
  v5[2] = __42__MADTextEmbeddingThreshold_loadResources__block_invoke;
  v5[3] = &unk_1E834C4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__MADTextEmbeddingThreshold_loadResources__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadResources];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (float)computeThresholdBase:(float)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = logf(a3);
  v5 = logf(1.0 - a3);
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 134219008;
    v8 = a3;
    v9 = 2048;
    v10 = 1.0 - a3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = (v4 - v5);
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Text|Threshold] Base: ln(%0.3f) - ln(%0.3f) = %0.6f - %0.6f = %0.6f", &v7, 0x34u);
  }

  return v4 - v5;
}

- (int)_processEmbedding:(id)a3 bias:(float *)a4 scale:(float *)a5 threshold:(float *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(MADTextEmbeddingThreshold *)self _loadResources];
  if (v11)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to load network", buf, 2u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__MADTextEmbeddingThreshold__processEmbedding_bias_scale_threshold___block_invoke;
    aBlock[3] = &unk_1E834E008;
    v26 = v10;
    v27 = self;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v12 = _Block_copy(aBlock);
    v13 = VCPSignPostPersistentLog();
    v14 = os_signpost_id_generate(v13);

    v15 = VCPSignPostPersistentLog();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MADTextEmbeddingThreshold_processEmbedding", " enableTelemetry=YES ", buf, 2u);
    }

    v11 = v12[2](v12);
    v17 = VCPSignPostPersistentLog();
    v18 = v17;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = qos_class_self();
      v20 = VCPMAQoSDescription(v19);
      v21 = v20;
      v22 = [v20 UTF8String];
      v23 = "Failure";
      if (!v11)
      {
        v23 = "Success";
      }

      *buf = 136446466;
      v32 = v22;
      v33 = 2082;
      v34 = v23;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v14, "MADTextEmbeddingThreshold_processEmbedding", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
    }
  }

  return v11;
}

uint64_t __68__MADTextEmbeddingThreshold__processEmbedding_bias_scale_threshold___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Embedding version (%@) is not supported", buf, 0xCu);
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
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Embedding type (%@) is not supported", buf, 0xCu);
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
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Embedding size (%@) is not supported", buf, 0xCu);
    }

    return 4294967246;
  }

  v4 = *(*(a1 + 40) + 384);
  v22 = 0;
  pixelBuffer = v4;
  unlockFlags = 0;
  if (v4)
  {
    v5 = CVPixelBufferLockBaseAddress(v4, 0);
    v22 = v5;
    if (!v5 || (v6 = v5, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v26 = *&v4, v27 = 1024, LODWORD(v28) = v6, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v6 = v22) == 0))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(*(*(a1 + 40) + 384));
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
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Threshold] Failed to execute network", buf, 2u);
          }
        }

        else
        {
          [objc_opt_class() thresholdBase];
          v16 = *(a1 + 48);
          *v16 = **(*(a1 + 40) + 48);
          v17 = **(*(a1 + 40) + 216);
          **(a1 + 56) = v17;
          **(a1 + 64) = (v18 - *v16) / v17;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v19 = **(a1 + 48);
            v20 = **(a1 + 56);
            v21 = **(a1 + 64);
            *buf = 134218496;
            v26 = v19;
            v27 = 2048;
            v28 = v20;
            v29 = 2048;
            v30 = v21;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Bias: %0.3f  Scale: %0.3f  Threshold: %0.3f", buf, 0x20u);
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

- (int)processEmbedding:(id)a3 bias:(float *)a4 scale:(float *)a5 threshold:(float *)a6
{
  v10 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MADTextEmbeddingThreshold_processEmbedding_bias_scale_threshold___block_invoke;
  v14[3] = &unk_1E834D600;
  v14[4] = self;
  v15 = v10;
  v16 = &v20;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v12 = v10;
  dispatch_sync(queue, v14);
  LODWORD(a5) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return a5;
}

uint64_t __67__MADTextEmbeddingThreshold_processEmbedding_bias_scale_threshold___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _processEmbedding:*(a1 + 40) bias:*(a1 + 56) scale:*(a1 + 64) threshold:*(a1 + 72)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end