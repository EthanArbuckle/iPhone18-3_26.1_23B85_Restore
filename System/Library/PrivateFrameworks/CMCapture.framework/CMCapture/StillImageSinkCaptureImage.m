@interface StillImageSinkCaptureImage
@end

@implementation StillImageSinkCaptureImage

uint64_t __captureSession_StillImageSinkCaptureImage_block_invoke(uint64_t a1)
{
  cs_updateSmartStyleSupport(*(a1 + 48), *(a1 + 32), 0);
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return captureSession_captureStillImageNow(v2, v3, v4);
}

@end