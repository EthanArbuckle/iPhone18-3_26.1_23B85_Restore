@interface BaseProcessor
- (BOOL)matchBufferResolution:(id)resolution;
- (BOOL)matchPixelFormat:(id)format;
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

- (BOOL)matchPixelFormat:(id)format
{
  PixelFormatType = CVPixelBufferGetPixelFormatType([format buffer]);
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

- (BOOL)matchBufferResolution:(id)resolution
{
  resolutionCopy = resolution;
  Width = CVPixelBufferGetWidth([resolutionCopy buffer]);
  buffer = [resolutionCopy buffer];

  Height = CVPixelBufferGetHeight(buffer);
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