@interface VCPMADMLEnhancementTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADMLEnhancementTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id).cxx_construct;
- (int)convertPixelFormat:(__CVBuffer *)a3;
- (int)createModel;
- (int)run;
@end

@implementation VCPMADMLEnhancementTask

- (VCPMADMLEnhancementTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VCPMADMLEnhancementTask;
  v12 = [(VCPMADMLEnhancementTask *)&v15 init];
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

- (int)convertPixelFormat:(__CVBuffer *)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  cf = 0;
  pixelBuffer = v5;
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (self->_pixelBufferPool.value_)
  {
    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Pixel buffer format is not 32BGRA; copying", v18, 2u);
  }

  v12 = *MEMORY[0x1E6966130];
  v22[0] = &unk_1F49BDDF8;
  v13 = *MEMORY[0x1E6966208];
  v21[0] = v12;
  v21[1] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(pixelBuffer)];
  v22[1] = v14;
  v21[2] = *MEMORY[0x1E69660B8];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(pixelBuffer)];
  v21[3] = *MEMORY[0x1E69660D8];
  v22[2] = v15;
  v22[3] = MEMORY[0x1E695E0F8];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

  if (p_pixelBufferPool->value_)
  {
    CFRelease(p_pixelBufferPool->value_);
    p_pixelBufferPool->value_ = 0;
  }

  v10 = CVPixelBufferPoolCreate(0, 0, v16, &p_pixelBufferPool->value_);

  if (!v10)
  {
LABEL_2:
    value = self->_transferSession.value_;
    p_transferSession = &self->_transferSession;
    if (value || (v10 = VTPixelTransferSessionCreate(0, &p_transferSession->value_)) == 0)
    {
      v9 = p_pixelBufferPool->value_;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = CVPixelBufferPoolCreatePixelBuffer(0, v9, &cf);
      if (!v10)
      {
        v10 = VTPixelTransferSessionTransferImage(p_transferSession->value_, pixelBuffer, cf);
        if (!v10)
        {
          v11 = cf;
          if (cf)
          {
            v11 = CFRetain(cf);
          }

          v10 = 0;
          *a3 = v11;
        }
      }
    }
  }

  CF<__CVBuffer *>::~CF(&cf);
  CF<__CVBuffer *>::~CF(&pixelBuffer);
  return v10;
}

- (int)createModel
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = +[VCPMobileAssetManager sharedManager];
  v4 = [v3 retrieveAssetLocalURL:6];
  if (v4)
  {
    v5 = [(MADMLEnhancementRequest *)self->_request uuid];

    if (!v5)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] UUID not set, creating universal model", buf, 2u);
      }

      v14 = v4;
      goto LABEL_21;
    }

    v6 = [MEMORY[0x1E695DFF8] URLWithString:@"index.json" relativeToURL:v4];
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
    if (v7)
    {
      v34 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v34];
      v9 = v34;
      if (v9)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v36 = v9;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[VCPMADMLEnhancementTask] Serializing index.json error %@";
        v12 = 12;
LABEL_42:
        _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
LABEL_43:
        v13 = -18;
LABEL_44:

        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[VCPMADMLEnhancementTask] Parsing index.json error, not a dictionary";
        v12 = 2;
        goto LABEL_42;
      }

      v33 = v8;
      v19 = [(MADMLEnhancementRequest *)self->_request uuid];
      v8 = [v8 objectForKey:v19];

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v8 objectForKey:@"name"];
          modelName = self->_modelName;
          self->_modelName = v20;

          v22 = [v8 objectForKey:@"ver"];
          modelVersion = self->_modelVersion;
          self->_modelVersion = v22;

          v14 = [v3 retrieveAssetLocalURL:self->_modelName assetVersion:self->_modelVersion petWatchDog:0 cancelBlock:0];

          if (v14)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v24 = self->_modelName;
              v32 = self->_modelVersion;
              v25 = [(MADMLEnhancementRequest *)self->_request uuid];
              *buf = 138412802;
              v36 = v24;
              v37 = 2112;
              v38 = v32;
              v39 = 2112;
              v40 = v25;
              v26 = v25;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Creating %@ (%@) for %@", buf, 0x20u);
            }

LABEL_20:
LABEL_21:
            v15 = [MEMORY[0x1E695DFF8] URLWithString:@"pissarro.espresso.net" relativeToURL:v14];
            v16 = [[CNNMLEnhancerEspresso alloc] initWithModelFile:v15];
            enhancer = self->_enhancer;
            p_enhancer = &self->_enhancer;
            *p_enhancer = v16;

            if (*p_enhancer)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v36 = v15;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Model created from %@", buf, 0xCu);
              }

              v13 = 0;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to allocate enhancer", buf, 2u);
              }

              v13 = -108;
            }

            goto LABEL_45;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = self->_modelName;
            v29 = self->_modelVersion;
            v31 = [(MADMLEnhancementRequest *)self->_request uuid];
            *buf = 138412802;
            v36 = v30;
            v37 = 2112;
            v38 = v29;
            v39 = 2112;
            v40 = v31;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to retrieve %@ (%@) for %@", buf, 0x20u);
          }

          v4 = 0;
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Parsing index.json error, model info is not a dictionary", buf, 2u);
        }

        v13 = -18;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v28 = [(MADMLEnhancementRequest *)self->_request uuid];
          *buf = 138412290;
          v36 = v28;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] No model registered for target %@", buf, 0xCu);
        }

        v13 = -4;
      }

      v9 = v33;
      goto LABEL_44;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMADMLEnhancementTask] Cannot read index.json, using universal model", buf, 2u);
    }

    v14 = v4;
    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to retrieve Pissarro index or universal model", buf, 2u);
  }

  v13 = -18;
LABEL_45:

  return v13;
}

- (int)run
{
  v86[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  mach_timebase_info(&info);
  v5 = mach_absolute_time();
  v6 = mach_absolute_time();
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLEnhancementModelCreation", "", &buf, 2u);
  }

  v11 = [(VCPMADMLEnhancementTask *)self createModel];
  if (!v11)
  {
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLEnhancementModelCreation", "", &buf, 2u);
    }

    if (v6)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v14 = mach_absolute_time();
    numer = info.numer;
    LODWORD(v2) = info.denom;
    if ([(MADMLEnhancementRequest *)self->_request modelPreparationOnly])
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Finished model preparation", &buf, 2u);
      }

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    pixelBuffer = 0;
    v68 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&pixelBuffer orientation:&v68])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLEnhancementTask image loading failed", &buf, 2u);
      }

      request = self->_request;
      v17 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v86[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
      v20 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      [(MADMLEnhancementRequest *)request setError:v20];

      goto LABEL_19;
    }

    if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1111970369)
    {
      [(VCPMADMLEnhancementTask *)self convertPixelFormat:&pixelBuffer];
    }

    p_outputPixelBufferPool = &self->_outputPixelBufferPool;
    if (self->_outputPixelBufferPool.value_)
    {
      goto LABEL_24;
    }

    v38 = *MEMORY[0x1E6966208];
    v83[0] = *MEMORY[0x1E6966130];
    v83[1] = v38;
    v84[0] = &unk_1F49BDDF8;
    v84[1] = &unk_1F49BDE10;
    v39 = *MEMORY[0x1E69660D8];
    v83[2] = *MEMORY[0x1E69660B8];
    v83[3] = v39;
    v84[2] = &unk_1F49BDE28;
    v84[3] = MEMORY[0x1E695E0F8];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];
    if (p_outputPixelBufferPool->value_)
    {
      CFRelease(p_outputPixelBufferPool->value_);
      p_outputPixelBufferPool->value_ = 0;
    }

    v11 = CVPixelBufferPoolCreate(0, 0, v40, &self->_outputPixelBufferPool.value_);

    if (!v11)
    {
LABEL_24:
      v58 = mach_absolute_time();
      v59 = mach_absolute_time();
      v23 = VCPSignPostLog();
      spid = os_signpost_id_generate(v23);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        modelName = self->_modelName;
        modelVersion = self->_modelVersion;
        v28 = [(MADMLEnhancementRequest *)self->_request uuid];
        LODWORD(buf.data) = 138412802;
        *(&buf.data + 4) = modelName;
        WORD2(buf.height) = 2112;
        *(&buf.height + 6) = modelVersion;
        HIWORD(buf.width) = 2112;
        buf.rowBytes = v28;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADMLEnhancementModelExecution", "%@-%@ (%@)", &buf, 0x20u);
      }

      if (CVPixelBufferGetWidth(pixelBuffer) == 3840 && CVPixelBufferGetHeight(pixelBuffer) == 2160)
      {
        v29 = 0;
        goto LABEL_30;
      }

      v65 = 0;
      v66 = pixelBuffer;
      unlockFlags = 1;
      if (pixelBuffer)
      {
        v11 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        v65 = v11;
        if (!v11 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = v66, WORD2(buf.height) = 1024, *(&buf.height + 6) = v11, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v11 = v65) == 0))
        {
          buf.data = CVPixelBufferGetBaseAddress(pixelBuffer);
          buf.height = CVPixelBufferGetHeight(pixelBuffer);
          buf.width = CVPixelBufferGetWidth(pixelBuffer);
          buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
          pixelBufferOut = 0;
          v31 = CVPixelBufferPoolCreatePixelBuffer(0, p_outputPixelBufferPool->value_, &pixelBufferOut);
          if (v31)
          {
            v11 = 0;
            v37 = 16;
            goto LABEL_57;
          }

          CVPixelBufferLock::CVPixelBufferLock(v63, pixelBufferOut, 0);
          v11 = v63[0];
          if (v63[0])
          {
            v31 = 0;
          }

          else
          {
            dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
            dest.height = CVPixelBufferGetHeight(pixelBufferOut);
            dest.width = CVPixelBufferGetWidth(pixelBufferOut);
            dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
            v31 = vImageScale_ARGB8888(&buf, &dest, 0, 0x20u);
            if (v31)
            {
              v11 = 0;
              v37 = 16;
              goto LABEL_56;
            }

            v11 = CVPixelBufferLock::Unlock(v63);
            if (!v11)
            {
              v11 = CVPixelBufferLock::Unlock(&v65);
              if (!v11)
              {
                CVPixelBufferRelease(pixelBuffer);
                v37 = 0;
                v11 = 0;
                pixelBuffer = pixelBufferOut;
                goto LABEL_56;
              }
            }
          }

          v37 = 1;
LABEL_56:
          CVPixelBufferLock::~CVPixelBufferLock(v63);
LABEL_57:
          if (v66 && !v65 && CVPixelBufferUnlockBaseAddress(v66, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }

          if (v37)
          {
            if (v37 != 16)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v29 = v31;
LABEL_30:
          value = p_outputPixelBufferPool->value_;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v31 = CVPixelBufferPoolCreatePixelBuffer(0, value, &cf);
          if (!v31)
          {
            [(CNNMLEnhancerEspresso *)self->_enhancer inferenceWithPixelBuffer:pixelBuffer toDestinationPixelBuffer:cf];
            v32 = CVPixelBufferGetIOSurface(cf);
            if (!v32 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.data) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLEnhancementTask failed creating output IOSurface", &buf, 2u);
            }

            v33 = self->_request;
            v34 = [objc_alloc(MEMORY[0x1E69AE350]) initWithSurface:v32];
            v81 = v34;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
            [(MADMLEnhancementRequest *)v33 setResults:v35];

            v36 = v32;
            v31 = v29;
            goto LABEL_65;
          }

LABEL_64:
          v36 = 0;
LABEL_65:
          v41 = VCPSignPostLog();
          v42 = v41;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            LOWORD(buf.data) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADMLEnhancementModelExecution", "", &buf, 2u);
          }

          if (v59)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          v43 = mach_absolute_time();
          v44 = info.numer;
          LODWORD(v3) = info.denom;
          v74[0] = @"QoS";
          v45 = qos_class_self();
          spida = VCPMAQoSDescription(v45);
          v75[0] = spida;
          v75[1] = @"AerialWallpaperEnhancement";
          v74[1] = @"RequestType";
          v74[2] = @"AssetType";
          v76 = vbslq_s8(vceqzq_s64(*&self->_modelName), vdupq_n_s64(@"Unknown"), *&self->_modelName);
          v74[3] = @"AssetSubtype";
          v74[4] = @"Client";
          v46 = [(MADMLEnhancementRequest *)self->_request uuid];
          if (v46)
          {
            v47 = [(MADMLEnhancementRequest *)self->_request uuid];
          }

          else
          {
            v47 = @"Unknown";
          }

          v77 = v47;
          v74[5] = @"QueuedTime";
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:((v14 - v5) * numer) / v2 / 1000000.0];
          v78 = v48;
          v74[6] = @"ProcessingTime";
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:((v43 - v58) * v44) / v3 / 1000000.0];
          v79 = v49;
          v74[7] = @"Error";
          v50 = [MEMORY[0x1E696AD98] numberWithInt:-v31];
          v80 = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:8];

          if (v46)
          {
          }

          v52 = +[VCPMADCoreAnalyticsManager sharedManager];
          [v52 sendEvent:@"com.apple.mediaanalysisd.service.request" withAnalytics:v51];

          if (v31)
          {
            v53 = self->_request;
            v54 = MEMORY[0x1E696ABC0];
            v72 = *MEMORY[0x1E696A578];
            v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image pre-processing failed"];
            v73 = v55;
            v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            v57 = [v54 errorWithDomain:*MEMORY[0x1E696A768] code:v31 userInfo:v56];
            [(MADMLEnhancementRequest *)v53 setError:v57];
          }

          else if (pixelBuffer)
          {
            CVPixelBufferRelease(pixelBuffer);
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v11 = -50;
      }
    }
  }

LABEL_20:
  CF<__CVBuffer *>::~CF(&cf);
  return v11;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end