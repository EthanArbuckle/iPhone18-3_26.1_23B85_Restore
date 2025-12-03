@interface VCPSceneProcessingImageManager
+ (id)imageManager;
- (VCPSceneProcessingImageManager)init;
- (int)_createPixelBuffer:(__CVBuffer *)buffer withColorSpace:(CGColorSpace *)space fromPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)_createPixelBuffer:(__CVBuffer *)buffer withMinorDimension:(unint64_t)dimension fromFullPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)_createPixelBuffer:(__CVBuffer *)buffer withWidth:(unint64_t)width andHeight:(unint64_t)height;
- (int)_pooledPixelBuffer:(__CVBuffer *)buffer withDimension:(unint64_t)dimension;
- (int)fullPixelBuffer:(__CVBuffer *)buffer toScaledBuffer:(__CVBuffer *)scaledBuffer;
- (int)loadFullPixelBuffer:(__CVBuffer *)buffer scaledPixelBuffer299:(__CVBuffer *)buffer299 scaledPixelBuffer360:(__CVBuffer *)buffer360 fromImageURL:(id)l abnormalDimension:(unint64_t)dimension;
- (int)scalePixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer width:(unint64_t)width height:(unint64_t)height;
- (void)dealloc;
@end

@implementation VCPSceneProcessingImageManager

- (VCPSceneProcessingImageManager)init
{
  v6.receiver = self;
  v6.super_class = VCPSceneProcessingImageManager;
  v2 = [(VCPSceneProcessingImageManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pixelBufferPools = v2->_pixelBufferPools;
    v2->_pixelBufferPools = dictionary;
  }

  return v2;
}

+ (id)imageManager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  v3 = +[VCPImageManager sharedImageManager];
  [v3 flushCache];

  v4.receiver = self;
  v4.super_class = VCPSceneProcessingImageManager;
  [(VCPSceneProcessingImageManager *)&v4 dealloc];
}

- (int)_createPixelBuffer:(__CVBuffer *)buffer withWidth:(unint64_t)width andHeight:(unint64_t)height
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69660D8];
  v11[0] = MEMORY[0x1E695E0F8];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  LODWORD(buffer) = CVPixelBufferCreate(0, width, height, 0x42475241u, v8, buffer);

  return buffer;
}

- (int)_createPixelBuffer:(__CVBuffer *)buffer withMinorDimension:(unint64_t)dimension fromFullPixelBuffer:(__CVBuffer *)pixelBuffer
{
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  if (!Width || !Height)
  {
    return -18;
  }

  v11 = Height / Width;
  if (Width > Height)
  {
    v11 = Width / Height;
  }

  v12 = v11 * dimension;
  if (Width <= Height)
  {
    dimensionCopy = dimension;
  }

  else
  {
    dimensionCopy = v12;
  }

  if (Width <= Height)
  {
    dimensionCopy2 = v12;
  }

  else
  {
    dimensionCopy2 = dimension;
  }

  return [(VCPSceneProcessingImageManager *)self _createPixelBuffer:buffer withWidth:dimensionCopy andHeight:dimensionCopy2];
}

- (int)_pooledPixelBuffer:(__CVBuffer *)buffer withDimension:(unint64_t)dimension
{
  v22[4] = *MEMORY[0x1E69E9840];
  pixelBufferPools = self->_pixelBufferPools;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
  v9 = [(NSMutableDictionary *)pixelBufferPools objectForKeyedSubscript:v8];

  v20 = v9;
  if (!v9)
  {
    v21[0] = *MEMORY[0x1E6966208];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
    v22[0] = v11;
    v21[1] = *MEMORY[0x1E69660B8];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
    v13 = *MEMORY[0x1E6966130];
    v22[1] = v12;
    v22[2] = &unk_1F49BE608;
    v14 = *MEMORY[0x1E69660D8];
    v21[2] = v13;
    v21[3] = v14;
    v22[3] = MEMORY[0x1E695E0F8];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

    v10 = CVPixelBufferPoolCreate(0, 0, v15, &v20);
    if (v10)
    {

      return v10;
    }

    v17 = v20;
    v18 = self->_pixelBufferPools;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
    [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

    v9 = v20;
  }

  return CVPixelBufferPoolCreatePixelBuffer(0, v9, buffer);
}

- (int)fullPixelBuffer:(__CVBuffer *)buffer toScaledBuffer:(__CVBuffer *)scaledBuffer
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  bufferCopy = buffer;
  v14 = 1;
  if (buffer)
  {
    v6 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
    v12 = v6;
    if (!v6 || (v7 = v6, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = buffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v7 = v12) == 0))
    {
      buf.data = CVPixelBufferGetBaseAddress(buffer);
      buf.height = CVPixelBufferGetHeight(buffer);
      buf.width = CVPixelBufferGetWidth(buffer);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(buffer);
      pixelBuffer = scaledBuffer;
      unlockFlags = 0;
      if (scaledBuffer)
      {
        v7 = CVPixelBufferLockBaseAddress(scaledBuffer, 0);
        v9 = v7;
        if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(v15.data) = 134218240, *(&v15.data + 4) = pixelBuffer, WORD2(v15.height) = 1024, *(&v15.height + 6) = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v15, 0x12u), (v7 = v9) == 0))
        {
          v15.data = CVPixelBufferGetBaseAddress(scaledBuffer);
          v15.height = CVPixelBufferGetHeight(scaledBuffer);
          v15.width = CVPixelBufferGetWidth(scaledBuffer);
          v15.rowBytes = CVPixelBufferGetBytesPerRow(scaledBuffer);
          v7 = vImageScale_ARGB8888(&buf, &v15, 0, 0x20u);
          if (!v7)
          {
            CVBufferPropagateAttachments(buffer, scaledBuffer);
            v7 = CVPixelBufferLock::Unlock(&v9);
            if (!v7)
            {
              v7 = CVPixelBufferLock::Unlock(&v12);
            }
          }

          if (pixelBuffer && !v9 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

      if (bufferCopy && !v12 && CVPixelBufferUnlockBaseAddress(bufferCopy, v14) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    return -50;
  }

  return v7;
}

- (int)_createPixelBuffer:(__CVBuffer *)buffer withColorSpace:(CGColorSpace *)space fromPixelBuffer:(__CVBuffer *)pixelBuffer
{
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v11 = -18;
  if (Width)
  {
    if (Height)
    {
      v12 = Width;
      v11 = [(VCPSceneProcessingImageManager *)self _createPixelBuffer:buffer withWidth:Width andHeight:Height];
      if (!v11)
      {
        imageOut = 0;
        VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, &imageOut);
        if (imageOut)
        {
          v13 = *buffer;
          pixelBuffer = v13;
          unlockFlags = 0;
          if (v13)
          {
            v11 = CVPixelBufferLockBaseAddress(v13, 0);
            v19 = v11;
            if (v11)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [VCPImageConverter convertImage:yuvFrame:];
              }
            }

            else
            {
              BaseAddress = CVPixelBufferGetBaseAddress(v13);
              BytesPerRow = CVPixelBufferGetBytesPerRow(v13);
              BitmapInfo = CGImageGetBitmapInfo(imageOut);
              v18 = CGBitmapContextCreate(BaseAddress, v12, Height, 8uLL, BytesPerRow, space, BitmapInfo);
              v23.size.width = v12;
              v23.size.height = Height;
              v23.origin.x = 0.0;
              v23.origin.y = 0.0;
              CGContextDrawImage(v18, v23, imageOut);
              CVBufferSetAttachment(v13, *MEMORY[0x1E6965CE8], space, kCVAttachmentMode_ShouldPropagate);
              v11 = CVPixelBufferLock::Unlock(&v19);
              CF<__CVBuffer *>::~CF(&v18);
              if (pixelBuffer && !v19 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

            v11 = -50;
          }
        }

        else
        {
          v11 = -18;
        }

        CF<__CVBuffer *>::~CF(&imageOut);
      }
    }
  }

  return v11;
}

- (int)loadFullPixelBuffer:(__CVBuffer *)buffer scaledPixelBuffer299:(__CVBuffer *)buffer299 scaledPixelBuffer360:(__CVBuffer *)buffer360 fromImageURL:(id)l abnormalDimension:(unint64_t)dimension
{
  lCopy = l;
  *buffer = 0;
  if (buffer299)
  {
    *buffer299 = 0;
  }

  if (buffer360)
  {
    *buffer360 = 0;
  }

  v26 = 0;
  v24 = 0;
  v25 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = +[VCPImageManager sharedImageManager];
  cf = [v14 pixelBufferWithFormat:1111970369 fromImageURL:lCopy flushCache:0];
  v23 = 0;
  CF<__CVBuffer *>::~CF(&v23);

  if (!cf)
  {
    objc_sync_exit(selfCopy);

    v16 = -18;
    goto LABEL_26;
  }

  v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v23 = v15;
  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
    v15 = v23;
  }

  v16 = [(VCPSceneProcessingImageManager *)selfCopy _createPixelBuffer:&v26 withColorSpace:v15 fromPixelBuffer:cf];
  if (v16)
  {
    goto LABEL_9;
  }

  if (dimension)
  {
    if (buffer299)
    {
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      v16 = [(VCPSceneProcessingImageManager *)selfCopy _createPixelBuffer:&v25 withMinorDimension:299 fromFullPixelBuffer:v26];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (buffer360)
    {
      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      v22 = [(VCPSceneProcessingImageManager *)selfCopy _createPixelBuffer:&v24 withMinorDimension:360 fromFullPixelBuffer:v26];
      goto LABEL_44;
    }
  }

  else
  {
    if (buffer299)
    {
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      v16 = [(VCPSceneProcessingImageManager *)selfCopy _pooledPixelBuffer:&v25 withDimension:299];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (buffer360)
    {
      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      v22 = [(VCPSceneProcessingImageManager *)selfCopy _pooledPixelBuffer:&v24 withDimension:360];
LABEL_44:
      v16 = v22;
      if (!v22)
      {
        goto LABEL_45;
      }

LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }
  }

LABEL_45:
  v16 = 0;
  v17 = 1;
LABEL_10:
  CF<__CVBuffer *>::~CF(&v23);
  objc_sync_exit(selfCopy);

  if (v17)
  {
    if ((!buffer299 || (v16 = [(VCPSceneProcessingImageManager *)selfCopy fullPixelBuffer:v26 toScaledBuffer:v25]) == 0) && (!buffer360 || (v16 = [(VCPSceneProcessingImageManager *)selfCopy fullPixelBuffer:v26 toScaledBuffer:v24]) == 0))
    {
      v18 = v26;
      if (v26)
      {
        v18 = CFRetain(v26);
      }

      *buffer = v18;
      if (buffer299)
      {
        v19 = v25;
        if (v25)
        {
          v19 = CFRetain(v25);
        }

        *buffer299 = v19;
      }

      if (buffer360)
      {
        v20 = v24;
        if (v24)
        {
          v20 = CFRetain(v24);
        }

        v16 = 0;
        *buffer360 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

LABEL_26:
  CF<__CVBuffer *>::~CF(&v24);
  CF<__CVBuffer *>::~CF(&v25);
  CF<__CVBuffer *>::~CF(&v26);
  CF<__CVBuffer *>::~CF(&cf);

  return v16;
}

- (int)scalePixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer width:(unint64_t)width height:(unint64_t)height
{
  cf = 0;
  if (width == height)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(VCPSceneProcessingImageManager *)selfCopy _pooledPixelBuffer:&cf withDimension:width];
    objc_sync_exit(selfCopy);

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(VCPSceneProcessingImageManager *)self _createPixelBuffer:&cf withWidth:width andHeight:height];
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v11 = [(VCPSceneProcessingImageManager *)self fullPixelBuffer:buffer toScaledBuffer:cf];
  if (!v11)
  {
    v12 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    v11 = 0;
    *pixelBuffer = v12;
  }

LABEL_9:
  CF<__CVBuffer *>::~CF(&cf);
  return v11;
}

@end