@interface VCPTransforms
- (__CVBuffer)cropAndScale:(__CVBuffer *)a3 regionCrop:(CGRect)a4;
- (id).cxx_construct;
- (id)initImageTransform:(int)a3 transformedImageWidth:(int)a4 transformedImageHeight:(int)a5;
@end

@implementation VCPTransforms

- (id)initImageTransform:(int)a3 transformedImageWidth:(int)a4 transformedImageHeight:(int)a5
{
  *(self + 2) = a3;
  *(self + 3) = a4;
  *(self + 4) = a5;
  return self;
}

- (__CVBuffer)cropAndScale:(__CVBuffer *)a3 regionCrop:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  v10 = CVPixelBufferGetWidth(a3);
  v11 = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
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

    return CFRetain(a3);
  }

  else
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v16 = Scaler::ScaleCropped(&self->_scaler, v27, a3, &cf, self->_transformedImageWidth, self->_transformedImageHeight, 1111970369);
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