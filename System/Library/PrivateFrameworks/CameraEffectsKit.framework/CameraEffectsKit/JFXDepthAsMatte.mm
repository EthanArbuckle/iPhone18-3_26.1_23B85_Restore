@interface JFXDepthAsMatte
+ (CGSize)mattingDepthInputSize;
- (id)initForFrameSet:(id)set;
- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation JFXDepthAsMatte

- (id)initForFrameSet:(id)set
{
  setCopy = set;
  v12.receiver = self;
  v12.super_class = JFXDepthAsMatte;
  v5 = [(JFXMatting *)&v12 initForFrameSet:setCopy];
  if (v5)
  {
    depthData = [setCopy depthData];
    depthDataMap = [depthData depthDataMap];

    Width = CVPixelBufferGetWidth(depthDataMap);
    Height = CVPixelBufferGetHeight(depthDataMap);
    JFXCreatePixelBufferPool(Height, Width, 1278226534, v5 + 5);
    JFXCreatePixelBufferPool(*(v5 + 1), *(v5 + 2), 1278226534, v5 + 6);
    JFXCreatePixelBufferPool(*(v5 + 1), *(v5 + 2), 1278226488, v5 + 7);
    v11.receiver = v5;
    v11.super_class = JFXDepthAsMatte;
    [(JFXMatting *)&v11 setReady:1];
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_rotatedFBufferPool);
  self->_rotatedFBufferPool = 0;
  CVPixelBufferPoolRelease(self->_scaledUpFBufferPool);
  self->_scaledUpFBufferPool = 0;
  CVPixelBufferPoolRelease(self->_alphaPool);
  self->_alphaPool = 0;
  v3.receiver = self;
  v3.super_class = JFXDepthAsMatte;
  [(JFXDepthAsMatte *)&v3 dealloc];
}

- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler
{
  setCopy = set;
  stateCopy = state;
  handlerCopy = handler;
  signpostToken = [stateCopy signpostToken];
  [signpostToken tokenId];
  kdebug_trace();

  v12 = objc_alloc_init(JFXPerfTimer);
  v48 = 0;
  pixelBufferOut = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, self->_rotatedFBufferPool, &pixelBufferOut);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFBufferPool, &v48);
  if (self->super._cameraLocation == 2)
  {
    CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledUpFBufferPool, &v47);
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_alphaPool, &v45);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_alphaPool, &v46);
  depthData = [setCopy depthData];
  depthDataType = [depthData depthDataType];
  depthData2 = [setCopy depthData];
  v16 = depthData2;
  if (depthDataType == 1717856627)
  {
    depthDataMap = [depthData2 depthDataMap];
  }

  else
  {
    v18 = [depthData2 depthDataByConvertingToDepthDataType:1717855600];
    depthDataMap = [v18 depthDataMap];
  }

  CVPixelBufferLockBaseAddress(depthDataMap, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferLockBaseAddress(v48, 0);
  if (v47)
  {
    CVPixelBufferLockBaseAddress(v47, 0);
  }

  CVPixelBufferLockBaseAddress(v46, 0);
  CVPixelBufferLockBaseAddress(v45, 0);
  memset(&src, 0, sizeof(src));
  JFXToVImage(depthDataMap, &src.data);
  memset(&dest, 0, sizeof(dest));
  JFXToVImage(pixelBufferOut, &dest.data);
  memset(&v42, 0, sizeof(v42));
  JFXToVImage(v48, &v42.data);
  memset(&v41, 0, sizeof(v41));
  JFXToVImage(v45, &v41.data);
  v39 = 0u;
  v40 = 0u;
  JFXToVImage(v46, &v39);
  if (!vImageRotate90_PlanarF(&src, &dest, 3u, 0.0, 0))
  {
    height = dest.height;
    if (dest.height)
    {
      v20 = 0;
      width = dest.width;
      do
      {
        if (width >= 4)
        {
          v22 = 0;
          v23 = dest.data + dest.rowBytes * v20;
          do
          {
            *&v23[16 * v22] = vmaxnmq_f32(*&v23[16 * v22], 0);
            ++v22;
            width = dest.width;
          }

          while (v22 < dest.width >> 2);
          height = dest.height;
        }

        ++v20;
      }

      while (height > v20);
    }

    if (!vImageScale_PlanarF(&dest, &v42, 0, 0))
    {
      if (v47)
      {
        memset(&v38, 0, sizeof(v38));
        JFXToVImage(v47, &v38.data);
        if (vImageHorizontalReflect_PlanarF(&v42, &v38, 0))
        {
          goto LABEL_17;
        }

        v42 = v38;
      }

      if (!vImageConvert_PlanarFtoPlanar8(&v42, &v41, 2.0, 0.2, 0))
      {
        v29 = v42.height;
        if (v42.height)
        {
          v30 = 0;
          v31 = v42.width;
          v32 = v42.width >> 3;
          v33 = vneg_f16(0xC000C000C000C0);
          do
          {
            if (v31 >= 8)
            {
              v34 = (v39 + *(&v40 + 1) * v30);
              v35 = (v41.data + v41.rowBytes * v30);
              v36 = v32;
              do
              {
                v37 = *v35++;
                *v34++ = vorr_s8(vand_s8(vceqz_s8(v37), v33), v37);
                --v36;
              }

              while (v36);
            }

            ++v30;
          }

          while (v30 != v29);
        }
      }
    }
  }

LABEL_17:
  CVPixelBufferUnlockBaseAddress(depthDataMap, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferUnlockBaseAddress(v48, 0);
  if (v47)
  {
    CVPixelBufferUnlockBaseAddress(v47, 0);
  }

  CVPixelBufferUnlockBaseAddress(v46, 0);
  CVPixelBufferUnlockBaseAddress(v45, 0);
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v48);
  if (v47)
  {
    CVPixelBufferRelease(v47);
  }

  CVPixelBufferRelease(v45);
  v24 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v46];
  CVPixelBufferRelease(v46);
  if (stateCopy)
  {
    [(JFXPerfTimer *)v12 end];
    v26 = v25;
    captureFrameStats = [stateCopy captureFrameStats];
    *([captureFrameStats times] + 16) = v26;
  }

  signpostToken2 = [stateCopy signpostToken];
  [signpostToken2 tokenId];
  kdebug_trace();

  handlerCopy[2](handlerCopy, v24);
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