@interface VCPSceneProcessingImageManager
+ (id)imageManager;
- (VCPSceneProcessingImageManager)init;
- (int)_createPixelBuffer:(__CVBuffer *)a3 withColorSpace:(CGColorSpace *)a4 fromPixelBuffer:(__CVBuffer *)a5;
- (int)_createPixelBuffer:(__CVBuffer *)a3 withMinorDimension:(unint64_t)a4 fromFullPixelBuffer:(__CVBuffer *)a5;
- (int)_createPixelBuffer:(__CVBuffer *)a3 withWidth:(unint64_t)a4 andHeight:(unint64_t)a5;
- (int)_pooledPixelBuffer:(__CVBuffer *)a3 withDimension:(unint64_t)a4;
- (int)fullPixelBuffer:(__CVBuffer *)a3 toScaledBuffer:(__CVBuffer *)a4;
- (int)loadFullPixelBuffer:(__CVBuffer *)a3 scaledPixelBuffer299:(__CVBuffer *)a4 scaledPixelBuffer360:(__CVBuffer *)a5 fromImageURL:(id)a6 abnormalDimension:(unint64_t)a7;
- (int)scalePixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 width:(unint64_t)a5 height:(unint64_t)a6;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    pixelBufferPools = v2->_pixelBufferPools;
    v2->_pixelBufferPools = v3;
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

- (int)_createPixelBuffer:(__CVBuffer *)a3 withWidth:(unint64_t)a4 andHeight:(unint64_t)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69660D8];
  v11[0] = MEMORY[0x1E695E0F8];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  LODWORD(a3) = CVPixelBufferCreate(0, a4, a5, 0x42475241u, v8, a3);

  return a3;
}

- (int)_createPixelBuffer:(__CVBuffer *)a3 withMinorDimension:(unint64_t)a4 fromFullPixelBuffer:(__CVBuffer *)a5
{
  Height = CVPixelBufferGetHeight(a5);
  Width = CVPixelBufferGetWidth(a5);
  if (!Width || !Height)
  {
    return -18;
  }

  v11 = Height / Width;
  if (Width > Height)
  {
    v11 = Width / Height;
  }

  v12 = v11 * a4;
  if (Width <= Height)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (Width <= Height)
  {
    v14 = v12;
  }

  else
  {
    v14 = a4;
  }

  return [(VCPSceneProcessingImageManager *)self _createPixelBuffer:a3 withWidth:v13 andHeight:v14];
}

- (int)_pooledPixelBuffer:(__CVBuffer *)a3 withDimension:(unint64_t)a4
{
  v22[4] = *MEMORY[0x1E69E9840];
  pixelBufferPools = self->_pixelBufferPools;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)pixelBufferPools objectForKeyedSubscript:v8];

  v20 = v9;
  if (!v9)
  {
    v21[0] = *MEMORY[0x1E6966208];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v22[0] = v11;
    v21[1] = *MEMORY[0x1E69660B8];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
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
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

    v9 = v20;
  }

  return CVPixelBufferPoolCreatePixelBuffer(0, v9, a3);
}

- (int)fullPixelBuffer:(__CVBuffer *)a3 toScaledBuffer:(__CVBuffer *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = a3;
  v14 = 1;
  if (a3)
  {
    v6 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v12 = v6;
    if (!v6 || (v7 = v6, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = a3, WORD2(buf.height) = 1024, *(&buf.height + 6) = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v7 = v12) == 0))
    {
      buf.data = CVPixelBufferGetBaseAddress(a3);
      buf.height = CVPixelBufferGetHeight(a3);
      buf.width = CVPixelBufferGetWidth(a3);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(a3);
      pixelBuffer = a4;
      unlockFlags = 0;
      if (a4)
      {
        v7 = CVPixelBufferLockBaseAddress(a4, 0);
        v9 = v7;
        if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(v15.data) = 134218240, *(&v15.data + 4) = pixelBuffer, WORD2(v15.height) = 1024, *(&v15.height + 6) = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v15, 0x12u), (v7 = v9) == 0))
        {
          v15.data = CVPixelBufferGetBaseAddress(a4);
          v15.height = CVPixelBufferGetHeight(a4);
          v15.width = CVPixelBufferGetWidth(a4);
          v15.rowBytes = CVPixelBufferGetBytesPerRow(a4);
          v7 = vImageScale_ARGB8888(&buf, &v15, 0, 0x20u);
          if (!v7)
          {
            CVBufferPropagateAttachments(a3, a4);
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

      if (v13 && !v12 && CVPixelBufferUnlockBaseAddress(v13, v14) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

- (int)_createPixelBuffer:(__CVBuffer *)a3 withColorSpace:(CGColorSpace *)a4 fromPixelBuffer:(__CVBuffer *)a5
{
  Height = CVPixelBufferGetHeight(a5);
  Width = CVPixelBufferGetWidth(a5);
  v11 = -18;
  if (Width)
  {
    if (Height)
    {
      v12 = Width;
      v11 = [(VCPSceneProcessingImageManager *)self _createPixelBuffer:a3 withWidth:Width andHeight:Height];
      if (!v11)
      {
        imageOut = 0;
        VTCreateCGImageFromCVPixelBuffer(a5, 0, &imageOut);
        if (imageOut)
        {
          v13 = *a3;
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
              v18 = CGBitmapContextCreate(BaseAddress, v12, Height, 8uLL, BytesPerRow, a4, BitmapInfo);
              v23.size.width = v12;
              v23.size.height = Height;
              v23.origin.x = 0.0;
              v23.origin.y = 0.0;
              CGContextDrawImage(v18, v23, imageOut);
              CVBufferSetAttachment(v13, *MEMORY[0x1E6965CE8], a4, kCVAttachmentMode_ShouldPropagate);
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

- (int)loadFullPixelBuffer:(__CVBuffer *)a3 scaledPixelBuffer299:(__CVBuffer *)a4 scaledPixelBuffer360:(__CVBuffer *)a5 fromImageURL:(id)a6 abnormalDimension:(unint64_t)a7
{
  v12 = a6;
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v26 = 0;
  v24 = 0;
  v25 = 0;
  v13 = self;
  objc_sync_enter(v13);
  v14 = +[VCPImageManager sharedImageManager];
  cf = [v14 pixelBufferWithFormat:1111970369 fromImageURL:v12 flushCache:0];
  v23 = 0;
  CF<__CVBuffer *>::~CF(&v23);

  if (!cf)
  {
    objc_sync_exit(v13);

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

  v16 = [(VCPSceneProcessingImageManager *)v13 _createPixelBuffer:&v26 withColorSpace:v15 fromPixelBuffer:cf];
  if (v16)
  {
    goto LABEL_9;
  }

  if (a7)
  {
    if (a4)
    {
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      v16 = [(VCPSceneProcessingImageManager *)v13 _createPixelBuffer:&v25 withMinorDimension:299 fromFullPixelBuffer:v26];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (a5)
    {
      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      v22 = [(VCPSceneProcessingImageManager *)v13 _createPixelBuffer:&v24 withMinorDimension:360 fromFullPixelBuffer:v26];
      goto LABEL_44;
    }
  }

  else
  {
    if (a4)
    {
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      v16 = [(VCPSceneProcessingImageManager *)v13 _pooledPixelBuffer:&v25 withDimension:299];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (a5)
    {
      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      v22 = [(VCPSceneProcessingImageManager *)v13 _pooledPixelBuffer:&v24 withDimension:360];
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
  objc_sync_exit(v13);

  if (v17)
  {
    if ((!a4 || (v16 = [(VCPSceneProcessingImageManager *)v13 fullPixelBuffer:v26 toScaledBuffer:v25]) == 0) && (!a5 || (v16 = [(VCPSceneProcessingImageManager *)v13 fullPixelBuffer:v26 toScaledBuffer:v24]) == 0))
    {
      v18 = v26;
      if (v26)
      {
        v18 = CFRetain(v26);
      }

      *a3 = v18;
      if (a4)
      {
        v19 = v25;
        if (v25)
        {
          v19 = CFRetain(v25);
        }

        *a4 = v19;
      }

      if (a5)
      {
        v20 = v24;
        if (v24)
        {
          v20 = CFRetain(v24);
        }

        v16 = 0;
        *a5 = v20;
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

- (int)scalePixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 width:(unint64_t)a5 height:(unint64_t)a6
{
  cf = 0;
  if (a5 == a6)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(VCPSceneProcessingImageManager *)v10 _pooledPixelBuffer:&cf withDimension:a5];
    objc_sync_exit(v10);

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(VCPSceneProcessingImageManager *)self _createPixelBuffer:&cf withWidth:a5 andHeight:a6];
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v11 = [(VCPSceneProcessingImageManager *)self fullPixelBuffer:a3 toScaledBuffer:cf];
  if (!v11)
  {
    v12 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    v11 = 0;
    *a4 = v12;
  }

LABEL_9:
  CF<__CVBuffer *>::~CF(&cf);
  return v11;
}

@end