@interface MTLLegacySVDevice
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3;
- (BOOL)areWritableHeapsEnabled;
- (BOOL)supportsCMPIndirectCommandBuffers;
- (BOOL)supportsRaytracingFromRender;
- (BOOL)supportsRenderDynamicLibraries;
- (MTLLegacySVDevice)initWithBaseObject:(id)a3 parent:(id)a4;
- (id).cxx_construct;
- (id)_modifyComputePipelineDescriptor:(id)a3 options:(unint64_t *)a4;
- (id)_modifyRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4;
- (id)_modifyTilePipelineDescriptor:(id)a3 options:(unint64_t *)a4;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4;
- (id)getDynamicLibraryForBaseObject:(id)a3;
- (id)getFunctionForBaseObject:(id)a3 library:(id)a4;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 error:(id *)a4;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)loadDynamicLibrariesForFunction:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 withDescriptor:(id)a4;
- (id)newArgumentEncoderWithArguments:(id)a3;
- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4;
- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4;
- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5;
- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6;
- (id)newBufferWithDescriptor:(id)a3;
- (id)newBufferWithIOSurface:(__IOSurface *)a3;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)a3;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3;
- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4;
- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5;
- (id)newDynamicLibrary:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newHeapWithDescriptor:(id)a3;
- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCommandCount:(unint64_t)a4 options:(unint64_t)a5;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithCIFiltersForComputePipeline:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithData:(id)a3 error:(id *)a4;
- (id)newLibraryWithFile:(id)a3 error:(id *)a4;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5;
- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4;
- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4;
- (id)newLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newModifyPluginData:(id)a3;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4;
- (id)newSharedTextureWithDescriptor:(id)a3;
- (id)newSharedTextureWithHandle:(id)a3;
- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (id)setGpuCompilerSPIOptionShaderValidation:(id)a3 options:(unint64_t)a4;
- (id)unwrapAndModifyComputePipelineDescriptor:(id *)a3 options:(unint64_t *)a4;
- (id)unwrapAndModifyMeshRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4;
- (id)unwrapAndModifyRenderPipelineDescriptor:(id *)a3 options:(unint64_t *)a4;
- (id)unwrapAndModifyTileRenderPipelineDescriptor:(id *)a3 options:(unint64_t *)a4;
- (id)unwrapStitchedLibraryDescriptor:(id)a3;
- (void)_modifyCompileOptions:(unint64_t *)a3;
- (void)_modifyMeshRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4;
- (void)_prepareBinaryLinkedFunctions:(id)a3;
- (void)_prepareInsertLibraries:(id)a3;
- (void)dealloc;
- (void)modifyFunctionDescriptor:(id)a3;
- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)onComputePipelineCreated:(id)a3;
- (void)onRenderPipelineCreated:(id)a3;
- (void)validateRaytracing;
@end

@implementation MTLLegacySVDevice

- (MTLLegacySVDevice)initWithBaseObject:(id)a3 parent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = MTLLegacySVDevice;
  v5 = [(MTLToolsDevice *)&v17 initWithBaseObject:a3 parent:a4];
  if (v5)
  {
    if (MTLLegacySVLog(void)::onceToken != -1)
    {
      LegacySVMetalBufferHeap::grow();
    }

    if (os_log_type_enabled(MTLLegacySVLog(void)::logObject, OS_LOG_TYPE_DEBUG))
    {
      [MTLLegacySVDevice initWithBaseObject:v5 parent:?];
    }

    *(v5 + 81) = [v5 newInternalBufferWithLength:1 options:256];
    *(v5 + 33) = 0x100000008;
    *(v5 + 68) = 3;
    *(v5 + 70) = 1;
    [a3 supportsFamily:1001];
    v6 = MTLGetEnvDefault();
    *(v5 + 69) = v6 != 0;
    v7 = (v5 + 284);
    v8 = 120403314;
    if (v6)
    {
      v8 = 119800958;
    }

    *v7 = v8 | *(v5 + 284) & 0xFFFFFFFFE8000200;
    v9 = [a3 supportsArgumentBuffersTier2];
    v10 = 0x1080000000;
    if (v9)
    {
      v10 = 0x10A0000000;
    }

    *v7 = v10 | *v7 & 0xFFFFFFEF5FFFFFFFLL;
    v11 = [a3 supportsRaytracing];
    v12 = 0x100000000;
    if (!v11)
    {
      v12 = 0;
    }

    *v7 = *v7 & 0xFFFFFFFEFFFFFFFFLL | v12;
    v13 = [a3 supportsFunctionPointers];
    v14 = 0x400000000;
    if (!v13)
    {
      v14 = 0;
    }

    *v7 = *v7 & 0xFFFFFFFBFFFFFFFFLL | v14;
    v5[292] &= ~1u;
    [objc_msgSend(v5 "baseObject")];
    operator new();
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  if (MTLLegacySVLog(void)::onceToken != -1)
  {
    MTLLegacySVLog();
  }

  if (os_log_type_enabled(MTLLegacySVLog(void)::logObject, OS_LOG_TYPE_DEBUG))
  {
    [(MTLGPUDebugDevice *)self dealloc];
  }

  v3.receiver = self;
  v3.super_class = MTLLegacySVDevice;
  [(MTLToolsDevice *)&v3 dealloc];
}

- (void)modifyFunctionDescriptor:(id)a3
{
  v5 = [a3 pipelineOptions];
  [(MTLLegacySVDevice *)self _modifyCompileOptions:&v5];
  [a3 setPipelineOptions:v5 & 0xFFFFFFFFFFFEFFFCLL];
}

- (void)_modifyCompileOptions:(unint64_t *)a3
{
  v3 = *a3;
  *a3 |= 0x1800003uLL;
  if ((*(self + 284) & 0x10) != 0)
  {
    *a3 = v3 | 0x11800003;
  }
}

- (id)newModifyPluginData:(id)a3
{
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v5 = v4;
  [v4 setObject:*(self + 84) forKeyedSubscript:@"MTLBoundsCheck::Options"];
  return v5;
}

- (void)_prepareBinaryLinkedFunctions:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 binaryFunctions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForBinaryFunctionUsage];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_prepareInsertLibraries:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForUsage];
      }

      while (v5 != v7);
      v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_modifyRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  [a3 setForceSoftwareVertexFetch:1];
  [objc_msgSend(a3 "vertexFunction")];
  [objc_msgSend(a3 "fragmentFunction")];
  -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 vertexLinkedFunctions]);
  -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 fragmentLinkedFunctions]);
  [objc_msgSend(a3 "meshFunction")];
  [objc_msgSend(a3 "objectFunction")];
  -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 meshLinkedFunctions]);
  -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 objectLinkedFunctions]);
  v7 = objc_autoreleasePoolPush();
  v8 = -[MTLLegacySVDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [a3 vertexFunction], objc_msgSend(a3, "vertexPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21)
  {
    goto LABEL_5;
  }

  v10 = v8;
  [a3 setVertexPreloadedLibraries:v8];
  [(MTLLegacySVDevice *)self _prepareInsertLibraries:v10];
  v11 = -[MTLLegacySVDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [a3 fragmentFunction], objc_msgSend(a3, "fragmentPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21)
  {
    goto LABEL_5;
  }

  v12 = v11;
  [a3 setFragmentPreloadedLibraries:v11];
  [(MTLLegacySVDevice *)self _prepareInsertLibraries:v12];
  v13 = -[MTLLegacySVDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [a3 meshFunction], objc_msgSend(a3, "meshPreloadedLibraries"), &v21);
  v9 = v21;
  if (v21 || (v14 = v13, [a3 setMeshPreloadedLibraries:v13], -[MTLLegacySVDevice _prepareInsertLibraries:](self, "_prepareInsertLibraries:", v14), v15 = -[MTLLegacySVDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", objc_msgSend(a3, "objectFunction"), objc_msgSend(a3, "objectPreloadedLibraries"), &v21), (v9 = v21) != 0))
  {
LABEL_5:
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v18 = v15;
    [a3 setObjectPreloadedLibraries:v15];
    [(MTLLegacySVDevice *)self _prepareInsertLibraries:v18];
    objc_autoreleasePoolPop(v7);
    v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
    v20 = [v19 bytes];
    *v20 = [a3 isAlphaToCoverageEnabled];
    *(v20 + 4) = [a3 maxVertexCallStackDepth];
    *(v20 + 8) = [a3 maxFragmentCallStackDepth];
    *(v20 + 12) = [a3 maxMeshCallStackDepth];
    *(v20 + 16) = [a3 maxObjectCallStackDepth];
    v22 = @"MTLBoundsCheck::RenderPipelineData";
    v23[0] = v19;
    [a3 setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];

    [a3 setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLLegacySVDevice setGpuCompilerSPIOptionShaderValidation:options:](self, "setGpuCompilerSPIOptionShaderValidation:options:", objc_msgSend(a3, "gpuCompilerSPIOptions"), *a4))}];
    v9 = v21;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)unwrapAndModifyRenderPipelineDescriptor:(id *)a3 options:(unint64_t *)a4
{
  *a3 = [*a3 copy];
  [(MTLLegacySVDevice *)self _modifyCompileOptions:a4];
  [(MTLLegacySVDevice *)self _modifyRenderPipelineDescriptor:*a3 options:a4];
  v7 = *a3;

  return [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:v7];
}

- (id)setGpuCompilerSPIOptionShaderValidation:(id)a3 options:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a3);
        }

        [v6 setObject:objc_msgSend(a3 forKey:{"objectForKeyedSubscript:", *(*(&v14 + 1) + 8 * v10)), *(*(&v14 + 1) + 8 * v10)}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((a4 & 0x800000000) != 0)
  {
    v11 = @"enable-shader-validation";
    goto LABEL_12;
  }

  if ((a4 & 0x1000000000) != 0)
  {
    v11 = @"disable-shader-validation";
LABEL_12:
    [v6 setObject:objc_msgSend(MEMORY[0x277CBEB68] forKey:{"null"), v11}];
  }

  result = v6;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_modifyComputePipelineDescriptor:(id)a3 options:(unint64_t *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  [objc_msgSend(a3 "computeFunction")];
  v7 = [(MTLLegacySVDevice *)self loadDynamicLibrariesForComputeDescriptor:a3 error:&v13];
  v8 = v7;
  if (v13)
  {
  }

  else
  {
    [a3 setPreloadedLibraries:v7];

    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    v10 = [v9 bytes];
    *v10 = [a3 maxCallStackDepth];
    v14 = @"MTLBoundsCheck::ComputePipelineData";
    v15[0] = v9;
    [a3 setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];

    -[MTLLegacySVDevice _prepareInsertLibraries:](self, "_prepareInsertLibraries:", [a3 preloadedLibraries]);
    -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 linkedFunctions]);
    [a3 setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLLegacySVDevice setGpuCompilerSPIOptionShaderValidation:options:](self, "setGpuCompilerSPIOptionShaderValidation:options:", objc_msgSend(a3, "gpuCompilerSPIOptions"), *a4))}];
  }

  result = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unwrapAndModifyComputePipelineDescriptor:(id *)a3 options:(unint64_t *)a4
{
  v7 = [*a3 copy];
  *a3 = v7;
  [(MTLLegacySVDevice *)self _modifyComputePipelineDescriptor:v7 options:a4];
  [(MTLLegacySVDevice *)self _modifyCompileOptions:a4];
  v8 = *a3;

  return [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:v8];
}

- (id)_modifyTilePipelineDescriptor:(id)a3 options:(unint64_t *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  [objc_msgSend(a3 "tileFunction")];
  -[MTLLegacySVDevice _prepareBinaryLinkedFunctions:](self, "_prepareBinaryLinkedFunctions:", [a3 linkedFunctions]);
  v7 = -[MTLLegacySVDevice loadDynamicLibrariesForFunction:insertLibraries:error:](self, "loadDynamicLibrariesForFunction:insertLibraries:error:", [a3 tileFunction], objc_msgSend(a3, "preloadedLibraries"), &v13);
  v8 = v7;
  if (v13)
  {
  }

  else
  {
    [a3 setPreloadedLibraries:v7];

    -[MTLLegacySVDevice _prepareInsertLibraries:](self, "_prepareInsertLibraries:", [a3 preloadedLibraries]);
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    v10 = [v9 bytes];
    *v10 = [a3 maxCallStackDepth];
    v14 = @"MTLBoundsCheck::ComputePipelineData";
    v15[0] = v9;
    [a3 setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];

    [a3 setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLLegacySVDevice setGpuCompilerSPIOptionShaderValidation:options:](self, "setGpuCompilerSPIOptionShaderValidation:options:", objc_msgSend(a3, "gpuCompilerSPIOptions"), *a4))}];
  }

  result = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unwrapAndModifyTileRenderPipelineDescriptor:(id *)a3 options:(unint64_t *)a4
{
  v7 = [*a3 copy];
  *a3 = v7;
  [(MTLLegacySVDevice *)self _modifyTilePipelineDescriptor:v7 options:a4];
  [(MTLLegacySVDevice *)self _modifyCompileOptions:a4];
  v8 = *a3;

  return [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:v8];
}

- (void)_modifyMeshRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
  v8 = [v7 bytes];
  *v8 = [a3 isAlphaToCoverageEnabled];
  v10 = @"MTLBoundsCheck::RenderPipelineData";
  v11[0] = v7;
  [a3 setPluginData:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];

  [a3 setGpuCompilerSPIOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithDictionary:", -[MTLLegacySVDevice setGpuCompilerSPIOptionShaderValidation:options:](self, "setGpuCompilerSPIOptionShaderValidation:options:", objc_msgSend(a3, "gpuCompilerSPIOptions"), *a4))}];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)unwrapAndModifyMeshRenderPipelineDescriptor:(id)a3 options:(unint64_t *)a4
{
  v6 = [a3 copy];
  [(MTLLegacySVDevice *)self _modifyCompileOptions:a4];
  [(MTLLegacySVDevice *)self _modifyMeshRenderPipelineDescriptor:v6 options:a4];

  return [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:v6];
}

- (void)onRenderPipelineCreated:(id)a3
{
  LogInstrumentationFailures([a3 vertexFunctionData], objc_msgSend(a3, "vertexDebugInstrumentationData"));
  LogInstrumentationFailures([a3 fragmentFunctionData], objc_msgSend(a3, "fragmentDebugInstrumentationData"));
  v4 = [a3 tileFunctionData];
  v5 = [a3 tileDebugInstrumentationData];

  LogInstrumentationFailures(v4, v5);
}

- (void)onComputePipelineCreated:(id)a3
{
  v4 = [a3 kernelFunctionData];
  v5 = [a3 debugInstrumentationData];

  LogInstrumentationFailures(v4, v5);
}

- (id)newCommandQueueWithDescriptor:(id)a3
{
  instrumentationHeapInit(self);
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLLegacySVCommandQueue alloc] initWithCommandQueue:v5 device:self];

  return v6;
}

- (id)newCommandQueue
{
  v3 = [MEMORY[0x277CD6CF8] commandQueueDescriptor];

  return [(MTLLegacySVDevice *)self newCommandQueueWithDescriptor:v3];
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277CD6CF8] commandQueueDescriptor];
  [v5 setMaxCommandBufferCount:a3];

  return [(MTLLegacySVDevice *)self newCommandQueueWithDescriptor:v5];
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v24 = a4;
  v25 = a3;
  instrumentationHeapInit(self);
  v11 = objc_autoreleasePoolPush();
  v12 = [a3 vertexFunction];
  v13 = [a3 fragmentFunction];
  v14 = [a3 label];
  v15 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v12, v13, 0, v14, v15, &v24);
  v16 = [(MTLLegacySVDevice *)self unwrapAndModifyRenderPipelineDescriptor:&v25 options:&v24];
  v23 = 0;
  v17 = [*(self + 2) newRenderPipelineStateWithDescriptor:v16 options:v24 reflection:&v23 error:a6];
  if (a6 && *a6)
  {
    v18 = *a6;
  }

  if (v17)
  {
    v19 = [MTLLegacySVRenderPipelineState alloc];
    v20 = [(MTLLegacySVRenderPipelineState *)v19 initWithRenderPipelineState:v17 descriptor:v25 unwrappedDescriptor:v16 reflection:v23 device:self pipelineOptions:v24];
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (a6 && *a6)
  {
    v21 = *a6;
  }

  if (v20)
  {
    if (a5 && (*&v8 & 0x40003) != 0)
    {
      *a5 = [(MTLLegacySVRenderPipelineState *)v20 userReflection];
    }

    else if ((*(self + 292) & 1) == 0)
    {
      [(MTLLegacySVRenderPipelineState *)v20 releaseReflection];
    }

    [(MTLLegacySVDevice *)self onRenderPipelineCreated:v20];
  }

  return v20;
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__MTLLegacySVDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = a4;
  [(MTLLegacySVDevice *)self newRenderPipelineStateWithDescriptor:a3 options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v18 = a4;
  v19 = a3;
  instrumentationHeapInit(self);
  v9 = (*&v6 & 0x40003) != 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [a3 vertexFunction];
  v12 = [a3 fragmentFunction];
  v13 = [a3 label];
  v14 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v11, v12, 0, v13, v14, &v18);
  v15 = [(MTLLegacySVDevice *)self unwrapAndModifyRenderPipelineDescriptor:&v19 options:&v18];
  v16 = *(self + 2);
  LOBYTE(v17) = v9;
  [v16 newRenderPipelineStateWithDescriptor:MEMORY[0x277D85DD0] options:3221225472 completionHandler:{__84__MTLLegacySVDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke, &unk_2787B3B30, v19, v15, self, a5, v18, v17}];
  objc_autoreleasePoolPop(v10);
}

uint64_t __84__MTLLegacySVDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[MTLLegacySVRenderPipelineState alloc] initWithRenderPipelineState:a2 descriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 64)];
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 72) == 1)
  {
    [(MTLLegacySVRenderPipelineState *)v4 userReflection];
  }

  else if ((*(*(a1 + 48) + 292) & 1) == 0)
  {
    [(MTLLegacySVRenderPipelineState *)v4 releaseReflection];
  }

  [*(a1 + 48) onRenderPipelineCreated:v4];
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v21 = a4;
  v22 = a3;
  instrumentationHeapInit(self);
  v11 = [a3 tileFunction];
  v12 = [a3 label];
  v13 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v11, 0, 0, v12, v13, &v21);
  v14 = [(MTLLegacySVDevice *)self unwrapAndModifyTileRenderPipelineDescriptor:&v22 options:&v21];
  v20 = 0;
  v15 = [*(self + 2) newRenderPipelineStateWithTileDescriptor:v14 options:v21 reflection:&v20 error:a6];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = [MTLLegacySVRenderPipelineState alloc];
  v18 = [(MTLLegacySVRenderPipelineState *)v17 initWithRenderPipelineState:v16 tileDescriptor:v22 reflection:v20 device:self pipelineOptions:v21];

  if (a5 && (*&v8 & 0x40003) != 0)
  {
    *a5 = [(MTLLegacySVRenderPipelineState *)v18 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLLegacySVRenderPipelineState *)v18 releaseReflection];
  }

  [(MTLLegacySVDevice *)self onRenderPipelineCreated:v18];
  return v18;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLLegacySVDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = a4;
  [(MTLLegacySVDevice *)self newRenderPipelineStateWithTileDescriptor:a3 options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v10 = a4;
  instrumentationHeapInit(self);
  v7 = [a3 tileFunction];
  v8 = [a3 label];
  v9 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v7, 0, 0, v8, v9, &v10);
  [*(self + 2) newRenderPipelineStateWithTileDescriptor:-[MTLLegacySVDevice unwrapAndModifyTileRenderPipelineDescriptor:options:](self options:"unwrapAndModifyTileRenderPipelineDescriptor:options:" completionHandler:{&v11, &v10)}];
}

void __88__MTLLegacySVDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[MTLLegacySVRenderPipelineState alloc] initWithRenderPipelineState:a2 tileDescriptor:*(a1 + 32) reflection:a3 device:*(a1 + 40) pipelineOptions:*(a1 + 56)];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (*(a1 + 64) == 1)
  {
    [(MTLLegacySVRenderPipelineState *)v4 userReflection];
  }

  else if ((*(*(a1 + 40) + 292) & 1) == 0)
  {
    [(MTLLegacySVRenderPipelineState *)v4 releaseReflection];
  }

  [*(a1 + 40) onRenderPipelineCreated:v5];
  (*(*(a1 + 48) + 16))();
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v23 = a4;
  instrumentationHeapInit(self);
  v11 = [a3 meshFunction];
  v12 = [a3 fragmentFunction];
  v13 = [a3 objectFunction];
  v14 = [a3 label];
  v15 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v11, v12, v13, v14, v15, &v23);
  v16 = [(MTLLegacySVDevice *)self unwrapAndModifyMeshRenderPipelineDescriptor:a3 options:&v23];
  v22 = 0;
  v17 = [*(self + 2) newRenderPipelineStateWithMeshDescriptor:v16 options:v23 reflection:&v22 error:a6];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = [MTLLegacySVRenderPipelineState alloc];
  v20 = [(MTLLegacySVRenderPipelineState *)v19 initWithRenderPipelineState:v18 meshDescriptor:a3 unwrappedDescriptor:v16 reflection:v22 device:self pipelineOptions:v23];

  if (a5 && (*&v8 & 0x40003) != 0)
  {
    *a5 = [(MTLLegacySVRenderPipelineState *)v20 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLLegacySVRenderPipelineState *)v20 releaseReflection];
  }

  [(MTLLegacySVDevice *)self onRenderPipelineCreated:v20];
  return v20;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLLegacySVDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = a4;
  [(MTLLegacySVDevice *)self newRenderPipelineStateWithMeshDescriptor:a3 options:0 completionHandler:v4];
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v12 = a4;
  instrumentationHeapInit(self);
  v7 = [a3 meshFunction];
  v8 = [a3 fragmentFunction];
  v9 = [a3 objectFunction];
  v10 = [a3 label];
  v11 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v7, v8, v9, v10, v11, &v12);
  [(MTLLegacySVDevice *)self unwrapAndModifyMeshRenderPipelineDescriptor:a3 options:&v12];
  [*(self + 2) newRenderPipelineStateWithMeshDescriptor:? options:? completionHandler:?];
}

void __88__MTLLegacySVDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[MTLLegacySVRenderPipelineState alloc] initWithRenderPipelineState:a2 meshDescriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 64)];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (*(a1 + 72) == 1)
  {
    [(MTLLegacySVRenderPipelineState *)v4 userReflection];
  }

  else if ((*(*(a1 + 48) + 292) & 1) == 0)
  {
    [(MTLLegacySVRenderPipelineState *)v4 releaseReflection];
  }

  [*(a1 + 48) onRenderPipelineCreated:v5];
  (*(*(a1 + 56) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v21 = a4;
  v22 = a3;
  instrumentationHeapInit(self);
  v11 = [a3 computeFunction];
  v12 = [a3 label];
  v13 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v11, 0, 0, v12, v13, &v21);
  v14 = [(MTLLegacySVDevice *)self unwrapAndModifyComputePipelineDescriptor:&v22 options:&v21];
  v20 = 0;
  v15 = [*(self + 2) newComputePipelineStateWithDescriptor:v14 options:v21 reflection:&v20 error:a6];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = [MTLLegacySVComputePipelineState alloc];
  v18 = [(MTLLegacySVComputePipelineState *)v17 initWithComputePipelineState:v16 descriptor:v22 unwrappedDescriptor:v14 reflection:v20 device:self pipelineOptions:v21];

  if (a5 && (*&v8 & 0x40003) != 0)
  {
    *a5 = [(MTLLegacySVComputePipelineState *)v18 userReflection];
  }

  else if ((*(self + 292) & 1) == 0)
  {
    [(MTLLegacySVComputePipelineState *)v18 releaseReflection];
  }

  [(MTLLegacySVDevice *)self onComputePipelineCreated:v18];
  return v18;
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__MTLLegacySVDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = a4;
  [(MTLLegacySVDevice *)self newComputePipelineStateWithDescriptor:a3 options:0 completionHandler:v4];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v16 = a3;
  v15 = a4;
  instrumentationHeapInit(self);
  v9 = (*&v6 & 0x40003) != 0;
  v10 = [a3 computeFunction];
  v11 = [a3 label];
  v12 = [a3 shaderValidation];
  [a3 shaderValidationState];
  MTLLegacySVSetValidationChecksOptions(self, v10, 0, 0, v11, v12, &v15);
  v13 = [(MTLLegacySVDevice *)self unwrapAndModifyComputePipelineDescriptor:&v16 options:&v15];
  LOBYTE(v14) = v9;
  [*(self + 2) newComputePipelineStateWithDescriptor:MEMORY[0x277D85DD0] options:3221225472 completionHandler:{__85__MTLLegacySVDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke, &unk_2787B4900, v16, v13, self, a5, v15, v14}];
}

void __85__MTLLegacySVDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[MTLLegacySVComputePipelineState alloc] initWithComputePipelineState:a2 descriptor:*(a1 + 32) unwrappedDescriptor:*(a1 + 40) reflection:a3 device:*(a1 + 48) pipelineOptions:*(a1 + 64)];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (*(a1 + 72) == 1)
  {
    [(MTLLegacySVComputePipelineState *)v4 userReflection];
  }

  else if ((*(*(a1 + 48) + 292) & 1) == 0)
  {
    [(MTLLegacySVComputePipelineState *)v4 releaseReflection];
  }

  [*(a1 + 48) onComputePipelineCreated:v5];
  (*(*(a1 + 56) + 16))();
}

- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  [v7 setComputeFunction:a3];
  v8 = [(MTLLegacySVDevice *)self newComputePipelineStateWithDescriptor:v7 error:a4];

  return v8;
}

- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4
{
  v7 = objc_opt_new();
  [v7 setComputeFunction:a3];
  [(MTLLegacySVDevice *)self newComputePipelineStateWithDescriptor:v7 completionHandler:a4];
}

- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = objc_opt_new();
  [v9 setComputeFunction:a3];
  [(MTLLegacySVDevice *)self newComputePipelineStateWithDescriptor:v9 options:a4 completionHandler:a5];
}

- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v11 = objc_opt_new();
  [v11 setComputeFunction:a3];
  v12 = [(MTLLegacySVDevice *)self newComputePipelineStateWithDescriptor:v11 options:a4 reflection:a5 error:a6];

  return v12;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCommandCount:(unint64_t)a4 options:(unint64_t)a5
{
  if ((*(self + 287) & 0x20) != 0)
  {
    indirectCommandBufferPipelineInit(self);
    v10 = [a3 copy];
    [v10 setMaxVertexBufferBindCount:31];
    [v10 setMaxFragmentBufferBindCount:31];
    [v10 setMaxKernelBufferBindCount:31];
    if (([v10 inheritPipelineState] & 1) == 0)
    {
      [v10 setInheritBuffers:0];
    }

    if (([v10 commandTypes] & 0x60) != 0)
    {
      [v10 setInheritBuffers:0];
    }

    v11 = [*(self + 2) newIndirectCommandBufferWithDescriptor:v10 maxCommandCount:a4 options:a5 & 0xFFFFFFFFFFFFFF0FLL];
    v12 = [[MTLLegacySVIndirectCommandBuffer alloc] initWithIndirectCommandBuffer:v11 descriptor:a3 maxCommandCount:a4 resourceOptions:a5 device:self];

    return v12;
  }

  else
  {
    MTLReportFailure();
    return 0;
  }
}

- (id)newLibraryWithCIFiltersForComputePipeline:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  instrumentationHeapInit(self);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v9 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "baseObject")}];
      }

      v11 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v14 = *(self + 2);
  v15 = objc_opt_respondsToSelector();
  v16 = *(self + 2);
  if (v15)
  {
    v17 = [v16 newLibraryWithCIFiltersForComputePipeline:v9 imageFilterFunctionInfo:a4 error:a5];
  }

  else
  {
    v17 = [v16 newLibraryWithCIFilters:v9 imageFilterFunctionInfo:a4 error:a5];
  }

  v18 = v17;
  if (v17)
  {
    [v17 setShaderValidationEnabled:1];
    v19 = [[MTLLegacySVLibrary alloc] initWithLibrary:v18 device:self];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  instrumentationHeapInit(self);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [*(self + 2) newLibraryWithImageFilterFunctionsSPI:v9 imageFilterFunctionInfo:a4 error:a5];
  if (v14)
  {
    v15 = v14;
    [v14 setShaderValidationEnabled:1];
    v16 = [[MTLLegacySVLibrary alloc] initWithLibrary:v15 device:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  instrumentationHeapInit(self);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [*(self + 2) newLibraryWithCIFilters:v9 imageFilterFunctionInfo:a4 error:a5];
  if (v14)
  {
    v15 = v14;
    [v14 setShaderValidationEnabled:1];
    v16 = [[MTLLegacySVLibrary alloc] initWithLibrary:v15 device:self];
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
  instrumentationHeapInit(self);
  result = [*(self + 2) newDefaultLibrary];
  if (result)
  {
    v4 = result;
    [result setShaderValidationEnabled:1];
    v5 = [[MTLLegacySVLibrary alloc] initWithLibrary:v4 device:self];

    return v5;
  }

  return result;
}

- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newDefaultLibraryWithBundle:a3 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5
{
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a4];
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

  instrumentationHeapInit(self);
  v12 = [*(self + 2) newLibraryWithDAG:a3 functions:v8 error:a5];
  if (v12)
  {
    v13 = v12;
    [v12 setShaderValidationEnabled:1];
    v14 = [[MTLLegacySVLibrary alloc] initWithLibrary:v13 device:self];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)unwrapStitchedLibraryDescriptor:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:{objc_msgSend(a3, "functions")}];
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

  [a3 setFunctions:v4];

  return a3;
}

- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLLegacySVDevice *)self unwrapStitchedLibraryDescriptor:a3];
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithStitchedDescriptor:v6 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLLegacySVDevice *)self unwrapStitchedLibraryDescriptor:a3];
  v7 = *(self + 2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__MTLLegacySVDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3768;
  v8[4] = self;
  v8[5] = a4;
  [v7 newLibraryWithStitchedDescriptor:v6 completionHandler:v8];
}

uint64_t __72__MTLLegacySVDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 setShaderValidationEnabled:1];
    [[MTLLegacySVLibrary alloc] initWithLibrary:a2 device:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4
{
  v6 = [(MTLLegacySVDevice *)self unwrapStitchedLibraryDescriptor:a3];
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithStitchedDescriptorSPI:v6 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithFile:(id)a3 error:(id *)a4
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithFile:a3 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithData:(id)a3 error:(id *)a4
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithData:a3 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithURL:(id)a3 error:(id *)a4
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithURL:a3 error:a4];
  if (result)
  {
    v8 = result;
    [result setShaderValidationEnabled:1];
    v9 = [[MTLLegacySVLibrary alloc] initWithLibrary:v8 device:self];

    return v9;
  }

  return result;
}

- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = DebugCompileOptions(self, a4);
  instrumentationHeapInit(self);
  result = [*(self + 2) newLibraryWithSource:a3 options:v8 error:a5];
  if (result)
  {
    v10 = result;
    [result setShaderValidationEnabled:1];
    v11 = [[MTLLegacySVLibrary alloc] initWithLibrary:v10 device:self];

    return v11;
  }

  return result;
}

- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = DebugCompileOptions(self, a4);
  v9 = *(self + 2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__MTLLegacySVDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3768;
  v10[4] = self;
  v10[5] = a5;
  [v9 newLibraryWithSource:a3 options:v8 completionHandler:v10];
}

uint64_t __68__MTLLegacySVDevice_newLibraryWithSource_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [[MTLLegacySVLibrary alloc] initWithLibrary:a2 device:*(a1 + 32)];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v14 = self;
  instrumentationHeapInit(self);
  v9 = [*(self + 2) newDynamicLibraryWithURL:a3 options:a4 | 2 error:a5];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(self + 7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZZL18WrapDynamicLibraryIZ60__MTLLegacySVDevice_newDynamicLibraryWithURL_options_error__E4__13EP25MTLLegacySVDynamicLibraryP17MTLLegacySVDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v15[3] = &unk_2787B38F8;
  v15[4] = v10;
  v15[5] = &v14;
  v12 = [v11 getCachedObjectForKey:v10 onMiss:v15];

  return v12;
}

- (id)newDynamicLibrary:(id)a3 error:(id *)a4
{
  v12 = self;
  instrumentationHeapInit(self);
  v7 = [*(self + 2) newDynamicLibrary:objc_msgSend(a3 error:{"baseObject"), a4}];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(self + 7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZZL18WrapDynamicLibraryIZ45__MTLLegacySVDevice_newDynamicLibrary_error__E4__14EP25MTLLegacySVDynamicLibraryP17MTLLegacySVDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v13[3] = &unk_2787B38F8;
  v13[4] = v8;
  v13[5] = &v12;
  v10 = [v9 getCachedObjectForKey:v8 onMiss:v13];

  return v10;
}

- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5
{
  v14 = a4;
  v15 = self;
  instrumentationHeapInit(self);
  v16[0] = 0;
  v8 = [(MTLLegacySVDevice *)self unwrapAndModifyComputePipelineDescriptor:&v14 options:v16];
  MTLDynamicLibraryLoadOptionsFromPipelineOptions();
  v9 = [*(self + 2) newDynamicLibrary:objc_msgSend(a3 computeDescriptor:"baseObject" error:{v14, v15), v8, a5}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(self + 7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZZL18WrapDynamicLibraryIZ63__MTLLegacySVDevice_newDynamicLibrary_computeDescriptor_error__E4__15EP25MTLLegacySVDynamicLibraryP17MTLLegacySVDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v16[3] = &unk_2787B38F8;
  v16[4] = v10;
  v16[5] = &v15;
  v12 = [v11 getCachedObjectForKey:v10 onMiss:v16];

  return v12;
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 error:(id *)a4
{
  v7 = [a3 computeFunction];
  v8 = [a3 preloadedLibraries];

  return [(MTLLegacySVDevice *)self loadDynamicLibrariesForFunction:v7 insertLibraries:v8 options:0 error:a4];
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 computeFunction];
  v9 = [a3 preloadedLibraries];

  return [(MTLLegacySVDevice *)self loadDynamicLibrariesForFunction:v8 insertLibraries:v9 options:0 error:a5];
}

- (id)loadDynamicLibrariesForFunction:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    context = objc_autoreleasePoolPush();
    if (a4)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v12 = [a4 countByEnumeratingWithState:&v35 objects:v42 count:16];
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
              objc_enumerationMutation(a4);
            }

            [v11 addObject:{objc_msgSend(*(*(&v35 + 1) + 8 * i), "baseObject")}];
          }

          v13 = [a4 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = 0;
    }

    v17 = [*(self + 2) loadDynamicLibrariesForFunction:objc_msgSend(a3 insertLibraries:"baseObject") options:v11 error:{a5 | 2, a6}];
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
            v39 = self;
            instrumentationHeapInit(self);
            v24 = v23;
            if (v24)
            {
              v25 = v24;
              v26 = *(self + 7);
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = ___ZZL18WrapDynamicLibraryIZ83__MTLLegacySVDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error__E4__16EP25MTLLegacySVDynamicLibraryP17MTLLegacySVDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
              v40[3] = &unk_2787B38F8;
              v40[4] = v25;
              v40[5] = &v39;
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

- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVBinaryArchive alloc] initWithBinaryArchive:result device:self];

    return v7;
  }

  return result;
}

- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLLegacySVBinaryArchive alloc] initWithBinaryArchive:result device:self];

    return v8;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newBufferWithLength:a3 options:a4];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVBuffer alloc] initWithBuffer:result device:self];

    return v9;
  }

  return result;
}

- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newBufferWithBytes:a3 length:a4 options:a5];
  if (result)
  {
    v10 = result;
    v11 = [[MTLLegacySVBuffer alloc] initWithBuffer:result device:self];

    return v11;
  }

  return result;
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newBufferWithBytesNoCopy:a3 length:a4 options:a5 deallocator:a6];
  if (result)
  {
    v12 = result;
    v13 = [[MTLLegacySVBuffer alloc] initWithBuffer:result device:self];

    return v13;
  }

  return result;
}

- (id)newBufferWithIOSurface:(__IOSurface *)a3
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newBufferWithIOSurface:a3];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVBuffer alloc] initWithBuffer:result device:self];

    return v7;
  }

  return result;
}

- (id)newBufferWithDescriptor:(id)a3
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newBufferWithDescriptor:a3];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVBuffer alloc] initWithBuffer:result device:self];

    return v7;
  }

  return result;
}

- (id)newHeapWithDescriptor:(id)a3
{
  instrumentationHeapInit(self);
  result = [*(self + 2) newHeapWithDescriptor:a3];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVHeap alloc] initWithHeap:result descriptor:a3 device:self];

    return v7;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3
{
  result = [*(self + 2) newTextureWithDescriptor:a3];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v6;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5
{
  result = [*(self + 2) newTextureWithDescriptor:a3 iosurface:a4 plane:a5];
  if (result)
  {
    v7 = result;
    v8 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v8;
  }

  return result;
}

- (id)newSharedTextureWithHandle:(id)a3
{
  result = [*(self + 2) newSharedTextureWithHandle:a3];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v6;
  }

  return result;
}

- (id)newSharedTextureWithDescriptor:(id)a3
{
  result = [*(self + 2) newSharedTextureWithDescriptor:a3];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v6;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5 slice:(unint64_t)a6
{
  result = [*(self + 2) newTextureWithDescriptor:a3 iosurface:a4 plane:a5 slice:a6];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v9;
  }

  return result;
}

- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6
{
  result = [*(self + 2) newTextureWithBytesNoCopy:a3 length:a4 descriptor:a5 deallocator:a6];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTexture:result heap:0 device:self];

    return v9;
  }

  return result;
}

- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4
{
  if ((*(self + 286) & 0x80) != 0)
  {
    if (a4)
    {
      *a4 = MTLCreateStructTypeFromArgumentDescriptors();
    }

    return [(MTLLegacySVDevice *)self newArgumentEncoderWithArguments:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLLegacySVDevice;
    return [(MTLToolsDevice *)&v7 newArgumentEncoderWithArguments:a3 structType:a4];
  }
}

- (id)newArgumentEncoderWithArguments:(id)a3
{
  if ((*(self + 286) & 0x80) != 0)
  {
    v5 = [a3 mutableCopy];
    if ([v5 count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = [v8 constantBlockAlignment] != 0;
        v10 = [v8 dataType];
        if ((v10 - 60) <= 0x3A && ((1 << (v10 - 60)) & 0x600000000000001) != 0)
        {
          [v8 setDataType:30];
        }

        v7 |= v9;
        ++v6;
      }

      while ([v5 count] > v6);
      if ((v7 & 1) != 0 && [v5 count])
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = v13 + 1;
          v15 = [v5 objectAtIndexedSubscript:v13];
          v16 = [v15 dataType];
          v17 = (v16 - 78) > 0x3D || ((1 << (v16 - 78)) & 0x2000000000000007) == 0;
          if (v17 && (v16 - 58) >= 3)
          {
            Alignment = [v15 constantBlockAlignment];
            [v15 setConstantBlockAlignment:0];
            if (!Alignment)
            {
              [v15 dataType];
              Alignment = MTLDataTypeGetAlignment();
            }

            v19 = (v12 + Alignment - 1) & -Alignment;
            v20 = v19 - v12;
            if (v19 != v12)
            {
              v21 = v19 - v12;
              do
              {
                v22 = objc_alloc_init(MEMORY[0x277CD6C70]);
                [v22 setDataType:45];
                [v22 setIndex:{objc_msgSend(v5, "count")}];
                [v5 insertObject:v22 atIndex:v13];

                ++v13;
                --v21;
              }

              while (v21);
              v14 += v20;
            }

            [v15 dataType];
            v12 = v19 + MTLDataTypeGetSize();
          }

          else
          {
            v12 = ((v12 + 7) & 0xFFFFFFF8) + 8;
          }

          v13 = v14;
        }

        while (v14 < [v5 count]);
      }
    }

    v23 = [*(self + 2) newArgumentEncoderWithArguments:v5];

    v24 = [[MTLLegacySVArgumentEncoder alloc] initWithArgumentEncoder:v23 layout:0 device:self];
    return v24;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = MTLLegacySVDevice;
    return [(MTLToolsDevice *)&v25 newArgumentEncoderWithArguments:a3];
  }
}

- (void)validateRaytracing
{
  if (![(MTLLegacySVDevice *)self supportsRaytracing])
  {
    [MTLLegacySVDevice validateRaytracing];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v7 = [(MTLToolsObject *)self baseObject];
  result = unwrapAccelerationStructureDescriptor(a4);
  if (v7)
  {

    return [v7 accelerationStructureSizesWithDescriptor:result];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v5 = objc_autoreleasePoolPush();
  v6 = [*(self + 2) newAccelerationStructureWithSize:a3];
  if (v6)
  {
    v7 = v6;
    v8 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v6 device:self];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v5 = objc_autoreleasePoolPush();
  v6 = [*(self + 2) newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(a3)];
  if (v6)
  {
    v7 = v6;
    v8 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v6 device:self];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) newAccelerationStructureWithSize:a3 resourceIndex:a4];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) newAccelerationStructureWithBuffer:objc_msgSend(a3 offset:{"baseObject"), a4}];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  v9 = objc_autoreleasePoolPush();
  v10 = [*(self + 2) newAccelerationStructureWithBuffer:objc_msgSend(a3 offset:"baseObject") resourceIndex:{a4, a5}];
  if (v10)
  {
    v11 = v10;
    v12 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v10 device:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [*(self + 2) deserializePrimitiveAccelerationStructureFromBytes:a3 withDescriptor:unwrapAccelerationStructureDescriptor(a4)];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v8 device:self type:1];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(a4);
        }

        [v10 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v14++), "baseObject")}];
      }

      while (v12 != v14);
      v12 = [a4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = [*(self + 2) deserializeInstanceAccelerationStructureFromBytes:a3 primitiveAccelerationStructures:v10 withDescriptor:unwrapAccelerationStructureDescriptor(a5)];

  if (v15)
  {
    v16 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:v15 device:self type:2];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 withDescriptor:(id)a4
{
  result = [*(self + 2) newAccelerationStructureWithSize:a3 withDescriptor:a4];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:result device:self];

    return v7;
  }

  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  result = [*(self + 2) newVisibleFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:a3 device:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  [(MTLLegacySVDevice *)self validateRaytracing];
  result = [*(self + 2) newIntersectionFunctionTableWithDescriptor:a3];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:self descriptor:a3];

    return v7;
  }

  return result;
}

- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [*(self + 2) newResidencySetWithDescriptor:a3 error:a4];
  if (v6)
  {
    v7 = [[MTLLegacySVResidencySet alloc] initWithResidencySet:v6 device:self descriptor:a3];
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
  v6.super_class = MTLLegacySVDevice;
  v3 = [(MTLToolsDevice *)&v6 supportsRenderDynamicLibraries];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = MTLLegacySVDevice;
    LOBYTE(v3) = [(MTLToolsDevice *)&v5 supportsGlobalVariableRelocationRender];
  }

  return v3;
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

- (id)getDynamicLibraryForBaseObject:(id)a3
{
  v3 = *(self + 7);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__MTLLegacySVDevice_getDynamicLibraryForBaseObject___block_invoke;
  v5[3] = &unk_2787B3BA8;
  v5[4] = a3;
  v5[5] = self;
  return [v3 getCachedObjectForKey:a3 onMiss:v5];
}

uint64_t __52__MTLLegacySVDevice_getDynamicLibraryForBaseObject___block_invoke(uint64_t a1)
{
  v2 = [MTLLegacySVDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLLegacySVDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

- (id)getFunctionForBaseObject:(id)a3 library:(id)a4
{
  v4 = *(self + 9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__MTLLegacySVDevice_getFunctionForBaseObject_library___block_invoke;
  v6[3] = &unk_2787B3BD0;
  v6[4] = a3;
  v6[5] = a4;
  return [v4 getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __54__MTLLegacySVDevice_getFunctionForBaseObject_library___block_invoke(uint64_t a1)
{
  v2 = [MTLLegacySVFunction alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLLegacySVFunction *)v2 initWithFunction:v3 library:v4];
}

- (BOOL)areWritableHeapsEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areWritableHeapsEnabled];
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
  *(self + 27) = xmmword_22E27C130;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 32) = 0u;
  *(self + 66) = 0;
  *(self + 134) = 1065353216;
  *(self + 70) = 850045863;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 600) = 0u;
  *(self + 77) = 0;
  *(self + 78) = self + 624;
  *(self + 86) = 0;
  *(self + 79) = self + 624;
  *(self + 80) = 0;
  *(self + 87) = 0;
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