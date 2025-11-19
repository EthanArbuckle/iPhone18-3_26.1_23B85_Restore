@interface MADHEICSAlphaSequenceWriter
+ (id)transcodeSequenceData:(id)a3 maxDimension:(unint64_t)a4 outputWidth:(unint64_t *)a5 outputHeight:(unint64_t *)a6;
+ (int)getOutputWidth:(unint64_t *)a3 outputHeight:(unint64_t *)a4 sequenceData:(id)a5;
- (MADHEICSAlphaSequenceWriter)initWithFrameCount:(unint64_t)a3 crop:(CGRect *)a4;
- (id).cxx_construct;
- (id)finishWithEndTime:(id *)a3;
- (int)_addPixelBuffer420Alpha:(__CVBuffer *)a3 withTime:(id *)a4;
- (int)_addPixelBufferBGRA:(__CVBuffer *)a3 withTime:(id *)a4;
- (int)_createCompressionSessionLazy;
- (int)_finishWithEndTime:(id *)a3 outputData:(id *)a4;
- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4;
- (int)copyInputPlaneIndex:(unint64_t)a3 inputPixelBuffer:(__CVBuffer *)a4 toOutputPlaneIndex:(unint64_t)a5 outputPixelBuffer:(__CVBuffer *)a6 bytesPerPixel:(unint64_t)a7;
- (int)createPixelBufferPool:(__CVPixelBufferPool *)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(int)a6;
- (int)demuxPixelBuffer:(__CVBuffer *)a3 imagePixelBuffer:(__CVBuffer *)a4 alphaPixelBuffer:(__CVBuffer *)a5;
@end

@implementation MADHEICSAlphaSequenceWriter

- (MADHEICSAlphaSequenceWriter)initWithFrameCount:(unint64_t)a3 crop:(CGRect *)a4
{
  v10.receiver = self;
  v10.super_class = MADHEICSAlphaSequenceWriter;
  v5 = [(MADHEICSAlphaSequenceWriter *)&v10 init];
  v6 = v5;
  if (a4 && v5)
  {
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a4);
    crop = v6->_crop;
    v6->_crop = DictionaryRepresentation;
  }

  return v6;
}

- (int)createPixelBufferPool:(__CVPixelBufferPool *)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(int)a6
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = *MEMORY[0x1E6966130];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:*&a6];
  v17[0] = v9;
  v16[1] = *MEMORY[0x1E6966208];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  v17[1] = v10;
  v16[2] = *MEMORY[0x1E69660B8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
  v16[3] = *MEMORY[0x1E69660D8];
  v17[2] = v11;
  v17[3] = MEMORY[0x1E695E0F8];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = CVPixelBufferPoolCreate(0, 0, v12, a3);
  if (v13 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create pixel buffer pool", v15, 2u);
  }

  return v13;
}

- (int)copyInputPlaneIndex:(unint64_t)a3 inputPixelBuffer:(__CVBuffer *)a4 toOutputPlaneIndex:(unint64_t)a5 outputPixelBuffer:(__CVBuffer *)a6 bytesPerPixel:(unint64_t)a7
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a4, a3);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, a3);
  if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(a6, a5) || HeightOfPlane != CVPixelBufferGetHeightOfPlane(a6, a5))
  {
    return -50;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, a3);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a6, a5);
  v16 = WidthOfPlane * a7;
  result = -50;
  if (v16 <= BytesPerRowOfPlane && v16 <= v15)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, a3);
    v19 = CVPixelBufferGetBaseAddressOfPlane(a6, a5);
    if (HeightOfPlane)
    {
      v20 = v19;
      do
      {
        memcpy(v20, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v20 += v15;
        --HeightOfPlane;
      }

      while (HeightOfPlane);
    }

    return 0;
  }

  return result;
}

- (int)demuxPixelBuffer:(__CVBuffer *)a3 imagePixelBuffer:(__CVBuffer *)a4 alphaPixelBuffer:(__CVBuffer *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(a3) != 1982882104)
  {
    return -50;
  }

  if (!self->_imagePixelBufferPool.value_)
  {
    Width = CVPixelBufferGetWidth(a3);
    v11 = [(MADHEICSAlphaSequenceWriter *)self createPixelBufferPool:&self->_imagePixelBufferPool width:Width height:CVPixelBufferGetHeight(a3) pixelFormat:875704438];
    if (v11)
    {
      return v11;
    }
  }

  if (!self->_alphaPixelBufferPool.value_)
  {
    v12 = CVPixelBufferGetWidth(a3);
    v11 = [(MADHEICSAlphaSequenceWriter *)self createPixelBufferPool:&self->_alphaPixelBufferPool width:v12 height:CVPixelBufferGetHeight(a3) pixelFormat:1278226488];
    if (v11)
    {
      return v11;
    }
  }

  pixelBufferOut = 0;
  v9 = CVPixelBufferPoolCreatePixelBuffer(0, self->_imagePixelBufferPool.value_, &pixelBufferOut);
  if (!v9)
  {
    v20 = 0;
    v9 = CVPixelBufferPoolCreatePixelBuffer(0, self->_alphaPixelBufferPool.value_, &v20);
    if (!v9)
    {
      v17 = 0;
      pixelBuffer = a3;
      unlockFlags = 1;
      if (a3)
      {
        v9 = CVPixelBufferLockBaseAddress(a3, 1uLL);
        v17 = v9;
        if (!v9 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*buf = 134218240, v23 = pixelBuffer, v24 = 1024, v25 = v9, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v9 = v17) == 0))
        {
          CVPixelBufferLock::CVPixelBufferLock(buf, pixelBufferOut, 0);
          v9 = *buf;
          if (!*buf)
          {
            v9 = [(MADHEICSAlphaSequenceWriter *)self copyInputPlaneIndex:0 inputPixelBuffer:a3 toOutputPlaneIndex:0 outputPixelBuffer:pixelBufferOut bytesPerPixel:1];
            if (!v9)
            {
              v9 = [(MADHEICSAlphaSequenceWriter *)self copyInputPlaneIndex:1 inputPixelBuffer:a3 toOutputPlaneIndex:1 outputPixelBuffer:pixelBufferOut bytesPerPixel:2];
              if (!v9)
              {
                v9 = CVPixelBufferLock::Unlock(buf);
                if (!v9)
                {
                  CVPixelBufferLock::CVPixelBufferLock(v16, v20, 0);
                  v9 = v16[0];
                  if (!v16[0])
                  {
                    v9 = [(MADHEICSAlphaSequenceWriter *)self copyInputPlaneIndex:2 inputPixelBuffer:a3 toOutputPlaneIndex:0 outputPixelBuffer:v20 bytesPerPixel:1];
                    if (!v9)
                    {
                      v9 = CVPixelBufferLock::Unlock(v16);
                      if (!v9)
                      {
                        v9 = CVPixelBufferLock::Unlock(&v17);
                        if (!v9)
                        {
                          v14 = pixelBufferOut;
                          if (pixelBufferOut)
                          {
                            v14 = CFRetain(pixelBufferOut);
                          }

                          *a4 = v14;
                          v15 = v20;
                          if (v20)
                          {
                            v15 = CFRetain(v20);
                          }

                          v9 = 0;
                          *a5 = v15;
                        }
                      }
                    }
                  }

                  CVPixelBufferLock::~CVPixelBufferLock(v16);
                }
              }
            }
          }

          CVPixelBufferLock::~CVPixelBufferLock(buf);
          if (pixelBuffer && !v17 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

        v9 = -50;
      }
    }

    CF<__CVBuffer *>::~CF(&v20);
  }

  CF<__CVBuffer *>::~CF(&pixelBufferOut);
  return v9;
}

- (int)_createCompressionSessionLazy
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (self->_compressionSession.value_)
  {
    return 0;
  }

  started = CMPhotoCompressionSessionCreate();
  if (!started)
  {
    v3 = *MEMORY[0x1E6991860];
    v6[0] = *MEMORY[0x1E6991870];
    v6[1] = v3;
    v7[0] = &unk_1F49BB920;
    v7[1] = &unk_1F49BB938;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    started = CMPhotoCompressionSessionOpenEmptyContainer();
    if (!started)
    {
      started = CMPhotoCompressionSessionStartImageSequence();
    }
  }

  return started;
}

- (int)_addPixelBuffer420Alpha:(__CVBuffer *)a3 withTime:(id *)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = [(MADHEICSAlphaSequenceWriter *)self _createCompressionSessionLazy];
  if (!v6)
  {
    v15 = 0;
    v16 = 0;
    v6 = [(MADHEICSAlphaSequenceWriter *)self demuxPixelBuffer:a3 imagePixelBuffer:&v16 alphaPixelBuffer:&v15];
    if (!v6)
    {
      v7 = MEMORY[0x1E695DF90];
      v8 = *MEMORY[0x1E6991978];
      v19[0] = *MEMORY[0x1E69918D0];
      v19[1] = v8;
      v20[0] = &unk_1F49BB950;
      v20[1] = &unk_1F49BB968;
      v19[2] = *MEMORY[0x1E6991970];
      v17 = *MEMORY[0x1E6991B90];
      v18 = &unk_1F49BB548;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v20[2] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
      v11 = [v7 dictionaryWithDictionary:v10];

      crop = self->_crop;
      if (crop)
      {
        [v11 setObject:crop forKeyedSubscript:*MEMORY[0x1E6991998]];
      }

      v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
      [v13 setObject:&unk_1F49BB980 forKeyedSubscript:*MEMORY[0x1E6991918]];
      v6 = CMPhotoCompressionSessionAddImageToSequence();
      if (!v6)
      {
        v6 = CMPhotoCompressionSessionAddAuxiliaryImage();
      }
    }

    CF<__CVBuffer *>::~CF(&v15);
    CF<__CVBuffer *>::~CF(&v16);
  }

  return v6;
}

- (int)_addPixelBufferBGRA:(__CVBuffer *)a3 withTime:(id *)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = [(MADHEICSAlphaSequenceWriter *)self _createCompressionSessionLazy];
  if (!v5)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = *MEMORY[0x1E6991978];
    v16[0] = *MEMORY[0x1E69918D0];
    v16[1] = v7;
    v17[0] = &unk_1F49BB950;
    v17[1] = &unk_1F49BB968;
    v16[2] = *MEMORY[0x1E6991970];
    v14 = *MEMORY[0x1E6991B90];
    v15 = &unk_1F49BB548;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v10 = [v6 dictionaryWithDictionary:v9];

    crop = self->_crop;
    if (crop)
    {
      [v10 setObject:crop forKeyedSubscript:*MEMORY[0x1E6991998]];
    }

    v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
    [v12 setObject:&unk_1F49BB980 forKeyedSubscript:*MEMORY[0x1E6991918]];
    [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6991920]];
    v5 = CMPhotoCompressionSessionAddImageToSequence();
  }

  return v5;
}

- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  result = self->_status;
  if (!result)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (PixelFormatType == 1111970369)
    {
      v10 = *&a4->var0;
      *v11 = a4->var3;
      result = [(MADHEICSAlphaSequenceWriter *)self _addPixelBufferBGRA:a3 withTime:&v10];
    }

    else
    {
      v9 = PixelFormatType;
      if (PixelFormatType == 1982882104)
      {
        v10 = *&a4->var0;
        *v11 = a4->var3;
        result = [(MADHEICSAlphaSequenceWriter *)self _addPixelBuffer420Alpha:a3 withTime:&v10];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v10) = 67110144;
          DWORD1(v10) = v9 >> 24;
          WORD4(v10) = 1024;
          *(&v10 + 10) = v9 << 8 >> 24;
          HIWORD(v10) = 1024;
          *v11 = v9 >> 8;
          *&v11[4] = 1024;
          *&v11[6] = v9;
          v12 = 1024;
          v13 = v9;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported pixel format '%c%c%c%c' (%d)", &v10, 0x20u);
        }

        result = -50;
      }
    }

    self->_status = result;
  }

  return result;
}

- (int)_finishWithEndTime:(id *)a3 outputData:(id *)a4
{
  v5 = CMPhotoCompressionSessionEndImageSequence();
  if (!v5)
  {
    obj = 0;
    v5 = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
    if (!v5)
    {
      objc_storeStrong(a4, obj);
    }

    CF<__CVBuffer *>::~CF(&obj);
  }

  return v5;
}

- (id)finishWithEndTime:(id *)a3
{
  if (self->_status)
  {
    v3 = 0;
  }

  else
  {
    v6 = *a3;
    v7 = 0;
    if ([(MADHEICSAlphaSequenceWriter *)self _finishWithEndTime:&v6 outputData:&v7]&& MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6.var0) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to finalize HEIC sequence", &v6, 2u);
    }

    self->_status = -18;
    v3 = v7;
  }

  return v3;
}

+ (int)getOutputWidth:(unint64_t *)a3 outputHeight:(unint64_t *)a4 sequenceData:(id)a5
{
  v7 = a5;
  *a4 = 0;
  *a3 = 0;
  v11 = 0;
  Container = CMPhotoDecompressionSessionCreate();
  if (!Container)
  {
    v10 = 0;
    Container = CMPhotoDecompressionSessionCreateContainer();
    if (!Container)
    {
      Container = CMPhotoDecompressionContainerGetImageGeometryForIndex();
      if (!Container)
      {
        *a3 = 0;
        *a4 = 0;
      }
    }

    CF<__CVBuffer *>::~CF(&v10);
  }

  CF<__CVBuffer *>::~CF(&v11);

  return Container;
}

+ (id)transcodeSequenceData:(id)a3 maxDimension:(unint64_t)a4 outputWidth:(unint64_t *)a5 outputHeight:(unint64_t *)a6
{
  v9 = a3;
  v10 = [[MADHEICSAlphaSequenceTranscoder alloc] initWithSequenceData:v9 maxDimension:a4 qualityValue:0.5];
  v11 = [(MADHEICSAlphaSequenceTranscoder *)v10 run];
  if (v11)
  {
    if ([objc_opt_class() getOutputWidth:a5 outputHeight:a6 sequenceData:v11] && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to query HEIC sequence output dimensions", v14, 2u);
    }

    v12 = v11;
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to transcode HEIC sequence", buf, 2u);
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end