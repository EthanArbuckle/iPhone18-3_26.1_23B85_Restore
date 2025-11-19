@interface JFXExternalImageData
- (CGRect)normalizedFaceRect;
- (__n128)setCameraIntrinsics:(__n128)a3;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3;
@end

@implementation JFXExternalImageData

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = CVPixelBufferRetain(a3);

  CVPixelBufferRelease(pixelBuffer);
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = JFXExternalImageData;
  [(JFXExternalImageData *)&v3 dealloc];
}

- (__n128)setCameraIntrinsics:(__n128)a3
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  return result;
}

- (CGRect)normalizedFaceRect
{
  x = self->_normalizedFaceRect.origin.x;
  y = self->_normalizedFaceRect.origin.y;
  width = self->_normalizedFaceRect.size.width;
  height = self->_normalizedFaceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end