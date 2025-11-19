@interface GenericFlow
- (BOOL)finishProcessing;
- (BOOL)processWithFirstFrame:(id)a3 secondFrame:(id)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 streamingMode:(BOOL)a7 error:(id *)a8;
- (BOOL)startSessionWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 frameWidth:(unint64_t)a5 frameHeight:(unint64_t)a6 useHomographyInFlow:(BOOL)a7 error:(id *)a8;
- (GenericFlow)initWithOpticalFlow:(id)a3 usage:(int64_t)a4 rotation:(int64_t)a5;
- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)a3 downscaledSecond:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 prevBackwardFlow:(__CVBuffer *)a7 depth:(__CVBuffer *)a8 interleaveFactor:(unint64_t)a9;
- (int64_t)computeForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4;
- (int64_t)preProcessHomographyFirstFrame:(id)a3 secondFrame:(id)a4 previousFlow:(__CVBuffer *)a5;
- (void)releaseInternalBuffers;
- (void)setPropertiesFromDefaults;
@end

@implementation GenericFlow

- (BOOL)startSessionWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 frameWidth:(unint64_t)a5 frameHeight:(unint64_t)a6 useHomographyInFlow:(BOOL)a7 error:(id *)a8
{
  self->_useHomographyInFlow = a7;
  *&self->_streamingMode = 257;
  [(VEOpticalFlowEstimator *)self->_opticalFlow updateFlowOnlyMode:self->_flowOnlyMode];
  if (!self->_useHomographyInFlow)
  {
    return 1;
  }

  v14 = [[HomographyFlow alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  homographyFlow = self->_homographyFlow;
  self->_homographyFlow = v14;

  if (!self->_homographyFlow || (v16 = [[ImageReg alloc] initWithSubmodules:self->_homographyFlow WithDevice:self->_device commandQueue:self->_commandQueue flowDerivedHomography:self->_streamingMode], pImageRegInstance = self->_pImageRegInstance, self->_pImageRegInstance = v16, pImageRegInstance, (v18 = self->_pImageRegInstance) == 0) || ([(ImageReg *)v18 setStreamingMode:self->_streamingMode], [self->_pImageRegInstance setRefreshCalculation:1], [(GenericFlow *)self setPropertiesFromDefaults], [(VEMetalBase *)self->_homographyFlow setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete], [(GenericFlow *)self releaseInternalBuffers], PixelBuffer = CreatePixelBuffer(a3, a4, 843264104), (self->_HomoFlow12 = PixelBuffer) == 0) || (v20 = CreatePixelBuffer(a3, a4, 843264104), (self->_HomoFlow21 = v20) == 0))
  {
    [GenericFlow startSessionWithFlowWidth:a8 flowHeight:&v27 frameWidth:? frameHeight:? useHomographyInFlow:? error:?];
    return v27;
  }

  if (!self->_streamingMode)
  {
    return 1;
  }

  v21 = 1;
  [(ImageProcessor_Ext *)self->_imageProcessor setUseHomography:1];
  v22 = [[PseudoDepthGenerator alloc] initWithDevice:self->_device commandQueue:self->_commandQueue];
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  self->_pseudoDepthGenerator = v22;

  [(VEMetalBase *)self->_pseudoDepthGenerator setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator setPseudoDepth:1];
  self->_previousFlow = CreatePixelBuffer(a3, a4, 843264104);
  v24 = vcvts_n_f32_u64(a5, 2uLL);
  v25 = vcvts_n_f32_u64(a6, 2uLL);
  self->_previousDepth = CreatePixelBuffer(v24, v25, 843264104);
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator allocateFlowOnlyBufferWithFlowWidth:a3 flowHeight:a4 depthWidth:v24 depthHeight:v25 interleaveFactor:1];
  return v21;
}

- (void)setPropertiesFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableGpuWaitForComplete", @"com.apple.VirtualShutterAngle", &keyExistsAndHasValidFormat);
  self->_EnableGpuWaitForComplete = 0;
  if (keyExistsAndHasValidFormat)
  {
    self->_EnableGpuWaitForComplete = AppBooleanValue != 0;
  }
}

- (void)releaseInternalBuffers
{
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  if (pseudoDepthGenerator)
  {
    [(PseudoDepthGenerator *)pseudoDepthGenerator releaseResources];
  }

  previousFlow = self->_previousFlow;
  if (previousFlow)
  {
    CVPixelBufferRelease(previousFlow);
  }

  previousDepth = self->_previousDepth;
  if (previousDepth)
  {
    CVPixelBufferRelease(previousDepth);
  }

  warpedImage = self->_warpedImage;
  if (warpedImage)
  {
    CVPixelBufferRelease(warpedImage);
  }

  HomoFlow12 = self->_HomoFlow12;
  if (HomoFlow12)
  {
    CVPixelBufferRelease(HomoFlow12);
  }

  HomoFlow21 = self->_HomoFlow21;
  if (HomoFlow21)
  {
    CVPixelBufferRelease(HomoFlow21);
  }

  self->_previousDepth = 0;
  *&self->_warpedImage = 0u;
  *&self->_HomoFlow21 = 0u;
  previousFlowTexture = self->_previousFlowTexture;
  self->_previousFlowTexture = 0;

  previousDepthTexture = self->_previousDepthTexture;
  self->_previousDepthTexture = 0;

  forwardFlowTexture = self->_forwardFlowTexture;
  self->_forwardFlowTexture = 0;

  backwardFlowTexture = self->_backwardFlowTexture;
  self->_backwardFlowTexture = 0;

  downscaleImage1Texture = self->_downscaleImage1Texture;
  self->_downscaleImage1Texture = 0;

  downscaleImage2Texture = self->_downscaleImage2Texture;
  self->_downscaleImage2Texture = 0;
}

- (BOOL)finishProcessing
{
  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = 0;

  homographyFlow = self->_homographyFlow;
  self->_homographyFlow = 0;

  pImageRegInstance = self->_pImageRegInstance;
  self->_pImageRegInstance = 0;

  [(GenericFlow *)self releaseInternalBuffers];
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  if (pseudoDepthGenerator)
  {
    self->_pseudoDepthGenerator = 0;
  }

  return 1;
}

- (GenericFlow)initWithOpticalFlow:(id)a3 usage:(int64_t)a4 rotation:(int64_t)a5
{
  v9 = a3;
  v21.receiver = self;
  v21.super_class = GenericFlow;
  v10 = [(GenericFlow *)&v21 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_opticalFlow, a3), v12 = MTLCreateSystemDefaultDevice(), device = v11->_device, v11->_device = v12, device, v14 = [(MTLDevice *)v11->_device newCommandQueue], commandQueue = v11->_commandQueue, v11->_commandQueue = v14, commandQueue, v16 = [[ImageProcessor_Ext alloc] initWithUsage:a4 device:v11->_device commandQueue:v11->_commandQueue opticalFlowModeOnly:1], imageProcessor = v11->_imageProcessor, v11->_imageProcessor = v16, imageProcessor, (v18 = v11->_imageProcessor) != 0))
  {
    [(ImageProcessor_Ext *)v18 setFirstRotation:a5];
    [(ImageProcessor_Ext *)v11->_imageProcessor setSecondRotation:a5];
    v11->_flowOnlyMode = 1;
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)processWithFirstFrame:(id)a3 secondFrame:(id)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 streamingMode:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  if (self->_useHomographyInFlow)
  {
    [self->_pImageRegInstance setStreamingMode:v9];
    v16 = !v9 || !self->_streamingMode;
    [self->_pImageRegInstance setRefreshCalculation:v16];
    [(VEOpticalFlowEstimator *)self->_opticalFlow setStreamingMode:0];
    if (self->_streamingMode != v9)
    {
      self->_isFirstFrameInStream = v9;
      self->_streamingMode = v9;
    }
  }

  else if ([(VEOpticalFlowEstimator *)self->_opticalFlow streamingMode]!= v9)
  {
    [(VEOpticalFlowEstimator *)self->_opticalFlow setIsFirstFrameInStream:v9];
    [(VEOpticalFlowEstimator *)self->_opticalFlow setStreamingMode:v9];
  }

  v17 = -[ImageProcessor_Ext getPixelAttributesForBuffer:](self->_imageProcessor, "getPixelAttributesForBuffer:", [v14 buffer]);
  if (!v17)
  {
    v17 = [(ImageProcessor_Ext *)self->_imageProcessor preserveCMAttachmentFirstFrame:v14 secondFrame:v15];
    if (!v17)
    {
      OUTLINED_FUNCTION_0_0();
      v17 = -[ImageProcessor_Ext preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", [v14 buffer], objc_msgSend(v15, "buffer"), 0);
      if (!v17 && (!self->_useHomographyInFlow || (v17 = [(GenericFlow *)self preProcessHomographyFirstFrame:v14 secondFrame:v15 previousFlow:self->_previousFlow]) == 0))
      {
        OUTLINED_FUNCTION_0_0();
        v17 = [(GenericFlow *)self computeForwardFlow:a5 backwardFlow:a6];
        if (!v17)
        {
          v17 = [(ImageProcessor_Ext *)self->_imageProcessor restoreCMAttachmentToFirstFrame:v14 secondFrame:v15 synthesizedFrame:0];
        }
      }
    }
  }

  v18 = v17;
  if (a8 && v17)
  {
    *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.OpticalFlow" code:v17 userInfo:0];
  }

  return v18 == 0;
}

- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)a3 downscaledSecond:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 prevBackwardFlow:(__CVBuffer *)a7 depth:(__CVBuffer *)a8 interleaveFactor:(unint64_t)a9
{
  result = 12;
  if (a3 && a5 && a6 && a7 && a8)
  {
    if (self->_streamingMode && self->_bindTexture && (v13 = checkTextureBoundBuffer(self->_forwardFlowTexture, a5), self->_bindTexture = v13))
    {
      return 0;
    }

    else
    {
      self->_bindTexture = 0;
      v14 = createRGBATextureFromCVPixelBuffer(a3, self->_device);
      downscaleImage1Texture = self->_downscaleImage1Texture;
      self->_downscaleImage1Texture = v14;

      if (self->_downscaleImage1Texture && (createRGBATextureFromCVPixelBuffer(a4, self->_device), v16 = objc_claimAutoreleasedReturnValue(), downscaleImage2Texture = self->_downscaleImage2Texture, self->_downscaleImage2Texture = v16, downscaleImage2Texture, self->_downscaleImage2Texture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), forwardFlowTexture = self->_forwardFlowTexture, self->_forwardFlowTexture = v22, forwardFlowTexture, self->_forwardFlowTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), backwardFlowTexture = self->_backwardFlowTexture, self->_backwardFlowTexture = v28, backwardFlowTexture, self->_backwardFlowTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), previousDepthTexture = self->_previousDepthTexture, self->_previousDepthTexture = v34, previousDepthTexture, self->_previousDepthTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), previousFlowTexture = self->_previousFlowTexture, self->_previousFlowTexture = v40, previousFlowTexture, self->_previousFlowTexture))
      {
        result = 0;
        self->_bindTexture = 1;
      }

      else
      {
        return 9;
      }
    }
  }

  return result;
}

- (int64_t)preProcessHomographyFirstFrame:(id)a3 secondFrame:(id)a4 previousFlow:(__CVBuffer *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    if (!self->_useHomographyInFlow)
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_0();
    Width = CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
    Height = CVPixelBufferGetHeight([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
    if (self->_streamingMode)
    {
      v14 = Width;
      v15 = Height;
      if (self->_isFirstFrameInStream)
      {
        [(VEOpticalFlowEstimator *)self->_opticalFlow opticalFlowFrom:[(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst] to:[(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond] flow:a5];
        pImageRegInstance = self->_pImageRegInstance;
        v17 = [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
        v18 = [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
        if (pImageRegInstance)
        {
          v19 = v18;
          v20 = pImageRegInstance;
          v21 = a5;
          v22 = 0;
          v23 = v17;
          v24 = v14;
          v25 = v15;
          v26 = 1;
LABEL_12:
          [(ImageReg *)v20 extractHomographyFromFlow:v21 depth:v22 im1:v23 im2:v19 targetResolution:v26 currentPairFlow:v24, v25];
          goto LABEL_14;
        }
      }

      else
      {
        v30 = self->_pImageRegInstance;
        previousDepth = self->_previousDepth;
        v32 = [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
        v33 = [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
        if (v30)
        {
          v19 = v33;
          v20 = v30;
          v21 = a5;
          v22 = previousDepth;
          v23 = v32;
          v24 = v14;
          v25 = v15;
          v26 = 0;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v27 = self->_pImageRegInstance;
      v28 = [(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst];
      v29 = [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
      if (v27)
      {
        [(ImageReg *)v27 registerImage0:v28 toImage1:v29 Normalize:0];
        goto LABEL_14;
      }
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0;
    v41 = 0u;
LABEL_14:
    self->_result12 = v40;
    *self->_anon_50 = v41;
    *&self->_anon_50[16] = v42;
    *&self->_anon_50[32] = v43;
    v34 = *&self->_anon_50[32] > 0.3 && *&self->_anon_50[36] > 100;
    self->_homo12good = v34;
    v44 = __invert_f3(*&self->_result12.confidence);
    self->_result21.width = v44.columns[0].i32[2];
    *&self->_result21.confidence = v44.columns[0].i64[0];
    *&self->_anon_90[8] = v44.columns[1].i32[2];
    *self->_anon_90 = v44.columns[1].i64[0];
    *&self->_anon_90[24] = v44.columns[2].i32[2];
    *&self->_anon_90[16] = v44.columns[2].i64[0];
    *&self->_anon_90[32] = *&self->_anon_50[32];
    *&self->_anon_90[36] = *&self->_anon_50[36];
    *&self->_anon_90[44] = *&self->_anon_50[44];
    if (self->_homo12good)
    {
      if (!self->_warpedImage)
      {
        v35 = CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
        v36 = CVPixelBufferGetHeight([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
        PixelBuffer = CreatePixelBuffer(v35, v36, [(ImageProcessor_Ext *)self->_imageProcessor RGBAFormat]);
        self->_warpedImage = PixelBuffer;
        if (!PixelBuffer)
        {
          v11 = 9;
          goto LABEL_23;
        }
      }

      v38 = [self->_pImageRegInstance preprocessFirst:[(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond:v40] warpedFirst:self->_warpedImage withHomography:*&self->_result21.confidence, *self->_anon_90, *&self->_anon_90[16]];
      if (v38)
      {
        v11 = v38;
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_0_0();
    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

- (int64_t)computeForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4
{
  v4 = 12;
  if (a3 && a4)
  {
    OUTLINED_FUNCTION_0_0();
    [(VEOpticalFlowEstimator *)self->_opticalFlow setInputRotation:0];
    useHomographyInFlow = self->_useHomographyInFlow;
    opticalFlow = self->_opticalFlow;
    v9 = [(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst];
    if (useHomographyInFlow)
    {
      if (!self->_homo12good)
      {
        [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
        OUTLINED_FUNCTION_2_7();
      }

      v10 = opticalFlow;
      v11 = v9;
    }

    else
    {
      [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
      OUTLINED_FUNCTION_2_7();
    }

    [VEOpticalFlowEstimator opticalFlowsFrom:v10 to:"opticalFlowsFrom:to:forwardFlow:backwardFlow:" forwardFlow:v11 backwardFlow:?];
    OUTLINED_FUNCTION_0_0();
    if (self->_useHomographyInFlow && self->_homo12good)
    {
      OUTLINED_FUNCTION_0_0();
      CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
      CVPixelBufferGetWidth(a3);
      OUTLINED_FUNCTION_2_7();
      v13 = [v12 postprocessFlowWithhomographyMatrix21:? matrix12:? inputForwardFlow:? inputBackwardFlow:? outputForwardFlow:? outputBackwardFlow:? downscaleFacttor:?];
      if (!self->_streamingMode)
      {
        v4 = v13;
        goto LABEL_18;
      }

      [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
      [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
      OUTLINED_FUNCTION_2_7();
      v15 = [v14 bindWithMTLTextureFromDownscaledImage:1 downscaledSecond:? forwardFlow:? backwardFlow:? prevBackwardFlow:? depth:? interleaveFactor:?];
      if (v15)
      {
        return v15;
      }

      LODWORD(v16) = 1.0;
      v15 = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator deriveDepthFromFlowDownscaleFirstImage:self->_downscaleImage1Texture downscaleSecondImage:self->_downscaleImage2Texture backwardFlow:self->_backwardFlowTexture forwardFlow:self->_forwardFlowTexture destination:self->_previousDepthTexture interleave_factor:1 timeScale:v16];
      if (v15)
      {
        return v15;
      }

      v4 = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator saveBackwardFlow:self->_backwardFlowTexture prevBackwardFlow:self->_previousFlowTexture];
      if (!v4)
      {
        self->_isFirstFrameInStream = 0;
LABEL_18:
        OUTLINED_FUNCTION_0_0();
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)startSessionWithFlowWidth:(void *)result flowHeight:(_BYTE *)a2 frameWidth:frameHeight:useHomographyInFlow:error:.cold.1(void *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    result = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.OpticalFlow" code:9 userInfo:0];
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

@end