@interface CAMPanoramaProcessor
- (CAMPanoramaProcessor)initWithDelegate:(id)a3 encodingBehavior:(int64_t)a4;
- (CAMPanoramaProcessorDelegate)delegate;
- (CGSize)previewSize;
- (void)dealloc;
- (void)invalidate;
- (void)processPanoramaCaptureWithRequest:(id)a3 completionHandler:(id)a4;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setDirection:(int64_t)a3;
- (void)startPanoramaCaptureWithRequest:(id)a3;
- (void)stopPanoramaCapture;
@end

@implementation CAMPanoramaProcessor

- (CAMPanoramaProcessor)initWithDelegate:(id)a3 encodingBehavior:(int64_t)a4
{
  v6 = a3;
  v38.receiver = self;
  v38.super_class = CAMPanoramaProcessor;
  v7 = [(CAMPanoramaProcessor *)&v38 init];
  v8 = v7;
  if (v7)
  {
    v7->_photoEncodingBehavior = a4;
    v7->_direction = 1;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    initialMetadataByRequestUUID = v8->__initialMetadataByRequestUUID;
    v8->__initialMetadataByRequestUUID = v9;

    v11 = ACT_CopyDefaultConfigurationForPanorama();
    if (v11)
    {
      +[CAMPanoramaUtilities bufferSize];
      v13 = v12;
      v15 = v14;
      v16 = [v11 mutableCopy];
      if (v16)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15 * 0.25];
        [v16 setObject:v17 forKey:*MEMORY[0x1E6985F20]];

        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * 0.25];
        [v16 setObject:v18 forKey:*MEMORY[0x1E6985F28]];
      }

      if (a4 == 1)
      {
        [v16 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6985F48]];
      }

      v19 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v19 scale];

      +[CAMPanoramaUtilities defaultPreviewSize];
      v20 = *MEMORY[0x1E695E480];
      if (!ACT_FigSampleBufferProcessorCreateForPanoramaWithOptionsAndPreviewSize())
      {
        processor = v8->__processor;
        if (processor)
        {
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v25)
          {
            v25(processor, __PanoramaProcessorOutputCallback, v8);
          }

          cf = 0;
          valuePtr = 0;
          FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v27(FigBaseObject, *MEMORY[0x1E6985F30], v20, &cf);
            v28 = cf;
          }

          else
          {
            v28 = 0;
          }

          CFNumberGetValue(v28, kCFNumberNSIntegerType, &valuePtr);
          if (cf)
          {
            CFRelease(cf);
          }

          v34 = 0;
          v35 = 0;
          v29 = FigSampleBufferProcessorGetFigBaseObject();
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v30)
          {
            v30(v29, *MEMORY[0x1E6985F08], v20, &v34);
            v31 = v34;
          }

          else
          {
            v31 = 0;
          }

          CFNumberGetValue(v31, kCFNumberNSIntegerType, &v35);
          if (v34)
          {
            CFRelease(v34);
          }

          objc_storeWeak(&v8->_delegate, v6);
          v32 = v35;
          v8->_previewSize.width = valuePtr;
          v8->_previewSize.height = v32;
          request = v8->_request;
          v8->_request = 0;

          v8->_capturingPanorama = 0;
          v8->__greenTeaLogger = ct_green_tea_logger_create();
          v22 = v8;
          goto LABEL_15;
        }
      }

      v21 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CAMPanoramaProcessor initWithDelegate:encodingBehavior:];
      }
    }

    else
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CAMPanoramaProcessor initWithDelegate:encodingBehavior:];
      }
    }

    v22 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (void)dealloc
{
  processor = self->__processor;
  if (processor)
  {
    CFRelease(processor);
  }

  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = CAMPanoramaProcessor;
  [(CAMPanoramaProcessor *)&v4 dealloc];
}

- (void)setDirection:(int64_t)a3
{
  if (self->_direction != a3)
  {
    self->_direction = a3;
    [(CAMPanoramaProcessor *)self _processor];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E6985EB0];

      v6(FigBaseObject, v7, v4);
    }
  }
}

- (void)startPanoramaCaptureWithRequest:(id)a3
{
  v4 = a3;
  if ([(CAMPanoramaProcessor *)self isCapturingPanorama])
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignored request to start capturing a new panorama, we are already capturing a panorama!", buf, 2u);
    }
  }

  else
  {
    v6 = [v4 photoEncodingBehavior];
    if (v6 == [(CAMPanoramaProcessor *)self photoEncodingBehavior])
    {
      [(CAMPanoramaProcessor *)self _greenTeaLogger];
      v7 = getCTGreenTeaOsLogHandle();
      v8 = v7;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_INFO, "Take a photo", v11, 2u);
      }

      [(CAMPanoramaProcessor *)self _setRequest:v4];
      v5 = [CAMCaptureMetadataUtilities metadataFromPanoramaRequest:v4];
      v9 = [(CAMPanoramaProcessor *)self _initialMetadataByRequestUUID];
      v10 = [v4 persistenceUUID];
      [v9 setObject:v5 forKeyedSubscript:v10];

      [(CAMPanoramaProcessor *)self _processor];
      if ([(CAMPanoramaProcessor *)self photoEncodingBehavior]== 1)
      {
        ACT_FigSampleBufferProcessorStartPanoramaCaptureWithMetadata();
      }

      else
      {
        ACT_FigSampleBufferProcessorStartPanoramaCapture();
      }

      [(CAMPanoramaProcessor *)self _setCapturingPanorama:1];
    }

    else
    {
      v5 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CAMPanoramaProcessor startPanoramaCaptureWithRequest:];
      }
    }
  }
}

- (void)stopPanoramaCapture
{
  if ([(CAMPanoramaProcessor *)self isCapturingPanorama])
  {
    [(CAMPanoramaProcessor *)self _setRequest:0];
    [(CAMPanoramaProcessor *)self _processor];
    ACT_FigSampleBufferProcessorStopPanoramaCapture();

    [(CAMPanoramaProcessor *)self _setCapturingPanorama:0];
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring request to stop capturing a panorama, we are not capturing a panorama!", v4, 2u);
    }
  }
}

- (void)processPanoramaCaptureWithRequest:(id)a3 completionHandler:(id)a4
{
  v42 = a4;
  v6 = a3;
  v7 = [v6 persistenceUUID];
  [(CAMPanoramaProcessor *)self _processor];
  v43 = 0;
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);

  if (v9)
  {
    v9(FigBaseObject, @"HighResPanorama", *MEMORY[0x1E695E480], &v43);
    v10 = v43;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CAMPanoramaProcessor *)self _initialMetadataByRequestUUID];
  v12 = [v11 objectForKeyedSubscript:v7];
  v41 = v11;
  [v11 setObject:0 forKeyedSubscript:v7];
  v40 = v12;
  v13 = [v12 mutableCopy];
  v14 = *MEMORY[0x1E696D9B0];
  v15 = [v10 objectForKey:*MEMORY[0x1E696D9B0]];
  if (v15)
  {
    v16 = [v13 objectForKeyedSubscript:v14];
    v17 = [v16 mutableCopy];

    [v17 addEntriesFromDictionary:v15];
    [v13 setObject:v17 forKey:v14];
  }

  v18 = *MEMORY[0x1E696D320];
  v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D320]];
  if (v19)
  {
    [v13 setObject:v19 forKey:v18];
  }

  v38 = v19;
  v20 = [v10 objectForKey:@"iOS_Debug"];
  v21 = v20;
  if (v20 && [v20 length])
  {
    [v13 setObject:v21 forKey:@"iOS_Debug"];
  }

  v22 = [v10 objectForKey:@"JPEG"];
  v23 = [v10 objectForKey:*MEMORY[0x1E6985ED0]];
  v24 = [v23 unsignedLongValue];

  AllocSize = IOSurfaceGetAllocSize(v22);
  if (v24 - 1 >= AllocSize)
  {
    v26 = AllocSize;
  }

  else
  {
    v26 = v24;
  }

  v37 = v26;
  v27 = [v10 objectForKey:*MEMORY[0x1E6985F18]];
  if (v27)
  {
    IOSurface = CVPixelBufferGetIOSurface(v27);
  }

  else
  {
    IOSurface = 0;
  }

  v39 = v15;
  v29 = v7;
  if (v22)
  {
    v30 = 0;
  }

  else
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMPanoramaProcessorErrorDomain" code:-17500 userInfo:0];
  }

  v31 = MEMORY[0x1E695DFD8];
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v33 = [v31 setWithObject:v32];

  v34 = [[CAMCaptureCoordinationInfo alloc] initWithIdentifier:v29 allExpectedResultSpecifiers:v33 resultSpecifiers:0];
  LOBYTE(v36) = 0;
  v35 = [[CAMStillImageCaptureResult alloc] initWithFullsizeSurface:v22 size:v37 unfilteredPreviewSurface:IOSurface filteredPreviewSurface:0 metadata:v13 expectingPairedVideo:0 shouldPersistAdjustmentSidecar:v36 adjustmentFilters:0 persistenceUUID:v29 coordinationInfo:v34 error:v30];
  if (v42)
  {
    v42[2](v42, v35);
  }
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = [(CAMPanoramaProcessor *)self _processor];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5 || v5(v4, a3))
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMPanoramaProcessor processSampleBuffer:];
    }
  }
}

- (void)invalidate
{
  [(CAMPanoramaProcessor *)self _processor];
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
  if (FigBaseObject)
  {
    v3 = FigBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {

      v4(v3);
    }
  }
}

- (CAMPanoramaProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)previewSize
{
  width = self->_previewSize.width;
  height = self->_previewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end