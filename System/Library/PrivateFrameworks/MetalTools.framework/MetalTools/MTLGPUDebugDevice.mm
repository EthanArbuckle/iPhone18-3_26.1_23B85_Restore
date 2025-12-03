@interface MTLGPUDebugDevice
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor;
- (BOOL)areWritableHeapsEnabled;
- (BOOL)supportsCMPIndirectCommandBuffers;
- (BOOL)supportsRaytracingFromRender;
- (BOOL)supportsRenderDynamicLibraries;
- (MTLGPUDebugDevice)initWithBaseObject:(id)object parent:(id)parent;
- (id).cxx_construct;
- (id)_modifyComputePipelineDescriptor:(id)descriptor options:(unint64_t *)options;
- (id)_modifyRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options;
- (id)_modifyTilePipelineDescriptor:(id)descriptor options:(unint64_t *)options;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor;
- (id)getDynamicLibraryForBaseObject:(id)object;
- (id)getFunctionForBaseObject:(id)object library:(id)library;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor error:(id *)error;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor;
- (id)newArchiveWithURL:(id)l error:(id *)error;
- (id)newArgumentEncoderWithArguments:(id)arguments;
- (id)newArgumentEncoderWithArguments:(id)arguments structType:(id *)type;
- (id)newArgumentEncoderWithBufferBinding:(id)binding;
- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count;
- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error;
- (id)newLibraryWithURL:(id)l error:(id *)error;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newModifyPluginData:(id)data;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error;
- (id)newSharedTextureWithDescriptor:(id)descriptor;
- (id)newSharedTextureWithHandle:(id)handle;
- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index;
- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (id)setGPUCompilerSPIOptionShaderValidation:(id)validation options:(unint64_t)options;
- (id)unwrapAndModifyComputePipelineDescriptor:(id *)descriptor options:(unint64_t *)options;
- (id)unwrapAndModifyMeshRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options;
- (id)unwrapAndModifyRenderPipelineDescriptor:(id *)descriptor options:(unint64_t *)options;
- (id)unwrapAndModifyTileRenderPipelineDescriptor:(id *)descriptor options:(unint64_t *)options;
- (id)unwrapStitchedLibraryDescriptor:(id)descriptor;
- (void)_modifyCompileOptions:(unint64_t *)options;
- (void)_modifyMeshRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options;
- (void)_prepareBinaryLinkedFunctions:(id)functions;
- (void)dealloc;
- (void)instrumentationHeapInit;
- (void)modifyFunctionDescriptor:(id)descriptor;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler;
- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler;
- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)onComputePipelineCreated:(id)created;
- (void)onRenderPipelineCreated:(id)created;
- (void)prepareInsertLibraries:(id)libraries;
- (void)validateRaytracing;
@end

@implementation MTLGPUDebugDevice

- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [[MTLGPUDebugTextureViewPool alloc] initWithTextureViewPool:v7 device:self];

  return v8;
}

- (id)newCommandBuffer
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4GPUDebugCommandBuffer alloc] initWithCommandBuffer:result device:self];

    return v5;
  }

  return result;
}

- (id)newMTL4CommandQueue
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4GPUDebugCommandQueue alloc] initWithCommandQueue:result device:self];

    return v5;
  }

  return result;
}

- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTL4GPUDebugCommandQueue alloc] initWithCommandQueue:result device:self];

    return v9;
  }

  return result;
}

- (void)instrumentationHeapInit
{
  v3 = (self + 728);
  selfCopy = self;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v6 = &selfCopy;
    v5 = &v6;
    std::__call_once(v3, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<-[MTLGPUDebugDevice instrumentationHeapInit]::$_1 &&>>);
  }
}

- (MTLGPUDebugDevice)initWithBaseObject:(id)object parent:(id)parent
{
  v19 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = MTLGPUDebugDevice;
  v5 = [(MTLToolsDevice *)&v18 initWithBaseObject:object parent:parent];
  if (v5)
  {
    if (MTLGPUDebugLog(void)::onceToken != -1)
    {
      [MTLGPUDebugDevice initWithBaseObject:parent:];
    }

    if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
    {
      [MTLGPUDebugDevice initWithBaseObject:v5 parent:?];
    }

    v6 = [v5 newInternalBufferWithLength:1 options:256];
    *(v5 + 84) = v6;
    [v6 setLabel:@"Out of bounds of user address space"];
    *(v5 + 33) = 0x100000008;
    *(v5 + 68) = 3;
    *(v5 + 70) = 1;
    [object supportsFamily:1001];
    v7 = MTLGetEnvDefault();
    *(v5 + 69) = v7 != 0;
    v8 = (v5 + 284);
    v9 = 120403314;
    if (v7)
    {
      v9 = 119800958;
    }

    *v8 = v9 | *(v5 + 284) & 0xFFFFFFFFE8000200;
    supportsArgumentBuffersTier2 = [object supportsArgumentBuffersTier2];
    v11 = 0x1080000000;
    if (supportsArgumentBuffersTier2)
    {
      v11 = 0x10A0000000;
    }

    *v8 = v11 | *v8 & 0xFFFFFFEF5FFFFFFFLL;
    supportsRaytracing = [object supportsRaytracing];
    v13 = 0x100000000;
    if (!supportsRaytracing)
    {
      v13 = 0;
    }

    *v8 = *v8 & 0xFFFFFFFEFFFFFFFFLL | v13;
    supportsFunctionPointers = [object supportsFunctionPointers];
    v15 = 0x400000000;
    if (!supportsFunctionPointers)
    {
      v15 = 0;
    }

    *v8 = *v8 & 0xFFFFFFFBFFFFFFFFLL | v15;
    v5[292] &= ~1u;
    [objc_msgSend(v5 "baseObject")];
    operator new();
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*(self + 16) "name")];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modifyFunctionDescriptor:(id)descriptor
{
  pipelineOptions = [descriptor pipelineOptions];
  [(MTLGPUDebugDevice *)self _modifyCompileOptions:&pipelineOptions];
  [descriptor setPipelineOptions:pipelineOptions & 0xFFFFFFFFFFFEFFFCLL];
}

- (void)_modifyCompileOptions:(unint64_t *)options
{
  v3 = *options;
  *options |= 0x1800003uLL;
  if ((*(self + 284) & 0x10) != 0)
  {
    *options = v3 | 0x11800003;
  }
}

- (id)newModifyPluginData:(id)data
{
  if (data)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:data];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v5 = v4;
  [v4 setObject:*(self + 89) forKeyedSubscript:@"MTLBoundsCheck::Options"];
  return v5;
}

- (void)_prepareBinaryLinkedFunctions:(id)functions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  binaryFunctions = [functions binaryFunctions];
  v4 = [binaryFunctions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(binaryFunctions);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForBinaryFunctionUsage];
      }

      while (v5 != v7);
      v5 = [binaryFunctions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareInsertLibraries:(id)libraries
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [libraries countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(libraries);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForUsage];
      }

      while (v5 != v7);
      v5 = [libraries countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_modifyRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  [descriptor setForceSoftwareVertexFetch:1];
  [objc_msgSend(descriptor "vertexFunction")];
  [objc_msgSend(descriptor "fragmentFunction")];
  -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor vertexLinkedFunctions]);
  -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor fragmentLinkedFunctions]);
  [objc_msgSend(descriptor "meshFunction")];
  [objc_msgSend(descriptor "objectFunction")];
  -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor meshLinkedFunctions]);
  -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor objectLinkedFunctions]);
  v7 = objc_autoreleasePoolPush();
  v8 = -[MTLGPUDebugDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [descriptor vertexFunction], objc_msgSend(descriptor, "vertexPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21)
  {
    goto LABEL_5;
  }

  v10 = v8;
  [descriptor setVertexPreloadedLibraries:v8];
  [(MTLGPUDebugDevice *)self prepareInsertLibraries:v10];
  v11 = -[MTLGPUDebugDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [descriptor fragmentFunction], objc_msgSend(descriptor, "fragmentPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21)
  {
    goto LABEL_5;
  }

  v12 = v11;
  [descriptor setFragmentPreloadedLibraries:v11];
  [(MTLGPUDebugDevice *)self prepareInsertLibraries:v12];
  v13 = -[MTLGPUDebugDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [descriptor meshFunction], objc_msgSend(descriptor, "meshPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21 || (v14 = v13, [descriptor setMeshPreloadedLibraries:v13], -[MTLGPUDebugDevice prepareInsertLibraries:](self, "prepareInsertLibraries:", v14), v15 = -[MTLGPUDebugDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", objc_msgSend(descriptor, "objectFunction"), objc_msgSend(descriptor, "objectPreloadedLibraries"), &v21), (v9 = v21) != 0))
  {
LABEL_5:
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v18 = v15;
    [descriptor setObjectPreloadedLibraries:v15];
    [(MTLGPUDebugDevice *)self prepareInsertLibraries:v18];
    objc_autoreleasePoolPop(v7);
    v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
    bytes = [v19 bytes];
    *bytes = [descriptor isAlphaToCoverageEnabled];
    *(bytes + 4) = [descriptor maxVertexCallStackDepth];
    *(bytes + 8) = [descriptor maxFragmentCallStackDepth];
    *(bytes + 12) = [descriptor maxMeshCallStackDepth];
    *(bytes + 16) = [descriptor maxObjectCallStackDepth];
    v22 = @"MTLBoundsCheck::RenderPipelineData";
    v23[0] = v19;
    [descriptor setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];

    [descriptor setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLGPUDebugDevice setGPUCompilerSPIOptionShaderValidation:options:](self, "setGPUCompilerSPIOptionShaderValidation:options:", objc_msgSend(descriptor, "gpuCompilerSPIOptions"), *options))}];
    v9 = v21;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)unwrapAndModifyRenderPipelineDescriptor:(id *)descriptor options:(unint64_t *)options
{
  *descriptor = [*descriptor copy];
  [(MTLGPUDebugDevice *)self _modifyCompileOptions:options];
  [(MTLGPUDebugDevice *)self _modifyRenderPipelineDescriptor:*descriptor options:options];
  v7 = *descriptor;

  return [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:v7];
}

- (id)setGPUCompilerSPIOptionShaderValidation:(id)validation options:(unint64_t)options
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [validation countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(validation);
        }

        [v7 setObject:objc_msgSend(validation forKey:{"objectForKeyedSubscript:", *(*(&v33 + 1) + 8 * i)), *(*(&v33 + 1) + 8 * i)}];
      }

      v9 = [validation countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  if ((options & 0x800000000) != 0)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x277CBEB68] forKey:{"null"), @"enable-shader-validation"}];
    v15 = self + 264;
    v16 = *(self + 284);
    null = [MEMORY[0x277CBEB68] null];
    if ((v16 & 0x400) != 0)
    {
      v18 = @"enable-%@";
    }

    else
    {
      v18 = @"disable-%@";
    }

    [v7 setObject:null forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v18, @"bounds-checking"}];
    v19 = *(v15 + 20);
    null2 = [MEMORY[0x277CBEB68] null];
    if ((v19 & 0x1000000) != 0)
    {
      v21 = @"enable-%@";
    }

    else
    {
      v21 = @"disable-%@";
    }

    [v7 setObject:null2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v21, @"threadgroup-memory-checks"}];
    v22 = *(v15 + 20);
    null3 = [MEMORY[0x277CBEB68] null];
    if ((v22 & 0x200000) != 0)
    {
      v24 = @"enable-%@";
    }

    else
    {
      v24 = @"disable-%@";
    }

    [v7 setObject:null3 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v24, @"texture-checks"}];
    v25 = *(v15 + 20);
    null4 = [MEMORY[0x277CBEB68] null];
    if ((v25 & 0x200000000) != 0)
    {
      v27 = @"enable-%@";
    }

    else
    {
      v27 = @"disable-%@";
    }

    [v7 setObject:null4 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v27, @"resource-usage-validation"}];
    v28 = *(v15 + 20);
    null5 = [MEMORY[0x277CBEB68] null];
    if ((v28 & 0x400000000) != 0)
    {
      v30 = @"enable-%@";
    }

    else
    {
      v30 = @"disable-%@";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v30, @"stack-overflow"];
    v14 = v7;
    null6 = null5;
    goto LABEL_27;
  }

  if ((options & 0x1000000000) != 0)
  {
    null6 = [MEMORY[0x277CBEB68] null];
    v13 = @"disable-shader-validation";
    v14 = v7;
LABEL_27:
    [v14 setObject:null6 forKey:v13];
  }

  result = v7;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_modifyComputePipelineDescriptor:(id)descriptor options:(unint64_t *)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  [objc_msgSend(descriptor "computeFunction")];
  v7 = [(MTLGPUDebugDevice *)self loadDynamicLibrariesForComputeDescriptor:descriptor error:&v13];
  v8 = v7;
  if (v13)
  {
  }

  else
  {
    [descriptor setPreloadedLibraries:v7];

    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    bytes = [v9 bytes];
    *bytes = [descriptor maxCallStackDepth];
    v14 = @"MTLBoundsCheck::ComputePipelineData";
    v15[0] = v9;
    [descriptor setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];

    -[MTLGPUDebugDevice prepareInsertLibraries:](self, "prepareInsertLibraries:", [descriptor preloadedLibraries]);
    -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor linkedFunctions]);
    [descriptor setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLGPUDebugDevice setGPUCompilerSPIOptionShaderValidation:options:](self, "setGPUCompilerSPIOptionShaderValidation:options:", objc_msgSend(descriptor, "gpuCompilerSPIOptions"), *options))}];
  }

  result = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unwrapAndModifyComputePipelineDescriptor:(id *)descriptor options:(unint64_t *)options
{
  v7 = [*descriptor copy];
  *descriptor = v7;
  [(MTLGPUDebugDevice *)self _modifyComputePipelineDescriptor:v7 options:options];
  [(MTLGPUDebugDevice *)self _modifyCompileOptions:options];
  v8 = *descriptor;

  return [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:v8];
}

- (id)_modifyTilePipelineDescriptor:(id)descriptor options:(unint64_t *)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  [objc_msgSend(descriptor "tileFunction")];
  -[MTLGPUDebugDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [descriptor linkedFunctions]);
  v7 = -[MTLGPUDebugDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [descriptor tileFunction], objc_msgSend(descriptor, "preloadedLibraries"), &v13);
  v8 = v7;
  if (v13)
  {
  }

  else
  {
    [descriptor setPreloadedLibraries:v7];

    -[MTLGPUDebugDevice prepareInsertLibraries:](self, "prepareInsertLibraries:", [descriptor preloadedLibraries]);
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    bytes = [v9 bytes];
    *bytes = [descriptor maxCallStackDepth];
    v14 = @"MTLBoundsCheck::ComputePipelineData";
    v15[0] = v9;
    [descriptor setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];

    [descriptor setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLGPUDebugDevice setGPUCompilerSPIOptionShaderValidation:options:](self, "setGPUCompilerSPIOptionShaderValidation:options:", objc_msgSend(descriptor, "gpuCompilerSPIOptions"), *options))}];
  }

  result = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unwrapAndModifyTileRenderPipelineDescriptor:(id *)descriptor options:(unint64_t *)options
{
  v7 = [*descriptor copy];
  *descriptor = v7;
  [(MTLGPUDebugDevice *)self _modifyTilePipelineDescriptor:v7 options:options];
  [(MTLGPUDebugDevice *)self _modifyCompileOptions:options];
  v8 = *descriptor;

  return [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:v8];
}

- (void)_modifyMeshRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
  bytes = [v7 bytes];
  *bytes = [descriptor isAlphaToCoverageEnabled];
  *(bytes + 12) = [descriptor maxMeshCallStackDepth];
  *(bytes + 16) = [descriptor maxObjectCallStackDepth];
  v10 = @"MTLBoundsCheck::RenderPipelineData";
  v11[0] = v7;
  [descriptor setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];

  [descriptor setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLGPUDebugDevice setGPUCompilerSPIOptionShaderValidation:options:](self, "setGPUCompilerSPIOptionShaderValidation:options:", objc_msgSend(descriptor, "gpuCompilerSPIOptions"), *options))}];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)unwrapAndModifyMeshRenderPipelineDescriptor:(id)descriptor options:(unint64_t *)options
{
  v6 = [descriptor copy];
  [(MTLGPUDebugDevice *)self _modifyCompileOptions:options];
  [(MTLGPUDebugDevice *)self _modifyMeshRenderPipelineDescriptor:v6 options:options];

  return [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:v6];
}

- (void)onRenderPipelineCreated:(id)created
{
  LogInstrumentationFailures([created vertexFunctionData], objc_msgSend(created, "vertexDebugInstrumentationData"));
  LogInstrumentationFailures([created fragmentFunctionData], objc_msgSend(created, "fragmentDebugInstrumentationData"));
  tileFunctionData = [created tileFunctionData];
  tileDebugInstrumentationData = [created tileDebugInstrumentationData];

  LogInstrumentationFailures(tileFunctionData, tileDebugInstrumentationData);
}

- (void)onComputePipelineCreated:(id)created
{
  kernelFunctionData = [created kernelFunctionData];
  debugInstrumentationData = [created debugInstrumentationData];

  LogInstrumentationFailures(kernelFunctionData, debugInstrumentationData);
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLGPUDebugCommandQueue alloc] initWithCommandQueue:v5 device:self];

  return v6;
}

- (id)newCommandQueue
{
  commandQueueDescriptor = [MEMORY[0x277CD6CF8] commandQueueDescriptor];

  return [(MTLGPUDebugDevice *)self newCommandQueueWithDescriptor:commandQueueDescriptor];
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count
{
  commandQueueDescriptor = [MEMORY[0x277CD6CF8] commandQueueDescriptor];
  [commandQueueDescriptor setMaxCommandBufferCount:count];

  return [(MTLGPUDebugDevice *)self newCommandQueueWithDescriptor:commandQueueDescriptor];
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  optionsCopy = options;
  optionsCopy2 = options;
  descriptorCopy = descriptor;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v11 = objc_autoreleasePoolPush();
  vertexFunction = [descriptor vertexFunction];
  fragmentFunction = [descriptor fragmentFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v16 = MTLGPUDebugSetValidationChecksOptions(self, vertexFunction, fragmentFunction, 0, label, shaderValidation, &optionsCopy2);
  v17 = [(MTLGPUDebugDevice *)self unwrapAndModifyRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy2];
  v24 = 0;
  v18 = [*(self + 2) newRenderPipelineStateWithDescriptor:v17 options:optionsCopy2 reflection:&v24 error:error];
  if (error && *error)
  {
    v19 = *error;
  }

  if (v18)
  {
    v20 = [MTLGPUDebugRenderPipelineState alloc];
    v21 = [(MTLGPUDebugRenderPipelineState *)v20 initWithRenderPipelineState:v18 descriptor:descriptorCopy unwrappedDescriptor:v17 reflection:v24 device:self pipelineOptions:optionsCopy2];
    [(MTLGPUDebugRenderPipelineState *)v21 setUID:v16];
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (error && *error)
  {
    v22 = *error;
  }

  if (v21)
  {
    if (reflection && (*&optionsCopy & 0x40003) != 0)
    {
      *reflection = [(MTLGPUDebugRenderPipelineState *)v21 userReflection];
    }

    else if ((*(self + 292) & 1) == 0)
    {
      [(MTLGPUDebugRenderPipelineState *)v21 releaseReflection];
    }

    [(MTLGPUDebugDevice *)self onRenderPipelineCreated:v21];
  }

  return v21;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__MTLGPUDebugDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLGPUDebugDevice *)self newRenderPipelineStateWithDescriptor:descriptor options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  optionsCopy2 = options;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = (*&optionsCopy & 0x40003) != 0;
  v10 = objc_autoreleasePoolPush();
  vertexFunction = [descriptor vertexFunction];
  fragmentFunction = [descriptor fragmentFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v15 = MTLGPUDebugSetValidationChecksOptions(self, vertexFunction, fragmentFunction, 0, label, shaderValidation, &optionsCopy2);
  v16 = [(MTLGPUDebugDevice *)self unwrapAndModifyRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy2];
  v17 = *(self + 2);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __84__MTLGPUDebugDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v21 = &unk_2787B3B08;
  v22 = descriptorCopy;
  v23 = v16;
  selfCopy = self;
  v25 = v15;
  v28 = v9;
  handlerCopy = handler;
  v27 = optionsCopy2;
  [v17 newRenderPipelineStateWithDescriptor:? options:? completionHandler:?];
  objc_autoreleasePoolPop(v10);
}

uint64_t __84__MTLGPUDebugDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 descriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 72)];
    [(MTLGPUDebugRenderPipelineState *)v4 setUID:*(a1 + 56)];
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 80) == 1)
  {
    [(MTLGPUDebugRenderPipelineState *)v4 userReflection];
  }

  else if ((*(*(a1 + 48) + 292) & 1) == 0)
  {
    [(MTLGPUDebugRenderPipelineState *)v4 releaseReflection];
  }

  [*(a1 + 48) onRenderPipelineCreated:v4];
  v5 = *(*(a1 + 64) + 16);

  return v5();
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  optionsCopy = options;
  optionsCopy2 = options;
  descriptorCopy = descriptor;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  tileFunction = [descriptor tileFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v14 = MTLGPUDebugSetValidationChecksOptions(self, tileFunction, 0, 0, label, shaderValidation, &optionsCopy2);
  v15 = [(MTLGPUDebugDevice *)self unwrapAndModifyTileRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy2];
  v21 = 0;
  v16 = [*(self + 2) newRenderPipelineStateWithTileDescriptor:v15 options:optionsCopy2 reflection:&v21 error:error];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = [MTLGPUDebugRenderPipelineState alloc];
  v19 = [(MTLGPUDebugRenderPipelineState *)v18 initWithRenderPipelineState:v17 tileDescriptor:descriptorCopy reflection:v21 device:self pipelineOptions:optionsCopy2];

  [(MTLGPUDebugRenderPipelineState *)v19 setUID:v14];
  if (reflection && (*&optionsCopy & 0x40003) != 0)
  {
    *reflection = [(MTLGPUDebugRenderPipelineState *)v19 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLGPUDebugRenderPipelineState *)v19 releaseReflection];
  }

  [(MTLGPUDebugDevice *)self onRenderPipelineCreated:v19];
  return v19;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLGPUDebugDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLGPUDebugDevice *)self newRenderPipelineStateWithTileDescriptor:descriptor options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  optionsCopy2 = options;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = (*&optionsCopy & 0x40003) != 0;
  tileFunction = [descriptor tileFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v13 = MTLGPUDebugSetValidationChecksOptions(self, tileFunction, 0, 0, label, shaderValidation, &optionsCopy2);
  v14 = [(MTLGPUDebugDevice *)self unwrapAndModifyTileRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy2];
  LOBYTE(v15) = v9;
  [*(self + 2) newRenderPipelineStateWithTileDescriptor:v14 options:MEMORY[0x277D85DD0] completionHandler:{3221225472, __88__MTLGPUDebugDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke, &unk_2787B3B30, descriptorCopy, self, v13, handler, optionsCopy2, v15}];
}

void __88__MTLGPUDebugDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 tileDescriptor:*(a1 + 32) reflection:a3 device:*(a1 + 40) pipelineOptions:*(a1 + 64)];
    [(MTLGPUDebugRenderPipelineState *)v5 setUID:*(a1 + 48)];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 72) == 1)
  {
    [(MTLGPUDebugRenderPipelineState *)v5 userReflection];
    v4 = v5;
  }

  else
  {
    v4 = v5;
    if ((*(*(a1 + 40) + 292) & 1) == 0)
    {
      [(MTLGPUDebugRenderPipelineState *)v5 releaseReflection];
      v4 = v5;
    }
  }

  v6 = v4;
  [*(a1 + 40) onRenderPipelineCreated:?];
  (*(*(a1 + 56) + 16))();
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  optionsCopy = options;
  optionsCopy2 = options;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  meshFunction = [descriptor meshFunction];
  fragmentFunction = [descriptor fragmentFunction];
  objectFunction = [descriptor objectFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v16 = MTLGPUDebugSetValidationChecksOptions(self, meshFunction, fragmentFunction, objectFunction, label, shaderValidation, &optionsCopy2);
  v17 = [(MTLGPUDebugDevice *)self unwrapAndModifyMeshRenderPipelineDescriptor:descriptor options:&optionsCopy2];
  v23 = 0;
  v18 = [*(self + 2) newRenderPipelineStateWithMeshDescriptor:v17 options:optionsCopy2 reflection:&v23 error:error];
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v20 = [MTLGPUDebugRenderPipelineState alloc];
  v21 = [(MTLGPUDebugRenderPipelineState *)v20 initWithRenderPipelineState:v19 meshDescriptor:descriptor unwrappedDescriptor:v17 reflection:v23 device:self pipelineOptions:optionsCopy2];

  [(MTLGPUDebugRenderPipelineState *)v21 setUID:v16];
  if (reflection && (*&optionsCopy & 0x40003) != 0)
  {
    *reflection = [(MTLGPUDebugRenderPipelineState *)v21 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLGPUDebugRenderPipelineState *)v21 releaseReflection];
  }

  [(MTLGPUDebugDevice *)self onRenderPipelineCreated:v21];
  return v21;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLGPUDebugDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLGPUDebugDevice *)self newRenderPipelineStateWithMeshDescriptor:descriptor options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  optionsCopy2 = options;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = (*&optionsCopy & 0x40003) != 0;
  meshFunction = [descriptor meshFunction];
  fragmentFunction = [descriptor fragmentFunction];
  objectFunction = [descriptor objectFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v15 = MTLGPUDebugSetValidationChecksOptions(self, meshFunction, fragmentFunction, objectFunction, label, shaderValidation, &optionsCopy2);
  v16 = [(MTLGPUDebugDevice *)self unwrapAndModifyMeshRenderPipelineDescriptor:descriptor options:&optionsCopy2];
  LOBYTE(v17) = v9;
  [*(self + 2) newRenderPipelineStateWithMeshDescriptor:MEMORY[0x277D85DD0] options:3221225472 completionHandler:{__88__MTLGPUDebugDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke, &unk_2787B3B08, descriptor, v16, self, v15, handler, optionsCopy2, v17}];
}

void __88__MTLGPUDebugDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 meshDescriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 72)];
    [(MTLGPUDebugRenderPipelineState *)v5 setUID:*(a1 + 56)];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 80) == 1)
  {
    [(MTLGPUDebugRenderPipelineState *)v5 userReflection];
    v4 = v5;
  }

  else
  {
    v4 = v5;
    if ((*(*(a1 + 48) + 292) & 1) == 0)
    {
      [(MTLGPUDebugRenderPipelineState *)v5 releaseReflection];
      v4 = v5;
    }
  }

  v6 = v4;
  [*(a1 + 48) onRenderPipelineCreated:?];
  (*(*(a1 + 64) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  optionsCopy = options;
  optionsCopy2 = options;
  descriptorCopy = descriptor;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  computeFunction = [descriptor computeFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  v14 = MTLGPUDebugSetValidationChecksOptions(self, computeFunction, 0, 0, label, shaderValidation, &optionsCopy2);
  v15 = [(MTLGPUDebugDevice *)self unwrapAndModifyComputePipelineDescriptor:&descriptorCopy options:&optionsCopy2];
  v21 = 0;
  v16 = [*(self + 2) newComputePipelineStateWithDescriptor:v15 options:optionsCopy2 reflection:&v21 error:error];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = [MTLGPUDebugComputePipelineState alloc];
  v19 = [(MTLGPUDebugComputePipelineState *)v18 initWithComputePipelineState:v17 descriptor:descriptorCopy unwrappedDescriptor:v15 reflection:v21 device:self pipelineOptions:optionsCopy2];

  [(MTLGPUDebugComputePipelineState *)v19 setUID:v14];
  if (reflection && (*&optionsCopy & 0x40003) != 0)
  {
    *reflection = [(MTLGPUDebugComputePipelineState *)v19 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLGPUDebugComputePipelineState *)v19 releaseReflection];
  }

  [(MTLGPUDebugDevice *)self onComputePipelineCreated:v19];
  return v19;
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__MTLGPUDebugDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = handler;
  [(MTLGPUDebugDevice *)self newComputePipelineStateWithDescriptor:descriptor options:0 completionHandler:v4];
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  computeFunction = [descriptor computeFunction];
  label = [descriptor label];
  shaderValidation = [descriptor shaderValidation];
  [descriptor shaderValidationState];
  MTLGPUDebugSetValidationChecksOptions(self, computeFunction, 0, 0, label, shaderValidation, &optionsCopy);
  [(MTLGPUDebugDevice *)self unwrapAndModifyComputePipelineDescriptor:&descriptorCopy options:&optionsCopy];
  [*(self + 2) newComputePipelineStateWithDescriptor:? options:? completionHandler:?];
}

void __85__MTLGPUDebugDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:a2 descriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 72)];
    [(MTLGPUDebugComputePipelineState *)v5 setUID:*(a1 + 56)];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 80) == 1)
  {
    [(MTLGPUDebugComputePipelineState *)v5 userReflection];
    v4 = v5;
  }

  else
  {
    v4 = v5;
    if ((*(*(a1 + 48) + 292) & 1) == 0)
    {
      [(MTLGPUDebugComputePipelineState *)v5 releaseReflection];
      v4 = v5;
    }
  }

  v6 = v4;
  [*(a1 + 48) onComputePipelineCreated:?];
  (*(*(a1 + 64) + 16))();
}

- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error
{
  v7 = objc_opt_new();
  [v7 setComputeFunction:function];
  v8 = [(MTLGPUDebugDevice *)self newComputePipelineStateWithDescriptor:v7 error:error];

  return v8;
}

- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler
{
  v7 = objc_opt_new();
  [v7 setComputeFunction:function];
  [(MTLGPUDebugDevice *)self newComputePipelineStateWithDescriptor:v7 completionHandler:handler];
}

- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  v9 = objc_opt_new();
  [v9 setComputeFunction:function];
  [(MTLGPUDebugDevice *)self newComputePipelineStateWithDescriptor:v9 options:options completionHandler:handler];
}

- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v11 = objc_opt_new();
  [v11 setComputeFunction:function];
  v12 = [(MTLGPUDebugDevice *)self newComputePipelineStateWithDescriptor:v11 options:options reflection:reflection error:error];

  return v12;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  if ((*(self + 287) & 0x20) != 0)
  {
    selfCopy = self;
    v10 = (self + 736);
    v14 = &selfCopy;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v17 = &v14;
      v16 = &v17;
      std::__call_once(v10, &v16, std::__call_once_proxy[abi:ne200100]<std::tuple<indirectCommandBufferPipelineInit(MTLGPUDebugDevice *)::$_0 &&>>);
    }

    v11 = [descriptor copy];
    [v11 setMaxVertexBufferBindCount:32];
    [v11 setMaxFragmentBufferBindCount:32];
    [v11 setMaxKernelBufferBindCount:32];
    [v11 setMaxMeshBufferBindCount:32];
    [v11 setMaxObjectBufferBindCount:32];
    [v11 setMaxToolsDispatchBindings:1];
    [v11 setSupportDynamicAttributeStride:1];
    0xFFFFFFFFFFFFFF0FLL = [*(self + 2) newIndirectCommandBufferWithDescriptor:v11 maxCommandCount:count options:options & 0xFFFFFFFFFFFFFF0FLL];
    v5 = [[MTLGPUDebugIndirectCommandBuffer alloc] initWithIndirectCommandBuffer:0xFFFFFFFFFFFFFF0FLL descriptor:descriptor maxCommandCount:count resourceOptions:options device:self];
  }

  else
  {
    MTLReportFailure();
    return 0;
  }

  return v5;
}

- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pipeline, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [pipeline countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(pipeline);
        }

        [v9 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "baseObject")}];
      }

      v11 = [pipeline countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v14 = *(self + 2);
  v15 = objc_opt_respondsToSelector();
  v16 = *(self + 2);
  if (v15)
  {
    v17 = [v16 newLibraryWithCIFiltersForComputePipeline:v9 imageFilterFunctionInfo:info error:error];
  }

  else
  {
    v17 = [v16 newLibraryWithCIFilters:v9 imageFilterFunctionInfo:info error:error];
  }

  v18 = v17;
  if (v17)
  {
    [v17 setShaderValidationEnabled:1];
    v19 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v18 device:self];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(i, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [i countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(i);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [i countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [*(self + 2) newLibraryWithImageFilterFunctionsSPI:v9 imageFilterFunctionInfo:info error:error];
  if (v14)
  {
    v15 = v14;
    [v14 setShaderValidationEnabled:1];
    v16 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v15 device:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(filters, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [filters countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(filters);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [filters countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [*(self + 2) newLibraryWithCIFilters:v9 imageFilterFunctionInfo:info error:error];
  if (v14)
  {
    v15 = v14;
    [v14 setShaderValidationEnabled:1];
    v16 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v15 device:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newDefaultLibrary
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newDefaultLibrary];
  if (result)
  {
    v4 = result;
    [result setShaderValidationEnabled:1];
    v5 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v4 device:self];

    return v5;
  }

  return result;
}

- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newDefaultLibraryWithBundle:bundle error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error
{
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:functions];
  if ([v8 count])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      [v8 setObject:objc_msgSend(objc_msgSend(v8 atIndexedSubscript:{"objectAtIndexedSubscript:", v9), "baseObject"), v9}];
      v9 = v10;
    }

    while ([v8 count] > v10++);
  }

  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v12 = [*(self + 2) newLibraryWithDAG:g functions:v8 error:error];
  if (v12)
  {
    v13 = v12;
    [v12 setShaderValidationEnabled:1];
    v14 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v13 device:self];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)unwrapStitchedLibraryDescriptor:(id)descriptor
{
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:{objc_msgSend(descriptor, "functions")}];
  if ([v4 count])
  {
    v5 = 0;
    v6 = 1;
    do
    {
      [v4 setObject:objc_msgSend(objc_msgSend(v4 atIndexedSubscript:{"objectAtIndexedSubscript:", v5), "baseObject"), v5}];
      v5 = v6;
    }

    while ([v4 count] > v6++);
  }

  [descriptor setFunctions:v4];

  return descriptor;
}

- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLGPUDebugDevice *)self unwrapStitchedLibraryDescriptor:descriptor];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithStitchedDescriptor:v6 error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLGPUDebugDevice *)self unwrapStitchedLibraryDescriptor:descriptor];
  v7 = *(self + 2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3768;
  v8[4] = self;
  v8[5] = handler;
  [v7 newLibraryWithStitchedDescriptor:v6 completionHandler:v8];
}

uint64_t __72__MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 setShaderValidationEnabled:1];
    [[MTLGPUDebugLibrary alloc] initWithLibrary:a2 device:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error
{
  v6 = [(MTLGPUDebugDevice *)self unwrapStitchedLibraryDescriptor:i];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithStitchedDescriptorSPI:v6 error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithFile:(id)file error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithFile:file error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithData:(id)data error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithData:data error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithURL:(id)l error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithURL:l error:error];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
{
  v8 = DebugCompileOptions(self, options);
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newLibraryWithSource:source options:v8 error:error];
  if (result)
  {
    v10 = result;
    [result setShaderValidationEnabled:1];
    v11 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v10 device:self];

    return v11;
  }

  return result;
}

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  v8 = DebugCompileOptions(self, options);
  v9 = *(self + 2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3768;
  v10[4] = self;
  v10[5] = handler;
  [v9 newLibraryWithSource:source options:v8 completionHandler:v10];
}

uint64_t __68__MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [[MTLGPUDebugLibrary alloc] initWithLibrary:a2 device:*(a1 + 32)];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  selfCopy = self;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v9 = [*(self + 2) newDynamicLibraryWithURL:l options:options | 2 error:error];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(self + 7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZZL18WrapDynamicLibraryIZ60__MTLGPUDebugDevice_newDynamicLibraryWithURL_options_error__E4__15EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v15[3] = &unk_2787B38F8;
  v15[4] = v10;
  v15[5] = &selfCopy;
  v12 = [v11 getCachedObjectForKey:v10 onMiss:v15];

  return v12;
}

- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  selfCopy = self;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v7 = [(MTLToolsDevice *)self unwrapMTLDynamicLibraryDescriptorSPI:descriptor];
  [v7 setOptions:{objc_msgSend(v7, "options") | 2}];
  v8 = [*(self + 2) newDynamicLibraryWithDescriptor:v7 error:error];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(self + 7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZZL18WrapDynamicLibraryIZ59__MTLGPUDebugDevice_newDynamicLibraryWithDescriptor_error__E4__16EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v14[3] = &unk_2787B38F8;
  v14[4] = v9;
  v14[5] = &selfCopy;
  v11 = [v10 getCachedObjectForKey:v9 onMiss:v14];

  return v11;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  selfCopy = self;
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  v7 = [*(self + 2) newDynamicLibrary:objc_msgSend(library error:{"baseObject"), error}];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(self + 7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZZL18WrapDynamicLibraryIZ45__MTLGPUDebugDevice_newDynamicLibrary_error__E4__17EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v13[3] = &unk_2787B38F8;
  v13[4] = v8;
  v13[5] = &selfCopy;
  v10 = [v9 getCachedObjectForKey:v8 onMiss:v13];

  return v10;
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit:descriptor];
  v16[0] = 0;
  v8 = [(MTLGPUDebugDevice *)self unwrapAndModifyComputePipelineDescriptor:&v14 options:v16];
  MTLDynamicLibraryLoadOptionsFromPipelineOptions();
  v9 = [*(self + 2) newDynamicLibrary:objc_msgSend(library computeDescriptor:"baseObject") error:{v8, error}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(self + 7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZZL18WrapDynamicLibraryIZ63__MTLGPUDebugDevice_newDynamicLibrary_computeDescriptor_error__E4__18EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v16[3] = &unk_2787B38F8;
  v16[4] = v10;
  v16[5] = &v15;
  v12 = [v11 getCachedObjectForKey:v10 onMiss:v16];

  return v12;
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor error:(id *)error
{
  computeFunction = [descriptor computeFunction];
  preloadedLibraries = [descriptor preloadedLibraries];

  return [(MTLGPUDebugDevice *)self loadDynamicLibrariesForFunction:computeFunction insertLibraries:preloadedLibraries options:0 error:error];
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  computeFunction = [descriptor computeFunction];
  preloadedLibraries = [descriptor preloadedLibraries];

  return [(MTLGPUDebugDevice *)self loadDynamicLibrariesForFunction:computeFunction insertLibraries:preloadedLibraries options:0 error:error];
}

- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  if (function)
  {
    context = objc_autoreleasePoolPush();
    if (libraries)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(libraries, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v12 = [libraries countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(libraries);
            }

            [v11 addObject:{objc_msgSend(*(*(&v35 + 1) + 8 * i), "baseObject")}];
          }

          v13 = [libraries countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = 0;
    }

    v17 = [*(self + 2) loadDynamicLibrariesForFunction:objc_msgSend(function insertLibraries:"baseObject") options:v11 error:{options | 2, error}];
    if (v17)
    {
      v18 = v17;
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            selfCopy = self;
            [(MTLGPUDebugDevice *)self instrumentationHeapInit];
            v24 = v23;
            if (v24)
            {
              v25 = v24;
              v26 = *(self + 7);
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = ___ZZL18WrapDynamicLibraryIZ83__MTLGPUDebugDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error__E4__19EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
              v40[3] = &unk_2787B38F8;
              v40[4] = v25;
              v40[5] = &selfCopy;
              v27 = [v26 getCachedObjectForKey:v25 onMiss:v40];
            }

            else
            {
              v27 = 0;
            }

            [v16 addObject:v27];
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v16 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v16 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugBinaryArchive alloc] initWithBinaryArchive:result device:self];

    return v7;
  }

  return result;
}

- (id)newArchiveWithURL:(id)l error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTL4ToolsArchive *)[MTL4GPUDebugArchive alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLGPUDebugBinaryArchive alloc] initWithBinaryArchive:result device:self];

    return v8;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  Handle = GPUDebugBufferDescriptorHeap::createHandle((self + 296));
  v8 = objc_opt_new();
  [v8 setLength:length];
  [v8 setPointerTag:Handle << 44];
  [v8 setResourceOptions:options];
  v9 = [*(self + 2) newBufferWithDescriptor:v8];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [[MTLGPUDebugBuffer alloc] initWithBuffer:v9 device:self];
  [(MTLGPUDebugBuffer *)v11 setBufferIndex:Handle];

  return v11;
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  Handle = GPUDebugBufferDescriptorHeap::createHandle((self + 296));
  v10 = objc_opt_new();
  [v10 setLength:length];
  [v10 setPointerTag:Handle << 44];
  [v10 setResourceOptions:options];
  v11 = [*(self + 2) newBufferWithDescriptor:v10];
  memcpy([v11 contents], bytes, length);
  if (!v11)
  {
    return 0;
  }

  v12 = [[MTLGPUDebugBuffer alloc] initWithBuffer:v11 device:self];
  [(MTLGPUDebugBuffer *)v12 setBufferIndex:Handle];

  return v12;
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit:copy];
  Handle = GPUDebugBufferDescriptorHeap::createHandle((self + 296));
  v11 = objc_opt_new();
  [v11 setLength:length];
  [v11 setPointerTag:Handle << 44];
  [v11 setResourceOptions:options];
  [v11 setNoCopy:1];
  [v11 setContents:copy];
  v12 = [*(self + 2) newBufferWithDescriptor:v11];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [[MTLGPUDebugBuffer alloc] initWithBuffer:v12 device:self];
  [(MTLGPUDebugBuffer *)v14 setBufferIndex:Handle];

  return v14;
}

- (id)newBufferWithIOSurface:(__IOSurface *)surface
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newBufferWithIOSurface:surface];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugBuffer alloc] initWithBuffer:result device:self];

    return v7;
  }

  return result;
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newBufferWithDescriptor:descriptor];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugBuffer alloc] initWithBuffer:result device:self];

    return v7;
  }

  return result;
}

- (id)newHeapWithDescriptor:(id)descriptor
{
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  result = [*(self + 2) newHeapWithDescriptor:descriptor];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugHeap alloc] initWithHeap:result descriptor:descriptor device:self];

    return v7;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v4 = [*(self + 2) newTextureWithDescriptor:descriptor];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v4)
  {
    return 0;
  }

  v5 = [[MTLGPUDebugTexture alloc] initWithTexture:v4 heap:0 device:self];

  return v5;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
{
  v6 = [*(self + 2) newTextureWithDescriptor:descriptor iosurface:iosurface plane:plane];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v6)
  {
    return 0;
  }

  v7 = [[MTLGPUDebugTexture alloc] initWithTexture:v6 heap:0 device:self];

  return v7;
}

- (id)newSharedTextureWithHandle:(id)handle
{
  v4 = [*(self + 2) newSharedTextureWithHandle:handle];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v4)
  {
    return 0;
  }

  v5 = [[MTLGPUDebugTexture alloc] initWithTexture:v4 heap:0 device:self];

  return v5;
}

- (id)newSharedTextureWithDescriptor:(id)descriptor
{
  v4 = [*(self + 2) newSharedTextureWithDescriptor:descriptor];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v4)
  {
    return 0;
  }

  v5 = [[MTLGPUDebugTexture alloc] initWithTexture:v4 heap:0 device:self];

  return v5;
}

- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index
{
  v5 = [*(self + 2) newSharedTextureWithHandle:handle withResourceIndex:index];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v5)
  {
    return 0;
  }

  v6 = [[MTLGPUDebugTexture alloc] initWithTexture:v5 heap:0 device:self];

  return v6;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
{
  v7 = [*(self + 2) newTextureWithDescriptor:descriptor iosurface:iosurface plane:plane slice:slice];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v7)
  {
    return 0;
  }

  v8 = [[MTLGPUDebugTexture alloc] initWithTexture:v7 heap:0 device:self];

  return v8;
}

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
{
  v7 = [*(self + 2) newTextureWithBytesNoCopy:copy length:length descriptor:descriptor deallocator:deallocator];
  [(MTLGPUDebugDevice *)self instrumentationHeapInit];
  if (!v7)
  {
    return 0;
  }

  v8 = [[MTLGPUDebugTexture alloc] initWithTexture:v7 heap:0 device:self];

  return v8;
}

- (id)newArgumentEncoderWithArguments:(id)arguments structType:(id *)type
{
  if ((*(self + 286) & 0x80) != 0)
  {
    if (type)
    {
      *type = MTLCreateStructTypeFromArgumentDescriptors();
    }

    return [(MTLGPUDebugDevice *)self newArgumentEncoderWithArguments:arguments];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLGPUDebugDevice;
    return [(MTLToolsDevice *)&v7 newArgumentEncoderWithArguments:arguments structType:type];
  }
}

- (id)newArgumentEncoderWithArguments:(id)arguments
{
  if ((*(self + 286) & 0x80) != 0)
  {
    v5 = [*(self + 2) newArgumentEncoderWithArguments:arguments];
    v6 = [[MTLGPUDebugArgumentEncoder alloc] initWithArgumentEncoder:v5 layout:0 device:self];

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLGPUDebugDevice;
    return [(MTLToolsDevice *)&v7 newArgumentEncoderWithArguments:arguments];
  }
}

- (void)validateRaytracing
{
  if (![(MTLGPUDebugDevice *)self supportsRaytracing])
  {
    [MTLGPUDebugDevice validateRaytracing];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  baseObject = [(MTLToolsObject *)self baseObject];
  result = unwrapAccelerationStructureDescriptor(a4);
  if (baseObject)
  {

    return [baseObject accelerationStructureSizesWithDescriptor:result];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  v5 = objc_autoreleasePoolPush();
  v6 = [*(self + 2) newAccelerationStructureWithSize:size];
  if (v6)
  {
    v7 = v6;
    v8 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v6 device:self];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  v5 = objc_autoreleasePoolPush();
  v6 = [*(self + 2) newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];
  if (v6)
  {
    v7 = v6;
    v8 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v6 device:self];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) newAccelerationStructureWithSize:size resourceIndex:index];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) newAccelerationStructureWithBuffer:objc_msgSend(buffer offset:{"baseObject"), offset}];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  v9 = objc_autoreleasePoolPush();
  v10 = [*(self + 2) newAccelerationStructureWithBuffer:objc_msgSend(buffer offset:"baseObject") resourceIndex:{offset, index}];
  if (v10)
  {
    v11 = v10;
    v12 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v10 device:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor
{
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) deserializePrimitiveAccelerationStructureFromBytes:bytes withDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self type:1];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(structures, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [structures countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(structures);
        }

        [v10 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v14++), "baseObject")}];
      }

      while (v12 != v14);
      v12 = [structures countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = [*(self + 2) deserializeInstanceAccelerationStructureFromBytes:bytes primitiveAccelerationStructures:v10 withDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];

  if (v15)
  {
    v16 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:v15 device:self type:2];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
{
  result = [*(self + 2) newAccelerationStructureWithSize:size withDescriptor:descriptor];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugAccelerationStructure alloc] initWithAccelerationStructure:result device:self];

    return v7;
  }

  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  result = [*(self + 2) newVisibleFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:descriptor device:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  [(MTLGPUDebugDevice *)self validateRaytracing];
  result = [*(self + 2) newIntersectionFunctionTableWithDescriptor:descriptor];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:self descriptor:descriptor];

    return v7;
  }

  return result;
}

- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [*(self + 2) newResidencySetWithDescriptor:descriptor error:error];
  if (v6)
  {
    v7 = [[MTLGPUDebugResidencySet alloc] initWithResidencySet:v6 device:self descriptor:descriptor];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsCMPIndirectCommandBuffers
{
  if ((*(self + 287) & 0x20) != 0)
  {
    return [*(self + 2) supportsCMPIndirectCommandBuffers];
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsRenderDynamicLibraries
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugDevice;
  supportsRenderDynamicLibraries = [(MTLToolsDevice *)&v6 supportsRenderDynamicLibraries];
  if (supportsRenderDynamicLibraries)
  {
    v5.receiver = self;
    v5.super_class = MTLGPUDebugDevice;
    LOBYTE(supportsRenderDynamicLibraries) = [(MTLToolsDevice *)&v5 supportsGlobalVariableRelocationRender];
  }

  return supportsRenderDynamicLibraries;
}

- (BOOL)supportsRaytracingFromRender
{
  if (*(self + 288))
  {
    return [*(self + 2) supportsRaytracingFromRender];
  }

  else
  {
    return 0;
  }
}

- (id)getDynamicLibraryForBaseObject:(id)object
{
  v3 = *(self + 7);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__MTLGPUDebugDevice_getDynamicLibraryForBaseObject___block_invoke;
  v5[3] = &unk_2787B3BA8;
  v5[4] = object;
  v5[5] = self;
  return [v3 getCachedObjectForKey:object onMiss:v5];
}

uint64_t __52__MTLGPUDebugDevice_getDynamicLibraryForBaseObject___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

- (id)getFunctionForBaseObject:(id)object library:(id)library
{
  v4 = *(self + 9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__MTLGPUDebugDevice_getFunctionForBaseObject_library___block_invoke;
  v6[3] = &unk_2787B3BD0;
  v6[4] = object;
  v6[5] = library;
  return [v4 getCachedObjectForKey:object onMiss:v6];
}

uint64_t __54__MTLGPUDebugDevice_getFunctionForBaseObject_library___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugFunction alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugFunction *)v2 initWithFunction:v3 library:v4];
}

- (id)newArgumentEncoderWithBufferBinding:(id)binding
{
  if ((*(self + 286) & 0x80) != 0)
  {
    result = [*(self + 2) newArgumentEncoderWithBufferBinding:binding];
    if (result)
    {
      v5 = result;
      v6 = [[MTLGPUDebugArgumentEncoder alloc] initWithArgumentEncoder:result layout:0 device:self];

      return v6;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLGPUDebugDevice;
    return [(MTLToolsDevice *)&v7 newArgumentEncoderWithBufferBinding:binding];
  }

  return result;
}

- (BOOL)areWritableHeapsEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areWritableHeapsEnabled];
}

- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTL4ToolsCompiler *)[MTL4GPUDebugCompiler alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 14) = 850045863;
  *(self + 27) = 0;
  *(self + 200) = 0u;
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 56) = -1;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 37) = 850045863;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 24) = 0u;
  *(self + 50) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 28) = xmmword_22E27C130;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 68) = 0;
  *(self + 138) = 1065353216;
  *(self + 73) = 850045863;
  *(self + 37) = 0u;
  *(self + 38) = 0u;
  *(self + 39) = 0u;
  *(self + 80) = 0;
  *(self + 81) = self + 648;
  *(self + 91) = 0;
  *(self + 82) = self + 648;
  *(self + 83) = 0;
  *(self + 92) = 0;
  return self;
}

- (void)initWithBaseObject:(uint64_t)a1 parent:.cold.2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*(a1 + 16) "name")];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end