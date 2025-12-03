@interface Normalization_Ext
- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)params timeScale:(float)scale;
- ($4A63ACB5D0C6D58F6F3C6C6671DE9604)normalizeFramesFirstInput:(SEL)input secondInput:(id)secondInput packedFirst:(id)first packedSecond:(id)second commandBuffer:(id)buffer;
- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)params anchor:(int)anchor;
- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)statistics;
- (BOOL)setupMetal;
- (BOOL)setupMetalGolden;
- (Normalization_Ext)init;
- (Normalization_Ext)initWithDevice:(id)device commmandQueue:(id)queue;
- (id)initGolden;
- (int64_t)accumulateFramesWith:(__CVBuffer *)with;
- (int64_t)averageFramesWith:(__CVBuffer *)with usage:(int64_t)usage destination:(__CVBuffer *)destination;
- (int64_t)encodeAccumulateFramesCommandBuffer:(id)buffer input:(id)input output:(id)output;
- (int64_t)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source packedRGB:(id)b params:(id)params;
- (int64_t)encodeVSANormalizationToCommandBuffer:(id)buffer fromBuffer:(id)fromBuffer toTexture:(id)texture inputSize:(id *)size;
- (int64_t)rescaleFrameRangeToCommandBuffer:(id)buffer input:(id)input output:(id)output;
- (void)createAccumulationBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels;
- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params;
@end

@implementation Normalization_Ext

- ($18698D32E93F98CA3BC0140E41567ABB)calcDeNormParamsFromNormaParams:(id *)params timeScale:(float)scale
{
  var4 = params->var4;
  if (self->_selfNormalization)
  {
    v5 = params->var3[0];
    params = (params + 8);
  }

  else
  {
    v5 = 1.0 / params->var1;
  }

  v6 = LODWORD(params->var0) | (LODWORD(v5) << 32);
  result.var0 = *&v6;
  result.var1 = *(&v6 + 1);
  result.var2 = var4;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)calcTextureStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = ([statisticsCopy width] + 7) >> 3;
  v6 = ([statisticsCopy height] + 7) >> 3;
  v7 = v6 * v5;
  v8 = [(MTLDevice *)self->super._device newBufferWithLength:8 * v6 * v5 options:0];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  pixelFormat = [statisticsCopy pixelFormat];
  v12 = &OBJC_IVAR___Normalization_Ext__statisticsPackedKernel;
  if (pixelFormat == 25)
  {
    v12 = &OBJC_IVAR___Normalization_Ext__statisticsPlanarKernel;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v12)];
  [computeCommandEncoder setTexture:statisticsCopy atIndex:0];
  [computeCommandEncoder setBuffer:v8 offset:0 atIndex:0];
  v24[0] = v5;
  v24[1] = v6;
  v24[2] = 1;
  v22 = vdupq_n_s64(8uLL);
  v23 = 1;
  [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];
  kdebug_trace();
  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  kdebug_trace();
  kdebug_trace();
  contents = [v8 contents];
  if (v7)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *contents++;
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

- (void)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source destination:(id)destination params:(id)params
{
  var1 = params.var1;
  var0 = params.var0;
  sourceCopy = source;
  destinationCopy = destination;
  bufferCopy = buffer;
  width = [destinationCopy width];
  height = [destinationCopy height];
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  contents = [v16 contents];
  *contents = var0;
  contents[1] = var1;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  arrayLength = [sourceCopy arrayLength];
  v20 = &OBJC_IVAR___Normalization_Ext__normalizePlanarToPlanarKernel;
  if (arrayLength == 1)
  {
    v20 = &OBJC_IVAR___Normalization_Ext__normalizePackedToPlanarKernel;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v20)];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:v16 offset:0 atIndex:0];
  v23[0] = (width + 15) >> 4;
  v23[1] = (height + 15) >> 4;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x10uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- ($4A63ACB5D0C6D58F6F3C6C6671DE9604)normalizeFramesFirstInput:(SEL)input secondInput:(id)secondInput packedFirst:(id)first packedSecond:(id)second commandBuffer:(id)buffer
{
  v14 = a8;
  bufferCopy = buffer;
  secondCopy = second;
  firstCopy = first;
  secondInputCopy = secondInput;
  width = [secondInputCopy width];
  height = [secondInputCopy height];
  if ([secondInputCopy arrayLength] == 1)
  {
    v21 = 3 * height * width;
  }

  else
  {
    v21 = height * width;
  }

  [(Normalization_Ext *)self calcTextureStatistics:secondInputCopy];
  v23 = v22;
  v25 = v24;
  [(Normalization_Ext *)self calcTextureStatistics:firstCopy];
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
  [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:v14 source:secondInputCopy packedRGB:secondCopy params:v41, v42];

  LODWORD(v43) = v38;
  LODWORD(v44) = v40;
  [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:v14 source:firstCopy packedRGB:bufferCopy params:v43, v44];

  return result;
}

- (int64_t)rescaleFrameRangeToCommandBuffer:(id)buffer input:(id)input output:(id)output
{
  LODWORD(v5) = 1058949252;
  LODWORD(v6) = 1092814806;
  return [(Normalization_Ext *)self encodeNormalizationToCommandBuffer:buffer source:input packedRGB:output params:v5, v6];
}

- (void)createAccumulationBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels
{
  v6 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) + width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) * channels) + 4095) & 0xFFFFFFFFFFFFF000 options:0];
  accumulationBuffer = self->_accumulationBuffer;
  self->_accumulationBuffer = v6;

  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  [blitCommandEncoder fillBuffer:self->_accumulationBuffer range:0 value:{-[MTLBuffer length](self->_accumulationBuffer, "length"), 0}];
  [blitCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
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

- (Normalization_Ext)initWithDevice:(id)device commmandQueue:(id)queue
{
  v13.receiver = self;
  v13.super_class = Normalization_Ext;
  v4 = [(VEMetalBase *)&v13 initWithDevice:device commmandQueue:queue];
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

- ($94F468A8D4C62B317260615823C2B210)calcAnchorParamsFromNormParams:(id *)params anchor:(int)anchor
{
  if (anchor > 1)
  {
    var1 = 0.0;
    var0 = 0.0;
  }

  else if (self->_selfNormalization)
  {
    v4 = &params->var0 + anchor;
    var0 = v4[2];
    var1 = 1.0 / v4[4];
  }

  else
  {
    var0 = params->var0;
    var1 = params->var1;
  }

  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (int64_t)encodeNormalizationToCommandBuffer:(id)buffer source:(id)source packedRGB:(id)b params:(id)params
{
  var1 = params.var1;
  var0 = params.var0;
  sourceCopy = source;
  bCopy = b;
  v13 = bCopy;
  v14 = 12;
  if (sourceCopy && bCopy)
  {
    bufferCopy = buffer;
    width = [v13 width];
    height = [v13 height];
    v18 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    contents = [v18 contents];
    *contents = var0;
    contents[1] = var1;
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v21 = (height + 15) >> 4;
      v22 = (width + 15) >> 4;
      arrayLength = [sourceCopy arrayLength];
      v24 = &OBJC_IVAR___Normalization_Ext__normalizePlanarToPlanarWithPackedOutputKernel;
      if (arrayLength == 1)
      {
        v24 = &OBJC_IVAR___Normalization_Ext__normalizePackedToPlanarWithPackedOutputKernel;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v24)];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:v13 atIndex:1];
      [computeCommandEncoder setBuffer:v18 offset:0 atIndex:0];
      v28[0] = v22;
      v28[1] = v21;
      v28[2] = 1;
      v26 = vdupq_n_s64(0x10uLL);
      v27 = 1;
      [computeCommandEncoder dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
      [computeCommandEncoder endEncoding];
      v14 = 0;
    }

    else
    {
      v14 = 9;
    }
  }

  return v14;
}

- (int64_t)encodeAccumulateFramesCommandBuffer:(id)buffer input:(id)input output:(id)output
{
  inputCopy = input;
  outputCopy = output;
  v10 = outputCopy;
  v11 = 12;
  if (inputCopy && outputCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    v13 = computeCommandEncoder;
    if (computeCommandEncoder)
    {
      [computeCommandEncoder setComputePipelineState:self->_accumulateOneFrame];
      [v13 setTexture:inputCopy atIndex:0];
      [v13 setBuffer:v10 offset:0 atIndex:0];
      v17[0] = ([inputCopy width] + 15) >> 4;
      v17[1] = ([inputCopy height] + 15) >> 4;
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

- (int64_t)accumulateFramesWith:(__CVBuffer *)with
{
  if (!with)
  {
    return 12;
  }

  v4 = createTexturesFromCVPixelBuffer(with, self->super._device, 1, 3uLL);
  if (v4)
  {
    commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v6 = [(Normalization_Ext *)self encodeAccumulateFramesCommandBuffer:commandBuffer input:v4 output:self->_accumulationBuffer];
    if (!v6)
    {
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
    }
  }

  else
  {
    v6 = 9;
  }

  return v6;
}

- (int64_t)encodeVSANormalizationToCommandBuffer:(id)buffer fromBuffer:(id)fromBuffer toTexture:(id)texture inputSize:(id *)size
{
  fromBufferCopy = fromBuffer;
  textureCopy = texture;
  v12 = textureCopy;
  v13 = 12;
  if (fromBufferCopy && textureCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v15 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
      contents = [v15 contents];
      var0 = size->var0;
      *contents = size->var0;
      LODWORD(v18) = var0;
      HIDWORD(v18) = size->var1;
      *contents = v18;
      [computeCommandEncoder setComputePipelineState:self->_vsaConvert2Texture];
      [computeCommandEncoder setBuffer:fromBufferCopy offset:0 atIndex:0];
      [computeCommandEncoder setTexture:v12 atIndex:0];
      [computeCommandEncoder setBuffer:v15 offset:0 atIndex:1];
      v22[0] = ([v12 width] + 15) >> 4;
      v22[1] = ([v12 height] + 15) >> 4;
      v22[2] = 1;
      v20 = vdupq_n_s64(0x10uLL);
      v21 = 1;
      [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
      [computeCommandEncoder endEncoding];

      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)averageFramesWith:(__CVBuffer *)with usage:(int64_t)usage destination:(__CVBuffer *)destination
{
  if (!with)
  {
    return 12;
  }

  usageCopy = usage;
  Width = CVPixelBufferGetWidth(with);
  v19 = CVPixelBufferGetHeight(with) / 3;
  v9 = createTexturesFromCVPixelBuffer(with, self->super._device, 1, 3uLL);
  if (v9 && (getAlignedInputFrameSizeForUsage(usageCopy, &Width, &v19), destination))
  {
    v10 = createTexturesFromCVPixelBuffer(destination, self->super._device, 1, 3uLL);
    if (v10)
    {
      commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
      if (commandBuffer)
      {
        width = [v9 width];
        height = [v9 height];
        depth = [v9 depth];
        accumulationBuffer = self->_accumulationBuffer;
        v18[0] = width;
        v18[1] = height;
        v18[2] = depth;
        if ([(Normalization_Ext *)self encodeVSANormalizationToCommandBuffer:commandBuffer fromBuffer:accumulationBuffer toTexture:v10 inputSize:v18])
        {
          v16 = 11;
        }

        else
        {
          [commandBuffer commit];
          [commandBuffer waitUntilCompleted];
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