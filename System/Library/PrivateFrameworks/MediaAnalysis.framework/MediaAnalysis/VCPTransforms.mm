@interface VCPTransforms
- (__CVBuffer)cropAndScale:(__CVBuffer *)scale regionCrop:(CGRect)crop;
- (id).cxx_construct;
- (id)initImageTransform:(int)transform transformedImageWidth:(int)width transformedImageHeight:(int)height;
@end

@implementation VCPTransforms

- (id)initImageTransform:(int)transform transformedImageWidth:(int)width transformedImageHeight:(int)height
{
  *(self + 2) = transform;
  *(self + 3) = width;
  *(self + 4) = height;
  return self;
}

- (__CVBuffer)cropAndScale:(__CVBuffer *)scale regionCrop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  v10 = CVPixelBufferGetWidth(scale);
  v11 = CVPixelBufferGetHeight(scale);
  PixelFormatType = CVPixelBufferGetPixelFormatType(scale);
  if (v11 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v13 < self->_minSize)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      minSize = self->_minSize;
      *buf = 67109632;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = minSize;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPTransforms] image (width %d, height %d) smaller than minimum size %d", buf, 0x14u);
    }

    return 0;
  }

  if (PixelFormatType == 1111970369 && self->_transformedImageWidth == v10 && self->_transformedImageHeight == v11 && (v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, CGRectIsEmpty(v26)))
  {

    return CFRetain(scale);
  }

  else
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v16 = Scaler::ScaleCropped(&self->_scaler, v27, scale, &cf, self->_transformedImageWidth, self->_transformedImageHeight, 1111970369);
    result = cf;
    if (v16 && cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 10) = 0;
  return self;
}

@end