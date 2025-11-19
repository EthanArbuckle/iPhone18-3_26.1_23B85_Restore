@interface FlowConsistencyMap
- (BOOL)createKernels;
- (FlowConsistencyMap)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (float)computeMaxConsisnteciesForwardConsistencyMap:(id)a3 backwardConsistencyMap:(id)a4;
- (float)createFlowConsistencyMapsWithForwardFlow:(id)a3 backwardFlow:(id)a4 forwardConsistencyMap:(id)a5 backwardConsistencyMap:(id)a6;
- (float)maxConsistency;
- (float)maxValueInTexture:(id)a3;
- (id)allocateLinearConsistencyMapWithWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)encodeMapNormalizationToCommandBuffer:(id)a3 consisitencyMap:(id)a4 maxConsistency:(id)a5;
- (void)encodeMapUpscalingToCommandBuffer:(id)a3 source:(id)a4 detination:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwardConsistencyMap:(id)a6 backwardConsistencyMap:(id)a7;
- (void)encodeUnomalizedMapCreationToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwardConsistencyMap:(id)a6 backwardConsistencyMap:(id)a7;
@end

@implementation FlowConsistencyMap

- (FlowConsistencyMap)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = FlowConsistencyMap;
  v4 = [(FRCMetalBase *)&v8 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (v4 && (v4->_useSIMD = 1, ![(FlowConsistencyMap *)v4 createKernels]))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)createKernels
{
  if (self->_useSIMD && ([(MTLDevice *)self->super._device supportsFamily:1007]& 1) != 0)
  {
    v3 = @"create_consistency_map_SIMD";
  }

  else
  {
    v3 = @"create_consistency_map";
  }

  v4 = [(FRCMetalBase *)self createKernel:v3];
  consistencyComputeKernel = self->_consistencyComputeKernel;
  self->_consistencyComputeKernel = v4;

  if (!self->_consistencyComputeKernel)
  {
    return 0;
  }

  v6 = [(FRCMetalBase *)self createKernel:@"normalized_consistency_map"];
  consistencyNormalizationKernel = self->_consistencyNormalizationKernel;
  self->_consistencyNormalizationKernel = v6;

  v8 = [(FRCMetalBase *)self createKernel:@"upscale_consistency_map"];
  consistencyUpscalingKernel = self->_consistencyUpscalingKernel;
  self->_consistencyUpscalingKernel = v8;

  return self->_consistencyNormalizationKernel != 0;
}

- (float)createFlowConsistencyMapsWithForwardFlow:(id)a3 backwardFlow:(id)a4 forwardConsistencyMap:(id)a5 backwardConsistencyMap:(id)a6
{
  commandQueue = self->super._commandQueue;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(FlowConsistencyMap *)self encodeUnomalizedMapCreationToCommandBuffer:v15 forwardFlow:v14 backwardFlow:v13 forwardConsistencyMap:v12 backwardConsistencyMap:v11];

  [v15 commit];
  [v15 waitUntilCompleted];
  printf("Max values from atomic max %d\n", *[(MTLBuffer *)self->_maxBuffer contents]);
  [(FlowConsistencyMap *)self computeMaxConsisnteciesForwardConsistencyMap:v12 backwardConsistencyMap:v11];
  v17 = v16;
  printf("Max vlues from CPU %f\n", v16);
  v18 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];

  [(FlowConsistencyMap *)self encodeMapNormalizationToCommandBuffer:v18 consisitencyMap:v12 maxConsistency:self->_maxBuffer];
  [(FlowConsistencyMap *)self encodeMapNormalizationToCommandBuffer:v18 consisitencyMap:v11 maxConsistency:self->_maxBuffer];

  [v18 commit];
  [v18 waitUntilCompleted];

  return v17;
}

- (float)maxValueInTexture:(id)a3
{
  v3 = a3;
  v4 = [v3 buffer];
  if (!v4)
  {
    NSLog(&cfstr_ErrorTextureIs.isa);
    _S8 = 0.0;
    goto LABEL_18;
  }

  v5 = [v3 bufferBytesPerRow];
  if ([v4 iosurface])
  {
    IOSurfaceLock([v4 iosurface], 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress([v4 iosurface]);
  }

  else
  {
    BaseAddress = [v4 contents];
  }

  v8 = BaseAddress;
  if (BaseAddress)
  {
    if ([v3 height])
    {
      v9 = 0;
      v10 = 2 * (v5 >> 1);
      LOWORD(_H8) = 0;
      do
      {
        if ([v3 width])
        {
          v12 = 0;
          do
          {
            _H8 = fmaxl(v8[v12++], _H8);
          }

          while ([v3 width] > v12);
        }

        ++v9;
        v8 = (v8 + v10);
      }

      while ([v3 height] > v9);
      __asm { FCVT            S8, H8 }

      goto LABEL_16;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorBufferIsN.isa);
  }

  _S8 = 0.0;
LABEL_16:
  if ([v4 iosurface])
  {
    IOSurfaceUnlock([v4 iosurface], 1u, 0);
  }

LABEL_18:

  return _S8;
}

- (float)computeMaxConsisnteciesForwardConsistencyMap:(id)a3 backwardConsistencyMap:(id)a4
{
  v6 = a4;
  [(FlowConsistencyMap *)self maxValueInTexture:a3];
  v8 = v7;
  [(FlowConsistencyMap *)self maxValueInTexture:v6];
  v10 = v9;

  return fmaxf(v8, v10);
}

- (void)encodeToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwardConsistencyMap:(id)a6 backwardConsistencyMap:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a3;
  [(FlowConsistencyMap *)self encodeUnomalizedMapCreationToCommandBuffer:v14 forwardFlow:a4 backwardFlow:a5 forwardConsistencyMap:v13 backwardConsistencyMap:v12];
  [(FlowConsistencyMap *)self encodeMapNormalizationToCommandBuffer:v14 consisitencyMap:v13 maxConsistency:self->_maxBuffer];

  [(FlowConsistencyMap *)self encodeMapNormalizationToCommandBuffer:v14 consisitencyMap:v12 maxConsistency:self->_maxBuffer];
}

- (void)encodeUnomalizedMapCreationToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwardConsistencyMap:(id)a6 backwardConsistencyMap:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 computeCommandEncoder];
  [v16 setComputePipelineState:self->_consistencyComputeKernel];
  [v16 setTexture:v15 atIndex:0];
  [v16 setTexture:v14 atIndex:1];

  [v16 setTexture:v13 atIndex:2];
  [v16 setTexture:v12 atIndex:3];

  v17 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
  maxBuffer = self->_maxBuffer;
  self->_maxBuffer = v17;

  [v16 setBuffer:self->_maxBuffer offset:0 atIndex:0];
  v19 = ([v15 width] + 31) >> 5;
  v20 = [v15 height];

  v23[0] = v19;
  v23[1] = (v20 + 31) >> 5;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x20uLL);
  v22 = 1;
  [v16 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [v16 endEncoding];
}

- (void)encodeMapNormalizationToCommandBuffer:(id)a3 consisitencyMap:(id)a4 maxConsistency:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_consistencyNormalizationKernel];
  [v10 setTexture:v9 atIndex:0];
  [v10 setBuffer:v8 offset:0 atIndex:0];

  v11 = ([v9 width] + 31) >> 5;
  v12 = [v9 height];

  v15[0] = v11;
  v15[1] = (v12 + 31) >> 5;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x20uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

- (id)allocateLinearConsistencyMapWithWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v5 = a3;
  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:a3 height:a4 mipmapped:0];
  [v7 setUsage:3];
  [v7 setStorageMode:0];
  v5 *= 2;
  v8 = [(MTLDevice *)self->super._device newBufferWithLength:v5 * a4 options:0];
  v9 = [v8 newTextureWithDescriptor:v7 offset:0 bytesPerRow:v5];

  return v9;
}

- (float)maxConsistency
{
  maxBuffer = self->_maxBuffer;
  if (maxBuffer)
  {
    return *[(MTLBuffer *)maxBuffer contents]/ 10000.0;
  }

  else
  {
    return 0.0;
  }
}

- (void)encodeMapUpscalingToCommandBuffer:(id)a3 source:(id)a4 detination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_consistencyUpscalingKernel];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v11 = ([v8 width] + 31) >> 5;
  v12 = [v8 height];

  v15[0] = v11;
  v15[1] = (v12 + 31) >> 5;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x20uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

@end