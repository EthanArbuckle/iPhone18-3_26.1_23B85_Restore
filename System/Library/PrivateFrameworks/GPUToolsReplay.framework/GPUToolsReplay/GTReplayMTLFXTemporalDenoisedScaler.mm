@interface GTReplayMTLFXTemporalDenoisedScaler
+ (id)wrapperWithDevice:(id)device descriptor:(id)descriptor;
- (GTReplayMTLFXTemporalDenoisedScaler)initWithDevice:(id)device descriptor:(id)descriptor;
- (MTLTexture)dilatedMotionVectors;
- (uint64_t)setViewToClipMatrix:(double)matrix;
- (uint64_t)setWorldToViewMatrix:(double)matrix;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
- (void)setColorTexture:(id)texture;
- (void)setDebugTexture:(id)texture;
- (void)setDenoiseStrengthMaskTexture:(id)texture;
- (void)setDepthTexture:(id)texture;
- (void)setDiffuseAlbedoTexture:(id)texture;
- (void)setExposureTexture:(id)texture;
- (void)setFence:(id)fence;
- (void)setInputContentHeight:(unint64_t)height;
- (void)setInputContentWidth:(unint64_t)width;
- (void)setJitterOffsetX:(float)x;
- (void)setJitterOffsetY:(float)y;
- (void)setMotionTexture:(id)texture;
- (void)setMotionVectorScaleX:(float)x;
- (void)setMotionVectorScaleY:(float)y;
- (void)setNormalTexture:(id)texture;
- (void)setOutputTexture:(id)texture;
- (void)setPreExposure:(float)exposure;
- (void)setReactiveMaskTexture:(id)texture;
- (void)setRoughnessTexture:(id)texture;
- (void)setSpecularAlbedoTexture:(id)texture;
- (void)setSpecularHitDistanceTexture:(id)texture;
- (void)setTransparencyOverlayTexture:(id)texture;
@end

@implementation GTReplayMTLFXTemporalDenoisedScaler

- (void)encodeToCommandQueue:(id)queue
{
  queueCopy = queue;
  if (self->super._executionMode)
  {
    if (self->super._executionMode != 1)
    {
      goto LABEL_6;
    }

    v5 = 8;
  }

  else
  {
    v5 = 16;
  }

  v6 = queueCopy;
  [*(&self->super.super.isa + v5) encodeToCommandQueue:queueCopy];
  queueCopy = v6;
LABEL_6:
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (self->super._executionMode)
  {
    if (self->super._executionMode != 1)
    {
      goto LABEL_6;
    }

    v5 = 8;
  }

  else
  {
    v5 = 16;
  }

  v6 = bufferCopy;
  [*(&self->super.super.isa + v5) encodeToCommandBuffer:bufferCopy];
  bufferCopy = v6;
LABEL_6:
}

- (void)setFence:(id)fence
{
  gpuScaler = self->super._gpuScaler;
  fenceCopy = fence;
  [gpuScaler setFence:fenceCopy];
  [self->super._aneScaler setFence:fenceCopy];
}

- (void)setDebugTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setDebugTexture:textureCopy];
  [self->super._aneScaler setDebugTexture:textureCopy];
}

- (MTLTexture)dilatedMotionVectors
{
  v2 = 8;
  if (!self->super._executionMode)
  {
    v2 = 16;
  }

  dilatedMotionVectors = [*(&self->super.super.isa + v2) dilatedMotionVectors];

  return dilatedMotionVectors;
}

- (uint64_t)setViewToClipMatrix:(double)matrix
{
  [*(self + 8) setViewToClipMatrix:?];
  v6 = *(self + 16);

  return [v6 setViewToClipMatrix:{a2, matrix, a4, a5}];
}

- (uint64_t)setWorldToViewMatrix:(double)matrix
{
  [*(self + 8) setWorldToViewMatrix:?];
  v6 = *(self + 16);

  return [v6 setWorldToViewMatrix:{a2, matrix, a4, a5}];
}

- (void)setMotionVectorScaleY:(float)y
{
  [self->super._gpuScaler setMotionVectorScaleY:?];
  aneScaler = self->super._aneScaler;
  *&v6 = y;

  [aneScaler setMotionVectorScaleY:v6];
}

- (void)setMotionVectorScaleX:(float)x
{
  [self->super._gpuScaler setMotionVectorScaleX:?];
  aneScaler = self->super._aneScaler;
  *&v6 = x;

  [aneScaler setMotionVectorScaleX:v6];
}

- (void)setJitterOffsetY:(float)y
{
  [self->super._gpuScaler setJitterOffsetY:?];
  aneScaler = self->super._aneScaler;
  *&v6 = y;

  [aneScaler setJitterOffsetY:v6];
}

- (void)setJitterOffsetX:(float)x
{
  [self->super._gpuScaler setJitterOffsetX:?];
  aneScaler = self->super._aneScaler;
  *&v6 = x;

  [aneScaler setJitterOffsetX:v6];
}

- (void)setPreExposure:(float)exposure
{
  [self->super._gpuScaler setPreExposure:?];
  aneScaler = self->super._aneScaler;
  *&v6 = exposure;

  [aneScaler setPreExposure:v6];
}

- (void)setTransparencyOverlayTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setTransparencyOverlayTexture:textureCopy];
  [self->super._aneScaler setTransparencyOverlayTexture:textureCopy];
}

- (void)setDenoiseStrengthMaskTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setDenoiseStrengthMaskTexture:textureCopy];
  [self->super._aneScaler setDenoiseStrengthMaskTexture:textureCopy];
}

- (void)setSpecularHitDistanceTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setSpecularHitDistanceTexture:textureCopy];
  [self->super._aneScaler setSpecularHitDistanceTexture:textureCopy];
}

- (void)setRoughnessTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setRoughnessTexture:textureCopy];
  [self->super._aneScaler setRoughnessTexture:textureCopy];
}

- (void)setNormalTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setNormalTexture:textureCopy];
  [self->super._aneScaler setNormalTexture:textureCopy];
}

- (void)setSpecularAlbedoTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setSpecularAlbedoTexture:textureCopy];
  [self->super._aneScaler setSpecularAlbedoTexture:textureCopy];
}

- (void)setDiffuseAlbedoTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setDiffuseAlbedoTexture:textureCopy];
  [self->super._aneScaler setDiffuseAlbedoTexture:textureCopy];
}

- (void)setReactiveMaskTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setReactiveMaskTexture:textureCopy];
  [self->super._aneScaler setReactiveMaskTexture:textureCopy];
}

- (void)setExposureTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setExposureTexture:textureCopy];
  [self->super._aneScaler setExposureTexture:textureCopy];
}

- (void)setOutputTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setOutputTexture:textureCopy];
  [self->super._aneScaler setOutputTexture:textureCopy];
}

- (void)setMotionTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setMotionTexture:textureCopy];
  [self->super._aneScaler setMotionTexture:textureCopy];
}

- (void)setDepthTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setDepthTexture:textureCopy];
  [self->super._aneScaler setDepthTexture:textureCopy];
}

- (void)setColorTexture:(id)texture
{
  gpuScaler = self->super._gpuScaler;
  textureCopy = texture;
  [gpuScaler setColorTexture:textureCopy];
  [self->super._aneScaler setColorTexture:textureCopy];
}

- (void)setInputContentHeight:(unint64_t)height
{
  [self->super._gpuScaler setInputContentHeight:?];
  aneScaler = self->super._aneScaler;

  [aneScaler setInputContentHeight:height];
}

- (void)setInputContentWidth:(unint64_t)width
{
  [self->super._gpuScaler setInputContentWidth:?];
  aneScaler = self->super._aneScaler;

  [aneScaler setInputContentWidth:width];
}

- (GTReplayMTLFXTemporalDenoisedScaler)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v25.receiver = self;
  v25.super_class = GTReplayMTLFXTemporalDenoisedScaler;
  v8 = [(GTReplayMTLFXTemporalDenoisedScaler *)&v25 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [deviceCopy supportsFamily:1007];
  if (!v9 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = [descriptorCopy newTemporalDenoisedScalerWithDevice:deviceCopy];
    gpuScaler = v8->super._gpuScaler;
    v8->super._gpuScaler = v17;

    if (v8->super._gpuScaler)
    {
      if (v9)
      {
        v19 = v8->super._gpuScaler;
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong(&v8->super._aneScaler, v19);
      v8->super._executionMode = v9 ^ 1;
      goto LABEL_11;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  [descriptorCopy setRequiresSynchronousInitialization:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__GTReplayMTLFXTemporalDenoisedScaler_initWithDevice_descriptor___block_invoke;
  v22[3] = &unk_279657238;
  v23 = descriptorCopy;
  v24 = deviceCopy;
  ScalersWithBlock = CreateScalersWithBlock(v22);
  v12 = v11;
  if (!ScalersWithBlock)
  {

    goto LABEL_13;
  }

  v13 = v8->super._gpuScaler;
  v8->super._gpuScaler = ScalersWithBlock;
  v14 = ScalersWithBlock;

  aneScaler = v8->super._aneScaler;
  v8->super._aneScaler = v12;
  v16 = v12;

  v8->super._executionMode = v8->super._aneScaler == 0;
LABEL_11:
  v20 = v8;
LABEL_14:

  return v20;
}

id __65__GTReplayMTLFXTemporalDenoisedScaler_initWithDevice_descriptor___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newTemporalDenoisedScalerWithDevice:*(a1 + 40)];

  return v1;
}

+ (id)wrapperWithDevice:(id)device descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy];

  return v8;
}

@end