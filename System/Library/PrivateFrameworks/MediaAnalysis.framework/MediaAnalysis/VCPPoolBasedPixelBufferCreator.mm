@interface VCPPoolBasedPixelBufferCreator
- (VCPPoolBasedPixelBufferCreator)initWithBufferWidth:(int64_t)a3 bufferHeight:(int64_t)a4 andPixelFormat:(unsigned int)a5;
- (int)_createPixelBufferPool:(__CVPixelBufferPool *)a3 withBufferWidth:(int64_t)a4 bufferHeight:(int64_t)a5 andPixelFormat:(unsigned int)a6;
- (int)createPixelBuffer:(__CVBuffer *)a3;
@end

@implementation VCPPoolBasedPixelBufferCreator

- (VCPPoolBasedPixelBufferCreator)initWithBufferWidth:(int64_t)a3 bufferHeight:(int64_t)a4 andPixelFormat:(unsigned int)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCPPoolBasedPixelBufferCreator;
  v8 = [(VCPPoolBasedPixelBufferCreator *)&v15 init];
  v9 = v8;
  if (!v8 || (v8->_bufferWidth = a3, v8->_bufferHeight = a4, v8->_pixelFormat = a5, a3) && a4 && a5)
  {
    v10 = v8;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      bufferWidth = v9->_bufferWidth;
      bufferHeight = v9->_bufferHeight;
      pixelFormat = v9->_pixelFormat;
      *buf = 67109632;
      v17 = bufferWidth;
      v18 = 1024;
      v19 = bufferHeight;
      v20 = 1024;
      v21 = pixelFormat;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "invalid buffer size %dx%d or pixel format %u", buf, 0x14u);
    }

    v10 = 0;
  }

  return v10;
}

- (int)_createPixelBufferPool:(__CVPixelBufferPool *)a3 withBufferWidth:(int64_t)a4 bufferHeight:(int64_t)a5 andPixelFormat:(unsigned int)a6
{
  v6 = *&a6;
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E6966208];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v15[0] = v9;
  v14[1] = *MEMORY[0x1E69660B8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v15[1] = v10;
  v14[2] = *MEMORY[0x1E6966130];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v14[3] = *MEMORY[0x1E69660D8];
  v15[2] = v11;
  v15[3] = MEMORY[0x1E695E0F8];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  LODWORD(v9) = CVPixelBufferPoolCreate(0, 0, v12, a3);
  return v9;
}

- (int)createPixelBuffer:(__CVBuffer *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  value = v4->_pool.value_;
  if (!value)
  {
    PixelBuffer = [(VCPPoolBasedPixelBufferCreator *)v4 _createPixelBufferPool:&v4->_pool withBufferWidth:v4->_bufferWidth bufferHeight:v4->_bufferHeight andPixelFormat:v4->_pixelFormat];
    if (PixelBuffer)
    {
      goto LABEL_4;
    }

    value = v4->_pool.value_;
  }

  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, value, a3);
LABEL_4:
  objc_sync_exit(v4);

  return PixelBuffer;
}

@end