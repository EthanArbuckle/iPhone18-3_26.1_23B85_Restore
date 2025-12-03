@interface JFXRGBDMatte
+ (CGSize)mattingDepthInputSize;
- (BOOL)isValidForCameraFrameSet:(id)set;
- (__CVBuffer)createInvertedMatte:(vImage_Buffer *)matte;
- (__CVBuffer)createTemporalFilteredMatte:(__CVBuffer *)matte;
- (__CVBuffer)localMattingHalfRGBD:(DepthProcessingDataRGBD *)d colorBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)processAlphaMapUsingDepthAndColor:(__CVBuffer *)color colorBuffer:(__CVBuffer *)buffer;
- (char)makeTrimap:(DepthProcessingDataRGBD *)trimap;
- (id)initForFrameSet:(id)set;
- (vImage_Buffer)featherMatte:(SEL)matte;
- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler;
- (void)dealloc;
- (void)depthToAlphaMap:(DepthProcessingDataRGBD *)map;
- (void)erodeAndDilateMatte:(DepthProcessingDataRGBD *)matte;
- (void)expansionOfKnownRegionsRGBD:(__CVBuffer *)d processingData:(DepthProcessingDataRGBD *)data regionWin:(CGRect)win centerOfRow:(int)row;
- (void)findLocalMattingRect:(int *)rect processingData:(DepthProcessingDataRGBD *)data mattingRect:(CGRect *)mattingRect;
- (void)findRectOrientationRightLeft:(int *)left numContourPixels:(int)pixels winHeight:(int)height halfHeight:(int)halfHeight originY:(int *)y sizeHeight:(int *)sizeHeight isRight:(BOOL)right;
- (void)getDepthData:(__CVBuffer *)data processData:(DepthProcessingDataRGBD *)processData;
- (void)grabCutWithTrimap:(char *)trimap color:(__CVBuffer *)color processWin:(CGRect)win;
- (void)innerOuterFusion:(DepthProcessingDataRGBD *)fusion processWin:(CGRect)win;
- (void)mattingGrabCut:(char *)cut depthMap:(char *)map colorBuffer:(__CVBuffer *)buffer processWin:(CGRect)win;
- (void)moveLocalDepthBufferToDepthOuter:(DepthProcessingDataRGBD *)outer;
- (void)postProcessing:(const char *)processing depthDataSmall:(const char *)small depthData:(const char *)data RGBDMatte:(char *)matte halfHeight:(int)height halfWidth:(int)width;
- (void)requestMattingStatus;
@end

@implementation JFXRGBDMatte

- (id)initForFrameSet:(id)set
{
  setCopy = set;
  v22.receiver = self;
  v22.super_class = JFXRGBDMatte;
  v5 = [(JFXMatting *)&v22 initForFrameSet:setCopy];
  if (v5)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5[789] = [standardUserDefaults BOOLForKey:@"JFXVisualizeFaceRect"];

    depthData = [setCopy depthData];
    depthDataMap = [depthData depthDataMap];

    Width = CVPixelBufferGetWidth(depthDataMap);
    Height = CVPixelBufferGetHeight(depthDataMap);
    *(v5 + 8) = Width;
    *(v5 + 9) = Height;
    *(v5 + 10) = Height;
    *(v5 + 11) = Width;
    v11 = dispatch_queue_create("com.apple.JFXRGBDMatting.submissionQ", 0);
    v12 = *(v5 + 13);
    *(v5 + 13) = v11;

    v13 = dispatch_queue_create("com.apple.JFXRGBDMatting.processQ", MEMORY[0x277D85CD8]);
    v14 = *(v5 + 14);
    *(v5 + 14) = v13;

    v15 = dispatch_semaphore_create(1);
    v16 = *(v5 + 15);
    *(v5 + 15) = v15;

    v17 = objc_alloc_init(MEMORY[0x277D415E8]);
    v18 = *(v5 + 5);
    *(v5 + 5) = v17;

    v19 = objc_alloc_init(MEMORY[0x277D415E8]);
    v20 = *(v5 + 6);
    *(v5 + 6) = v19;

    *(v5 + 14) = 0;
    *(v5 + 81) = 0;
    *(v5 + 82) = 0;
    *(v5 + 83) = 0;
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  matteRotator = self->_matteRotator;
  self->_matteRotator = 0;

  colorRotator = self->_colorRotator;
  self->_colorRotator = 0;

  imageScaler = self->_imageScaler;
  self->_imageScaler = 0;

  CVPixelBufferPoolRelease(self->_scaledSourcePool);
  CVPixelBufferPoolRelease(self->_scaledDestinationPool);
  CVPixelBufferPoolRelease(self->_processedMattePool);
  CVPixelBufferPoolRelease(self->_rotatedMattePool);
  for (i = 0; i != 4; ++i)
  {
    v7 = self->_depthBufferHalf[i];
    if (v7)
    {
      MEMORY[0x245D21BB0](v7, 0x1000C8077774924);
    }
  }

  depthBufferFull = self->_depthBufferFull;
  if (depthBufferFull)
  {
    MEMORY[0x245D21BB0](depthBufferFull, 0x1000C8077774924);
    self->_depthBufferFull = 0;
  }

  vImageTempBuffer = self->_vImageTempBuffer;
  if (vImageTempBuffer)
  {
    MEMORY[0x245D21BB0](vImageTempBuffer, 0x1000C8077774924);
    self->_vImageTempBuffer = 0;
  }

  CVPixelBufferRelease(self->_alphaMatteHistory);
  depthProcessingData = self->_depthProcessingData;
  if (depthProcessingData)
  {
    DepthProcessingDataRGBD::~DepthProcessingDataRGBD(depthProcessingData);
    MEMORY[0x245D21BD0]();
  }

  contourMemoryPool = self->_contourMemoryPool;
  if (contourMemoryPool)
  {
    ContourMemoryPool::~ContourMemoryPool(contourMemoryPool);
    MEMORY[0x245D21BD0]();
  }

  v12.receiver = self;
  v12.super_class = JFXRGBDMatte;
  [(JFXRGBDMatte *)&v12 dealloc];
}

- (void)requestMattingStatus
{
  submissionQ = self->_submissionQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__JFXRGBDMatte_requestMattingStatus__block_invoke;
  block[3] = &unk_278D7C9E0;
  block[4] = self;
  dispatch_async(submissionQ, block);
}

void __36__JFXRGBDMatte_requestMattingStatus__block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 120), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__JFXRGBDMatte_requestMattingStatus__block_invoke_2;
  block[3] = &unk_278D7C9E0;
  block[4] = v2;
  dispatch_async(v3, block);
}

- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  stateCopy = state;
  handlerCopy = handler;
  v11 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    metadataDict = [setCopy metadataDict];
    *buf = 138412290;
    v22 = metadataDict;
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "metadata=%@", buf, 0xCu);
  }

  submissionQ = self->_submissionQ;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__JFXRGBDMatte_alphaMatteForFrameSet_mattingPerfState_completionHandler___block_invoke;
  v17[3] = &unk_278D7CA30;
  v17[4] = self;
  v18 = stateCopy;
  v19 = setCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = setCopy;
  v16 = stateCopy;
  dispatch_async(submissionQ, v17);
}

void __73__JFXRGBDMatte_alphaMatteForFrameSet_mattingPerfState_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 120), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 112);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__JFXRGBDMatte_alphaMatteForFrameSet_mattingPerfState_completionHandler___block_invoke_2;
  v8[3] = &unk_278D7CA08;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, v8);
}

void __73__JFXRGBDMatte_alphaMatteForFrameSet_mattingPerfState_completionHandler___block_invoke_2(uint64_t a1)
{
  *&v52[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) signpostToken];
  [v2 tokenId];
  kdebug_trace();

  v3 = objc_alloc_init(JFXPerfTimer);
  v4 = [*(a1 + 40) depthData];
  v5 = [v4 depthDataType];
  v6 = *(a1 + 40);
  if (v5 == 1717855600)
  {
    v7 = [v6 depthData];
    v8 = [v7 depthDataMap];
  }

  else
  {
    v7 = [v6 depthData];
    v9 = [v7 depthDataByConvertingToDepthDataType:1717855600];
    v8 = [v9 depthDataMap];
  }

  if (v8)
  {
    LargestFaceRect = getLargestFaceRect(*(a1 + 40));
    v11 = *(a1 + 48) + 152;
    *v11 = LargestFaceRect;
    *(v11 + 8) = v12;
    *(v11 + 16) = v13;
    *(v11 + 24) = v14;
    v15 = [*(a1 + 40) metadataObjectForKey:*MEMORY[0x277D41A00]];
    *(*(a1 + 48) + 184) = [v15 interfaceOrientation];

    v16 = JFXLog_DebugMatting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 48) + 184);
      *buf = 134217984;
      *v52 = v17;
      _os_log_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEFAULT, "interface orientation=%ld", buf, 0xCu);
    }

    v18 = [*(a1 + 40) colorImageBuffer];
    v19 = [v18 cvPixelBuffer];

    pixelBufferOut = 0;
    CVPixelBufferPoolCreatePixelBuffer(0, *(*(a1 + 48) + 680), &pixelBufferOut);
    [*(*(a1 + 48) + 720) scaleImage:v19 destinationImage:pixelBufferOut];
    v20 = [*(*(a1 + 48) + 736) createRotatedPixelBuffer:pixelBufferOut];
    CVPixelBufferRelease(pixelBufferOut);
    v21 = [*(a1 + 48) processAlphaMapUsingDepthAndColor:v8 colorBuffer:v20];
    v22 = [*(a1 + 40) colorImageBuffer];
    v23 = exifMetadataForCVPixelBuffer([v22 cvPixelBuffer]);

    *(*(a1 + 48) + 664) = *(*(a1 + 48) + 664) & 0xFFFFFFFFFFFFFFFDLL | (2 * (exifBrightnessFromEXIFMetadata(v23) >= 6.5));
    v25 = *(a1 + 48);
    v26 = *(v25 + 664);
    if (v26 != *(v25 + 656))
    {
      [JFXMatting postNotification:?];
      v25 = *(a1 + 48);
      v26 = *(v25 + 664);
    }

    *(v25 + 656) = v26;
    v27 = *(a1 + 48);
    v49 = *(v27 + 752);
    v27 += 152;
    *&v24 = *(v27 + 8);
    v47 = v24;
    v48 = *v27;
    v28 = isFaceBoundingBoxValid(*v27, *&v24, *(v27 + 16), *(v27 + 24));
    v29.f64[0] = v48;
    *&v29.f64[1] = v47;
    v30 = vsubq_f64(v49, v29);
    v31 = vaddvq_f64(vmulq_f64(v30, v30));
    v32 = v31 > 0.000004 && v28;
    v33 = JFXLog_DebugMatting();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v52[0] = v32;
      LOWORD(v52[1]) = 2048;
      *(&v52[1] + 2) = v31;
      _os_log_impl(&dword_242A3B000, v33, OS_LOG_TYPE_DEFAULT, "facemotion=%d movement_squared=%.7f", buf, 0x12u);
    }

    *(*(a1 + 48) + 788) = v32;
    v34 = *(a1 + 48);
    v35 = (v34 + 152);
    v34 += 47;
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    CVPixelBufferRelease(v20);

    v37 = *(*(*(a1 + 48) + 792) + 112);
    v38 = JFXLog_DebugMatting();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v52[0] = v37;
      _os_log_impl(&dword_242A3B000, v38, OS_LOG_TYPE_DEFAULT, "inside JFXRGBMatte averageDepth=%dmm", buf, 8u);
    }

    v39 = *(a1 + 40);
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:JFXRemappedAverageDepth(v37)];
    [v39 setMetadataObject:v40 forKey:*MEMORY[0x277D419F0]];

    v41 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v21];
    CVPixelBufferRelease(v21);
    if (*(a1 + 32))
    {
      [(JFXPerfTimer *)v3 end];
      v43 = v42;
      v44 = [*(a1 + 32) captureFrameStats];
      *([v44 times] + 16) = v43;

      v45 = *(a1 + 32);
    }

    else
    {
      v45 = 0;
    }

    v46 = [v45 signpostToken];
    [v46 tokenId];
    kdebug_trace();

    (*(*(a1 + 56) + 16))();
    dispatch_semaphore_signal(*(*(a1 + 48) + 120));
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    dispatch_semaphore_signal(*(*(a1 + 48) + 120));
  }
}

- (__CVBuffer)processAlphaMapUsingDepthAndColor:(__CVBuffer *)color colorBuffer:(__CVBuffer *)buffer
{
  [(JFXRGBDMatte *)self getDepthData:color processData:self->_depthProcessingData];
  [(JFXRGBDMatte *)self depthToAlphaMap:self->_depthProcessingData];
  depthProcessingData = self->_depthProcessingData;

  return [(JFXRGBDMatte *)self localMattingHalfRGBD:depthProcessingData colorBuffer:buffer];
}

- (void)findRectOrientationRightLeft:(int *)left numContourPixels:(int)pixels winHeight:(int)height halfHeight:(int)halfHeight originY:(int *)y sizeHeight:(int *)sizeHeight isRight:(BOOL)right
{
  v13 = halfHeight / 2;
  if (right)
  {
    if (pixels < 1)
    {
      goto LABEL_25;
    }

    pixelsCopy = pixels;
    v15 = left + 1;
    halfHeightCopy = halfHeight;
    do
    {
      if (*(v15 - 1) < halfHeightCopy)
      {
        v13 = *v15;
        halfHeightCopy = *(v15 - 1);
      }

      v15 += 2;
      --pixelsCopy;
    }

    while (pixelsCopy);
  }

  else
  {
    if (pixels < 1)
    {
      goto LABEL_25;
    }

    halfHeightCopy = 0;
    pixelsCopy2 = pixels;
    v18 = left + 1;
    do
    {
      if (*(v18 - 1) > halfHeightCopy)
      {
        v13 = *v18;
        halfHeightCopy = *(v18 - 1);
      }

      v18 += 2;
      --pixelsCopy2;
    }

    while (pixelsCopy2);
  }

  if (right)
  {
    v19 = 0;
    v20 = 0;
    v21 = halfHeightCopy + 20;
    v22 = left + 1;
    pixelsCopy3 = pixels;
    do
    {
      if (*(v22 - 1) < v21)
      {
        v19 += *v22;
        ++v20;
      }

      v22 += 2;
      --pixelsCopy3;
    }

    while (pixelsCopy3);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v24 = halfHeightCopy - 20;
    v25 = left + 1;
    pixelsCopy4 = pixels;
    do
    {
      if (*(v25 - 1) > v24)
      {
        v19 += *v25;
        ++v20;
      }

      v25 += 2;
      --pixelsCopy4;
    }

    while (pixelsCopy4);
  }

  if (v20 >= 1)
  {
    v13 = v19 / v20;
  }

LABEL_25:
  v27 = (v13 - height / 2) & ~((v13 - height / 2) >> 31);
  *y = v27;
  v28 = v27 + height;
  if (halfHeight - 1 < v27 + height)
  {
    v28 = halfHeight - 1;
  }

  *sizeHeight = v28 - v27;
  p_largestFaceRect = &self->_largestFaceRect;
  if (isFaceBoundingBoxValid(self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height))
  {
    v30 = (p_largestFaceRect->origin.x * halfHeight);
    v31 = *y;
    if (*y > v30)
    {
      *y = v30;
      v31 = v30;
    }

    v32 = (p_largestFaceRect->size.width * halfHeight) + v30;
    if (v32 > v31 + height)
    {
      *sizeHeight = v32 - v31;
    }
  }
}

- (void)findLocalMattingRect:(int *)rect processingData:(DepthProcessingDataRGBD *)data mattingRect:(CGRect *)mattingRect
{
  v8 = (self->_depthSizeRotated.height * 0.5);
  var13 = data->var13;
  var15 = data->var15;
  if (var15 < 201)
  {
    v11 = 250;
  }

  else
  {
    v11 = (((var15 - 598) * -0.424 + 119.0) * 1.4);
  }

  width = self->_depthSizeRotated.width;
  if (v11 <= 90)
  {
    v11 = 90;
  }

  v13 = v11 >> 1;
  v38 = 0;
  interfaceOrientation = self->_interfaceOrientation;
  switch(interfaceOrientation)
  {
    case 4:
      LOBYTE(v37) = 1;
      goto LABEL_17;
    case 3:
      LOBYTE(v37) = 0;
LABEL_17:
      [(JFXRGBDMatte *)self findRectOrientationRightLeft:rect numContourPixels:var13 winHeight:v13 halfHeight:v8 originY:&v38 + 4 sizeHeight:&v38 isRight:v37];
      break;
    case 2:
      if (var13 < 1)
      {
        v19 = 10;
      }

      else
      {
        v15 = 0;
        v16 = rect + 1;
        do
        {
          v18 = *v16;
          v16 += 2;
          v17 = v18;
          if (v15 <= v18)
          {
            v15 = v17;
          }

          --var13;
        }

        while (var13);
        v19 = v15 + 10;
      }

      if (v19 >= v8)
      {
        v24 = v8 - 1;
      }

      else
      {
        v24 = v19;
      }

      if (v24 - v13 <= 10)
      {
        v25 = v24 - 1;
      }

      else
      {
        v25 = v13 + 10;
      }

      v26 = v24 - v25;
      HIDWORD(v38) = v24 - v25;
      p_largestFaceRect = &self->_largestFaceRect;
      if (isFaceBoundingBoxValid(self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height))
      {
        v28 = (p_largestFaceRect->origin.x * v8);
        v29 = (v25 + v24 + ~v28) / 2;
        if (v26 > v28)
        {
          v25 = v24 + ~v28;
        }

        else
        {
          v28 = (v26 + v28) / 2;
          v25 = v29;
        }

        HIDWORD(v38) = v28;
      }

      LODWORD(v38) = v25;
      break;
    default:
      if (var13 < 1)
      {
        v21 = v8;
      }

      else
      {
        v20 = rect + 1;
        v21 = v8;
        do
        {
          v23 = *v20;
          v20 += 2;
          v22 = v23;
          if (v23 < v21)
          {
            v21 = v22;
          }

          --var13;
        }

        while (var13);
      }

      if (v21 <= 10)
      {
        v30 = 10;
      }

      else
      {
        v30 = v21;
      }

      v31 = v30 - 10;
      if (v30 + v13 >= v8)
      {
        v32 = v8 - v30 + 9;
      }

      else
      {
        v32 = v13 + 10;
      }

      HIDWORD(v38) = v30 - 10;
      if (isFaceBoundingBoxValid(self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height))
      {
        v33 = (self->_largestFaceRect.size.width * v8 + v8 * self->_largestFaceRect.origin.x);
        if (v32 + v31 <= v33)
        {
          v32 = (v32 - v30 + v33 + 9) / 2;
        }

        else
        {
          v32 = v33 - v30 + 9;
        }
      }

      if (self->_usingLargerRect && v31 + v32 < 310)
      {
        v34 = 320 - v30;
      }

      else
      {
        v34 = v32;
      }

      LODWORD(v38) = v34;
      break;
  }

  mattingRect->origin.x = 0.0;
  v35 = HIDWORD(v38);
  mattingRect->origin.y = SHIDWORD(v38);
  mattingRect->size.width = (width * 0.5);
  v36 = v38;
  mattingRect->size.height = v38;
  self->_heightOfMattingWin = v36;
  self->_topOfHeadHalf = v35;
}

- (char)makeTrimap:(DepthProcessingDataRGBD *)trimap
{
  v10 = vshrq_n_u64(vcvtq_u64_f64(self->_depthSizeRotated), 1uLL);
  localDepthBufferBig = [(JFXRGBDMatte *)self localDepthBufferBig];
  localDepthBufferSmall = [(JFXRGBDMatte *)self localDepthBufferSmall];
  v6 = v10.i64[1] * v10.i64[0];
  if (v10.i64[1] * v10.i64[0])
  {
    v7 = localDepthBufferBig;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        if (*localDepthBufferSmall)
        {
          v8 = -1;
        }

        else
        {
          v8 = 0x80;
        }
      }

      *v7++ = v8;
      ++localDepthBufferSmall;
      --v6;
    }

    while (v6);
  }

  return localDepthBufferBig;
}

- (void)moveLocalDepthBufferToDepthOuter:(DepthProcessingDataRGBD *)outer
{
  v4 = vshrq_n_u64(vcvtq_u64_f64(self->_depthSizeRotated), 1uLL);
  v5 = v4.i64[1] * v4.i64[0];
  localDepthBuffer = [(JFXRGBDMatte *)self localDepthBuffer];
  var11 = outer->var11;

  memcpy(localDepthBuffer, var11, v5);
}

- (void)erodeAndDilateMatte:(DepthProcessingDataRGBD *)matte
{
  v23 = *MEMORY[0x277D85DE8];
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  *kernel = v5;
  *&v5 = self->_depthSizeRotated.width;
  height = self->_depthSizeRotated.height;
  v22 = -1;
  v7 = *&v5 >> 1;
  v8 = height >> 1;
  localDepthBufferSmall = [(JFXRGBDMatte *)self localDepthBufferSmall];
  v10 = self->_depthBufferHalf[3];
  var11 = matte->var11;
  src.data = matte->var10;
  src.height = v8;
  src.width = v7;
  src.rowBytes = v7;
  dest.data = var11;
  dest.height = v8;
  dest.width = v7;
  dest.rowBytes = v7;
  v14.data = [(JFXRGBDMatte *)self localDepthBufferBig];
  v14.height = v8;
  v14.width = v7;
  v14.rowBytes = v7;
  v13.data = localDepthBufferSmall;
  v13.height = v8;
  v13.width = v7;
  v13.rowBytes = v7;
  v12.data = v10;
  v12.height = v8;
  v12.width = v7;
  v12.rowBytes = v7;
  vImageErode_Planar8(&src, &dest, 0, 0, kernel, 3uLL, 3uLL, 8u);
  vImageErode_Planar8(&src, &v13, 0, 0, kernel, 7uLL, 7uLL, 8u);
  vImageDilate_Planar8(&src, &v12, 0, 0, kernel, 7uLL, 7uLL, 8u);
  vImageDilate_Planar8(&v12, &v14, 0, 0, kernel, 3uLL, 3uLL, 8u);
}

- (vImage_Buffer)featherMatte:(SEL)matte
{
  v16 = *MEMORY[0x277D85DE8];
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  *kernel = v5;
  width = self->_depthSizeRotated.width;
  *&v5 = self->_depthSizeRotated.height;
  v15 = -1;
  var10 = a4->var10;
  dest.data = a4->var11;
  dest.height = *&v5;
  dest.width = width;
  dest.rowBytes = width;
  retstr->data = var10;
  retstr->height = *&v5;
  retstr->width = width;
  retstr->rowBytes = width;
  vImageBoxConvolve_Planar8(retstr, &dest, self->_vImageTempBuffer, 0, 0, 5u, 5u, 0, 8u);
  return vImageErode_Planar8(&dest, retstr, 0, 0, kernel, 3uLL, 3uLL, 8u);
}

- (void)grabCutWithTrimap:(char *)trimap color:(__CVBuffer *)color processWin:(CGRect)win
{
  height = win.size.height;
  width = win.size.width;
  y = win.origin.y;
  x = win.origin.x;
  localDepthBuffer = [(JFXRGBDMatte *)self localDepthBuffer];

  [(JFXRGBDMatte *)self mattingGrabCut:trimap depthMap:localDepthBuffer colorBuffer:color processWin:x, y, width, height];
}

- (__CVBuffer)createInvertedMatte:(vImage_Buffer *)matte
{
  pixelBufferOut = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, self->_processedMattePool, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  v13 = 0u;
  v14 = 0u;
  JFXToVImage(pixelBufferOut, &v13);
  v4 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v5 = 0;
    v6 = *(&v14 + 1);
    v7 = *(&v14 + 1) >> 4;
    do
    {
      if (v6 >= 0x10)
      {
        v8 = (v13 + *(&v14 + 1) * v5);
        v9 = (matte->data + matte->rowBytes * v5);
        v10 = v7;
        do
        {
          v11 = *v9++;
          *v8++ = vmvnq_s8(v11);
          --v10;
        }

        while (v10);
        v4 = *(&v13 + 1);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

- (__CVBuffer)localMattingHalfRGBD:(DepthProcessingDataRGBD *)d colorBuffer:(__CVBuffer *)buffer
{
  p_depthSizeRotated = &self->_depthSizeRotated;
  height = self->_depthSizeRotated.height;
  v9 = self->_depthSizeRotated.width * 0.5;
  v10 = v9;
  v11 = (height * 0.5);
  v44 = (height * 0.5);
  ContourProcessing::ContourProcessing(v43, d->var10, v44, v9, self->_contourMemoryPool, 0);
  ContourProcessing::contourExtractionProcessing(v43, &d->var13, &v44);
  self->_heightOfMattingWin = -1;
  self->_topOfHeadHalf = -1;
  v12 = v44;
  v13 = v11 - 1;
  if (v11 - 1 >= v44 + 20)
  {
    v13 = v44 + 20;
  }

  var13 = d->var13;
  if (var13 >= 1)
  {
    v15 = 0;
    v16 = self->_contourMemoryPool->var2 + 1;
    v17 = d->var13;
    do
    {
      v18 = *v16;
      v16 += 2;
      if (v18 < v13)
      {
        ++v15;
      }

      --v17;
    }

    while (v17);
    v19 = (v10 / 2);
    if (v15)
    {
      v19 = (v19 / v15);
    }

    if (var13 >= 21)
    {
      var15 = d->var15;
      if (var15 < 201)
      {
        v21 = 250;
      }

      else
      {
        v21 = (((var15 - 598) * -0.424 + 119.0) * 2.8);
      }

      if (v21 <= 90)
      {
        v21 = 90;
      }

      if (v44 <= 10)
      {
        v12 = 10;
      }

      v22 = v12 - 10;
      v44 = v12 - 10;
      v23 = v21 >> 1;
      v24 = v12 + (v21 >> 1);
      v25 = v23 + 10;
      v26 = v11 - v12 + 9;
      if (v24 < v11)
      {
        v26 = v25;
      }

      v27 = v26 / 2;
      self->_heightOfMattingWin = v27;
      self->_topOfHeadHalf = v22;
      v28 = v22;
      v29 = v10;
      v30 = v27;
      v42.data = 0;
      *&v42.height = v22;
      *&v42.width = v10;
      *&v42.rowBytes = v27;
      data = 0;
      if (self->_usingFaceRect)
      {
        [(JFXRGBDMatte *)self findLocalMattingRect:self->_contourMemoryPool->var2 processingData:d mattingRect:&v42, 0.0];
        v28 = *&v42.height;
        data = v42.data;
        v30 = *&v42.rowBytes;
        v29 = *&v42.width;
      }

      [(JFXRGBDMatte *)self expansionOfKnownRegionsRGBD:buffer processingData:d regionWin:v19 centerOfRow:*&data, v28, v29, v30];
      [(JFXRGBDMatte *)self innerOuterFusion:d processWin:*&v42.data, *&v42.width];
      [(JFXRGBDMatte *)self erodeAndDilateMatte:d];
      v32 = [(JFXRGBDMatte *)self makeTrimap:d];
      [(JFXRGBDMatte *)self moveLocalDepthBufferToDepthOuter:d];
      [(JFXRGBDMatte *)self grabCutWithTrimap:v32 color:buffer processWin:*&v42.data, *&v42.width];
      localDepthBuffer = [(JFXRGBDMatte *)self localDepthBuffer];
      [(JFXRGBDMatte *)self postProcessing:[(JFXRGBDMatte *)self localDepthBufferTemp] depthDataSmall:[(JFXRGBDMatte *)self localDepthBufferSmall] depthData:d->var11 RGBDMatte:localDepthBuffer halfHeight:v11 halfWidth:v10];
      src.data = localDepthBuffer;
      src.height = v11;
      src.width = v10;
      src.rowBytes = v10;
      v40.data = d->var10;
      v34 = vcvtq_u64_f64(*p_depthSizeRotated);
      *&v40.height = vextq_s8(v34, v34, 8uLL);
      v40.rowBytes = v34.i64[0];
      vImageScale_Planar8(&src, &v40, self->_vImageTempBuffer, 0x20u);
    }
  }

  memset(&v42, 0, sizeof(v42));
  [(JFXRGBDMatte *)self featherMatte:d];
  src = v42;
  v35 = [(JFXRGBDMatte *)self createInvertedMatte:&src];
  v36 = v35;
  if (self->_visualizeFaceRect)
  {
    drawFaceRectOnAlphaMap(v35, self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height);
  }

  v37 = [(JFXPixelRotationSession *)self->_matteRotator createRotatedPixelBuffer:v36];
  v38 = [(JFXRGBDMatte *)self createTemporalFilteredMatte:v37];
  CVPixelBufferRelease(v37);
  CVPixelBufferRelease(v36);
  ContourProcessing::~ContourProcessing(v43);
  return v38;
}

- (__CVBuffer)createTemporalFilteredMatte:(__CVBuffer *)matte
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(JFXPerfTimer);
  Width = CVPixelBufferGetWidth(matte);
  Height = CVPixelBufferGetHeight(matte);
  pixelBufferOut = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, self->_scaledDestinationPool, &pixelBufferOut);
  pixelBuffer = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, self->_rotatedMattePool, &pixelBuffer);
  if (self->_motionDetected || (alphaMatteHistory = self->_alphaMatteHistory) == 0)
  {
    pixelBuffer = CVPixelBufferRetain(matte);
  }

  else
  {
    CVPixelBufferLockBaseAddress(alphaMatteHistory, 1uLL);
    CVPixelBufferLockBaseAddress(matte, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    v27 = v5;
    BytesPerRow = CVPixelBufferGetBytesPerRow(self->_alphaMatteHistory);
    v10 = CVPixelBufferGetBytesPerRow(matte);
    v11 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v13 = CVPixelBufferGetBaseAddress(self->_alphaMatteHistory);
    v14 = CVPixelBufferGetBaseAddress(matte);
    if (Height)
    {
      v15 = 0;
      do
      {
        v16 = v13;
        v17 = v14;
        v18 = BaseAddress;
        v19 = Width >> 3;
        if (Width >= 8)
        {
          do
          {
            v20 = *v16++;
            v21 = v20;
            v22 = *v17++;
            *v18++ = vqmovn_u16(vmovl_u8(vhadd_u8(v22, v21)));
            --v19;
          }

          while (v19);
        }

        ++v15;
        BaseAddress = (BaseAddress + v11);
        v14 = (v14 + v10);
        v13 = (v13 + BytesPerRow);
      }

      while (v15 != Height);
    }

    v5 = v27;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(matte, 1uLL);
    CVPixelBufferUnlockBaseAddress(self->_alphaMatteHistory, 1uLL);
  }

  CVPixelBufferRelease(self->_alphaMatteHistory);
  self->_alphaMatteHistory = CVPixelBufferRetain(matte);
  [(JFXImageScaler *)self->_imageScaler scaleImage:pixelBuffer destinationImage:pixelBufferOut];
  CVPixelBufferRelease(pixelBuffer);
  v23 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [(JFXPerfTimer *)v5 end];
    *buf = 134217984;
    v31 = v24;
    _os_log_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEFAULT, "temporal filter %.1fms", buf, 0xCu);
  }

  v25 = pixelBufferOut;
  return v25;
}

- (void)innerOuterFusion:(DepthProcessingDataRGBD *)fusion processWin:(CGRect)win
{
  height = win.size.height;
  y = win.origin.y;
  v31 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(JFXPerfTimer);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  kernel[3] = v9;
  kernel[4] = v9;
  kernel[1] = v9;
  kernel[2] = v9;
  kernel[0] = v9;
  width = self->_depthSizeRotated.width;
  v10 = self->_depthSizeRotated.height;
  v30 = -1;
  depthBufferFull = self->_depthBufferFull;
  v13 = (width * 0.5);
  src.data = fusion->var11;
  src.height = v10;
  src.width = width;
  src.rowBytes = width;
  v14 = (v10 * 0.5);
  dest.data = depthBufferFull;
  dest.height = v14;
  v15 = v13;
  dest.width = v13;
  dest.rowBytes = v13;
  vImageScale_Planar8(&src, &dest, self->_vImageTempBuffer, 0x20u);
  v16 = self->_depthBufferHalf[0];
  v26.data = fusion->var10;
  v26.height = v14;
  v26.width = v15;
  v26.rowBytes = v15;
  v25.data = v16;
  v25.height = v14;
  v25.width = v15;
  v25.rowBytes = v15;
  vImageDilate_Planar8(&v26, &v25, 0, 0, kernel, 7uLL, 7uLL, 8u);
  bzero(fusion->var11, v15 * v14);
  v17 = y;
  v18 = y + height;
  if (v18 > y)
  {
    v19 = v17;
    v20 = v15 * v17;
    do
    {
      v21 = v15;
      v22 = v20;
      if (v15 >= 1)
      {
        do
        {
          if (depthBufferFull[v22] <= 0x63u)
          {
            v23 = 0;
          }

          else
          {
            v23 = -1;
          }

          fusion->var11[v22++] = v23;
          --v21;
        }

        while (v21);
      }

      ++v19;
      v20 += v15;
    }

    while (v18 > v19);
  }

  v24.data = fusion->var11;
  v24.height = v14;
  v24.width = v15;
  v24.rowBytes = v15;
  vImageErode_Planar8(&v24, &dest, 0, 0, kernel, 5uLL, 5uLL, 8u);
  vImageErode_Planar8(&dest, &v24, 0, 0, kernel, 5uLL, 5uLL, 8u);
  vImageDilate_Planar8(&v24, &dest, 0, 0, kernel, 5uLL, 5uLL, 8u);
  vImageDilate_Planar8(&dest, &v24, 0, 0, kernel, 5uLL, 5uLL, 8u);
  operator new[]();
}

- (void)expansionOfKnownRegionsRGBD:(__CVBuffer *)d processingData:(DepthProcessingDataRGBD *)data regionWin:(CGRect)win centerOfRow:(int)row
{
  y = win.origin.y;
  v65 = *MEMORY[0x277D85DE8];
  v54 = objc_alloc_init(JFXPerfTimer);
  v64 = -1;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v62 = v11;
  v63 = v11;
  v60 = v11;
  v61 = v11;
  *kernel = v11;
  depthBufferFull = self->_depthBufferFull;
  width = self->_depthSizeRotated.width;
  height = self->_depthSizeRotated.height;
  v15 = isFaceBoundingBoxValid(self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height);
  v16 = (height * 0.5);
  v17 = (width * 0.5);
  if (v15)
  {
    v18 = (self->_largestFaceRect.origin.x * v16);
    v19 = (self->_largestFaceRect.size.width * v16);
  }

  else
  {
    v18 = y + 20;
    v20 = v16 - v18;
    if (v16 - v18 <= 20)
    {
      v20 = 20;
    }

    v19 = v20 - 20;
  }

  v21 = v19 + v18;
  if (v16 - 1 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v16 - 1;
  }

  src.data = data->var10;
  src.height = v16;
  if (v21 >= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v21;
  }

  v24 = v17;
  src.width = v17;
  src.rowBytes = v17;
  dest.data = depthBufferFull;
  dest.height = v16;
  dest.width = v17;
  dest.rowBytes = v17;
  vImageDilate_Planar8(&src, &dest, 0, 0, kernel, 5uLL, 5uLL, 8u);
  v25 = CVPixelBufferGetWidth(d);
  v26 = CVPixelBufferGetHeight(d);
  BytesPerRow = CVPixelBufferGetBytesPerRow(d);
  CVPixelBufferLockBaseAddress(d, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(d);
  v31 = v22 & ~(v22 >> 31);
  if (v23 > v31)
  {
    dCopy = d;
    v32 = v31 - 2;
    v33 = BytesPerRow;
    v34 = vdupq_n_s32(0x4B400000u);
    v35 = vdupq_n_s32(0xCB400000);
    v36 = v22 & ~(v22 >> 31);
    do
    {
      if (v25 > row)
      {
        rowCopy = row;
        v38 = row - 2;
        do
        {
          if (data->var10[rowCopy + v36 * v24] >= 0x81u)
          {
            v29.i32[0] = *&BaseAddress[4 * rowCopy + v36 * v33];
            v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v29.f32)), v34), v35);
            v39 = v32;
            do
            {
              v40 = v39 * v24;
              v41 = v38;
              do
              {
                if ((v41 & 0x8000000000000000) == 0 && (v39 & 0x8000000000000000) == 0 && v41 < v25 && v39 < v26)
                {
                  v42 = v41 + v40;
                  var10 = data->var10;
                  if (!var10[v41 + v40])
                  {
                    if (depthBufferFull[v42])
                    {
                      if (((v36 - v39) * (v36 - v39) + (rowCopy - v41) * (rowCopy - v41)) <= 4)
                      {
                        v30.i32[0] = *&BaseAddress[4 * v41 + v39 * v33];
                        v45 = vsubq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v30.f32)), v34), v35), v29);
                        v46 = vsubq_f32(v45, v45);
                        v30 = vmulq_f32(v46, v46);
                        if ((v30.f32[2] + vaddv_f32(*v30.f32)) <= 100.0)
                        {
                          var10[v42] = 0x80;
                        }
                      }
                    }
                  }
                }

                v44 = v41++ < rowCopy + 2;
              }

              while (v44);
              v44 = v39++ < v36 + 2;
            }

            while (v44);
          }

          ++rowCopy;
          ++v38;
        }

        while (rowCopy < v25);
      }

      ++v36;
      ++v32;
    }

    while (v36 != v23);
    v47 = row + v24 * v31;
    d = dCopy;
    do
    {
      rowCopy2 = row;
      for (i = v47; rowCopy2 < v25; ++rowCopy2)
      {
        v50 = data->var10;
        if (v50[i] == 128)
        {
          v50[i] = -1;
        }

        ++i;
      }

      ++v31;
      v47 += v24;
    }

    while (v31 != v23);
  }

  CVPixelBufferUnlockBaseAddress(d, 1uLL);
  v51 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    [(JFXPerfTimer *)v54 end];
    *buf = 134217984;
    v58 = v52;
    _os_log_impl(&dword_242A3B000, v51, OS_LOG_TYPE_DEFAULT, "expansion %.1fms", buf, 0xCu);
  }
}

- (void)mattingGrabCut:(char *)cut depthMap:(char *)map colorBuffer:(__CVBuffer *)buffer processWin:(CGRect)win
{
  v29 = *MEMORY[0x277D85DE8];
  winCopy = win;
  if (win.size.width > 0.0 && win.size.height > 20.0)
  {
    v11 = objc_alloc_init(JFXPerfTimer);
    self->_grabCutCounter = (self->_grabCutCounter + 1) % 0xA;
    v17 = dispatch_get_global_queue(0, 0);
    v18 = dispatch_group_create();
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    if (self->_disableMattingMultithreading)
    {
      *&context = self->_grabCutModules[0];
      *(&context + 1) = cut;
      mapCopy2 = map;
      v22 = BaseAddress;
      v23 = &winCopy;
      v24 = BytesPerRow;
      v25 = 0x100000000;
      dispatch_group_async_f(v18, v17, &context, DispatchContextRGBDSensoGrabCut);
      dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      if (!self->_grabCutCounter)
      {
        [(PVComputeGrabCut *)self->_grabCutModules[0] reset];
      }
    }

    else
    {
      *&context = self->_grabCutModules[0];
      *(&context + 1) = cut;
      mapCopy2 = map;
      v22 = BaseAddress;
      v23 = &winCopy;
      v24 = BytesPerRow;
      v25 = 0x200000000;
      v26[0] = self->_grabCutModules[1];
      v26[1] = cut;
      v26[2] = map;
      v26[3] = BaseAddress;
      v26[4] = &winCopy;
      v27 = BytesPerRow;
      v28 = 0x200000001;
      dispatch_group_async_f(v18, v17, &context, DispatchContextRGBDSensoGrabCut);
      dispatch_group_async_f(v18, v17, v26, DispatchContextRGBDSensoGrabCut);
      dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      if (!self->_grabCutCounter)
      {
        [(PVComputeGrabCut *)self->_grabCutModules[0] reset];
        [(PVComputeGrabCut *)self->_grabCutModules[1] reset];
      }

      for (i = 56; i != -56; i -= 56)
      {
      }
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    v15 = JFXLog_DebugMatting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(JFXPerfTimer *)v11 end];
      LODWORD(context) = 134217984;
      *(&context + 4) = v16;
      _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "grabcut %.1fms", &context, 0xCu);
    }
  }
}

- (void)getDepthData:(__CVBuffer *)data processData:(DepthProcessingDataRGBD *)processData
{
  v20 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v7 = objc_alloc_init(JFXPerfTimer);
    JFXConvertFloatDepthImageToFixedPointAndTranspose(data, processData->var2);
    DepthProcessingDataRGBD::depthHistogram(processData, self->_depthHist);
    DepthProcessingDataRGBD::fillHolesInSource(processData, self->_largestFaceRect, self->_interfaceOrientation);
    v8 = JFXLog_DebugMatting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(JFXPerfTimer *)v7 end];
      v18 = 134217984;
      v19 = v9;
      _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "RGBD preproc_histogram %.1fms", &v18, 0xCu);
    }
  }

  else
  {
    v10 = JFXLog_matting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "Error: depthPixelBuffer=NULL.", &v18, 2u);
    }
  }

  self->_faceRectDepth = -1;
  if (isFaceBoundingBoxValid(self->_largestFaceRect.origin.x, self->_largestFaceRect.origin.y, self->_largestFaceRect.size.width, self->_largestFaceRect.size.height))
  {
    [(JFXRGBDMatte *)self findDepthForFace:processData];
  }

  minObjectDistance = self->_minObjectDistance;
  if (minObjectDistance < 3)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = &self->_depthHist[2];
  v14 = minObjectDistance - 2;
  do
  {
    v15 = *v13++;
    v12 += v15;
    --v14;
  }

  while (v14);
  if (v12 <= 2000)
  {
LABEL_16:
    self->_numFramesWithVeryClosePixels = 0;
    goto LABEL_17;
  }

  v16 = self->_numFramesWithVeryClosePixels + 1;
  self->_numFramesWithVeryClosePixels = v16;
  if (v16 <= 3)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = 1;
LABEL_18:
  self->_currentMattingStatus = v17;
}

- (void)depthToAlphaMap:(DepthProcessingDataRGBD *)map
{
  v5 = 0;
  v58 = *MEMORY[0x277D85DE8];
  p_depthSizeRotated = &self->_depthSizeRotated;
  v7 = self->_depthSizeRotated.height * self->_depthSizeRotated.width;
  depthHist = self->_depthHist;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = v9 - 1;
    v12 = &depthHist[v9];
    while (depthHist[v10] <= 20)
    {
      ++v10;
      ++v9;
      ++v11;
      ++v12;
      if (v10 == 100)
      {
        v13 = 100;
        goto LABEL_13;
      }
    }

    v55[3 * v5 + 8] = v10;
    v14 = 3 * v5;
    v55[v14 + 9] = 0;
    if (v10 <= 99)
    {
      v15 = 0;
      while (1)
      {
        v17 = *v12++;
        v16 = v17;
        if (v17 < 21)
        {
          break;
        }

        v15 += v16;
        v55[v14 + 9] = v15;
        ++v9;
        if (++v11 >= 99)
        {
          LODWORD(v10) = 100;
          goto LABEL_12;
        }
      }

      LODWORD(v10) = v9;
    }

LABEL_12:
    v13 = v10 - 1;
    v57[v14] = v10 - 1;
    ++v5;
LABEL_13:
    v9 = v13 + 1;
  }

  while (v13 < 99);
  if (!v5)
  {
    v19 = 5;
    goto LABEL_49;
  }

  v18 = v5 - 1;
  if (v5 == 1)
  {
    v19 = v57[0];
    if (v57[0] <= 99)
    {
      v20 = &self->_depthHist[v57[0]];
      v21 = v57[0] + 1;
      do
      {
        v22 = *v20++;
        if (v22 < 1)
        {
          goto LABEL_49;
        }

        ++v19;
        v23 = v21++ == 100;
      }

      while (!v23);
    }

LABEL_47:
    v19 = 99;
    goto LABEL_49;
  }

  if (v5 < 1)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = 0;
    v27 = v56;
    do
    {
      v29 = *v27;
      v27 += 3;
      v28 = v29;
      v30 = v29 <= v25;
      if (v29 <= v25)
      {
        v26 = v26;
      }

      else
      {
        v26 = v24;
      }

      if (!v30)
      {
        v25 = v28;
      }

      ++v24;
    }

    while (v5 != v24);
    if (self->_usingforegroundSegBooster && v26 > 0)
    {
      v32 = 0;
      v33 = v56;
      while (1)
      {
        v34 = *v33;
        v33 += 3;
        if (v34 > v7 / 3)
        {
          break;
        }

        if (v26 == ++v32)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v26) = v32;
    }
  }

LABEL_41:
  v19 = v57[3 * v26];
  if (v26 != v18)
  {
    v19 = (v55[3 * v26 + 11] + v19) / 2;
    goto LABEL_49;
  }

  if (v19 > 99)
  {
    goto LABEL_47;
  }

  v35 = &self->_depthHist[v19];
  v36 = v19 + 1;
  while (1)
  {
    v37 = *v35++;
    if (v37 < 1)
    {
      break;
    }

    ++v19;
    v23 = v36++ == 100;
    if (v23)
    {
      goto LABEL_47;
    }
  }

LABEL_49:
  v38 = 10 * v19;
  faceRectDepth = self->_faceRectDepth;
  if (faceRectDepth >= 1)
  {
    if (v38 >= faceRectDepth || faceRectDepth > 0x3E7)
    {
      if (v38 > faceRectDepth && faceRectDepth <= 0x12B)
      {
        v41 = &self->_depthHist[45];
        v42 = -550;
        while (1)
        {
          v43 = *v41++;
          if (v43 < 21)
          {
            break;
          }

          v42 += 10;
          if (!v42)
          {
LABEL_61:
            v38 = 1000;
            goto LABEL_63;
          }
        }

        v38 = v42 + 1000;
      }
    }

    else
    {
      v38 = 10 * (self->_faceRectDepth / 0xAu);
      v40 = self->_faceRectDepth / 0xAu;
      while (depthHist[v40] >= 21)
      {
        ++v40;
        v38 += 10;
        if (v40 == 100)
        {
          goto LABEL_61;
        }
      }
    }
  }

LABEL_63:
  depthBufferFull = self->_depthBufferFull;
  DepthProcessingDataRGBD::setAverageDepthAndSegment(map, v38);
  width = p_depthSizeRotated->width;
  height = p_depthSizeRotated->height;
  v47 = (height * 0.5);
  memset(v52, 255, 25);
  v48 = (width * 0.5);
  *v55 = map->var10;
  *&v55[2] = height;
  *&v55[4] = width;
  *&v55[6] = width;
  v54.data = depthBufferFull;
  v54.height = v47;
  v54.width = v48;
  v54.rowBytes = v48;
  vImageScale_Planar8(v55, &v54, self->_vImageTempBuffer, 0x20u);
  v49 = (v48 * v47);
  if (v49 >= 1)
  {
    for (i = 0; i != v49; ++i)
    {
      if (depthBufferFull[i] <= 0x63u)
      {
        v51 = 0;
      }

      else
      {
        v51 = -1;
      }

      map->var10[i] = v51;
    }
  }

  v53.data = map->var10;
  v53.height = v47;
  v53.width = v48;
  v53.rowBytes = v48;
  vImageDilate_Planar8(&v53, &v54, 0, 0, v52, 3uLL, 3uLL, 8u);
  vImageDilate_Planar8(&v54, &v53, 0, 0, v52, 3uLL, 3uLL, 8u);
  vImageErode_Planar8(&v53, &v54, 0, 0, v52, 3uLL, 3uLL, 8u);
  vImageErode_Planar8(&v54, &v53, 0, 0, v52, 3uLL, 3uLL, 8u);
}

- (void)postProcessing:(const char *)processing depthDataSmall:(const char *)small depthData:(const char *)data RGBDMatte:(char *)matte halfHeight:(int)height halfWidth:(int)width
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = objc_alloc_init(JFXPerfTimer);
  v14 = self->_heightOfMattingWin + self->_topOfHeadHalf;
  if (v14 <= 20)
  {
    v15 = 20;
  }

  else
  {
    v15 = self->_heightOfMattingWin + self->_topOfHeadHalf;
  }

  if (height - 1 >= v14)
  {
    v16 = self->_heightOfMattingWin + self->_topOfHeadHalf;
  }

  else
  {
    v16 = height - 1;
  }

  memcpy(&matte[v16 * width], &data[v16 * width], (height - v16) * width);
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  v19 = (v15 - 19);
  if (v18 > v19)
  {
    v20 = (v18 - 1) * width;
    v21 = &matte[v20];
    v22 = &data[v20];
    v23 = 0.0499;
    do
    {
      if (width >= 1)
      {
        widthCopy = width;
        v25 = v22;
        v26 = v21;
        do
        {
          LOBYTE(v17) = *v26;
          v27 = *v25++;
          v17 = ((1.0 - v23) * v27) + (LODWORD(v17) * v23);
          *v26++ = v17;
          --widthCopy;
        }

        while (widthCopy);
      }

      --v18;
      v23 = v23 + 0.0499;
      v21 -= width;
      v22 -= width;
    }

    while (v18 > v19);
  }

  v35 = 0;
  ContourProcessing::ContourProcessing(v34, matte, height, width, self->_contourMemoryPool, 0);
  ContourProcessing::contourExtraction(v34, &v35);
  if (v35 >= 21 && self->_topOfHeadHalf >= 1)
  {
    JFXDistanceTransformEuclidean(small, self->_depthBufferFull, height, width);
  }

  v28 = (width * height);
  if (v28 >= 1)
  {
    do
    {
      v29 = *processing++;
      if (v29 <= 0x63)
      {
        *matte = 0;
      }

      ++matte;
      --v28;
    }

    while (v28);
  }

  v30 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    [(JFXPerfTimer *)v33 end];
    *buf = 134217984;
    v37 = v31;
    _os_log_impl(&dword_242A3B000, v30, OS_LOG_TYPE_DEFAULT, "postproc %.1fms", buf, 0xCu);
  }

  ContourProcessing::~ContourProcessing(v34);
}

- (BOOL)isValidForCameraFrameSet:(id)set
{
  setCopy = set;
  depthData = [setCopy depthData];
  depthDataMap = [depthData depthDataMap];

  Width = CVPixelBufferGetWidth(depthDataMap);
  Height = CVPixelBufferGetHeight(depthDataMap);
  v11.receiver = self;
  v11.super_class = JFXRGBDMatte;
  if ([(JFXMatting *)&v11 isValidForCameraFrameSet:setCopy])
  {
    v9 = self->_depthSize.height == Height && self->_depthSize.width == Width;
  }

  else
  {
    v9 = 0;
  }

  return v9;
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