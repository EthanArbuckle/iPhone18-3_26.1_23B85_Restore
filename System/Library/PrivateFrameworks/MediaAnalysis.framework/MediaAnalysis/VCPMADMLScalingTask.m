@interface VCPMADMLScalingTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADMLScalingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id).cxx_construct;
- (int)convertPixelFormat:(__CVBuffer *)a3;
- (int)run;
@end

@implementation VCPMADMLScalingTask

- (VCPMADMLScalingTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VCPMADMLScalingTask;
  v12 = [(VCPMADMLScalingTask *)&v15 init];
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
  v22[0] = &unk_1F49BC190;
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

- (int)run
{
  v122[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = [(MADMLScalingRequest *)self->_request scaledImageWidth];
  v4 = [(MADMLScalingRequest *)self->_request scaledImageHeight];
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPMADMLScalingTask", "", &buf, 2u);
  }

  texture = 0;
  v97 = 0;
  if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&texture orientation:&v97])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to load pixel buffer", &buf, 2u);
    }

    request = self->_request;
    v10 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load pixel buffer"];
    v122[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
    v13 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v12];
    [(MADMLScalingRequest *)request setError:v13];

    goto LABEL_9;
  }

  if (CVPixelBufferGetPixelFormatType(texture) != 1111970369 && [(VCPMADMLScalingTask *)self convertPixelFormat:&texture])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to convert pixel format", &buf, 2u);
    }

    v16 = self->_request;
    v17 = MEMORY[0x1E696ABC0];
    v119 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to convert pixel format"];
    v120 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v20 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
    [(MADMLScalingRequest *)v16 setError:v20];

    goto LABEL_9;
  }

  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  v23 = v3;
  v92 = v4;
  p_outputPixelBufferPool = &self->_outputPixelBufferPool;
  v25 = self->_outputPixelBufferPool.value_;
  if (!v25)
  {
    value.data = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v32 = Mutable;
    theDict[0] = Mutable;
    if (value.data && Mutable)
    {
      valuePtr[0] = v23;
      v33 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v33;
      if (v33)
      {
        CFDictionarySetValue(v32, *MEMORY[0x1E6966208], v33);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      v34 = theDict[0];
      valuePtr[0] = v92;
      v35 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v35;
      if (v35)
      {
        CFDictionarySetValue(v34, *MEMORY[0x1E69660B8], v35);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      v36 = theDict[0];
      valuePtr[0] = 1111970369;
      v37 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v37;
      if (v37)
      {
        CFDictionarySetValue(v36, *MEMORY[0x1E6966130], v37);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      CFDictionarySetValue(theDict[0], *MEMORY[0x1E69660D8], value.data);
      v38 = theDict[0];
      if (p_outputPixelBufferPool->value_)
      {
        CFRelease(p_outputPixelBufferPool->value_);
        p_outputPixelBufferPool->value_ = 0;
      }

      if (!CVPixelBufferPoolCreate(0, 0, v38, &self->_outputPixelBufferPool.value_))
      {
        CF<__CVBuffer *>::~CF(theDict);
        CF<__CVBuffer *>::~CF(&value.data);
        v25 = p_outputPixelBufferPool->value_;
        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer pool", &buf, 2u);
      }

      v39 = self->_request;
      v40 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A578];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer pool"];
      v116 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v43 = [v40 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v42];
      [(MADMLScalingRequest *)v39 setError:v43];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer pool", &buf, 2u);
      }

      v48 = self->_request;
      v49 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A578];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer pool"];
      v118 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v43 = [v49 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v42];
      [(MADMLScalingRequest *)v48 setError:v43];
    }

    CF<__CVBuffer *>::~CF(theDict);
    CF<__CVBuffer *>::~CF(&value.data);
    goto LABEL_9;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (CVPixelBufferPoolCreatePixelBuffer(0, v25, &cf))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer", &buf, 2u);
    }

    v26 = self->_request;
    v27 = MEMORY[0x1E696ABC0];
    v113 = *MEMORY[0x1E696A578];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer"];
    v114 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v30 = [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v29];
    [(MADMLScalingRequest *)v26 setError:v30];

    goto LABEL_9;
  }

  if (v23 < Width || v92 < Height)
  {
    if (!+[VCPMADMLScalingTask getDownsamplingMode])
    {
      v56 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:texture];
      v111 = @"inputScale";
      *&v57 = v23 / Width;
      v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
      v112 = v58;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v60 = [v56 imageByApplyingFilter:@"CILanczosScaleTransform" withInputParameters:v59];

      v61 = [MEMORY[0x1E695F620] context];
      [v61 render:v60 toCVPixelBuffer:cf];

      goto LABEL_86;
    }

    if (+[VCPMADMLScalingTask getDownsamplingMode]== 1)
    {
      v50 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:texture];
      v109[0] = @"inputScale";
      *&v51 = v23 / Width;
      v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
      v110[0] = v52;
      v110[1] = &unk_1F49BC1A8;
      v109[1] = @"inputB";
      v109[2] = @"inputC";
      v110[2] = &unk_1F49BB5A8;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
      v54 = [v50 imageByApplyingFilter:@"CIBicubicScaleTransform" withInputParameters:v53];

      v55 = [MEMORY[0x1E695F620] context];
      [v55 render:v54 toCVPixelBuffer:cf];

LABEL_86:
      CVBufferPropagateAttachments(texture, cf);
      goto LABEL_87;
    }

    if (+[VCPMADMLScalingTask getDownsamplingMode]!= 2)
    {
      goto LABEL_86;
    }

    CVPixelBufferLock::CVPixelBufferLock(theDict, texture, 1uLL);
    if (!LODWORD(theDict[0]))
    {
      buf.data = CVPixelBufferGetBaseAddress(texture);
      buf.height = CVPixelBufferGetHeight(texture);
      buf.width = CVPixelBufferGetWidth(texture);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(texture);
      CVPixelBufferLock::CVPixelBufferLock(valuePtr, cf, 0);
      if (!valuePtr[0])
      {
        value.data = CVPixelBufferGetBaseAddress(cf);
        value.height = CVPixelBufferGetHeight(cf);
        value.width = CVPixelBufferGetWidth(cf);
        value.rowBytes = CVPixelBufferGetBytesPerRow(cf);
        vImageScale_ARGB8888(&buf, &value, 0, 0);
        if (!CVPixelBufferLock::Unlock(theDict) && !CVPixelBufferLock::Unlock(valuePtr))
        {
          CVPixelBufferLock::~CVPixelBufferLock(valuePtr);
          CVPixelBufferLock::~CVPixelBufferLock(theDict);
          goto LABEL_86;
        }
      }

      CVPixelBufferLock::~CVPixelBufferLock(valuePtr);
    }

    CVPixelBufferLock::~CVPixelBufferLock(theDict);
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (![(MADMLScalingRequest *)self->_request scalingModelIndex])
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out_res_%dx%d", v23, v92];
    v46 = [[CNNMLScalerEspresso alloc] initWithConfig:v44 modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] scalingFactor:(v23 / Width)];
    v47 = v46;
    if (!v46)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize model", &buf, 2u);
      }

      v68 = self->_request;
      v69 = MEMORY[0x1E696ABC0];
      v107 = *MEMORY[0x1E696A578];
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize model"];
      v108 = v70;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v72 = [v69 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v71];
      [(MADMLScalingRequest *)v68 setError:v72];

      goto LABEL_9;
    }

LABEL_59:
    v62 = [(CNNMLScalerEspresso *)v46 inferenceWithPixelBuffer:texture toDestinationPixelBuffer:cf];
    goto LABEL_60;
  }

  if ([(MADMLScalingRequest *)self->_request scalingModelIndex]!= 1)
  {
    goto LABEL_87;
  }

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"main_input_tensor_1_1_4_%d_%d_", Height, Width];
  v45 = (v23 / Width);
  v46 = [[CNNMLScalerEspressoV2 alloc] initWithConfig:v44 modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] inputSize:v45 scalingFactor:Width, Height];
  v47 = v46;
  if (v46)
  {
    goto LABEL_59;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.data) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize E5 model", &buf, 2u);
  }

  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out_res_%dx%d", v23, v92];
  v74 = [[CNNMLScalerEspresso alloc] initWithConfig:v73 modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] scalingFactor:v45];
  v75 = v74;
  if (!v74)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize model", &buf, 2u);
    }

    v76 = self->_request;
    v77 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A578];
    v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize model"];
    v106 = v78;
    v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v80 = [v77 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v79];
    [(MADMLScalingRequest *)v76 setError:v80];

    goto LABEL_9;
  }

  v62 = [(CNNMLScalerEspresso *)v74 inferenceWithPixelBuffer:texture toDestinationPixelBuffer:cf];

LABEL_60:
  if (v62)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to inference with model", &buf, 2u);
    }

    v63 = self->_request;
    v64 = MEMORY[0x1E696ABC0];
    v103 = *MEMORY[0x1E696A578];
    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to inference with model"];
    v104 = v65;
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v67 = [v64 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v66];
    [(MADMLScalingRequest *)v63 setError:v67];

    goto LABEL_9;
  }

LABEL_87:
  v81 = CVPixelBufferGetIOSurface(cf);
  if (!v81)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageCaptionTask failed creating output IOSurface", &buf, 2u);
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask failed creating output IOSurface", &buf, 2u);
    }

    v87 = self->_request;
    v88 = MEMORY[0x1E696ABC0];
    v101 = *MEMORY[0x1E696A578];
    v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating output IOSurface failed"];
    v102 = v89;
    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v91 = [v88 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v90];
    [(MADMLScalingRequest *)v87 setError:v91];

    goto LABEL_9;
  }

  v82 = self->_request;
  v83 = [objc_alloc(MEMORY[0x1E69AE360]) initWithSurface:v81];
  v100 = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  [(MADMLScalingRequest *)v82 setResults:v84];

  v85 = VCPSignPostLog();
  v86 = v85;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v86, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADMLScalingTask", "", &buf, 2u);
  }

  v14 = v81;
LABEL_10:
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }

  CF<__CVBuffer *>::~CF(&cf);
  return 0;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end