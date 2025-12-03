@interface MADVideoSessionPixelBufferPool
- (MADVideoSessionPixelBufferPool)init;
- (id).cxx_construct;
- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
@end

@implementation MADVideoSessionPixelBufferPool

- (MADVideoSessionPixelBufferPool)init
{
  v3.receiver = self;
  v3.super_class = MADVideoSessionPixelBufferPool;
  result = [(MADVideoSessionPixelBufferPool *)&v3 init];
  if (result)
  {
    *&result->_width = 0;
    result->_pixelFormat = 1111970369;
  }

  return result;
}

- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  pixelBufferOut = pixelBuffer;
  v21[4] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v9 = PixelFormatType;
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (!self->_pixelBufferPool.value_ || self->_width != Width || self->_height != Height || self->_pixelFormat != PixelFormatType)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{PixelFormatType, pixelBufferOut, *MEMORY[0x1E6966130]}];
    v21[0] = v11;
    v20[1] = *MEMORY[0x1E6966208];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Width];
    v21[1] = v12;
    v20[2] = *MEMORY[0x1E69660B8];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Height];
    v20[3] = *MEMORY[0x1E69660D8];
    v21[2] = v13;
    v21[3] = MEMORY[0x1E695E0F8];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

    if (p_pixelBufferPool->value_)
    {
      CFRelease(p_pixelBufferPool->value_);
      p_pixelBufferPool->value_ = 0;
    }

    PixelBuffer = CVPixelBufferPoolCreate(0, 0, v14, &self->_pixelBufferPool.value_);
    if (PixelBuffer)
    {

      return PixelBuffer;
    }

    self->_width = Width;
    self->_height = Height;
    self->_pixelFormat = v9;
  }

  value = self->_transferSession.value_;
  p_transferSession = &self->_transferSession;
  if (value || (PixelBuffer = VTPixelTransferSessionCreate(0, &p_transferSession->value_)) == 0)
  {
    PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, p_pixelBufferPool->value_, pixelBufferOut);
    if (!PixelBuffer)
    {
      return VTPixelTransferSessionTransferImage(p_transferSession->value_, buffer, *pixelBufferOut);
    }
  }

  return PixelBuffer;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end