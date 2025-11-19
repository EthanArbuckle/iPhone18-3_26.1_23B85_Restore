@interface JFXDisparityAsMatte
+ (CGSize)mattingDepthInputSize;
- (id)initForFrameSet:(id)a3;
- (void)alphaMatteForFrameSet:(id)a3 mattingPerfState:(id)a4 completionHandler:(id)a5;
@end

@implementation JFXDisparityAsMatte

- (id)initForFrameSet:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = JFXDisparityAsMatte;
  v5 = [(JFXMatting *)&v12 initForFrameSet:v4];
  if (v5)
  {
    v6 = [v4 depthData];
    v7 = [v6 depthDataMap];

    Width = CVPixelBufferGetWidth(v7);
    Height = CVPixelBufferGetHeight(v7);
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

- (void)alphaMatteForFrameSet:(id)a3 mattingPerfState:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v28 = 0;
  pixelBufferOut = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  fixedPointBufferPool = self->_fixedPointBufferPool;
  v9 = a5;
  CVPixelBufferPoolCreatePixelBuffer(0, fixedPointBufferPool, &pixelBufferOut);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_rotatedFPBufferPool, &v28);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFPBufferPool, &v27);
  if (self->super._cameraLocation == 2)
  {
    CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFPBufferPool, &v26);
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_alphaMattePool, &v25);
  v10 = [v7 depthData];
  v11 = [v10 depthDataType];
  v12 = [v7 depthData];
  v13 = v12;
  if (v11 == 1751411059)
  {
    v14 = [v12 depthDataMap];
  }

  else
  {
    v15 = [v12 depthDataByConvertingToDepthDataType:1751411059];
    v14 = [v15 depthDataMap];
  }

  CVPixelBufferLockBaseAddress(v14, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferLockBaseAddress(v28, 0);
  CVPixelBufferLockBaseAddress(v27, 0);
  if (v26)
  {
    CVPixelBufferLockBaseAddress(v26, 0);
  }

  CVPixelBufferLockBaseAddress(v25, 0);
  v16 = [v7 depthData];

  if (v16)
  {
    memset(&src, 0, sizeof(src));
    JFXToVImage(v14, &src.data);
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
  CVPixelBufferUnlockBaseAddress(v14, 1uLL);
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
  v9[2](v9, v18);
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