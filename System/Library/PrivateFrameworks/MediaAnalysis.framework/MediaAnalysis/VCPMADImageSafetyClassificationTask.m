@interface VCPMADImageSafetyClassificationTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (BOOL)validateProcessingSettingsForDetections:(unint64_t)a3;
- (VCPMADImageSafetyClassificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id).cxx_construct;
- (int)createUprightPixelBuffer:(__CVBuffer *)a3 fromSourceBuffer:(__CVBuffer *)a4 andOrientation:(unsigned int)a5;
- (int)run;
- (int)scalePixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 width:(int)a5 height:(int)a6 format:(unsigned int)a7;
- (unint64_t)fetchCachedResultsForDetections:(unint64_t)a3 results:(id)a4;
- (unint64_t)performQRCodeForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 detections:(unint64_t)a5 results:(id)a6;
@end

@implementation VCPMADImageSafetyClassificationTask

- (VCPMADImageSafetyClassificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VCPMADImageSafetyClassificationTask;
  v12 = [(VCPMADImageSafetyClassificationTask *)&v15 init];
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

- (int)scalePixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 width:(int)a5 height:(int)a6 format:(unsigned int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v9 = *&a5;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (Width == v9 && Height == v8 && PixelFormatType == v7)
  {
    *a4 = CFRetain(a3);
    return 0;
  }

  else
  {

    Scaler::Scale(&self->_scaler, a3, a4, v9, v8, v7);
  }

  return result;
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

- (BOOL)validateProcessingSettingsForDetections:(unint64_t)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(VCPMADServiceImageAsset *)self->_imageAsset userSafetyEligible])
  {
    if (a3)
    {
      return 1;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid request: detections=0", v13, 2u);
    }

    request = self->_request;
    v12 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid request: detections=0"];
    v15 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageSafetyClassificationRequest *)request setError:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "User Safety either not entitled for client or not enabled", v13, 2u);
    }

    v6 = self->_request;
    v7 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"User Safety either not entitled for client or not enabled"];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageSafetyClassificationRequest *)v6 setError:v10];
  }

  return 0;
}

- (unint64_t)performQRCodeForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 detections:(unint64_t)a5 results:(id)a6
{
  v7 = *&a4;
  v20 = *MEMORY[0x1E69E9840];
  v10 = a6;
  if (+[MADUserSafetyQRCodeDetector enabled])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MADUserSafetyImageQRCodeDetector);
    v13 = [(MADUserSafetyImageQRCodeDetector *)v12 sensitivityFromQRCodeForPixelBuffer:a3 orientation:v7 signpostPayload:self->_signpostPayload];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unsignedIntegerValue];
      if (a5 & v15)
      {
        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
        a5 ^= 1uLL;
      }

      if ((v15 & a5 & 2) != 0)
      {
        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
        a5 ^= 2uLL;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v16 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] processing failed.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  return a5;
}

- (unint64_t)fetchCachedResultsForDetections:(unint64_t)a3 results:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v26 = [(VCPMADServiceImageAsset *)self->_imageAsset nsfwClassifications];
  if (v26)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPMADImageSafetyClassificationTask leveraging pre-computed IVS result", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    if (+[MADUserSafetyQRCodeDetector enabled])
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    v30 = 0uLL;
    v31 = 0uLL;
    v7 = v26;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = *v31;
      v28 = *MEMORY[0x1E69AE2E0];
      v27 = *MEMORY[0x1E69AE2D8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          if ((a3 & 1) != 0 && [*(*(&v30 + 1) + 8 * i) extendedSceneIdentifier] == 2147481854)
          {
            [v11 confidence];
            v13 = v12;
            v14 = MEMORY[0x1E69CA710];
            v15 = VCPSpecialLabelFromExtendedSceneClassificationID([v11 extendedSceneIdentifier]);
            v16 = [v14 isImageSensitiveForLabel:v15 confidenceScore:2 classificationMode:v13];

            v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];
            [v29 setObject:v17 forKeyedSubscript:v28];

            a3 &= ~1uLL;
          }

          if ((a3 & 2) != 0 && v6)
          {
            if ([v11 extendedSceneIdentifier] != 2147481342 && objc_msgSend(v11, "extendedSceneIdentifier") != 2147481343)
            {
              continue;
            }

            [v11 confidence];
            v19 = v18;
            v20 = MEMORY[0x1E69CA710];
            v21 = VCPSpecialLabelFromExtendedSceneClassificationID([v11 extendedSceneIdentifier]);
            v22 = [v20 isImageSensitiveForLabel:v21 confidenceScore:2 classificationMode:v19];

            if (--v6)
            {
              v23 = v22;
            }

            else
            {
              v23 = 1;
            }

            if (v23 != 1)
            {
              v6 = 1;
              continue;
            }

            v24 = [MEMORY[0x1E696AD98] numberWithBool:v22];
            [v29 setObject:v24 forKeyedSubscript:v27];

            a3 &= ~2uLL;
          }

          if (!a3)
          {

            a3 = 0;
            goto LABEL_34;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    if (a3)
    {
      [v29 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      a3 &= ~1uLL;
    }

    if ((a3 & 2) != 0)
    {
      [v29 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      a3 &= ~2uLL;
    }
  }

LABEL_34:

  return a3;
}

- (int)run
{
  v138[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask running...", &buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(MADImageSafetyClassificationRequest *)self->_request enableNudityDetection];
  v7 = v6;
  if ([(MADImageSafetyClassificationRequest *)self->_request enableGoreViolenceDetection])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if ([(VCPMADImageSafetyClassificationTask *)self validateProcessingSettingsForDetections:v8 | v6])
  {
    v9 = [MEMORY[0x1E695DF00] now];
    [v9 timeIntervalSince1970];
    v11 = v10;

    [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] Before decode"];
    v120 = 0;
    v119 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadLowResPixelBuffer:&v120 orientation:&v119])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageSafetyClassificationTask image loading failed", &buf, 2u);
      }

      request = self->_request;
      v13 = MEMORY[0x1E696ABC0];
      v137 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v138[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:&v137 count:1];
      v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
      [(MADImageSafetyClassificationRequest *)request setError:v16];

      goto LABEL_15;
    }

    v17 = [(VCPMADImageSafetyClassificationTask *)self performQRCodeForPixelBuffer:v120 orientation:v119 detections:v8 | v7 results:v5];
    if (v17)
    {
      v18 = [(VCPMADImageSafetyClassificationTask *)self fetchCachedResultsForDetections:v17 results:v5];
      v19 = v18;
      if (v18)
      {
        v20 = +[MADImageSafetyClassificationResource sharedResource];
        v21 = +[VCPMADResourceManager sharedManager];
        v22 = [v21 activateResource:v20];

        v23 = VCPSignPostLog();
        v24 = os_signpost_id_generate(v23);

        v25 = VCPSignPostLog();
        v26 = v25;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          signpostPayload = self->_signpostPayload;
          LODWORD(buf) = 138412290;
          *(&buf + 4) = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "CommSafetyHandler_scale", "%@", &buf, 0xCu);
        }

        v118 = 0;
        if ([(VCPMADImageSafetyClassificationTask *)self scalePixelBuffer:v120 output:&v118 width:299 height:299 format:1111970369])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask image pre-processing failed", &buf, 2u);
          }

          v28 = self->_request;
          v29 = MEMORY[0x1E696ABC0];
          v133 = *MEMORY[0x1E696A578];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image pre-processing failed"];
          v134 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v32 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v31];
          [(MADImageSafetyClassificationRequest *)v28 setError:v32];
        }

        else
        {
          v47 = VCPSignPostLog();
          v48 = v47;
          if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
          {
            v49 = self->_signpostPayload;
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v49;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, v24, "CommSafetyHandler_scale", "%@", &buf, 0xCu);
          }

          v50 = VCPSignPostLog();
          v51 = os_signpost_id_generate(v50);

          v52 = VCPSignPostLog();
          v53 = v52;
          if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
          {
            v54 = self->_signpostPayload;
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v54;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "CommSafetyHandler_affine", "%@", &buf, 0xCu);
          }

          cf = 0;
          if ([(VCPMADImageSafetyClassificationTask *)self createUprightPixelBuffer:&cf fromSourceBuffer:v118 andOrientation:v119])
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask image affine transform failed", &buf, 2u);
            }

            v55 = self->_request;
            v56 = MEMORY[0x1E696ABC0];
            v131 = *MEMORY[0x1E696A578];
            v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image affine transform failed"];
            v132 = v57;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v59 = [v56 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v58];
            [(MADImageSafetyClassificationRequest *)v55 setError:v59];
          }

          else
          {
            v60 = VCPSignPostLog();
            v61 = v60;
            if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
            {
              v62 = self->_signpostPayload;
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v62;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_END, v51, "CommSafetyHandler_affine", "%@", &buf, 0xCu);
            }

            [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] Before inference"];
            *&buf = 0;
            *(&buf + 1) = &buf;
            v127 = 0x3032000000;
            v128 = __Block_byref_object_copy__8;
            v129 = __Block_byref_object_dispose__8;
            v130 = 0;
            v111 = 0;
            v112 = &v111;
            v113 = 0x3032000000;
            v114 = __Block_byref_object_copy__8;
            v115 = __Block_byref_object_dispose__8;
            v116 = 0;
            v105 = 0;
            v106 = &v105;
            v107 = 0x3032000000;
            v108 = __Block_byref_object_copy__8;
            v109 = __Block_byref_object_dispose__8;
            v110 = 0;
            v99 = 0;
            v100 = &v99;
            v101 = 0x3032000000;
            v102 = __Block_byref_object_copy__8;
            v103 = __Block_byref_object_dispose__8;
            v104 = 0;
            queue = dispatch_queue_create("com.apple.mediaanalysis.VCPMADImageSafetyClassification", MEMORY[0x1E69E96A8]);
            v63 = dispatch_group_create();
            if (v19)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3321888768;
              block[2] = __42__VCPMADImageSafetyClassificationTask_run__block_invoke;
              block[3] = &unk_1F496A420;
              v94 = v20;
              v95 = self;
              v98 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v96 = &v105;
              p_buf = &buf;
              dispatch_group_async(v63, queue, block);
              CF<__CVBuffer *>::~CF(&v98);
            }

            if ((v19 & 2) != 0)
            {
              v84 = MEMORY[0x1E69E9820];
              v85 = 3321888768;
              v86 = __42__VCPMADImageSafetyClassificationTask_run__block_invoke_387;
              v87 = &unk_1F496A420;
              v88 = v20;
              v89 = self;
              v92 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v90 = &v99;
              v91 = &v111;
              dispatch_group_async(v63, queue, &v84);
              CF<__CVBuffer *>::~CF(&v92);
            }

            dispatch_group_wait(v63, 0xFFFFFFFFFFFFFFFFLL);
            [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] After inference"];
            if ((v19 & 1) != 0 && !*(*(&buf + 1) + 40))
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v75 = objc_opt_class();
                v76 = [v106[5] description];
                *v122 = 138412546;
                v123 = v75;
                v124 = 2112;
                v125 = v76;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] safetyHandlerTypeN failed (%@)", v122, 0x16u);
              }

              v77 = self->_request;
              v78 = [v106[5] copy];
              [(MADImageSafetyClassificationRequest *)v77 setError:v78];
            }

            else if ((v19 & 2) != 0 && !v112[5])
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v79 = objc_opt_class();
                v80 = [v100[5] description];
                *v122 = 138412546;
                v123 = v79;
                v124 = 2112;
                v125 = v80;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] safetyHandlerTypeGV failed (%@)", v122, 0x16u);
              }

              v81 = self->_request;
              v82 = [v100[5] copy];
              [(MADImageSafetyClassificationRequest *)v81 setError:v82];
            }

            else
            {
              v64 = *(*(&buf + 1) + 40);
              v65 = MEMORY[0x1E69AE2E0];
              if (v64)
              {
                [v5 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
              }

              v66 = v112[5];
              v67 = MEMORY[0x1E69AE2D8];
              if (v66)
              {
                [v5 setObject:v66 forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
              }

              v68 = self->_request;
              v69 = objc_alloc(MEMORY[0x1E69AE340]);
              v70 = [v5 objectForKeyedSubscript:*v65];
              v71 = [v5 objectForKeyedSubscript:*v67];
              v72 = [v69 initWithIsSensitiveNudity:v70 isSensitiveGoreViolence:v71];
              v121 = v72;
              v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
              [(MADImageSafetyClassificationRequest *)v68 setResults:v73];

              [v22 reset];
              v74 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
              MADPLLogIVSProcessing(v74, 0, [(VCPMADServiceImageAsset *)self->_imageAsset assetType], v11);

              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *v122 = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask complete", v122, 2u);
              }
            }

            _Block_object_dispose(&v99, 8);
            _Block_object_dispose(&v105, 8);

            _Block_object_dispose(&v111, 8);
            _Block_object_dispose(&buf, 8);
          }

          CF<__CVBuffer *>::~CF(&cf);
        }

        CF<__CVBuffer *>::~CF(&v118);

        goto LABEL_15;
      }

      v40 = self->_request;
      v41 = objc_alloc(MEMORY[0x1E69AE340]);
      v42 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      v43 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      v44 = [v41 initWithIsSensitiveNudity:v42 isSensitiveGoreViolence:v43];
      v135 = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
      [(MADImageSafetyClassificationRequest *)v40 setResults:v45];

      v46 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
      MADPLLogIVSProcessing(v46, 1, [(VCPMADServiceImageAsset *)self->_imageAsset assetType], v11);

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
LABEL_15:
        CF<__CVBuffer *>::~CF(&v120);
        goto LABEL_16;
      }

      LOWORD(buf) = 0;
      v39 = MEMORY[0x1E69E9C10];
    }

    else
    {
      v33 = self->_request;
      v34 = objc_alloc(MEMORY[0x1E69AE340]);
      v35 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      v36 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      v37 = [v34 initWithIsSensitiveNudity:v35 isSensitiveGoreViolence:v36];
      v136 = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
      [(MADImageSafetyClassificationRequest *)v33 setResults:v38];

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      LOWORD(buf) = 0;
      v39 = MEMORY[0x1E69E9C10];
    }

    _os_log_impl(&dword_1C9B70000, v39, OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask complete", &buf, 2u);
    goto LABEL_15;
  }

LABEL_16:

  return 0;
}

void __42__VCPMADImageSafetyClassificationTask_run__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) safetyHandlerTypeN];
  if (v2)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v26 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v8 = *(a1 + 64);
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = [v2 analyzePixelBuffer:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = VCPSignPostLog();
    v12 = v11;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v26 = v13;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v4, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "sensitiveExplicit")}];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = objc_opt_class();
      v17 = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeN unavailable for analyze pixel buffer", buf, 0xCu);
    }

    v18 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ safetyHandlerTypeN unavailable", objc_opt_class()];
    v24 = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void __42__VCPMADImageSafetyClassificationTask_run__block_invoke_387(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) safetyHandlerTypeGV];
  if (v2)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v28 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v8 = *(a1 + 64);
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = [v2 analyzePixelBuffer:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = VCPSignPostLog();
    v12 = v11;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v28 = v13;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v4, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E696AD98];
    if ([v10 sensitiveGore])
    {
      v15 = 1;
    }

    else
    {
      v15 = [v10 sensitiveViolence];
    }

    v22 = [v14 numberWithBool:v15];
    v23 = *(*(a1 + 56) + 8);
    v18 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = objc_opt_class();
      v16 = v28;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeGV unavailable for classifying pixel buffer", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ safetyHandlerTypeGV unavailable", objc_opt_class()];
    v26 = v10;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  return self;
}

@end