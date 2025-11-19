@interface MTLCountersDevice
- (BOOL)areWritableHeapsEnabled;
- (MTLCountersDevice)initWithBaseObject:(id)a3 parent:(id)a4;
- (id)_newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6;
- (id)newBufferWithDescriptor:(id)a3;
- (id)newBufferWithIOSurface:(__IOSurface *)a3;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)a3;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3;
- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newDagStringWithGraphs:(id)a3;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4;
- (id)newDepthStencilStateWithDescriptor:(id)a3;
- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5;
- (id)newDynamicLibrary:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryFromURL:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newFence;
- (id)newFunctionWithGLCoreIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLCoreIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newFunctionWithGLESIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLESIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newHeapWithDescriptor:(id)a3;
- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithCIFiltersForComputePipeline:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithData:(id)a3 error:(id *)a4;
- (id)newLibraryWithFile:(id)a3 error:(id *)a4;
- (id)newLibraryWithGraphs:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithGraphsSPI:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5;
- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4;
- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4;
- (id)newLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newSamplerStateWithDescriptor:(id)a3;
- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5;
- (void)_newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation MTLCountersDevice

- (MTLCountersDevice)initWithBaseObject:(id)a3 parent:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLCountersDevice;
  v4 = [(MTLToolsDevice *)&v6 initWithBaseObject:a3 parent:a4];
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

- (id)newFunctionWithGLCoreIR:(void *)a3 functionType:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newFunctionWithGLCoreIR:a3 functionType:a4];
}

- (id)newFunctionWithGLCoreIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newFunctionWithGLCoreIR:a3 inputsDescription:a4 functionType:a5];
}

- (id)newFunctionWithGLESIR:(void *)a3 functionType:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newFunctionWithGLESIR:a3 functionType:a4];
}

- (id)newFunctionWithGLESIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newFunctionWithGLESIR:a3 inputsDescription:a4 functionType:a5];
}

- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newFunctionWithGLIR:a3 functionType:a4];
}

- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newFunctionWithGLIR:a3 inputsDescription:a4 functionType:a5];
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

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3
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

- (id)newCommandQueueWithDescriptor:(id)a3
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newFence];
}

- (id)newHeapWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newHeapWithDescriptor:a3];
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newBufferWithLength:a3 options:a4];
}

- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newBufferWithBytes:a3 length:a4 options:a5];
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newBufferWithBytesNoCopy:a3 length:a4 options:a5 deallocator:a6];
}

- (id)newBufferWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newBufferWithDescriptor:a3];
}

- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newTextureWithBytesNoCopy:a3 length:a4 descriptor:a5 deallocator:a6];
}

- (id)newDepthStencilStateWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newDepthStencilStateWithDescriptor:a3];
}

- (id)newTextureWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newTextureWithDescriptor:a3];
}

- (id)newSamplerStateWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newSamplerStateWithDescriptor:a3];
}

- (id)newDefaultLibrary
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newDefaultLibrary];
}

- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newDefaultLibraryWithBundle:a3 error:a4];
}

- (id)newLibraryWithFile:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLibraryWithFile:a3 error:a4];
}

- (id)newLibraryWithURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLibraryWithURL:a3 error:a4];
}

- (id)newLibraryWithData:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLibraryWithData:a3 error:a4];
}

- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithSource:a3 options:a4 error:a5];
}

- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 newLibraryWithSource:a3 options:a4 completionHandler:a5];
}

- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithDAG:a3 functions:a4 error:a5];
}

- (id)newLibraryWithGraphs:(id)a3 functions:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithGraphs:a3 functions:a4 error:a5];
}

- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLibraryWithStitchedDescriptor:a3 error:a4];
}

- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 newLibraryWithStitchedDescriptor:a3 completionHandler:a4];
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLibraryWithStitchedDescriptorSPI:a3 error:a4];
}

- (id)newLibraryWithGraphsSPI:(id)a3 functions:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithGraphsSPI:a3 functions:a4 error:a5];
}

- (id)newDagStringWithGraphs:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newDagStringWithGraphs:a3];
}

- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithCIFilters:a3 imageFilterFunctionInfo:a4 error:a5];
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithImageFilterFunctionsSPI:a3 imageFilterFunctionInfo:a4 error:a5];
}

- (id)newLibraryWithCIFiltersForComputePipeline:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newLibraryWithCIFiltersForComputePipeline:a3 imageFilterFunctionInfo:a4 error:a5];
}

- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newDynamicLibraryWithURL:a3 error:a4];
}

- (id)newDynamicLibrary:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newDynamicLibrary:a3 error:a4];
}

- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newDynamicLibrary:a3 computeDescriptor:a4 error:a5];
}

- (id)newDynamicLibraryFromURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newDynamicLibraryFromURL:a3 error:a4];
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newRenderPipelineStateWithDescriptor:a3 error:a4];
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newRenderPipelineStateWithDescriptor:a3 options:a4 reflection:a5 error:a6];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 newRenderPipelineStateWithDescriptor:a3 completionHandler:a4];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 newRenderPipelineStateWithDescriptor:a3 options:a4 completionHandler:a5];
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newComputePipelineStateWithDescriptor:a3 error:a4];
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newComputePipelineStateWithDescriptor:a3 options:a4 reflection:a5 error:a6];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 newComputePipelineStateWithDescriptor:a3 completionHandler:a4];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 newComputePipelineStateWithDescriptor:a3 options:a4 completionHandler:a5];
}

- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newComputePipelineStateWithFunction:a3 error:a4];
}

- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newComputePipelineStateWithFunction:a3 options:a4 reflection:a5 error:a6];
}

- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 newComputePipelineStateWithFunction:a3 completionHandler:a4];
}

- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 newComputePipelineStateWithFunction:a3 options:a4 completionHandler:a5];
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newComputePipelineStateWithImageFilterFunctionsSPI:a3 imageFilterFunctionInfo:a4 error:a5];
}

- (id)_newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v8 = 0;
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

- (void)_newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [a3 copy];
  v9 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:v8];
  v10 = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__MTLCountersDevice__newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3AE0;
  v11[4] = a5;
  [v10 newRenderPipelineStateWithTileDescriptor:v9 options:a4 completionHandler:v11];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__MTLCountersDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = a4;
  [(MTLCountersDevice *)self _newRenderPipelineStateWithTileDescriptor:a3 options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__MTLCountersDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = a5;
  [(MTLCountersDevice *)self _newRenderPipelineStateWithTileDescriptor:a3 options:a4 completionHandler:v5];
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newTextureWithDescriptor:a3 iosurface:a4 plane:a5];
}

- (id)newBufferWithIOSurface:(__IOSurface *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newBufferWithIOSurface:a3];
}

- (BOOL)areWritableHeapsEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areWritableHeapsEnabled];
}

@end