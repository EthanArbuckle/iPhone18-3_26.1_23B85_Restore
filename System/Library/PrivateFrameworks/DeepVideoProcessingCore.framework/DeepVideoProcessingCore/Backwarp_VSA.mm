@interface Backwarp_VSA
- (BOOL)setupMetal;
- (Backwarp_VSA)initWithDevice:(id)device commmandQueue:(id)queue interleaved:(BOOL)interleaved;
- (int64_t)encodeNeighborMaxFlowToCommandBuffer:(id)buffer tileMax:(id)max searchRange:(int)range neighborMax:(id)neighborMax;
- (int64_t)encodeRun1TileMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude tileSize:(int)size tileMax:(id)max;
- (int64_t)encodeSmoothedVelocityForMotionBlurToCommandBuffer:(id)buffer magnitude:(id)magnitude smoothedMagnitude:(id)smoothedMagnitude;
- (int64_t)encodeTileBasedNeighborhoodMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude tileSize:(int)size searchRange:(int)range Resolution:(id *)resolution intermediateTileMax:(id)max tileMax:(id)self0 neighborMax:(id)self1;
- (int64_t)encodeTileMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity tileSize:(int)size tileMax:(id)max;
- (int64_t)encodeVelocityForMotionBlurToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude timeScale:(float)scale tileSize:(int)size searchRange:(int)range;
@end

@implementation Backwarp_VSA

- (Backwarp_VSA)initWithDevice:(id)device commmandQueue:(id)queue interleaved:(BOOL)interleaved
{
  v9.receiver = self;
  v9.super_class = Backwarp_VSA;
  v5 = [(Backwarp_Ext *)&v9 initWithDevice:device commmandQueue:queue interleaved:interleaved];
  v6 = v5;
  if (v5 && [(Backwarp_VSA *)v5 setupMetal])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setupMetal
{
  v16.receiver = self;
  v16.super_class = Backwarp_VSA;
  setupMetal = [(Backwarp_Ext *)&v16 setupMetal];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"virtualShutterAngleMetalLib.metallib" ofType:0];
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
  v7 = [(MTLDevice *)self->super.super._device newLibraryWithURL:v6 error:0];
  mtlLibrary = self->super.super._mtlLibrary;
  self->super.super._mtlLibrary = v7;

  v9 = [(VEMetalBase *)self createKernel:@"flowToVelocityConversion"];
  OUTLINED_FUNCTION_7_3(v9);
  if (self->_flowToVelocity && ([(VEMetalBase *)self createKernel:@"smoothVelocity"], v10 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_7_3(v10), self->_smoothVelocity) && ([(VEMetalBase *)self createKernel:@"tileMaxVelocityRun1"], v11 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_7_3(v11), self->_tileMaxVelocityRun1) && ([(VEMetalBase *)self createKernel:@"tileMaxVelocityRun2"], v12 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_7_3(v12), self->_tileMaxVelocityRun2))
  {
    v13 = [(VEMetalBase *)self createKernel:@"neighborMaxVelocity"];
    OUTLINED_FUNCTION_7_3(v13);
    if (self->_neighborMaxVelocity)
    {
      v14 = setupMetal;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)encodeVelocityForMotionBlurToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude timeScale:(float)scale tileSize:(int)size searchRange:(int)range
{
  velocityCopy = velocity;
  magnitudeCopy = magnitude;
  OUTLINED_FUNCTION_8_3();
  if (velocityCopy && magnitude)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v18 = OUTLINED_FUNCTION_6_3();
      *[v18 contents] = scale;
      v19 = OUTLINED_FUNCTION_6_3();
      *[v19 contents] = size;
      v20 = OUTLINED_FUNCTION_6_3();
      *[v20 contents] = range;
      [computeCommandEncoder setComputePipelineState:self->_flowToVelocity];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      [computeCommandEncoder setBuffer:v19 offset:0 atIndex:1];
      [computeCommandEncoder setBuffer:v20 offset:0 atIndex:2];
      v21 = ([velocityCopy width] + 15) >> 4;
      [velocityCopy height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, 1, v21);
      [computeCommandEncoder endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeSmoothedVelocityForMotionBlurToCommandBuffer:(id)buffer magnitude:(id)magnitude smoothedMagnitude:(id)smoothedMagnitude
{
  magnitudeCopy = magnitude;
  smoothedMagnitudeCopy = smoothedMagnitude;
  OUTLINED_FUNCTION_8_3();
  if (magnitudeCopy && smoothedMagnitude)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    v12 = computeCommandEncoder;
    if (computeCommandEncoder)
    {
      [computeCommandEncoder setComputePipelineState:self->_smoothVelocity];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      v13 = ([smoothedMagnitude width] + 15) >> 4;
      [smoothedMagnitude height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, 1, v13);
      [v12 endEncoding];
      v5 = 0;
    }

    else
    {
      v5 = 9;
    }
  }

  return v5;
}

- (int64_t)encodeRun1TileMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude tileSize:(int)size tileMax:(id)max
{
  velocityCopy = velocity;
  magnitudeCopy = magnitude;
  maxCopy = max;
  v15 = maxCopy;
  v16 = 12;
  if (velocityCopy && maxCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v18 = [(MTLDevice *)self->super.super._device newBufferWithLength:4 options:0];
      *[v18 contents] = size;
      [computeCommandEncoder setComputePipelineState:self->_tileMaxVelocityRun1];
      [computeCommandEncoder setTexture:velocityCopy atIndex:0];
      [computeCommandEncoder setTexture:magnitudeCopy atIndex:1];
      [computeCommandEncoder setTexture:v15 atIndex:2];
      [computeCommandEncoder setBuffer:v18 offset:0 atIndex:0];
      v19 = ([v15 width] + 15) >> 4;
      [v15 height];
      OUTLINED_FUNCTION_8_0();
      v23[0] = v19;
      v23[1] = v20;
      v23[2] = 1;
      v22[2] = 1;
      [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:{v22, *OUTLINED_FUNCTION_0_7().i64}];
      [computeCommandEncoder endEncoding];

      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeTileMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity tileSize:(int)size tileMax:(id)max
{
  v11 = OUTLINED_FUNCTION_9_2(self, a2, buffer, velocity);
  v12 = v6;
  OUTLINED_FUNCTION_8_3();
  if (v11 && v6)
  {
    computeCommandEncoder = [v7 computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v14 = [*(v9 + 16) newBufferWithLength:4 options:0];
      *[v14 contents] = v10;
      [computeCommandEncoder setComputePipelineState:*(v9 + 104)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      v15 = ([v6 width] + 15) >> 4;
      [v6 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, 1, v15);
      [computeCommandEncoder endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeNeighborMaxFlowToCommandBuffer:(id)buffer tileMax:(id)max searchRange:(int)range neighborMax:(id)neighborMax
{
  v11 = OUTLINED_FUNCTION_9_2(self, a2, buffer, max);
  v12 = v6;
  OUTLINED_FUNCTION_8_3();
  if (v11 && v6)
  {
    computeCommandEncoder = [v7 computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v14 = [*(v9 + 16) newBufferWithLength:4 options:0];
      *[v14 contents] = v10;
      [computeCommandEncoder setComputePipelineState:*(v9 + 112)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      v15 = ([v6 width] + 15) >> 4;
      [v6 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, 1, v15);
      [computeCommandEncoder endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeTileBasedNeighborhoodMaxVelocityToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude tileSize:(int)size searchRange:(int)range Resolution:(id *)resolution intermediateTileMax:(id)max tileMax:(id)self0 neighborMax:(id)self1
{
  bufferCopy = buffer;
  velocityCopy = velocity;
  magnitudeCopy = magnitude;
  maxCopy = max;
  tileMaxCopy = tileMax;
  neighborMaxCopy = neighborMax;
  v22 = neighborMaxCopy;
  v23 = 12;
  if (velocityCopy && maxCopy && tileMaxCopy && neighborMaxCopy)
  {
    var7_low = LODWORD(resolution->var7);
    v25 = [(Backwarp_VSA *)self encodeRun1TileMaxVelocityToCommandBuffer:bufferCopy velocity:velocityCopy magnitude:magnitudeCopy tileSize:var7_low tileMax:maxCopy];
    if (!v25)
    {
      v25 = [(Backwarp_VSA *)self encodeTileMaxVelocityToCommandBuffer:bufferCopy velocity:maxCopy tileSize:(size / var7_low) tileMax:tileMaxCopy];
      if (!v25)
      {
        v25 = [(Backwarp_VSA *)self encodeNeighborMaxFlowToCommandBuffer:bufferCopy tileMax:tileMaxCopy searchRange:range neighborMax:v22];
      }
    }

    v23 = v25;
  }

  return v23;
}

@end