@interface MTLCountersDevice
- (BOOL)areWritableHeapsEnabled;
- (MTLCountersDevice)initWithBaseObject:(id)object parent:(id)parent;
- (id)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newDagStringWithGraphs:(id)graphs;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error;
- (id)newDepthStencilStateWithDescriptor:(id)descriptor;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryFromURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newFence;
- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithGraphs:(id)graphs functions:(id)functions error:(id *)error;
- (id)newLibraryWithGraphsSPI:(id)i functions:(id)functions error:(id *)error;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error;
- (id)newLibraryWithURL:(id)l error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newSamplerStateWithDescriptor:(id)descriptor;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (void)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)dealloc;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler;
- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler;
- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation MTLCountersDevice

- (MTLCountersDevice)initWithBaseObject:(id)object parent:(id)parent
{
  v6.receiver = self;
  v6.super_class = MTLCountersDevice;
  v4 = [(MTLToolsDevice *)&v6 initWithBaseObject:object parent:parent];
  if (v4)
  {
    v4->_APITimingEnabled = MTLGetEnvDefault() != 0;
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLCountersDevice;
  [(MTLToolsDevice *)&v2 dealloc];
}

- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLCoreIR:r functionType:type];
}

- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLCoreIR:r inputsDescription:description functionType:type];
}

- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLESIR:r functionType:type];
}

- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLESIR:r inputsDescription:description functionType:type];
}

- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLIR:r functionType:type];
}

- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFunctionWithGLIR:r inputsDescription:description functionType:type];
}

- (id)newCommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTLCountersCommandQueue alloc] initWithCommandQueue:result device:self];

    return v5;
  }

  return result;
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLCountersCommandQueue alloc] initWithCommandQueue:result device:self];

    return v6;
  }

  return result;
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLCountersCommandQueue alloc] initWithCommandQueue:result device:self];

    return v6;
  }

  return result;
}

- (id)newFence
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFence];
}

- (id)newHeapWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newHeapWithDescriptor:descriptor];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithLength:length options:options];
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithBytes:bytes length:length options:options];
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithBytesNoCopy:copy length:length options:options deallocator:deallocator];
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithDescriptor:descriptor];
}

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newTextureWithBytesNoCopy:copy length:length descriptor:descriptor deallocator:deallocator];
}

- (id)newDepthStencilStateWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDepthStencilStateWithDescriptor:descriptor];
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newTextureWithDescriptor:descriptor];
}

- (id)newSamplerStateWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newSamplerStateWithDescriptor:descriptor];
}

- (id)newDefaultLibrary
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDefaultLibrary];
}

- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDefaultLibraryWithBundle:bundle error:error];
}

- (id)newLibraryWithFile:(id)file error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithFile:file error:error];
}

- (id)newLibraryWithURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithURL:l error:error];
}

- (id)newLibraryWithData:(id)data error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithData:data error:error];
}

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithSource:source options:options error:error];
}

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newLibraryWithSource:source options:options completionHandler:handler];
}

- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithDAG:g functions:functions error:error];
}

- (id)newLibraryWithGraphs:(id)graphs functions:(id)functions error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithGraphs:graphs functions:functions error:error];
}

- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithStitchedDescriptor:descriptor error:error];
}

- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newLibraryWithStitchedDescriptor:descriptor completionHandler:handler];
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithStitchedDescriptorSPI:i error:error];
}

- (id)newLibraryWithGraphsSPI:(id)i functions:(id)functions error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithGraphsSPI:i functions:functions error:error];
}

- (id)newDagStringWithGraphs:(id)graphs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDagStringWithGraphs:graphs];
}

- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithCIFilters:filters imageFilterFunctionInfo:info error:error];
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithImageFilterFunctionsSPI:i imageFilterFunctionInfo:info error:error];
}

- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLibraryWithCIFiltersForComputePipeline:pipeline imageFilterFunctionInfo:info error:error];
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDynamicLibraryWithURL:l error:error];
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDynamicLibrary:library error:error];
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDynamicLibrary:library computeDescriptor:descriptor error:error];
}

- (id)newDynamicLibraryFromURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDynamicLibraryFromURL:l error:error];
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newRenderPipelineStateWithDescriptor:descriptor error:error];
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newRenderPipelineStateWithDescriptor:descriptor options:options reflection:reflection error:error];
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newRenderPipelineStateWithDescriptor:descriptor completionHandler:handler];
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newRenderPipelineStateWithDescriptor:descriptor options:options completionHandler:handler];
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineStateWithDescriptor:descriptor error:error];
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineStateWithDescriptor:descriptor options:options reflection:reflection error:error];
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newComputePipelineStateWithDescriptor:descriptor completionHandler:handler];
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newComputePipelineStateWithDescriptor:descriptor options:options completionHandler:handler];
}

- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineStateWithFunction:function error:error];
}

- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineStateWithFunction:function options:options reflection:reflection error:error];
}

- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newComputePipelineStateWithFunction:function completionHandler:handler];
}

- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject newComputePipelineStateWithFunction:function options:options completionHandler:handler];
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineStateWithImageFilterFunctionsSPI:i imageFilterFunctionInfo:info error:error];
}

- (id)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v8 = 0;
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (reflection)
  {
    *reflection = v8;
  }

  return result;
}

- (void)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v8 = [descriptor copy];
  v9 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:v8];
  baseObject = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__MTLCountersDevice__newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3AE0;
  v11[4] = handler;
  [baseObject newRenderPipelineStateWithTileDescriptor:v9 options:options completionHandler:v11];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLCountersDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLCountersDevice *)self _newRenderPipelineStateWithTileDescriptor:descriptor options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__MTLCountersDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = handler;
  [(MTLCountersDevice *)self _newRenderPipelineStateWithTileDescriptor:descriptor options:options completionHandler:v5];
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newTextureWithDescriptor:descriptor iosurface:iosurface plane:plane];
}

- (id)newBufferWithIOSurface:(__IOSurface *)surface
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithIOSurface:surface];
}

- (BOOL)areWritableHeapsEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areWritableHeapsEnabled];
}

@end