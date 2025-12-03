@interface FlowConsistency
- (BOOL)createKernels;
- (FlowConsistency)initWithDevice:(id)device commmandQueue:(id)queue;
- (float)computeMaxConsisnteciesForwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap;
- (float)createFlowConsistencyMapsWithForwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap;
- (float)maxConsistency;
- (float)maxValueInTexture:(id)texture;
- (id)allocateLinearConsistencyMapWithWidth:(unint64_t)width height:(unint64_t)height;
- (void)encodeMapNormalizationToCommandBuffer:(id)buffer consisitencyMap:(id)map maxConsistency:(id)consistency;
- (void)encodeMapUpscalingToCommandBuffer:(id)buffer source:(id)source detination:(id)detination;
- (void)encodeToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap;
- (void)encodeUnomalizedMapCreationToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap;
@end

@implementation FlowConsistency

- (FlowConsistency)initWithDevice:(id)device commmandQueue:(id)queue
{
  v13.receiver = self;
  v13.super_class = FlowConsistency;
  v4 = [(VEMetalBase *)&v13 initWithDevice:device commmandQueue:queue];
  if (!v4 || ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "pathForResource:ofType:", @"opticalFlowMetalLib.metallib", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v6), v8 = -[MTLDevice newLibraryWithURL:error:](v4->super._device, "newLibraryWithURL:error:", v7, 0), mtlLibrary = v4->super._mtlLibrary, v4->super._mtlLibrary = v8, mtlLibrary, v4->_useSIMD = 1, v10 = -[FlowConsistency createKernels](v4, "createKernels"), v7, v6, v5, v11 = 0, v10))
  {
    v11 = v4;
  }

  return v11;
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

  v4 = [(VEMetalBase *)self createKernel:v3];
  consistencyComputeKernel = self->_consistencyComputeKernel;
  self->_consistencyComputeKernel = v4;

  if (!self->_consistencyComputeKernel)
  {
    return 0;
  }

  v6 = [(VEMetalBase *)self createKernel:@"normalized_consistency_map"];
  consistencyNormalizationKernel = self->_consistencyNormalizationKernel;
  self->_consistencyNormalizationKernel = v6;

  v8 = [(VEMetalBase *)self createKernel:@"upscale_consistency_map"];
  consistencyUpscalingKernel = self->_consistencyUpscalingKernel;
  self->_consistencyUpscalingKernel = v8;

  return self->_consistencyNormalizationKernel != 0;
}

- (float)createFlowConsistencyMapsWithForwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap
{
  v27 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  consistencyMapCopy = consistencyMap;
  commandQueue = self->super._commandQueue;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(FlowConsistency *)self encodeUnomalizedMapCreationToCommandBuffer:commandBuffer forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardConsistencyMap:mapCopy backwardConsistencyMap:consistencyMapCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  contents = [(MTLBuffer *)self->_maxBuffer contents];
  if ((global_logLevel & 4) != 0)
  {
    v17 = contents;
    v18 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v19 = *v17;
      v25 = 67109120;
      LODWORD(v26) = v19;
      _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_INFO, "Max values from atomic max %d\n", &v25, 8u);
    }
  }

  [(FlowConsistency *)self computeMaxConsisnteciesForwardConsistencyMap:mapCopy backwardConsistencyMap:consistencyMapCopy];
  v21 = v20;
  if ((global_logLevel & 4) != 0)
  {
    v22 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v25 = 134217984;
      v26 = v21;
      _os_log_impl(&dword_24874B000, v22, OS_LOG_TYPE_INFO, "Max vlues from CPU %f\n", &v25, 0xCu);
    }
  }

  commandBuffer2 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];

  [(FlowConsistency *)self encodeMapNormalizationToCommandBuffer:commandBuffer2 consisitencyMap:mapCopy maxConsistency:self->_maxBuffer];
  [(FlowConsistency *)self encodeMapNormalizationToCommandBuffer:commandBuffer2 consisitencyMap:consistencyMapCopy maxConsistency:self->_maxBuffer];
  [commandBuffer2 commit];
  [commandBuffer2 waitUntilCompleted];

  return v21;
}

- (float)maxValueInTexture:(id)texture
{
  textureCopy = texture;
  buffer = [textureCopy buffer];
  if (buffer)
  {
    bufferBytesPerRow = [textureCopy bufferBytesPerRow];
    if ([buffer iosurface])
    {
      IOSurfaceLock([buffer iosurface], 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress([buffer iosurface]);
    }

    else
    {
      BaseAddress = [buffer contents];
    }

    v9 = BaseAddress;
    if (BaseAddress)
    {
      if ([textureCopy height])
      {
        v10 = 0;
        v11 = 2 * (bufferBytesPerRow >> 1);
        LOWORD(_H8) = 0;
        do
        {
          if ([textureCopy width])
          {
            v13 = 0;
            do
            {
              _H8 = fmaxl(v9[v13++], _H8);
            }

            while ([textureCopy width] > v13);
          }

          ++v10;
          v9 = (v9 + v11);
        }

        while ([textureCopy height] > v10);
        __asm { FCVT            S8, H8 }
      }

      else
      {
        _S8 = 0.0;
      }
    }

    else
    {
      _S8 = 0.0;
      if ((global_logLevel & 0x10) != 0)
      {
        v18 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [FlowConsistency maxValueInTexture:v18];
        }
      }
    }

    if ([buffer iosurface])
    {
      IOSurfaceUnlock([buffer iosurface], 1u, 0);
    }
  }

  else
  {
    _S8 = 0.0;
    if ((global_logLevel & 0x10) != 0)
    {
      v8 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [FlowConsistency maxValueInTexture:v8];
      }
    }
  }

  return _S8;
}

- (float)computeMaxConsisnteciesForwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap
{
  consistencyMapCopy = consistencyMap;
  [(FlowConsistency *)self maxValueInTexture:map];
  v8 = v7;
  [(FlowConsistency *)self maxValueInTexture:consistencyMapCopy];
  v10 = v9;

  return fmaxf(v8, v10);
}

- (void)encodeToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap
{
  consistencyMapCopy = consistencyMap;
  mapCopy = map;
  bufferCopy = buffer;
  [(FlowConsistency *)self encodeUnomalizedMapCreationToCommandBuffer:bufferCopy forwardFlow:flow backwardFlow:backwardFlow forwardConsistencyMap:mapCopy backwardConsistencyMap:consistencyMapCopy];
  [(FlowConsistency *)self encodeMapNormalizationToCommandBuffer:bufferCopy consisitencyMap:mapCopy maxConsistency:self->_maxBuffer];

  [(FlowConsistency *)self encodeMapNormalizationToCommandBuffer:bufferCopy consisitencyMap:consistencyMapCopy maxConsistency:self->_maxBuffer];
}

- (void)encodeUnomalizedMapCreationToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardConsistencyMap:(id)map backwardConsistencyMap:(id)consistencyMap
{
  consistencyMapCopy = consistencyMap;
  mapCopy = map;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_consistencyComputeKernel];
  [computeCommandEncoder setTexture:flowCopy atIndex:0];
  [computeCommandEncoder setTexture:backwardFlowCopy atIndex:1];

  [computeCommandEncoder setTexture:mapCopy atIndex:2];
  [computeCommandEncoder setTexture:consistencyMapCopy atIndex:3];

  v17 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
  maxBuffer = self->_maxBuffer;
  self->_maxBuffer = v17;

  [computeCommandEncoder setBuffer:self->_maxBuffer offset:0 atIndex:0];
  v19 = ([flowCopy width] + 31) >> 5;
  height = [flowCopy height];

  v23[0] = v19;
  v23[1] = (height + 31) >> 5;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x20uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- (void)encodeMapNormalizationToCommandBuffer:(id)buffer consisitencyMap:(id)map maxConsistency:(id)consistency
{
  consistencyCopy = consistency;
  mapCopy = map;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_consistencyNormalizationKernel];
  [computeCommandEncoder setTexture:mapCopy atIndex:0];
  [computeCommandEncoder setBuffer:consistencyCopy offset:0 atIndex:0];

  v11 = ([mapCopy width] + 31) >> 5;
  height = [mapCopy height];

  v15[0] = v11;
  v15[1] = (height + 31) >> 5;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x20uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (id)allocateLinearConsistencyMapWithWidth:(unint64_t)width height:(unint64_t)height
{
  widthCopy = width;
  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:width height:height mipmapped:0];
  [v7 setUsage:3];
  [v7 setStorageMode:0];
  widthCopy *= 2;
  v8 = [(MTLDevice *)self->super._device newBufferWithLength:widthCopy * height options:0];
  v9 = [v8 newTextureWithDescriptor:v7 offset:0 bytesPerRow:widthCopy];

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

- (void)encodeMapUpscalingToCommandBuffer:(id)buffer source:(id)source detination:(id)detination
{
  detinationCopy = detination;
  sourceCopy = source;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_consistencyUpscalingKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:detinationCopy atIndex:1];
  v11 = ([detinationCopy width] + 31) >> 5;
  height = [detinationCopy height];

  v15[0] = v11;
  v15[1] = (height + 31) >> 5;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x20uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

@end