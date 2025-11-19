@interface Normalization_Ext
- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)a3 timeScale:(float)a4;
- ($4A63ACB5D0C6D58F6F3C6C6671DE9604)normalizeFramesFirstInput:(SEL)a3 secondInput:(id)a4 packedFirst:(id)a5 packedSecond:(id)a6 commandBuffer:(id)a7;
- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)a3 anchor:(int)a4;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)a3;
- (BOOL)setupMetal;
- (BOOL)setupMetalGolden;
- (Normalization_Ext)init;
- (Normalization_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (id)initGolden;
- (int64_t)accumulateFramesWith:(__CVBuffer *)a3;
- (int64_t)averageFramesWith:(__CVBuffer *)a3 usage:(int64_t)a4 destination:(__CVBuffer *)a5;
- (int64_t)encodeAccumulateFramesCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (int64_t)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 packedRGB:(id)a5 params:(id)a6;
- (int64_t)encodeVSANormalizationToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6;
- (int64_t)rescaleFrameRangeToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (void)createAccumulationBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6;
@end

@implementation Normalization_Ext

- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)a3 timeScale:(float)a4
{
  var4 = a3->var4;
  if (self->_selfNormalization)
  {
    v5 = a3->var3[0];
    a3 = (a3 + 8);
  }

  else
  {
    v5 = 1.0 / a3->var1;
  }

  v6 = LODWORD(a3->var0) | (LODWORD(v5) << 32);
  result.var0 = *&v6;
  result.var1 = *(&v6 + 1);
  result.var2 = var4;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)a3
{
  v4 = a3;
  v5 = ([v4 width] + 7) >> 3;
  v6 = ([v4 height] + 7) >> 3;
  v7 = v6 * v5;
  v8 = [(MTLDevice *)self->super._device newBufferWithLength:8 * v6 * v5 options:0];
  v9 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v10 = [v9 computeCommandEncoder];
  v11 = [v4 pixelFormat];
  v12 = &OBJC_IVAR___Normalization_Ext__statisticsPackedKernel;
  if (v11 == 25)
  {
    v12 = &OBJC_IVAR___Normalization_Ext__statisticsPlanarKernel;
  }

  [v10 setComputePipelineState:*(&self->super.super.isa + *v12)];
  [v10 setTexture:v4 atIndex:0];
  [v10 setBuffer:v8 offset:0 atIndex:0];
  v24[0] = v5;
  v24[1] = v6;
  v24[2] = 1;
  v22 = vdupq_n_s64(8uLL);
  v23 = 1;
  [v10 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  [v10 endEncoding];
  kdebug_trace();
  kdebug_trace();
  [v9 commit];
  [v9 waitUntilCompleted];
  kdebug_trace();
  kdebug_trace();
  v13 = [v8 contents];
  if (v7)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *v13++;
      v14 = vadd_f32(v14, v16);
    }

    while (v7 > v15++);
    v21 = v14.f32[0];
    v18 = v14.f32[1] + 0.000000001;
  }

  else
  {
    v21 = 0.0;
    v18 = 0.000000001;
  }

  v19 = v21;
  v20 = v18;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (void)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 params:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [v12 width];
  v15 = [v12 height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  v17 = [v16 contents];
  *v17 = var0;
  v17[1] = var1;
  v18 = [v13 computeCommandEncoder];

  v19 = [v11 arrayLength];
  v20 = &OBJC_IVAR___Normalization_Ext__normalizePlanarToPlanarKernel;
  if (v19 == 1)
  {
    v20 = &OBJC_IVAR___Normalization_Ext__normalizePackedToPlanarKernel;
  }

  [v18 setComputePipelineState:*(&self->super.super.isa + *v20)];
  [v18 setTexture:v11 atIndex:0];
  [v18 setTexture:v12 atIndex:1];
  [v18 setBuffer:v16 offset:0 atIndex:0];
  v23[0] = (v14 + 15) >> 4;
  v23[1] = (v15 + 15) >> 4;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x10uLL);
  v22 = 1;
  [v18 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [v18 endEncoding];
}

- ($4A63ACB5D0C6D58F6F3C6C6671DE9604)normalizeFramesFirstInput:(SEL)a3 secondInput:(id)a4 packedFirst:(id)a5 packedSecond:(id)a6 commandBuffer:(id)a7
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v18 width];
  v20 = [v18 height];
  if ([v18 arrayLength] == 1)
  {
    v21 = 3 * v20 * v19;
  }

  else
  {
    v21 = v20 * v19;
  }

  [(Normalization_Ext *)self calcTextureStatistics:v18];
  v23 = v22;
  v25 = v24;
  [(Normalization_Ext *)self calcTextureStatistics:v17];
  v27 = v26;
  v29 = v28;
  *retstr->var2 = 0;
  *retstr->var3 = 0;
  *&retstr->var0 = 0;
  retstr->var4 = 0;
  LODWORD(v30) = v23;
  LODWORD(v31) = v25;
  calcNormalizationParams(v21, retstr, v30, v31, v27, v29, v32);
  *v46 = *&retstr->var0;
  *&v46[12] = *&retstr->var2[1];
  [(Normalization_Ext *)self calcAnchorParamsFromNormParams:v46 anchor:0];
  v34 = v33;
  v36 = v35;
  *v46 = *&retstr->var0;
  *&v46[12] = *&retstr->var2[1];
  [(Normalization_Ext *)self calcAnchorParamsFromNormParams:v46 anchor:1];
  v38 = v37;
  v40 = v39;
  LODWORD(v41) = v34;
  LODWORD(v42) = v36;
  [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:v14 source:v18 packedRGB:v16 params:v41, v42];

  LODWORD(v43) = v38;
  LODWORD(v44) = v40;
  [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:v14 source:v17 packedRGB:v15 params:v43, v44];

  return result;
}

- (int64_t)rescaleFrameRangeToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  LODWORD(v5) = 1058949252;
  LODWORD(v6) = 1092814806;
  return [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:a3 source:a4 packedRGB:a5 params:v5, v6];
}

- (void)createAccumulationBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v6 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];
  accumulationBuffer = self->_accumulationBuffer;
  self->_accumulationBuffer = v6;

  v9 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = [v9 blitCommandEncoder];
  [v8 fillBuffer:self->_accumulationBuffer range:0 value:{-[MTLBuffer length](self->_accumulationBuffer, "length"), 0}];
  [v8 endEncoding];
  [v9 commit];
  [v9 waitUntilCompleted];
}

- (Normalization_Ext)init
{
  v5.receiver = self;
  v5.super_class = Normalization_Ext;
  v2 = [(VEMetalBase *)&v5 init];
  if (v2 && [OUTLINED_FUNCTION_1_4(112) setupMetal])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (Normalization_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v13.receiver = self;
  v13.super_class = Normalization_Ext;
  v4 = [(VEMetalBase *)&v13 initWithDevice:a3 commmandQueue:a4];
  if (v4 && ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "pathForResource:ofType:", @"opticalFlowMetalLib.metallib", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v6), v8 = -[MTLDevice newLibraryWithURL:error:](v4->super._device, "newLibraryWithURL:error:", v7, 0), mtlLibrary = v4->super._mtlLibrary, v4->super._mtlLibrary = v8, mtlLibrary, v10 = objc_msgSend(OUTLINED_FUNCTION_1_4(112), "setupMetal"), v7, v6, v5, v10))
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initGolden
{
  v5.receiver = self;
  v5.super_class = Normalization_Ext;
  v2 = [(VEMetalBase *)&v5 init];
  if (v2 && [OUTLINED_FUNCTION_1_4(112) setupMetalGolden])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)setupMetal
{
  v13 = 0;
  v3 = objc_opt_new();
  [v3 setConstantValue:&v13 type:53 withName:@"paintFrame"];
  v4 = [(VEMetalBase *)self createKernel:@"calcStatisticsPlanar"];
  OUTLINED_FUNCTION_0_3(v4);
  if (self->_statisticsPlanarKernel && ([(VEMetalBase *)self createKernel:@"calcStatisticsPacked"], v5 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_3(v5), self->_statisticsPackedKernel) && ([(VEMetalBase *)self createKernel:@"normalizeTextureNonInterleaved"], v6 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_3(v6), self->_normalizePlanarToPlanarKernel) && ([(VEMetalBase *)self createKernel:@"normalizeToTextureArray"], v7 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_3(v7), self->_normalizePackedToPlanarKernel) && ([(VEMetalBase *)self createKernel:@"normalizeTextureNonInterleavedWithPackedOutput"], v8 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_3(v8), self->_normalizePlanarToPlanarWithPackedOutputKernel))
  {
    v9 = [(VEMetalBase *)self createKernel:@"normalizeToTextureArrayWithPackedOutput"];
    normalizePackedToPlanarWithPackedOutputKernel = self->_normalizePackedToPlanarWithPackedOutputKernel;
    self->_normalizePackedToPlanarWithPackedOutputKernel = v9;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)setupMetalGolden
{
  *keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PaintFrames", @"com.apple.FRC", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    keyExistsAndHasValidFormat[1] = AppBooleanValue != 0;
  }

  v4 = objc_opt_new();
  [v4 setConstantValue:&keyExistsAndHasValidFormat[1] type:53 withName:@"paintFrame"];
  v5 = [(VEMetalBase *)self createKernel:@"calcStatisticsPlanar"];
  OUTLINED_FUNCTION_0_3(v5);
  v14 = 0;
  if (self->_statisticsPlanarKernel)
  {
    v6 = [(VEMetalBase *)self createKernel:@"calcStatisticsPacked"];
    OUTLINED_FUNCTION_0_3(v6);
    if (self->_statisticsPackedKernel)
    {
      v7 = [(VEMetalBase *)self createKernel:@"normalizeTextureNonInterleaved"];
      OUTLINED_FUNCTION_0_3(v7);
      if (self->_normalizePlanarToPlanarKernel)
      {
        v8 = [(VEMetalBase *)self createKernel:@"normalizeToTextureArray"];
        OUTLINED_FUNCTION_0_3(v8);
        if (self->_normalizePackedToPlanarKernel)
        {
          v9 = [(VEMetalBase *)self createKernel:@"normalizeTextureNonInterleavedWithPackedOutput"];
          OUTLINED_FUNCTION_0_3(v9);
          if (self->_normalizePlanarToPlanarWithPackedOutputKernel)
          {
            v10 = [(VEMetalBase *)self createKernel:@"normalizeToTextureArrayWithPackedOutput"];
            normalizePackedToPlanarWithPackedOutputKernel = self->_normalizePackedToPlanarWithPackedOutputKernel;
            self->_normalizePackedToPlanarWithPackedOutputKernel = v10;

            v12 = [(VEMetalBase *)self createKernel:@"accumulateOneFrame"];
            OUTLINED_FUNCTION_0_3(v12);
            if (self->_accumulateOneFrame)
            {
              v13 = [(VEMetalBase *)self createKernel:@"vsaConvertFloatBuffer2Texture"];
              OUTLINED_FUNCTION_0_3(v13);
              if (self->_vsaConvert2Texture)
              {
                v14 = 1;
              }
            }
          }
        }
      }
    }
  }

  return v14;
}

- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)a3 anchor:(int)a4
{
  if (a4 > 1)
  {
    var1 = 0.0;
    var0 = 0.0;
  }

  else if (self->_selfNormalization)
  {
    v4 = &a3->var0 + a4;
    var0 = v4[2];
    var1 = 1.0 / v4[4];
  }

  else
  {
    var0 = a3->var0;
    var1 = a3->var1;
  }

  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (int64_t)encodeNormalizationToCommandBuffer:(id)a3 source:(id)a4 packedRGB:(id)a5 params:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = 12;
  if (v11 && v12)
  {
    v15 = a3;
    v16 = [v13 width];
    v17 = [v13 height];
    v18 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    v19 = [v18 contents];
    *v19 = var0;
    v19[1] = var1;
    v20 = [v15 computeCommandEncoder];

    if (v20)
    {
      v21 = (v17 + 15) >> 4;
      v22 = (v16 + 15) >> 4;
      v23 = [v11 arrayLength];
      v24 = &OBJC_IVAR___Normalization_Ext__normalizePlanarToPlanarWithPackedOutputKernel;
      if (v23 == 1)
      {
        v24 = &OBJC_IVAR___Normalization_Ext__normalizePackedToPlanarWithPackedOutputKernel;
      }

      [v20 setComputePipelineState:*(&self->super.super.isa + *v24)];
      [v20 setTexture:v11 atIndex:0];
      [v20 setTexture:v13 atIndex:1];
      [v20 setBuffer:v18 offset:0 atIndex:0];
      v28[0] = v22;
      v28[1] = v21;
      v28[2] = 1;
      v26 = vdupq_n_s64(0x10uLL);
      v27 = 1;
      [v20 dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
      [v20 endEncoding];
      v14 = 0;
    }

    else
    {
      v14 = 9;
    }
  }

  return v14;
}

- (int64_t)encodeAccumulateFramesCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    v12 = [a3 computeCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 setComputePipelineState:self->_accumulateOneFrame];
      [v13 setTexture:v8 atIndex:0];
      [v13 setBuffer:v10 offset:0 atIndex:0];
      v17[0] = ([v8 width] + 15) >> 4;
      v17[1] = ([v8 height] + 15) >> 4;
      v17[2] = 1;
      v15 = vdupq_n_s64(0x10uLL);
      v16 = 1;
      [v13 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
      [v13 endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

- (int64_t)accumulateFramesWith:(__CVBuffer *)a3
{
  if (!a3)
  {
    return 12;
  }

  v4 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
  if (v4)
  {
    v5 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v6 = [(Normalization_Ext *)self encodeAccumulateFramesCommandBuffer:v5 input:v4 output:self->_accumulationBuffer];
    if (!v6)
    {
      [v5 commit];
      [v5 waitUntilCompleted];
    }
  }

  else
  {
    v6 = 9;
  }

  return v6;
}

- (int64_t)encodeVSANormalizationToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [a3 computeCommandEncoder];
    if (v14)
    {
      v15 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
      v16 = [v15 contents];
      var0 = a6->var0;
      *v16 = a6->var0;
      LODWORD(v18) = var0;
      HIDWORD(v18) = a6->var1;
      *v16 = v18;
      [v14 setComputePipelineState:self->_vsaConvert2Texture];
      [v14 setBuffer:v10 offset:0 atIndex:0];
      [v14 setTexture:v12 atIndex:0];
      [v14 setBuffer:v15 offset:0 atIndex:1];
      v22[0] = ([v12 width] + 15) >> 4;
      v22[1] = ([v12 height] + 15) >> 4;
      v22[2] = 1;
      v20 = vdupq_n_s64(0x10uLL);
      v21 = 1;
      [v14 dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
      [v14 endEncoding];

      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)averageFramesWith:(__CVBuffer *)a3 usage:(int64_t)a4 destination:(__CVBuffer *)a5
{
  if (!a3)
  {
    return 12;
  }

  v6 = a4;
  Width = CVPixelBufferGetWidth(a3);
  v19 = CVPixelBufferGetHeight(a3) / 3;
  v9 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
  if (v9 && (getAlignedInputFrameSizeForUsage(v6, &Width, &v19), a5))
  {
    v10 = createTexturesFromCVPixelBuffer(a5, self->super._device, 1, 3uLL);
    if (v10)
    {
      v11 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
      if (v11)
      {
        v12 = [v9 width];
        v13 = [v9 height];
        v14 = [v9 depth];
        accumulationBuffer = self->_accumulationBuffer;
        v18[0] = v12;
        v18[1] = v13;
        v18[2] = v14;
        if ([(Normalization_Ext *)self encodeVSANormalizationToCommandBuffer:v11 fromBuffer:accumulationBuffer toTexture:v10 inputSize:v18])
        {
          v16 = 11;
        }

        else
        {
          [v11 commit];
          [v11 waitUntilCompleted];
          v16 = 0;
        }
      }

      else
      {
        v16 = 9;
      }
    }

    else
    {
      v16 = 9;
    }
  }

  else
  {
    v16 = 9;
  }

  return v16;
}

@end