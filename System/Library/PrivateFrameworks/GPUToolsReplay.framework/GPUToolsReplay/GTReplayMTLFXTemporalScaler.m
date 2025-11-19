@interface GTReplayMTLFXTemporalScaler
+ (id)wrapperWithDevice:(id)a3 descriptor:(id)a4;
- (CGPoint)previousJitterOffset;
- (GTReplayMTLFXTemporalScaler)initWithDevice:(id)a3 descriptor:(id)a4;
- (MTLTexture)dilatedMotionVectors;
- (uint64_t)setCurrentViewToClipMatrix:(double)a3;
- (uint64_t)setCurrentWorldToViewMatrix:(double)a3;
- (uint64_t)setPreviousViewToClipMatrix:(double)a3;
- (uint64_t)setPreviousWorldToViewMatrix:(double)a3;
- (void)encodeToCommandBuffer:(id)a3;
- (void)encodeToCommandQueue:(id)a3;
- (void)setColorTexture:(id)a3;
- (void)setDebugTexture:(id)a3;
- (void)setDepthTexture:(id)a3;
- (void)setExposureTexture:(id)a3;
- (void)setFence:(id)a3;
- (void)setInputContentHeight:(unint64_t)a3;
- (void)setInputContentWidth:(unint64_t)a3;
- (void)setJitterOffsetX:(float)a3;
- (void)setJitterOffsetY:(float)a3;
- (void)setMotionTexture:(id)a3;
- (void)setMotionVectorScaleX:(float)a3;
- (void)setMotionVectorScaleY:(float)a3;
- (void)setOutputTexture:(id)a3;
- (void)setPreExposure:(float)a3;
- (void)setPreviousJitterOffset:(CGPoint)a3;
- (void)setReactiveMaskTexture:(id)a3;
@end

@implementation GTReplayMTLFXTemporalScaler

- (void)encodeToCommandQueue:(id)a3
{
  v4 = a3;
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

  v6 = v4;
  [*(&self->super.super.isa + v5) encodeToCommandQueue:v4];
  v4 = v6;
LABEL_6:
}

- (void)encodeToCommandBuffer:(id)a3
{
  v4 = a3;
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

  v6 = v4;
  [*(&self->super.super.isa + v5) encodeToCommandBuffer:v4];
  v4 = v6;
LABEL_6:
}

- (void)setFence:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setFence:v5];
  [self->super._aneScaler setFence:v5];
}

- (void)setDebugTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setDebugTexture:v5];
  [self->super._aneScaler setDebugTexture:v5];
}

- (MTLTexture)dilatedMotionVectors
{
  v2 = 8;
  if (!self->super._executionMode)
  {
    v2 = 16;
  }

  v3 = [*(&self->super.super.isa + v2) dilatedMotionVectors];

  return v3;
}

- (uint64_t)setPreviousViewToClipMatrix:(double)a3
{
  [*(a1 + 8) setPreviousViewToClipMatrix:?];
  v6 = *(a1 + 16);

  return [v6 setPreviousViewToClipMatrix:{a2, a3, a4, a5}];
}

- (uint64_t)setPreviousWorldToViewMatrix:(double)a3
{
  [*(a1 + 8) setPreviousWorldToViewMatrix:?];
  v6 = *(a1 + 16);

  return [v6 setPreviousWorldToViewMatrix:{a2, a3, a4, a5}];
}

- (uint64_t)setCurrentViewToClipMatrix:(double)a3
{
  [*(a1 + 8) setCurrentViewToClipMatrix:?];
  v6 = *(a1 + 16);

  return [v6 setCurrentViewToClipMatrix:{a2, a3, a4, a5}];
}

- (uint64_t)setCurrentWorldToViewMatrix:(double)a3
{
  [*(a1 + 8) setCurrentWorldToViewMatrix:?];
  v6 = *(a1 + 16);

  return [v6 setCurrentWorldToViewMatrix:{a2, a3, a4, a5}];
}

- (void)setPreviousJitterOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [self->super._gpuScaler setPreviousJitterOffset:?];
  aneScaler = self->super._aneScaler;

  [aneScaler setPreviousJitterOffset:{x, y}];
}

- (CGPoint)previousJitterOffset
{
  [self->super._gpuScaler previousJitterOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setMotionVectorScaleY:(float)a3
{
  [self->super._gpuScaler setMotionVectorScaleY:?];
  aneScaler = self->super._aneScaler;
  *&v6 = a3;

  [aneScaler setMotionVectorScaleY:v6];
}

- (void)setMotionVectorScaleX:(float)a3
{
  [self->super._gpuScaler setMotionVectorScaleX:?];
  aneScaler = self->super._aneScaler;
  *&v6 = a3;

  [aneScaler setMotionVectorScaleX:v6];
}

- (void)setJitterOffsetY:(float)a3
{
  [self->super._gpuScaler setJitterOffsetY:?];
  aneScaler = self->super._aneScaler;
  *&v6 = a3;

  [aneScaler setJitterOffsetY:v6];
}

- (void)setJitterOffsetX:(float)a3
{
  [self->super._gpuScaler setJitterOffsetX:?];
  aneScaler = self->super._aneScaler;
  *&v6 = a3;

  [aneScaler setJitterOffsetX:v6];
}

- (void)setPreExposure:(float)a3
{
  [self->super._gpuScaler setPreExposure:?];
  aneScaler = self->super._aneScaler;
  *&v6 = a3;

  [aneScaler setPreExposure:v6];
}

- (void)setReactiveMaskTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setReactiveMaskTexture:v5];
  [self->super._aneScaler setReactiveMaskTexture:v5];
}

- (void)setExposureTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setExposureTexture:v5];
  [self->super._aneScaler setExposureTexture:v5];
}

- (void)setOutputTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setOutputTexture:v5];
  [self->super._aneScaler setOutputTexture:v5];
}

- (void)setMotionTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setMotionTexture:v5];
  [self->super._aneScaler setMotionTexture:v5];
}

- (void)setDepthTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setDepthTexture:v5];
  [self->super._aneScaler setDepthTexture:v5];
}

- (void)setColorTexture:(id)a3
{
  gpuScaler = self->super._gpuScaler;
  v5 = a3;
  [gpuScaler setColorTexture:v5];
  [self->super._aneScaler setColorTexture:v5];
}

- (void)setInputContentHeight:(unint64_t)a3
{
  [self->super._gpuScaler setInputContentHeight:?];
  aneScaler = self->super._aneScaler;

  [aneScaler setInputContentHeight:a3];
}

- (void)setInputContentWidth:(unint64_t)a3
{
  [self->super._gpuScaler setInputContentWidth:?];
  aneScaler = self->super._aneScaler;

  [aneScaler setInputContentWidth:a3];
}

- (GTReplayMTLFXTemporalScaler)initWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = GTReplayMTLFXTemporalScaler;
  v8 = [(GTReplayMTLFXTemporalScaler *)&v25 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v6 supportsFamily:1007];
  if (!v9 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = [v7 newTemporalScalerWithDevice:v6];
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

  [v7 setRequiresSynchronousInitialization:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__GTReplayMTLFXTemporalScaler_initWithDevice_descriptor___block_invoke;
  v22[3] = &unk_279657210;
  v23 = v7;
  v24 = v6;
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

id __57__GTReplayMTLFXTemporalScaler_initWithDevice_descriptor___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newTemporalScalerWithDevice:*(a1 + 40)];

  return v1;
}

+ (id)wrapperWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDevice:v7 descriptor:v6];

  return v8;
}

@end