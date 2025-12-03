@interface Normalization
- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)params timeScale:(float)scale;
- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)params anchor:(int)anchor;
- ($94F468A8D4C62B317260615823C2B210)calcFrameStatistics:(__CVBuffer *)statistics;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)statistics;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatisticsFromStatsBuffer:(id)buffer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)threadsPerGroupForStats;
- (Normalization)initWithMode:(int64_t)mode;
- (id)statsBufferForTexture:(id)texture;
- (void)denormalizeFrame:(__CVBuffer *)frame destination:(__CVBuffer *)destination params:(id *)params timeScale:(float)scale callback:(id)callback;
- (void)encodeDenormalizationRenderToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeDenormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination configBuffer:(id)configBuffer;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination normParamBuffer:(id)paramBuffer;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
- (void)encodeStatisticsToCommandBuffer:(id)buffer texture:(id)texture stats:(id)stats;
- (void)normalizeFramesFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput callback:(id)callback;
- (void)normalizeWithParmas:(id *)parmas firstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput;
- (void)setupMetal;
@end

@implementation Normalization

- (Normalization)initWithMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = Normalization;
  v4 = [(FRCMetalBase *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_selfNormalization = 1;
    if (mode == 1)
    {
      v4->_disableSIMDSum = 1;
    }

    [(Normalization *)v4 setupMetal];
  }

  return v5;
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

  v8 = [(FRCMetalBase *)self createKernel:v5];
  statisticsPlanarKernel = self->_statisticsPlanarKernel;
  self->_statisticsPlanarKernel = v8;

  v10 = [(FRCMetalBase *)self createKernel:v6];
  statisticsPackedKernel = self->_statisticsPackedKernel;
  self->_statisticsPackedKernel = v10;

  v12 = [(FRCMetalBase *)self createKernel:v7];
  statisticsYUV420Kernel = self->_statisticsYUV420Kernel;
  self->_statisticsYUV420Kernel = v12;

  v14 = [(FRCMetalBase *)self createKernel:@"normalizeTextureNonInterleaved"];
  normalizePlanarToPlanarKernel = self->_normalizePlanarToPlanarKernel;
  self->_normalizePlanarToPlanarKernel = v14;

  v16 = [(FRCMetalBase *)self createKernel:@"normalizeToTextureArray"];
  normalizePackedToPlanarKernel = self->_normalizePackedToPlanarKernel;
  self->_normalizePackedToPlanarKernel = v16;

  v18 = [(FRCMetalBase *)self createKernel:@"normalizeYUV420ToTextureArray"];
  normalizeYUV420ToPlanarKernel = self->_normalizeYUV420ToPlanarKernel;
  self->_normalizeYUV420ToPlanarKernel = v18;

  v20 = [(FRCMetalBase *)self createKernel:@"denormalizeToPlanarTexture"];
  denormalizeToPlanarKernel = self->_denormalizeToPlanarKernel;
  self->_denormalizeToPlanarKernel = v20;

  v22 = [(FRCMetalBase *)self createKernel:@"denormalize" constantValues:v4];
  denormalizeKernel = self->_denormalizeKernel;
  self->_denormalizeKernel = v22;

  v24 = [(FRCMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:500];
  denormalizeYCbCr8RenderKernel = self->_denormalizeYCbCr8RenderKernel;
  self->_denormalizeYCbCr8RenderKernel = v24;

  if ([(MTLDevice *)self->super._device supportsFamily:1007])
  {
    v26 = [(FRCMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:508];
    denormalizeYCbCr10RenderKernel = self->_denormalizeYCbCr10RenderKernel;
    self->_denormalizeYCbCr10RenderKernel = v26;

    v28 = [(FRCMetalBase *)self createRenderKernel:@"denormalizeToYCbCrFragment" renderTargetFormat:505];
    denormalizeYCbCr10UnpackedRenderKernel = self->_denormalizeYCbCr10UnpackedRenderKernel;
    self->_denormalizeYCbCr10UnpackedRenderKernel = v28;
  }

  newVertexBuffer = [(FRCMetalBase *)self newVertexBuffer];
  vertsBuffer = self->_vertsBuffer;
  self->_vertsBuffer = newVertexBuffer;

  v32 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  firstParamBuffer = self->_firstParamBuffer;
  self->_firstParamBuffer = v32;

  v34 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  secondParamBuffer = self->_secondParamBuffer;
  self->_secondParamBuffer = v34;

  newSharedEvent = [(MTLDevice *)self->super._device newSharedEvent];
  sharedEvent = self->_sharedEvent;
  self->_sharedEvent = newSharedEvent;

  v38 = dispatch_queue_create("com.FRC.Normalization", 0);
  synchronizationQueue = self->_synchronizationQueue;
  self->_synchronizationQueue = v38;

  v40 = [objc_alloc(MEMORY[0x277CD6FD8]) initWithDispatchQueue:self->_synchronizationQueue];
  sharedEventListener = self->_sharedEventListener;
  self->_sharedEventListener = v40;

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
  if (anchor >= 2)
  {
    NSLog(&cfstr_AnchorFrameCan.isa, a2, anchor);
    anchorCopy = anchorCopy > 0;
  }

  if (self->_selfNormalization)
  {
    v7 = (&params->var0 + anchorCopy);
    params = (v7 + 8);
    var1 = 1.0 / *(v7 + 4);
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
  [(Normalization *)self calcTextureStatistics:v4];
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
  if (BYTE2(self[8].var0))
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

  [(Normalization *)self threadsPerGroupForStats];
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
  v5 = [(Normalization *)self statsBufferForTexture:statisticsCopy];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  [(Normalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:statisticsCopy stats:v5];

  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  kdebug_trace();
  [(Normalization *)self calcTextureStatisticsFromStatsBuffer:v5];
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
  v20 = 0uLL;
  v21 = 0;
  [(Normalization *)self threadsPerGroupForStats];
  v13 = v20;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  if (isTextureYUV420(textureCopy))
  {
    v15 = &OBJC_IVAR___Normalization__statisticsYUV420Kernel;
  }

  else
  {
    pixelFormat = [textureCopy pixelFormat];
    v15 = &OBJC_IVAR___Normalization__statisticsPackedKernel;
    if (pixelFormat == 25)
    {
      v15 = &OBJC_IVAR___Normalization__statisticsPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v15)];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:statsCopy offset:0 atIndex:0];

  v19[0] = (width + v13 - 1) / v13;
  v19[1] = (height + *(&v13 + 1) - 1) / *(&v13 + 1);
  v19[2] = 1;
  v17 = v20;
  v18 = v21;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
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

  if (isTextureYUV420(sourceCopy))
  {
    v17 = &OBJC_IVAR___Normalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    arrayLength = [sourceCopy arrayLength];
    v17 = &OBJC_IVAR___Normalization__normalizePlanarToPlanarKernel;
    if (arrayLength == 1)
    {
      v17 = &OBJC_IVAR___Normalization__normalizePackedToPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v17)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:paramBufferCopy offset:0 atIndex:0];

  v21[0] = (width + 15) >> 4;
  v21[1] = (height + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
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
  [(Normalization *)self encodeNormalizationToCommandBuffer:bufferCopy source:sourceCopy destination:destinationCopy configBuffer:v17];
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

  if (isTextureYUV420(sourceCopy))
  {
    v17 = &OBJC_IVAR___Normalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    arrayLength = [sourceCopy arrayLength];
    v17 = &OBJC_IVAR___Normalization__normalizePlanarToPlanarKernel;
    if (arrayLength == 1)
    {
      v17 = &OBJC_IVAR___Normalization__normalizePackedToPlanarKernel;
    }
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v17)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:configBufferCopy offset:0 atIndex:0];

  v21[0] = (width + 15) >> 4;
  v21[1] = (height + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
}

- (void)normalizeFramesFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput firstOutput:(__CVBuffer *)output secondOutput:(__CVBuffer *)secondOutput callback:(id)callback
{
  callbackCopy = callback;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x4010000000;
  v41[3] = "";
  memset(&v41[4], 0, 24);
  v42 = 0;
  if (!input && output)
  {
    NSLog(&cfstr_NormalizationE.isa);
    goto LABEL_31;
  }

  Width = CVPixelBufferGetWidth(secondInput);
  v27 = callbackCopy;
  Height = CVPixelBufferGetHeight(secondInput);
  if (isYUV420(secondInput))
  {
    if (input)
    {
      v15 = createYUV420TextureFromCVPixelBuffer(input, self->super._device);
    }

    else
    {
      v15 = 0;
    }

    v30 = createYUV420TextureFromCVPixelBuffer(secondInput, self->super._device);
    v16 = 3 * Width * Height;
    if (!output)
    {
LABEL_20:
      v28 = 0;
      goto LABEL_21;
    }
  }

  else if (isPackedRGBA(secondInput))
  {
    if (input)
    {
      v15 = createRGBATextureFromCVPixelBuffer(input, self->super._device);
    }

    else
    {
      v15 = 0;
    }

    v30 = createRGBATextureFromCVPixelBuffer(secondInput, self->super._device);
    v16 = 3 * Width * Height;
    if (!output)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (input)
    {
      v15 = createTexturesFromCVPixelBuffer(input, self->super._device, 1, 3uLL);
    }

    else
    {
      v15 = 0;
    }

    v30 = createTexturesFromCVPixelBuffer(secondInput, self->super._device, 1, 3uLL);
    v16 = Height * Width;
    if (!output)
    {
      goto LABEL_20;
    }
  }

  v28 = createTexturesFromCVPixelBuffer(output, self->super._device, 1, 3uLL);
LABEL_21:
  v17 = createTexturesFromCVPixelBuffer(secondOutput, self->super._device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v19 = [(Normalization *)self statsBufferForTexture:v15];
  obj = [(Normalization *)self statsBufferForTexture:v30];
  sharedEvent = self->_sharedEvent;
  sharedEventListener = self->_sharedEventListener;
  signalValue = self->_signalValue;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __89__Normalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke;
  v34[3] = &unk_278FEA4C0;
  v22 = v15;
  v35 = v22;
  selfCopy = self;
  v23 = v19;
  v37 = v23;
  v24 = obj;
  v38 = v24;
  v39 = v41;
  v40 = v16;
  v25 = signalValue;
  callbackCopy = v27;
  [(MTLSharedEvent *)sharedEvent notifyListener:sharedEventListener atValue:v25 block:v34];
  if (v22)
  {
    [(Normalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:v22 stats:v23];
  }

  [(Normalization *)self encodeStatisticsToCommandBuffer:commandBuffer texture:v30 stats:v24, sharedEvent];
  [commandBuffer encodeSignalEvent:self->_sharedEvent value:self->_signalValue];
  [commandBuffer encodeWaitForEvent:self->_sharedEvent value:self->_signalValue + 1];
  if (v22)
  {
    [(Normalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v22 destination:v28 normParamBuffer:self->_firstParamBuffer];
  }

  [(Normalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v30 destination:v17 normParamBuffer:self->_secondParamBuffer];
  objc_storeStrong(&self->_prevStatsBuffer, obj);
  kdebug_trace();
  if (v27)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __89__Normalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke_2;
    v31[3] = &unk_278FEA4E8;
    v32 = v27;
    v33 = v41;
    v31[4] = self;
    [commandBuffer addCompletedHandler:v31];
  }

  [commandBuffer commit];
  if (v27)
  {
    [commandBuffer waitUntilScheduled];
  }

  else
  {
    [commandBuffer waitUntilCompleted];
  }

  kdebug_trace();

LABEL_31:
  _Block_object_dispose(v41, 8);
}

void __89__Normalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke(void *a1, void *a2)
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
    v5 = v3[32];
    v7 = v3[33];
  }

  [v3 calcTextureStatisticsFromStatsBuffer:a1[7]];
  v9 = v8;
  v11 = v10;
  v12 = (a1[5] + 128);
  *v12 = v8;
  v12[1] = v10;
  LODWORD(v13) = v5;
  LODWORD(v14) = v7;
  calcNormalizationParams(a1[9], v20, v13, v14, v9, v11, v15);
  v16 = *(a1[8] + 8);
  *(v16 + 32) = *v20;
  *(v16 + 44) = *&v20[12];
  v17 = [*(a1[5] + 176) contents];
  *v17 = *(*(a1[8] + 8) + 40);
  *(v17 + 4) = 1.0 / *(*(a1[8] + 8) + 48);
  v18 = [*(a1[5] + 184) contents];
  *v18 = *(*(a1[8] + 8) + 44);
  *(v18 + 4) = 1.0 / *(*(a1[8] + 8) + 52);
  [v19 setSignaledValue:*(a1[5] + 168) + 1];
}

uint64_t __89__Normalization_normalizeFramesFirstInput_secondInput_firstOutput_secondOutput_callback___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  v7 = *(v5 + 16);
  v9[0] = *(v6 + 32);
  *(v9 + 12) = *(v6 + 44);
  result = v7(v5, v9, a3, a4);
  *(a1[4] + 168) += 2;
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
  [(Normalization *)self calcAnchorParamsFromNormParams:v32 anchor:0];
  v20 = v19;
  v22 = v21;
  *v32 = *&parmas->var0;
  *&v32[12] = *&parmas->var2[1];
  [(Normalization *)self calcAnchorParamsFromNormParams:v32 anchor:1];
  v24 = v23;
  v26 = v25;
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  LODWORD(v28) = v20;
  LODWORD(v29) = v22;
  [(Normalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v15 destination:v17 params:v28, v29];
  LODWORD(v30) = v24;
  LODWORD(v31) = v26;
  [(Normalization *)self encodeNormalizationToCommandBuffer:commandBuffer source:v16 destination:v18 params:v30, v31];
  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  kdebug_trace();
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
    v19 = &OBJC_IVAR___Normalization__denormalizeKernel;
  }

  else
  {
    v19 = &OBJC_IVAR___Normalization__denormalizeKernel;
    if ([destinationCopy pixelFormat] != 90 && objc_msgSend(destinationCopy, "pixelFormat") != 115)
    {
      v19 = &OBJC_IVAR___Normalization__denormalizeToPlanarKernel;
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
  v18 = [(FRCMetalBase *)self newTextureCoordinateBufferWithWidth:width height:height];
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
  v30 = xmmword_24A8FF110;
  [v26 setViewport:v29];
  if ([destinationCopy pixelFormat] == 500)
  {
    v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr8RenderKernel;
  }

  else
  {
    pixelFormat = [destinationCopy pixelFormat];
    v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr10RenderKernel;
    if (pixelFormat == 505)
    {
      v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr10UnpackedRenderKernel;
    }
  }

  [v26 setRenderPipelineState:*(&self->super.super.isa + *v27)];
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
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = createTexturesFromCVPixelBuffer(frame, self->super._device, 1, 3uLL);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
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

  v16 = v29[5];
  v29[5] = v13;

  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v27[0] = *&params->var0;
  *(v27 + 12) = *&params->var2[1];
  v18 = [(Normalization *)self calcDeNormParamsFromNormaParams:v27 timeScale:COERCE_DOUBLE(__PAIR64__(v27[1], LODWORD(scale)))];
  v20 = v19;
  if ([v29[5] pixelFormat] == 500 || objc_msgSend(v29[5], "pixelFormat") == 508 || objc_msgSend(v29[5], "pixelFormat") == 505)
  {
    [(Normalization *)self encodeDenormalizationRenderToCommandBuffer:commandBuffer source:v35[5] destination:v29[5] params:v18, v20];
  }

  else
  {
    [(Normalization *)self encodeDenormalizationToCommandBuffer:commandBuffer source:v35[5] destination:v29[5] params:v18, v20];
  }

  kdebug_trace();
  if (callbackCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__Normalization_denormalizeFrame_destination_params_timeScale_callback___block_invoke;
    v23[3] = &unk_278FEA510;
    v25 = &v34;
    v26 = &v28;
    v24 = callbackCopy;
    [commandBuffer addCompletedHandler:v23];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  if (!callbackCopy)
  {
    [commandBuffer waitUntilCompleted];
    kdebug_trace();
    v21 = v35[5];
    v35[5] = 0;

    v22 = v29[5];
    v29[5] = 0;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

uint64_t __72__Normalization_denormalizeFrame_destination_params_timeScale_callback___block_invoke(void *a1)
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

@end