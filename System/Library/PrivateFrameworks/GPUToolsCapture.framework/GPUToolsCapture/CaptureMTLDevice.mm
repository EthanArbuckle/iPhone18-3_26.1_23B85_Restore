@interface CaptureMTLDevice
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)copyShaderCacheToPath:(id)path;
- (BOOL)newCaptureDepthStencilState:(id *)state associatedWithBaseDepthStencilState:(id)stencilState;
- (BOOL)newCaptureFunction:(id *)function associatedWithBaseFunction:(id)baseFunction captureLibrary:(id)library;
- (BOOL)newCaptureSamplerState:(id *)state associatedWithBaseSamplerState:(id)samplerState;
- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)supportsPrimitiveType:(unint64_t)type;
- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)count;
- (BOOL)supportsSampleCount:(unint64_t)count;
- (BOOL)supportsTextureSampleCount:(unint64_t)count;
- (CaptureMTLDevice)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (GTResourceDownloader)downloader;
- (MTLComputePipelineState)computePipelineCopyBuffer;
- (MTLComputePipelineState)computePipelineCopyIndirectCommandBuffer;
- (MTLFunction)computeFunctionCopyIndirectCommandBuffer;
- (MTLFunction)renderFunctionCopyIndirectCommandBuffer;
- (MTLRenderPipelineState)renderPipelineCopyBuffer;
- (MTLRenderPipelineState)renderPipelineCopyIndirectCommandBuffer;
- (NSString)description;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor;
- (id)dummyArgumentEncoder;
- (id)dummyEncodeComputePSOIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeICBIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:(id)index withMeshDescriptor:(id)descriptor;
- (id)dummyEncodeSamplerIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeTextureIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor;
- (id)functionHandleWithBinaryFunction:(id)function;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor error:(id *)error;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries error:(id *)error;
- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor;
- (id)newArchiveWithURL:(id)l error:(id *)error;
- (id)newArgumentEncoderWithArguments:(id)arguments;
- (id)newArgumentEncoderWithBufferBinding:(id)binding;
- (id)newArgumentEncoderWithLayout:(id)layout;
- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size;
- (id)newCommandAllocator;
- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count;
- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error;
- (id)newDepthStencilStateWithDescriptor:(id)descriptor;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryFromURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newEvent;
- (id)newEventWithOptions:(int64_t)options;
- (id)newFence;
- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIOFileHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error;
- (id)newIOFileHandleWithURL:(id)l error:(id *)error;
- (id)newIOHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error;
- (id)newIOHandleWithURL:(id)l error:(id *)error;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCount:(unint64_t)count options:(unint64_t)options;
- (id)newIndirectComputeCommandEncoderWithBuffer:(id)buffer;
- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newLateEvalEvent;
- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithDescriptorSPI:(id)i error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithMPSGraphPackageURL:(id)l name:(id)name error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error;
- (id)newLibraryWithURL:(id)l error:(id *)error;
- (id)newLogStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newPipelineDataSetSerializerWithDescriptor:(id)descriptor;
- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error;
- (id)newProfileWithExecutionSize:(unint64_t)size;
- (id)newRasterizationRateMapWithDescriptor:(id)descriptor;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error;
- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count;
- (id)newSamplerStateWithDescriptor:(id)descriptor;
- (id)newSharedEvent;
- (id)newSharedEventWithHandle:(id)handle;
- (id)newSharedEventWithMachPort:(unsigned int)port;
- (id)newSharedEventWithOptions:(int64_t)options;
- (id)newSharedTextureWithDescriptor:(id)descriptor;
- (id)newSharedTextureWithHandle:(id)handle;
- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (id)newTileRenderPipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (id)serializeTileRenderPipelineDescriptor:(id)descriptor;
- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)streamReference;
- (void)_initArgumentBufferPatchingTypes;
- (void)_initDummyEncoder;
- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor destinationBinaryArchive:(id)archive error:(id *)error;
- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor error:(id *)error;
- (void)convertSparsePixelRegions:(id *)regions toTileRegions:(id *)tileRegions withTileSize:(id *)size alignmentMode:(unint64_t)mode numRegions:(unint64_t)numRegions;
- (void)convertSparseTileRegions:(id *)regions toPixelRegions:(id *)pixelRegions withTileSize:(id *)size numRegions:(unint64_t)numRegions;
- (void)dealloc;
- (void)deallocateResource:(id)resource;
- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor;
- (void)invalidateHarvester;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler;
- (void)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler;
- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)purgeDeallocatedObjects;
- (void)setCommandBufferErrorOptions:(unint64_t)options;
- (void)touch;
- (void)unmapShaderSampleBuffer;
@end

@implementation CaptureMTLDevice

- (id)newCommandBuffer
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  add = atomic_fetch_add(&traceContext->var3, 1uLL);
  v21 = traceContext;
  s();
  v6 = v5;
  v7 = *v5;
  *v5 = add;
  *&v23 = v7;
  BYTE8(v23) = *(v5 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newCommandBuffer = [(MTLDeviceSPI *)self->_baseObject newCommandBuffer];
  if (newCommandBuffer)
  {
    v9 = [[CaptureMTL4CommandBuffer alloc] initWithBaseObject:newCommandBuffer captureDevice:self funcRef:0, add];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTL4CommandBuffer *)v9 parentStream]);
  v10 = v22;
  *(v22 + 8) = -15196;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  parentStream = [(CaptureMTL4CommandBuffer *)v9 parentStream];
  if (parentStream)
  {
    v18 = parentStream->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v6 = v23;
  *(v6 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  if ((dword_31F7C8 & 0x200) != 0)
  {
    v6 = [descriptorCopy copy];

    [v6 setCompressionType:0];
    [v6 setCompressionMode:2];
    descriptorCopy = v6;
  }

  v7 = [(MTLDeviceSPI *)self->_baseObject heapTextureSizeAndAlignWithDescriptor:descriptorCopy];
  v9 = v8;
  v10 = v23;
  *(v23 + 8) = -16112;
  v11 = BYTE9(v24);
  if (BYTE9(v24) > 0x20uLL)
  {
    v13 = *(*(&v22 + 1) + 24);
    v14 = BYTE10(v24);
    ++BYTE10(v24);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v23 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v24));
    BYTE9(v24) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = SaveMTLTextureDescriptor(&v22, descriptorCopy);
  *v12 = var0;
  *(v12 + 1) = v7;
  *(v12 + 2) = v9;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;

  v20 = v7;
  v21 = v9;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceContext = self->_traceContext;
  v31 = traceContext;
  *&v32 = 0;
  *(&v32 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v33 = v12;
  BYTE8(v33) = *(v10 + 8);
  *(&v33 + 9) = 16400;
  *(&v33 + 11) = 0;
  HIBYTE(v33) = 0;
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v16 = [(MTLDeviceSPI *)baseObject newAccelerationStructureWithBuffer:baseObject offset:offset resourceIndex:index];

  if (v16)
  {
    v17 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v16 captureDevice:self captureBuffer:bufferCopy];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLAccelerationStructure *)v17 traceStream]);
  v18 = v32;
  *(v32 + 8) = -15359;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x18uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 40;
  }

  *(v18 + 13) = v19;
  SaveMTLAccelerationStructureInfo(&v31, v16);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v17 traceStream];
  if (traceStream2)
  {
    v26 = traceStream2->var0;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v28 = *traceStream3;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = v28;
  *(v20 + 3) = offset;
  *(v20 + 4) = index;
  v29 = v32;
  *v11 = v33;
  *(v11 + 8) = BYTE8(v33);
  *(v29 + 15) |= 8u;

  return v17;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v31 = v10;
  BYTE8(v31) = *(v8 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v14 = [(MTLDeviceSPI *)baseObject newAccelerationStructureWithBuffer:baseObject offset:offset];

  if (v14)
  {
    v15 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v14 captureDevice:self captureBuffer:bufferCopy];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLAccelerationStructure *)v15 traceStream]);
  v16 = v30;
  *(v30 + 8) = -15464;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLAccelerationStructureInfo(&v29, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  v27 = v30;
  *v9 = v31;
  *(v9 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v15;
}

- (id)newHeapWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v31 = v8;
  BYTE8(v31) = *(v6 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  if ([descriptorCopy type] != &dword_0 + 2)
  {
    if ((dword_31F7C8 & 0x4000) != 0)
    {
      if (newHeapWithDescriptor__onceToken != -1)
      {
        dispatch_once(&newHeapWithDescriptor__onceToken, &__block_literal_global_1671);
      }

      v10 = [descriptorCopy copy];

      v13 = v10;
      v12 = 1;
    }

    else
    {
      if ((dword_31F7C8 & 0x8000) == 0)
      {
        goto LABEL_11;
      }

      if (newHeapWithDescriptor__onceToken_179 != -1)
      {
        dispatch_once(&newHeapWithDescriptor__onceToken_179, &__block_literal_global_181);
      }

      v10 = [descriptorCopy copy];

      [v10 setType:0];
      v11 = [v10 size];
      v12 = v11 * ((dword_31F7C8 >> 15) & 1);
      v13 = v10;
    }

    [v13 setSize:v12];
    descriptorCopy = v10;
  }

LABEL_11:
  if ([descriptorCopy type] >= 3)
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newHeapWithDescriptor", "MTLHeapType", "Requested heap type is not available", 0);
  }

  v14 = [(MTLDeviceSPI *)self->_baseObject newHeapWithDescriptor:descriptorCopy];
  if (v14)
  {
    v15 = [[CaptureMTLHeap alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLHeap *)v15 traceStream]);
  if (self->_bufferPinningEnabled && [descriptorCopy type] != &dword_0 + 2)
  {
    v16 = [descriptorCopy copy];

    [v16 setPinnedGPUAddress:{objc_msgSend(v14, "gpuAddress")}];
    descriptorCopy = v16;
  }

  v17 = v30;
  *(v30 + 8) = -16120;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x1800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLHeap *)v15 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLHeapDescriptor(&v29, descriptorCopy);
  *v19 = var0;
  *(v19 + 1) = v25;
  v19[16] = v26;
  *(v19 + 17) = 0;
  *(v19 + 5) = 0;
  v27 = v30;
  *v7 = v31;
  *(v7 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v15;
}

- (id)newSamplerStateWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(MTLDeviceSPI *)self->_baseObject newSamplerStateWithDescriptor:descriptorCopy];
  v25 = 0;
  if (v5 && ![(CaptureMTLDevice *)self newCaptureSamplerState:&v25 associatedWithBaseSamplerState:v5])
  {
    v6 = descriptorCopy;
  }

  else
  {
    v6 = [(CaptureMTLDevice *)self dummyEncodeSamplerIntoArgumentBufferForResourceIndex:v5 withDescriptor:descriptorCopy];

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    traceContext = self->_traceContext;
    [v25 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v22);
    v8 = v23;
    *(v23 + 8) = -16309;
    v9 = BYTE9(v24);
    if (BYTE9(v24) > 0x28uLL)
    {
      v11 = *(*(&v22 + 1) + 24);
      v12 = BYTE10(v24);
      ++BYTE10(v24);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v23 + 1), v12 | 0x1800000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v24));
      BYTE9(v24) += 24;
    }

    *(v8 + 13) = v9;
    SaveMTLSamplerStateInfo(&v22, v5);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v25 traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = SaveMTLSamplerDescriptor(&v22, v6);
    *v10 = var0;
    *(v10 + 1) = v16;
    v10[16] = v17;
    *(v10 + 17) = 0;
    *(v10 + 5) = 0;
    s();
    *v18 = v19;
    *(v18 + 8) = BYTE8(v24);
    *(v23 + 15) |= 8u;
  }

  v20 = v25;

  return v20;
}

- (id)newDepthStencilStateWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(MTLDeviceSPI *)self->_baseObject newDepthStencilStateWithDescriptor:descriptorCopy];
  v6 = v5;
  v25 = 0;
  if (v5)
  {
    if (![(CaptureMTLDevice *)self newCaptureDepthStencilState:&v25 associatedWithBaseDepthStencilState:v5])
    {
      goto LABEL_14;
    }

    v5 = v25;
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceContext = self->_traceContext;
  [v5 traceStream];
  GTTraceContext_pushEncoderWithStream(traceContext, &v22);
  v8 = v23;
  *(v23 + 8) = -16311;
  v9 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v11 = *(*(&v22 + 1) + 24);
    v12 = BYTE10(v24);
    ++BYTE10(v24);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v23 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v8 + 13) = v9;
  SaveMTLDepthStencilStateInfo(&v22, v6);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v25 traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  v17 = SaveMTLDepthStencilDescriptor(&v22, descriptorCopy);
  *v10 = var0;
  *(v10 + 1) = v16;
  v10[16] = v17;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
LABEL_14:
  v20 = v25;

  return v20;
}

- (id)newIOHandleWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newIOHandleWithURL:lCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLIOFileHandle alloc] initWithBaseObject:v12 captureContext:self->_traceContext];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLIOFileHandle *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15348;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOFileHandle *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveNSURL(&v26, lCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (void)unmapShaderSampleBuffer
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLDeviceSPI *)self->_baseObject unmapShaderSampleBuffer];
  v4 = v14;
  *(v14 + 8) = -16295;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor
{
  v3 = [(MTLDeviceSPI *)self->_baseObject tensorSizeAndAlignWithDescriptor:descriptor];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (BOOL)supportsTextureSampleCount:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLDeviceSPI *)self->_baseObject supportsTextureSampleCount:count];
  v7 = v18;
  *(v18 + 8) = -16166;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = count;
  *(v9 + 4) = v6;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (BOOL)supportsSampleCount:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLDeviceSPI *)self->_baseObject supportsSampleCount:count];
  v7 = v18;
  *(v18 + 8) = -16205;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = count;
  *(v9 + 4) = v6;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLDeviceSPI *)self->_baseObject supportsRasterizationRateMapWithLayerCount:count];
  v7 = v18;
  *(v18 + 8) = -15791;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = count;
  *(v9 + 4) = v6;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (id)serializeTileRenderPipelineDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v4 = unwrapMTLTileRenderPipelineDescriptor(descriptor);
  v5 = [(MTLDeviceSPI *)baseObject serializeTileRenderPipelineDescriptor:v4];

  return v5;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v4 = [descriptor copy];
  v5 = [(MTLDeviceSPI *)baseObject newVisibleFunctionTableWithDescriptor:v4];

  return v5;
}

- (id)newTileRenderPipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context
{
  baseObject = self->_baseObject;
  dataCopy = data;
  baseObject = [context baseObject];
  v8 = [(MTLDeviceSPI *)baseObject newTileRenderPipelineDescriptorWithSerializedData:dataCopy deserializationContext:baseObject];

  return v8;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newTextureWithDescriptor_iosurface_plane_slice", "IOSurface texture slices SPI", 0, 0);
  v11 = [(MTLDeviceSPI *)self->_baseObject newTextureWithDescriptor:descriptorCopy iosurface:iosurface plane:plane slice:slice];
  v12 = [(CaptureMTLDevice *)self dummyEncodeTextureIntoArgumentBufferForResourceIndex:v11 withDescriptor:descriptorCopy];

  if (v11)
  {
    v13 = [[CaptureMTLTexture alloc] initWithBaseObject:v11 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v32 = v12;
  BYTE8(v32) = *(v10 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newTextureWithDescriptor:descriptorCopy iosurface:iosurface plane:plane];
  v15 = [(CaptureMTLDevice *)self dummyEncodeTextureIntoArgumentBufferForResourceIndex:v14 withDescriptor:descriptorCopy];

  if (v14)
  {
    v16 = [[CaptureMTLTexture alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLTexture *)v16 traceStream]);
  v17 = v31;
  *(v31 + 8) = -16294;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v17 + 13) = v18;
  SaveMTLTextureInfo(&v30, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v16 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLTextureDescriptor(&v30, v15);
  v27 = SaveIOSurfaceRef(&v30, iosurface);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = plane;
  v19[24] = v26;
  v19[25] = v27;
  *(v19 + 26) = 0;
  *(v19 + 15) = 0;
  v28 = v31;
  *v11 = v32;
  *(v11 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v16;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = MTLDevice_newTextureWithDescriptor(self, descriptorCopy);
  v11 = [(CaptureMTLDevice *)self dummyEncodeTextureIntoArgumentBufferForResourceIndex:v10 withDescriptor:descriptorCopy];

  if (v10)
  {
    v12 = [[CaptureMTLTexture alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLTexture *)v12 traceStream]);
  v13 = v26;
  *(v26 + 8) = -16310;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLTextureInfo(&v25, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v12 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  v22 = SaveMTLTextureDescriptor(&v25, v11);
  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = 0;
  v15[24] = v22;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v12;
}

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
{
  deallocatorCopy = deallocator;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v38 = traceContext;
  *&v39 = 0;
  *(&v39 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v14 = v13;
  v15 = *v13;
  *v13 = v16;
  *&v40 = v15;
  BYTE8(v40) = *(v13 + 8);
  *(&v40 + 9) = 16400;
  *(&v40 + 11) = 0;
  HIBYTE(v40) = 0;
  v17 = [(MTLDeviceSPI *)self->_baseObject newTextureWithBytesNoCopy:copy length:length descriptor:descriptorCopy deallocator:deallocatorCopy];
  v18 = [(CaptureMTLDevice *)self dummyEncodeTextureIntoArgumentBufferForResourceIndex:v17 withDescriptor:descriptorCopy];

  if (v17)
  {
    v19 = [[CaptureMTLTexture alloc] initWithBaseObject:v17 captureDevice:self];
  }

  else
  {
    v19 = 0;
  }

  GTTraceEncoder_setStream(&v38, [(CaptureMTLTexture *)v19 traceStream]);
  v20 = v39;
  *(v39 + 8) = -16096;
  v21 = BYTE9(v40);
  if (BYTE9(v40) > 0x18uLL)
  {
    v23 = *(*(&v38 + 1) + 24);
    v37 = v19;
    lengthCopy = length;
    v25 = deallocatorCopy;
    v26 = v18;
    copyCopy = copy;
    v28 = BYTE10(v40);
    ++BYTE10(v40);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v39 + 1), v28 | 0x2800000000) + 16;
    v21 = v28;
    copy = copyCopy;
    v18 = v26;
    deallocatorCopy = v25;
    length = lengthCopy;
    v19 = v37;
  }

  else
  {
    v22 = (v20 + BYTE9(v40));
    BYTE9(v40) += 40;
  }

  *(v20 + 13) = v21;
  SaveMTLTextureInfo(&v38, v17);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v19 traceStream];
  if (traceStream2)
  {
    v32 = traceStream2->var0;
  }

  else
  {
    v32 = 0;
  }

  v33 = TransferBytes(&v38, copy, length);
  v34 = SaveMTLTextureDescriptor(&v38, v18);
  *v22 = var0;
  *(v22 + 1) = v32;
  *(v22 + 2) = length;
  *(v22 + 3) = deallocatorCopy;
  v22[32] = v33;
  v22[33] = v34;
  *(v22 + 34) = 0;
  *(v22 + 19) = 0;
  v35 = v39;
  *v14 = v40;
  *(v14 + 8) = BYTE8(v40);
  *(v35 + 15) |= 8u;

  return v19;
}

- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newTextureViewPoolWithDescriptor:descriptorCopy error:error];
  v13 = [descriptorCopy copy];

  v14 = DEVICEOBJECT(v12);
  [v13 setBaseResourceID:{objc_msgSend(v14, "baseResourceID")}];

  if (v12)
  {
    v15 = [[CaptureMTLTextureViewPool alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLTextureViewPool *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15189;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTextureViewPool *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTLResourceViewPoolDescriptor(&v28, v13);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newTensorWithDescriptor:descriptorCopy error:error];
  v13 = [descriptorCopy copy];

  v14 = DEVICEOBJECT(v12);
  [v13 setResourceIndex:{objc_msgSend(v14, "resourceIndex")}];

  if (v12)
  {
    v15 = [[CaptureMTLTensor alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLTensor *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -14959;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLTensorInfo(&v28, v12);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTensor *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTLTensorDescriptor(&v28, v13);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newResidencySetWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLResidencySet alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLResidencySet *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15245;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLResidencySet *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTLResidencySetDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newProfileWithExecutionSize:(unint64_t)size
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newProfileWithExecutionSize:?];
  if (v10)
  {
    v11 = [[CaptureMTLDeadlineProfile alloc] initWithBaseObject:v10 captureContext:self->_traceContext];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLDeadlineProfile *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -15317;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDeadlineProfile *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = size;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (id)newPipelineDataSetSerializerWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newPipelineDataSetSerializerWithDescriptor", "Metal 4 Device", 0, 0);
  v5 = [(MTLDeviceSPI *)self->_baseObject newPipelineDataSetSerializerWithDescriptor:descriptorCopy];

  if (v5)
  {
    v6 = [[CaptureMTL4PipelineDataSetSerializer alloc] initWithBaseObject:v5 captureContext:self->_traceContext];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newMTL4CommandQueueWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTL4CommandQueue alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTL4CommandQueue *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -14834;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4CommandQueue *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTL4CommandQueueDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newMTL4CommandQueue
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newMTL4CommandQueue = [(MTLDeviceSPI *)self->_baseObject newMTL4CommandQueue];
  if (newMTL4CommandQueue)
  {
    v9 = [[CaptureMTL4CommandQueue alloc] initWithBaseObject:newMTL4CommandQueue captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTL4CommandQueue *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -15190;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4CommandQueue *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newLogStateWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newLogStateWithDescriptor_error", "Shader logging", 0, 0);
  v7 = [(MTLDeviceSPI *)self->_baseObject newLogStateWithDescriptor:descriptorCopy error:error];

  if (v7)
  {
    v8 = [[CaptureMTLLogState alloc] initWithBaseObject:v7 captureContext:self->_traceContext];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error
{
  iCopy = i;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLStitchedLibraryDescriptorSPI(iCopy);
  v14 = [(MTLDeviceSPI *)baseObject newLibraryWithStitchedDescriptorSPI:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTLLibrary alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLLibrary *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15419;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLLibraryInfoWithPath(&v28, v14, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTLStitchedLibraryDescriptorSPI(&v28, iCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newLibraryWithMPSGraphPackageURL:(id)l name:(id)name error:(id *)error
{
  nameCopy = name;
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newLibraryWithMPSGraphPackageURL_name_error", "Metal 4 Device", 0, 0);
  v10 = [(MTLDeviceSPI *)self->_baseObject newLibraryWithMPSGraphPackageURL:lCopy name:nameCopy error:error];

  if (v10)
  {
    v11 = [[CaptureMTLLibrary alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newLibraryWithDescriptorSPI:(id)i error:(id *)error
{
  iCopy = i;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLStitchedLibraryDescriptorSPI(iCopy);
  v14 = [(MTLDeviceSPI *)baseObject newLibraryWithDescriptorSPI:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTLLibrary alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLLibrary *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15434;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLLibraryInfoWithPath(&v28, v14, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTLStitchedLibraryDescriptorSPI(&v28, iCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLStitchedLibraryDescriptor(descriptorCopy);
  v14 = [(MTLDeviceSPI *)baseObject newLibraryWithDescriptor:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTLLibrary alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLLibrary *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15435;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLLibraryInfoWithPath(&v28, v14, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTLStitchedLibraryDescriptor(&v28, descriptorCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newLibraryWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newLibraryWithData:dataCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLLibrary alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLLibrary *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -16306;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLLibraryInfoWithPath(&v26, v12, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = 0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RetainDebugObject(v12);
    v23 = 0;
  }

  else
  {
    v23 = SaveDispatchData_(&v26, dataCopy);
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newLateEvalEvent
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newLateEvalEvent = [(MTLDeviceSPI *)self->_baseObject newLateEvalEvent];
  if (newLateEvalEvent)
  {
    v9 = [[CaptureMTLLateEvalEvent alloc] initWithBaseObject:newLateEvalEvent captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTLLateEvalEvent *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -15496;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLateEvalEvent *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer
{
  baseObject = self->_baseObject;
  baseObject = [buffer baseObject];
  v5 = [(MTLDeviceSPI *)baseObject newIndirectRenderCommandEncoderWithBuffer:baseObject];

  return v5;
}

- (id)newIndirectComputeCommandEncoderWithBuffer:(id)buffer
{
  baseObject = self->_baseObject;
  baseObject = [buffer baseObject];
  v5 = [(MTLDeviceSPI *)baseObject newIndirectComputeCommandEncoderWithBuffer:baseObject];

  return v5;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCount:(unint64_t)count options:(unint64_t)options
{
  descriptorCopy = descriptor;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v30 = v12;
  BYTE8(v30) = *(v10 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newIndirectCommandBufferWithDescriptor:descriptorCopy maxCount:count options:options];
  if (v14)
  {
    v15 = [[CaptureMTLBuffer alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLBuffer *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15972;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x18uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 40;
  }

  *(v16 + 13) = v17;
  SaveMTLBufferInfo(&v28, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  v25 = SaveMTLIndirectCommandBufferDescriptor(&v28, descriptorCopy, self);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = count;
  *(v18 + 3) = options;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = v29;
  *v11 = v30;
  *(v11 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v31 = v12;
  BYTE8(v31) = *(v10 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newIndirectCommandBufferWithDescriptor:descriptorCopy maxCommandCount:count options:options];
  v15 = [(CaptureMTLDevice *)self dummyEncodeICBIntoArgumentBufferForResourceIndex:v14 withDescriptor:descriptorCopy];

  if (v14)
  {
    v16 = [[CaptureMTLIndirectCommandBuffer alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLIndirectCommandBuffer *)v16 traceStream]);
  v17 = v30;
  *(v30 + 8) = -15969;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x18uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 40;
  }

  *(v17 + 13) = v18;
  SaveMTLIndirectCommandBufferInfo(&v29, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIndirectCommandBuffer *)v16 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLIndirectCommandBufferDescriptor(&v29, v15, self);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = count;
  *(v19 + 3) = options;
  v19[32] = v26;
  *(v19 + 33) = 0;
  *(v19 + 9) = 0;
  v27 = v30;
  *v11 = v31;
  *(v11 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v16;
}

- (id)newIOHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error
{
  lCopy = l;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v30 = v12;
  BYTE8(v30) = *(v10 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newIOHandleWithURL:lCopy compressionMethod:method error:error];
  if (v14)
  {
    v15 = [[CaptureMTLIOFileHandle alloc] initWithBaseObject:v14 captureContext:self->_traceContext];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLIOFileHandle *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15296;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x18uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 40;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOFileHandle *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveNSURL(&v28, lCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = method;
  *(v18 + 3) = error;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = v29;
  *v11 = v30;
  *(v11 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newIOFileHandleWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newIOFileHandleWithURL:lCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLIOFileHandle alloc] initWithBaseObject:v12 captureContext:self->_traceContext];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLIOFileHandle *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15259;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOFileHandle *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveNSURL(&v26, lCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newIOFileHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error
{
  lCopy = l;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v30 = v12;
  BYTE8(v30) = *(v10 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newIOFileHandleWithURL:lCopy compressionMethod:method error:error];
  if (v14)
  {
    v15 = [[CaptureMTLIOFileHandle alloc] initWithBaseObject:v14 captureContext:self->_traceContext];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLIOFileHandle *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15260;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x18uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 40;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOFileHandle *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveNSURL(&v28, lCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = method;
  *(v18 + 3) = error;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = v29;
  *v11 = v30;
  *(v11 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newIOCommandQueueWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLIOCommandQueue alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLIOCommandQueue *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15350;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOCommandQueue *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTLIOCommandQueueDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newFence
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newFence = [(MTLDeviceSPI *)self->_baseObject newFence];
  if (newFence)
  {
    v9 = [[CaptureMTLFence alloc] initWithBaseObject:newFence captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTLFence *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -16128;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLFence *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newEvent
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newEvent = [(MTLDeviceSPI *)self->_baseObject newEvent];
  if (newEvent)
  {
    v9 = [[CaptureMTLEvent alloc] initWithBaseObject:newEvent captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTLEvent *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -15997;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLEvent *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v30 = v12;
  BYTE8(v30) = *(v10 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v14 = [(MTLDeviceSPI *)self->_baseObject newDynamicLibraryWithURL:lCopy options:options error:error];
  if (v14)
  {
    v15 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLDynamicLibrary *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15531;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x18uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 40;
  }

  *(v16 + 13) = v17;
  SaveMTLDynamicLibraryInfo(&v28, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDynamicLibrary *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveNSURL(&v28, lCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = options;
  *(v18 + 3) = error;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = v29;
  *v11 = v30;
  *(v11 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newDynamicLibraryWithURL:lCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLDynamicLibrary *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15613;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLDynamicLibraryInfo(&v26, v12);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDynamicLibrary *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveNSURL(&v26, lCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v5 = [(MTLDeviceSPI *)self->_baseObject newDynamicLibraryWithDescriptor:descriptor error:error];
  if (v5)
  {
    v6 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v5 captureDevice:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDynamicLibraryFromURL:(id)l error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newDynamicLibraryFromURL_error", "Dynamic Libraries", 0, 0);
  v7 = [(MTLDeviceSPI *)self->_baseObject newDynamicLibraryFromURL:lCopy error:error];

  if (v7)
  {
    v8 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v7 captureDevice:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v32 = v10;
  BYTE8(v32) = *(v8 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  baseObject = self->_baseObject;
  baseObject = [libraryCopy baseObject];
  v14 = [(MTLDeviceSPI *)baseObject newDynamicLibrary:baseObject error:error];

  if (v14)
  {
    v15 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v14 captureDevice:self captureLibrary:libraryCopy];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLDynamicLibrary *)v15 traceStream]);
  v16 = v31;
  *(v31 + 8) = -15695;
  v17 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v19 = *(*(&v30 + 1) + 24);
    v20 = BYTE10(v32);
    ++BYTE10(v32);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v31 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLDynamicLibraryInfo(&v30, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDynamicLibrary *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [libraryCopy traceStream];
  if (!traceStream3)
  {
    v26 = 0;
    if (error)
    {
      goto LABEL_15;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = *traceStream3;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  v27 = *error;
LABEL_18:
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = v27;
  v28 = v31;
  *v9 = v32;
  *(v9 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v15;
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  libraryCopy = library;
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newDynamicLibrary_computeDescriptor_error", "Dynamic Libraries SPI", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [libraryCopy baseObject];
  v12 = unwrapMTLComputePipelineDescriptor(descriptorCopy);

  v13 = [(MTLDeviceSPI *)baseObject newDynamicLibrary:baseObject computeDescriptor:v12 error:error];
  if (v13)
  {
    v14 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v13 captureDevice:self captureLibrary:libraryCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTL4CompilerDescriptor(descriptorCopy);
  v14 = [(MTLDeviceSPI *)baseObject newCompilerWithDescriptor:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTL4Compiler alloc] initWithBaseObject:v14 captureDevice:self descriptor:descriptorCopy];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTL4Compiler *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15194;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4Compiler *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTL4CompilerDescriptor(&v28, descriptorCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newCommandQueueWithMaxCommandBufferCount:?];
  if (v10)
  {
    v11 = [[CaptureMTLCommandQueue alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLCommandQueue *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -16315;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCommandQueue *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = count;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v28 = v8;
  BYTE8(v28) = *(v6 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  baseObject = self->_baseObject;
  v11 = unwrapMTLCommandQueueDescriptor(descriptorCopy);
  v12 = [(MTLDeviceSPI *)baseObject newCommandQueueWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLCommandQueue alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLCommandQueue *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -16165;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCommandQueue *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLCommandQueueDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  v16[16] = v23;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  v24 = v27;
  *v7 = v28;
  *(v7 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newCommandQueue
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newCommandQueue = [(MTLDeviceSPI *)self->_baseObject newCommandQueue];
  if (newCommandQueue)
  {
    v9 = [[CaptureMTLCommandQueue alloc] initWithBaseObject:newCommandQueue captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTLCommandQueue *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -16316;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCommandQueue *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newCommandAllocatorWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTL4CommandAllocator alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTL4CommandAllocator *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15197;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4CommandAllocator *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTL4CommandAllocatorDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newCommandAllocator
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  v21 = traceContext;
  *&v22 = 0;
  *(&v22 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v23 = v6;
  BYTE8(v23) = *(v4 + 8);
  *(&v23 + 9) = 16400;
  *(&v23 + 11) = 0;
  HIBYTE(v23) = 0;
  newCommandAllocator = [(MTLDeviceSPI *)self->_baseObject newCommandAllocator];
  if (newCommandAllocator)
  {
    v9 = [[CaptureMTL4CommandAllocator alloc] initWithBaseObject:newCommandAllocator captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v21, [(CaptureMTL4CommandAllocator *)v9 traceStream]);
  v10 = v22;
  *(v22 + 8) = -15198;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x30uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4CommandAllocator *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  v19 = v22;
  *v5 = v23;
  *(v5 + 8) = BYTE8(v23);
  *(v19 + 15) |= 8u;

  return v9;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newBufferWithLength_options_placementSparsePageSize", "Metal 4 Device", 0, 0);
  v9 = [(MTLDeviceSPI *)self->_baseObject newBufferWithLength:length options:options placementSparsePageSize:size];
  if (v9)
  {
    v10 = [[CaptureMTLBuffer alloc] initWithBaseObject:v9 captureDevice:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v29 = v12;
  BYTE8(v29) = *(v10 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v14 = [MTLDeviceSPI newBufferWithLength:"newBufferWithLength:options:gpuAddress:" options:? gpuAddress:?];
  if (v14)
  {
    v15 = [[CaptureMTLBuffer alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLBuffer *)v15 traceStream]);
  v16 = v28;
  *(v28 + 8) = -15705;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x18uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 40;
  }

  *(v16 + 13) = v17;
  SaveMTLBufferInfo(&v27, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = length;
  *(v18 + 3) = options;
  *(v18 + 4) = address;
  v25 = v28;
  *v11 = v29;
  *(v11 + 8) = BYTE8(v29);
  *(v25 + 15) |= 8u;

  return v15;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v27 = v10;
  BYTE8(v27) = *(v8 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v12 = [MTLDeviceSPI newBufferWithLength:"newBufferWithLength:options:" options:?];
  if (v12)
  {
    v13 = [[CaptureMTLBuffer alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLBuffer *)v13 traceStream]);
  v14 = v26;
  *(v26 + 8) = -16314;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x18uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 40;
  }

  *(v14 + 13) = v15;
  SaveMTLBufferInfo(&v25, v12);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = length;
  *(v16 + 3) = options;
  *(v16 + 4) = 0;
  v23 = v26;
  *v9 = v27;
  *(v9 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (id)newBufferWithIOSurface:(__IOSurface *)surface
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newBufferWithIOSurface:?];
  if (v10)
  {
    v11 = [[CaptureMTLBuffer alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLBuffer *)v11 traceStream]);
  v12 = v25;
  *(v25 + 8) = -16163;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  SaveMTLBufferInfo(&v24, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  v21 = SaveIOSurfaceRef(&v24, surface);
  *v14 = var0;
  *(v14 + 1) = v20;
  v14[16] = v21;
  *(v14 + 17) = 0;
  *(v14 + 5) = 0;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v11;
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address deallocator:(id)deallocator
{
  v8 = [(MTLDeviceSPI *)self->_baseObject newBufferWithBytesNoCopy:copy length:length options:options gpuAddress:address deallocator:deallocator];
  if (v8)
  {
    v9 = [[CaptureMTLBuffer alloc] initWithBaseObject:v8 captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  v36 = traceContext;
  *&v37 = 0;
  *(&v37 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v38 = v14;
  BYTE8(v38) = *(v12 + 8);
  *(&v38 + 9) = 16400;
  *(&v38 + 11) = 0;
  HIBYTE(v38) = 0;
  v16 = [MTLDeviceSPI newBufferWithBytes:"newBufferWithBytes:length:options:gpuAddress:" length:? options:? gpuAddress:?];
  if (v16)
  {
    v17 = [[CaptureMTLBuffer alloc] initWithBaseObject:v16 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v36, [(CaptureMTLBuffer *)v17 traceStream]);
  v18 = v37;
  *(v37 + 8) = -15707;
  v19 = BYTE9(v38);
  if (BYTE9(v38) > 0x10uLL)
  {
    v21 = *(*(&v36 + 1) + 24);
    v35 = v16;
    v22 = v17;
    lengthCopy = length;
    optionsCopy = options;
    addressCopy = address;
    bytesCopy = bytes;
    v27 = BYTE10(v38);
    ++BYTE10(v38);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v37 + 1), v27 | 0x3000000000) + 16;
    v19 = v27;
    bytes = bytesCopy;
    address = addressCopy;
    options = optionsCopy;
    length = lengthCopy;
    v17 = v22;
    v16 = v35;
  }

  else
  {
    v20 = (v18 + BYTE9(v38));
    BYTE9(v38) += 48;
  }

  *(v18 + 13) = v19;
  SaveMTLBufferInfo(&v36, v16);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v17 traceStream];
  if (traceStream2)
  {
    v31 = traceStream2->var0;
  }

  else
  {
    v31 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v36, bytes, length);
  }

  else
  {
    v32 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v31;
  *(v20 + 2) = length;
  *(v20 + 3) = options;
  *(v20 + 4) = address;
  v20[40] = v32;
  *(v20 + 41) = 0;
  *(v20 + 11) = 0;
  v33 = v37;
  *v13 = v38;
  *(v13 + 8) = BYTE8(v38);
  *(v33 + 15) |= 8u;

  return v17;
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v30 = v12;
  BYTE8(v30) = *(v10 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v14 = [MTLDeviceSPI newBufferWithBytes:"newBufferWithBytes:length:options:" length:? options:?];
  if (v14)
  {
    v15 = [[CaptureMTLBuffer alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLBuffer *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -16313;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x10uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x3000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 48;
  }

  *(v16 + 13) = v17;
  SaveMTLBufferInfo(&v28, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  v25 = TransferBytes(&v28, bytes, length);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = length;
  *(v18 + 3) = options;
  *(v18 + 4) = 0;
  v18[40] = v25;
  *(v18 + 41) = 0;
  *(v18 + 11) = 0;
  v26 = v29;
  *v11 = v30;
  *(v11 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error
{
  urlCopy = url;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newBinaryLibraryWithOptions_url_error", "Binary Linking", 0, 0);
  v9 = [(MTLDeviceSPI *)self->_baseObject newBinaryLibraryWithOptions:options url:urlCopy error:error];

  if (v9)
  {
    v10 = [[CaptureMTLBinaryArchive alloc] initWithBaseObject:v9 captureDevice:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newBinaryArchiveWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLBinaryArchive alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLBinaryArchive *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15717;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBinaryArchive *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v22 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v23 = *error;
LABEL_15:
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v23;
  *(v16 + 3) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newArgumentTableWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTL4ArgumentTable alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTL4ArgumentTable *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15200;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4ArgumentTable *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTL4ArgumentTableDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newArgumentEncoderWithLayout:(id)layout
{
  v4 = [(MTLDeviceSPI *)self->_baseObject newArgumentEncoderWithLayout:layout];
  if (v4)
  {
    v5 = [[CaptureMTLArgumentEncoder alloc] initWithBaseObject:v4 captureDevice:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newArchiveWithURL:(id)l error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newArchiveWithURL_error", "Metal 4 Device", 0, 0);
  v7 = [(MTLDeviceSPI *)self->_baseObject newArchiveWithURL:lCopy error:error];

  if (v7)
  {
    v8 = [[CaptureMTL4Archive alloc] initWithBaseObject:v7 captureContext:self->_traceContext];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = MTLDevice_newAccelerationStructureWithSize_withDescriptor(self, size, descriptorCopy);
  if (v12)
  {
    v13 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLAccelerationStructure *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15358;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLAccelerationStructureInfo(&v26, v12);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLAccelerationStructureAllocationDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = size;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v29 = v10;
  BYTE8(v29) = *(v8 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v14 = MTLDevice_newAccelerationStructureWithSize_resourceIndex(self, v12, v13);
  if (v14)
  {
    v15 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v14 captureDevice:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLAccelerationStructure *)v15 traceStream]);
  v16 = v28;
  *(v28 + 8) = -15506;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLAccelerationStructureInfo(&v27, v14);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = size;
  *(v18 + 3) = index;
  v25 = v28;
  *v9 = v29;
  *(v9 + 8) = BYTE8(v29);
  *(v25 + 15) |= 8u;

  return v15;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v11 = MTLDevice_newAccelerationStructureWithSize(self, v10);
  if (v11)
  {
    v12 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v11 captureDevice:self];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLAccelerationStructure *)v12 traceStream]);
  v13 = v25;
  *(v25 + 8) = -15614;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v13 + 13) = v14;
  SaveMTLAccelerationStructureInfo(&v24, v11);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v12 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = size;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v12;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = MTLDevice_newAccelerationStructureWithDescriptor(self, descriptorCopy);
  if (v10)
  {
    v11 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLAccelerationStructure *)v11 traceStream]);
  v12 = v25;
  *(v25 + 8) = -15615;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  SaveMTLAccelerationStructureInfo(&v24, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLAccelerationStructure *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  v21 = SaveMTLAccelerationStructureDescriptor(&v24, descriptorCopy);
  *v14 = var0;
  *(v14 + 1) = v20;
  v14[16] = v21;
  *(v14 + 17) = 0;
  *(v14 + 5) = 0;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v11;
}

- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLDeviceSPI *)self->_baseObject minLinearTextureAlignmentForPixelFormat:format];
  v7 = v18;
  *(v18 + 8) = -16093;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v6;
  *(v9 + 2) = format;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  v8 = [(MTLDeviceSPI *)self->_baseObject heapBufferSizeAndAlignWithLength:length options:options];
  v10 = v9;
  v11 = v23;
  *(v23 + 8) = -16111;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x18uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x2800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 40;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v8;
  *(v13 + 2) = v10;
  *(v13 + 3) = length;
  *(v13 + 4) = options;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
  v20 = v8;
  v21 = v10;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size
{
  v3 = [(MTLDeviceSPI *)self->_baseObject heapAccelerationStructureSizeAndAlignWithSize:size];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v4 = unwrapMTLAccelerationStructureDescriptor(descriptor);
  v5 = [(MTLDeviceSPI *)baseObject heapAccelerationStructureSizeAndAlignWithDescriptor:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_functionHandleWithFunction_resourceIndex", "Intersection Function Buffers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v9 = [(MTLDeviceSPI *)baseObject functionHandleWithFunction:baseObject resourceIndex:index];

  v13 = 0;
  if (v9)
  {
    [(CaptureMTLDevice *)self newFunctionHandle:&v13 associatedWithBaseFunctionHandle:v9 captureFunction:functionCopy];
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (id)functionHandleWithFunction:(id)function
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v7 = [(MTLDeviceSPI *)baseObject functionHandleWithFunction:baseObject];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLDevice *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:functionCopy];
  v9 = v30;
  if (v8)
  {
LABEL_5:
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    [v9 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v27);
    v12 = v28;
    *(v28 + 8) = -14835;
    v13 = BYTE9(v29);
    if (BYTE9(v29) > 0x28uLL)
    {
      v15 = *(*(&v27 + 1) + 24);
      v16 = BYTE10(v29);
      ++BYTE10(v29);
      v14 = GTTraceMemPool_allocateBytes(v15, *(&v28 + 1), v16 | 0x1800000000) + 16;
      v13 = v16;
    }

    else
    {
      v14 = (v12 + BYTE9(v29));
      BYTE9(v29) += 24;
    }

    *(v12 + 13) = v13;
    SaveMTLFunctionHandleInfo(&v27, v7);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v30 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    traceStream3 = [functionCopy traceStream];
    if (traceStream3)
    {
      v22 = *traceStream3;
    }

    else
    {
      v22 = 0;
    }

    *v14 = var0;
    *(v14 + 1) = v20;
    *(v14 + 2) = v22;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
    v10 = v30;
    goto LABEL_18;
  }

  v10 = v30;
LABEL_18:
  v25 = v10;

  return v25;
}

- (id)functionHandleWithBinaryFunction:(id)function
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_functionHandleWithBinaryFunction", "Metal 4 Device SPI", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v7 = [(MTLDeviceSPI *)baseObject functionHandleWithBinaryFunction:baseObject];

  return v7;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v7 = unwrapMTLAccelerationStructureDescriptor(descriptor);
  v8 = [(MTLDeviceSPI *)baseObject deserializePrimitiveAccelerationStructureFromBytes:bytes withDescriptor:v7];

  if (v8)
  {
    v9 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v8 captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  descriptorCopy = descriptor;
  v10 = unwrapNSArray(structures);
  v11 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);

  v12 = [(MTLDeviceSPI *)baseObject deserializeInstanceAccelerationStructureFromBytes:bytes primitiveAccelerationStructures:v10 withDescriptor:v11];
  if (v12)
  {
    v13 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)copyShaderCacheToPath:(id)path
{
  pathCopy = path;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(MTLDeviceSPI *)self->_baseObject copyShaderCacheToPath:pathCopy];
  v7 = v21;
  *(v21 + 8) = -15747;
  v8 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v10 = *(*(&v20 + 1) + 24);
    v11 = BYTE10(v22);
    ++BYTE10(v22);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v21 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [pathCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [pathCopy UTF8String];
    v16 = strlen([pathCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v20, uTF8String2, v16 + 1);
  }

  *v9 = var0;
  *(v9 + 2) = v6;
  v9[12] = uTF8String;
  *(v9 + 13) = 0;
  v9[15] = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;

  return v6;
}

- (void)convertSparseTileRegions:(id *)regions toPixelRegions:(id *)pixelRegions withTileSize:(id *)size numRegions:(unint64_t)numRegions
{
  baseObject = self->_baseObject;
  v7 = *size;
  [(MTLDeviceSPI *)baseObject convertSparseTileRegions:regions toPixelRegions:pixelRegions withTileSize:&v7 numRegions:numRegions];
}

- (void)convertSparsePixelRegions:(id *)regions toTileRegions:(id *)tileRegions withTileSize:(id *)size alignmentMode:(unint64_t)mode numRegions:(unint64_t)numRegions
{
  baseObject = self->_baseObject;
  v8 = *size;
  [(MTLDeviceSPI *)baseObject convertSparsePixelRegions:regions toTileRegions:tileRegions withTileSize:&v8 alignmentMode:mode numRegions:numRegions];
}

- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_compileVisibleFunction_withDescriptor_error", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v11 = unwrapMTLFunctionDescriptor(descriptorCopy);

  [(MTLDeviceSPI *)baseObject compileVisibleFunction:baseObject withDescriptor:v11 error:error];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  baseObject = self->_baseObject;
  v6 = unwrapMTLAccelerationStructureDescriptor(a4);
  v7 = v6;
  if (baseObject)
  {
    v9 = v6;
    v6 = [(MTLDeviceSPI *)baseObject accelerationStructureSizesWithDescriptor:v6];
    v7 = v9;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return _objc_release_x1(v6, v7);
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result maxThreadsPerThreadgroup];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- (void)setCommandBufferErrorOptions:(unint64_t)options
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLDeviceSPI *)self->_baseObject setCommandBufferErrorOptions:options];
  v6 = v16;
  *(v16 + 8) = -15698;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = options;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLDevice;
  v3 = [(CaptureMTLDevice *)&v7 description];
  v4 = [(MTLDeviceSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (id)newArgumentEncoderWithBufferBinding:(id)binding
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bindingCopy = binding;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newArgumentEncoderWithBufferBinding:bindingCopy];

  if (v10)
  {
    v11 = [[CaptureMTLArgumentEncoder alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLArgumentEncoder *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -15261;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = 0;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (id)newSharedEventWithOptions:(int64_t)options
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newSharedEventWithOptions", "Event with options", 0, 0);
  v5 = [(MTLDeviceSPI *)self->_baseObject newSharedEventWithOptions:options];
  if (v5)
  {
    v6 = [[CaptureMTLSharedEvent alloc] initWithBaseObject:v5 captureDevice:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newEventWithOptions:(int64_t)options
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newEventWithOptions", "Event with options", 0, 0);
  v5 = [(MTLDeviceSPI *)self->_baseObject newEventWithOptions:options];
  if (v5)
  {
    v6 = [[CaptureMTLEvent alloc] initWithBaseObject:v5 captureDevice:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  structuresCopy = structures;
  structureCopy = structure;
  GTTraceContext_pushEncoderWithStream(traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v17 = unwrapNSArray(structuresCopy);
  v18 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLDeviceSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject fromBytes:bytes primitiveAccelerationStructures:v17 withDescriptor:v18];

  v19 = copyAndNullifyReferencesInAccelerationStructureDescriptor(descriptorCopy);
  [structureCopy setDescriptor:v19];

  v20 = *(bytes + 1);
  v21 = v35;
  *(v35 + 8) = -15363;
  v22 = BYTE9(v36);
  if (BYTE9(v36) > 0x28uLL)
  {
    v24 = *(*(&v34 + 1) + 24);
    v25 = BYTE10(v36);
    ++BYTE10(v36);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v35 + 1), v25 | 0x1800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v36));
    BYTE9(v36) += 24;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  v29 = TransferBytes(&v34, bytes, v20);
  v30 = StreamMTLNameArray(&v34, structuresCopy);

  v31 = SaveMTLAccelerationStructureDescriptor(&v34, descriptorCopy);
  *v23 = var0;
  *(v23 + 1) = traceStream2;
  v23[16] = v29;
  v23[17] = v30;
  v23[18] = v31;
  *(v23 + 19) = 0;
  v23[23] = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  structureCopy = structure;
  GTTraceContext_pushEncoderWithStream(traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v14 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLDeviceSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBytes:bytes withDescriptor:v14];

  v15 = copyAndNullifyReferencesInAccelerationStructureDescriptor(descriptorCopy);
  [structureCopy setDescriptor:v15];

  v16 = *(bytes + 1);
  v17 = v30;
  *(v30 + 8) = -15362;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x1800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  v25 = TransferBytes(&v29, bytes, v16);
  v26 = SaveMTLAccelerationStructureDescriptor(&v29, descriptorCopy);

  *v19 = var0;
  *(v19 + 1) = traceStream2;
  v19[16] = v25;
  v19[17] = v26;
  *(v19 + 18) = 0;
  *(v19 + 11) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)compileVisibleFunction:(id)function withDescriptor:(id)descriptor destinationBinaryArchive:(id)archive error:(id *)error
{
  descriptorCopy = descriptor;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  archiveCopy = archive;
  functionCopy = function;
  GTTraceContext_pushEncoderWithStream(traceContext, &v35);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v17 = unwrapMTLFunctionDescriptor(descriptorCopy);
  baseObject2 = [archiveCopy baseObject];
  [(MTLDeviceSPI *)baseObject compileVisibleFunction:baseObject withDescriptor:v17 destinationBinaryArchive:baseObject2 error:error];

  v19 = v36;
  *(v36 + 8) = -15475;
  v20 = BYTE9(v37);
  if (BYTE9(v37) > 0x18uLL)
  {
    v22 = *(*(&v35 + 1) + 24);
    v23 = BYTE10(v37);
    ++BYTE10(v37);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v36 + 1), v23 | 0x2800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v37));
    BYTE9(v37) += 40;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [functionCopy traceStream];
  if (traceStream2)
  {
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  traceStream3 = [archiveCopy traceStream];

  if (!traceStream3)
  {
    v29 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v30 = 0;
    goto LABEL_15;
  }

  v29 = *traceStream3;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v30 = *error;
LABEL_15:
  functionConstantsDictionary = [functionCopy functionConstantsDictionary];

  v32 = SaveMTLFunctionDescriptor(&v35, descriptorCopy, functionConstantsDictionary);
  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = v29;
  *(v21 + 3) = v30;
  v21[32] = v32;
  *(v21 + 33) = 0;
  *(v21 + 9) = 0;

  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v10 = unwrapMTLStitchedLibraryDescriptor(v7);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __71__CaptureMTLDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v14[3] = &unk_2F19E8;
  v15 = selfCopy;
  v16 = v7;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = v7;
  v13 = selfCopy;
  [(MTLDeviceSPI *)baseObject newLibraryWithStitchedDescriptor:v10 completionHandler:v14];
}

void __71__CaptureMTLDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [CaptureMTLLibrary alloc];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) functions];
    v10 = [(CaptureMTLLibrary *)v7 initWithBaseObject:v5 captureDevice:v8 captureFunctions:v9];
  }

  else
  {
    v10 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v11 = [*(a1 + 32) traceContext];
  [(CaptureMTLLibrary *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v11, &v24);
  v12 = v25;
  *(v25 + 8) = -15421;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v12 + 13) = v13;
  SaveMTLLibraryInfoWithPath(&v24, v5, 0);
  v17 = [*(a1 + 32) traceStream];
  if (v17)
  {
    v18 = *v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(CaptureMTLLibrary *)v10 traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = SaveMTLStitchedLibraryDescriptor(&v24, *(a1 + 40));
  *v14 = v18;
  *(v14 + 1) = var0;
  *(v14 + 2) = 0;
  v14[24] = v21;
  *(v14 + 25) = 0;
  *(v14 + 7) = 0;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v32 = v10;
  BYTE8(v32) = *(v8 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLStitchedLibraryDescriptor(descriptorCopy);
  v14 = [(MTLDeviceSPI *)baseObject newLibraryWithStitchedDescriptor:v13 error:error];

  if (v14)
  {
    v15 = [CaptureMTLLibrary alloc];
    functions = [descriptorCopy functions];
    v17 = [(CaptureMTLLibrary *)v15 initWithBaseObject:v14 captureDevice:self captureFunctions:functions];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLLibrary *)v17 traceStream]);
  v18 = v31;
  *(v31 + 8) = -15420;
  v19 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v21 = *(*(&v30 + 1) + 24);
    v22 = BYTE10(v32);
    ++BYTE10(v32);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v31 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v18 + 13) = v19;
  SaveMTLLibraryInfoWithPath(&v30, v14, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v17 traceStream];
  if (!traceStream2)
  {
    v26 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v26 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v27 = SaveMTLStitchedLibraryDescriptor(&v30, descriptorCopy);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = error;
  v20[24] = v27;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v28 = v31;
  *v9 = v32;
  *(v9 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v17;
}

- (void)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v10 = unwrapMTLStitchedLibraryDescriptor(v7);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __63__CaptureMTLDevice_newLibraryWithDescriptor_completionHandler___block_invoke;
  v14[3] = &unk_2F19E8;
  v15 = selfCopy;
  v16 = v7;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = v7;
  v13 = selfCopy;
  [(MTLDeviceSPI *)baseObject newLibraryWithDescriptor:v10 completionHandler:v14];
}

void __63__CaptureMTLDevice_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[CaptureMTLLibrary alloc] initWithBaseObject:v5 captureDevice:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v8 = [*(a1 + 32) traceContext];
  [(CaptureMTLLibrary *)v7 traceStream];
  GTTraceContext_pushEncoderWithStream(v8, &v21);
  v9 = v22;
  *(v22 + 8) = -15425;
  v10 = BYTE9(v23);
  if (BYTE9(v23) > 0x20uLL)
  {
    v12 = *(*(&v21 + 1) + 24);
    v13 = BYTE10(v23);
    ++BYTE10(v23);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v22 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v23));
    BYTE9(v23) += 32;
  }

  *(v9 + 13) = v10;
  SaveMTLLibraryInfoWithPath(&v21, v5, 0);
  v14 = [*(a1 + 32) traceStream];
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CaptureMTLLibrary *)v7 traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = SaveMTLStitchedLibraryDescriptor(&v21, *(a1 + 40));
  *v11 = v15;
  *(v11 + 1) = var0;
  *(v11 + 2) = 0;
  v11[24] = v18;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newBufferWithDescriptor:descriptorCopy];
  if (v10)
  {
    v11 = [[CaptureMTLBuffer alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLBuffer *)v11 traceStream]);
  if ([descriptorCopy contents])
  {
    v12 = TransferBytes(&v25, [descriptorCopy contents], objc_msgSend(descriptorCopy, "length"));
  }

  else
  {
    v12 = 0;
  }

  v13 = v26;
  *(v26 + 8) = -15509;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v13 + 13) = v14;
  SaveMTLBufferInfo(&v25, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLBuffer *)v11 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  v22 = SaveMTLBufferDescriptor(&v25, descriptorCopy);
  *v15 = var0;
  *(v15 + 1) = v21;
  v15[16] = v22;
  v15[17] = v12;
  *(v15 + 18) = 0;
  *(v15 + 11) = 0;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v11;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newIntersectionFunctionTableWithDescriptor", "Ray Tracing", 0, 0);
  v5 = [(MTLDeviceSPI *)self->_baseObject newIntersectionFunctionTableWithDescriptor:descriptorCopy];
  if (v5)
  {
    v6 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v5 captureDevice:self descriptor:descriptorCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error
{
  librariesCopy = libraries;
  baseObject = self->_baseObject;
  baseObject = [function baseObject];
  v13 = unwrapNSArray(librariesCopy);
  v14 = [(MTLDeviceSPI *)baseObject loadDynamicLibrariesForFunction:baseObject insertLibraries:v13 options:options error:error];

  v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
  if ([v14 count])
  {
    v16 = 0;
    do
    {
      v17 = [v14 objectAtIndexedSubscript:v16];
      if (v17)
      {
        v18 = [CaptureMTLDynamicLibrary alloc];
        v19 = [v14 objectAtIndexedSubscript:v16];
        v20 = [(CaptureMTLDynamicLibrary *)v18 initWithBaseObject:v19 captureDevice:self];
        [v15 setObject:v20 atIndexedSubscript:v16];
      }

      else
      {
        [v15 setObject:0 atIndexedSubscript:v16];
      }

      ++v16;
    }

    while ([v14 count] > v16);
  }

  return v15;
}

- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries error:(id *)error
{
  librariesCopy = libraries;
  baseObject = self->_baseObject;
  baseObject = [function baseObject];
  v11 = unwrapNSArray(librariesCopy);
  v12 = [(MTLDeviceSPI *)baseObject loadDynamicLibrariesForFunction:baseObject insertLibraries:v11 error:error];

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  if ([v12 count])
  {
    v14 = 0;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      if (v15)
      {
        v16 = [CaptureMTLDynamicLibrary alloc];
        v17 = [v12 objectAtIndexedSubscript:v14];
        v18 = [(CaptureMTLDynamicLibrary *)v16 initWithBaseObject:v17 captureDevice:self];
        [v13 setObject:v18 atIndexedSubscript:v14];
      }

      else
      {
        [v13 setObject:0 atIndexedSubscript:v14];
      }

      ++v14;
    }

    while ([v12 count] > v14);
  }

  return v13;
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  baseObject = self->_baseObject;
  v9 = unwrapMTLComputePipelineDescriptor(descriptor);
  v10 = [(MTLDeviceSPI *)baseObject loadDynamicLibrariesForComputeDescriptor:v9 options:options error:error];

  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v10 count])
  {
    v12 = 0;
    do
    {
      v13 = [v10 objectAtIndexedSubscript:v12];
      if (v13)
      {
        v14 = [CaptureMTLDynamicLibrary alloc];
        v15 = [v10 objectAtIndexedSubscript:v12];
        v16 = [(CaptureMTLDynamicLibrary *)v14 initWithBaseObject:v15 captureDevice:self];
        [v11 setObject:v16 atIndexedSubscript:v12];
      }

      else
      {
        [v11 setObject:0 atIndexedSubscript:v12];
      }

      ++v12;
    }

    while ([v10 count] > v12);
  }

  return v11;
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor error:(id *)error
{
  baseObject = self->_baseObject;
  v7 = unwrapMTLComputePipelineDescriptor(descriptor);
  v8 = [(MTLDeviceSPI *)baseObject loadDynamicLibrariesForComputeDescriptor:v7 error:error];

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      if (v11)
      {
        v12 = [CaptureMTLDynamicLibrary alloc];
        v13 = [v8 objectAtIndexedSubscript:v10];
        v14 = [(CaptureMTLDynamicLibrary *)v12 initWithBaseObject:v13 captureDevice:self];
        [v9 setObject:v14 atIndexedSubscript:v10];
      }

      else
      {
        [v9 setObject:0 atIndexedSubscript:v10];
      }

      ++v10;
    }

    while ([v8 count] > v10);
  }

  return v9;
}

- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error
{
  gCopy = g;
  functionsCopy = functions;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceContext = self->_traceContext;
  v35 = traceContext;
  *&v36 = 0;
  *(&v36 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v37 = v13;
  BYTE8(v37) = *(v11 + 8);
  *(&v37 + 9) = 16400;
  *(&v37 + 11) = 0;
  HIBYTE(v37) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapNSArray(functionsCopy);
  v17 = [(MTLDeviceSPI *)baseObject newLibraryWithDAG:gCopy functions:v16 error:error];

  if (v17)
  {
    v18 = [[CaptureMTLLibrary alloc] initWithBaseObject:v17 captureDevice:self captureFunctions:functionsCopy];
  }

  else
  {
    v18 = 0;
  }

  GTTraceEncoder_setStream(&v35, [(CaptureMTLLibrary *)v18 traceStream]);
  v19 = v36;
  *(v36 + 8) = -15693;
  v20 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v22 = *(*(&v35 + 1) + 24);
    v23 = BYTE10(v37);
    ++BYTE10(v37);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v36 + 1), v23 | 0x2000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v19 + 13) = v20;
  SaveMTLLibraryInfoWithPath(&v35, v17, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v18 traceStream];
  if (traceStream2)
  {
    v27 = traceStream2->var0;
    if (error)
    {
LABEL_12:
      v28 = *error;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = 0;
    if (error)
    {
      goto LABEL_12;
    }
  }

  v28 = 0;
LABEL_15:
  if ([gCopy UTF8String])
  {
    uTF8String = [gCopy UTF8String];
    v30 = strlen([gCopy UTF8String]);
    v31 = GTTraceEncoder_storeBytes(&v35, uTF8String, v30 + 1);
  }

  else
  {
    v31 = 0;
  }

  v32 = StreamMTLNameArray(&v35, functionsCopy);
  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = v28;
  v21[24] = v31;
  v21[25] = v32;
  *(v21 + 26) = 0;
  *(v21 + 15) = 0;
  v33 = v36;
  *v12 = v37;
  *(v12 + 8) = BYTE8(v37);
  *(v33 + 15) |= 8u;

  return v18;
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
{
  deallocatorCopy = deallocator;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  traceContext = self->_traceContext;
  v40 = traceContext;
  *&v41 = 0;
  *(&v41 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v42 = v14;
  BYTE8(v42) = *(v12 + 8);
  *(&v42 + 9) = 16400;
  *(&v42 + 11) = 0;
  HIBYTE(v42) = 0;
  v16 = [(MTLDeviceSPI *)self->_baseObject newBufferWithBytesNoCopy:copy length:length options:options deallocator:deallocatorCopy];
  if (v16)
  {
    v17 = [[CaptureMTLBuffer alloc] initWithBaseObject:v16 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  traceStream = [(CaptureMTLBuffer *)v17 traceStream];
  if (traceStream)
  {
    v19 = atomic_load(&traceStream[1].var1);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v20, v19 | 3);
      v21 = v20 == v19;
      v19 = v20;
    }

    while (!v21);
  }

  if (v17)
  {
    CaptureMTLBuffer_registerBaseBufferForTracing(v17->_baseObject, v17->_traceStream, 0);
  }

  GTTraceEncoder_setStream(&v40, [(CaptureMTLBuffer *)v17 traceStream]);
  v22 = v41;
  *(v41 + 8) = -16312;
  v23 = BYTE9(v42);
  if (BYTE9(v42) > 0x10uLL)
  {
    v25 = *(*(&v40 + 1) + 24);
    selfCopy = self;
    v26 = v16;
    lengthCopy = length;
    v28 = deallocatorCopy;
    copyCopy = copy;
    optionsCopy = options;
    v31 = BYTE10(v42);
    ++BYTE10(v42);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v41 + 1), v31 | 0x3000000000) + 16;
    v23 = v31;
    options = optionsCopy;
    copy = copyCopy;
    deallocatorCopy = v28;
    length = lengthCopy;
    v16 = v26;
    self = selfCopy;
  }

  else
  {
    v24 = (v22 + BYTE9(v42));
    BYTE9(v42) += 48;
  }

  *(v22 + 13) = v23;
  SaveMTLBufferInfo(&v40, v16);
  traceStream2 = [(CaptureMTLDevice *)self traceStream];
  if (traceStream2)
  {
    var0 = traceStream2->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream3 = [(CaptureMTLBuffer *)v17 traceStream];
  if (traceStream3)
  {
    v35 = traceStream3->var0;
  }

  else
  {
    v35 = 0;
  }

  v36 = TransferBytes(&v40, copy, length);
  *v24 = var0;
  *(v24 + 1) = v35;
  *(v24 + 2) = length;
  *(v24 + 3) = options;
  *(v24 + 4) = deallocatorCopy;
  v24[40] = v36;
  *(v24 + 41) = 0;
  *(v24 + 11) = 0;
  v37 = v41;
  *v13 = v42;
  *(v13 + 8) = BYTE8(v42);
  *(v37 + 15) |= 8u;

  return v17;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:format pixelFormat:count sampleCount:size sparsePageSize:a7];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result tileSizeWithSparsePageSize:type textureType:format pixelFormat:count sampleCount:a7];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:format pixelFormat:count sampleCount:a6];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- (id)newRasterizationRateMapWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newRasterizationRateMapWithDescriptor:descriptorCopy];
  if (v10)
  {
    v11 = [[CaptureMTLRasterizationRateMap alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLRasterizationRateMap *)v11 traceStream]);
  v12 = v25;
  *(v25 + 8) = -15793;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRasterizationRateMap *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  v21 = SaveMTLRasterizationRateMapDescriptor(&v24, descriptorCopy);
  *v14 = var0;
  *(v14 + 1) = v20;
  v14[16] = v21;
  *(v14 + 17) = 0;
  *(v14 + 5) = 0;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v11;
}

- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  descriptionCopy = description;
  v9 = [(MTLDeviceSPI *)self->_baseObject newFunctionWithGLIR:r inputsDescription:descriptionCopy functionType:type];
  if (v9)
  {
    v10 = [[CaptureMTLFunction alloc] initWithBaseObject:v9 captureDevice:self];
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v10 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v27);
    v12 = *r;
    v13 = v28;
    *(v28 + 8) = -15730;
    v14 = BYTE9(v29);
    if (BYTE9(v29) > 0x20uLL)
    {
      v16 = *(*(&v27 + 1) + 24);
      v17 = BYTE10(v29);
      ++BYTE10(v29);
      v15 = GTTraceMemPool_allocateBytes(v16, *(&v28 + 1), v17 | 0x2000000000) + 16;
      v14 = v17;
    }

    else
    {
      v15 = (v13 + BYTE9(v29));
      BYTE9(v29) += 32;
    }

    *(v13 + 13) = v14;
    SaveMTLFunctionInfo(&v27, v9, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v10 traceStream];
    if (traceStream2)
    {
      v21 = traceStream2->var0;
    }

    else
    {
      v21 = 0;
    }

    v22 = GTTraceEncoder_storeBlob(&v27, r, v12 + 4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      RetainDebugObject(v9);
      v23 = 0;
    }

    else
    {
      v23 = SaveDispatchData_(&v27, descriptionCopy);
    }

    *v15 = var0;
    *(v15 + 1) = v21;
    *(v15 + 2) = type;
    v15[24] = v22;
    v15[25] = v23;
    *(v15 + 26) = 0;
    *(v15 + 15) = 0;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type
{
  v7 = [MTLDeviceSPI newFunctionWithGLIR:"newFunctionWithGLIR:functionType:" functionType:?];
  if (v7)
  {
    v8 = [[CaptureMTLFunction alloc] initWithBaseObject:v7 captureDevice:self];
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v8 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v24);
    v10 = *r;
    v11 = v25;
    *(v25 + 8) = -15731;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x20uLL)
    {
      v14 = *(*(&v24 + 1) + 24);
      v15 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v14, *(&v25 + 1), v15 | 0x2000000000) + 16;
      v12 = v15;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 32;
    }

    *(v11 + 13) = v12;
    SaveMTLFunctionInfo(&v24, v7, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v8 traceStream];
    if (traceStream2)
    {
      v19 = traceStream2->var0;
    }

    else
    {
      v19 = 0;
    }

    v20 = GTTraceEncoder_storeBlob(&v24, r, v10 + 4);
    *v13 = var0;
    *(v13 + 1) = v19;
    *(v13 + 2) = type;
    v13[24] = v20;
    *(v13 + 25) = 0;
    *(v13 + 7) = 0;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  descriptionCopy = description;
  v9 = [(MTLDeviceSPI *)self->_baseObject newFunctionWithGLESIR:r inputsDescription:descriptionCopy functionType:type];
  if (v9)
  {
    v10 = [[CaptureMTLFunction alloc] initWithBaseObject:v9 captureDevice:self];
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v10 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v27);
    v12 = *r;
    v13 = v28;
    *(v28 + 8) = -15427;
    v14 = BYTE9(v29);
    if (BYTE9(v29) > 0x20uLL)
    {
      v16 = *(*(&v27 + 1) + 24);
      v17 = BYTE10(v29);
      ++BYTE10(v29);
      v15 = GTTraceMemPool_allocateBytes(v16, *(&v28 + 1), v17 | 0x2000000000) + 16;
      v14 = v17;
    }

    else
    {
      v15 = (v13 + BYTE9(v29));
      BYTE9(v29) += 32;
    }

    *(v13 + 13) = v14;
    SaveMTLFunctionInfo(&v27, v9, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v10 traceStream];
    if (traceStream2)
    {
      v21 = traceStream2->var0;
    }

    else
    {
      v21 = 0;
    }

    v22 = GTTraceEncoder_storeBlob(&v27, r, v12 + 4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      RetainDebugObject(v9);
      v23 = 0;
    }

    else
    {
      v23 = SaveDispatchData_(&v27, descriptionCopy);
    }

    *v15 = var0;
    *(v15 + 1) = v21;
    *(v15 + 2) = type;
    v15[24] = v22;
    v15[25] = v23;
    *(v15 + 26) = 0;
    *(v15 + 15) = 0;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type
{
  v7 = [MTLDeviceSPI newFunctionWithGLESIR:"newFunctionWithGLESIR:functionType:" functionType:?];
  if (v7)
  {
    v8 = [[CaptureMTLFunction alloc] initWithBaseObject:v7 captureDevice:self];
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v8 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v24);
    v10 = *r;
    v11 = v25;
    *(v25 + 8) = -15428;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x20uLL)
    {
      v14 = *(*(&v24 + 1) + 24);
      v15 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v14, *(&v25 + 1), v15 | 0x2000000000) + 16;
      v12 = v15;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 32;
    }

    *(v11 + 13) = v12;
    SaveMTLFunctionInfo(&v24, v7, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v8 traceStream];
    if (traceStream2)
    {
      v19 = traceStream2->var0;
    }

    else
    {
      v19 = 0;
    }

    v20 = GTTraceEncoder_storeBlob(&v24, r, v10 + 4);
    *v13 = var0;
    *(v13 + 1) = v19;
    *(v13 + 2) = type;
    v13[24] = v20;
    *(v13 + 25) = 0;
    *(v13 + 7) = 0;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
{
  descriptionCopy = description;
  v9 = [(MTLDeviceSPI *)self->_baseObject newFunctionWithGLCoreIR:r inputsDescription:descriptionCopy functionType:type];
  if (v9)
  {
    v10 = [[CaptureMTLFunction alloc] initWithBaseObject:v9 captureDevice:self];
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v10 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v27);
    v12 = *r;
    v13 = v28;
    *(v28 + 8) = -15429;
    v14 = BYTE9(v29);
    if (BYTE9(v29) > 0x20uLL)
    {
      v16 = *(*(&v27 + 1) + 24);
      v17 = BYTE10(v29);
      ++BYTE10(v29);
      v15 = GTTraceMemPool_allocateBytes(v16, *(&v28 + 1), v17 | 0x2000000000) + 16;
      v14 = v17;
    }

    else
    {
      v15 = (v13 + BYTE9(v29));
      BYTE9(v29) += 32;
    }

    *(v13 + 13) = v14;
    SaveMTLFunctionInfo(&v27, v9, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v10 traceStream];
    if (traceStream2)
    {
      v21 = traceStream2->var0;
    }

    else
    {
      v21 = 0;
    }

    v22 = GTTraceEncoder_storeBlob(&v27, r, v12 + 4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      RetainDebugObject(v9);
      v23 = 0;
    }

    else
    {
      v23 = SaveDispatchData_(&v27, descriptionCopy);
    }

    *v15 = var0;
    *(v15 + 1) = v21;
    *(v15 + 2) = type;
    v15[24] = v22;
    v15[25] = v23;
    *(v15 + 26) = 0;
    *(v15 + 15) = 0;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type
{
  v7 = [MTLDeviceSPI newFunctionWithGLCoreIR:"newFunctionWithGLCoreIR:functionType:" functionType:?];
  if (v7)
  {
    v8 = [[CaptureMTLFunction alloc] initWithBaseObject:v7 captureDevice:self];
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceContext = self->_traceContext;
    [(CaptureMTLFunction *)v8 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v24);
    v10 = *r;
    v11 = v25;
    *(v25 + 8) = -15430;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x20uLL)
    {
      v14 = *(*(&v24 + 1) + 24);
      v15 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v14, *(&v25 + 1), v15 | 0x2000000000) + 16;
      v12 = v15;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 32;
    }

    *(v11 + 13) = v12;
    SaveMTLFunctionInfo(&v24, v7, 0, 0);
    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLFunction *)v8 traceStream];
    if (traceStream2)
    {
      v19 = traceStream2->var0;
    }

    else
    {
      v19 = 0;
    }

    v20 = GTTraceEncoder_storeBlob(&v24, r, v10 + 4);
    *v13 = var0;
    *(v13 + 1) = v19;
    *(v13 + 2) = type;
    v13[24] = v20;
    *(v13 + 25) = 0;
    *(v13 + 7) = 0;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [(MTLDeviceSPI *)self->_baseObject newPipelineLibraryWithFilePath:pathCopy error:error];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v8 = [[CaptureMTLPipelineLibrary alloc] initWithBaseObject:v7 captureDevice:self];
  if (v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDevice_newPipelineLibraryWithFilePath_error", "Pipeline Libraries SPI", "metallibPaths SPI property is not available", 0);
      goto LABEL_20;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    traceContext = self->_traceContext;
    v30 = traceContext;
    *&v31 = 0;
    *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v11 = v10;
    v12 = *v10;
    *v10 = v13;
    *&v32 = v12;
    BYTE8(v32) = *(v10 + 8);
    *(&v32 + 9) = 16400;
    *(&v32 + 11) = 0;
    HIBYTE(v32) = 0;
    GTTraceEncoder_setStream(&v30, [(CaptureMTLPipelineLibrary *)v8 traceStream]);
    v14 = v31;
    *(v31 + 8) = -16075;
    v15 = BYTE9(v32);
    if (BYTE9(v32) > 0x20uLL)
    {
      v17 = *(*(&v30 + 1) + 24);
      v18 = BYTE10(v32);
      ++BYTE10(v32);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v31 + 1), v18 | 0x2000000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v32));
      BYTE9(v32) += 32;
    }

    *(v14 + 13) = v15;
    v19 = DEVICEOBJECT(v7);
    SaveMTLPipelineLibraryInfoWithPath(&v30, v19, [pathCopy fileSystemRepresentation]);

    traceStream = [(CaptureMTLDevice *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [(CaptureMTLPipelineLibrary *)v8 traceStream];
    if (traceStream2)
    {
      v23 = traceStream2->var0;
      if (error)
      {
LABEL_14:
        v24 = *error;
LABEL_17:
        uTF8String = [pathCopy UTF8String];
        if (uTF8String)
        {
          uTF8String2 = [pathCopy UTF8String];
          v27 = strlen([pathCopy UTF8String]);
          LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v30, uTF8String2, v27 + 1);
        }

        *v16 = var0;
        *(v16 + 1) = v23;
        *(v16 + 2) = v24;
        v16[24] = uTF8String;
        *(v16 + 25) = 0;
        *(v16 + 7) = 0;
        v28 = v31;
        *v11 = v32;
        *(v11 + 8) = BYTE8(v32);
        *(v28 + 15) |= 8u;
        goto LABEL_20;
      }
    }

    else
    {
      v23 = 0;
      if (error)
      {
        goto LABEL_14;
      }
    }

    v24 = 0;
    goto LABEL_17;
  }

LABEL_20:

  return v8;
}

- (id)newSharedTextureWithHandle:(id)handle
{
  handleCopy = handle;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v29 = v8;
  BYTE8(v29) = *(v6 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newSharedTextureWithHandle:handleCopy];
  if (v10)
  {
    v11 = [[CaptureMTLTexture alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLTexture *)v11 traceStream]);
  v12 = v28;
  *(v28 + 8) = -15980;
  v13 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v15 = *(*(&v27 + 1) + 24);
    v16 = BYTE10(v29);
    ++BYTE10(v29);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v28 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v12 + 13) = v13;
  SaveMTLTextureInfo(&v27, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  ioSurface = [handleCopy ioSurface];
  baseObject = [(CaptureMTLTexture *)v11 baseObject];
  v23 = MakeMTLTextureDescriptorFromTextureWithResourceIndex(baseObject);
  v24 = SaveMTLTextureDescriptor(&v27, v23);
  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = ioSurface;
  v14[24] = v24;
  *(v14 + 25) = 0;
  *(v14 + 7) = 0;

  v25 = v28;
  *v7 = v29;
  *(v7 + 8) = BYTE8(v29);
  *(v25 + 15) |= 8u;

  return v11;
}

- (id)newSharedTextureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newSharedTextureWithDescriptor:descriptorCopy];
  if (v10)
  {
    v11 = [[CaptureMTLTexture alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLTexture *)v11 traceStream]);
  v12 = v26;
  *(v26 + 8) = -15980;
  v13 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v15 = *(*(&v25 + 1) + 24);
    v16 = BYTE10(v27);
    ++BYTE10(v27);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v26 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLDevice *)self dummyEncodeTextureIntoArgumentBufferForResourceIndex:v10 withDescriptor:descriptorCopy];

  SaveMTLTextureInfo(&v25, v10);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v11 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  v22 = SaveMTLTextureDescriptor(&v25, v17);
  *v14 = var0;
  *(v14 + 1) = v21;
  *(v14 + 2) = 0;
  v14[24] = v22;
  *(v14 + 25) = 0;
  *(v14 + 7) = 0;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v11;
}

- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count
{
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceContext = self->_traceContext;
  v35 = traceContext;
  *&v36 = 0;
  *(&v36 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v37 = v10;
  BYTE8(v37) = *(v8 + 8);
  *(&v37 + 9) = 16400;
  *(&v37 + 11) = 0;
  HIBYTE(v37) = 0;
  baseObject = self->_baseObject;
  v14 = 8 * v13;
  __chkstk_darwin(v8, v15);
  bzero(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  if (count)
  {
    resourcesCopy = resources;
    v17 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v19 = *resourcesCopy++;
      *v17++ = [v19 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  v20 = [(MTLDeviceSPI *)baseObject newResourceGroupFromResources:&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if (v20)
  {
    v21 = [[CaptureMTLResourceGroup alloc] initWithBaseObject:v20 captureDevice:self];
  }

  else
  {
    v21 = 0;
  }

  GTTraceEncoder_setStream(&v35, [(CaptureMTLResourceGroup *)v21 traceStream]);
  v22 = v36;
  *(v36 + 8) = -15900;
  v23 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v25 = *(*(&v35 + 1) + 24);
    v26 = BYTE10(v37);
    ++BYTE10(v37);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v36 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v22 + 13) = v23;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLResourceGroup *)v21 traceStream];
  if (traceStream2)
  {
    v31 = traceStream2->var0;
  }

  else
  {
    v31 = 0;
  }

  __chkstk_darwin(traceStream2, v30);
  bzero(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v32 = StreamArray(&v35, (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), resources, count);
  *v24 = var0;
  *(v24 + 1) = v31;
  *(v24 + 2) = count;
  v24[24] = v32;
  *(v24 + 25) = 0;
  *(v24 + 7) = 0;
  v33 = v36;
  *v9 = v37;
  *(v9 + 8) = BYTE8(v37);
  *(v33 + 15) |= 8u;

  return v21;
}

- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newCounterSampleBufferWithDescriptor:descriptorCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLCounterSampleBuffer alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLCounterSampleBuffer *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15848;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCounterSampleBuffer *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveMTLCounterSampleBufferDescriptor(&v26, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (BOOL)supportsPrimitiveType:(unint64_t)type
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  baseObject = self->_baseObject;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(MTLDeviceSPI *)self->_baseObject supportsPrimitiveType:type];
  }

  else
  {
    v7 = 0;
  }

  v8 = v19;
  *(v19 + 8) = -15902;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = type;
  *(v10 + 4) = v7;
  *(v10 + 5) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
  return v7;
}

- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v32 = v10;
  BYTE8(v32) = *(v8 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newDefaultLibraryWithBundle:bundleCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLLibrary alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLLibrary *)v13 traceStream]);
  v14 = [bundleCopy URLForResource:@"default" withExtension:@"metallib"];
  v15 = v31;
  *(v31 + 8) = -16095;
  v16 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v18 = *(*(&v30 + 1) + 24);
    v19 = BYTE10(v32);
    ++BYTE10(v32);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v31 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v15 + 13) = v16;
  SaveMTLLibraryInfoWithPath(&v30, v12, [v14 fileSystemRepresentation]);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v13 traceStream];
  if (traceStream2)
  {
    v23 = traceStream2->var0;
    if (error)
    {
LABEL_12:
      v24 = *error;
      goto LABEL_15;
    }
  }

  else
  {
    v23 = 0;
    if (error)
    {
      goto LABEL_12;
    }
  }

  v24 = 0;
LABEL_15:
  fileSystemRepresentation = [v14 fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    fileSystemRepresentation2 = [v14 fileSystemRepresentation];
    v27 = strlen([v14 fileSystemRepresentation]);
    LOBYTE(fileSystemRepresentation) = GTTraceEncoder_storeBytes(&v30, fileSystemRepresentation2, v27 + 1);
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v24;
  v17[24] = fileSystemRepresentation;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  v28 = v31;
  *v9 = v32;
  *(v9 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v13;
}

- (id)newDefaultLibrary
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v28 = v6;
  BYTE8(v28) = *(v4 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  newDefaultLibrary = [(MTLDeviceSPI *)self->_baseObject newDefaultLibrary];
  if (newDefaultLibrary)
  {
    v9 = [[CaptureMTLLibrary alloc] initWithBaseObject:newDefaultLibrary captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLLibrary *)v9 traceStream]);
  v10 = +[NSBundle mainBundle];
  v11 = [v10 URLForResource:@"default" withExtension:@"metallib"];

  v12 = v27;
  *(v27 + 8) = -16308;
  v13 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v15 = *(*(&v26 + 1) + 24);
    v16 = BYTE10(v28);
    ++BYTE10(v28);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v27 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v12 + 13) = v13;
  SaveMTLLibraryInfoWithPath(&v26, newDefaultLibrary, [v11 fileSystemRepresentation]);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v9 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  fileSystemRepresentation = [v11 fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    fileSystemRepresentation2 = [v11 fileSystemRepresentation];
    v23 = strlen([v11 fileSystemRepresentation]);
    LOBYTE(fileSystemRepresentation) = GTTraceEncoder_storeBytes(&v26, fileSystemRepresentation2, v23 + 1);
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  v14[16] = fileSystemRepresentation;
  *(v14 + 17) = 0;
  *(v14 + 5) = 0;
  v24 = v27;
  *v5 = v28;
  *(v5 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v9;
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  descriptorCopy = descriptor;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  traceContext = self->_traceContext;
  v47 = traceContext;
  *&v48 = 0;
  *(&v48 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v49 = v14;
  BYTE8(v49) = *(v12 + 8);
  *(&v49 + 9) = 16400;
  *(&v49 + 11) = 0;
  HIBYTE(v49) = 0;
  baseObject = self->_baseObject;
  v17 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);
  v18 = 65543;
  if ((options & 4) == 0)
  {
    v18 = 327683;
  }

  if (self->_isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v18;
  }

  v46 = 0;
  v20 = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithTileDescriptor:v17 options:optionsCopy reflection:&v46 error:error];
  v21 = v46;

  if (v20)
  {
    v22 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v20 captureDevice:self];
  }

  else
  {
    v22 = 0;
  }

  [(CaptureMTLRenderPipelineState *)v22 setTileDescriptor:descriptorCopy];
  if ([descriptorCopy supportAddingBinaryFunctions])
  {
    [(CaptureMTLRenderPipelineState *)v22 setReflection:v21];
  }

  reflectionCopy = reflection;
  GTTraceEncoder_setStream(&v47, [(CaptureMTLRenderPipelineState *)v22 traceStream]);
  v23 = v48;
  *(v48 + 8) = -16090;
  v24 = BYTE9(v49);
  v44 = v21;
  if (BYTE9(v49) > 0x18uLL)
  {
    v26 = *(*(&v47 + 1) + 24);
    v27 = BYTE10(v49);
    ++BYTE10(v49);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v48 + 1), v27 | 0x2800000000) + 16;
    v24 = v27;
    v21 = v44;
  }

  else
  {
    v25 = (v23 + BYTE9(v49));
    BYTE9(v49) += 40;
  }

  *(v23 + 13) = v24;
  v28 = LoadDynamicLibrariesForTileRenderPipelineDescriptor(descriptorCopy);
  if (v20)
  {
    SaveMTLRenderPipelineReflectionCommon(&v47, v20, v21, v28, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v22 traceStream];
  if (traceStream2)
  {
    v32 = traceStream2->var0;
  }

  else
  {
    v32 = 0;
  }

  errorCopy = error;
  if (error)
  {
    error = *error;
  }

  v33 = SaveMTLTileRenderPipelineDescriptor(&v47, descriptorCopy);
  *v25 = var0;
  *(v25 + 1) = v32;
  *(v25 + 2) = options;
  *(v25 + 3) = error;
  v25[32] = v33;
  *(v25 + 33) = 0;
  *(v25 + 9) = 0;
  if (options)
  {
    v34 = v44;
    if (reflectionCopy)
    {
      if ((~options & 3) != 0 && !self->_isBaseObjectDebugDevice)
      {
        v35 = DEVICEOBJECT(self->_baseObject);
        v36 = deviceMTLTileRenderPipelineDescriptor(descriptorCopy);
        v45 = v44;
        v37 = [v35 newRenderPipelineStateWithTileDescriptor:v36 options:options reflection:&v45 error:errorCopy];
        v38 = v45;

        v34 = v38;
      }

      v39 = v34;
      *reflectionCopy = v34;
    }
  }

  else
  {
    v34 = v44;
  }

  v40 = v48;
  *v13 = v49;
  *(v13 + 8) = BYTE8(v49);
  *(v40 + 15) |= 8u;

  return v22;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v12 = unwrapMTLTileRenderPipelineDescriptor(v9);
  v13 = !selfCopy->_isBaseObjectDebugDevice;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __87__CaptureMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v18[3] = &unk_2F19C0;
  if (v13)
  {
    v14 = 327683;
  }

  else
  {
    v14 = 0;
  }

  v19 = selfCopy;
  v20 = v9;
  v21 = handlerCopy;
  optionsCopy = options;
  v15 = handlerCopy;
  v16 = v9;
  v17 = selfCopy;
  [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithTileDescriptor:v12 options:v14 completionHandler:v18];
}

void __87__CaptureMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  [(CaptureMTLRenderPipelineState *)v10 setTileDescriptor:v11];
  if ([v11 supportAddingBinaryFunctions])
  {
    [(CaptureMTLRenderPipelineState *)v10 setReflection:v8];
  }

  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLRenderPipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v39);
  v13 = v40;
  *(v40 + 8) = -16088;
  v14 = BYTE9(v41);
  if (BYTE9(v41) > 0x18uLL)
  {
    v16 = *(*(&v39 + 1) + 24);
    v17 = BYTE10(v41);
    ++BYTE10(v41);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v40 + 1), v17 | 0x2800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v41));
    BYTE9(v41) += 40;
  }

  *(v13 + 13) = v14;
  v18 = LoadDynamicLibrariesForTileRenderPipelineDescriptor(v11);
  if (v7)
  {
    SaveMTLRenderPipelineReflectionCommon(&v39, v7, v8, v18, 0);
  }

  v19 = [*(a1 + 32) traceStream];
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLRenderPipelineState *)v10 traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = *(a1 + 56);
  v24 = SaveMTLTileRenderPipelineDescriptor(&v39, v11);
  *v15 = v20;
  *(v15 + 1) = var0;
  *(v15 + 2) = v23;
  *(v15 + 3) = 0;
  v15[32] = v24;
  *(v15 + 33) = 0;
  *(v15 + 9) = 0;
  v25 = *(a1 + 32);
  if ((v25[345] & 1) == 0 && (~*(a1 + 56) & 3) != 0)
  {
    v26 = [v25 baseObject];
    v27 = DEVICEOBJECT(v26);
    v28 = deviceMTLTileRenderPipelineDescriptor(*(a1 + 40));
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v36 = v39;
    v37 = v40;
    v32[2] = __87__CaptureMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke_2;
    v32[3] = &unk_2F18D0;
    v38 = v41;
    v29 = *(a1 + 56);
    v35 = *(a1 + 48);
    v33 = v10;
    v34 = v9;
    [v27 newRenderPipelineStateWithTileDescriptor:v28 options:v29 completionHandler:v32];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) traceContext];
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
}

void __87__CaptureMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[10];
  v5 = a3;
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v4;
  v9 = a1[5];
  v10 = a1[4];
  (*(a1[6] + 16))();

  *v7 = v8;
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  v32 = traceContext;
  *&v33 = 0;
  *(&v33 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v34 = v10;
  BYTE8(v34) = *(v8 + 8);
  *(&v34 + 9) = 16400;
  *(&v34 + 11) = 0;
  HIBYTE(v34) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);
  if (self->_isBaseObjectDebugDevice)
  {
    v14 = 0;
  }

  else
  {
    v14 = 327683;
  }

  v31 = 0;
  v15 = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithTileDescriptor:v13 options:v14 reflection:&v31 error:error];
  v16 = v31;

  if (v15)
  {
    v17 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v15 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  [(CaptureMTLRenderPipelineState *)v17 setTileDescriptor:descriptorCopy];
  if ([descriptorCopy supportAddingBinaryFunctions])
  {
    [(CaptureMTLRenderPipelineState *)v17 setReflection:v16];
  }

  GTTraceEncoder_setStream(&v32, [(CaptureMTLRenderPipelineState *)v17 traceStream]);
  v18 = v33;
  *(v33 + 8) = -16091;
  v19 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v21 = *(*(&v32 + 1) + 24);
    v22 = BYTE10(v34);
    ++BYTE10(v34);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v18 + 13) = v19;
  v23 = LoadDynamicLibrariesForTileRenderPipelineDescriptor(descriptorCopy);
  if (v15)
  {
    SaveMTLRenderPipelineReflectionCommon(&v32, v15, v16, v23, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v17 traceStream];
  if (!traceStream2)
  {
    v27 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v27 = traceStream2->var0;
  if (error)
  {
LABEL_19:
    error = *error;
  }

LABEL_20:
  v28 = SaveMTLTileRenderPipelineDescriptor(&v32, descriptorCopy);
  *v20 = var0;
  *(v20 + 1) = v27;
  *(v20 + 2) = error;
  v20[24] = v28;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v29 = v33;
  *v9 = v34;
  *(v9 + 8) = BYTE8(v34);
  *(v29 + 15) |= 8u;

  return v17;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v12 = unwrapMTLMeshRenderPipelineDescriptor(v9);
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  pipelineLibrary = [v9 pipelineLibrary];
  v20[0] = _NSConcreteStackBlock;
  v15 = 327683;
  if (pipelineLibrary)
  {
    v15 = 65539;
  }

  v20[1] = 3221225472;
  v20[2] = __87__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v20[3] = &unk_2F18F8;
  if ((options & 4) != 0)
  {
    v16 = 65543;
  }

  else
  {
    v16 = v15;
  }

  v21 = selfCopy;
  v22 = selfCopy;
  v24 = handlerCopy;
  optionsCopy = options;
  if (!isBaseObjectDebugDevice)
  {
    options = v16;
  }

  v23 = v9;
  v17 = handlerCopy;
  v18 = v9;
  v19 = selfCopy;
  [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithMeshDescriptor:v12 options:options completionHandler:v20];
}

void __87__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v7 withMeshDescriptor:*(a1 + 48)];
  [(CaptureMTLRenderPipelineState *)v10 setMeshDescriptor:v11];
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLRenderPipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v38);
  v13 = v39;
  *(v39 + 8) = -15404;
  v14 = BYTE9(v40);
  if (BYTE9(v40) > 0x18uLL)
  {
    v16 = *(*(&v38 + 1) + 24);
    v17 = BYTE10(v40);
    ++BYTE10(v40);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v39 + 1), v17 | 0x2800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v40));
    BYTE9(v40) += 40;
  }

  *(v13 + 13) = v14;
  if (v7)
  {
    SaveMTLRenderPipelineReflectionCommon(&v38, v7, v8, 0, 0);
  }

  v18 = [*(a1 + 32) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLRenderPipelineState *)v10 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = *(a1 + 64);
  v23 = SaveMTLMeshRenderPipelineDescriptor(&v38, v11);
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = v22;
  *(v15 + 3) = 0;
  v15[32] = v23;
  *(v15 + 33) = 0;
  *(v15 + 9) = 0;
  v24 = *(a1 + 32);
  if ((v24[345] & 1) == 0 && (~*(a1 + 64) & 3) != 0)
  {
    v25 = [v24 baseObject];
    v26 = DEVICEOBJECT(v25);
    v27 = deviceMTLMeshRenderPipelineDescriptorWithoutResourceIndex(*(a1 + 48));
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v35 = v38;
    v36 = v39;
    v31[2] = __87__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke_2;
    v31[3] = &unk_2F18D0;
    v37 = v40;
    v28 = *(a1 + 64);
    v34 = *(a1 + 56);
    v32 = v10;
    v33 = v9;
    [v26 newRenderPipelineStateWithMeshDescriptor:v27 options:v28 completionHandler:v31];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 32) traceContext];
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

void __87__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[10];
  v5 = a3;
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v4;
  v9 = a1[5];
  v10 = a1[4];
  (*(a1[6] + 16))();

  *v7 = v8;
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  descriptorCopy = descriptor;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceContext = self->_traceContext;
  v51 = traceContext;
  *&v52 = 0;
  *(&v52 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v53 = v13;
  BYTE8(v53) = *(v11 + 8);
  *(&v53 + 9) = 16400;
  *(&v53 + 11) = 0;
  HIBYTE(v53) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v19 = 327683;
  if (pipelineLibrary)
  {
    v19 = 65539;
  }

  v20 = 65543;
  if ((options & 4) == 0)
  {
    v20 = v19;
  }

  if (isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v20;
  }

  v50 = 0;
  errorCopy = error;
  reflection = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithMeshDescriptor:v16 options:optionsCopy reflection:&v50 error:error, reflection];
  v23 = v50;

  if (reflection)
  {
    v24 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:reflection captureDevice:self];
  }

  else
  {
    v24 = 0;
  }

  v47 = descriptorCopy;
  v48 = [(CaptureMTLDevice *)self dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:reflection withMeshDescriptor:descriptorCopy];
  [(CaptureMTLRenderPipelineState *)v24 setMeshDescriptor:?];
  GTTraceEncoder_setStream(&v51, [(CaptureMTLRenderPipelineState *)v24 traceStream]);
  v25 = v52;
  *(v52 + 8) = -15403;
  v26 = BYTE9(v53);
  if (BYTE9(v53) > 0x18uLL)
  {
    v28 = *(*(&v51 + 1) + 24);
    v29 = BYTE10(v53);
    ++BYTE10(v53);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v52 + 1), v29 | 0x2800000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v53));
    BYTE9(v53) += 40;
  }

  *(v25 + 13) = v26;
  if (reflection)
  {
    SaveMTLRenderPipelineReflectionCommon(&v51, reflection, v23, 0, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v24 traceStream];
  if (traceStream2)
  {
    v33 = traceStream2->var0;
  }

  else
  {
    v33 = 0;
  }

  if (errorCopy)
  {
    v34 = *errorCopy;
  }

  else
  {
    v34 = 0;
  }

  v35 = SaveMTLMeshRenderPipelineDescriptor(&v51, v48);
  *v27 = var0;
  *(v27 + 1) = v33;
  *(v27 + 2) = options;
  *(v27 + 3) = v34;
  v27[32] = v35;
  *(v27 + 33) = 0;
  *(v27 + 9) = 0;
  if (options)
  {
    v36 = v47;
    if (v45)
    {
      if ((~options & 3) != 0 && !self->_isBaseObjectDebugDevice)
      {
        v37 = DEVICEOBJECT(self->_baseObject);
        v38 = deviceMTLMeshRenderPipelineDescriptorWithoutResourceIndex(v47);
        v49 = v23;
        v39 = [v37 newRenderPipelineStateWithMeshDescriptor:v38 options:options reflection:&v49 error:errorCopy];
        v40 = v49;

        v36 = v47;
        v23 = v40;
      }

      v41 = v23;
      *v45 = v23;
    }
  }

  else
  {
    v36 = v47;
  }

  v42 = v52;
  *v12 = v53;
  *(v12 + 8) = BYTE8(v53);
  *(v42 + 15) |= 8u;

  return v24;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v10 = unwrapMTLMeshRenderPipelineDescriptor(v7);
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  pipelineLibrary = [v7 pipelineLibrary];
  v13 = 65539;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __79__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v18[3] = &unk_2F18A8;
  if (!pipelineLibrary)
  {
    v13 = 327683;
  }

  v19 = selfCopy;
  v20 = selfCopy;
  if (isBaseObjectDebugDevice)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v21 = v7;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v7;
  v17 = selfCopy;
  [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithMeshDescriptor:v10 options:v14 completionHandler:v18];
}

void __79__CaptureMTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v7 withMeshDescriptor:*(a1 + 48)];
  [(CaptureMTLRenderPipelineState *)v10 setMeshDescriptor:v11];
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLRenderPipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v25);
  v13 = v26;
  *(v26 + 8) = -15406;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v13 + 13) = v14;
  if (v7)
  {
    SaveMTLRenderPipelineReflectionCommon(&v25, v7, v8, 0, 0);
  }

  v18 = [*(a1 + 32) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLRenderPipelineState *)v10 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTLMeshRenderPipelineDescriptor(&v25, v11);
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceContext = self->_traceContext;
  v35 = traceContext;
  *&v36 = 0;
  *(&v36 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v37 = v10;
  BYTE8(v37) = *(v8 + 8);
  *(&v37 + 9) = 16400;
  *(&v37 + 11) = 0;
  HIBYTE(v37) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v16 = 65539;
  if (!pipelineLibrary)
  {
    v16 = 327683;
  }

  if (isBaseObjectDebugDevice)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v34 = 0;
  v18 = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithMeshDescriptor:v13 options:v17 reflection:&v34 error:error];
  v19 = v34;

  if (v18)
  {
    v20 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v18 captureDevice:self];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLDevice *)self dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v18 withMeshDescriptor:descriptorCopy];

  [(CaptureMTLRenderPipelineState *)v20 setMeshDescriptor:v21];
  GTTraceEncoder_setStream(&v35, [(CaptureMTLRenderPipelineState *)v20 traceStream]);
  v22 = v36;
  *(v36 + 8) = -15405;
  v23 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v25 = *(*(&v35 + 1) + 24);
    v26 = BYTE10(v37);
    ++BYTE10(v37);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v36 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v22 + 13) = v23;
  if (v18)
  {
    SaveMTLRenderPipelineReflectionCommon(&v35, v18, v19, 0, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v20 traceStream];
  if (!traceStream2)
  {
    v30 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v30 = traceStream2->var0;
  if (error)
  {
LABEL_19:
    error = *error;
  }

LABEL_20:
  v31 = SaveMTLMeshRenderPipelineDescriptor(&v35, v21);
  *v24 = var0;
  *(v24 + 1) = v30;
  *(v24 + 2) = error;
  v24[24] = v31;
  *(v24 + 25) = 0;
  *(v24 + 7) = 0;
  v32 = v36;
  *v9 = v37;
  *(v9 + 8) = BYTE8(v37);
  *(v32 + 15) |= 8u;

  return v20;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  descriptorCopy = descriptor;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  traceContext = self->_traceContext;
  v57 = traceContext;
  *&v58 = 0;
  *(&v58 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = *v12;
  *v12 = v14;
  *&v59 = v13;
  v53 = v12;
  BYTE8(v59) = *(v12 + 8);
  *(&v59 + 9) = 16400;
  *(&v59 + 11) = 0;
  HIBYTE(v59) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v19 = 327683;
  if (pipelineLibrary)
  {
    v19 = 65539;
  }

  v20 = 65543;
  if ((options & 4) == 0)
  {
    v20 = v19;
  }

  optionsCopy = options;
  if (isBaseObjectDebugDevice)
  {
    optionsCopy2 = options;
  }

  else
  {
    optionsCopy2 = v20;
  }

  v56 = 0;
  errorCopy = error;
  v22 = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithDescriptor:v16 options:optionsCopy2 reflection:&v56 error:error];
  v23 = v56;

  if (v22)
  {
    v24 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v22 captureDevice:self];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(CaptureMTLDevice *)self dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v22 withDescriptor:descriptorCopy];
  [(CaptureMTLRenderPipelineState *)v24 setDescriptor:v25];
  if (([v25 supportAddingVertexBinaryFunctions] & 1) != 0 || objc_msgSend(v25, "supportAddingFragmentBinaryFunctions"))
  {
    [(CaptureMTLRenderPipelineState *)v24 setReflection:v23];
  }

  GTTraceEncoder_setStream(&v57, [(CaptureMTLRenderPipelineState *)v24 traceStream]);
  v26 = v58;
  *(v58 + 8) = -16302;
  v27 = BYTE9(v59);
  if (BYTE9(v59) > 0x18uLL)
  {
    v29 = *(*(&v57 + 1) + 24);
    v30 = v24;
    v31 = BYTE10(v59);
    ++BYTE10(v59);
    v28 = GTTraceMemPool_allocateBytes(v29, *(&v58 + 1), v31 | 0x2800000000) + 16;
    v27 = v31;
    v24 = v30;
  }

  else
  {
    v28 = (v26 + BYTE9(v59));
    BYTE9(v59) += 40;
  }

  *(v26 + 13) = v27;
  v32 = LoadDynamicLibrariesForRenderPipelineDescriptor(v25);
  if (v22)
  {
    SaveMTLRenderPipelineReflectionCommon(&v57, v22, v23, v32, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v35 = v23;
  traceStream2 = [(CaptureMTLRenderPipelineState *)v24 traceStream];
  reflectionCopy = reflection;
  if (traceStream2)
  {
    v38 = traceStream2->var0;
  }

  else
  {
    v38 = 0;
  }

  v39 = descriptorCopy;
  if (errorCopy)
  {
    v40 = *errorCopy;
  }

  else
  {
    v40 = 0;
  }

  v41 = SaveMTLRenderPipelineDescriptor(&v57, v25);
  *v28 = var0;
  *(v28 + 1) = v38;
  *(v28 + 2) = optionsCopy;
  *(v28 + 3) = v40;
  v28[32] = v41;
  *(v28 + 33) = 0;
  *(v28 + 9) = 0;
  v42 = v39;
  if (optionsCopy && reflectionCopy)
  {
    v43 = reflectionCopy;
    if ((~optionsCopy & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v44 = DEVICEOBJECT(self->_baseObject);
      v45 = deviceMTLRenderPipelineDescriptorWithoutResourceIndex(v42);
      v55 = v35;
      v46 = [v44 newRenderPipelineStateWithDescriptor:v45 options:optionsCopy reflection:&v55 error:errorCopy];
      v47 = v55;

      v35 = v47;
    }

    v48 = v35;
    *v43 = v35;
  }

  v49 = v58;
  *v53 = v59;
  *(v53 + 8) = BYTE8(v59);
  *(v49 + 15) |= 8u;

  return v51;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  v36 = traceContext;
  *&v37 = 0;
  *(&v37 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v38 = v10;
  BYTE8(v38) = *(v8 + 8);
  *(&v38 + 9) = 16400;
  *(&v38 + 11) = 0;
  HIBYTE(v38) = 0;
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v14 = 65539;
  if (!pipelineLibrary)
  {
    v14 = 327683;
  }

  if (isBaseObjectDebugDevice)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  baseObject = self->_baseObject;
  v17 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);
  v35 = 0;
  v18 = [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithDescriptor:v17 options:v15 reflection:&v35 error:error];
  v19 = v35;

  if (v18)
  {
    v20 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v18 captureDevice:self];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLDevice *)self dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v18 withDescriptor:descriptorCopy];

  [(CaptureMTLRenderPipelineState *)v20 setDescriptor:v21];
  if (([v21 supportAddingVertexBinaryFunctions] & 1) != 0 || objc_msgSend(v21, "supportAddingFragmentBinaryFunctions"))
  {
    [(CaptureMTLRenderPipelineState *)v20 setReflection:v19];
  }

  GTTraceEncoder_setStream(&v36, [(CaptureMTLRenderPipelineState *)v20 traceStream]);
  v22 = v37;
  *(v37 + 8) = -16303;
  v23 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v25 = *(*(&v36 + 1) + 24);
    v26 = BYTE10(v38);
    ++BYTE10(v38);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v37 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  *(v22 + 13) = v23;
  v27 = LoadDynamicLibrariesForRenderPipelineDescriptor(v21);
  if (v18)
  {
    SaveMTLRenderPipelineReflectionCommon(&v36, v18, v19, v27, 0);
  }

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v20 traceStream];
  if (!traceStream2)
  {
    v31 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v31 = traceStream2->var0;
  if (error)
  {
LABEL_22:
    error = *error;
  }

LABEL_23:
  v32 = SaveMTLRenderPipelineDescriptor(&v36, v21);
  *v24 = var0;
  *(v24 + 1) = v31;
  *(v24 + 2) = error;
  v24[24] = v32;
  *(v24 + 25) = 0;
  *(v24 + 7) = 0;
  v33 = v37;
  *v9 = v38;
  *(v9 + 8) = BYTE8(v38);
  *(v33 + 15) |= 8u;

  return v20;
}

- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  functionCopy = function;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  traceContext = self->_traceContext;
  v47 = traceContext;
  *&v48 = 0;
  *(&v48 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v49 = v14;
  BYTE8(v49) = *(v12 + 8);
  *(&v49 + 9) = 16400;
  *(&v49 + 11) = 0;
  HIBYTE(v49) = 0;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v18 = 65543;
  if ((options & 4) == 0)
  {
    v18 = 327683;
  }

  if (self->_isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v18;
  }

  v46 = 0;
  errorCopy = error;
  v20 = [(MTLDeviceSPI *)baseObject newComputePipelineStateWithFunction:baseObject options:optionsCopy reflection:&v46 error:error];
  v21 = v46;

  if (v20)
  {
    v22 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v20 captureDevice:self];
  }

  else
  {
    v22 = 0;
  }

  [(CaptureMTLComputePipelineState *)v22 setFunction:functionCopy, reflection];
  GTTraceEncoder_setStream(&v47, [(CaptureMTLComputePipelineState *)v22 traceStream]);
  v23 = v48;
  *(v48 + 8) = -16298;
  v24 = BYTE9(v49);
  if (BYTE9(v49) > 0x10uLL)
  {
    v26 = *(*(&v47 + 1) + 24);
    v27 = BYTE10(v49);
    ++BYTE10(v49);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v48 + 1), v27 | 0x3000000000) + 16;
    v24 = v27;
  }

  else
  {
    v25 = (v23 + BYTE9(v49));
    BYTE9(v49) += 48;
  }

  *(v23 + 13) = v24;
  baseObject2 = [functionCopy baseObject];
  SaveMTLComputePipelineReflection(&v47, v20, v21, 0, baseObject2);

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v22 traceStream];
  if (traceStream2)
  {
    v32 = traceStream2->var0;
  }

  else
  {
    v32 = 0;
  }

  traceStream3 = [functionCopy traceStream];
  if (traceStream3)
  {
    v34 = *traceStream3;
  }

  else
  {
    v34 = 0;
  }

  if (errorCopy)
  {
    v35 = *errorCopy;
  }

  else
  {
    v35 = 0;
  }

  *v25 = var0;
  *(v25 + 1) = v32;
  *(v25 + 2) = v34;
  *(v25 + 3) = options;
  *(v25 + 4) = v35;
  *(v25 + 5) = 0;
  if (options && v43)
  {
    if ((~options & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v36 = DEVICEOBJECT(self->_baseObject);
      v37 = DEVICEOBJECT(functionCopy);
      v45 = v21;
      v38 = [v36 newComputePipelineStateWithFunction:v37 options:options reflection:&v45 error:errorCopy];
      v39 = v45;

      v21 = v39;
    }

    v40 = v21;
    *v43 = v21;
  }

  v41 = v48;
  *v13 = v49;
  *(v13 + 8) = BYTE8(v49);
  *(v41 + 15) |= 8u;

  return v22;
}

- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error
{
  functionCopy = function;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceContext = self->_traceContext;
  v34 = traceContext;
  *&v35 = 0;
  *(&v35 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v36 = v10;
  BYTE8(v36) = *(v8 + 8);
  *(&v36 + 9) = 16400;
  *(&v36 + 11) = 0;
  HIBYTE(v36) = 0;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  if (self->_isBaseObjectDebugDevice)
  {
    v14 = 0;
  }

  else
  {
    v14 = 327683;
  }

  v33 = 0;
  v15 = [(MTLDeviceSPI *)baseObject newComputePipelineStateWithFunction:baseObject options:v14 reflection:&v33 error:error];
  v16 = v33;

  if (v15)
  {
    v17 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v15 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  [(CaptureMTLComputePipelineState *)v17 setFunction:functionCopy];
  GTTraceEncoder_setStream(&v34, [(CaptureMTLComputePipelineState *)v17 traceStream]);
  v18 = v35;
  *(v35 + 8) = -16299;
  v19 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v21 = *(*(&v34 + 1) + 24);
    v22 = BYTE10(v36);
    ++BYTE10(v36);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v35 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v18 + 13) = v19;
  baseObject2 = [functionCopy baseObject];
  SaveMTLComputePipelineReflection(&v34, v15, v16, 0, baseObject2);

  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v17 traceStream];
  if (traceStream2)
  {
    v27 = traceStream2->var0;
  }

  else
  {
    v27 = 0;
  }

  traceStream3 = [functionCopy traceStream];
  if (!traceStream3)
  {
    v29 = 0;
    if (error)
    {
      goto LABEL_18;
    }

LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v29 = *traceStream3;
  if (!error)
  {
    goto LABEL_20;
  }

LABEL_18:
  v30 = *error;
LABEL_21:
  *v20 = var0;
  *(v20 + 1) = v27;
  *(v20 + 2) = v29;
  *(v20 + 3) = v30;
  v31 = v35;
  *v9 = v36;
  *(v9 + 8) = BYTE8(v36);
  *(v31 + 15) |= 8u;

  return v17;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  descriptorCopy = descriptor;
  v10 = unwrapMTLComputePipelineDescriptor(descriptorCopy);
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  traceContext = self->_traceContext;
  v54 = traceContext;
  *&v55 = 0;
  *(&v55 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = *v12;
  *v12 = v14;
  *&v56 = v13;
  v49 = v12;
  BYTE8(v56) = *(v12 + 8);
  *(&v56 + 9) = 16400;
  *(&v56 + 11) = 0;
  HIBYTE(v56) = 0;
  baseObject = self->_baseObject;
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v18 = 327683;
  if (pipelineLibrary)
  {
    v18 = 65539;
  }

  v19 = 65543;
  if ((options & 4) == 0)
  {
    v19 = v18;
  }

  if (isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v19;
  }

  v53 = 0;
  errorCopy = error;
  v21 = [(MTLDeviceSPI *)baseObject newComputePipelineStateWithDescriptor:v10 options:optionsCopy reflection:&v53 error:error];
  v22 = v53;

  if (v21)
  {
    v23 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v21 captureDevice:self];
  }

  else
  {
    v23 = 0;
  }

  optionsCopy2 = options;
  v24 = [(CaptureMTLDevice *)self dummyEncodeComputePSOIntoArgumentBufferForResourceIndex:v21 withDescriptor:descriptorCopy];
  [(CaptureMTLComputePipelineState *)v23 setDescriptor:v24];
  v51 = v24;
  if ([v24 supportAddingBinaryFunctions])
  {
    [(CaptureMTLComputePipelineState *)v23 setReflection:v22];
  }

  GTTraceEncoder_setStream(&v54, [(CaptureMTLComputePipelineState *)v23 traceStream]);
  v25 = v55;
  *(v55 + 8) = -16199;
  v26 = BYTE9(v56);
  if (BYTE9(v56) > 0x18uLL)
  {
    v28 = *(*(&v54 + 1) + 24);
    v29 = BYTE10(v56);
    ++BYTE10(v56);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v55 + 1), v29 | 0x2800000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v56));
    BYTE9(v56) += 40;
  }

  *(v25 + 13) = v26;
  SaveMTLComputePipelineReflection(&v54, v21, v22, v10, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v23 traceStream];
  v33 = v10;
  if (traceStream2)
  {
    v34 = traceStream2->var0;
  }

  else
  {
    v34 = 0;
  }

  v35 = descriptorCopy;
  if (errorCopy)
  {
    v36 = *errorCopy;
  }

  else
  {
    v36 = 0;
  }

  v37 = SaveMTLComputePipelineDescriptor(&v54, v51);
  *v27 = var0;
  *(v27 + 1) = v34;
  *(v27 + 2) = optionsCopy2;
  *(v27 + 3) = v36;
  v27[32] = v37;
  *(v27 + 33) = 0;
  *(v27 + 9) = 0;
  v38 = v35;
  if (!optionsCopy2 || !reflection)
  {
    v39 = v33;
    v40 = v22;
    goto LABEL_33;
  }

  v39 = v33;
  if ((~optionsCopy2 & 3) == 0)
  {
    goto LABEL_30;
  }

  v40 = v22;
  if (!self->_isBaseObjectDebugDevice)
  {
    v41 = DEVICEOBJECT(self->_baseObject);
    v42 = deviceMTLComputePipelineDescriptorWithoutResourceIndex(v38);
    v52 = v22;
    v43 = [v41 newComputePipelineStateWithDescriptor:v42 options:optionsCopy2 reflection:&v52 error:errorCopy];
    v22 = v52;

LABEL_30:
    v40 = v22;
  }

  v44 = v40;
  *reflection = v40;
LABEL_33:
  v45 = v55;
  *v49 = v56;
  *(v49 + 8) = BYTE8(v56);
  *(v45 + 15) |= 8u;

  return v23;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  traceContext = self->_traceContext;
  v40 = traceContext;
  *&v41 = 0;
  *(&v41 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v42 = v10;
  BYTE8(v42) = *(v8 + 8);
  *(&v42 + 9) = 16400;
  *(&v42 + 11) = 0;
  HIBYTE(v42) = 0;
  v12 = unwrapMTLComputePipelineDescriptor(descriptorCopy);
  baseObject = self->_baseObject;
  isBaseObjectDebugDevice = self->_isBaseObjectDebugDevice;
  pipelineLibrary = [descriptorCopy pipelineLibrary];
  v16 = 65539;
  if (!pipelineLibrary)
  {
    v16 = 327683;
  }

  if (isBaseObjectDebugDevice)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v39 = 0;
  v18 = [(MTLDeviceSPI *)baseObject newComputePipelineStateWithDescriptor:v12 options:v17 reflection:&v39 error:error];
  v19 = v39;

  if (v18)
  {
    v20 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v18 captureDevice:self];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLDevice *)self dummyEncodeComputePSOIntoArgumentBufferForResourceIndex:v18 withDescriptor:descriptorCopy];

  [(CaptureMTLComputePipelineState *)v20 setDescriptor:v21];
  if ([v21 supportAddingBinaryFunctions])
  {
    [(CaptureMTLComputePipelineState *)v20 setReflection:v19];
  }

  GTTraceEncoder_setStream(&v40, [(CaptureMTLComputePipelineState *)v20 traceStream]);
  v22 = v41;
  *(v41 + 8) = -16200;
  v23 = BYTE9(v42);
  if (BYTE9(v42) > 0x20uLL)
  {
    v25 = *(*(&v40 + 1) + 24);
    v38 = v18;
    v26 = v9;
    v27 = v12;
    v28 = v19;
    errorCopy = error;
    v30 = BYTE10(v42);
    ++BYTE10(v42);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v41 + 1), v30 | 0x2000000000) + 16;
    v23 = v30;
    error = errorCopy;
    v19 = v28;
    v12 = v27;
    v9 = v26;
    v18 = v38;
  }

  else
  {
    v24 = (v22 + BYTE9(v42));
    BYTE9(v42) += 32;
  }

  *(v22 + 13) = v23;
  SaveMTLComputePipelineReflection(&v40, v18, v19, v12, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v20 traceStream];
  if (!traceStream2)
  {
    v34 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v34 = traceStream2->var0;
  if (error)
  {
LABEL_19:
    error = *error;
  }

LABEL_20:
  v35 = SaveMTLComputePipelineDescriptor(&v40, v21);
  *v24 = var0;
  *(v24 + 1) = v34;
  *(v24 + 2) = error;
  v24[24] = v35;
  *(v24 + 25) = 0;
  *(v24 + 7) = 0;
  v36 = v41;
  *v9 = v42;
  *(v9 + 8) = BYTE8(v42);
  *(v36 + 15) |= 8u;

  return v20;
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [descriptor copy];
  selfCopy = self;
  v11 = unwrapMTLComputePipelineDescriptor(v9);
  baseObject = selfCopy->_baseObject;
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  pipelineLibrary = [v9 pipelineLibrary];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __84__CaptureMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v21[3] = &unk_2F1998;
  if (pipelineLibrary)
  {
    v15 = 65539;
  }

  else
  {
    v15 = 327683;
  }

  v22 = selfCopy;
  v23 = selfCopy;
  if ((options & 4) != 0)
  {
    v15 = 65543;
  }

  v24 = v9;
  v25 = v11;
  if (isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v15;
  }

  v26 = handlerCopy;
  optionsCopy2 = options;
  v17 = handlerCopy;
  v18 = v11;
  v19 = v9;
  v20 = selfCopy;
  [(MTLDeviceSPI *)baseObject newComputePipelineStateWithDescriptor:v18 options:optionsCopy completionHandler:v21];
}

void __84__CaptureMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) dummyEncodeComputePSOIntoArgumentBufferForResourceIndex:v7 withDescriptor:*(a1 + 48)];
  [(CaptureMTLComputePipelineState *)v10 setDescriptor:v11];
  if ([v11 supportAddingBinaryFunctions])
  {
    [(CaptureMTLComputePipelineState *)v10 setReflection:v8];
  }

  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLComputePipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v38);
  v13 = v39;
  *(v39 + 8) = -16197;
  v14 = BYTE9(v40);
  if (BYTE9(v40) > 0x18uLL)
  {
    v16 = *(*(&v38 + 1) + 24);
    v17 = BYTE10(v40);
    ++BYTE10(v40);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v39 + 1), v17 | 0x2800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v40));
    BYTE9(v40) += 40;
  }

  *(v13 + 13) = v14;
  SaveMTLComputePipelineReflection(&v38, v7, v8, *(a1 + 56), 0);
  v18 = [*(a1 + 32) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLComputePipelineState *)v10 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = *(a1 + 72);
  v23 = SaveMTLComputePipelineDescriptor(&v38, v11);
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = v22;
  *(v15 + 3) = 0;
  v15[32] = v23;
  *(v15 + 33) = 0;
  *(v15 + 9) = 0;
  v24 = *(a1 + 32);
  if ((v24[345] & 1) == 0 && (~*(a1 + 72) & 3) != 0)
  {
    v25 = [v24 baseObject];
    v26 = DEVICEOBJECT(v25);
    v27 = deviceMTLComputePipelineDescriptorWithoutResourceIndex(*(a1 + 48));
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v35 = v38;
    v36 = v39;
    v31[2] = __84__CaptureMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke_2;
    v31[3] = &unk_2F1948;
    v37 = v40;
    v28 = *(a1 + 72);
    v34 = *(a1 + 64);
    v32 = v10;
    v33 = v9;
    [v26 newComputePipelineStateWithDescriptor:v27 options:v28 completionHandler:v31];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  [*(a1 + 32) traceContext];
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

void __84__CaptureMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[10];
  v5 = a3;
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v4;
  v9 = a1[5];
  v10 = a1[4];
  (*(a1[6] + 16))();

  *v7 = v8;
}

- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  functionCopy = function;
  handlerCopy = handler;
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  baseObject = [functionCopy baseObject];
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  v14 = 65543;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __82__CaptureMTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v19[3] = &unk_2F1970;
  if ((options & 4) == 0)
  {
    v14 = 327683;
  }

  v20 = selfCopy;
  v21 = functionCopy;
  if (isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = v14;
  }

  v22 = handlerCopy;
  optionsCopy2 = options;
  v16 = handlerCopy;
  v17 = functionCopy;
  v18 = selfCopy;
  [(MTLDeviceSPI *)baseObject newComputePipelineStateWithFunction:baseObject options:optionsCopy completionHandler:v19];
}

void __82__CaptureMTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  [(CaptureMTLComputePipelineState *)v10 setFunction:*(a1 + 40)];
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [*(a1 + 32) traceContext];
  [(CaptureMTLComputePipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v11, &v39);
  v12 = v40;
  *(v40 + 8) = -16296;
  v13 = BYTE9(v41);
  if (BYTE9(v41) > 0x18uLL)
  {
    v15 = *(*(&v39 + 1) + 24);
    v16 = BYTE10(v41);
    ++BYTE10(v41);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v40 + 1), v16 | 0x2800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v41));
    BYTE9(v41) += 40;
  }

  *(v12 + 13) = v13;
  v17 = [*(a1 + 40) baseObject];
  SaveMTLComputePipelineReflection(&v39, v7, v8, 0, v17);

  v18 = [*(a1 + 32) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLComputePipelineState *)v10 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [*(a1 + 40) traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 56);
  *v14 = v19;
  *(v14 + 1) = var0;
  *(v14 + 2) = v23;
  *(v14 + 3) = v24;
  *(v14 + 4) = 0;
  v25 = *(a1 + 32);
  if ((v25[345] & 1) != 0 || (v24 & 3) == 3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v26 = [v25 baseObject];
    v27 = DEVICEOBJECT(v26);
    v28 = DEVICEOBJECT(*(a1 + 40));
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v36 = v39;
    v37 = v40;
    v32[2] = __82__CaptureMTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke_2;
    v32[3] = &unk_2F1948;
    v38 = v41;
    v29 = *(a1 + 56);
    v35 = *(a1 + 48);
    v33 = v10;
    v34 = v9;
    [v27 newComputePipelineStateWithFunction:v28 options:v29 completionHandler:v32];
  }

  [*(a1 + 32) traceContext];
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
}

void __82__CaptureMTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[10];
  v5 = a3;
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v4;
  v9 = a1[5];
  v10 = a1[4];
  (*(a1[6] + 16))();

  *v7 = v8;
}

- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler
{
  functionCopy = function;
  handlerCopy = handler;
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  baseObject = [functionCopy baseObject];
  v11 = !selfCopy->_isBaseObjectDebugDevice;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __74__CaptureMTLDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v16[3] = &unk_2F1920;
  if (v11)
  {
    v12 = 327683;
  }

  else
  {
    v12 = 0;
  }

  v17 = selfCopy;
  v18 = functionCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = functionCopy;
  v15 = selfCopy;
  [(MTLDeviceSPI *)baseObject newComputePipelineStateWithFunction:baseObject options:v12 completionHandler:v16];
}

void __74__CaptureMTLDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  [(CaptureMTLComputePipelineState *)v10 setFunction:*(a1 + 40)];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v11 = [*(a1 + 32) traceContext];
  [(CaptureMTLComputePipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v11, &v26);
  v12 = v27;
  *(v27 + 8) = -16297;
  v13 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v15 = *(*(&v26 + 1) + 24);
    v16 = BYTE10(v28);
    ++BYTE10(v28);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v27 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [*(a1 + 40) baseObject];
  SaveMTLComputePipelineReflection(&v26, v7, v8, 0, v17);

  v18 = [*(a1 + 32) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLComputePipelineState *)v10 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [*(a1 + 40) traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v14 = v19;
  *(v14 + 1) = var0;
  *(v14 + 2) = v23;
  *(v14 + 3) = 0;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v12 = unwrapMTLRenderPipelineDescriptor(v9);
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  pipelineLibrary = [v9 pipelineLibrary];
  v20[0] = _NSConcreteStackBlock;
  v15 = 327683;
  if (pipelineLibrary)
  {
    v15 = 65539;
  }

  v20[1] = 3221225472;
  v20[2] = __83__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v20[3] = &unk_2F18F8;
  if ((options & 4) != 0)
  {
    v16 = 65543;
  }

  else
  {
    v16 = v15;
  }

  v21 = selfCopy;
  v22 = selfCopy;
  v24 = handlerCopy;
  optionsCopy = options;
  if (!isBaseObjectDebugDevice)
  {
    options = v16;
  }

  v23 = v9;
  v17 = handlerCopy;
  v18 = v9;
  v19 = selfCopy;
  [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithDescriptor:v12 options:options completionHandler:v20];
}

void __83__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v7 withDescriptor:*(a1 + 48)];
  [(CaptureMTLRenderPipelineState *)v10 setDescriptor:v11];
  if (([v11 supportAddingVertexBinaryFunctions] & 1) != 0 || objc_msgSend(v11, "supportAddingFragmentBinaryFunctions"))
  {
    [(CaptureMTLRenderPipelineState *)v10 setReflection:v8];
  }

  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLRenderPipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v39);
  v13 = v40;
  *(v40 + 8) = -16300;
  v14 = BYTE9(v41);
  if (BYTE9(v41) > 0x18uLL)
  {
    v16 = *(*(&v39 + 1) + 24);
    v17 = BYTE10(v41);
    ++BYTE10(v41);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v40 + 1), v17 | 0x2800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v41));
    BYTE9(v41) += 40;
  }

  *(v13 + 13) = v14;
  v18 = LoadDynamicLibrariesForRenderPipelineDescriptor(v11);
  if (v7)
  {
    SaveMTLRenderPipelineReflectionCommon(&v39, v7, v8, v18, 0);
  }

  v19 = [*(a1 + 32) traceStream];
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLRenderPipelineState *)v10 traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = *(a1 + 64);
  v24 = SaveMTLRenderPipelineDescriptor(&v39, v11);
  *v15 = v20;
  *(v15 + 1) = var0;
  *(v15 + 2) = v23;
  *(v15 + 3) = 0;
  v15[32] = v24;
  *(v15 + 33) = 0;
  *(v15 + 9) = 0;
  v25 = *(a1 + 32);
  if ((v25[345] & 1) == 0 && (~*(a1 + 64) & 3) != 0)
  {
    v26 = [v25 baseObject];
    v27 = DEVICEOBJECT(v26);
    v28 = deviceMTLRenderPipelineDescriptorWithoutResourceIndex(*(a1 + 48));
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v36 = v39;
    v37 = v40;
    v32[2] = __83__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke_2;
    v32[3] = &unk_2F18D0;
    v38 = v41;
    v29 = *(a1 + 64);
    v35 = *(a1 + 56);
    v33 = v10;
    v34 = v9;
    [v27 newRenderPipelineStateWithDescriptor:v28 options:v29 completionHandler:v32];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 32) traceContext];
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
}

void __83__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[10];
  v5 = a3;
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v4;
  v9 = a1[5];
  v10 = a1[4];
  (*(a1[6] + 16))();

  *v7 = v8;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [descriptor copy];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(v7);
  isBaseObjectDebugDevice = selfCopy->_isBaseObjectDebugDevice;
  pipelineLibrary = [v7 pipelineLibrary];
  v13 = 65539;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __75__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v18[3] = &unk_2F18A8;
  if (!pipelineLibrary)
  {
    v13 = 327683;
  }

  v19 = selfCopy;
  v20 = selfCopy;
  if (isBaseObjectDebugDevice)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v21 = v7;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v7;
  v17 = selfCopy;
  [(MTLDeviceSPI *)baseObject newRenderPipelineStateWithDescriptor:v10 options:v14 completionHandler:v18];
}

void __75__CaptureMTLDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v7 captureDevice:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:v7 withDescriptor:*(a1 + 48)];
  [(CaptureMTLRenderPipelineState *)v10 setDescriptor:v11];
  if (([v11 supportAddingVertexBinaryFunctions] & 1) != 0 || objc_msgSend(v11, "supportAddingFragmentBinaryFunctions"))
  {
    [(CaptureMTLRenderPipelineState *)v10 setReflection:v8];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v12 = [*(a1 + 32) traceContext];
  [(CaptureMTLRenderPipelineState *)v10 traceStream];
  GTTraceContext_pushEncoderWithStream(v12, &v26);
  v13 = v27;
  *(v27 + 8) = -16301;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v13 + 13) = v14;
  v18 = LoadDynamicLibrariesForRenderPipelineDescriptor(v11);
  if (v7)
  {
    SaveMTLRenderPipelineReflectionCommon(&v26, v7, v8, v18, 0);
  }

  v19 = [*(a1 + 32) traceStream];
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(CaptureMTLRenderPipelineState *)v10 traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = SaveMTLRenderPipelineDescriptor(&v26, v11);
  *v15 = v20;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v23;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (id)newLibraryWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v31 = v10;
  BYTE8(v31) = *(v8 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newLibraryWithURL:lCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLLibrary alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLLibrary *)v13 traceStream]);
  v14 = v30;
  *(v30 + 8) = -16039;
  v15 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v17 = *(*(&v29 + 1) + 24);
    v18 = BYTE10(v31);
    ++BYTE10(v31);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLLibraryInfoWithPath(&v29, v12, [lCopy fileSystemRepresentation]);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
    if (error)
    {
LABEL_12:
      v23 = *error;
      goto LABEL_15;
    }
  }

  else
  {
    v22 = 0;
    if (error)
    {
      goto LABEL_12;
    }
  }

  v23 = 0;
LABEL_15:
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v26 = strlen([lCopy fileSystemRepresentation]);
    LOBYTE(fileSystemRepresentation) = GTTraceEncoder_storeBytes(&v29, fileSystemRepresentation2, v26 + 1);
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v23;
  v16[24] = fileSystemRepresentation;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v27 = v30;
  *v9 = v31;
  *(v9 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v13;
}

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [source copy];
  if (optionsCopy)
  {
    v11 = unwrapMTLCompileOptions(optionsCopy);
  }

  else
  {
    v11 = objc_alloc_init(MTLCompileOptions);
  }

  v12 = v11;
  [v11 setDebuggingEnabled:1];
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __67__CaptureMTLDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v19[3] = &unk_2F2358;
  v20 = selfCopy;
  v21 = optionsCopy;
  v22 = v10;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = v10;
  v17 = optionsCopy;
  v18 = selfCopy;
  [(MTLDeviceSPI *)baseObject newLibraryWithSource:v16 options:v12 completionHandler:v19];
}

void __67__CaptureMTLDevice_newLibraryWithSource_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[CaptureMTLLibrary alloc] initWithBaseObject:v5 captureDevice:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  [(CaptureMTLLibrary *)v7 setOptions:*(a1 + 40)];
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = [*(a1 + 32) traceContext];
  [(CaptureMTLLibrary *)v7 traceStream];
  GTTraceContext_pushEncoderWithStream(v8, &v25);
  v9 = v26;
  *(v26 + 8) = -16304;
  v10 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v12 = *(*(&v25 + 1) + 24);
    v13 = BYTE10(v27);
    ++BYTE10(v27);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v26 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v9 + 13) = v10;
  SaveMTLLibraryInfoWithPath(&v25, v5, 0);
  v14 = [*(a1 + 32) traceStream];
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CaptureMTLLibrary *)v7 traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RetainDebugObject(v5);
    v18 = 0;
  }

  else
  {
    v19 = [*(a1 + 48) UTF8String];
    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = strlen([v20 UTF8String]) + 1;
    }

    else
    {
      v21 = 0;
    }

    v18 = GTTraceEncoder_storeBlob(&v25, v19, v21);
  }

  v22 = SaveMTLCompileOptions(&v25, *(a1 + 40));
  *v11 = v15;
  *(v11 + 1) = var0;
  *(v11 + 2) = 0;
  v11[24] = v18;
  v11[25] = v22;
  *(v11 + 26) = 0;
  *(v11 + 15) = 0;
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) traceContext];
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
{
  sourceCopy = source;
  optionsCopy = options;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  v36 = traceContext;
  *&v37 = 0;
  *(&v37 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v38 = v13;
  BYTE8(v38) = *(v11 + 8);
  *(&v38 + 9) = 16400;
  *(&v38 + 11) = 0;
  HIBYTE(v38) = 0;
  if (optionsCopy)
  {
    v15 = unwrapMTLCompileOptions(optionsCopy);
  }

  else
  {
    v15 = objc_alloc_init(MTLCompileOptions);
  }

  v16 = v15;
  [v15 setDebuggingEnabled:1];
  v17 = [(MTLDeviceSPI *)self->_baseObject newLibraryWithSource:sourceCopy options:v16 error:error];
  v35 = v16;
  if (v17)
  {
    v18 = [[CaptureMTLLibrary alloc] initWithBaseObject:v17 captureDevice:self];
  }

  else
  {
    v18 = 0;
  }

  GTTraceEncoder_setStream(&v36, [(CaptureMTLLibrary *)v18 traceStream]);
  [(CaptureMTLLibrary *)v18 setOptions:optionsCopy];
  v19 = v37;
  *(v37 + 8) = -16305;
  v20 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v22 = *(*(&v36 + 1) + 24);
    v23 = BYTE10(v38);
    ++BYTE10(v38);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v37 + 1), v23 | 0x2000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  *(v19 + 13) = v20;
  SaveMTLLibraryInfoWithPath(&v36, v17, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v18 traceStream];
  if (traceStream2)
  {
    v27 = traceStream2->var0;
    if (error)
    {
LABEL_15:
      v28 = *error;
      goto LABEL_18;
    }
  }

  else
  {
    v27 = 0;
    if (error)
    {
      goto LABEL_15;
    }
  }

  v28 = 0;
LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RetainDebugObject(v17);
    v29 = 0;
  }

  else
  {
    uTF8String = [sourceCopy UTF8String];
    if (sourceCopy)
    {
      v31 = strlen([sourceCopy UTF8String]) + 1;
    }

    else
    {
      v31 = 0;
    }

    v29 = GTTraceEncoder_storeBlob(&v36, uTF8String, v31);
  }

  v32 = SaveMTLCompileOptions(&v36, optionsCopy);
  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = v28;
  v21[24] = v29;
  v21[25] = v32;
  *(v21 + 26) = 0;
  *(v21 + 15) = 0;
  v33 = v37;
  *v12 = v38;
  *(v12 + 8) = BYTE8(v38);
  *(v33 + 15) |= 8u;

  return v18;
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  iCopy = i;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  v39 = traceContext;
  *&v40 = 0;
  *(&v40 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v41 = v12;
  BYTE8(v41) = *(v10 + 8);
  *(&v41 + 9) = 16400;
  *(&v41 + 11) = 0;
  HIBYTE(v41) = 0;
  baseObject = self->_baseObject;
  v15 = unwrapNSArray(iCopy);
  infoCopy = info;
  v16 = [(MTLDeviceSPI *)baseObject newLibraryWithImageFilterFunctionsSPI:v15 imageFilterFunctionInfo:info error:error];

  if (v16)
  {
    v17 = [[CaptureMTLLibrary alloc] initWithBaseObject:v16 captureDevice:self captureFunctions:iCopy];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v39, [(CaptureMTLLibrary *)v17 traceStream]);
  v18 = v40;
  *(v40 + 8) = -15847;
  v19 = BYTE9(v41);
  if (BYTE9(v41) > 0x18uLL)
  {
    v21 = *(*(&v39 + 1) + 24);
    v22 = BYTE10(v41);
    ++BYTE10(v41);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v40 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v41));
    BYTE9(v41) += 40;
  }

  *(v18 + 13) = v19;
  SaveMTLLibraryInfoWithPath(&v39, v16, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v17 traceStream];
  if (traceStream2)
  {
    v26 = traceStream2->var0;
  }

  else
  {
    v26 = 0;
  }

  v27 = [iCopy count];
  if (error)
  {
    v28 = *error;
  }

  else
  {
    v28 = 0;
  }

  v29 = [iCopy count];
  __chkstk_darwin(v29, 8 * v29);
  v31 = (&v37 - v30);
  bzero(&v37 - v30, v32);
  LOBYTE(v31) = StreamNSArray(&v39, v31, iCopy);
  v33 = [iCopy count];
  v34 = SaveImageFilterFunctionInfo(&v39, infoCopy, v33);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = v27;
  *(v20 + 3) = v28;
  v20[32] = v31;
  v20[33] = v34;
  *(v20 + 34) = 0;
  *(v20 + 19) = 0;
  v35 = v40;
  *v11 = v41;
  *(v11 + 8) = BYTE8(v41);
  *(v35 + 15) |= 8u;

  return v17;
}

- (id)newLibraryWithFile:(id)file error:(id *)error
{
  fileCopy = file;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v31 = v10;
  BYTE8(v31) = *(v8 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  v12 = [(MTLDeviceSPI *)self->_baseObject newLibraryWithFile:fileCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLLibrary alloc] initWithBaseObject:v12 captureDevice:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLLibrary *)v13 traceStream]);
  v14 = v30;
  *(v30 + 8) = -16307;
  v15 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v17 = *(*(&v29 + 1) + 24);
    v18 = BYTE10(v31);
    ++BYTE10(v31);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLLibraryInfoWithPath(&v29, v12, [fileCopy fileSystemRepresentation]);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
    if (error)
    {
LABEL_12:
      v23 = *error;
      goto LABEL_15;
    }
  }

  else
  {
    v22 = 0;
    if (error)
    {
      goto LABEL_12;
    }
  }

  v23 = 0;
LABEL_15:
  uTF8String = [fileCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [fileCopy UTF8String];
    v26 = strlen([fileCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v29, uTF8String2, v26 + 1);
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v23;
  v16[24] = uTF8String;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v27 = v30;
  *v9 = v31;
  *(v9 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v13;
}

- (id)newLibraryWithCIFiltersForComputePipeline:(id)pipeline imageFilterFunctionInfo:(id *)info error:(id *)error
{
  pipelineCopy = pipeline;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  v32 = traceContext;
  *&v33 = 0;
  *(&v33 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v34 = v12;
  BYTE8(v34) = *(v10 + 8);
  *(&v34 + 9) = 16400;
  *(&v34 + 11) = 0;
  HIBYTE(v34) = 0;
  baseObject = self->_baseObject;
  v15 = unwrapNSArray(pipelineCopy);
  v16 = [(MTLDeviceSPI *)baseObject newLibraryWithCIFiltersForComputePipeline:v15 imageFilterFunctionInfo:info error:error];

  if (v16)
  {
    v17 = [[CaptureMTLLibrary alloc] initWithBaseObject:v16 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v32, [(CaptureMTLLibrary *)v17 traceStream]);
  v18 = v33;
  *(v33 + 8) = -16018;
  v19 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v21 = *(*(&v32 + 1) + 24);
    v22 = BYTE10(v34);
    ++BYTE10(v34);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v18 + 13) = v19;
  SaveMTLLibraryInfoWithPath(&v32, v16, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v17 traceStream];
  if (!traceStream2)
  {
    v26 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v26 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v27 = *error;
LABEL_15:
  v28 = SaveMTLArray(&v32, pipelineCopy);
  v29 = SaveImageFilterFunctionInfo(&v32, info, [pipelineCopy count]);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = v27;
  v20[24] = v28;
  v20[25] = v29;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  v30 = v33;
  *v11 = v34;
  *(v11 + 8) = BYTE8(v34);
  *(v30 + 15) |= 8u;

  return v17;
}

- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error
{
  filtersCopy = filters;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  v32 = traceContext;
  *&v33 = 0;
  *(&v33 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v34 = v12;
  BYTE8(v34) = *(v10 + 8);
  *(&v34 + 9) = 16400;
  *(&v34 + 11) = 0;
  HIBYTE(v34) = 0;
  baseObject = self->_baseObject;
  v15 = unwrapNSArray(filtersCopy);
  v16 = [(MTLDeviceSPI *)baseObject newLibraryWithCIFilters:v15 imageFilterFunctionInfo:info error:error];

  if (v16)
  {
    v17 = [[CaptureMTLLibrary alloc] initWithBaseObject:v16 captureDevice:self];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v32, [(CaptureMTLLibrary *)v17 traceStream]);
  v18 = v33;
  *(v33 + 8) = -16029;
  v19 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v21 = *(*(&v32 + 1) + 24);
    v22 = BYTE10(v34);
    ++BYTE10(v34);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v18 + 13) = v19;
  SaveMTLLibraryInfoWithPath(&v32, v16, 0);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v17 traceStream];
  if (!traceStream2)
  {
    v26 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v26 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v27 = *error;
LABEL_15:
  v28 = SaveMTLArray(&v32, filtersCopy);
  v29 = SaveImageFilterFunctionInfo(&v32, info, [filtersCopy count]);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = v27;
  v20[24] = v28;
  v20[25] = v29;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  v30 = v33;
  *v11 = v34;
  *(v11 + 8) = BYTE8(v34);
  *(v30 + 15) |= 8u;

  return v17;
}

- (id)newSharedEventWithMachPort:(unsigned int)port
{
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceContext = self->_traceContext;
  v34 = traceContext;
  *&v35 = 0;
  *(&v35 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v36 = v8;
  BYTE8(v36) = *(v6 + 8);
  *(&v36 + 9) = 16400;
  *(&v36 + 11) = 0;
  HIBYTE(v36) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newSharedEventWithMachPort:?];
  if (v10)
  {
    v11 = [[CaptureMTLSharedEvent alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v34, [(CaptureMTLSharedEvent *)v11 traceStream]);
  v12 = v35;
  *(v35 + 8) = -15912;
  v13 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v15 = *(*(&v34 + 1) + 24);
    v16 = BYTE10(v36);
    ++BYTE10(v36);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v35 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLSharedEvent *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  signaledValue = [v10 signaledValue];
  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = signaledValue;
  *(v14 + 6) = port;
  *(v14 + 7) = 0;
  v22 = v35;
  *v7 = v36;
  *(v7 + 8) = BYTE8(v36);
  *(v22 + 15) |= 8u;

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v23 = self->_traceContext;
  [(CaptureMTLSharedEvent *)v11 traceStream];
  GTTraceContext_pushEncoderWithStream(v23, &v34);
  *(v7 + 8) |= 0x40u;
  newSharedEventHandle = [(CaptureMTLSharedEvent *)v11 newSharedEventHandle];
  v25 = v35;
  *(v35 + 8) = -15907;
  v26 = BYTE9(v36);
  if (BYTE9(v36) > 0x30uLL)
  {
    v28 = *(*(&v34 + 1) + 24);
    v29 = BYTE10(v36);
    ++BYTE10(v36);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v35 + 1), v29 | 0x1000000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v36));
    BYTE9(v36) += 16;
  }

  *(v25 + 13) = v26;
  traceStream3 = [(CaptureMTLDevice *)self traceStream];
  if (traceStream3)
  {
    v31 = traceStream3->var0;
  }

  else
  {
    v31 = 0;
  }

  *v27 = v31;
  *(v27 + 1) = newSharedEventHandle;
  v32 = v35;
  *v7 = v36;
  *(v7 + 8) = BYTE8(v36);
  *(v32 + 15) |= 8u;

  return v11;
}

- (id)newSharedEventWithHandle:(id)handle
{
  handleCopy = handle;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newSharedEventWithHandle:handleCopy];
  if (v10)
  {
    v11 = [[CaptureMTLSharedEvent alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLSharedEvent *)v11 traceStream]);
  v12 = v26;
  *(v26 + 8) = -15909;
  v13 = BYTE9(v27);
  if (BYTE9(v27) > 0x18uLL)
  {
    v15 = *(*(&v25 + 1) + 24);
    v16 = BYTE10(v27);
    ++BYTE10(v27);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v26 + 1), v16 | 0x2800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v27));
    BYTE9(v27) += 40;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLSharedEvent *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  signaledValue = [v10 signaledValue];
  eventPort = [handleCopy eventPort];
  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = handleCopy;
  *(v14 + 3) = signaledValue;
  *(v14 + 8) = eventPort;
  *(v14 + 9) = 0;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v11;
}

- (id)newSharedEvent
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v25 = v6;
  BYTE8(v25) = *(v4 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  newSharedEvent = [(MTLDeviceSPI *)self->_baseObject newSharedEvent];
  if (newSharedEvent)
  {
    v9 = [[CaptureMTLSharedEvent alloc] initWithBaseObject:newSharedEvent captureDevice:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLSharedEvent *)v9 traceStream]);
  newSharedEventHandle = [newSharedEvent newSharedEventHandle];
  v11 = v24;
  *(v24 + 8) = -15996;
  v12 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v14 = *(*(&v23 + 1) + 24);
    v15 = BYTE10(v25);
    ++BYTE10(v25);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x2000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLSharedEvent *)v9 traceStream];
  if (traceStream2)
  {
    v19 = traceStream2->var0;
  }

  else
  {
    v19 = 0;
  }

  eventPort = [newSharedEventHandle eventPort];
  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = newSharedEventHandle;
  *(v13 + 6) = eventPort;
  *(v13 + 7) = 0;
  v21 = v24;
  *v5 = v25;
  *(v5 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v9;
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  iCopy = i;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  v39 = traceContext;
  *&v40 = 0;
  *(&v40 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v41 = v12;
  BYTE8(v41) = *(v10 + 8);
  *(&v41 + 9) = 16400;
  *(&v41 + 11) = 0;
  HIBYTE(v41) = 0;
  baseObject = self->_baseObject;
  v15 = unwrapNSArray(iCopy);
  infoCopy = info;
  v16 = [(MTLDeviceSPI *)baseObject newLibraryWithImageFilterFunctionsSPI:v15 imageFilterFunctionInfo:info error:error];

  v35 = v16;
  v17 = [v16 newFunctionWithName:@"ciKernelMain"];
  v18 = self->_baseObject;
  v38 = 0;
  v19 = [(MTLDeviceSPI *)v18 newComputePipelineStateWithFunction:v17 options:0 reflection:&v38 error:error];
  v37 = v38;
  if (v19)
  {
    v20 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v19 captureDevice:self];
  }

  else
  {
    v20 = 0;
  }

  GTTraceEncoder_setStream(&v39, [(CaptureMTLComputePipelineState *)v20 traceStream]);
  v21 = v40;
  *(v40 + 8) = -16101;
  v22 = BYTE9(v41);
  if (BYTE9(v41) > 0x20uLL)
  {
    v24 = *(*(&v39 + 1) + 24);
    v25 = BYTE10(v41);
    ++BYTE10(v41);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v40 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v41));
    BYTE9(v41) += 32;
  }

  *(v21 + 13) = v22;
  SaveMTLComputePipelineReflection(&v39, v19, v37, 0, v17);
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v20 traceStream];
  if (!traceStream2)
  {
    v29 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v30 = 0;
    goto LABEL_15;
  }

  v29 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v30 = *error;
LABEL_15:
  v31 = StreamMTLNameArray(&v39, iCopy);
  v32 = SaveImageFilterFunctionInfo(&v39, infoCopy, [iCopy count]);
  *v23 = var0;
  *(v23 + 1) = v29;
  *(v23 + 2) = v30;
  v23[24] = v31;
  v23[25] = v32;
  *(v23 + 26) = 0;
  *(v23 + 15) = 0;
  v33 = v40;
  *v11 = v41;
  *(v11 + 8) = BYTE8(v41);
  *(v33 + 15) |= 8u;

  return v20;
}

- (id)newArgumentEncoderWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLDeviceSPI *)self->_baseObject newArgumentEncoderWithArguments:argumentsCopy];
  if (v10)
  {
    v11 = [[CaptureMTLArgumentEncoder alloc] initWithBaseObject:v10 captureDevice:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLArgumentEncoder *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -16037;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = argumentsCopy;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_getUid("newCNNConvolutionWithDescriptor:dataSource:fullyConnected:") == selector || sel_getUid("newCNNConvolutionWithDescriptor:convolutionData:") == selector || sel_getUid("newCNNConvolutionGradientWithDescriptor:convolutionData:") == selector || sel_getUid("newCNNNeuronWithNeuronType:neuronParameterA:neuronParameterB:neuronParameterC:") == selector || sel_getUid("newCNNNeuronWithNeuronType:neuronParameterAArray:count:") == selector || sel_getUid("newMatrixMultiplicationWithTransposeLeft:transposeRight:resultRows:resultColumns:interiorColumns:alpha:beta:") == selector || sel_getUid("newMatrixVectorMultiplicationWithTranspose:rows:columns:alpha:beta:") == selector || sel_getUid("newMatrixFullyConnected") == selector || sel_getUid("newCNNPoolingMaxWithKernelWidth:kernelHeight:strideInPixelsX:strideInPixelsY:") == selector || sel_getUid("newCNNPoolingAverageWithKernelWidth:kernelHeight:strideInPixelsX:strideInPixelsY:") == selector || sel_getUid("newCNNDilatedPoolingMaxWithKernelWidth:kernelHeight:strideInPixelsX:strideInPixelsY:dilationRateX:dilationRateY:") == selector || sel_getUid("newCNNSoftMax") == selector || sel_getUid("newNDArrayConvolution2DWithDescriptor:") == selector)
  {
    baseObject = self->_baseObject;
    goto LABEL_19;
  }

  Uid = sel_getUid("newNDArrayConvolution2DGradientWithDescriptor:");
  baseObject = self->_baseObject;
  if (Uid == selector)
  {
LABEL_19:
    v8 = DEVICEOBJECT(baseObject);
    v9 = objc_opt_respondsToSelector();

    return v9 & 1;
  }

  return CaptureRespondsToSelector(baseObject, selector);
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_getProtocol("MPSPlugin");
  isEqual = protocol_isEqual(protocolCopy, v5);

  if (isEqual)
  {
    goto LABEL_5;
  }

  v7 = objc_getProtocol("MPSNeuralNetworkPlugin");
  v8 = protocol_isEqual(protocolCopy, v7);

  if (v8)
  {
    goto LABEL_5;
  }

  v9 = objc_getProtocol("MPSMatrixPlugin");
  v10 = protocol_isEqual(protocolCopy, v9);

  if (v10 || (objc_getProtocol("MPSNDArrayPlugin"), v11 = objc_claimAutoreleasedReturnValue(), v12 = protocol_isEqual(protocolCopy, v11), v11, v12))
  {
LABEL_5:
    v13 = DEVICEOBJECT(self->_baseObject);
    v14 = [v13 conformsToProtocol:protocolCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CaptureMTLDevice;
    v14 = [(CaptureMTLDevice *)&v16 conformsToProtocol:protocolCopy];
  }

  return v14;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_retainMutex);
  pthread_mutex_destroy(self->_harvester);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16317;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLDevice *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v13.receiver = self;
  v13.super_class = CaptureMTLDevice;
  [(CaptureMTLDevice *)&v13 dealloc];
}

- (void)purgeDeallocatedObjects
{
  pthread_mutex_lock(&self->_retainMutex);
  [(NSMutableArray *)self->_retainObjects removeAllObjects];

  pthread_mutex_unlock(&self->_retainMutex);
}

- (void)deallocateResource:(id)resource
{
  resourceCopy = resource;
  v5 = resourceCopy;
  if (*(boundaryTrackerInstance + 20))
  {
    if (self->_bufferPinningEnabled)
    {
      v16 = resourceCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v16 heap], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 = v16, !v6))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v16 heap], v7 = objc_claimAutoreleasedReturnValue(), v7, v5 = v16, !v7))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v5 = v16;
          if ((isKindOfClass & 1) == 0 || ([v16 heap], v9 = objc_claimAutoreleasedReturnValue(), v9, v5 = v16, !v9))
          {
            baseObject = [v5 baseObject];
            v11 = objc_opt_respondsToSelector();

            if (v11)
            {
              baseObject2 = [v16 baseObject];
              [baseObject2 setPurgeableState:3];
            }

            pthread_mutex_lock(&self->_retainMutex);
            retainObjects = self->_retainObjects;
            baseObject3 = [v16 baseObject];
            v15 = DEVICEOBJECT(baseObject3);
            [(NSMutableArray *)retainObjects addObject:v15];

            resourceCopy = pthread_mutex_unlock(&self->_retainMutex);
            v5 = v16;
          }
        }
      }
    }
  }

  _objc_release_x1(resourceCopy, v5);
}

- (void)invalidateHarvester
{
  [(CaptureMTLDevice *)self purgeDeallocatedObjects];
  apr_pool_clear(self->_harvesterPool);
  self->_harvester = GTResourceHarvesterMake(self->_harvesterPool);
  v3 = [[GTResourceDownloader alloc] initWithDevice:self];
  downloader = self->_downloader;
  self->_downloader = v3;

  _objc_release_x1(v3, downloader);
}

- (BOOL)newCaptureSamplerState:(id *)state associatedWithBaseSamplerState:(id)samplerState
{
  samplerStateCopy = samplerState;
  os_unfair_lock_lock(&self->_cachedSamplerStateLock);
  v7 = [(NSMapTable *)self->_cachedSamplerStateMap objectForKey:samplerStateCopy];
  v8 = *state;
  *state = v7;

  v9 = *state;
  if (!*state)
  {
    v10 = [[CaptureMTLSamplerState alloc] initWithBaseObject:samplerStateCopy captureDevice:self];
    v11 = *state;
    *state = v10;

    [(NSMapTable *)self->_cachedSamplerStateMap setObject:*state forKey:samplerStateCopy];
  }

  os_unfair_lock_unlock(&self->_cachedSamplerStateLock);

  return v9 == 0;
}

- (BOOL)newCaptureDepthStencilState:(id *)state associatedWithBaseDepthStencilState:(id)stencilState
{
  stencilStateCopy = stencilState;
  os_unfair_lock_lock(&self->_cachedDepthStencilStateLock);
  v7 = [(NSMapTable *)self->_cachedDepthStencilStateMap objectForKey:stencilStateCopy];
  v8 = *state;
  *state = v7;

  v9 = *state;
  if (!*state)
  {
    v10 = [[CaptureMTLDepthStencilState alloc] initWithBaseObject:stencilStateCopy captureDevice:self];
    v11 = *state;
    *state = v10;

    [(NSMapTable *)self->_cachedDepthStencilStateMap setObject:*state forKey:stencilStateCopy];
  }

  os_unfair_lock_unlock(&self->_cachedDepthStencilStateLock);

  return v9 == 0;
}

- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function
{
  functionHandleCopy = functionHandle;
  functionCopy = function;
  os_unfair_lock_lock(&self->_cachedFunctionHandleLock);
  v10 = [(NSMapTable *)self->_cachedFunctionHandleMap objectForKey:functionHandleCopy];
  v11 = *handle;
  *handle = v10;

  v12 = *handle;
  if (!*handle)
  {
    v13 = [[CaptureMTLFunctionHandle alloc] initWithBaseObject:functionHandleCopy captureDevice:self captureFunction:functionCopy];
    v14 = *handle;
    *handle = v13;

    [(NSMapTable *)self->_cachedFunctionHandleMap setObject:*handle forKey:functionHandleCopy];
  }

  os_unfair_lock_unlock(&self->_cachedFunctionHandleLock);

  return v12 == 0;
}

- (BOOL)newCaptureFunction:(id *)function associatedWithBaseFunction:(id)baseFunction captureLibrary:(id)library
{
  baseFunctionCopy = baseFunction;
  libraryCopy = library;
  os_unfair_lock_lock(&self->_cachedFunctionLock);
  v10 = [(NSMapTable *)self->_cachedFunctionMap objectForKey:baseFunctionCopy];
  v11 = *function;
  *function = v10;

  v12 = *function;
  if (!*function)
  {
    v13 = [[CaptureMTLFunction alloc] initWithBaseObject:baseFunctionCopy captureLibrary:libraryCopy];
    v14 = *function;
    *function = v13;

    [(NSMapTable *)self->_cachedFunctionMap setObject:*function forKey:baseFunctionCopy];
  }

  os_unfair_lock_unlock(&self->_cachedFunctionLock);

  return v12 == 0;
}

- (CaptureMTLDevice)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v39.receiver = self;
  v39.super_class = CaptureMTLDevice;
  v8 = [(CaptureMTLDevice *)&v39 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    *(v9 + 16) = context;
    v10 = DEVICEOBJECT(objectCopy);
    *(v9 + 24) = GTTraceContext_openStream(context, v10, v9);

    NSClassFromString(@"MTLGPUDebugDevice");
    v11 = NSClassFromString(@"MTLLegacySVDevice");
    v12 = DEVICEOBJECT(objectCopy);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) != 0 && [objectCopy resourcePatchingTypeForResourceType:3] != &dword_0 + 2)
    {
      *(v9 + 344) = 1;
    }

    v14 = objc_alloc_init(NSMutableArray);
    v15 = *(v9 + 288);
    *(v9 + 288) = v14;

    pthread_mutex_init((v9 + 224), 0);
    if ((dword_31F7C8 & 8) != 0)
    {
      v19 = 1;
    }

    else
    {
      name = [*(v9 + 8) name];
      v17 = [name containsString:@"AMD"];

      if (v17)
      {
        if ([*(v9 + 8) supportsRaytracing] && objc_msgSend(*(v9 + 8), "requiresRaytracingEmulation"))
        {
          v18 = *(v9 + 344);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 & 1;
      }

      else
      {
        v19 = *(v9 + 344);
      }
    }

    *(v9 + 346) = v19;
    targetDeviceArchitecture = [objectCopy targetDeviceArchitecture];
    cpuType = [targetDeviceArchitecture cpuType];

    if (cpuType != 16777235)
    {
      dword_31F7C8 |= 0x100u;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else if (v11)
    {
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    *(v9 + 345) = isKindOfClass & 1;
    apr_pool_create_ex((v9 + 32), 0, 0, 0);
    v23 = dispatch_group_create();
    v24 = *(v9 + 40);
    *(v9 + 40) = v23;

    *(v9 + 352) = GTResourceHarvesterMake(*(v9 + 32));
    [v9 _initArgumentBufferPatchingTypes];
    v25 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:5 capacity:8];
    v26 = *(v9 + 296);
    *(v9 + 296) = v25;

    v27 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:5 capacity:32];
    v28 = *(v9 + 304);
    *(v9 + 304) = v27;

    v29 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:5 capacity:8];
    v30 = *(v9 + 312);
    *(v9 + 312) = v29;

    v31 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:5 capacity:8];
    v32 = *(v9 + 320);
    *(v9 + 320) = v31;

    *(v9 + 328) = 0;
    *(v9 + 336) = 0;
    baseObject = [v9 baseObject];
    [baseObject _setDeviceWrapper:v9];

    v34 = dispatch_queue_create("com.apple.dt.GPUTools.eventsQueue", 0);
    v35 = *(v9 + 120);
    *(v9 + 120) = v34;

    v36 = [[MTLSharedEventListener alloc] initWithDispatchQueue:*(v9 + 120)];
    v37 = *(v9 + 128);
    *(v9 + 128) = v36;

    GTMTLGuestAppClient_addCaptureDevice(g_guestAppClientMTL, v9);
  }

  return v9;
}

- (MTLComputePipelineState)computePipelineCopyBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  computePipelineCopyBuffer = self->_computePipelineCopyBuffer;

  return computePipelineCopyBuffer;
}

void __CaptureMTLDevice_initIndirectCommandBufferCopy_block_invoke(uint64_t a1)
{
  v2 = DEVICEOBJECT(*(a1 + 32));
  v3 = objc_alloc_init(MTLCompileOptions);
  [v3 setLanguageVersion:131073];
  v41 = 0;
  v4 = [v2 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\nstruct CopyIndirectCommandBufferArgument {\ncommand_buffer destination;\ncommand_buffer source;\n};\n\nvertex void renderCopyIndirectCommandBuffer (device CopyIndirectCommandBufferArgument& in [[ buffer(0) ]] options:uint i [[ vertex_id ]])\n{\nrender_command src(in.source error:{i);\nrender_command dest(in.destination, i);\ndest.copy_command(src);\n}\n\nvertex void renderCopyBuffer (device char* dest [[ buffer(0) ]], constant char* src [[ buffer(1) ]], uint i [[ vertex_id ]])\n{\ndest[i] = src[i];\n}\n", v3, &v41}];
  v5 = v41;
  v6 = [v4 newFunctionWithName:@"renderCopyIndirectCommandBuffer"];
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = v6;

  v9 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v9 setVertexFunction:*(*(a1 + 32) + 56)];
  [v9 setRasterizationEnabled:0];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setPixelFormat:71];

  v40 = v5;
  v12 = [v2 newRenderPipelineStateWithDescriptor:v9 error:&v40];
  v13 = v40;

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v12;

  v16 = [v4 newFunctionWithName:@"renderCopyBuffer"];
  [v9 setVertexFunction:v16];

  v39 = v13;
  v17 = [v2 newRenderPipelineStateWithDescriptor:v9 error:&v39];
  v18 = v39;

  v19 = *(a1 + 32);
  v20 = *(v19 + 80);
  *(v19 + 80) = v17;

  v21 = objc_alloc_init(MTLCompileOptions);
  if ([v21 languageVersion] > 0x20001)
  {
    v38 = 0;
    v22 = [v2 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\nstruct CopyIndirectCommandBufferArgument {\ncommand_buffer destination;\ncommand_buffer source;\n};\n\nkernel void computeCopyIndirectCommandBuffer (device CopyIndirectCommandBufferArgument& in [[ buffer(0) ]] options:uint i [[ thread_position_in_grid ]])\n{\ncompute_command src(in.source error:{i);\ncompute_command dest(in.destination, i);\ndest.copy_command(src);\n}\n\nkernel void computeCopyBuffer (device char* dest [[ buffer(0) ]], constant char* src [[ buffer(1) ]], uint i [[ thread_position_in_grid ]])\n{\ndest[i] = src[i];\n}\n", v21, &v38}];
    v23 = v38;
    if (v22)
    {
      v24 = [v22 newFunctionWithName:@"computeCopyIndirectCommandBuffer"];
      v25 = *(a1 + 32);
      v26 = *(v25 + 64);
      *(v25 + 64) = v24;

      v27 = *(*(a1 + 32) + 64);
      v37 = v23;
      v28 = [v2 newComputePipelineStateWithFunction:v27 error:&v37];
      v29 = v37;

      v30 = *(a1 + 32);
      v31 = *(v30 + 88);
      *(v30 + 88) = v28;

      v32 = [v22 newFunctionWithName:@"computeCopyBuffer"];
      v36 = v29;
      v33 = [v2 newComputePipelineStateWithFunction:v32 error:&v36];
      v23 = v36;

      v34 = *(a1 + 32);
      v35 = *(v34 + 96);
      *(v34 + 96) = v33;
    }
  }
}

- (MTLComputePipelineState)computePipelineCopyIndirectCommandBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  computePipelineCopyIndirectCommandBuffer = self->_computePipelineCopyIndirectCommandBuffer;

  return computePipelineCopyIndirectCommandBuffer;
}

- (MTLFunction)computeFunctionCopyIndirectCommandBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  computeFunctionCopyIndirectCommandBuffer = self->_computeFunctionCopyIndirectCommandBuffer;

  return computeFunctionCopyIndirectCommandBuffer;
}

- (MTLRenderPipelineState)renderPipelineCopyBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  renderPipelineCopyBuffer = self->_renderPipelineCopyBuffer;

  return renderPipelineCopyBuffer;
}

- (MTLRenderPipelineState)renderPipelineCopyIndirectCommandBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  renderPipelineCopyIndirectCommandBuffer = self->_renderPipelineCopyIndirectCommandBuffer;

  return renderPipelineCopyIndirectCommandBuffer;
}

- (MTLFunction)renderFunctionCopyIndirectCommandBuffer
{
  CaptureMTLDevice_initIndirectCommandBufferCopy(self);
  renderFunctionCopyIndirectCommandBuffer = self->_renderFunctionCopyIndirectCommandBuffer;

  return renderFunctionCopyIndirectCommandBuffer;
}

- (GTResourceDownloader)downloader
{
  downloaderOnceToken = self->_downloaderOnceToken;
  p_downloaderOnceToken = &self->_downloaderOnceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __30__CaptureMTLDevice_downloader__block_invoke;
  block[3] = &unk_2F2508;
  block[4] = self;
  if (downloaderOnceToken != -1)
  {
    dispatch_once(p_downloaderOnceToken, block);
  }

  return self->_downloader;
}

uint64_t __30__CaptureMTLDevice_downloader__block_invoke(uint64_t a1)
{
  v2 = [[GTResourceDownloader alloc] initWithDevice:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  return _objc_release_x1(v2, v4);
}

- (id)dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[7])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (descriptorCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      resourceIndex = [v8 resourceIndex];
      v10 = _MTLInvalidResourceIndex;
      if (resourceIndex == _MTLInvalidResourceIndex)
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setIntersectionFunctionTable:v8 atIndex:self->_dummyIntersectionFunctionTableIndex];
      }

      v12 = [descriptorCopy copy];

      [v12 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
      [v12 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != v10}];
      descriptorCopy = v12;
    }
  }

  v13 = descriptorCopy;

  return descriptorCopy;
}

- (id)dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[6])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (descriptorCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      resourceIndex = [v8 resourceIndex];
      v10 = _MTLInvalidResourceIndex;
      if (resourceIndex == _MTLInvalidResourceIndex)
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setVisibleFunctionTable:v8 atIndex:self->_dummyVisibleFunctionTableIndex];
      }

      v12 = [descriptorCopy copy];

      [v12 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
      [v12 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != v10}];
      descriptorCopy = v12;
    }
  }

  v13 = descriptorCopy;

  return descriptorCopy;
}

- (id)dummyEncodeComputePSOIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && (objc_opt_respondsToSelector() & 1) != 0 && self->isArgumentBufferPatchingTypeIndexed[4] && [indexCopy supportIndirectCommandBuffers])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (objc_opt_respondsToSelector())
    {
      resourceIndex = [v8 resourceIndex];
      v10 = _MTLInvalidResourceIndex;
      if (resourceIndex == _MTLInvalidResourceIndex)
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setComputePipelineState:v8 atIndex:self->_dummyComputePSOIndex];
      }

      if (descriptorCopy)
      {
        v12 = [descriptorCopy copy];

        [v12 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
        [v12 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != v10}];
        descriptorCopy = v12;
      }
    }
  }

  return descriptorCopy;
}

- (id)dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:(id)index withMeshDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[4] && [indexCopy supportIndirectCommandBuffers])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (objc_opt_respondsToSelector())
    {
      resourceIndex = [v8 resourceIndex];
      v10 = _MTLInvalidResourceIndex;
      if (resourceIndex == _MTLInvalidResourceIndex)
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setRenderPipelineState:v8 atIndex:self->_dummyRenderPSOIndex];
      }

      if (descriptorCopy)
      {
        v12 = [descriptorCopy copy];

        [v12 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
        [v12 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != v10}];
        descriptorCopy = v12;
      }
    }
  }

  return descriptorCopy;
}

- (id)dummyEncodeRenderPSOIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[4] && [indexCopy supportIndirectCommandBuffers])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (objc_opt_respondsToSelector())
    {
      resourceIndex = [v8 resourceIndex];
      v10 = _MTLInvalidResourceIndex;
      if (resourceIndex == _MTLInvalidResourceIndex)
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setRenderPipelineState:v8 atIndex:self->_dummyRenderPSOIndex];
      }

      if (descriptorCopy)
      {
        v12 = [descriptorCopy copy];

        [v12 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
        [v12 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != v10}];
        descriptorCopy = v12;
      }
    }
  }

  return descriptorCopy;
}

- (id)dummyEncodeICBIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  v8 = descriptorCopy;
  v9 = descriptorCopy;
  if (indexCopy)
  {
    v9 = descriptorCopy;
    if (self->isArgumentBufferPatchingTypeIndexed[5])
    {
      v10 = DEVICEOBJECT(indexCopy);
      v9 = v8;
      if (objc_opt_respondsToSelector())
      {
        v9 = v8;
        if (objc_opt_respondsToSelector())
        {
          resourceIndex = [v10 resourceIndex];
          if (resourceIndex == _MTLInvalidResourceIndex)
          {
            dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
            [dummyArgumentEncoder setIndirectCommandBuffer:v10 atIndex:self->_dummyICBIndex];
          }

          v9 = [v8 copy];

          [v9 setResourceIndex:{objc_msgSend(v10, "resourceIndex")}];
        }
      }
    }
  }

  v13 = v9;

  return v9;
}

- (id)dummyEncodeSamplerIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  v8 = descriptorCopy;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[1] && [descriptorCopy supportArgumentBuffers])
  {
    v9 = DEVICEOBJECT(indexCopy);
    if (objc_opt_respondsToSelector())
    {
      if (![v9 resourceIndex])
      {
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setSamplerState:v9 atIndex:self->_dummySamplerIndex];
      }

      v11 = [v8 copy];

      [v11 setResourceIndex:{objc_msgSend(v9, "resourceIndex")}];
      [v11 setForceResourceIndex:{objc_msgSend(v9, "resourceIndex") != 0}];
      v8 = v11;
    }
  }

  v12 = v8;

  return v8;
}

- (id)dummyEncodeTextureIntoArgumentBufferForResourceIndex:(id)index withDescriptor:(id)descriptor
{
  indexCopy = index;
  descriptorCopy = descriptor;
  if (indexCopy && self->isArgumentBufferPatchingTypeIndexed[0])
  {
    v8 = DEVICEOBJECT(indexCopy);
    if (objc_opt_respondsToSelector())
    {
      if (![v8 resourceIndex])
      {
        textureType = [v8 textureType];
        dummyArgumentEncoder = [(CaptureMTLDevice *)self dummyArgumentEncoder];
        [dummyArgumentEncoder setTexture:v8 atIndex:textureType];
      }

      if (descriptorCopy)
      {
        v11 = [descriptorCopy copy];

        [v11 setResourceIndex:{objc_msgSend(v8, "resourceIndex")}];
        [v11 setForceResourceIndex:{objc_msgSend(v8, "resourceIndex") != 0}];
        descriptorCopy = v11;
      }
    }
  }

  return descriptorCopy;
}

- (void)_initDummyEncoder
{
  v25 = objc_opt_new();
  v3 = DEVICEOBJECT(self->_baseObject);
  v4 = 0;
  v5 = &qword_29B9B8;
  do
  {
    v6 = objc_alloc_init(MTLArgumentDescriptor);
    [v6 setDataType:58];
    if ([v3 supportsFeatureSet:*v5])
    {
      v7 = *(v5 - 1);
    }

    else
    {
      v7 = 2;
    }

    [v6 setTextureType:v7];
    [v6 setIndex:v4];
    [v25 addObject:v6];

    ++v4;
    v5 += 2;
  }

  while (v4 != 10);
  self->_dummySamplerIndex = [v25 count];
  v8 = objc_alloc_init(MTLArgumentDescriptor);
  [v8 setDataType:59];
  [v8 setIndex:self->_dummySamplerIndex];
  [v25 addObject:v8];

  v9 = [v3 newArgumentEncoderWithArguments:v25];
  dummyArgumentEncoder = self->_dummyArgumentEncoder;
  self->_dummyArgumentEncoder = v9;

  self->_dummyICBIndex = [v25 count];
  v11 = objc_alloc_init(MTLArgumentDescriptor);
  [v11 setDataType:80];
  [v11 setIndex:self->_dummyICBIndex];
  [v25 addObject:v11];

  self->_dummyRenderPSOIndex = [v25 count];
  v12 = objc_alloc_init(MTLArgumentDescriptor);
  [v12 setDataType:78];
  [v12 setIndex:self->_dummyRenderPSOIndex];
  [v25 addObject:v12];

  v13 = DEVICEOBJECT(self->_dummyArgumentEncoder);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    self->_dummyComputePSOIndex = [v25 count];
    v15 = objc_alloc_init(MTLArgumentDescriptor);
    [v15 setDataType:79];
    [v15 setIndex:self->_dummyComputePSOIndex];
    [v25 addObject:v15];
  }

  v16 = DEVICEOBJECT(self->_dummyArgumentEncoder);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    self->_dummyVisibleFunctionTableIndex = [v25 count];
    v18 = objc_alloc_init(MTLArgumentDescriptor);
    [v18 setDataType:115];
    [v18 setIndex:self->_dummyVisibleFunctionTableIndex];
    [v25 addObject:v18];
  }

  v19 = DEVICEOBJECT(self->_dummyArgumentEncoder);
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    self->_dummyIntersectionFunctionTableIndex = [v25 count];
    v21 = objc_alloc_init(MTLArgumentDescriptor);
    [v21 setDataType:116];
    [v21 setIndex:self->_dummyIntersectionFunctionTableIndex];
    [v25 addObject:v21];
  }

  v22 = [v3 newArgumentEncoderWithArguments:v25];
  v23 = self->_dummyArgumentEncoder;
  self->_dummyArgumentEncoder = v22;

  v24 = [v3 newBufferWithLength:-[MTLArgumentEncoder encodedLength](self->_dummyArgumentEncoder options:{"encodedLength"), 0}];
  [(MTLArgumentEncoder *)self->_dummyArgumentEncoder setArgumentBuffer:v24 offset:0];
}

- (id)dummyArgumentEncoder
{
  dummyArgEncOnceToken = self->_dummyArgEncOnceToken;
  p_dummyArgEncOnceToken = &self->_dummyArgEncOnceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__CaptureMTLDevice_dummyArgumentEncoder__block_invoke;
  block[3] = &unk_2F2508;
  block[4] = self;
  if (dummyArgEncOnceToken != -1)
  {
    dispatch_once(p_dummyArgEncOnceToken, block);
  }

  return self->_dummyArgumentEncoder;
}

- (void)_initArgumentBufferPatchingTypes
{
  v7 = DEVICEOBJECT(self->_baseObject);
  v3 = objc_opt_respondsToSelector();
  v4 = 0;
  isArgumentBufferPatchingTypeIndexed = self->isArgumentBufferPatchingTypeIndexed;
  do
  {
    v6 = (v3 & 1) != 0 && [v7 resourcePatchingTypeForResourceType:v4] == &dword_0 + 1;
    isArgumentBufferPatchingTypeIndexed[v4++] = v6;
  }

  while (v4 != 12);
}

@end