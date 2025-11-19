@interface Normalization
- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)a3 timeScale:(float)a4;
- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)a3 anchor:(int)a4;
- ($94F468A8D4C62B317260615823C2B210)calcFrameStatistics:(__CVBuffer *)a3;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)a3;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatisticsFromStatsBuffer:(id)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)threadsPerGroupForStats;
- (Normalization)initWithMode:(int64_t)a3;
- (id)statsBufferForTexture:(id)a3;
- (void)denormalizeFrame:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 params:(id *)a5 timeScale:(float)a6 callback:(id)a7;
- (void)encodeDenormalizationRenderToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6;
- (void)encodeDenormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6;
- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 configBuffer:(id)a6;
- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 normParamBuffer:(id)a6;
- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6;
- (void)encodeStatisticsToCommandBuffer:(id)a3 texture:(id)a4 stats:(id)a5;
- (void)normalizeFramesFirstInput:(__CVBuffer *)a3 secondInput:(__CVBuffer *)a4 firstOutput:(__CVBuffer *)a5 secondOutput:(__CVBuffer *)a6 callback:(id)a7;
- (void)normalizeWithParmas:(id *)a3 firstInput:(__CVBuffer *)a4 secondInput:(__CVBuffer *)a5 firstOutput:(__CVBuffer *)a6 secondOutput:(__CVBuffer *)a7;
- (void)setupMetal;
@end

@implementation Normalization

- (Normalization)initWithMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = Normalization;
  v4 = [(FRCMetalBase *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_selfNormalization = 1;
    if (a3 == 1)
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

  v30 = [(FRCMetalBase *)self newVertexBuffer];
  vertsBuffer = self->_vertsBuffer;
  self->_vertsBuffer = v30;

  v32 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  firstParamBuffer = self->_firstParamBuffer;
  self->_firstParamBuffer = v32;

  v34 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  secondParamBuffer = self->_secondParamBuffer;
  self->_secondParamBuffer = v34;

  v36 = [(MTLDevice *)self->super._device newSharedEvent];
  sharedEvent = self->_sharedEvent;
  self->_sharedEvent = v36;

  v38 = dispatch_queue_create("com.FRC.Normalization", 0);
  synchronizationQueue = self->_synchronizationQueue;
  self->_synchronizationQueue = v38;

  v40 = [objc_alloc(MEMORY[0x277CD6FD8]) initWithDispatchQueue:self->_synchronizationQueue];
  sharedEventListener = self->_sharedEventListener;
  self->_sharedEventListener = v40;

  self->_signalValue = 1;
}

- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)a3 timeScale:(float)a4
{
  var4 = a3->var4;
  if (self->_selfNormalization)
  {
    var0 = (a3->var2[1] * a4) + ((1.0 - a4) * a3->var2[0]);
  }

  else
  {
    var0 = a3->var0;
  }

  v6 = LODWORD(var0) | (COERCE_UNSIGNED_INT(1.0 / a3->var1) << 32);
  result.var0 = *&v6;
  result.var1 = *(&v6 + 1);
  result.var2 = var4;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)a3 anchor:(int)a4
{
  v4 = a4;
  if (a4 >= 2)
  {
    NSLog(&cfstr_AnchorFrameCan.isa, a2, a4);
    v4 = v4 > 0;
  }

  if (self->_selfNormalization)
  {
    v7 = (&a3->var0 + v4);
    a3 = (v7 + 8);
    var1 = 1.0 / *(v7 + 4);
  }

  else
  {
    var1 = a3->var1;
  }

  var0 = a3->var0;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcFrameStatistics:(__CVBuffer *)a3
{
  v4 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 1uLL);
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

- (id)statsBufferForTexture:(id)a3
{
  v4 = a3;
  v5 = [v4 width];
  v6 = [v4 height];

  [(Normalization *)self threadsPerGroupForStats];
  if (self->_useFloatAtomic)
  {
    v7 = 8;
  }

  else
  {
    v7 = 8 * (v5 - 1) / 0uLL * ((v6 - 1) / 0uLL);
  }

  v8 = [(MTLDevice *)self->super._device newBufferWithLength:v7 options:0];

  return v8;
}

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)a3
{
  v4 = a3;
  v5 = [(Normalization *)self statsBufferForTexture:v4];
  v6 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  [(Normalization *)self encodeStatisticsToCommandBuffer:v6 texture:v4 stats:v5];

  kdebug_trace();
  [v6 commit];
  [v6 waitUntilCompleted];
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

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatisticsFromStatsBuffer:(id)a3
{
  v4 = a3;
  useFloatAtomic = self->_useFloatAtomic;
  v6 = [v4 contents];
  v7 = v6;
  if (useFloatAtomic)
  {
    v8 = *(v6 + 4);
    v16 = *v6;
  }

  else
  {
    v9 = [v4 length];
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

- (void)encodeStatisticsToCommandBuffer:(id)a3 texture:(id)a4 stats:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 width];
  v12 = [v8 height];
  v20 = 0uLL;
  v21 = 0;
  [(Normalization *)self threadsPerGroupForStats];
  v13 = v20;
  v14 = [v10 computeCommandEncoder];

  if (isTextureYUV420(v8))
  {
    v15 = &OBJC_IVAR___Normalization__statisticsYUV420Kernel;
  }

  else
  {
    v16 = [v8 pixelFormat];
    v15 = &OBJC_IVAR___Normalization__statisticsPackedKernel;
    if (v16 == 25)
    {
      v15 = &OBJC_IVAR___Normalization__statisticsPlanarKernel;
    }
  }

  [v14 setComputePipelineState:*(&self->super.super.isa + *v15)];
  [v14 setTexture:v8 atIndex:0];
  [v14 setBuffer:v9 offset:0 atIndex:0];

  v19[0] = (v11 + v13 - 1) / v13;
  v19[1] = (v12 + *(&v13 + 1) - 1) / *(&v13 + 1);
  v19[2] = 1;
  v17 = v20;
  v18 = v21;
  [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v14 endEncoding];
}

- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 normParamBuffer:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v11 width];
  v15 = [v11 height];
  v16 = [v13 computeCommandEncoder];

  if (isTextureYUV420(v10))
  {
    v17 = &OBJC_IVAR___Normalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    v18 = [v10 arrayLength];
    v17 = &OBJC_IVAR___Normalization__normalizePlanarToPlanarKernel;
    if (v18 == 1)
    {
      v17 = &OBJC_IVAR___Normalization__normalizePackedToPlanarKernel;
    }
  }

  [v16 setComputePipelineState:*(&self->super.super.isa + *v17)];
  [v16 setTexture:v10 atIndex:0];
  [v16 setTexture:v11 atIndex:1];
  [v16 setBuffer:v12 offset:0 atIndex:0];

  v21[0] = (v14 + 15) >> 4;
  v21[1] = (v15 + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v16 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [v16 endEncoding];
}

- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  device = self->super._device;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v17 = [(MTLDevice *)device newBufferWithLength:8 options:0];
  v15 = v17;
  v16 = [v17 contents];
  *v16 = var0;
  v16[1] = var1;
  [(Normalization *)self encodeNormalizationToCommandBuffer:v14 source:v13 destination:v12 configBuffer:v17];
}

- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 configBuffer:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v11 width];
  v15 = [v11 height];
  v16 = [v13 computeCommandEncoder];

  if (isTextureYUV420(v10))
  {
    v17 = &OBJC_IVAR___Normalization__normalizeYUV420ToPlanarKernel;
  }

  else
  {
    v18 = [v10 arrayLength];
    v17 = &OBJC_IVAR___Normalization__normalizePlanarToPlanarKernel;
    if (v18 == 1)
    {
      v17 = &OBJC_IVAR___Normalization__normalizePackedToPlanarKernel;
    }
  }

  [v16 setComputePipelineState:*(&self->super.super.isa + *v17)];
  [v16 setTexture:v10 atIndex:0];
  [v16 setTexture:v11 atIndex:1];
  [v16 setBuffer:v12 offset:0 atIndex:0];

  v21[0] = (v14 + 15) >> 4;
  v21[1] = (v15 + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v16 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [v16 endEncoding];
}

- (void)normalizeFramesFirstInput:(__CVBuffer *)a3 secondInput:(__CVBuffer *)a4 firstOutput:(__CVBuffer *)a5 secondOutput:(__CVBuffer *)a6 callback:(id)a7
{
  v12 = a7;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x4010000000;
  v41[3] = "";
  memset(&v41[4], 0, 24);
  v42 = 0;
  if (!a3 && a5)
  {
    NSLog(&cfstr_NormalizationE.isa);
    goto LABEL_31;
  }

  Width = CVPixelBufferGetWidth(a4);
  v27 = v12;
  Height = CVPixelBufferGetHeight(a4);
  if (isYUV420(a4))
  {
    if (a3)
    {
      v15 = createYUV420TextureFromCVPixelBuffer(a3, self->super._device);
    }

    else
    {
      v15 = 0;
    }

    v30 = createYUV420TextureFromCVPixelBuffer(a4, self->super._device);
    v16 = 3 * Width * Height;
    if (!a5)
    {
LABEL_20:
      v28 = 0;
      goto LABEL_21;
    }
  }

  else if (isPackedRGBA(a4))
  {
    if (a3)
    {
      v15 = createRGBATextureFromCVPixelBuffer(a3, self->super._device);
    }

    else
    {
      v15 = 0;
    }

    v30 = createRGBATextureFromCVPixelBuffer(a4, self->super._device);
    v16 = 3 * Width * Height;
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a3)
    {
      v15 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
    }

    else
    {
      v15 = 0;
    }

    v30 = createTexturesFromCVPixelBuffer(a4, self->super._device, 1, 3uLL);
    v16 = Height * Width;
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  v28 = createTexturesFromCVPixelBuffer(a5, self->super._device, 1, 3uLL);
LABEL_21:
  v17 = createTexturesFromCVPixelBuffer(a6, self->super._device, 1, 3uLL);
  v18 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
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
  v36 = self;
  v23 = v19;
  v37 = v23;
  v24 = obj;
  v38 = v24;
  v39 = v41;
  v40 = v16;
  v25 = signalValue;
  v12 = v27;
  [(MTLSharedEvent *)sharedEvent notifyListener:sharedEventListener atValue:v25 block:v34];
  if (v22)
  {
    [(Normalization *)self encodeStatisticsToCommandBuffer:v18 texture:v22 stats:v23];
  }

  [(Normalization *)self encodeStatisticsToCommandBuffer:v18 texture:v30 stats:v24, sharedEvent];
  [v18 encodeSignalEvent:self->_sharedEvent value:self->_signalValue];
  [v18 encodeWaitForEvent:self->_sharedEvent value:self->_signalValue + 1];
  if (v22)
  {
    [(Normalization *)self encodeNormalizationToCommandBuffer:v18 source:v22 destination:v28 normParamBuffer:self->_firstParamBuffer];
  }

  [(Normalization *)self encodeNormalizationToCommandBuffer:v18 source:v30 destination:v17 normParamBuffer:self->_secondParamBuffer];
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
    [v18 addCompletedHandler:v31];
  }

  [v18 commit];
  if (v27)
  {
    [v18 waitUntilScheduled];
  }

  else
  {
    [v18 waitUntilCompleted];
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

- (void)normalizeWithParmas:(id *)a3 firstInput:(__CVBuffer *)a4 secondInput:(__CVBuffer *)a5 firstOutput:(__CVBuffer *)a6 secondOutput:(__CVBuffer *)a7
{
  v13 = isPackedRGBA(a4);
  device = self->super._device;
  if (v13)
  {
    v15 = createRGBATextureFromCVPixelBuffer(a4, device);
    createRGBATextureFromCVPixelBuffer(a5, self->super._device);
  }

  else
  {
    v15 = createTexturesFromCVPixelBuffer(a4, device, 1, 3uLL);
    createTexturesFromCVPixelBuffer(a5, self->super._device, 1, 3uLL);
  }
  v16 = ;
  v17 = createTexturesFromCVPixelBuffer(a6, self->super._device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(a7, self->super._device, 1, 3uLL);
  *v32 = *&a3->var0;
  *&v32[12] = *&a3->var2[1];
  [(Normalization *)self calcAnchorParamsFromNormParams:v32 anchor:0];
  v20 = v19;
  v22 = v21;
  *v32 = *&a3->var0;
  *&v32[12] = *&a3->var2[1];
  [(Normalization *)self calcAnchorParamsFromNormParams:v32 anchor:1];
  v24 = v23;
  v26 = v25;
  v27 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  LODWORD(v28) = v20;
  LODWORD(v29) = v22;
  [(Normalization *)self encodeNormalizationToCommandBuffer:v27 source:v15 destination:v17 params:v28, v29];
  LODWORD(v30) = v24;
  LODWORD(v31) = v26;
  [(Normalization *)self encodeNormalizationToCommandBuffer:v27 source:v16 destination:v18 params:v30, v31];
  kdebug_trace();
  [v27 commit];
  [v27 waitUntilCompleted];
  kdebug_trace();
}

- (void)encodeDenormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6
{
  var2 = a6.var2;
  v7 = *&a6.var0;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 width];
  v15 = [v11 height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:12 options:0];
  v17 = [v16 contents];
  *v17 = v7;
  *(v17 + 8) = var2;
  v18 = [v13 computeCommandEncoder];

  if ([v11 pixelFormat] == 70)
  {
    v19 = &OBJC_IVAR___Normalization__denormalizeKernel;
  }

  else
  {
    v19 = &OBJC_IVAR___Normalization__denormalizeKernel;
    if ([v11 pixelFormat] != 90 && objc_msgSend(v11, "pixelFormat") != 115)
    {
      v19 = &OBJC_IVAR___Normalization__denormalizeToPlanarKernel;
    }
  }

  [v18 setComputePipelineState:*(&self->super.super.isa + *v19)];
  [v18 setTexture:v12 atIndex:0];

  [v18 setTexture:v11 atIndex:1];
  [v18 setBuffer:v16 offset:0 atIndex:0];
  v22[0] = (v14 + 15) >> 4;
  v22[1] = (v15 + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [v18 dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [v18 endEncoding];
}

- (void)encodeDenormalizationRenderToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6
{
  var2 = a6.var2;
  v7 = *&a6.var0;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 width];
  v15 = [v11 height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:12 options:0];
  v17 = [v16 contents];
  *v17 = v7;
  *(v17 + 8) = var2;
  v18 = [(FRCMetalBase *)self newTextureCoordinateBufferWithWidth:v14 height:v15];
  v19 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v20 = [v19 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setTexture:v11];

  v22 = [v19 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript:0];
  [v23 setLoadAction:0];

  v24 = [v19 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setStoreAction:1];

  v26 = [v13 renderCommandEncoderWithDescriptor:v19];

  v29[0] = 0;
  *&v29[1] = v15;
  *&v29[2] = v14;
  *&v29[3] = -v15;
  v30 = xmmword_24A8FF110;
  [v26 setViewport:v29];
  if ([v11 pixelFormat] == 500)
  {
    v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr8RenderKernel;
  }

  else
  {
    v28 = [v11 pixelFormat];
    v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr10RenderKernel;
    if (v28 == 505)
    {
      v27 = &OBJC_IVAR___Normalization__denormalizeYCbCr10UnpackedRenderKernel;
    }
  }

  [v26 setRenderPipelineState:*(&self->super.super.isa + *v27)];
  [v26 setFragmentTexture:v12 atIndex:0];

  [v26 setFragmentBuffer:v16 offset:0 atIndex:0];
  [v26 setVertexBuffer:self->_vertsBuffer offset:0 atIndex:0];
  [v26 setVertexBuffer:v18 offset:0 atIndex:1];
  [v26 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v26 endEncoding];
}

- (void)denormalizeFrame:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 params:(id *)a5 timeScale:(float)a6 callback:(id)a7
{
  v12 = a7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  if (isYUV420(a4))
  {
    v13 = createRenderTargetTextureFromCVPixelBuffer(a4, self->super._device);
  }

  else
  {
    v14 = isPackedRGBA(a4);
    device = self->super._device;
    if (v14)
    {
      createRGBATextureFromCVPixelBuffer(a4, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(a4, device, 1, 3uLL);
    }
    v13 = ;
  }

  v16 = v29[5];
  v29[5] = v13;

  v17 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v27[0] = *&a5->var0;
  *(v27 + 12) = *&a5->var2[1];
  v18 = [(Normalization *)self calcDeNormParamsFromNormaParams:v27 timeScale:COERCE_DOUBLE(__PAIR64__(v27[1], LODWORD(a6)))];
  v20 = v19;
  if ([v29[5] pixelFormat] == 500 || objc_msgSend(v29[5], "pixelFormat") == 508 || objc_msgSend(v29[5], "pixelFormat") == 505)
  {
    [(Normalization *)self encodeDenormalizationRenderToCommandBuffer:v17 source:v35[5] destination:v29[5] params:v18, v20];
  }

  else
  {
    [(Normalization *)self encodeDenormalizationToCommandBuffer:v17 source:v35[5] destination:v29[5] params:v18, v20];
  }

  kdebug_trace();
  if (v12)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__Normalization_denormalizeFrame_destination_params_timeScale_callback___block_invoke;
    v23[3] = &unk_278FEA510;
    v25 = &v34;
    v26 = &v28;
    v24 = v12;
    [v17 addCompletedHandler:v23];
  }

  [v17 commit];
  [v17 waitUntilScheduled];
  if (!v12)
  {
    [v17 waitUntilCompleted];
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