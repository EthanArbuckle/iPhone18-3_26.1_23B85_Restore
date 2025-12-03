@interface Synthesis_Ext
- ($57B2B29FC8133782E4341B3DF0B37CA6)calculateSynthesisRenderResolutionFromInputWidth:(SEL)width InputHeight:(unint64_t)height;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)to;
- (Synthesis_Ext)initWithMode:(int64_t)mode;
- (Synthesis_Ext)initWithMode:(int64_t)mode Device:(id)device CommandQueue:(id)queue;
- (int64_t)allocateAdditionalBuffersForHybridFromFullresResolution:(id *)resolution LowresResolution:(id *)lowresResolution;
- (int64_t)allocateResourcesFromWidth:(unint64_t)width Height:(unint64_t)height;
- (int64_t)allocateSynthesisResources:(id *)resources Resolution:(id *)resolution lowresRender:(BOOL)render;
- (int64_t)createFeaturesFromImage:(__CVBuffer *)image flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward depth:(__CVBuffer *)depth fullresFlow:(__CVBuffer *)flow remainedErrorMask:(__CVBuffer *)mask;
- (int64_t)generateDownscaleInputs:(id *)inputs highresImage:(id)image highresFlow:(id)flow highresDepth:(id)depth interleaveFactor:(unint64_t)factor commandBuffer:(id)buffer;
- (int64_t)mapBufferToTextureWithInterleaveFactor:(unint64_t)factor;
- (int64_t)synthesizeFrameFromInputImage:(id)image fullresFlow:(id)flow depth:(id)depth destination:(__CVBuffer *)destination timeScale:(float)scale frameIndex:(unint64_t)index;
- (int64_t)synthesizeFromImage:(id)image flow:(id)flow depth:(id)depth destination:(id)destination timeScale:(float)scale downscaleFactor:(unint64_t)factor storage:(id *)storage Resolution:(id *)self0 commandBuffer:(id)self1;
- (int64_t)synthesizeImageWithVirtualShutterLinePredictionModeFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flow:(__CVBuffer *)flow timeScale:(float)scale destination:(__CVBuffer *)destination;
- (int64_t)synthesizeImageWithVirtualShutterLinePredictionV2ModeFromImage:(id)image flow:(id)flow depth:(id)depth timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)dealloc;
- (void)releaseAdditionalBufferForHybrid;
- (void)releaseFeatures;
- (void)releaseResources;
- (void)releaseSynthesisResources:(id *)resources lowres:(BOOL)lowres;
@end

@implementation Synthesis_Ext

- ($57B2B29FC8133782E4341B3DF0B37CA6)calculateSynthesisRenderResolutionFromInputWidth:(SEL)width InputHeight:(unint64_t)height
{
  LODWORD(v5) = 10 * (((height * 20.0) / 1280.0 + 5.0) / 10);
  if (v5 >= 60)
  {
    LODWORD(v5) = 60;
  }

  if (v5 <= 10)
  {
    v5 = 10;
  }

  else
  {
    v5 = v5;
  }

  retstr->var2 = height / v5 + 1;
  retstr->var3 = a5 / v5 + 1;
  retstr->var0 = height;
  retstr->var1 = a5;
  if (5 * (height / 5) >= height)
  {
    v6 = height / 5;
  }

  else
  {
    v6 = height / 5 + 1;
  }

  retstr->var4 = v5;
  retstr->var5 = v6;
  if (5 * (a5 / 5) >= a5)
  {
    v7 = a5 / 5;
  }

  else
  {
    v7 = a5 / 5 + 1;
  }

  retstr->var6 = v7;
  retstr->var7 = 5;
  return self;
}

- (void)releaseResources
{
  if (self->_resourcesPreAllocated)
  {
    [(Synthesis_Ext *)self releaseSynthesisResources:&self->_highresStorage lowres:0];
    [(Synthesis_Ext *)self releaseAdditionalBufferForHybrid];
    self->_resourcesPreAllocated = 0;
  }
}

- (void)releaseSynthesisResources:(id *)resources lowres:(BOOL)lowres
{
  if (lowres)
  {
    CVPixelBufferRelease(resources->var0);
    CVPixelBufferRelease(resources->var1);
    CVPixelBufferRelease(resources->var2);
    CVPixelBufferRelease(resources->var9);
    CVPixelBufferRelease(resources->var10);
    resources->var0 = 0;
    resources->var1 = 0;
    resources->var2 = 0;
    resources->var9 = 0;
    resources->var10 = 0;
    var21 = resources->var21;
    resources->var21 = 0;

    var20 = resources->var20;
    resources->var20 = 0;

    var11 = resources->var11;
    resources->var11 = 0;

    var12 = resources->var12;
    resources->var12 = 0;

    var13 = resources->var13;
    resources->var13 = 0;
  }

  CVPixelBufferRelease(resources->var4);
  CVPixelBufferRelease(resources->var3);
  CVPixelBufferRelease(resources->var8);
  CVPixelBufferRelease(resources->var6);
  CVPixelBufferRelease(resources->var7);
  var5 = resources->var5;

  CVPixelBufferRelease(var5);
}

- (void)releaseAdditionalBufferForHybrid
{
  [(Synthesis_Ext *)self releaseSynthesisResources:&self->_lowresStorage lowres:1];
  CVPixelBufferRelease(self->_smKernelAlpha);
  CVPixelBufferRelease(self->_smForerunner);
  CVPixelBufferRelease(self->_forerunner);
  self->_smKernelAlpha = 0;
  self->_forerunner = 0;
  self->_smForerunner = 0;
  smKernelAlphaTexture = self->_smKernelAlphaTexture;
  self->_smKernelAlphaTexture = 0;

  forerunnerTexture = self->_forerunnerTexture;
  self->_forerunnerTexture = 0;

  smForerunnerTexture = self->_smForerunnerTexture;
  self->_smForerunnerTexture = 0;
}

- (void)dealloc
{
  postprocessor = self->_postprocessor;
  self->_postprocessor = 0;

  forwarp = self->_forwarp;
  self->_forwarp = 0;

  backwarp = self->_backwarp;
  self->_backwarp = 0;

  imageProcessUtility = self->_imageProcessUtility;
  self->_imageProcessUtility = 0;

  v7.receiver = self;
  v7.super_class = Synthesis_Ext;
  [(Synthesis_Ext *)&v7 dealloc];
}

- (BOOL)createModules
{
  device = self->_device;
  result = 0;
  if (device || (v4 = MTLCreateSystemDefaultDevice(), v5 = self->_device, self->_device = v4, v5, (device = self->_device) != 0))
  {
    if (self->_commandQueue || (v6 = [(MTLDevice *)device newCommandQueue], commandQueue = self->_commandQueue, self->_commandQueue = v6, commandQueue, self->_commandQueue))
    {
      v8 = [[Backwarp_VSA alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue interleaved:0];
      backwarp = self->_backwarp;
      self->_backwarp = v8;

      if (self->_backwarp)
      {
        v10 = [[Forwarp_Ext alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
        forwarp = self->_forwarp;
        self->_forwarp = v10;

        if (self->_forwarp)
        {
          v12 = [[Postprocess alloc] initWithDevice:self->_device commandQueue:self->_commandQueue];
          postprocessor = self->_postprocessor;
          self->_postprocessor = v12;

          if (self->_postprocessor)
          {
            v14 = [[ImageProcessUtility alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
            imageProcessUtility = self->_imageProcessUtility;
            self->_imageProcessUtility = v14;

            if (self->_imageProcessUtility)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)synthesizeFrameFromInputImage:(id)image fullresFlow:(id)flow depth:(id)depth destination:(__CVBuffer *)destination timeScale:(float)scale frameIndex:(unint64_t)index
{
  v19 = 0;
  v20 = 0;
  depthCopy = depth;
  flowCopy = flow;
  imageCopy = image;
  getAlignedInputFrameSizeForUsage([(Synthesis_Ext *)self usage:0], &v20, &v19);
  *&v16 = scale;
  v17 = [(Synthesis_Ext *)self synthesizeImageWithVirtualShutterLinePredictionV2ModeFromImage:imageCopy flow:flowCopy depth:depthCopy timeScale:destination destination:v16];

  return v17;
}

- (void)releaseFeatures
{
  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  depth = self->_depth;
  if (depth)
  {
    CVPixelBufferRelease(depth);
  }

  fullresFlow = self->_fullresFlow;
  if (fullresFlow)
  {
    CVPixelBufferRelease(fullresFlow);
  }

  remainedErrorMask = self->_remainedErrorMask;
  if (remainedErrorMask)
  {
    CVPixelBufferRelease(remainedErrorMask);
  }

  inputImage = self->_inputImage;
  if (inputImage)
  {
    CVPixelBufferRelease(inputImage);
  }

  self->_inputImage = 0;
  self->_forwardFlow = 0;
  self->_backwardFlow = 0;
  self->_depth = 0;
  self->_fullresFlow = 0;
  self->_remainedErrorMask = 0;
  inputImageTexture = self->_inputImageTexture;
  self->_inputImageTexture = 0;

  forwardFlowTexture = self->_forwardFlowTexture;
  self->_forwardFlowTexture = 0;

  backwardFlowTexture = self->_backwardFlowTexture;
  self->_backwardFlowTexture = 0;

  depthTexture = self->_depthTexture;
  self->_depthTexture = 0;

  fullresFlowTexture = self->_fullresFlowTexture;
  self->_fullresFlowTexture = 0;

  remainedErrorMaskTexture = self->_remainedErrorMaskTexture;
  self->_remainedErrorMaskTexture = 0;
}

- (BOOL)switchUsageTo:(int64_t)to
{
  [(Synthesis_Ext *)self setUsage:?];
  self->_pyramidLevels = 1;
  return to != 0;
}

- (Synthesis_Ext)initWithMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = Synthesis_Ext;
  v4 = [(VEMetalBase *)&v8 init];
  v5 = v4;
  if (v4 && ([(Synthesis_Ext *)v4 setUsage:mode], [(Synthesis_Ext *)v5 createModules]))
  {
    [(Synthesis_Ext *)v5 setFramePipeline:1];
    v5->_resourcesPreAllocated = 0;
    v5->_pyramidLevels = 1;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Synthesis_Ext)initWithMode:(int64_t)mode Device:(id)device CommandQueue:(id)queue
{
  v10.receiver = self;
  v10.super_class = Synthesis_Ext;
  v6 = [(VEMetalBase *)&v10 initWithDevice:device commmandQueue:queue];
  v7 = v6;
  if (v6 && ([(Synthesis_Ext *)v6 setUsage:mode], [(Synthesis_Ext *)v7 createModules]))
  {
    [(Synthesis_Ext *)v7 setFramePipeline:1];
    v7->_resourcesPreAllocated = 0;
    v7->_pyramidLevels = 1;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)allocateResourcesFromWidth:(unint64_t)width Height:(unint64_t)height
{
  if (self->_resourcesPreAllocated)
  {
    return 0;
  }

  p_highres = &self->_highres;
  [Synthesis_Ext calculateSynthesisRenderResolutionFromInputWidth:"calculateSynthesisRenderResolutionFromInputWidth:InputHeight:" InputHeight:?];
  v8 = v19;
  *&p_highres->render_width = v18;
  *&p_highres->tilemap_width = v8;
  v9 = v21;
  *&p_highres->tile_size = v20;
  *&p_highres->intermediateTileMap_height = v9;
  *&v10 = OUTLINED_FUNCTION_8_4().n128_u64[0];
  result = [(Synthesis_Ext *)self allocateSynthesisResources:self + v11 Resolution:&v18 lowresRender:0, v10];
  if (!result)
  {
    [(Synthesis_Ext *)self calculateSynthesisRenderResolutionFromInputWidth:width >> 2 InputHeight:height >> 2];
    v13 = v19;
    *&self->_lowres.render_width = v18;
    *&self->_lowres.tilemap_width = v13;
    v14 = v21;
    *&self->_lowres.tile_size = v20;
    *&self->_lowres.intermediateTileMap_height = v14;
    OUTLINED_FUNCTION_8_4();
    v15 = *&self->_lowres.tilemap_width;
    v17[0] = *&self->_lowres.render_width;
    v17[1] = v15;
    v16 = *&self->_lowres.intermediateTileMap_height;
    v17[2] = *&self->_lowres.tile_size;
    v17[3] = v16;
    result = [(Synthesis_Ext *)self allocateAdditionalBuffersForHybridFromFullresResolution:&v18 LowresResolution:v17];
    if (!result)
    {
      self->_resourcesPreAllocated = 1;
    }
  }

  return result;
}

- (int64_t)allocateSynthesisResources:(id *)resources Resolution:(id *)resolution lowresRender:(BOOL)render
{
  if (!resources)
  {
    return 12;
  }

  var0 = resolution->var0;
  var1 = resolution->var1;
  var2 = resolution->var2;
  var3 = resolution->var3;
  var5 = resolution->var5;
  var6 = resolution->var6;
  if (render)
  {
    v14 = OUTLINED_FUNCTION_7_4(resolution->var0, resolution->var1);
    resources->var0 = v14;
    if (!v14)
    {
      return 9;
    }

    v15 = OUTLINED_FUNCTION_0_16();
    PixelBuffer = CreatePixelBuffer(v15, v17, v16 | 0x4C300000u);
    resources->var1 = PixelBuffer;
    if (!PixelBuffer)
    {
      return 9;
    }

    v19 = OUTLINED_FUNCTION_0_16();
    v22 = CreatePixelBuffer(v19, v21, v20 | 0x32430000u);
    resources->var2 = v22;
    if (!v22)
    {
      return 9;
    }

    v23 = createTexturesFromCVPixelBuffer(resources->var0, self->_device, 3, 1uLL);
    var11 = resources->var11;
    resources->var11 = v23;

    if (!resources->var11)
    {
      return 9;
    }

    OUTLINED_FUNCTION_3_7();
    v29 = createTexturesFromCVPixelBuffer(v25, v26, v27, v28);
    var12 = resources->var12;
    resources->var12 = v29;

    if (!resources->var12)
    {
      return 9;
    }

    OUTLINED_FUNCTION_7();
    v35 = createTexturesFromCVPixelBuffer(v31, v32, v33, v34);
    var13 = resources->var13;
    resources->var13 = v35;

    if (!resources->var13)
    {
      return 9;
    }

    v37 = OUTLINED_FUNCTION_0_16();
    v40 = CreatePixelBuffer(v37, v39, v38 | 0x32430000u);
    resources->var9 = v40;
    if (!v40)
    {
      return 9;
    }

    OUTLINED_FUNCTION_7();
    v45 = createTexturesFromCVPixelBuffer(v41, v42, v43, v44);
    var20 = resources->var20;
    resources->var20 = v45;

    if (!resources->var20)
    {
      return 9;
    }

    v47 = OUTLINED_FUNCTION_7_4(var0, var1);
    resources->var10 = v47;
    if (!v47)
    {
      return 9;
    }

    v48 = createTexturesFromCVPixelBuffer(v47, self->_device, 4, 1uLL);
    var21 = resources->var21;
    resources->var21 = v48;

    if (!resources->var21)
    {
      return 9;
    }
  }

  v50 = OUTLINED_FUNCTION_0_16();
  v53 = CreatePixelBuffer(v50, v52, v51 | 0x4C300000u);
  resources->var4 = v53;
  if (!v53)
  {
    return 9;
  }

  v54 = OUTLINED_FUNCTION_7_4(var2, var3);
  resources->var8 = v54;
  if (!v54)
  {
    return 9;
  }

  v55 = OUTLINED_FUNCTION_7_4(var2, var3);
  resources->var6 = v55;
  if (!v55)
  {
    return 9;
  }

  v56 = OUTLINED_FUNCTION_0_16();
  v59 = CreatePixelBuffer(v56, v58, v57 | 0x4C300000u);
  resources->var3 = v59;
  if (!v59)
  {
    return 9;
  }

  v60 = OUTLINED_FUNCTION_7_4(var5, var6);
  resources->var7 = v60;
  if (!v60)
  {
    return 9;
  }

  v61 = OUTLINED_FUNCTION_0_16();
  v64 = CreatePixelBuffer(v61, v63, v62 | 0x4C300000u);
  resources->var5 = v64;
  if (!v64)
  {
    return 9;
  }

  OUTLINED_FUNCTION_3_7();
  v69 = createTexturesFromCVPixelBuffer(v65, v66, v67, v68);
  var14 = resources->var14;
  resources->var14 = v69;

  if (!resources->var14)
  {
    return 9;
  }

  OUTLINED_FUNCTION_5_3();
  v75 = createTexturesFromCVPixelBuffer(v71, v72, v73, v74);
  var19 = resources->var19;
  resources->var19 = v75;

  if (!resources->var19)
  {
    return 9;
  }

  OUTLINED_FUNCTION_5_3();
  v81 = createTexturesFromCVPixelBuffer(v77, v78, v79, v80);
  var17 = resources->var17;
  resources->var17 = v81;

  if (!resources->var17)
  {
    return 9;
  }

  OUTLINED_FUNCTION_3_7();
  v87 = createTexturesFromCVPixelBuffer(v83, v84, v85, v86);
  var15 = resources->var15;
  resources->var15 = v87;

  if (!resources->var15)
  {
    return 9;
  }

  OUTLINED_FUNCTION_5_3();
  v93 = createTexturesFromCVPixelBuffer(v89, v90, v91, v92);
  var18 = resources->var18;
  resources->var18 = v93;

  if (!resources->var18)
  {
    return 9;
  }

  OUTLINED_FUNCTION_3_7();
  v99 = createTexturesFromCVPixelBuffer(v95, v96, v97, v98);
  var16 = resources->var16;
  resources->var16 = v99;

  if (!resources->var16)
  {
    return 9;
  }

  result = 0;
  resources->var22 = resolution->var4;
  return result;
}

- (int64_t)allocateAdditionalBuffersForHybridFromFullresResolution:(id *)resolution LowresResolution:(id *)lowresResolution
{
  v6 = *&lowresResolution->var2;
  v29[0] = *&lowresResolution->var0;
  v29[1] = v6;
  v7 = *&lowresResolution->var6;
  v29[2] = *&lowresResolution->var4;
  v29[3] = v7;
  result = [(Synthesis_Ext *)self allocateSynthesisResources:&self->_lowresStorage Resolution:v29 lowresRender:1];
  if (!result)
  {
    PixelBuffer = CreatePixelBuffer(lowresResolution->var0, lowresResolution->var1, 843264104);
    self->_smKernelAlpha = PixelBuffer;
    if (PixelBuffer && (v10 = CreatePixelBuffer(lowresResolution->var0, lowresResolution->var1, 1278226536), (self->_forerunner = v10) != 0) && (v11 = CreatePixelBuffer(lowresResolution->var0, lowresResolution->var1, 1278226536), (self->_smForerunner = v11) != 0) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), smKernelAlphaTexture = self->_smKernelAlphaTexture, self->_smKernelAlphaTexture = v16, smKernelAlphaTexture, self->_smKernelAlphaTexture) && (OUTLINED_FUNCTION_3_7(), createTexturesFromCVPixelBuffer(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v22), self->_forerunnerTexture) && (OUTLINED_FUNCTION_3_7(), createTexturesFromCVPixelBuffer(v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), smForerunnerTexture = self->_smForerunnerTexture, self->_smForerunnerTexture = v27, smForerunnerTexture, self->_smForerunnerTexture))
    {
      return 0;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

- (int64_t)createFeaturesFromImage:(__CVBuffer *)image flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward depth:(__CVBuffer *)depth fullresFlow:(__CVBuffer *)flow remainedErrorMask:(__CVBuffer *)mask
{
  result = 12;
  if (image && forward && backward && depth && flow && mask)
  {
    v15 = CVPixelBufferRetain(forward);
    self->_forwardFlow = v15;
    if (v15 && (v16 = CVPixelBufferRetain(backward), (self->_backwardFlow = v16) != 0) && (self->_depth = CVPixelBufferRetain(depth), v17 = CVPixelBufferRetain(image), (self->_inputImage = v17) != 0) && (v18 = CVPixelBufferRetain(flow), (self->_fullresFlow = v18) != 0) && (v19 = CVPixelBufferRetain(mask), (self->_remainedErrorMask = v19) != 0))
    {

      return [(Synthesis_Ext *)self mapBufferToTextureWithInterleaveFactor:1];
    }

    else
    {
      return 9;
    }
  }

  return result;
}

- (int64_t)mapBufferToTextureWithInterleaveFactor:(unint64_t)factor
{
  if ((self->_remainedErrorMaskTexture || (remainedErrorMask = self->_remainedErrorMask) == 0 || (createTexturesFromCVPixelBuffer(remainedErrorMask, self->_device, factor, 1uLL), v6 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v6), self->_remainedErrorMaskTexture)) && (self->_forwardFlowTexture || (OUTLINED_FUNCTION_1_18(592), OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v7, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v11), self->_forwardFlowTexture)) && (self->_backwardFlowTexture || (OUTLINED_FUNCTION_1_18(600), OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v16), self->_backwardFlowTexture)) && (self->_depthTexture || (v17 = OUTLINED_FUNCTION_1_18(624), createTexturesFromCVPixelBuffer(v17, v18, factor, 1uLL), v19 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v19), self->_depthTexture)) && (self->_inputImageTexture || (v20 = OUTLINED_FUNCTION_1_18(584), createRGBATextureFromCVPixelBuffer(v20, v21), v22 = objc_claimAutoreleasedReturnValue(), inputImageTexture = self->_inputImageTexture, self->_inputImageTexture = v22, inputImageTexture, self->_inputImageTexture)) && (self->_fullresFlowTexture || (OUTLINED_FUNCTION_1_18(608), OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), fullresFlowTexture = self->_fullresFlowTexture, self->_fullresFlowTexture = v28, fullresFlowTexture, self->_fullresFlowTexture)))
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (int64_t)synthesizeImageWithVirtualShutterLinePredictionModeFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flow:(__CVBuffer *)flow timeScale:(float)scale destination:(__CVBuffer *)destination
{
  v7 = 12;
  if (image && secondImage && flow && destination)
  {
    Width = CVPixelBufferGetWidth(image);
    Height = CVPixelBufferGetHeight(image);
    PixelBuffer = CreatePixelBuffer(Width, 2 * (Height / 3), 1278226536);
    v16 = createTexturesFromCVPixelBuffer(PixelBuffer, self->_device, 1, 2uLL);
    v17 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
    v18 = createTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
    v19 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer enqueue];
    v21 = [(Backwarp_Ext *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v18 destination:v16];
    if (v21 || (LODWORD(v22) = 0.5, [(Forwarp_Ext *)self->_forwarp setErrorTolerance:v22], *&v23 = scale, (v21 = [(Forwarp_Ext *)self->_forwarp encodeVirtualShutterLinePredictionToCommandBuffer:commandBuffer input:v17 flow:v16 timeScale:v19 destination:v23]) != 0))
    {
      v7 = v21;
      CVPixelBufferRelease(PixelBuffer);
    }

    else
    {
      [commandBuffer commit];
      [(VEMetalBase *)self commandBufferWait:commandBuffer flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];
      if (PixelBuffer)
      {
        CVPixelBufferRelease(PixelBuffer);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)synthesizeFromImage:(id)image flow:(id)flow depth:(id)depth destination:(id)destination timeScale:(float)scale downscaleFactor:(unint64_t)factor storage:(id *)storage Resolution:(id *)self0 commandBuffer:(id)self1
{
  imageCopy = image;
  flowCopy = flow;
  depthCopy = depth;
  destinationCopy = destination;
  bufferCopy = buffer;
  v23 = 12;
  if (imageCopy && flowCopy && depthCopy && storage)
  {
    v49 = imageCopy;
    var22 = storage->var22;
    OUTLINED_FUNCTION_9_3();
    [v25 encodeFlowEdgeToCommandBuffer:? source:? destination:? edgeThresh:?];
    OUTLINED_FUNCTION_9_3();
    *&v26 = scale;
    v28 = [v27 encodeVelocityForMotionBlurToCommandBuffer:v26 velocity:? magnitude:? timeScale:? tileSize:? searchRange:?];
    if (v28)
    {
      goto LABEL_16;
    }

    v28 = [(Backwarp_VSA *)self->_backwarp encodeSmoothedVelocityForMotionBlurToCommandBuffer:bufferCopy magnitude:storage->var14 smoothedMagnitude:storage->var15];
    if (v28)
    {
      goto LABEL_16;
    }

    var17 = storage->var17;
    var19 = storage->var19;
    var18 = storage->var18;
    OUTLINED_FUNCTION_9_3();
    v28 = [v29 encodeTileBasedNeighborhoodMaxVelocityToCommandBuffer:var18 velocity:var17 magnitude:var19 tileSize:? searchRange:? Resolution:? intermediateTileMax:? tileMax:? neighborMax:?];
    if (v28)
    {
      goto LABEL_16;
    }

    if (factor < 2)
    {
      goto LABEL_11;
    }

    v48 = destinationCopy;
    forerunnerTexture = self->_forerunnerTexture;
    LODWORD(v43) = 32;
    OUTLINED_FUNCTION_9_3();
    v32 = v31;
    *&v33 = scale;
    v35 = [v34 encodeForerunnerToCommandBuffer:v33 velocity:v43 magnitude:forerunnerTexture depth:? neighborMax:? tileSize:? virtualFrameNum:? timeScale:? destination:?];
    if (v35)
    {
      v23 = v35;
      imageCopy = v49;
      depthCopy = v32;
      destinationCopy = v48;
      goto LABEL_15;
    }

    v28 = [(ImageProcessUtility *)self->_imageProcessUtility encodeSmoothOnePlaneToCommandBuffer:bufferCopy input:self->_forerunnerTexture output:self->_smForerunnerTexture];
    depthCopy = v32;
    destinationCopy = v48;
    if (v28)
    {
LABEL_16:
      v23 = v28;
      imageCopy = v49;
    }

    else
    {
LABEL_11:
      LODWORD(v30) = 0.5;
      [(Forwarp_Ext *)self->_forwarp setErrorTolerance:v30];
      if (factor < 2)
      {
        var20 = 0;
        outputTexture = self->_lowresStorage.outputTexture;
        smKernelAlphaTexture = self->_smKernelAlphaTexture;
        v37 = 0.0;
      }

      else
      {
        outputTexture = 0;
        smKernelAlphaTexture = 0;
        var20 = storage->var20;
        LODWORD(v37) = 1.0;
      }

      v47 = var22 | 0x2000000000;
      *&v36 = scale;
      imageCopy = v49;
      v23 = [(Forwarp_Ext *)self->_forwarp encodeVirtualShutterLinePredictionV2ToCommandBuffer:bufferCopy input:v49 velocity:flowCopy magnitude:storage->var14 smoothedMagnitude:storage->var15 depth:depthCopy neighborMax:v36 edgeTex:v37 kernelTex:storage->var19 lowresOutput:storage->var16 lowresKernel:var20 tileSize:outputTexture virtualFrameNum:smKernelAlphaTexture timeScale:v47 lowresRender:destinationCopy destination:self->_smForerunnerTexture foreruner:?];
    }
  }

LABEL_15:

  return v23;
}

- (int64_t)generateDownscaleInputs:(id *)inputs highresImage:(id)image highresFlow:(id)flow highresDepth:(id)depth interleaveFactor:(unint64_t)factor commandBuffer:(id)buffer
{
  imageCopy = image;
  flowCopy = flow;
  depthCopy = depth;
  bufferCopy = buffer;
  v17 = 12;
  if (inputs && imageCopy && flowCopy && depthCopy)
  {
    v18 = [(ImageProcessUtility *)self->_imageProcessUtility encodeDownscaleDepthToCommandBuffer:bufferCopy input:depthCopy output:inputs->var12];
    if (!v18)
    {
      v18 = [(ImageProcessUtility *)self->_imageProcessUtility encodeDownscaleImageToCommandBuffer:bufferCopy input:imageCopy output:inputs->var11];
      if (!v18)
      {
        v18 = [(Backwarp_Ext *)self->_backwarp encodeUpscaleFlowToCommandBuffer:bufferCopy source:flowCopy destination:inputs->var13];
      }
    }

    v17 = v18;
  }

  return v17;
}

- (int64_t)synthesizeImageWithVirtualShutterLinePredictionV2ModeFromImage:(id)image flow:(id)flow depth:(id)depth timeScale:(float)scale destination:(__CVBuffer *)destination
{
  imageCopy = image;
  flowCopy = flow;
  depthCopy = depth;
  v15 = depthCopy;
  v16 = 12;
  if (imageCopy && flowCopy && depthCopy && destination)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer enqueue];
    v18 = createRGBATextureFromCVPixelBuffer(destination, self->_device);
    OUTLINED_FUNCTION_3_7();
    v23 = createTexturesFromCVPixelBuffer(v19, v20, v21, v22);
    remainedErrorMaskTexture = self->_remainedErrorMaskTexture;
    self->_remainedErrorMaskTexture = v23;

    v25 = [(Synthesis_Ext *)self generateDownscaleInputs:&self->_lowresStorage highresImage:imageCopy highresFlow:flowCopy highresDepth:v15 interleaveFactor:1 commandBuffer:commandBuffer];
    if (v25 || (v26 = OUTLINED_FUNCTION_2_9(), *&v27 = scale, (v25 = [v26 synthesizeFromImage:v27 flow:? depth:? destination:? timeScale:? downscaleFactor:? storage:? Resolution:? commandBuffer:?]) != 0))
    {
      v16 = v25;
    }

    else
    {
      v28 = [(Postprocess *)self->_postprocessor encodeSmoothAlphaMapToCommandBuffer:commandBuffer input:self->_lowresStorage.kernelAlphaTexture output:self->_smKernelAlphaTexture];
      if (v28 || (v29 = OUTLINED_FUNCTION_2_9(), *&v30 = scale, (v28 = [v29 synthesizeFromImage:imageCopy flow:flowCopy depth:v15 destination:v18 timeScale:1 downscaleFactor:&self->_highresStorage storage:v30 Resolution:? commandBuffer:?]) != 0) || self->_postprocessOutput && ((v28 = -[ImageProcessUtility encodeCopyTextureToCommandBuffer:source:destination:](self->_imageProcessUtility, "encodeCopyTextureToCommandBuffer:source:destination:", commandBuffer, v18, self->_inputImageTexture)) != 0 || self->_postprocessOutput && (v28 = -[Postprocess encodePostprocessOutputToCommandBuffer:input:loss:fullresEdge:destination:](self->_postprocessor, "encodePostprocessOutputToCommandBuffer:input:loss:fullresEdge:destination:", commandBuffer, self->_inputImageTexture, self->_remainedErrorMaskTexture, self->_highresStorage.edgeTexture, v18)) != 0))
      {
        v16 = v28;
      }

      else
      {
        [commandBuffer commit];
        [(VEMetalBase *)self commandBufferWait:commandBuffer flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];

        v16 = 0;
        commandBuffer = 0;
        v18 = 0;
      }
    }
  }

  return v16;
}

@end