@interface CAMThumbnailGenerator
- (CAMThumbnailGenerator)init;
- (CGImage)newBGRAImageInOrientation:(int64_t)a3 usingPixelBuffer:(__CVBuffer *)a4;
- (CGImage)newBGRAImageInOrientation:(int64_t)a3 usingSurface:(void *)a4;
- (CGImage)newBGRAImageOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingPixelBuffer:(__CVBuffer *)a5;
- (CGImage)newBGRAImageOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingSurface:(void *)a5;
- (__CVBuffer)_newRotatedPixelBuffer:(__CVBuffer *)a3 withOrientation:(int64_t)a4;
- (__CVBuffer)_newThumbnailOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 withPixelFormat:(unsigned int)a5 usingPixelBuffer:(__CVBuffer *)a6;
- (__CVBuffer)_newThumbnailOfSize:(CGSize)a3 inOrientation:(int64_t)a4 withPixelFormat:(unsigned int)a5 usingPixelBuffer:(__CVBuffer *)a6;
- (id)_neededColorspacePropertiesFromMetadata:(id)a3;
- (id)newJPEGDataInOrientation:(int64_t)a3 usingPixelBuffer:(__CVBuffer *)a4;
- (id)newJPEGDataInOrientation:(int64_t)a3 usingSurface:(void *)a4 withMetadata:(id)a5;
- (id)newJPEGDataOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingSurface:(void *)a5 withMetadata:(id)a6;
- (void)dealloc;
@end

@implementation CAMThumbnailGenerator

- (CAMThumbnailGenerator)init
{
  v9.receiver = self;
  v9.super_class = CAMThumbnailGenerator;
  v2 = [(CAMThumbnailGenerator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.camera.thumbnail-generator", v3);
    generationQueue = v2->__generationQueue;
    v2->__generationQueue = v4;

    v8 = v2;
    pl_dispatch_async();
    v6 = v8;
  }

  return v2;
}

void __29__CAMThumbnailGenerator_init__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (*(a1 + 32) + 16)))
  {
    v2 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __29__CAMThumbnailGenerator_init__block_invoke_cold_1();
    }
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  for (i = 0; i != 8; ++i)
  {
    v7 = qword_1A3A6A6C8[i];
    PLDegreesForImageOrientation();
    v8 = VTImageRotationSessionCreate();
    if (v8)
    {
      v9 = v8;
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v12 = v7;
        v13 = 2048;
        v14 = v9;
        _os_log_error_impl(&dword_1A3640000, v10, OS_LOG_TYPE_ERROR, "Failed to create image rotation session (%ld) for thumbnail generation (%ld)", buf, 0x16u);
      }
    }
  }
}

- (void)dealloc
{
  label = dispatch_queue_get_label(0);
  v4 = dispatch_queue_get_label(self->__generationQueue);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CAMThumbnailGenerator_dealloc__block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (label == v4)
  {
    v5[2](v5);
  }

  else
  {
    dispatch_sync(self->__generationQueue, v5);
  }

  v7.receiver = self;
  v7.super_class = CAMThumbnailGenerator;
  [(CAMThumbnailGenerator *)&v7 dealloc];
}

void __32__CAMThumbnailGenerator_dealloc__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    VTPixelTransferSessionInvalidate(v3);
    CFRelease(*(*(a1 + 32) + 16));
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(v2 + 24);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MEMORY[0x1A58F9AB0]([*(*(a1 + 32) + 24) objectForKey:{*(*(&v11 + 1) + 8 * v8++), v11}]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;
}

- (__CVBuffer)_newThumbnailOfSize:(CGSize)a3 inOrientation:(int64_t)a4 withPixelFormat:(unsigned int)a5 usingPixelBuffer:(__CVBuffer *)a6
{
  height = a3.height;
  width = a3.width;
  v40 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v22 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator _newThumbnailOfSize:v22 inOrientation:width withPixelFormat:height usingPixelBuffer:?];
    }

    v23 = 0;
    goto LABEL_36;
  }

  v11 = [(CAMThumbnailGenerator *)self _generationQueuePixelTransferSession];
  v12 = [(CAMThumbnailGenerator *)self _generationQueueRotationSessionsMapTable];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v12 objectForKey:v13];

  CVPixelBufferGetPixelFormatType(a6);
  v15 = CVPixelBufferGetWidth(a6);
  v16 = floor((width + 2.0 + -1.0) * 0.5);
  if (v15 / (v16 + v16) > 4.0)
  {
    *destinationBuffer = 0;
    IOSurfaceBackedCVPixelBuffer = FigCreateIOSurfaceBackedCVPixelBuffer();
    v18 = 0;
    if (IOSurfaceBackedCVPixelBuffer)
    {
      v19 = 1;
    }

    else
    {
      v19 = *destinationBuffer == 0;
    }

    if (v19 || v11 == 0)
    {
      v21 = IOSurfaceBackedCVPixelBuffer;
    }

    else
    {
      v25 = VTPixelTransferSessionTransferImage(v11, a6, 0);
      v21 = v25;
      v18 = *destinationBuffer;
      if (!v25)
      {
        v24 = CVPixelBufferRetain(*destinationBuffer);
        v18 = *destinationBuffer;
        goto LABEL_18;
      }
    }

    v24 = 0;
LABEL_18:
    CVPixelBufferRelease(v18);
    goto LABEL_19;
  }

  v24 = CVPixelBufferRetain(a6);
  v21 = 0;
LABEL_19:
  v23 = 0;
  if (!v21 && v24)
  {
    *destinationBuffer = 0;
    PLDegreesForImageOrientation();
    IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
    v27 = 0;
    if (IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      v28 = 1;
    }

    else
    {
      v28 = *destinationBuffer == 0;
    }

    if (v28 || v14 == 0)
    {
      v21 = IOSurfaceBackedCVPixelBufferWithAttributes;
    }

    else
    {
      v30 = MEMORY[0x1A58F9AC0](v14, v24);
      v21 = v30;
      v27 = *destinationBuffer;
      if (!v30)
      {
        v23 = CVPixelBufferRetain(*destinationBuffer);
        v27 = *destinationBuffer;
        goto LABEL_32;
      }
    }

    v23 = 0;
LABEL_32:
    CVPixelBufferRelease(v27);
  }

  CVPixelBufferRelease(v24);
  if (v21)
  {
    v22 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v41.width = width;
      v41.height = height;
      v32 = NSStringFromCGSize(v41);
      *destinationBuffer = 136315906;
      *&destinationBuffer[4] = "[CAMThumbnailGenerator _newThumbnailOfSize:inOrientation:withPixelFormat:usingPixelBuffer:]";
      v34 = 2114;
      v35 = v32;
      v36 = 2048;
      v37 = a4;
      v38 = 2048;
      v39 = v21;
      _os_log_error_impl(&dword_1A3640000, v22, OS_LOG_TYPE_ERROR, "<%s> Failed to generate a thumbnail of size %{public}@ in orientation %ld using a pixel buffer (%ld)", destinationBuffer, 0x2Au);
    }

LABEL_36:
  }

  return v23;
}

- (__CVBuffer)_newThumbnailOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 withPixelFormat:(unsigned int)a5 usingPixelBuffer:(__CVBuffer *)a6
{
  v7 = *&a5;
  Width = CVPixelBufferGetWidth(a6);
  [MEMORY[0x1E69BF160] scaledSizeForSize:a3 format:1 capLength:{Width, CVPixelBufferGetHeight(a6)}];

  return [(CAMThumbnailGenerator *)self _newThumbnailOfSize:a4 inOrientation:v7 withPixelFormat:a6 usingPixelBuffer:?];
}

- (__CVBuffer)_newRotatedPixelBuffer:(__CVBuffer *)a3 withOrientation:(int64_t)a4
{
  if (a3)
  {
    texture = 0;
    v7 = PLDegreesForImageOrientation();
    IsMirrored = PLImageOrientationIsMirrored();
    if (!v7 && !IsMirrored)
    {
      return CVPixelBufferRetain(a3);
    }

    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(a3);
    CVPixelBufferGetPixelFormatType(a3);
    IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
    v12 = [(CAMThumbnailGenerator *)self _generationQueueRotationSessionsMapTable];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v12 objectForKey:v13];

    CVPixelBufferRelease(0);
    if (IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      texture = 0;
      v14 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(CAMThumbnailGenerator *)IOSurfaceBackedCVPixelBufferWithAttributes _newRotatedPixelBuffer:a4 withOrientation:v14];
      }
    }

    return texture;
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator _newRotatedPixelBuffer:withOrientation:];
    }

    return 0;
  }
}

- (id)newJPEGDataOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingSurface:(void *)a5 withMetadata:(id)a6
{
  v10 = a6;
  if (a5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__25;
    v25 = __Block_byref_object_dispose__25;
    v26 = 0;
    v11 = [(CAMThumbnailGenerator *)self _generationQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke;
    v15[3] = &unk_1E76FCF90;
    v18 = a5;
    v19 = a3;
    v15[4] = self;
    v20 = a4;
    v16 = v10;
    v17 = &v21;
    dispatch_sync(v11, v15);

    v12 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newJPEGDataOfFormat:inOrientation:usingSurface:withMetadata:];
    }

    v12 = 0;
  }

  return v12;
}

void __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke(uint64_t a1)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v2, 0, &pixelBufferOut);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  PixelFormat = IOSurfaceGetPixelFormat(v2);
  v7 = [v3 _newThumbnailOfFormat:v4 inOrientation:v5 withPixelFormat:PixelFormat usingPixelBuffer:pixelBufferOut];
  CVPixelBufferGetIOSurface(v7);
  v8 = *MEMORY[0x1E6991978];
  v26[0] = &unk_1F16C8540;
  v9 = *MEMORY[0x1E6991970];
  v25[0] = v8;
  v25[1] = v9;
  v23 = *MEMORY[0x1E6991B90];
  v24 = &unk_1F16C9DA0;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = PFFigJPEGDataFromImage();
  v13 = 0;
  v14 = v13;
  if (v12)
  {
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke_cold_1();
    }
  }

  else
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v15 = [*(a1 + 32) _neededColorspacePropertiesFromMetadata:*(a1 + 40)];
    if (v15)
    {
      EXIFJPEGData = CGImageCreateEXIFJPEGData();
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = EXIFJPEGData;
    }

    else
    {
      v19 = *(*(a1 + 48) + 8);
      v20 = v14;
      v18 = *(v19 + 40);
      *(v19 + 40) = v20;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v21 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke_cold_2();
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
    }
  }

LABEL_5:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v7);
}

- (id)newJPEGDataInOrientation:(int64_t)a3 usingSurface:(void *)a4 withMetadata:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__25;
    v22 = __Block_byref_object_dispose__25;
    v23 = 0;
    v9 = [(CAMThumbnailGenerator *)self _generationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__CAMThumbnailGenerator_newJPEGDataInOrientation_usingSurface_withMetadata___block_invoke;
    block[3] = &unk_1E76FCFB8;
    v16 = a4;
    v17 = a3;
    block[4] = self;
    v14 = v8;
    v15 = &v18;
    dispatch_sync(v9, block);

    v10 = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newJPEGDataInOrientation:usingSurface:withMetadata:];
    }

    v10 = 0;
  }

  return v10;
}

void __76__CAMThumbnailGenerator_newJPEGDataInOrientation_usingSurface_withMetadata___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v2, 0, &pixelBufferOut);
  v3 = [*(a1 + 32) _newRotatedPixelBuffer:pixelBufferOut withOrientation:*(a1 + 64)];
  CVPixelBufferGetIOSurface(v3);
  v4 = *MEMORY[0x1E6991978];
  v22[0] = &unk_1F16C8540;
  v5 = *MEMORY[0x1E6991970];
  v21[0] = v4;
  v21[1] = v5;
  v19 = *MEMORY[0x1E6991B90];
  v20 = &unk_1F16C9DA0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v8 = PFFigJPEGDataFromImage();
  v9 = 0;
  v10 = v9;
  if (v8)
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __76__CAMThumbnailGenerator_newJPEGDataInOrientation_usingSurface_withMetadata___block_invoke_cold_1();
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v11 = [*(a1 + 32) _neededColorspacePropertiesFromMetadata:*(a1 + 40)];
    if (v11)
    {
      EXIFJPEGData = CGImageCreateEXIFJPEGData();
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = EXIFJPEGData;
    }

    else
    {
      v15 = *(*(a1 + 48) + 8);
      v16 = v10;
      v14 = *(v15 + 40);
      *(v15 + 40) = v16;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke_cold_2();
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
    }
  }

LABEL_5:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v3);
}

- (id)_neededColorspacePropertiesFromMetadata:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696D9B0];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = *MEMORY[0x1E696D968];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696D968]];
  v8 = *MEMORY[0x1E696D320];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696D320]];

  if (v7)
  {
    if (v9)
    {
      v23 = v7;
      v24[0] = v3;
      v22 = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v24[1] = v8;
      v25[0] = v10;
      v25[1] = v9;
      v11 = MEMORY[0x1E695DF20];
      v12 = v25;
      v13 = v24;
      v14 = 2;
    }

    else
    {
      if ([v7 isEqual:&unk_1F16C8558])
      {
        v15 = 0;
        goto LABEL_12;
      }

      v19 = v7;
      v20 = v3;
      v18 = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v21 = v10;
      v11 = MEMORY[0x1E695DF20];
      v12 = &v21;
      v13 = &v20;
      v14 = 1;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Unable to find colorspace information during thumbnail generation! Generated thumbnails may not match original image", &v17, 2u);
    }

    v15 = 0;
  }

LABEL_12:

  return v15;
}

- (CGImage)newBGRAImageOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingSurface:(void *)a5
{
  if (a5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9 = [(CAMThumbnailGenerator *)self _generationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke;
    block[3] = &unk_1E76FCFE0;
    block[6] = a5;
    block[7] = a3;
    block[8] = a4;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(v9, block);

    v10 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newBGRAImageOfFormat:inOrientation:usingSurface:];
    }

    return 0;
  }

  return v10;
}

void __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v2, 0, &pixelBufferOut);
  v3 = [*(a1 + 32) _newThumbnailOfFormat:*(a1 + 56) inOrientation:*(a1 + 64) withPixelFormat:1111970369 usingPixelBuffer:pixelBufferOut];
  if (CVPixelBufferGetIOSurface(v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = UICreateCGImageFromIOSurface();
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke_cold_1();
    }
  }

  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v3);
}

- (CGImage)newBGRAImageInOrientation:(int64_t)a3 usingSurface:(void *)a4
{
  if (a4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = [(CAMThumbnailGenerator *)self _generationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__CAMThumbnailGenerator_newBGRAImageInOrientation_usingSurface___block_invoke;
    v11[3] = &unk_1E76FD008;
    v11[6] = a4;
    v11[7] = a3;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(v7, v11);

    v8 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newBGRAImageInOrientation:usingSurface:];
    }

    return 0;
  }

  return v8;
}

void __64__CAMThumbnailGenerator_newBGRAImageInOrientation_usingSurface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v2, 0, &pixelBufferOut);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  v5 = [*(a1 + 32) _newThumbnailOfSize:*(a1 + 56) inOrientation:1111970369 withPixelFormat:pixelBufferOut usingPixelBuffer:Width, Height];
  if (CVPixelBufferGetIOSurface(v5))
  {
    *(*(*(a1 + 40) + 8) + 24) = UICreateCGImageFromIOSurface();
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke_cold_1();
    }
  }

  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v5);
}

- (id)newJPEGDataInOrientation:(int64_t)a3 usingPixelBuffer:(__CVBuffer *)a4
{
  if (a4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__25;
    v16 = __Block_byref_object_dispose__25;
    v17 = 0;
    v7 = [(CAMThumbnailGenerator *)self _generationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__CAMThumbnailGenerator_newJPEGDataInOrientation_usingPixelBuffer___block_invoke;
    v11[3] = &unk_1E76FD008;
    v11[6] = a4;
    v11[7] = a3;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(v7, v11);

    v8 = v13[5];
    _Block_object_dispose(&v12, 8);

    return v8;
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newJPEGDataInOrientation:usingSurface:withMetadata:];
    }

    return 0;
  }
}

void __67__CAMThumbnailGenerator_newJPEGDataInOrientation_usingPixelBuffer___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _newRotatedPixelBuffer:*(a1 + 48) withOrientation:*(a1 + 56)];
  v3 = *MEMORY[0x1E6991978];
  v16[0] = &unk_1F16C8540;
  v4 = *MEMORY[0x1E6991970];
  v15[0] = v3;
  v15[1] = v4;
  v13 = *MEMORY[0x1E6991B90];
  v14 = &unk_1F16C9DA0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v7 = PFFigJPEGDataFromImage();
  v8 = 0;
  v9 = v8;
  if (v7)
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __76__CAMThumbnailGenerator_newJPEGDataInOrientation_usingSurface_withMetadata___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v8;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke_cold_2();
    }
  }

  CVPixelBufferRelease(v2);
}

- (CGImage)newBGRAImageInOrientation:(int64_t)a3 usingPixelBuffer:(__CVBuffer *)a4
{
  if (a4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = [(CAMThumbnailGenerator *)self _generationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CAMThumbnailGenerator_newBGRAImageInOrientation_usingPixelBuffer___block_invoke;
    v11[3] = &unk_1E76FD008;
    v11[6] = a4;
    v11[7] = a3;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(v7, v11);

    v8 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newBGRAImageInOrientation:usingPixelBuffer:];
    }

    return 0;
  }

  return v8;
}

void __68__CAMThumbnailGenerator_newBGRAImageInOrientation_usingPixelBuffer___block_invoke(uint64_t a1)
{
  Width = CVPixelBufferGetWidth(*(a1 + 48));
  v3 = [*(a1 + 32) _newThumbnailOfSize:*(a1 + 56) inOrientation:1111970369 withPixelFormat:*(a1 + 48) usingPixelBuffer:Width, CVPixelBufferGetHeight(*(a1 + 48))];
  if (CVPixelBufferGetIOSurface(v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = UICreateCGImageFromIOSurface();
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke_cold_1();
    }
  }

  CVPixelBufferRelease(v3);
}

- (CGImage)newBGRAImageOfFormat:(int64_t)a3 inOrientation:(int64_t)a4 usingPixelBuffer:(__CVBuffer *)a5
{
  if (a5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9 = [(CAMThumbnailGenerator *)self _generationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingPixelBuffer___block_invoke;
    block[3] = &unk_1E76FCFE0;
    block[6] = a3;
    block[7] = a4;
    block[8] = a5;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(v9, block);

    v10 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAMThumbnailGenerator newBGRAImageInOrientation:usingPixelBuffer:];
    }

    return 0;
  }

  return v10;
}

void __77__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingPixelBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newThumbnailOfFormat:*(a1 + 48) inOrientation:*(a1 + 56) withPixelFormat:1111970369 usingPixelBuffer:*(a1 + 64)];
  if (CVPixelBufferGetIOSurface(v2))
  {
    *(*(*(a1 + 40) + 8) + 24) = UICreateCGImageFromIOSurface();
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__CAMThumbnailGenerator_newBGRAImageOfFormat_inOrientation_usingSurface___block_invoke_cold_1();
    }
  }

  CVPixelBufferRelease(v2);
}

void __29__CAMThumbnailGenerator_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_newThumbnailOfSize:(double)a3 inOrientation:withPixelFormat:usingPixelBuffer:.cold.1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A3640000, a1, OS_LOG_TYPE_ERROR, "Attempting to generate a thumbnail of size %{public}@ with an invalid pixel buffer.", &v5, 0xCu);
}

- (void)_newRotatedPixelBuffer:(os_log_t)log withOrientation:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[CAMThumbnailGenerator _newRotatedPixelBuffer:withOrientation:]";
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = a1;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "<%s> Failed to generate a thumbnail in orientation %ld using a pixel buffer (%ld)", &v3, 0x20u);
}

void __85__CAMThumbnailGenerator_newJPEGDataOfFormat_inOrientation_usingSurface_withMetadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__CAMThumbnailGenerator_newJPEGDataInOrientation_usingSurface_withMetadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end