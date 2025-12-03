@interface ARFrameLuminanceManager
- (ARFrameLuminanceManager)init;
- (double)computeLuminanceFromPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation ARFrameLuminanceManager

- (ARFrameLuminanceManager)init
{
  v6.receiver = self;
  v6.super_class = ARFrameLuminanceManager;
  v2 = [(ARFrameLuminanceManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastComputedLuminance = 0.0;
    v2->_currentFrameId = 0;
    v4 = v2;
  }

  return v3;
}

- (double)computeLuminanceFromPixelBuffer:(__CVBuffer *)buffer
{
  v4 = self->_currentFrameId + 1;
  self->_currentFrameId = v4;
  if ((v4 & 3) != 1)
  {
    return self->_lastComputedLuminance;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  CVPixelBufferLockBaseAddress(buffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  if (HeightOfPlane)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (WidthOfPlane)
      {
        for (i = 0; i < WidthOfPlane; i += 4)
        {
          v10 += BaseAddressOfPlane[i];
        }

        v12 += ((WidthOfPlane - 1) >> 2) + 1;
      }

      v11 += 4;
      BaseAddressOfPlane += 4 * BytesPerRowOfPlane;
    }

    while (v11 < HeightOfPlane);
    v14 = v10;
    v15 = v12;
  }

  else
  {
    v15 = 0.0;
    v14 = 0.0;
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);
  result = v14 / v15;
  self->_lastComputedLuminance = v14 / v15;
  return result;
}

@end