@interface OUCVPixelBufferRotate
- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)a3;
- (__CVBuffer)rotateImage:(__CVBuffer *)a3;
- (void)dealloc;
@end

@implementation OUCVPixelBufferRotate

- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)a3
{
  if (VTImageRotationSessionCreate())
  {
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [OUCVPixelBufferRotate _createRotationSessionByRotationDegree:];
    }
  }

  return 0;
}

- (__CVBuffer)rotateImage:(__CVBuffer *)a3
{
  if (!a3)
  {
    return 0;
  }

  p_rotatePixelBuffer = &self->_rotatePixelBuffer;
  if (!self->_rotatePixelBuffer)
  {
    if (CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, p_rotatePixelBuffer))
    {
      v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [OUCVPixelBufferRotate rotateImage:];
      }

      goto LABEL_10;
    }

    v8 = *p_rotatePixelBuffer;
  }

  if (MEMORY[0x25F8948E0](self->_sessionRotate, a3))
  {
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [OUCVPixelBufferRotate rotateImage:];
    }

LABEL_10:

    return 0;
  }

  return *p_rotatePixelBuffer;
}

- (void)dealloc
{
  MEMORY[0x25F8948D0](self->_sessionRotate, a2);
  CFRelease(self->_sessionRotate);
  self->_sessionRotate = 0;
  CVPixelBufferPoolRelease(self->_pixelBufferCreatePool);
  rotatePixelBuffer = self->_rotatePixelBuffer;
  if (rotatePixelBuffer)
  {
    CVPixelBufferRelease(rotatePixelBuffer);
    self->_rotatePixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = OUCVPixelBufferRotate;
  [(OUCVPixelBufferRotate *)&v4 dealloc];
}

@end