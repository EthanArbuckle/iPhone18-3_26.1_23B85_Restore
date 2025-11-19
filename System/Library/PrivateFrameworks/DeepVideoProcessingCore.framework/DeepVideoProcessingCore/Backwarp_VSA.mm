@interface Backwarp_VSA
- (BOOL)setupMetal;
- (Backwarp_VSA)initWithDevice:(id)a3 commmandQueue:(id)a4 interleaved:(BOOL)a5;
- (int64_t)encodeNeighborMaxFlowToCommandBuffer:(id)a3 tileMax:(id)a4 searchRange:(int)a5 neighborMax:(id)a6;
- (int64_t)encodeRun1TileMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 tileSize:(int)a6 tileMax:(id)a7;
- (int64_t)encodeSmoothedVelocityForMotionBlurToCommandBuffer:(id)a3 magnitude:(id)a4 smoothedMagnitude:(id)a5;
- (int64_t)encodeTileBasedNeighborhoodMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 tileSize:(int)a6 searchRange:(int)a7 Resolution:(id *)a8 intermediateTileMax:(id)a9 tileMax:(id)a10 neighborMax:(id)a11;
- (int64_t)encodeTileMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 tileSize:(int)a5 tileMax:(id)a6;
- (int64_t)encodeVelocityForMotionBlurToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 timeScale:(float)a6 tileSize:(int)a7 searchRange:(int)a8;
@end

@implementation Backwarp_VSA

- (Backwarp_VSA)initWithDevice:(id)a3 commmandQueue:(id)a4 interleaved:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = Backwarp_VSA;
  v5 = [(Backwarp_Ext *)&v9 initWithDevice:a3 commmandQueue:a4 interleaved:a5];
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
  v3 = [(Backwarp_Ext *)&v16 setupMetal];
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
      v14 = v3;
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

- (int64_t)encodeVelocityForMotionBlurToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 timeScale:(float)a6 tileSize:(int)a7 searchRange:(int)a8
{
  v15 = a4;
  v16 = a5;
  OUTLINED_FUNCTION_8_3();
  if (v15 && a5)
  {
    v17 = [a3 computeCommandEncoder];
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_6_3();
      *[v18 contents] = a6;
      v19 = OUTLINED_FUNCTION_6_3();
      *[v19 contents] = a7;
      v20 = OUTLINED_FUNCTION_6_3();
      *[v20 contents] = a8;
      [v17 setComputePipelineState:self->_flowToVelocity];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      [v17 setBuffer:v19 offset:0 atIndex:1];
      [v17 setBuffer:v20 offset:0 atIndex:2];
      v21 = ([v15 width] + 15) >> 4;
      [v15 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, 1, v21);
      [v17 endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeSmoothedVelocityForMotionBlurToCommandBuffer:(id)a3 magnitude:(id)a4 smoothedMagnitude:(id)a5
{
  v9 = a4;
  v10 = a5;
  OUTLINED_FUNCTION_8_3();
  if (v9 && a5)
  {
    v11 = [a3 computeCommandEncoder];
    v12 = v11;
    if (v11)
    {
      [v11 setComputePipelineState:self->_smoothVelocity];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      v13 = ([a5 width] + 15) >> 4;
      [a5 height];
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

- (int64_t)encodeRun1TileMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 tileSize:(int)a6 tileMax:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  v16 = 12;
  if (v12 && v14)
  {
    v17 = [a3 computeCommandEncoder];
    if (v17)
    {
      v18 = [(MTLDevice *)self->super.super._device newBufferWithLength:4 options:0];
      *[v18 contents] = a6;
      [v17 setComputePipelineState:self->_tileMaxVelocityRun1];
      [v17 setTexture:v12 atIndex:0];
      [v17 setTexture:v13 atIndex:1];
      [v17 setTexture:v15 atIndex:2];
      [v17 setBuffer:v18 offset:0 atIndex:0];
      v19 = ([v15 width] + 15) >> 4;
      [v15 height];
      OUTLINED_FUNCTION_8_0();
      v23[0] = v19;
      v23[1] = v20;
      v23[2] = 1;
      v22[2] = 1;
      [v17 dispatchThreadgroups:v23 threadsPerThreadgroup:{v22, *OUTLINED_FUNCTION_0_7().i64}];
      [v17 endEncoding];

      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeTileMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 tileSize:(int)a5 tileMax:(id)a6
{
  v11 = OUTLINED_FUNCTION_9_2(self, a2, a3, a4);
  v12 = v6;
  OUTLINED_FUNCTION_8_3();
  if (v11 && v6)
  {
    v13 = [v7 computeCommandEncoder];
    if (v13)
    {
      v14 = [*(v9 + 16) newBufferWithLength:4 options:0];
      *[v14 contents] = v10;
      [v13 setComputePipelineState:*(v9 + 104)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      v15 = ([v6 width] + 15) >> 4;
      [v6 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, 1, v15);
      [v13 endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeNeighborMaxFlowToCommandBuffer:(id)a3 tileMax:(id)a4 searchRange:(int)a5 neighborMax:(id)a6
{
  v11 = OUTLINED_FUNCTION_9_2(self, a2, a3, a4);
  v12 = v6;
  OUTLINED_FUNCTION_8_3();
  if (v11 && v6)
  {
    v13 = [v7 computeCommandEncoder];
    if (v13)
    {
      v14 = [*(v9 + 16) newBufferWithLength:4 options:0];
      *[v14 contents] = v10;
      [v13 setComputePipelineState:*(v9 + 112)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_1_17();
      v15 = ([v6 width] + 15) >> 4;
      [v6 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, 1, v15);
      [v13 endEncoding];

      v8 = 0;
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)encodeTileBasedNeighborhoodMaxVelocityToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 tileSize:(int)a6 searchRange:(int)a7 Resolution:(id *)a8 intermediateTileMax:(id)a9 tileMax:(id)a10 neighborMax:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = v21;
  v23 = 12;
  if (v17 && v19 && v20 && v21)
  {
    var7_low = LODWORD(a8->var7);
    v25 = [(Backwarp_VSA *)self encodeRun1TileMaxVelocityToCommandBuffer:v16 velocity:v17 magnitude:v18 tileSize:var7_low tileMax:v19];
    if (!v25)
    {
      v25 = [(Backwarp_VSA *)self encodeTileMaxVelocityToCommandBuffer:v16 velocity:v19 tileSize:(a6 / var7_low) tileMax:v20];
      if (!v25)
      {
        v25 = [(Backwarp_VSA *)self encodeNeighborMaxFlowToCommandBuffer:v16 tileMax:v20 searchRange:a7 neighborMax:v22];
      }
    }

    v23 = v25;
  }

  return v23;
}

@end