@interface OFNormalization
- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)params timeScale:(float)scale;
- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)params anchor:(int)anchor;
- ($94F468A8D4C62B317260615823C2B210)calcFrameStatistics:(__CVBuffer *)statistics;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)statistics;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatisticsFromStatsBuffer:(id)buffer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)threadsPerGroupForStats;
- (BOOL)convertBuffer:(__CVBuffer *)buffer toFP16IOSurface:(__IOSurface *)surface;
- (BOOL)convertBuffer:(__CVBuffer *)buffer toFP16ShuffledIOSurface:(__IOSurface *)surface;
- (BOOL)convertFP16IOSurface:(__IOSurface *)surface toBuffer:(__CVBuffer *)buffer;
- (BOOL)denormalizeRGB:(__CVBuffer *)b to:(__CVBuffer *)to;
- (BOOL)normalizeLumaFromFrame:(__CVBuffer *)frame toTexture:(id)texture;
- (BOOL)normalizeRGB:(__CVBuffer *)b to:(__CVBuffer *)to;
- (BOOL)padRGB:(__CVBuffer *)b to:(__CVBuffer *)to;
- (BOOL)postprocessSRFrame:(__CVBuffer *)frame bicubicYUV:(__CVBuffer *)v laplacianMask:(__CVBuffer *)mask outputYUV:(__CVBuffer *)uV;
- (OFNormalization)initWithMode:(int64_t)mode;
- (id)createFP16TextureFromIOSurface:(__IOSurface *)surface width:(int64_t)width height:(int64_t)height arrayLength:(int64_t)length;
- (id)statsBufferForTexture:(id)texture;
- (void)denormalizeFrame:(__CVBuffer *)frame destination:(__CVBuffer *)destination params:(id *)params timeScale:(float)scale callback:(id)callback;
- (void)encodeDenormalizationRenderToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeDenormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeDenormalizeRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeNormalizationRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination configBuffer:(id)configBuffer;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination normParamBuffer:(id)paramBuffer;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeNormalizeLumaToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodePadRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodePostprocessSRFrameToCommandBuffer:(id)buffer srFrameY:(id)y bicubicY:(id)bicubicY bicubicUV:(id)v laplacianMask:(id)mask outputY:(id)outputY outputUV:(id)uV;
- (void)encodeStatisticsToCommandBuffer:(id)buffer texture:(id)texture stats:(id)stats;
- (void)normalizeFramesFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput callback:(id)callback;
- (void)normalizeWithParmas:(id *)parmas firstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput;
- (void)setupMetal;
@end

@implementation OFNormalization

- (OFNormalization)initWithMode:(int64_t)mode
{
  v11.receiver = self;
  v11.super_class = OFNormalization;
  v4 = [(VEMetalBase *)&v11 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    v8 = [(MTLDevice *)v4->super._device newLibraryWithURL:v7 error:0];
    mtlLibrary = v4->super._mtlLibrary;
    v4->super._mtlLibrary = v8;

    v4->_selfNormalization = 1;
    if (mode == 1)
    {
      v4->_disableSIMDSum = 1;
    }

    [(OFNormalization *)v4 setupMetal];
  }

  return v4;
}

- (void)setupMetal
{
  *keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PaintFrames", @"com.apple.FRC", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    keyExistsAndHasValidFormat[1] = AppBooleanValue != 0;
  }

  v4 = objc_opt_new();
  [v4 setConstantValue:&keyExistsAndHasValidFormat[1] type:53 withName:@"paintFrame"];
  if (!self->_disableSIMDSum && [(MTLDevice *)self->super._device supportsFamily:1007])
  {
    self->_useSIMDSum = 1;
    self->_useFloatAtomic = 1;
  }

  if (self->_useSIMDSum)
  {
    if (self->_useFloatAtomic)
    {
      v5 = @"calcStatisticsPlanarSIMDAtomicAdd";
    }

    else
    {
      v5 = @"calcStatisticsPlanarSIMD";
    }

    if (self->_useFloatAtomic)
    {
      v6 = @"calcStatisticsPackedSIMDAtomicAdd";
    }

    else
    {
      v6 = @"calcStatisticsPackedSIMD";
    }

    if (self->_useFloatAtomic)
    {
      v7 = @"calcStatisticsYUV420SIMDAtomicAdd";
    }

    else
    {
      v7 = @"calcStatisticsYUV420SIMD";
    }
  }

  else
  {
    v7 = @"calcStatisticsYUV420";
    v6 = @"calcStatisticsPacked";
    v5 = @"calcStatisticsPlanar";
  }

  v8 = [(VEMetalBase *)self createKernel:v5];
  statisticsPlanarKernel = self->_statisticsPlanarKernel;
  self->_statisticsPlanarKernel = v8;

  v10 = [(VEMetalBase *)self createKernel:v6];
  statisticsPackedKernel = self->_statisticsPackedKernel;
  self->_statisticsPackedKernel = v10;

  v12 = [(VEMetalBase *)self createKernel:v7];
  statisticsYUV420Kernel = self->_statisticsYUV420Kernel;
  self->_statisticsYUV420Kernel = v12;

  v14 = [(VEMetalBase *)self createKernel:@"normalizeTextureNonInterleaved"];
  normalizePlanarToPlanarKernel = self->_normalizePlanarToPlanarKernel;
  self->_normalizePlanarToPlanarKernel = v14;

  v16 = [(VEMetalBase *)self createKernel:@"normalizeToTextureArray"];
  normalizePackedToPlanarKernel = self->_normalizePackedToPlanarKernel;
  self->_normalizePackedToPlanarKernel = v16;

  v18 = [(VEMetalBase *)self createKernel:@"normalizeYUV420ToTextureArray"];
  normalizeYUV420ToPlanarKernel = self->_normalizeYUV420ToPlanarKernel;
  self->_normalizeYUV420ToPlanarKernel = v18;

  v20 = [(VEMetalBase *)self createKernel:@"normalizeLuma"];
  normalizeLumaKernel = self->_normalizeLumaKernel;
  self->_normalizeLumaKernel = v20;

  v22 = [(VEMetalBase *)self createKernel:@"normalizeLumaPacked420"];
  normalizeLumaPacked420Kernel = self->_normalizeLumaPacked420Kernel;
  self->_normalizeLumaPacked420Kernel = v22;

  v24 = [(VEMetalBase *)self createKernel:@"normalizeRGB"];
  normalizeRGBKernel = self->_normalizeRGBKernel;
  self->_normalizeRGBKernel = v24;

  v26 = [(VEMetalBase *)self createKernel:@"padRGB"];
  padRGBKernel = self->_padRGBKernel;
  self->_padRGBKernel = v26;

  v28 = [(VEMetalBase *)self createKernel:@"copyRgbToTextureArray"];
  copyRgbToTextureArray = self->_copyRgbToTextureArray;
  self->_copyRgbToTextureArray = v28;

  v30 = [(VEMetalBase *)self createKernel:@"copyTextureArrayToRgb"];
  copyTextureArrayToRgb = self->_copyTextureArrayToRgb;
  self->_copyTextureArrayToRgb = v30;

  v32 = [(VEMetalBase *)self createKernel:@"copyRgbTo4x4ShuffledTextureArray"];
  copyRgbTo4x4ShuffledTextureArray = self->_copyRgbTo4x4ShuffledTextureArray;
  self->_copyRgbTo4x4ShuffledTextureArray = v32;

  v34 = [(VEMetalBase *)self createKernel:@"denormalizeToPlanarTexture"];
  denormalizeToPlanarKernel = self->_denormalizeToPlanarKernel;
  self->_denormalizeToPlanarKernel = v34;

  v36 = [(VEMetalBase *)self createKernel:@"denormalize" constantValues:v4];
  denormalizeKernel = self->_denormalizeKernel;
  self->_denormalizeKernel = v36;

  v38 = [(VEMetalBase *)self createKernel:@"denormalizeRGB"];
  denormalizeRGBKernel = self->_denormalizeRGBKernel;
  self->_denormalizeRGBKernel = v38;

  v40 = [(VEMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:500];
  denormalizeYCbCr8RenderKernel = self->_denormalizeYCbCr8RenderKernel;
  self->_denormalizeYCbCr8RenderKernel = v40;

  if ([(MTLDevice *)self->super._device supportsFamily:1007])
  {
    v42 = [(VEMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:508];
    denormalizeYCbCr10RenderKernel = self->_denormalizeYCbCr10RenderKernel;
    self->_denormalizeYCbCr10RenderKernel = v42;

    v44 = [(VEMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:505];
    denormalizeYCbCr10UnpackedRenderKernel = self->_denormalizeYCbCr10UnpackedRenderKernel;
    self->_denormalizeYCbCr10UnpackedRenderKernel = v44;
  }

  v46 = [(VEMetalBase *)self createKernel:@"postprocessSRFrameYUV420Texture2P"];
  postprocessSRFrameYUV420_2PKernel = self->_postprocessSRFrameYUV420_2PKernel;
  self->_postprocessSRFrameYUV420_2PKernel = v46;

  v48 = [(VEMetalBase *)self createKernel:@"postprocessSRFrameYUV420TextureArray"];
  postprocessSRFrameYUV420Kernel = self->_postprocessSRFrameYUV420Kernel;
  self->_postprocessSRFrameYUV420Kernel = v48;

  newVertexBuffer = [(VEMetalBase *)self newVertexBuffer];
  vertsBuffer = self->_vertsBuffer;
  self->_vertsBuffer = newVertexBuffer;

  v52 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  firstParamBuffer = self->_firstParamBuffer;
  self->_firstParamBuffer = v52;

  v54 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  secondParamBuffer = self->_secondParamBuffer;
  self->_secondParamBuffer = v54;

  newSharedEvent = [(MTLDevice *)self->super._device newSharedEvent];
  sharedEvent = self->_sharedEvent;
  self->_sharedEvent = newSharedEvent;

  v58 = dispatch_queue_create("com.FRC.Normalization", 0);
  synchronizationQueue = self->_synchronizationQueue;
  self->_synchronizationQueue = v58;

  v60 = [objc_alloc(MEMORY[0x277CD6FD8]) initWithDispatchQueue:self->_synchronizationQueue];
  sharedEventListener = self->_sharedEventListener;
  self->_sharedEventListener = v60;

  self->_signalValue = 1;
}

- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)params timeScale:(float)scale
{
  var4 = params->var4;
  if (self->_selfNormalization)
  {
    var0 = (params->var2[1] * scale) + ((1.0 - scale) * params->var2[0]);
  }

  else
  {
    var0 = params->var0;
  }

  v6 = LODWORD(var0) | (COERCE_UNSIGNED_INT(1.0 / params->var1) << 32);
  result.var0 = *&v6;
  result.var1 = *(&v6 + 1);
  result.var2 = var4;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)params anchor:(int)anchor
{
  anchorCopy = anchor;
  v12 = *MEMORY[0x277D85DE8];
  if (anchor >= 2)
  {
    if ((global_logLevel & 4) != 0)
    {
      v7 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        v11[0] = 67109120;
        v11[1] = anchorCopy;
        _os_log_impl(&dword_24874B000, v7, OS_LOG_TYPE_INFO, "anchor frame can only be 0 or 1 %d !!!", v11, 8u);
      }
    }

    anchorCopy = anchorCopy > 0;
  }

  if (self->_selfNormalization)
  {
    v8 = (&params->var0 + anchorCopy);
    params = (v8 + 8);
    var1 = 1.0 / *(v8 + 4);
  }

  else
  {
    var1 = params->var1;
  }

  var0 = params->var0;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcFrameStatistics:(__CVBuffer *)statistics
{
  v4 = createTexturesFromCVPixelBuffer(statistics, self->super._device, 1, 1uLL);
  [(OFNormalization *)self calcTextureStatistics:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)threadsPerGroupForStats
{
  v3 = 8;
  if (BYTE2(self[11].var2))
  {
    v3 = 32;
  }

  retstr->var0 = v3;
  retstr->var1 = v3;
  retstr->var2 = 1;
  return self;
}

- (id)statsBufferForTexture:(id)texture
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];

  [(OFNormalization *)self threadsPerGroupForStats];
  if (self->_useFloatAtomic)
  {
    v7 = 8;
  }

  else
  {
    v7 = 8 * (width - 1) / 0uLL * ((height - 1) / 0uLL);
  }

  v8 = [(MTLDevice *)self->super._device newBufferWithLength:v7 options:0];

  return v8;
}

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = [(OFNormalization *)self statsBufferForTexture:statisticsCopy];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  [(OFNormalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:statisticsCopy stats:v5];

  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  kdebug_trace();
  [(OFNormalization *)self calcTextureStatisticsFromStatsBuffer:v5];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatisticsFromStatsBuffer:(id)buffer
{
  bufferCopy = buffer;
  useFloatAtomic = self->_useFloatAtomic;
  contents = [bufferCopy contents];
  v7 = contents;
  if (useFloatAtomic)
  {
    v8 = *(contents + 4);
    v16 = *contents;
  }

  else
  {
    v9 = [bufferCopy length];
    if (v9 >= 8)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *v7++;
        v10 = vadd_f32(v10, v12);
      }

      while (v9 >> 3 > v11++);
      v16 = v10.f32[0];
      v8 = v10.f32[1] + 0.000000001;
    }

    else
    {
      v16 = 0.0;
      v8 = 0.000000001;
    }
  }

  v14 = v16;
  v15 = v8;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)encodeStatisticsToCommandBuffer:(id)buffer texture:(id)texture stats:(id)stats
{
  textureCopy = texture;
  statsCopy = stats;
  bufferCopy = buffer;
  width = [textureCopy width];
  height = [textureCopy height];
  v21 = 0uLL;
  v22 = 0;
  [(OFNormalization *)self threadsPerGroupForStats];
  v13 = v21;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  v15 = [textureCopy pixelFormat] - 500;
  if (v15 <= 8 && ((1 << v15) & 0x121) != 0)
  {
    v16 = &OBJC_IVAR___OFNormalization__statisticsYUV420Kernel;
  }

  else
  {
    pixelFormat = [textureCopy pixelFormat];
    v16 = &OBJC_IVAR___OFNormalization__statisticsPackedKernel;
    if (pixelFormat == 25)
    {
      v16 = &OBJC_IVAR___OFNormalization__statisticsPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:statsCopy offset:0 atIndex:0];

  v20[0] = (width + v13 - 1) / v13;
  v20[1] = (height + *(&v13 + 1) - 1) / *(&v13 + 1);
  v20[2] = 1;
  v18 = v21;
  v19 = v22;
  [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
  [computeCommandEncoder endEncoding];
}

- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination normParamBuffer:(id)paramBuffer
{
  sourceCopy = source;
  destinationCopy = destination;
  paramBufferCopy = paramBuffer;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  v17 = [sourceCopy pixelFormat] - 500;
  if (v17 <= 8 && ((1 << v17) & 0x121) != 0)
  {
    v18 = &OBJC_IVAR___OFNormalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    arrayLength = [sourceCopy arrayLength];
    v18 = &OBJC_IVAR___OFNormalization__normalizePlanarToPlanarKernel;
    if (arrayLength == 1)
    {
      v18 = &OBJC_IVAR___OFNormalization__normalizePackedToPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v18)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:paramBufferCopy offset:0 atIndex:0];

  v22[0] = (width + 15) >> 4;
  v22[1] = (height + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params
{
  var1 = params.var1;
  var0 = params.var0;
  device = self->super._device;
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v17 = [(MTLDevice *)device newBufferWithLength:8 options:0];
  v15 = v17;
  contents = [v17 contents];
  *contents = var0;
  contents[1] = var1;
  [(OFNormalization *)self encodeNormalizationToCommandBuffer:bufferCopy source:sourceCopy destination:destinationCopy configBuffer:v17];
}

- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination configBuffer:(id)configBuffer
{
  sourceCopy = source;
  destinationCopy = destination;
  configBufferCopy = configBuffer;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  v17 = [sourceCopy pixelFormat] - 500;
  if (v17 <= 8 && ((1 << v17) & 0x121) != 0)
  {
    v18 = &OBJC_IVAR___OFNormalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    arrayLength = [sourceCopy arrayLength];
    v18 = &OBJC_IVAR___OFNormalization__normalizePlanarToPlanarKernel;
    if (arrayLength == 1)
    {
      v18 = &OBJC_IVAR___OFNormalization__normalizePackedToPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v18)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:configBufferCopy offset:0 atIndex:0];

  v22[0] = (width + 15) >> 4;
  v22[1] = (height + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)normalizeFramesFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput callback:(id)callback
{
  callbackCopy = callback;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x4010000000;
  v51[3] = &unk_2487CE78E;
  memset(&v51[4], 0, 24);
  v52 = 0;
  if (input || !output)
  {
    Width = CVPixelBufferGetWidth(secondInput);
    v37 = callbackCopy;
    Height = CVPixelBufferGetHeight(secondInput);
    if (isYUV420(secondInput))
    {
      if (input)
      {
        v16 = createYUV420TextureFromCVPixelBuffer(input, self->super._device);
      }

      else
      {
        v16 = 0;
      }

      v17 = createYUV420TextureFromCVPixelBuffer(secondInput, self->super._device);
      v18 = 3 * Width * Height;
    }

    else if (isPackedRGBA(secondInput))
    {
      if (input)
      {
        v16 = createRGBATextureFromCVPixelBuffer(input, self->super._device);
      }

      else
      {
        v16 = 0;
      }

      v17 = createRGBATextureFromCVPixelBuffer(secondInput, self->super._device);
      v18 = 3 * Width * Height;
    }

    else
    {
      if (input)
      {
        v16 = createTexturesFromCVPixelBuffer(input, self->super._device, 1, 3uLL);
      }

      else
      {
        v16 = 0;
      }

      v17 = createTexturesFromCVPixelBuffer(secondInput, self->super._device, 1, 3uLL);
      v18 = Height * Width;
    }

    secondOutputCopy = secondOutput;
    if (output)
    {
      v20 = createTexturesFromCVPixelBuffer(output, self->super._device, 1, 3uLL);
    }

    else
    {
      v20 = 0;
    }

    v21 = createTexturesFromCVPixelBuffer(secondOutputCopy, self->super._device, 1, 3uLL);
    commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v40 = v16;
    if (v16)
    {
      v23 = [(OFNormalization *)self statsBufferForTexture:v16];
    }

    else
    {
      v23 = 0;
    }

    v36 = v18;
    obj = [(OFNormalization *)self statsBufferForTexture:v17];
    v35 = v21;
    sharedEvent = self->_sharedEvent;
    sharedEventListener = self->_sharedEventListener;
    v26 = v17;
    signalValue = self->_signalValue;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __91__OFNormalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke;
    v44[3] = &unk_278F53680;
    v39 = v40;
    v45 = v39;
    selfCopy = self;
    v28 = v23;
    v47 = v28;
    v48 = obj;
    v49 = v51;
    v50 = v36;
    v29 = sharedEvent;
    v30 = v35;
    v31 = sharedEventListener;
    callbackCopy = v37;
    v32 = signalValue;
    v33 = v26;
    v34 = v48;
    [(MTLSharedEvent *)v29 notifyListener:v31 atValue:v32 block:v44];
    if (v40)
    {
      [(OFNormalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:v39 stats:v28];
    }

    [(OFNormalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:v33 stats:v34, v35];
    [commandBuffer encodeSignalEvent:self->_sharedEvent value:self->_signalValue];
    [commandBuffer encodeWaitForEvent:self->_sharedEvent value:self->_signalValue + 1];
    if (v40)
    {
      [(OFNormalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v39 destination:v20 normParamBuffer:self->_firstParamBuffer];
    }

    [(OFNormalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v33 destination:v30 normParamBuffer:self->_secondParamBuffer];
    objc_storeStrong(&self->_prevStatsBuffer, obj);
    kdebug_trace();
    if (v37)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __91__OFNormalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke_2;
      v41[3] = &unk_278F536A8;
      v42 = v37;
      v43 = v51;
      v41[4] = self;
      [commandBuffer addCompletedHandler:v41];
    }

    [commandBuffer commit];
    if (v37)
    {
      [commandBuffer waitUntilScheduled];
    }

    else
    {
      [commandBuffer waitUntilCompleted];
    }

    kdebug_trace();
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v13 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [OFNormalization normalizeFramesFirstInput:v13 secondInput:? firstOutput:? secondOutput:? callback:?];
    }
  }

  _Block_object_dispose(v51, 8);
}

void __91__OFNormalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke(void *a1, void *a2)
{
  v19 = a2;
  v3 = a1[5];
  if (a1[4])
  {
    [v3 calcTextureStatisticsFromStatsBuffer:a1[6]];
    v5 = v4;
    v7 = v6;
    v3 = a1[5];
  }

  else
  {
    v5 = v3[54];
    v7 = v3[55];
  }

  [v3 calcTextureStatisticsFromStatsBuffer:a1[7]];
  v9 = v8;
  v11 = v10;
  v12 = (a1[5] + 216);
  *v12 = v8;
  v12[1] = v10;
  LODWORD(v13) = v5;
  LODWORD(v14) = v7;
  calcNormalizationParams(a1[9], v20, v13, v14, v9, v11, v15);
  v16 = *(a1[8] + 8);
  *(v16 + 32) = *v20;
  *(v16 + 44) = *&v20[12];
  v17 = [*(a1[5] + 264) contents];
  *v17 = *(*(a1[8] + 8) + 40);
  *(v17 + 4) = 1.0 / *(*(a1[8] + 8) + 48);
  v18 = [*(a1[5] + 272) contents];
  *v18 = *(*(a1[8] + 8) + 44);
  *(v18 + 4) = 1.0 / *(*(a1[8] + 8) + 52);
  [v19 setSignaledValue:*(a1[5] + 256) + 1];
}

uint64_t __91__OFNormalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  v7 = *(v5 + 16);
  v9[0] = *(v6 + 32);
  *(v9 + 12) = *(v6 + 44);
  result = v7(v5, v9, a3, a4);
  *(a1[4] + 256) += 2;
  return result;
}

- (void)normalizeWithParmas:(id *)parmas firstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput
{
  v13 = isPackedRGBA(input);
  device = self->super._device;
  if (v13)
  {
    v15 = createRGBATextureFromCVPixelBuffer(input, device);
    createRGBATextureFromCVPixelBuffer(secondInput, self->super._device);
  }

  else
  {
    v15 = createTexturesFromCVPixelBuffer(input, device, 1, 3uLL);
    createTexturesFromCVPixelBuffer(secondInput, self->super._device, 1, 3uLL);
  }
  v16 = ;
  v17 = createTexturesFromCVPixelBuffer(output, self->super._device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(secondOutput, self->super._device, 1, 3uLL);
  *v32 = *&parmas->var0;
  *&v32[12] = *&parmas->var2[1];
  [(OFNormalization *)self calcAnchorParamsFromNormParams:v32 anchor:0];
  v20 = v19;
  v22 = v21;
  *v32 = *&parmas->var0;
  *&v32[12] = *&parmas->var2[1];
  [(OFNormalization *)self calcAnchorParamsFromNormParams:v32 anchor:1];
  v24 = v23;
  v26 = v25;
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  LODWORD(v28) = v20;
  LODWORD(v29) = v22;
  [(OFNormalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v15 destination:v17 params:v28, v29];
  LODWORD(v30) = v24;
  LODWORD(v31) = v26;
  [(OFNormalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v16 destination:v18 params:v30, v31];
  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  kdebug_trace();
}

- (void)encodeNormalizeLumaToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  pixelFormat = [sourceCopy pixelFormat];
  v15 = &OBJC_IVAR___OFNormalization__normalizeLumaKernel;
  if (pixelFormat == 546)
  {
    v15 = &OBJC_IVAR___OFNormalization__normalizeLumaPacked420Kernel;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v15)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v18[0] = (width + 15) >> 4;
  v18[1] = (height + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeNormalizationRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v11 = ([destinationCopy width] + 15) >> 4;
  v12 = ([destinationCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_normalizeRGBKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodePadRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v11 = ([destinationCopy width] + 15) >> 4;
  v12 = ([destinationCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_padRGBKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodeDenormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params
{
  var2 = params.var2;
  v7 = *&params.var0;
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:12 options:0];
  contents = [v16 contents];
  *contents = v7;
  *(contents + 8) = var2;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  if ([destinationCopy pixelFormat] == 70)
  {
    v19 = &OBJC_IVAR___OFNormalization__denormalizeKernel;
  }

  else
  {
    v19 = &OBJC_IVAR___OFNormalization__denormalizeKernel;
    if ([destinationCopy pixelFormat] != 90 && objc_msgSend(destinationCopy, "pixelFormat") != 115)
    {
      v19 = &OBJC_IVAR___OFNormalization__denormalizeToPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v19)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:v16 offset:0 atIndex:0];
  v22[0] = (width + 15) >> 4;
  v22[1] = (height + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)encodeDenormalizationRenderToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params
{
  var2 = params.var2;
  v7 = *&params.var0;
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:12 options:0];
  contents = [v16 contents];
  *contents = v7;
  *(contents + 8) = var2;
  v18 = [(VEMetalBase *)self newTextureCoordinateBufferWithWidth:width height:height];
  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v21 = [colorAttachments objectAtIndexedSubscript:0];
  [v21 setTexture:destinationCopy];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v23 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v23 setLoadAction:0];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v25 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v25 setStoreAction:1];

  v26 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  v29[0] = 0;
  *&v29[1] = height;
  *&v29[2] = width;
  *&v29[3] = -height;
  v30 = xmmword_2487C3780;
  [v26 setViewport:v29];
  pixelFormat = [destinationCopy pixelFormat];

  v28 = &OBJC_IVAR___OFNormalization__denormalizeYCbCr10RenderKernel;
  if (pixelFormat == 505)
  {
    v28 = &OBJC_IVAR___OFNormalization__denormalizeYCbCr10UnpackedRenderKernel;
  }

  if (pixelFormat == 500)
  {
    v28 = &OBJC_IVAR___OFNormalization__denormalizeYCbCr8RenderKernel;
  }

  [v26 setRenderPipelineState:*(&self->super.super.isa + *v28)];
  [v26 setFragmentTexture:sourceCopy atIndex:0];

  [v26 setFragmentBuffer:v16 offset:0 atIndex:0];
  [v26 setVertexBuffer:self->_vertsBuffer offset:0 atIndex:0];
  [v26 setVertexBuffer:v18 offset:0 atIndex:1];
  [v26 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v26 endEncoding];
}

- (void)denormalizeFrame:(__CVBuffer *)frame destination:(__CVBuffer *)destination params:(id *)params timeScale:(float)scale callback:(id)callback
{
  callbackCopy = callback;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = createTexturesFromCVPixelBuffer(frame, self->super._device, 1, 3uLL);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  if (isYUV420(destination))
  {
    v13 = createRenderTargetTextureFromCVPixelBuffer(destination, self->super._device);
  }

  else
  {
    v14 = isPackedRGBA(destination);
    device = self->super._device;
    if (v14)
    {
      createRGBATextureFromCVPixelBuffer(destination, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(destination, device, 1, 3uLL);
    }
    v13 = ;
  }

  v16 = v30[5];
  v30[5] = v13;

  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v28[0] = *&params->var0;
  *(v28 + 12) = *&params->var2[1];
  v18 = [(OFNormalization *)self calcDeNormParamsFromNormaParams:v28 timeScale:COERCE_DOUBLE(__PAIR64__(v28[1], LODWORD(scale)))];
  v20 = v19;
  pixelFormat = [v30[5] pixelFormat];
  if ((pixelFormat - 500) <= 8 && ((1 << (pixelFormat + 12)) & 0x121) != 0)
  {
    [(OFNormalization *)self encodeDenormalizationRenderToCommandBuffer:commandBuffer source:v36[5] destination:v30[5] params:v18, v20];
  }

  else
  {
    [(OFNormalization *)self encodeDenormalizationToCommandBuffer:commandBuffer source:v36[5] destination:v30[5] params:v18, v20];
  }

  kdebug_trace();
  if (callbackCopy)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__OFNormalization_denormalizeFrame_destination_params_timeScale_callback___block_invoke;
    v24[3] = &unk_278F536D0;
    v26 = &v35;
    v27 = &v29;
    v25 = callbackCopy;
    [commandBuffer addCompletedHandler:v24];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  if (!callbackCopy)
  {
    [commandBuffer waitUntilCompleted];
    kdebug_trace();
    v22 = v36[5];
    v36[5] = 0;

    v23 = v30[5];
    v30[5] = 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
}

uint64_t __74__OFNormalization_denormalizeFrame_destination_params_timeScale_callback___block_invoke(void *a1)
{
  kdebug_trace();
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[4] + 16);

  return v6();
}

- (void)encodeDenormalizeRGBToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v11 = ([destinationCopy width] + 15) >> 4;
  v12 = ([destinationCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_denormalizeRGBKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodePostprocessSRFrameToCommandBuffer:(id)buffer srFrameY:(id)y bicubicY:(id)bicubicY bicubicUV:(id)v laplacianMask:(id)mask outputY:(id)outputY outputUV:(id)uV
{
  yCopy = y;
  bicubicYCopy = bicubicY;
  vCopy = v;
  maskCopy = mask;
  outputYCopy = outputY;
  v32 = 0x40000000;
  uVCopy = uV;
  bufferCopy = buffer;
  width = [outputYCopy width];
  height = [outputYCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  pixelFormat = [bicubicYCopy pixelFormat];
  if (vCopy)
  {
    v25 = 192;
LABEL_6:
    [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + v25)];
    goto LABEL_7;
  }

  if ((pixelFormat - 540) <= 6 && ((1 << (pixelFormat - 28)) & 0x49) != 0)
  {
    v25 = 200;
    goto LABEL_6;
  }

  if ((global_logLevel & 0x10) != 0)
  {
    v27 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [OFNormalization encodePostprocessSRFrameToCommandBuffer:v27 srFrameY:? bicubicY:? bicubicUV:? laplacianMask:? outputY:? outputUV:?];
    }
  }

LABEL_7:
  [computeCommandEncoder setTexture:yCopy atIndex:0];
  [computeCommandEncoder setTexture:bicubicYCopy atIndex:1];
  if (vCopy)
  {
    [computeCommandEncoder setTexture:vCopy atIndex:2];
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  [computeCommandEncoder setTexture:maskCopy atIndex:v26];
  [computeCommandEncoder setTexture:outputYCopy atIndex:v26 + 1];
  [computeCommandEncoder setTexture:uVCopy atIndex:v26 + 2];

  [computeCommandEncoder setBytes:&v32 length:4 atIndex:0];
  v31[0] = (width + 15) >> 4;
  v31[1] = (height + 15) >> 4;
  v31[2] = 1;
  v29 = vdupq_n_s64(0x10uLL);
  v30 = 1;
  [computeCommandEncoder dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  [computeCommandEncoder endEncoding];
}

- (BOOL)normalizeLumaFromFrame:(__CVBuffer *)frame toTexture:(id)texture
{
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  device = self->super._device;
  v14 = 0;
  v15 = 0;
  createYUVTextureFromCVPixelBuffer(frame, device, &v15, &v14);
  v9 = v15;
  v10 = v14;
  if (commandBuffer)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    [(OFNormalization *)self encodeNormalizeLumaToCommandBuffer:commandBuffer source:v9 destination:textureCopy];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v12;
}

- (BOOL)normalizeRGB:(__CVBuffer *)b to:(__CVBuffer *)to
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = createRGBATextureFromCVPixelBuffer(b, self->super._device);
  v9 = createTexturesFromCVPixelBuffer(to, self->super._device, 1, 3uLL);
  v10 = v9;
  if (commandBuffer)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v9 == 0;
  v13 = !v12;
  if (!v12)
  {
    [OUTLINED_FUNCTION_1_7() encodeNormalizationRGBToCommandBuffer:? source:? destination:?];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v13;
}

- (BOOL)padRGB:(__CVBuffer *)b to:(__CVBuffer *)to
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = createRGBATextureFromCVPixelBuffer(b, self->super._device);
  v9 = createRGBATextureFromCVPixelBuffer(to, self->super._device);
  v10 = v9;
  if (commandBuffer)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v9 == 0;
  v13 = !v12;
  if (!v12)
  {
    [OUTLINED_FUNCTION_1_7() encodePadRGBToCommandBuffer:? source:? destination:?];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v13;
}

- (id)createFP16TextureFromIOSurface:(__IOSurface *)surface width:(int64_t)width height:(int64_t)height arrayLength:(int64_t)length
{
  v9 = [(MTLDevice *)self->super._device newBufferWithIOSurface:surface];
  if (v9)
  {
    v10 = 2 * width * height;
    v11 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:width height:height mipmapped:0];
    [v11 setTextureType:3];
    [v11 setArrayLength:length];
    [v11 setUsage:3];
    [v11 setStorageMode:0];
    v12 = [v9 newLinearTextureWithDescriptor:v11 offset:0 bytesPerRow:2 * width bytesPerImage:v10];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (BOOL)convertBuffer:(__CVBuffer *)buffer toFP16IOSurface:(__IOSurface *)surface
{
  if (OUTLINED_FUNCTION_2_3(self, a2, buffer) != 1111970369)
  {
    v7 = 0;
LABEL_7:
    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  v7 = createRGBATextureFromCVPixelBuffer(v6, *(v5 + 16));
  if (!v7)
  {
    goto LABEL_7;
  }

  PixelFormat = IOSurfaceGetPixelFormat(v4);
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  if (PixelFormat != 1278226488)
  {
    goto LABEL_7;
  }

  v11 = [v5 createFP16TextureFromIOSurface:v4 width:Width height:Height arrayLength:3];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  commandBuffer = [*(v5 + 24) commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(v5 + 120)];
  [computeCommandEncoder setTexture:v7 atIndex:0];
  v15 = OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_6(v15, v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28);
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

LABEL_8:
  return v5;
}

- (BOOL)convertBuffer:(__CVBuffer *)buffer toFP16ShuffledIOSurface:(__IOSurface *)surface
{
  if (OUTLINED_FUNCTION_2_3(self, a2, buffer) != 1111970369)
  {
    v7 = 0;
LABEL_7:
    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  v7 = createRGBATextureFromCVPixelBuffer(v6, *(v5 + 16));
  if (!v7)
  {
    goto LABEL_7;
  }

  PixelFormat = IOSurfaceGetPixelFormat(v4);
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  if (PixelFormat != 1278226488)
  {
    goto LABEL_7;
  }

  v11 = [v5 createFP16TextureFromIOSurface:v4 width:Width >> 2 height:Height >> 2 arrayLength:48];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  commandBuffer = [*(v5 + 24) commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(v5 + 128)];
  [computeCommandEncoder setTexture:v7 atIndex:0];
  v15 = OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_6(v15, v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28);
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

LABEL_8:
  return v5;
}

- (BOOL)convertFP16IOSurface:(__IOSurface *)surface toBuffer:(__CVBuffer *)buffer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v10 = [(OFNormalization *)self createFP16TextureFromIOSurface:surface width:Width height:Height arrayLength:3];
  v11 = 0;
  if (v10 && PixelFormatType == 1111970369)
  {
    v12 = createRGBATextureFromCVPixelBuffer(buffer, self->super._device);
    if (v12)
    {
      v13 = v12;
      commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:self->_copyTextureArrayToRgb];
      [computeCommandEncoder setTexture:v10 atIndex:0];
      v11 = 1;
      [computeCommandEncoder setTexture:v13 atIndex:1];
      v19[0] = (Width + 15) >> 4;
      v19[1] = (Height + 15) >> 4;
      v19[2] = 1;
      v17 = vdupq_n_s64(0x10uLL);
      v18 = 1;
      [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
      [computeCommandEncoder endEncoding];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)denormalizeRGB:(__CVBuffer *)b to:(__CVBuffer *)to
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = createTexturesFromCVPixelBuffer(b, self->super._device, 1, 3uLL);
  v9 = createRGBATextureFromCVPixelBuffer(to, self->super._device);
  v10 = v9;
  if (commandBuffer)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v9 == 0;
  v13 = !v12;
  if (!v12)
  {
    [(OFNormalization *)self encodeDenormalizeRGBToCommandBuffer:commandBuffer source:v8 destination:v9];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v13;
}

- (BOOL)postprocessSRFrame:(__CVBuffer *)frame bicubicYUV:(__CVBuffer *)v laplacianMask:(__CVBuffer *)mask outputYUV:(__CVBuffer *)uV
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  PixelFormatType = CVPixelBufferGetPixelFormatType(frame);
  device = self->super._device;
  if (PixelFormatType == 1278226536)
  {
    createTexturesFromCVPixelBuffer(frame, device, 1, 1uLL);
  }

  else
  {
    getYTextureFromCVPixelBuffer(frame, device);
  }
  v14 = ;
  v15 = CVPixelBufferGetPixelFormatType(v);
  v16 = self->super._device;
  if (v15 == 1278226536)
  {
    v17 = createTexturesFromCVPixelBuffer(v, v16, 1, 1uLL);
    v18 = 0;
  }

  else
  {
    v17 = getYTextureFromCVPixelBuffer(v, v16);
    v18 = getUVTextureFromCVPixelBuffer(v, self->super._device);
  }

  v19 = createTexturesFromCVPixelBuffer(mask, self->super._device, 1, 1uLL);
  v20 = createTextureFromCVPixelBufferOfPlane(uV, self->super._device, 0);
  v21 = createTextureFromCVPixelBufferOfPlane(uV, self->super._device, 1uLL);
  v22 = v21;
  if (commandBuffer)
  {
    v23 = v14 == 0;
  }

  else
  {
    v23 = 1;
  }

  v28 = v23 || v17 == 0 || v18 == 0 || v19 == 0 || v20 == 0 || v21 == 0;
  v29 = !v28;
  if (!v28)
  {
    [OUTLINED_FUNCTION_1_7() encodePostprocessSRFrameToCommandBuffer:v21 srFrameY:? bicubicY:? bicubicUV:? laplacianMask:? outputY:? outputUV:?];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v29;
}

@end