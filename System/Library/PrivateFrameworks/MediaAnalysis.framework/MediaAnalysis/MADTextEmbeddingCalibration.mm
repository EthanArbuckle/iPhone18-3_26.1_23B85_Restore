@interface MADTextEmbeddingCalibration
- (MADTextEmbeddingCalibration)init;
- (int)_createPlan;
- (int)_loadResources;
- (int)_processEmbedding:(id)a3 version:(unint64_t)a4 typeSize:(unint64_t)a5 mean:(float *)a6 standardDeviation:(float *)a7;
- (int)loadResources;
- (int)processEmbedding:(id)a3 mean:(float *)a4 standardDeviation:(float *)a5;
- (int)processEmbedding:(id)a3 version:(unint64_t)a4 typeSize:(unint64_t)a5 mean:(float *)a6 standardDeviation:(float *)a7;
- (void)dealloc;
@end

@implementation MADTextEmbeddingCalibration

- (MADTextEmbeddingCalibration)init
{
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingCalibration;
  v2 = [(MADTextEmbeddingCalibration *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingCalibration", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dealloc
{
  if (espresso_plan_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to destroy plan", buf, 2u);
  }

  if (espresso_context_destroy() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to destroy context", buf, 2u);
  }

  v3.receiver = self;
  v3.super_class = MADTextEmbeddingCalibration;
  [(MADTextEmbeddingCalibration *)&v3 dealloc];
}

- (int)_createPlan
{
  v20 = *MEMORY[0x1E69E9840];
  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    return -18;
  }

  v4 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v5 = [v4 resourceURL];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"text_calibration_md3.espresso.net" relativeToURL:v5];
  v7 = [v6 path];
  [v7 UTF8String];
  blob_dimensions = espresso_plan_add_network();

  if (!blob_dimensions)
  {
    blob_dimensions = espresso_plan_build();
    if (!blob_dimensions)
    {
      v18 = 0u;
      v19 = 0u;
      blob_dimensions = espresso_network_query_blob_dimensions();
      if (!blob_dimensions)
      {
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v18, xmmword_1C9F62C00), vceqq_s64(v19, vdupq_n_s64(1uLL)))))))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v10 = 134218752;
            v11 = v18.i64[0];
            v12 = 2048;
            v13 = v18.i64[1];
            v14 = 2048;
            v15 = v19.i64[0];
            v16 = 2048;
            v17 = v19.i64[1];
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Input has unexpected dimension %zux%zux%zux%zu", &v10, 0x2Au);
          }

          blob_dimensions = -18;
        }

        else
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
      }
    }
  }

  return blob_dimensions;
}

- (int)_loadResources
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_inputBuffer.value_)
  {
LABEL_2:
    if (self->_context || (context = espresso_create_context(), (self->_context = context) != 0))
    {
      if (self->_plan)
      {
        return 0;
      }

      else
      {
        v4 = [(MADTextEmbeddingCalibration *)self _createPlan];
        if (v4)
        {
          espresso_plan_destroy();
          self->_plan = 0;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to create ANE context", v8, 2u);
      }

      return -18;
    }

    return v4;
  }

  v9 = *MEMORY[0x1E69660D8];
  v10[0] = MEMORY[0x1E695E0F8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  value = self->_inputBuffer.value_;
  if (value)
  {
    CFRelease(value);
    self->_inputBuffer.value_ = 0;
  }

  v4 = CVPixelBufferCreate(0, 0x200uLL, 1uLL, 0x4C303068u, v5, &self->_inputBuffer.value_);
  if (!v4)
  {

    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to create input buffer", v8, 2u);
  }

  return v4;
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
  v5[2] = __44__MADTextEmbeddingCalibration_loadResources__block_invoke;
  v5[3] = &unk_1E834C4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__MADTextEmbeddingCalibration_loadResources__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadResources];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)_processEmbedding:(id)a3 version:(unint64_t)a4 typeSize:(unint64_t)a5 mean:(float *)a6 standardDeviation:(float *)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = [(MADTextEmbeddingCalibration *)self _loadResources];
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to load calibration network", buf, 2u);
    }

    goto LABEL_22;
  }

  if (a4 != 3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      *buf = 138412290;
      *v22 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Calibration not supported for embedding version %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (a5 != 2)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Calibration only supported for fp16", buf, 2u);
    }

    goto LABEL_21;
  }

  v14 = [v12 length] >> 1;
  if (v14 != 512)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      *buf = 138412546;
      *v22 = v17;
      *&v22[8] = 2112;
      *&v22[10] = &unk_1F49BD9A8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Embedding size (%@) does not match expected (%@)", buf, 0x16u);
    }

LABEL_21:
    v13 = -50;
    goto LABEL_22;
  }

  value = self->_inputBuffer.value_;
  *&v22[4] = value;
  *&v22[12] = 0;
  if (value)
  {
    v13 = CVPixelBufferLockBaseAddress(value, 0);
    *buf = v13;
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(self->_inputBuffer.value_);
      memcpy(BaseAddress, [v12 bytes], 0x400uLL);
      v13 = CVPixelBufferLock::Unlock(buf);
      if (!v13)
      {
        v13 = espresso_plan_execute_sync();
        if (v13)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Text|Calibration] Failed to execute calibration network", v20, 2u);
          }
        }

        else
        {
          *a6 = *self->_meanBuffer.data;
          *a7 = *self->_standardDeviationBuffer.data;
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

    v13 = -50;
    *buf = -50;
  }

  if (*&v22[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&v22[4], *&v22[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

LABEL_22:

  return v13;
}

- (int)processEmbedding:(id)a3 mean:(float *)a4 standardDeviation:(float *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MADTextEmbeddingCalibration_processEmbedding_mean_standardDeviation___block_invoke;
  block[3] = &unk_1E8350038;
  v13 = v8;
  v14 = self;
  v15 = &v18;
  v16 = a4;
  v17 = a5;
  v10 = v8;
  dispatch_sync(queue, block);
  LODWORD(a4) = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  return a4;
}

void __71__MADTextEmbeddingCalibration_processEmbedding_mean_standardDeviation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) type] == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2 * ([*(a1 + 32) type] != 0);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) data];
  *(*(*(a1 + 48) + 8) + 24) = [v3 _processEmbedding:v4 version:objc_msgSend(*(a1 + 32) typeSize:"version") mean:v2 standardDeviation:{*(a1 + 56), *(a1 + 64)}];
}

- (int)processEmbedding:(id)a3 version:(unint64_t)a4 typeSize:(unint64_t)a5 mean:(float *)a6 standardDeviation:(float *)a7
{
  v12 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MADTextEmbeddingCalibration_processEmbedding_version_typeSize_mean_standardDeviation___block_invoke;
  block[3] = &unk_1E8350060;
  block[4] = self;
  v17 = v12;
  v18 = &v23;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v14 = v12;
  dispatch_sync(queue, block);
  LODWORD(a6) = *(v24 + 6);

  _Block_object_dispose(&v23, 8);
  return a6;
}

uint64_t __88__MADTextEmbeddingCalibration_processEmbedding_version_typeSize_mean_standardDeviation___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _processEmbedding:*(a1 + 40) version:*(a1 + 56) typeSize:*(a1 + 64) mean:*(a1 + 72) standardDeviation:*(a1 + 80)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end