@interface MADVideoSessionSafetyClassificationTask
+ (id)_addToDetectionResults:(id)a3 sensitivityKey:(id)a4 sensitivity:(id)a5 sensitivityScoreKey:(id)a6 sensitivityScore:(id)a7;
+ (id)taskWithRequest:(id)a3 signpostPayload:(id)a4;
- (BOOL)processPixelBufferAsset:(id)a3 resultHandler:(id)a4;
- (MADVideoSessionSafetyClassificationTask)initWithRequestID:(id)a3 enableDetectionTypeN:(BOOL)a4 enableDetectionTypeGV:(BOOL)a5 signpostPayload:(id)a6;
- (id).cxx_construct;
- (int)createUprightPixelBuffer:(__CVBuffer *)a3 fromSourceBuffer:(__CVBuffer *)a4 andOrientation:(unsigned int)a5;
- (int)scalePixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 regionOfInterest:(CGRect)a5 width:(int)a6 height:(int)a7 format:(unsigned int)a8;
- (unint64_t)performQRCodeDetections:(unint64_t)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 results:(id *)a6;
@end

@implementation MADVideoSessionSafetyClassificationTask

- (MADVideoSessionSafetyClassificationTask)initWithRequestID:(id)a3 enableDetectionTypeN:(BOOL)a4 enableDetectionTypeGV:(BOOL)a5 signpostPayload:(id)a6
{
  v7 = a5;
  v8 = a4;
  v44[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v36.receiver = self;
  v36.super_class = MADVideoSessionSafetyClassificationTask;
  v12 = [(MADVideoSessionSafetyClassificationTask *)&v36 init];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [v10 copy];
  requestID = v12->_requestID;
  v12->_requestID = v13;

  objc_storeStrong(&v12->_signpostPayload, a6);
  v12->_enableDetectionTypeN = v8;
  v12->_enableDetectionTypeGV = v7;
  if (v8)
  {
    v15 = *MEMORY[0x1E69CA820];
    v43[0] = *MEMORY[0x1E69CA830];
    v43[1] = v15;
    v44[0] = &unk_1F49BE440;
    v44[1] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v35 = 0;
    v17 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v16 error:&v35];
    v18 = v35;
    safetyHandlerTypeN = v12->_safetyHandlerTypeN;
    v12->_safetyHandlerTypeN = v17;

    if (!v12->_safetyHandlerTypeN || v18)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        *buf = 138412546;
        v40 = v29;
        v41 = 2112;
        v42 = v18;
        v30 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSessionSafetyClassificationTask] Failed to create safetyHandlerTypeN %@: %@", buf, 0x16u);
      }

      goto LABEL_18;
    }

    if (!v12->_enableDetectionTypeGV)
    {
      goto LABEL_10;
    }

LABEL_8:
    v20 = *MEMORY[0x1E69CA820];
    v37[0] = *MEMORY[0x1E69CA830];
    v37[1] = v20;
    v38[0] = &unk_1F49BE458;
    v38[1] = MEMORY[0x1E695E118];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v16 = v21;
    v34 = 0;
    v22 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v21 error:&v34];
    v18 = v34;
    safetyHandlerTypeGV = v12->_safetyHandlerTypeGV;
    v12->_safetyHandlerTypeGV = v22;

    if (v12->_safetyHandlerTypeGV && !v18)
    {
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 138412546;
      v40 = v31;
      v41 = 2112;
      v42 = v18;
      v32 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSessionSafetyClassificationTask] Failed to create safetyHandlerTypeGV %@: %@", buf, 0x16u);
    }

LABEL_18:

    v28 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_10:
  v24 = dispatch_queue_create("com.apple.mediaanalysis.MADVideoSessionSafetyClassification", MEMORY[0x1E69E96A8]);
  dispatchQueue = v12->_dispatchQueue;
  v12->_dispatchQueue = v24;

  v26 = dispatch_group_create();
  dispatchGroup = v12->_dispatchGroup;
  v12->_dispatchGroup = v26;

LABEL_11:
  v28 = v12;
LABEL_19:

  return v28;
}

+ (id)taskWithRequest:(id)a3 signpostPayload:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v8 = v6;
    v9 = [a1 alloc];
    v10 = [v8 requestID];
    v11 = [v9 initWithRequestID:v10 enableDetectionTypeN:objc_msgSend(v8 enableDetectionTypeGV:"enableDetectionTypeN") signpostPayload:{objc_msgSend(v8, "enableDetectionTypeGV"), v7}];
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

- (int)scalePixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 regionOfInterest:(CGRect)a5 width:(int)a6 height:(int)a7 format:(unsigned int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = CVPixelBufferGetWidth(a3);
  v19 = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (v18 == v10 && v19 == v9 && PixelFormatType == v8 && (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectIsEmpty(v27)))
  {
    *a4 = CFRetain(a3);
    return 0;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    if (CGRectGetMinX(v28) < 0.0 || (v29.origin.x = x, v29.origin.y = y, v29.size.width = width, v29.size.height = height, CGRectGetMinX(v29) > 1.0) || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectGetMinY(v30) < 0.0) || (v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = height, CGRectGetMinY(v31) > 1.0) || (v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, CGRectGetMaxX(v32) < 0.0) || (v33.origin.x = x, v33.origin.y = y, v33.size.width = width, v33.size.height = height, CGRectGetMaxX(v33) > 1.0) || (v34.origin.x = x, v34.origin.y = y, v34.size.width = width, v34.size.height = height, CGRectGetMaxY(v34) < 0.0) || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, CGRectGetMaxY(v35) > 1.0))
    {
      x = fmin(fmax(x / v18, 0.0), 1.0);
      y = fmin(fmax(y / v19, 0.0), 1.0);
      width = fmin(fmax(width / v18, 0.0), 1.0);
      height = fmin(fmax(height / v19, 0.0), 1.0);
    }

    v22 = x;
    v23 = y;
    v24 = width;
    v25 = height;

    return Scaler::ScaleCropped(&self->_scaler, *&v22, a3, a4, v10, v9, v8);
  }
}

- (int)createUprightPixelBuffer:(__CVBuffer *)a3 fromSourceBuffer:(__CVBuffer *)a4 andOrientation:(unsigned int)a5
{
  v49 = *MEMORY[0x1E69E9840];
  if (a5 == 1)
  {
    v7 = 0;
    *a3 = CFRetain(a4);
    return v7;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v10 = PixelFormatType;
  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1111970369)
    {
      goto LABEL_9;
    }

    v11 = 1380401729;
  }

  else
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_9;
    }

    v11 = 1094862674;
  }

  if (PixelFormatType == v11)
  {
LABEL_9:
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    v14 = Height;
    *v48 = 0u;
    memset(buf, 0, sizeof(buf));
    if (a5 <= 4)
    {
      v15 = Width;
    }

    else
    {
      v15 = Height;
    }

    if (a5 <= 4)
    {
      v16 = Height;
    }

    else
    {
      v16 = Width;
    }

    if (a5 <= 4)
    {
      switch(a5)
      {
        case 2u:
          v18 = Width;
          *buf = 0xBFF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0x3FF0000000000000;
          goto LABEL_32;
        case 3u:
          v20 = Width;
          v21 = Height;
          *buf = 0xBFF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0xBFF0000000000000;
          goto LABEL_37;
        case 4u:
          v17 = Height;
          *buf = 0x3FF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0xBFF0000000000000;
          goto LABEL_23;
      }
    }

    else
    {
      if (a5 <= 6)
      {
        if (a5 != 5)
        {
          v17 = Width;
          *&buf[8] = xmmword_1C9F60750;
          *&buf[24] = 0;
          v48[0] = 0.0;
LABEL_23:
          v48[1] = v17;
LABEL_38:
          cf = 0;
          v45 = *MEMORY[0x1E69660D8];
          v46 = MEMORY[0x1E695E0F8];
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v7 = CVPixelBufferCreate(0, v15, v16, v10, v28, &cf);
          if (v7)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v43 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask CVPixelBuffer creation failed", v43, 2u);
            }
          }

          else
          {
            v37 = 0;
            v38 = a4;
            v39 = 1;
            if (a4)
            {
              v7 = CVPixelBufferLockBaseAddress(a4, 1uLL);
              v37 = v7;
              if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v43 = 134218240, *&v43[4] = v38, *&v43[12] = 1024, *&v43[14] = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v43, 0x12u), (v7 = v37) == 0))
              {
                *v43 = CVPixelBufferGetBaseAddress(a4);
                *&v43[8] = v14;
                *&v43[16] = Width;
                BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
                v34 = 0;
                pixelBuffer = cf;
                unlockFlags = 0;
                if (cf)
                {
                  v7 = CVPixelBufferLockBaseAddress(cf, 0);
                  v34 = v7;
                  if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v41 = 134218240, *&v41[4] = pixelBuffer, *&v41[12] = 1024, *&v41[14] = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v41, 0x12u), (v7 = v34) == 0))
                  {
                    *v41 = CVPixelBufferGetBaseAddress(cf);
                    *&v41[8] = v16;
                    *&v41[16] = v15;
                    v42 = CVPixelBufferGetBytesPerRow(cf);
                    v33 = 0;
                    v29 = MEMORY[0x1CCA97430](v43, v41, 0, buf, &v33, 4);
                    v7 = CVPixelBufferLock::Unlock(&v34);
                    if (!v7)
                    {
                      v7 = CVPixelBufferLock::Unlock(&v37);
                      if (!v7)
                      {
                        if (v29)
                        {
                          v7 = v29;
                          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *v32 = 0;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask failed to warp image", v32, 2u);
                          }
                        }

                        else
                        {
                          v31 = cf;
                          if (cf)
                          {
                            v31 = CFRetain(cf);
                          }

                          v7 = 0;
                          *a3 = v31;
                        }
                      }
                    }

                    if (pixelBuffer && !v34 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                    }
                  }
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                  }

                  v7 = -50;
                }

                if (v38 && !v37 && CVPixelBufferUnlockBaseAddress(v38, v39) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                }
              }
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
              }

              v7 = -50;
            }
          }

          CF<__CVBuffer *>::~CF(&cf);
          return v7;
        }

        v20 = Height;
        v21 = Width;
        __asm { FMOV            V2.2D, #-1.0 }

        *&buf[8] = _Q2;
LABEL_37:
        v48[0] = v20;
        v48[1] = v21;
        goto LABEL_38;
      }

      if (a5 == 7)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *&buf[8] = _Q0;
        *v48 = 0uLL;
        *&buf[24] = 0;
        goto LABEL_38;
      }

      if (a5 == 8)
      {
        v18 = Height;
        *&buf[8] = xmmword_1C9F60740;
LABEL_32:
        v48[0] = v18;
        goto LABEL_38;
      }
    }

    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v19;
    *v48 = *(MEMORY[0x1E695EFD0] + 32);
    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask failed: unsupported pixel format %d", buf, 8u);
  }

  return -50;
}

+ (id)_addToDetectionResults:(id)a3 sensitivityKey:(id)a4 sensitivity:(id)a5 sensitivityScoreKey:(id)a6 sensitivityScore:(id)a7
{
  v22[4] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E69CA718];
  v21[0] = v12;
  v21[1] = v14;
  v22[0] = v13;
  v22[1] = v15;
  v17 = *MEMORY[0x1E69CA800];
  v21[2] = *MEMORY[0x1E69CA7F8];
  v21[3] = v17;
  v22[2] = v13;
  v22[3] = v15;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v16 mad_mergeSensitiveAnalysisResults:v11 withSensitiveAnalysisResults:v18];

  return v19;
}

- (unint64_t)performQRCodeDetections:(unint64_t)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 results:(id *)a6
{
  v7 = *&a5;
  v27 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][performQRCodeDetections]", objc_opt_class()];
  if (+[MADUserSafetyQRCodeDetector enabled])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MADUserSafetyQRCodeDetector);
    [(MADUserSafetyQRCodeDetector *)v13 processPixelBuffer:a4 orientation:v7 signpostPayload:self->_signpostPayload];
    v14 = [(MADUserSafetyQRCodeDetector *)v13 sensitivity];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 unsignedIntegerValue];
      if (a3 & v16)
      {
        [objc_opt_class() _addToDetectionResults:0 sensitivityKey:*MEMORY[0x1E69CA7D0] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7D8] sensitivityScore:&unk_1F49BB758];
        v17 = a3 ^= 1uLL;
      }

      else
      {
        v17 = 0;
      }

      if ((v16 & a3 & 2) != 0)
      {
        v19 = [objc_opt_class() _addToDetectionResults:v17 sensitivityKey:*MEMORY[0x1E69CA7E8] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB758];

        v20 = [objc_opt_class() _addToDetectionResults:v19 sensitivityKey:*MEMORY[0x1E69CA808] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB758];

        a3 ^= 2uLL;
        v17 = v20;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v11;
        v25 = 2112;
        v26 = objc_opt_class();
        v18 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ %@ processing failed.", buf, 0x16u);
      }

      v17 = 0;
    }

    objc_autoreleasePoolPop(v12);
    if (a6 && v17)
    {
      v21 = v17;
      *a6 = v17;
    }
  }

  else
  {
    v17 = 0;
  }

  return a3;
}

- (BOOL)processPixelBufferAsset:(id)a3 resultHandler:(id)a4
{
  v146[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][processPixelBufferAsset]", objc_opt_class()];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ running...", buf, 0xCu);
  }

  if ([v6 userSafetyEligible])
  {
    enableDetectionTypeN = self->_enableDetectionTypeN;
    v10 = 2;
    if (!self->_enableDetectionTypeGV)
    {
      v10 = 0;
    }

    v11 = v10 | enableDetectionTypeN;
    if (v10 | enableDetectionTypeN)
    {
      v124 = 0;
      v123 = 0;
      if ([v6 loadPixelBuffer:&v124 orientation:&v123 regionOfInterest:v122])
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ image loading failed", buf, 0xCu);
        }

        v12 = MEMORY[0x1E696ABC0];
        v141 = *MEMORY[0x1E696A578];
        v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
        v142 = v96;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        v14 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
        v7[2](v7, 0, v14);

        v15 = 0;
        goto LABEL_94;
      }

      v121 = 0;
      v24 = [(MADVideoSessionSafetyClassificationTask *)self performQRCodeDetections:v11 pixelBuffer:v124 orientation:v123 results:&v121];
      v96 = v121;
      if (!v24)
      {
        v34 = [objc_alloc(MEMORY[0x1E69AE510]) initWithSensitivityAttributes:v96 requestID:self->_requestID];
        if (v34)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ complete", buf, 0xCu);
          }

          v13 = 0;
        }

        else
        {
          v47 = MEMORY[0x1E696ABC0];
          v139 = *MEMORY[0x1E696A578];
          v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating MADVideoSessionSafetyResult failed"];
          v140 = v48;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v13 = [v47 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v49];

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed, error:%@", buf, 0x16u);
          }
        }

        v50 = [v13 copy];
        (v7)[2](v7, v34, v50);

        v15 = 1;
        goto LABEL_94;
      }

      v25 = VCPSignPostLog();
      v26 = os_signpost_id_generate(v25);

      v27 = VCPSignPostLog();
      v28 = v27;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        signpostPayload = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = signpostPayload;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "MADVideoSessionSafetyClassification_scale", "%@", buf, 0xCu);
      }

      v120 = 0;
      if ([(MADVideoSessionSafetyClassificationTask *)self scalePixelBuffer:v124 output:&v120 regionOfInterest:299 width:299 height:1111970369 format:v122[0], v122[1], v122[2], v122[3]])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ image scaling failed", buf, 0xCu);
        }

        v30 = MEMORY[0x1E696ABC0];
        v137 = *MEMORY[0x1E696A578];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image scaling failed"];
        v138 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
        v33 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v32];
        v7[2](v7, 0, v33);

        v13 = 0;
        v15 = 0;
        goto LABEL_93;
      }

      v35 = VCPSignPostLog();
      v36 = v35;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v37 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v37;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v26, "MADVideoSessionSafetyClassification_scale", "%@", buf, 0xCu);
      }

      v38 = VCPSignPostLog();
      v39 = os_signpost_id_generate(v38);

      v40 = VCPSignPostLog();
      v41 = v40;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        v42 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v42;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "MADVideoSessionSafetyClassification_affine", "%@", buf, 0xCu);
      }

      cf = 0;
      if ([(MADVideoSessionSafetyClassificationTask *)self createUprightPixelBuffer:&cf fromSourceBuffer:v120 andOrientation:v123])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ image affine transform failed", buf, 0xCu);
        }

        v43 = MEMORY[0x1E696ABC0];
        v135 = *MEMORY[0x1E696A578];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image affine transform failed"];
        v136 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        v46 = [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v45];
        v7[2](v7, 0, v46);

        v13 = 0;
        v15 = 0;
        goto LABEL_92;
      }

      v51 = VCPSignPostLog();
      v52 = v51;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
      {
        v53 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v53;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v52, OS_SIGNPOST_INTERVAL_END, v39, "MADVideoSessionSafetyClassification_affine", "%@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v132 = __Block_byref_object_copy__65;
      v133 = __Block_byref_object_dispose__65;
      v134 = 0;
      v113 = 0;
      v114 = &v113;
      v115 = 0x3032000000;
      v116 = __Block_byref_object_copy__65;
      v117 = __Block_byref_object_dispose__65;
      v118 = 0;
      v107 = 0;
      v108 = &v107;
      v109 = 0x3032000000;
      v110 = __Block_byref_object_copy__65;
      v111 = __Block_byref_object_dispose__65;
      v112 = 0;
      v101 = 0;
      v102 = &v101;
      v103 = 0x3032000000;
      v104 = __Block_byref_object_copy__65;
      v105 = __Block_byref_object_dispose__65;
      v106 = 0;
      if (v24)
      {
        dispatchQueue = self->_dispatchQueue;
        dispatchGroup = self->_dispatchGroup;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke;
        block[3] = &unk_1F496A9A0;
        block[4] = self;
        block[5] = buf;
        v100 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        block[6] = &v107;
        dispatch_group_async(dispatchGroup, dispatchQueue, block);
        CF<__CVBuffer *>::~CF(&v100);
      }

      if ((v24 & 2) != 0)
      {
        v57 = self->_dispatchQueue;
        v56 = self->_dispatchGroup;
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3321888768;
        v97[2] = __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke_227;
        v97[3] = &unk_1F496A9A0;
        v97[4] = self;
        v97[5] = &v113;
        v98 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v97[6] = &v101;
        dispatch_group_async(v56, v57, v97);
        CF<__CVBuffer *>::~CF(&v98);
      }

      dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
      if ((v24 & 1) != 0 && !*(*&buf[8] + 40))
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v89 = [v108[5] description];
          *v127 = 138412546;
          v128 = v8;
          v129 = 2112;
          v130 = v89;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeN failed (%@)", v127, 0x16u);
        }

        v84 = [v108[5] copy];
        v7[2](v7, 0, v84);
      }

      else
      {
        if ((v24 & 2) == 0 || v114[5])
        {
          v58 = *(*&buf[8] + 40);
          if (v58)
          {
            v59 = MEMORY[0x1E69CA710];
            v60 = [v58 sensitivityScoreExplicit];
            [v60 floatValue];
            v62 = [v59 isImageSensitiveForLabel:*MEMORY[0x1E69CA7B8] confidenceScore:0 classificationMode:v61];

            v63 = objc_opt_class();
            v64 = *MEMORY[0x1E69CA7D0];
            v94 = [MEMORY[0x1E696AD98] numberWithBool:v62];
            v65 = *MEMORY[0x1E69CA7D8];
            v66 = [*(*&buf[8] + 40) sensitivityScoreExplicit];
            v67 = [v63 _addToDetectionResults:v96 sensitivityKey:v64 sensitivity:v94 sensitivityScoreKey:v65 sensitivityScore:v66];

            v96 = v67;
          }

          if (v114[5])
          {
            if (+[MADUserSafetyQRCodeDetector enabled])
            {
              v68 = [objc_opt_class() _addToDetectionResults:v96 sensitivityKey:*MEMORY[0x1E69CA7E8] sensitivity:MEMORY[0x1E695E110] sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB768];

              v96 = [objc_opt_class() _addToDetectionResults:v68 sensitivityKey:*MEMORY[0x1E69CA808] sensitivity:MEMORY[0x1E695E110] sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB768];
            }

            else
            {
              v69 = MEMORY[0x1E69CA710];
              v70 = [v114[5] sensitivityScoreGore];
              [v70 floatValue];
              v72 = [v69 isImageSensitiveForLabel:*MEMORY[0x1E69CA7A0] confidenceScore:0 classificationMode:v71];

              v73 = objc_opt_class();
              v74 = *MEMORY[0x1E69CA7E8];
              v92 = [MEMORY[0x1E696AD98] numberWithBool:v72];
              v75 = *MEMORY[0x1E69CA7F0];
              v76 = [v114[5] sensitivityScoreGore];
              v95 = [v73 _addToDetectionResults:v96 sensitivityKey:v74 sensitivity:v92 sensitivityScoreKey:v75 sensitivityScore:v76];

              v77 = MEMORY[0x1E69CA710];
              v78 = [v114[5] sensitivityScoreViolence];
              [v78 floatValue];
              v80 = [v77 isImageSensitiveForLabel:*MEMORY[0x1E69CA7C0] confidenceScore:0 classificationMode:v79];

              v81 = objc_opt_class();
              v93 = *MEMORY[0x1E69CA808];
              v68 = [MEMORY[0x1E696AD98] numberWithBool:v80];
              v82 = *MEMORY[0x1E69CA818];
              v83 = [v114[5] sensitivityScoreViolence];
              v96 = [v81 _addToDetectionResults:v95 sensitivityKey:v93 sensitivity:v68 sensitivityScoreKey:v82 sensitivityScore:v83];
            }
          }

          v84 = [objc_alloc(MEMORY[0x1E69AE510]) initWithSensitivityAttributes:v96 requestID:self->_requestID];
          if (v84)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *v127 = 138412290;
              v128 = v8;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ complete", v127, 0xCu);
            }

            v13 = 0;
          }

          else
          {
            v85 = MEMORY[0x1E696ABC0];
            v125 = *MEMORY[0x1E696A578];
            v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating MADVideoSessionSafetyResult failed"];
            v126 = v86;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
            v13 = [v85 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v87];

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v127 = 138412546;
              v128 = v8;
              v129 = 2112;
              v130 = v13;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed, error:%@", v127, 0x16u);
            }
          }

          v88 = [v13 copy];
          (v7)[2](v7, v84, v88);

          v15 = 1;
          goto LABEL_91;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v90 = [v102[5] description];
          *v127 = 138412546;
          v128 = v8;
          v129 = 2112;
          v130 = v90;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeGV failed (%@)", v127, 0x16u);
        }

        v84 = [v102[5] copy];
        v7[2](v7, 0, v84);
      }

      v13 = 0;
      v15 = 0;
LABEL_91:

      _Block_object_dispose(&v101, 8);
      _Block_object_dispose(&v107, 8);

      _Block_object_dispose(&v113, 8);
      _Block_object_dispose(buf, 8);

LABEL_92:
      CF<__CVBuffer *>::~CF(&cf);
LABEL_93:
      CF<__CVBuffer *>::~CF(&v120);
LABEL_94:

      CF<__CVBuffer *>::~CF(&v124);
      goto LABEL_95;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ remainingDetections=0, quiting ...", buf, 0xCu);
    }

    v20 = MEMORY[0x1E696ABC0];
    v143 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No detection to be performed"];
    v144 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    v23 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
    v7[2](v7, 0, v23);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ User Safety either not entitled for client or not enabled, quiting ...", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696ABC0];
    v145 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"User Safety either not entitled for client or not enabled"];
    v146[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:&v145 count:1];
    v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
    v7[2](v7, 0, v19);
  }

  v15 = 0;
LABEL_95:

  return v15;
}

void __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1[4] + 16);
    *buf = 138412290;
    v18 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  v7 = *(a1[4] + 32);
  v8 = a1[7];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 analyzePixelBuffer:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(a1[4] + 16);
    *buf = 138412290;
    v18 = v15;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
  }
}

void __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke_227(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1[4] + 16);
    *buf = 138412290;
    v18 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  v7 = *(a1[4] + 40);
  v8 = a1[7];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 analyzePixelBuffer:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(a1[4] + 16);
    *buf = 138412290;
    v18 = v15;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 16) = 0;
  return self;
}

@end