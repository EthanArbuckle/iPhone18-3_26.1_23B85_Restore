@interface BaseProcessor
- (BOOL)matchBufferResolution:(id)a3;
- (BOOL)matchPixelFormat:(id)a3;
- (BaseProcessor)init;
@end

@implementation BaseProcessor

- (BaseProcessor)init
{
  v3.receiver = self;
  v3.super_class = BaseProcessor;
  result = [(BaseProcessor *)&v3 init];
  result->_pixelFormat = 0;
  result->_bufferWidth = 0;
  result->_bufferHeight = 0;
  return result;
}

- (BOOL)matchPixelFormat:(id)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType([a3 buffer]);
  pixelFormat = self->_pixelFormat;
  if (pixelFormat != PixelFormatType)
  {
    if (pixelFormat)
    {
      return 0;
    }

    self->_pixelFormat = PixelFormatType;
  }

  return 1;
}

- (BOOL)matchBufferResolution:(id)a3
{
  v4 = a3;
  Width = CVPixelBufferGetWidth([v4 buffer]);
  v6 = [v4 buffer];

  Height = CVPixelBufferGetHeight(v6);
  if (*&self->_bufferWidth != __PAIR128__(Height, Width))
  {
    if (self->_bufferWidth || self->_bufferHeight)
    {
      return 0;
    }

    self->_bufferWidth = Width;
    self->_bufferHeight = Height;
  }

  return 1;
}

@end