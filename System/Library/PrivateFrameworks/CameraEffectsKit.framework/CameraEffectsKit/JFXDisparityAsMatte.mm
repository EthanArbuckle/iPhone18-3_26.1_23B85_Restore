@interface JFXDisparityAsMatte
+ (CGSize)mattingDepthInputSize;
- (id)initForFrameSet:(id)set;
- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler;
@end

@implementation JFXDisparityAsMatte

- (id)initForFrameSet:(id)set
{
  setCopy = set;
  v12.receiver = self;
  v12.super_class = JFXDisparityAsMatte;
  v5 = [(JFXMatting *)&v12 initForFrameSet:setCopy];
  if (v5)
  {
    depthData = [setCopy depthData];
    depthDataMap = [depthData depthDataMap];

    Width = CVPixelBufferGetWidth(depthDataMap);
    Height = CVPixelBufferGetHeight(depthDataMap);
    JFXCreatePixelBufferPool(Width, Height, 825306677, v5 + 5);
    JFXCreatePixelBufferPool(Height, Width, 825306677, v5 + 6);
    JFXCreatePixelBufferPool(*(v5 + 1), *(v5 + 2), 825306677, v5 + 7);
    JFXCreatePixelBufferPool(*(v5 + 1), *(v5 + 2), 1751411059, v5 + 8);
    v11.receiver = v5;
    v11.super_class = JFXDisparityAsMatte;
    [(JFXMatting *)&v11 setReady:1];
  }

  return v5;
}

- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler
{
  setCopy = set;
  v28 = 0;
  pixelBufferOut = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  fixedPointBufferPool = self->_fixedPointBufferPool;
  handlerCopy = handler;
  CVPixelBufferPoolCreatePixelBuffer(0, fixedPointBufferPool, &pixelBufferOut);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_rotatedFPBufferPool, &v28);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFPBufferPool, &v27);
  if (self->super._cameraLocation == 2)
  {
    CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFPBufferPool, &v26);
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_alphaMattePool, &v25);
  depthData = [setCopy depthData];
  depthDataType = [depthData depthDataType];
  depthData2 = [setCopy depthData];
  v13 = depthData2;
  if (depthDataType == 1751411059)
  {
    depthDataMap = [depthData2 depthDataMap];
  }

  else
  {
    v15 = [depthData2 depthDataByConvertingToDepthDataType:1751411059];
    depthDataMap = [v15 depthDataMap];
  }

  CVPixelBufferLockBaseAddress(depthDataMap, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferLockBaseAddress(v28, 0);
  CVPixelBufferLockBaseAddress(v27, 0);
  if (v26)
  {
    CVPixelBufferLockBaseAddress(v26, 0);
  }

  CVPixelBufferLockBaseAddress(v25, 0);
  depthData3 = [setCopy depthData];

  if (depthData3)
  {
    memset(&src, 0, sizeof(src));
    JFXToVImage(depthDataMap, &src.data);
    memset(&dest, 0, sizeof(dest));
    JFXToVImage(pixelBufferOut, &dest.data);
    memset(&v22, 0, sizeof(v22));
    JFXToVImage(v28, &v22.data);
    memset(&v21, 0, sizeof(v21));
    JFXToVImage(v27, &v21.data);
    memset(&v20, 0, sizeof(v20));
    JFXToVImage(v25, &v20.data);
    if (!vImageConvert_16Fto16U(&src, &dest, 0) && !vImageRotate90_Planar16U(&dest, &v22, 3u, 0, 0) && !vImageScale_Planar16U(&v22, &v21, 0, 0))
    {
      if (v26)
      {
        memset(&v19, 0, sizeof(v19));
        JFXToVImage(v26, &v19.data);
        if (vImageHorizontalReflect_Planar16U(&v21, &v19, 0))
        {
          goto LABEL_19;
        }

        v21 = v19;
      }

      vImageConvert_16Uto16F(&v21, &v20, 0);
    }
  }

  else
  {
    v17 = JFXLog_matting();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(src.data) = 0;
      _os_log_impl(&dword_242A3B000, v17, OS_LOG_TYPE_DEFAULT, "alphaMatteForFrameSet no depthData, move along...", &src, 2u);
    }
  }

LABEL_19:
  CVPixelBufferUnlockBaseAddress(depthDataMap, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferUnlockBaseAddress(v28, 0);
  CVPixelBufferUnlockBaseAddress(v27, 0);
  if (v26)
  {
    CVPixelBufferUnlockBaseAddress(v26, 0);
  }

  CVPixelBufferUnlockBaseAddress(v25, 0);
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v28);
  CVPixelBufferRelease(v27);
  if (v26)
  {
    CVPixelBufferRelease(v26);
  }

  v18 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v25];
  CVPixelBufferRelease(v25);
  handlerCopy[2](handlerCopy, v18);
}

+ (CGSize)mattingDepthInputSize
{
  v2 = 640.0;
  v3 = 360.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end