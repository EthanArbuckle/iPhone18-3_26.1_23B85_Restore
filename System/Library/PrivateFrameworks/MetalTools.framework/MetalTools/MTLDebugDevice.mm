@interface MTLDebugDevice
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor;
- (BOOL)areWritableHeapsEnabled;
- (BOOL)validateDynamicLibraryURL:(id)l error:(id *)error;
- (MTLDebugDevice)initWithBaseObject:(id)object parent:(id)parent;
- (const)targetDeviceInfo;
- (id).cxx_construct;
- (id)_newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)_newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)_newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)_newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor;
- (id)functionHandleWithBinaryFunction:(id)function;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index;
- (id)getDepthStencilStateForBaseObject:(id)object descriptor:(id)descriptor;
- (id)getDynamicLibraryForBaseObject:(id)object;
- (id)getFunctionForBaseObject:(id)object library:(id)library;
- (id)getSamplerStateForBaseObject:(id)object descriptor:(id)descriptor;
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
- (id)newArgumentEncoderWithBufferBinding:(id)binding;
- (id)newArgumentEncoderWithLayout:(id)layout;
- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size;
- (id)newCommandAllocator;
- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count;
- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDagStringWithGraphs:(id)graphs;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error;
- (id)newDepthStencilStateWithDescriptor:(id)descriptor;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newEvent;
- (id)newFence;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newIOHandleWithURL:(id)l error:(id *)error;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newLateEvalEvent;
- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithURL:(id)l error:(id *)error;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error;
- (id)newProfileWithExecutionSize:(unint64_t)size;
- (id)newRasterizationRateMapWithDescriptor:(id)descriptor;
- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error;
- (id)newSamplerStateWithDescriptor:(id)descriptor;
- (id)newSharedEvent;
- (id)newSharedEventWithHandle:(id)handle;
- (id)newSharedTextureWithDescriptor:(id)descriptor;
- (id)newSharedTextureWithHandle:(id)handle;
- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index;
- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry;
- (void)_newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)_newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler;
- (void)_newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)_newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)addReferenceTrackingCommandBuffer:(id)buffer;
- (void)clearRenderEncoder:(id)encoder writeMask:(unint64_t)mask withCheckerboard:(float *)checkerboard;
- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor;
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
- (void)notifyExternalReferencesNonZeroOnDealloc:(id)dealloc;
- (void)notifySamplerStateDeallocated:(id)deallocated;
- (void)removeReferenceTrackingCommandBuffer:(id)buffer;
- (void)validateAddressRanges:(id)ranges expectedTotalSize:(unint64_t)size context:(_MTLMessageContext *)context;
- (void)validateImageblockTypes:(id)types reflection:(id)reflection context:(_MTLMessageContext *)context;
- (void)validateLinkedFunctions:(id)functions context:(_MTLMessageContext *)context;
- (void)validateMemorylessResource:(id)resource context:(_MTLMessageContext *)context;
- (void)validateNewBufferArgs:(unint64_t)args options:(unint64_t)options context:(_MTLMessageContext *)context;
- (void)validateRaytracing;
- (void)validateResourceOptions:(unint64_t)options isTexture:(BOOL)texture isIOSurface:(BOOL)surface context:(_MTLMessageContext *)context;
@end

@implementation MTLDebugDevice

- (MTLDebugDevice)initWithBaseObject:(id)object parent:(id)parent
{
  v9.receiver = self;
  v9.super_class = MTLDebugDevice;
  v5 = [(MTLToolsDevice *)&v9 initWithBaseObject:object parent:parent];
  v6 = v5;
  if (v5)
  {
    MTLSamplerDescriptorHashMap::setLimitForDevice(&v5->_argumentBufferSamplers, v5);
    if ([MTLDebugDevice initWithBaseObject:parent:]::once_token != -1)
    {
      [MTLDebugDevice initWithBaseObject:parent:];
    }

    v6->_storeValidationEnabled = 0;
    v7 = MTLGetEnvDefault();
    v6->_storeValidationEnabled = v7 != 0;
    if (v7)
    {
      CheckerboardRenderTargetPipelineCache::init(&v6->_checkerboardRTPipelineCache, v6);
    }

    v6->_loadValidationEnabled = 0;
    v6->_loadValidationEnabled = MTLGetEnvDefault() != 0;
    v6->_relaxedTextureArrayBindingsEnabled = 0;
    v6->_relaxedTextureArrayBindingsEnabled = [object supportsFamily:1010];
  }

  return v6;
}

char *__44__MTLDebugDevice_initWithBaseObject_parent___block_invoke()
{
  result = getenv("METAL_COMPLAIN_ABOUT_SLOPPY_TEXTURE_USAGE");
  if (result && *result == 49 && !result[1])
  {
    complain_about_sloppy_texture_usage = 1;
  }

  return result;
}

- (id)newCommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsCommandQueue *)[MTLDebugCommandQueue alloc] initWithBaseObject:result parent:self];

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
    v6 = [(MTLToolsCommandQueue *)[MTLDebugCommandQueue alloc] initWithBaseObject:result parent:self];

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
    v6 = [(MTLToolsCommandQueue *)[MTLDebugCommandQueue alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor
{
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice heapTextureSizeAndAlignWithDescriptor:];
    }
  }

  else
  {
    [MTLDebugDevice heapTextureSizeAndAlignWithDescriptor:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  v6 = [baseObject heapTextureSizeAndAlignWithDescriptor:descriptor];
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v7 = [baseObject heapBufferSizeAndAlignWithLength:length options:options];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)validateAddressRanges:(id)ranges expectedTotalSize:(unint64_t)size context:(_MTLMessageContext *)context
{
  v7 = *MEMORY[0x277D85F80];
  ranges = [ranges ranges];
  v9 = 0;
  if ([ranges count])
  {
    v10 = 0;
    v11 = v7 - 1;
    v12 = (ranges + 8);
    while (1)
    {
      v13 = *v12;
      v14 = __CFADD__(v9, *v12);
      v9 += *v12;
      if (v14)
      {
        break;
      }

      if ((*(v12 - 1) & v11) != 0)
      {
        _MTLMessageContextPush_();
        v13 = *v12;
      }

      if ((v13 & v11) != 0)
      {
        _MTLMessageContextPush_();
      }

      ++v10;
      v12 += 2;
      if (v10 >= [ranges count])
      {
        goto LABEL_11;
      }
    }

    _MTLMessageContextPush_();
  }

LABEL_11:
  if (v9 != size)
  {
    _MTLMessageContextPush_();
  }
}

- (id)newHeapWithDescriptor:(id)descriptor
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([descriptor type] == 2 && (objc_msgSend(descriptor, "type") != 2 || !-[MTLToolsDevice supportsSparseHeaps](self, "supportsSparseHeaps")))
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor size])
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor storageMode] != 2 && (objc_msgSend(descriptor, "storageMode") || !-[MTLToolsDevice supportsSharedStorageHeapResources](self, "supportsSharedStorageHeapResources")))
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor cpuCacheMode] && objc_msgSend(descriptor, "cpuCacheMode") != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor hazardTrackingMode] >= 3)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor type] == 2 && objc_msgSend(descriptor, "storageMode") != 2)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor addressRanges])
  {
    if (![(MTLToolsDevice *)self supportsHeapWithAddressRanges])
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateAddressRanges:expectedTotalSize:context:](self, "validateAddressRanges:expectedTotalSize:context:", [descriptor addressRanges], objc_msgSend(descriptor, "size"), v10);
  }

  if ([descriptor maxCompatiblePlacementSparsePageSize])
  {
    if (![(MTLToolsDevice *)self supportsMTL4PlacementSparse])
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor type] != 1)
    {
      _MTLMessageContextPush_();
    }

    maxCompatiblePlacementSparsePageSize = [descriptor maxCompatiblePlacementSparsePageSize];
    if ((maxCompatiblePlacementSparsePageSize - 101) >= 3 && maxCompatiblePlacementSparsePageSize)
    {
      [descriptor maxCompatiblePlacementSparsePageSize];
      _MTLMessageContextPush_();
    }
  }

  if (*&v10[0] || (v7 = [-[MTLToolsObject baseObject](self "baseObject")]) == 0)
  {
    v6 = 0;
  }

  else
  {
    v8 = v7;
    v6 = -[MTLDebugHeap initWithHeap:device:maxCompatiblePlacementSparsePageSize:]([MTLDebugHeap alloc], "initWithHeap:device:maxCompatiblePlacementSparsePageSize:", v7, self, [descriptor maxCompatiblePlacementSparsePageSize]);
  }

  _MTLMessageContextEnd();
  return v6;
}

- (id)newSharedTextureWithDescriptor:(id)descriptor
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!descriptor)
    {
      goto LABEL_18;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!descriptor)
    {
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![descriptor usage] && complain_about_sloppy_texture_usage)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor pixelFormat] == 261)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor storageMode] != 2)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor textureType] == 9)
    {
      _validateTextureBufferDescriptor(descriptor, [(MTLToolsObject *)self baseObject]);
    }

    -[MTLDebugDevice validateResourceOptions:isTexture:isIOSurface:context:](self, "validateResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 0, &v9);
    if ([descriptor placementSparsePageSize])
    {
      _MTLMessageContextPush_();
    }

    if (!v9)
    {
      v7 = [-[MTLToolsObject baseObject](self "baseObject")];
      if (v7)
      {
        v8 = v7;
        v5 = [[MTLDebugTexture alloc] initWithBaseTexture:v7 device:self];

        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v5 = 0;
LABEL_19:
  _MTLMessageContextEnd();
  return v5;
}

- (id)newSharedTextureWithHandle:(id)handle
{
  if (!validateSharedTextureHandleWithDevice(handle, self))
  {
    return 0;
  }

  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[MTLDebugTexture alloc] initWithBaseTexture:v5 device:self];

  return v7;
}

- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index
{
  if (!validateSharedTextureHandleWithDevice(handle, self))
  {
    return 0;
  }

  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[MTLDebugTexture alloc] initWithBaseTexture:v7 device:self];

  return v9;
}

- (void)validateMemorylessResource:(id)resource context:(_MTLMessageContext *)context
{
  if ([resource storageMode] == 3)
  {
    [resource pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    _MTLMessageContextPush_();
    if ([resource textureType] != 2 && objc_msgSend(resource, "textureType") != 4 && objc_msgSend(resource, "textureType") != 3 && objc_msgSend(resource, "textureType") != 8)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)validateResourceOptions:(unint64_t)options isTexture:(BOOL)texture isIOSurface:(BOOL)surface context:(_MTLMessageContext *)context
{
  surfaceCopy = surface;
  textureCopy = texture;
  if ((options & 0xF) >= 2)
  {
    optionsCopy = options;
    v12 = options & 0xF;
    _MTLMessageContextPush_();
  }

  v10 = options & 0xF0;
  if ((options & 0xF0) != 0 && surfaceCopy)
  {
    _MTLMessageContextPush_();
  }

  if (v10 != 48)
  {
    if (v10 != 32 && ((options & 0xF0) != 0 || textureCopy && ![(MTLToolsDevice *)self supportsSharedStorageTextures]))
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((options & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!textureCopy)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self supportsMemorylessRenderTargets:optionsCopy])
  {
    goto LABEL_15;
  }

LABEL_17:
  _MTLMessageContextPush_();
  if ((options & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  if ((options & 0x300) != 0x100)
  {
    _MTLMessageContextPush_();
  }

LABEL_20:
  if ((options & 0xFFFFFFFFFFE3FC00) != 0)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateNewBufferArgs:(unint64_t)args options:(unint64_t)options context:(_MTLMessageContext *)context
{
  if (!args)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self maxBufferLength]< args)
  {
    [(MTLToolsDevice *)self maxBufferLength];
    _MTLMessageContextPush_();
  }

  [(MTLDebugDevice *)self validateResourceOptions:options isTexture:0 isIOSurface:0 context:context];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  [(MTLDebugDevice *)self validateNewBufferArgs:length options:options context:v11];
  _MTLMessageContextEnd();
  if (*&v11[0])
  {
    return 0;
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v7 = [[MTLDebugBuffer alloc] initWithBuffer:v8 device:self options:options];

  return v7;
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ((options & 0xF0) == 0x20)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugDevice *)self validateNewBufferArgs:length options:options context:v13];
  if (!bytes)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (*&v13[0])
  {
    return 0;
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v9 = [[MTLDebugBuffer alloc] initWithBuffer:v10 device:self options:options];

  return v9;
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ((options & 0xF0) == 0x20)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugDevice *)self validateNewBufferArgs:length options:options context:v15];
  if (!copy)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (*&v15[0])
  {
    return 0;
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v11 = [[MTLDebugBuffer alloc] initWithBuffer:v12 device:self bytes:copy options:options];

  return v11;
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (([descriptor contents] || objc_msgSend(descriptor, "noCopy")) && (objc_msgSend(descriptor, "resourceOptions") & 0xF0) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor noCopy] && !objc_msgSend(descriptor, "contents"))
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor addressRanges])
  {
    if (![(MTLToolsDevice *)self supportsBufferWithAddressRanges])
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor contents])
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor noCopy])
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor deallocator])
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateAddressRanges:expectedTotalSize:context:](self, "validateAddressRanges:expectedTotalSize:context:", [descriptor addressRanges], objc_msgSend(descriptor, "length"), v9);
  }

  _MTLMessageContextEnd();
  if (*&v9[0])
  {
    return 0;
  }

  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v5 = -[MTLDebugBuffer initWithBuffer:device:bytes:options:]([MTLDebugBuffer alloc], "initWithBuffer:device:bytes:options:", v6, self, [descriptor contents], objc_msgSend(descriptor, "resourceOptions"));

  return v5;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  [(MTLDebugDevice *)self validateResourceOptions:options isTexture:0 isIOSurface:0 context:v24];
  v9 = [descriptor commandTypes] & 0x60;
  v10 = [descriptor commandTypes] & 0x18F;
  if (v9 && v10 || !(v9 | v10))
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if (([descriptor commandTypes] & 0xFFFFFFFFFFFFFE10) == 0)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  if (v10)
  {
LABEL_6:
    [(MTLToolsObject *)self originalObject];
    MTLValidateFeatureSupport();
  }

LABEL_7:
  if (v9)
  {
    [(MTLToolsObject *)self originalObject];
    MTLValidateFeatureSupport();
  }

  if (([descriptor commandTypes] & 0x40) != 0)
  {
    [(MTLToolsObject *)self originalObject];
    MTLValidateFeatureSupport();
  }

  if (([descriptor commandTypes] & 0xC) != 0)
  {
    [(MTLToolsObject *)self originalObject];
    MTLValidateFeatureSupport();
  }

  if (([descriptor commandTypes] & 0x180) != 0)
  {
    [(MTLToolsObject *)self originalObject];
    MTLValidateFeatureSupport();
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = v9 == 0;
  v13 = v11 ^ 1;
  if (v9)
  {
    v13 = 1;
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (!v10)
  {
    v12 = 1;
  }

  if (v14 == 1 && v12 && v10 | v9 && v13)
  {
    if (([descriptor inheritDepthStencilState] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritDepthBias] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritStencilReferenceValues] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritDepthClipMode] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritCullMode] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritTriangleFillMode] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritDepthTestBounds] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritScissorRects] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritViewports] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor inheritBlendColor] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  maxViewportCount = [(MTLToolsDevice *)self->super.super._device maxViewportCount];
  if ([descriptor maxScissorRectCount] > maxViewportCount)
  {
    maxScissorRectCount = [descriptor maxScissorRectCount];
    v22 = maxViewportCount;
    _MTLMessageContextPush_();
  }

  if ([descriptor maxViewportCount] > maxViewportCount)
  {
    maxViewportCount2 = [descriptor maxViewportCount];
    v23 = maxViewportCount;
    _MTLMessageContextPush_();
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  else if (!v10)
  {
    goto LABEL_58;
  }

  if ([descriptor maxVertexBufferBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor maxFragmentBufferBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor maxObjectBufferBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor maxMeshBufferBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor maxObjectThreadgroupMemoryBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

LABEL_58:
  if (!v9)
  {
    if (![descriptor supportRayTracing])
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if ([descriptor maxKernelBufferBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor maxKernelThreadgroupMemoryBindCount] >= 0x20)
  {
    [MTLDebugDevice newIndirectCommandBufferWithDescriptor:descriptor maxCommandCount:? options:?];
  }

  if ([descriptor supportRayTracing])
  {
    if (![(MTLToolsDevice *)self supportsRaytracing])
    {
      _MTLMessageContextPush_();
    }

LABEL_67:
    if (v10 && ![(MTLToolsDevice *)self supportsRaytracingFromRender])
    {
      _MTLMessageContextPush_();
    }
  }

LABEL_70:
  _MTLMessageContextEnd();
  if (*&v24[0])
  {
    return 0;
  }

  v17 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v16 = [[MTLDebugIndirectCommandBuffer alloc] initWithIndirectCommandBuffer:v17 device:self descriptor:descriptor maxCommandCount:count options:options];

  return v16;
}

- (id)newArgumentEncoderWithArguments:(id)arguments
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!arguments)
  {
    _MTLMessageContextPush_();
  }

  if (!v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v10 = [arguments count];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      while (1)
      {
        v13 = [arguments objectAtIndexedSubscript:{v12, v14, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v13 dataType] - 121) > 0xE || -[MTLToolsDevice supportsBfloat16Buffers](self, "supportsBfloat16Buffers"))
          {
            goto LABEL_16;
          }

          v14 = v12;
          v15 = MTLDataTypeString();
        }

        else
        {
          v14 = v12;
        }

        _MTLMessageContextPush_();
LABEL_16:
        if (v11 == ++v12)
        {
          goto LABEL_7;
        }
      }
    }

    _MTLMessageContextPush_();
  }

LABEL_7:
  _MTLMessageContextEnd();
  v16 = 0;
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [MTLDebugArgumentEncoder alloc];
  v8 = [(MTLDebugArgumentEncoder *)v7 initWithBaseObject:v6 structType:v16 parent:self];

  return v8;
}

- (id)newArgumentEncoderWithLayout:(id)layout
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLDebugArgumentEncoder alloc] initWithBaseObject:result structType:0 parent:self];

    return v6;
  }

  return result;
}

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  minBufferNoCopyAlignmentBytes = [(MTLToolsDevice *)self minBufferNoCopyAlignmentBytes];
  resourceOptions = [descriptor resourceOptions];
  if ((resourceOptions & 0xF0) != 0)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugDevice *)self validateNewBufferArgs:length options:resourceOptions context:v17];
  if (!copy)
  {
    _MTLMessageContextPush_();
  }

  if (((minBufferNoCopyAlignmentBytes - 1) & copy) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (*&v17[0])
  {
    return 0;
  }

  v14 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v13 = [[MTLDebugTexture alloc] initWithBaseTexture:v14 device:self];

  return v13;
}

- (id)newDepthStencilStateWithDescriptor:(id)descriptor
{
  if (!descriptor)
  {
    [MTLDebugDevice newDepthStencilStateWithDescriptor:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!descriptor)
    {
      return 0;
    }
  }

  else
  {
    [MTLDebugDevice newDepthStencilStateWithDescriptor:];
    if (!descriptor)
    {
      return 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6.receiver = self;
    v6.super_class = MTLDebugDevice;
    return [(MTLToolsDevice *)&v6 newDepthStencilStateWithDescriptor:descriptor];
  }

  return 0;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!descriptor)
    {
      goto LABEL_24;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!descriptor)
    {
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![descriptor usage] && complain_about_sloppy_texture_usage)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor pixelFormat] == 261)
    {
      _MTLMessageContextPush_();
    }

    [(MTLDebugDevice *)self validateMemorylessResource:descriptor context:v10];
    if (([descriptor usage] & 0x20) != 0)
    {
      if (([descriptor usage] & 3) == 0)
      {
        _MTLMessageContextPush_();
      }

      if ([descriptor pixelFormat] != 53 && objc_msgSend(descriptor, "pixelFormat") != 54 && objc_msgSend(descriptor, "pixelFormat") != 103)
      {
        _MTLMessageContextPush_();
      }
    }

    if ([descriptor textureType] == 9)
    {
      _validateTextureBufferDescriptor(descriptor, [(MTLToolsObject *)self baseObject]);
    }

    -[MTLDebugDevice validateResourceOptions:isTexture:isIOSurface:context:](self, "validateResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 0, v10);
    placementSparsePageSize = [descriptor placementSparsePageSize];
    if ((placementSparsePageSize - 101) >= 3 && placementSparsePageSize)
    {
      [descriptor placementSparsePageSize];
      _MTLMessageContextPush_();
    }

    if (!*&v10[0])
    {
      v8 = [-[MTLToolsObject baseObject](self "baseObject")];
      if (v8)
      {
        v9 = v8;
        v6 = -[MTLDebugTexture initWithBaseTexture:device:placementSparsePageSize:]([MTLDebugTexture alloc], "initWithBaseTexture:device:placementSparsePageSize:", v8, self, [descriptor placementSparsePageSize]);

        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v6 = 0;
LABEL_25:
  _MTLMessageContextEnd();
  return v6;
}

- (id)newSamplerStateWithDescriptor:(id)descriptor
{
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newSamplerStateWithDescriptor:];
    }
  }

  else
  {
    [MTLDebugDevice newSamplerStateWithDescriptor:];
  }

  validateMTLSamplerDescriptor([(MTLToolsObject *)self originalObject], descriptor);
  if ([descriptor supportArgumentBuffers])
  {
    MTLSamplerDescriptorHashMap::add(&self->_argumentBufferSamplers, descriptor);
  }

  v6.receiver = self;
  v6.super_class = MTLDebugDevice;
  return [(MTLToolsDevice *)&v6 newSamplerStateWithDescriptor:descriptor];
}

- (void)notifySamplerStateDeallocated:(id)deallocated
{
  descriptor = [deallocated descriptor];
  if ([(MTLSamplerDescriptor *)descriptor supportArgumentBuffers])
  {

    MTLSamplerDescriptorHashMap::remove(&self->_argumentBufferSamplers, descriptor);
  }
}

- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = -[MTLDebugLibrary initWithLibrary:parent:type:code:options:]([MTLDebugLibrary alloc], "initWithLibrary:parent:type:code:options:", result, self, 0, [bundle pathForResource:@"default" ofType:@"metallib"], 0);

    return v8;
  }

  return result;
}

- (id)newDefaultLibrary
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTLDebugLibrary alloc] initWithLibrary:result parent:self type:0 code:0 options:0];

    return v5;
  }

  return result;
}

- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v7 = [descriptor url];
  if (v7 && ([v7 isFileURL] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [(MTLToolsObject *)[MTLDebugBinaryArchive alloc] initWithBaseObject:v8 parent:self];

  return v10;
}

- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error
{
  if (url && ([url isFileURL] & 1) == 0)
  {
    [MTLDebugDevice newBinaryLibraryWithOptions:url:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [(MTLToolsObject *)[MTLDebugBinaryArchive alloc] initWithBaseObject:result parent:self];

    return v11;
  }

  return result;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!l)
  {
    _MTLMessageContextPush_();
  }

  if (!v11 && ([l isFileURL] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && (objc_msgSend(-[MTLToolsObject baseObject](self, "baseObject"), "supportsStatefulDynamicLibraries") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTLDebugDevice;
  return [(MTLToolsDevice *)&v10 newDynamicLibraryWithURL:l options:options error:error];
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![descriptor computeFunction])
    {
      _MTLMessageContextPush_();
    }
  }

  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    if (!library)
    {
LABEL_13:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!library)
    {
      goto LABEL_13;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTLDebugDevice;
  return [(MTLToolsDevice *)&v10 newDynamicLibrary:library computeDescriptor:descriptor error:error];
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!library)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTLDebugDevice;
  return [(MTLToolsDevice *)&v8 newDynamicLibrary:library error:error];
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![descriptor computeFunction])
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTLDebugDevice;
  return [(MTLToolsDevice *)&v10 loadDynamicLibrariesForComputeDescriptor:descriptor options:options error:error];
}

- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error
{
  v13 = 0;
  memset(&v12[1], 0, 48);
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!function)
  {
    _MTLMessageContextPush_();
    if (libraries)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!libraries)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  v12[0].receiver = self;
  v12[0].super_class = MTLDebugDevice;
  return [(objc_super *)v12 loadDynamicLibrariesForFunction:function insertLibraries:libraries options:options error:error];
}

- (BOOL)validateDynamicLibraryURL:(id)l error:(id *)error
{
  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0)
  {
    [MTLDebugDevice validateDynamicLibraryURL:error:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject validateDynamicLibraryURL:l error:error];
}

- (void)validateLinkedFunctions:(id)functions context:(_MTLMessageContext *)context
{
  v57 = *MEMORY[0x277D85DE8];
  if (functions)
  {
    baseObject = [(MTLToolsObject *)self baseObject];
    if ([functions functions] && objc_msgSend(objc_msgSend(functions, "functions"), "count") && (objc_msgSend(baseObject, "supportsFunctionPointers") & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([functions groups])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [functions groups];
      v30 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v30)
      {
        LOBYTE(v32) = 0;
        v29 = *v50;
        do
        {
          v5 = 0;
          do
          {
            if (*v50 != v29)
            {
              v6 = v5;
              objc_enumerationMutation(obj);
              v5 = v6;
            }

            v31 = v5;
            v34 = *(*(&v49 + 1) + 8 * v5);
            v7 = v32 || [objc_msgSend(objc_msgSend(functions "groups")] != 0;
            v32 = v7;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            groups = [objc_msgSend(functions groups];
            v9 = [groups countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v9)
            {
              v10 = *v46;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v46 != v10)
                  {
                    objc_enumerationMutation(groups);
                  }

                  v12 = *(*(&v45 + 1) + 8 * i);
                  v41 = 0u;
                  v42 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  functions = [functions functions];
                  v14 = [functions countByEnumeratingWithState:&v41 objects:v54 count:16];
                  if (v14)
                  {
                    v15 = *v42;
LABEL_22:
                    v16 = 0;
                    while (1)
                    {
                      if (*v42 != v15)
                      {
                        objc_enumerationMutation(functions);
                      }

                      if (*(*(&v41 + 1) + 8 * v16) == v12)
                      {
                        break;
                      }

                      if (v14 == ++v16)
                      {
                        v14 = [functions countByEnumeratingWithState:&v41 objects:v54 count:16];
                        if (v14)
                        {
                          goto LABEL_22;
                        }

                        goto LABEL_28;
                      }
                    }
                  }

                  else
                  {
LABEL_28:
                    v24 = [objc_msgSend(v12 "name")];
                    uTF8String = [v34 UTF8String];
                    _MTLMessageContextPush_();
                  }
                }

                v9 = [groups countByEnumeratingWithState:&v45 objects:v55 count:16];
              }

              while (v9);
            }

            v5 = v31 + 1;
          }

          while (v31 + 1 != v30);
          v30 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v30);
        if (v32 && ([baseObject supportsFunctionPointers] & 1) == 0)
        {
          _MTLMessageContextPush_();
        }
      }
    }

    binaryFunctions = [functions binaryFunctions];
    v18 = binaryFunctions;
    if (binaryFunctions && [binaryFunctions count])
    {
      if (([baseObject supportsFunctionPointers] & 1) == 0)
      {
        v25 = @"binaryFunctions";
        _MTLMessageContextPush_();
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v53 count:{16, v25}];
      if (v19)
      {
        v20 = *v38;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v37 + 1) + 8 * j);
            if (![v22 precompiledOutput])
            {
              [MTLDebugDevice validateLinkedFunctions:v22 context:?];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v37 objects:v53 count:16];
        }

        while (v19);
      }
    }

    memset(v35, 0, sizeof(v35));
    v36 = 1065353216;
    _validateUniqueNames(context, v35, [functions functions], "functions");
    _validateUniqueNames(context, v35, [functions privateFunctions], "privateFunctions");
    _validateUniqueNames(context, v35, [functions binaryFunctions], "binaryFunctions");
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v35);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)validateImageblockTypes:(id)types reflection:(id)reflection context:(_MTLMessageContext *)context
{
  v38 = *MEMORY[0x277D85DE8];
  if (reflection)
  {
    if ([reflection tileBindings])
    {
      if ([objc_msgSend(types "tileFunction")] == 3)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        tileBindings = [reflection tileBindings];
        v7 = [tileBindings countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v33;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v33 != v9)
              {
                objc_enumerationMutation(tileBindings);
              }

              v11 = *(*(&v32 + 1) + 8 * i);
              if ([v11 type] == 17 && !objc_msgSend(v11, "imageBlockKind"))
              {
                if ([objc_msgSend(v11 "dataTypeDescription")] == 1)
                {
                  v28 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  obj = [objc_msgSend(v11 "dataTypeDescription")];
                  v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v29;
                    do
                    {
                      for (j = 0; j != v13; ++j)
                      {
                        if (*v29 != v14)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v16 = *(*(&v28 + 1) + 8 * j);
                        if ([v16 dataType])
                        {
                          renderTargetIndex = [v16 renderTargetIndex];
                          v18 = [objc_msgSend(objc_msgSend(types "colorAttachments")];
                          MTLPixelFormatGetInfoForDevice();
                          MTLDataTypeGetComponentType();
                          ComponentCount = MTLDataTypeGetComponentCount();
                          ShaderTypeName = MTLDataTypeGetShaderTypeName();
                          v24 = renderTargetIndex;
                          v25 = 0;
                          v23 = ShaderTypeName;
                          _MTLMessageContextPush_();
                          v21 = ComponentCount != 4;
                          if (v18 != 1)
                          {
                            v21 = 0;
                          }

                          if (v21)
                          {
                            v24 = renderTargetIndex;
                            v25 = 0;
                            v23 = ShaderTypeName;
                            _MTLMessageContextPush_();
                          }
                        }
                      }

                      v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
                    }

                    while (v13);
                  }
                }

                goto LABEL_27;
              }
            }

            v8 = [tileBindings countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
}

- (id)_newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v19[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor isRasterizationEnabled] & 1) == 0 && ((objc_msgSend(descriptor, "isRasterizationEnabled") & 1) != 0 || objc_msgSend(descriptor, "fragmentFunction")))
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor vertexLinkedFunctions], v19);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor fragmentLinkedFunctions], v19);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor objectLinkedFunctions], v19);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor meshLinkedFunctions], v19);
    if (!*&v19[0])
    {
      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "vertexPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "fragmentPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "objectPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "meshPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:descriptor];
  v12 = (![v11 binaryArchives] || !objc_msgSend(objc_msgSend(v11, "binaryArchives"), "count")) && objc_msgSend(v11, "pipelineLibrary") == 0;
  v18 = 0;
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  v14 = v13;
  if (reflection)
  {
    if ((~options & 3) != 0)
    {
      [v11 setResourceIndex:*MEMORY[0x277CD70E8]];
      [v11 setForceResourceIndex:0];

      if (v14)
      {
        goto LABEL_31;
      }

      return 0;
    }

    *reflection = v18;
  }

  if (!v13)
  {
    return 0;
  }

LABEL_31:
  v15 = [MTLDebugRenderPipelineState alloc];
  v16 = [(MTLDebugRenderPipelineState *)v15 initWithPipelineState:v14 reflection:v18 parent:self descriptor:descriptor];

  return v16;
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__MTLDebugDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithDescriptor:descriptor options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__MTLDebugDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithDescriptor:descriptor options:options & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (([descriptor isRasterizationEnabled] & 1) == 0 && ((objc_msgSend(descriptor, "isRasterizationEnabled") & 1) != 0 || objc_msgSend(descriptor, "fragmentFunction")))
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor vertexLinkedFunctions], v16);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor fragmentLinkedFunctions], v16);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor objectLinkedFunctions], v16);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor meshLinkedFunctions], v16);
    if (!*&v16[0])
    {
      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "vertexPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "fragmentPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "objectPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "meshPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = [descriptor copy];
  v10 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:v9];
  v11 = (![v10 binaryArchives] || !objc_msgSend(objc_msgSend(v10, "binaryArchives"), "count")) && objc_msgSend(v10, "pipelineLibrary") == 0;
  v12 = [(MTLToolsDevice *)self debugPipelineOptions:options includePipelinePerfStats:v11];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__MTLDebugDevice__newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B3B30;
  v14[4] = self;
  v14[5] = v9;
  v15 = (~options & 3) != 0;
  v14[7] = handler;
  v14[8] = options;
  v14[6] = v10;
  [baseObject newRenderPipelineStateWithDescriptor:v10 options:v12 completionHandler:v14];
}

void __82__MTLDebugDevice__newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLDebugRenderPipelineState *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v3 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:a2 reflection:a3 parent:*(a1 + 32) descriptor:*(a1 + 40)];
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 48) setResourceIndex:*MEMORY[0x277CD70E8]];
    [*(a1 + 48) setForceResourceIndex:0];
    v5 = [*(a1 + 32) baseObject];
    v6 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__MTLDebugDevice__newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke_2;
    v9[3] = &unk_2787B4DD8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = v3;
    v9[5] = v8;
    [v5 newRenderPipelineStateWithDescriptor:v7 options:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v19[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor linkedFunctions], v19);
    if (!*&v19[0] && ([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && (objc_msgSend(-[MTLToolsObject baseObject](self, "baseObject"), "supportsStatefulDynamicLibraries") & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "preloadedLibraries"), "count"))
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:descriptor];
  v12 = (![v11 binaryArchives] || !objc_msgSend(objc_msgSend(v11, "binaryArchives"), "count")) && objc_msgSend(v11, "pipelineLibrary") == 0;
  v18 = 0;
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  v14 = v13;
  if (reflection)
  {
    if ((~options & 3) != 0)
    {
      [v11 setResourceIndex:*MEMORY[0x277CD70E8]];
      [v11 setForceResourceIndex:0];

      if (v14)
      {
        goto LABEL_19;
      }

      return 0;
    }

    *reflection = v18;
  }

  if (!v13)
  {
    return 0;
  }

LABEL_19:
  v15 = [MTLDebugComputePipelineState alloc];
  v16 = [(MTLDebugComputePipelineState *)v15 initWithComputePipelineState:v14 reflection:v18 parent:self descriptor:descriptor];

  return v16;
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__MTLDebugDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = handler;
  [(MTLDebugDevice *)self _newComputePipelineStateWithDescriptor:descriptor options:0x20000 completionHandler:v4];
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__MTLDebugDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3B58;
  v5[4] = handler;
  [(MTLDebugDevice *)self _newComputePipelineStateWithDescriptor:descriptor options:options & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice _newComputePipelineStateWithDescriptor:options:completionHandler:];
    }
  }

  else
  {
    [MTLDebugDevice _newComputePipelineStateWithDescriptor:options:completionHandler:];
  }

  v9 = [descriptor copy];
  v10 = [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:v9];
  v11 = (![v10 binaryArchives] || !objc_msgSend(objc_msgSend(v10, "binaryArchives"), "count")) && objc_msgSend(v10, "pipelineLibrary") == 0;
  v12 = [(MTLToolsDevice *)self debugPipelineOptions:options includePipelinePerfStats:v11];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = (~options & 3) != 0;
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__MTLDebugDevice__newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B4E28;
  v14[4] = self;
  v14[5] = v9;
  v14[8] = v15;
  v14[9] = options;
  v14[6] = v10;
  v14[7] = handler;
  [baseObject newComputePipelineStateWithDescriptor:v10 options:v12 completionHandler:v14];

  _Block_object_dispose(v15, 8);
}

void __83__MTLDebugDevice__newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLDebugComputePipelineState *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v3 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:a2 reflection:a3 parent:*(a1 + 32) descriptor:*(a1 + 40)];
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 48) setResourceIndex:*MEMORY[0x277CD70E8]];
    [*(a1 + 48) setForceResourceIndex:0];
    v5 = [*(a1 + 32) baseObject];
    v6 = *(a1 + 72);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__MTLDebugDevice__newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke_2;
    v9[3] = &unk_2787B4E00;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = v3;
    v9[5] = v8;
    [v5 newComputePipelineStateWithDescriptor:v7 options:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v17 = 0;
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = v11;
  if (reflection)
  {
    if ((~options & 3) != 0)
    {

      if (v12)
      {
        goto LABEL_5;
      }

      return 0;
    }

    *reflection = v17;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_5:
  v13 = objc_opt_new();
  [v13 setComputeFunction:function];
  v14 = [MTLDebugComputePipelineState alloc];
  v15 = [(MTLDebugComputePipelineState *)v14 initWithComputePipelineState:v12 reflection:v17 parent:self descriptor:v13];

  return v15;
}

- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__MTLDebugDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = handler;
  [(MTLDebugDevice *)self _newComputePipelineStateWithFunction:function options:0x20000 completionHandler:v4];
}

- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__MTLDebugDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3B58;
  v5[4] = handler;
  [(MTLDebugDevice *)self _newComputePipelineStateWithFunction:function options:options & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  v9 = ~options;
  v10 = [(MTLToolsDevice *)self debugPipelineOptions:options includePipelinePerfStats:1];
  v11 = (v9 & 3) != 0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [function baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__MTLDebugDevice__newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B4E50;
  v14[4] = function;
  v14[5] = self;
  v15 = v11;
  v14[6] = handler;
  v14[7] = options;
  [baseObject newComputePipelineStateWithFunction:baseObject2 options:v10 completionHandler:v14];
}

void __81__MTLDebugDevice__newComputePipelineStateWithFunction_options_completionHandler___block_invoke(uint64_t a1, MTLDebugComputePipelineState *a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = objc_opt_new();
    [v6 setComputeFunction:*(a1 + 32)];
    v4 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v4 reflection:a3 parent:*(a1 + 40) descriptor:v6];
  }

  if (*(a1 + 64) == 1)
  {
    v7 = [*(a1 + 40) baseObject];
    v8 = [*(a1 + 32) baseObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__MTLDebugDevice__newComputePipelineStateWithFunction_options_completionHandler___block_invoke_2;
    v11[3] = &unk_2787B4E00;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11[4] = v4;
    v11[5] = v10;
    [v7 newComputePipelineStateWithFunction:v8 options:v9 completionHandler:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v18[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor linkedFunctions], v18);
    if (!*&v18[0] && ([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "preloadedLibraries"), "count"))
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:descriptor];
  if ([v11 binaryArchives])
  {
    v12 = [objc_msgSend(v11 "binaryArchives")] == 0;
  }

  else
  {
    v12 = 1;
  }

  v17 = 0;
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  [(MTLDebugDevice *)self validateImageblockTypes:v11 reflection:v17 context:v18];
  _MTLMessageContextEnd();
  if (reflection)
  {
    if ((~options & 3) != 0)
    {

      if (v13)
      {
        goto LABEL_17;
      }

      return 0;
    }

    *reflection = v17;
  }

  if (!v13)
  {
    return 0;
  }

LABEL_17:
  v14 = [MTLDebugRenderPipelineState alloc];
  v15 = [(MTLDebugRenderPipelineState *)v14 initWithPipelineState:v13 reflection:v17 parent:self tileDescriptor:descriptor];

  return v15;
}

- (void)_newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor linkedFunctions], v16);
    if (!*&v16[0] && ([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "preloadedLibraries"), "count"))
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v9 = [descriptor copy];
  v10 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:v9];
  if ([v10 binaryArchives])
  {
    v11 = [objc_msgSend(v10 "binaryArchives")] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(MTLToolsDevice *)self debugPipelineOptions:options includePipelinePerfStats:v11];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__MTLDebugDevice__newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B3B30;
  v14[4] = self;
  v14[5] = v9;
  v15 = (~options & 3) != 0;
  v14[7] = handler;
  v14[8] = options;
  v14[6] = v10;
  [baseObject newRenderPipelineStateWithTileDescriptor:v10 options:v12 completionHandler:v14];
}

void __86__MTLDebugDevice__newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLDebugRenderPipelineState *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v3 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:a2 reflection:a3 parent:*(a1 + 32) tileDescriptor:*(a1 + 40)];
  }

  if (*(a1 + 72) == 1)
  {
    v5 = [*(a1 + 32) baseObject];
    v6 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__MTLDebugDevice__newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke_2;
    v9[3] = &unk_2787B4DD8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = v3;
    v9[5] = v8;
    [v5 newRenderPipelineStateWithTileDescriptor:v7 options:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__MTLDebugDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithTileDescriptor:descriptor options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__MTLDebugDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithTileDescriptor:descriptor options:options & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (id)_newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v19[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  if (([-[MTLToolsObject originalObject](self "originalObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v19[0])
  {
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor objectLinkedFunctions], v19);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor meshLinkedFunctions], v19);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor fragmentLinkedFunctions], v19);
    if (!*&v19[0])
    {
      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "objectPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "meshPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "fragmentPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  v12 = (![v11 binaryArchives] || !objc_msgSend(objc_msgSend(v11, "binaryArchives"), "count")) && objc_msgSend(v11, "pipelineLibrary") == 0;
  v18 = 0;
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  v14 = v13;
  if (reflection)
  {
    if ((~options & 3) != 0)
    {
      [v11 setResourceIndex:*MEMORY[0x277CD70E8]];
      [v11 setForceResourceIndex:0];

      if (v14)
      {
        goto LABEL_27;
      }

      return 0;
    }

    *reflection = v18;
  }

  if (!v13)
  {
    return 0;
  }

LABEL_27:
  v15 = [MTLDebugRenderPipelineState alloc];
  v16 = [(MTLDebugRenderPipelineState *)v15 initWithPipelineState:v14 reflection:v18 parent:self meshDescriptor:descriptor];

  return v16;
}

- (void)_newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  if (([-[MTLToolsObject originalObject](self "originalObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor objectLinkedFunctions], v16);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor meshLinkedFunctions], v16);
    -[MTLDebugDevice validateLinkedFunctions:context:](self, "validateLinkedFunctions:context:", [descriptor fragmentLinkedFunctions], v16);
    if (!*&v16[0])
    {
      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "objectPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "meshPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }

      if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0 && objc_msgSend(objc_msgSend(descriptor, "fragmentPreloadedLibraries"), "count"))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = [descriptor copy];
  v10 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:v9];
  v11 = (![v10 binaryArchives] || !objc_msgSend(objc_msgSend(v10, "binaryArchives"), "count")) && objc_msgSend(v10, "pipelineLibrary") == 0;
  v12 = [(MTLToolsDevice *)self debugPipelineOptions:options includePipelinePerfStats:v11];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__MTLDebugDevice__newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B3B30;
  v14[4] = self;
  v14[5] = v9;
  v15 = (~options & 3) != 0;
  v14[7] = handler;
  v14[8] = options;
  v14[6] = v10;
  [baseObject newRenderPipelineStateWithMeshDescriptor:v10 options:v12 completionHandler:v14];
}

void __86__MTLDebugDevice__newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLDebugRenderPipelineState *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v3 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:a2 reflection:a3 parent:*(a1 + 32) meshDescriptor:*(a1 + 40)];
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 48) setResourceIndex:*MEMORY[0x277CD70E8]];
    [*(a1 + 48) setForceResourceIndex:0];
    v5 = [*(a1 + 32) baseObject];
    v6 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__MTLDebugDevice__newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke_2;
    v9[3] = &unk_2787B4DD8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = v3;
    v9[5] = v8;
    [v5 newRenderPipelineStateWithMeshDescriptor:v7 options:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__MTLDebugDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithMeshDescriptor:descriptor options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__MTLDebugDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = handler;
  [(MTLDebugDevice *)self _newRenderPipelineStateWithMeshDescriptor:descriptor options:options & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [functions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(functions);
        }

        [v9 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [functions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (v14)
  {
    v15 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__MTLDebugDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3CE8;
  v8[4] = v6;
  v8[5] = self;
  v8[6] = handler;
  [baseObject newLibraryWithStitchedDescriptor:v6 completionHandler:v8];
}

void __69__MTLDebugDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)newDagStringWithGraphs:(id)graphs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDagStringWithGraphs:graphs];
}

- (id)newLibraryWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [i countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(i);
        }

        [v9 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "baseObject")}];
      }

      v11 = [i countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = objc_opt_respondsToSelector();
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  if (v15)
  {
    v17 = [baseObject newLibraryWithCIFiltersForComputePipeline:v16 imageFilterFunctionInfo:info error:error];
  }

  else
  {
    v17 = [baseObject newLibraryWithCIFilters:v16 imageFilterFunctionInfo:info error:error];
  }

  v18 = v17;

  if (v18)
  {
    v19 = [[MTLDebugLibrary alloc] initWithLibrary:v18 parent:self type:4 code:0 options:0];
    [(MTLDebugLibrary *)v19 setImageFilterFunctions:i imageFilterFunctionInfo:info];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v7 = [(MTLDebugDevice *)self newLibraryWithImageFilterFunctionsSPI:i imageFilterFunctionInfo:info error:?];
  v8 = [v7 newFunctionWithName:@"ciKernelMain"];
  v9 = [(MTLDebugDevice *)self newComputePipelineStateWithFunction:v8 error:error];

  return v9;
}

- (id)newLibraryWithFile:(id)file error:(id *)error
{
  if (file)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newLibraryWithFile:error:];
    }
  }

  else
  {
    [MTLDebugDevice newLibraryWithFile:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugLibrary alloc] initWithLibrary:result parent:self type:1 code:file options:0];

    return v9;
  }

  return result;
}

- (id)newLibraryWithURL:(id)l error:(id *)error
{
  if (l)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newLibraryWithURL:error:];
    }

    fileSystemRepresentation = [l fileSystemRepresentation];
    if (!fileSystemRepresentation)
    {
      [MTLDebugDevice newLibraryWithURL:error:];
    }
  }

  else
  {
    [MTLDebugDevice newLibraryWithURL:error:];
    fileSystemRepresentation = 0;
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v9 = result;
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:fileSystemRepresentation];
    v11 = [[MTLDebugLibrary alloc] initWithLibrary:v9 parent:self type:1 code:v10 options:0];

    return v11;
  }

  return result;
}

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (options)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v28)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      libraries = [options libraries];
      v9 = [libraries countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(libraries);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v21 = v11;
              _MTLMessageContextPush_();
            }

            ++v11;
            ++v13;
          }

          while (v10 != v13);
          v10 = [libraries countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v10);
      }
    }
  }

  if (source)
  {
    objc_opt_class();
    errorCopy2 = error;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }
  }

  else
  {
    errorCopy2 = error;
  }

  _MTLMessageContextPush_();
LABEL_16:
  _MTLMessageContextEnd();
  if (options)
  {
    options = [(MTLToolsDevice *)self unwrapMTLCompileOptions:options];
  }

  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  sourceLibraryObjectCache = self->super.sourceLibraryObjectCache;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__MTLDebugDevice_newLibraryWithSource_options_error___block_invoke;
  v23[3] = &unk_2787B4E78;
  v23[4] = baseObject;
  v23[5] = self;
  v23[6] = source;
  v23[7] = options;
  v18 = [(MTLToolsObjectCache *)sourceLibraryObjectCache getCachedObjectForKey:baseObject onMiss:v23];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __53__MTLDebugDevice_newLibraryWithSource_options_error___block_invoke(void *a1)
{
  v2 = [MTLDebugLibrary alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugLibrary *)v2 initWithLibrary:v3 parent:v4 type:2 code:v5 options:v6];
}

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (options)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v27)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      libraries = [options libraries];
      v9 = [libraries countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(libraries);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = v11;
              _MTLMessageContextPush_();
            }

            ++v11;
            ++v13;
          }

          while (v10 != v13);
          v10 = [libraries countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v10);
      }
    }
  }

  if (source)
  {
    objc_opt_class();
    handlerCopy2 = handler;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }
  }

  else
  {
    handlerCopy2 = handler;
  }

  _MTLMessageContextPush_();
LABEL_16:
  _MTLMessageContextEnd();
  if (options)
  {
    v16 = [(MTLToolsDevice *)self unwrapMTLCompileOptions:options];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 copy];
  baseObject = [(MTLToolsObject *)self baseObject];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__MTLDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v22[3] = &unk_2787B4EA0;
  v22[4] = self;
  v22[5] = source;
  v22[6] = v17;
  v22[7] = handlerCopy2;
  [baseObject newLibraryWithSource:source options:v17 completionHandler:v22];

  v19 = *MEMORY[0x277D85DE8];
}

void __65__MTLDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MTLDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke_2;
  v6[3] = &unk_2787B4E78;
  v6[4] = a2;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = [v4 getCachedObjectForKey:a2 onMiss:v6];
  (*(*(a1 + 56) + 16))();
}

uint64_t __65__MTLDebugDevice_newLibraryWithSource_options_completionHandler___block_invoke_2(void *a1)
{
  v2 = [MTLDebugLibrary alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugLibrary *)v2 initWithLibrary:v3 parent:v4 type:2 code:v5 options:v6];
}

- (id)newLibraryWithData:(id)data error:(id *)error
{
  if (!data)
  {
    [MTLDebugDevice newLibraryWithData:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugLibrary alloc] initWithLibrary:result parent:self type:3 code:data options:0];

    return v9;
  }

  return result;
}

- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error
{
  if (path)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newPipelineLibraryWithFilePath:error:];
    }
  }

  else
  {
    [MTLDebugDevice newPipelineLibraryWithFilePath:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugPipelineLibrary alloc] initWithLibrary:result parent:self filePath:path];

    return v9;
  }

  return result;
}

- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error
{
  if (![(MTLToolsDevice *)self supportsFamily:1006])
  {
    [MTLDebugDevice newResidencySetWithDescriptor:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugResidencySet alloc] initWithResidencySet:result device:self];

    return v9;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!descriptor)
    {
      goto LABEL_23;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!descriptor)
    {
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![descriptor usage] && complain_about_sloppy_texture_usage)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor pixelFormat] == 261)
    {
      _MTLMessageContextPush_();
    }

    [(MTLDebugDevice *)self validateMemorylessResource:descriptor context:v13];
    if (([descriptor usage] & 0x20) != 0)
    {
      if (([descriptor usage] & 3) == 0)
      {
        _MTLMessageContextPush_();
      }

      if ([descriptor pixelFormat] != 53 && objc_msgSend(descriptor, "pixelFormat") != 54 && objc_msgSend(descriptor, "pixelFormat") != 103)
      {
        _MTLMessageContextPush_();
      }
    }

    -[MTLDebugDevice validateResourceOptions:isTexture:isIOSurface:context:](self, "validateResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 1, v13);
    if (!iosurface)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor placementSparsePageSize])
    {
      _MTLMessageContextPush_();
    }

    if (!*&v13[0])
    {
      v11 = [-[MTLToolsObject baseObject](self "baseObject")];
      if (v11)
      {
        v12 = v11;
        v9 = [[MTLDebugTexture alloc] initWithBaseTexture:v11 device:self plane:plane];

        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v9 = 0;
LABEL_24:
  _MTLMessageContextEnd();
  return v9;
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!descriptor)
    {
      goto LABEL_25;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!descriptor)
    {
      goto LABEL_25;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![descriptor usage] && complain_about_sloppy_texture_usage)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor pixelFormat] == 261)
    {
      _MTLMessageContextPush_();
    }

    [(MTLDebugDevice *)self validateMemorylessResource:descriptor context:v15];
    if (([descriptor usage] & 0x20) != 0)
    {
      if (([descriptor usage] & 3) == 0)
      {
        _MTLMessageContextPush_();
      }

      if ([descriptor pixelFormat] != 53 && objc_msgSend(descriptor, "pixelFormat") != 54 && objc_msgSend(descriptor, "pixelFormat") != 103)
      {
        _MTLMessageContextPush_();
      }
    }

    -[MTLDebugDevice validateResourceOptions:isTexture:isIOSurface:context:](self, "validateResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 1, v15);
    if (!iosurface)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor placementSparsePageSize])
    {
      _MTLMessageContextPush_();
    }

    if (slice >= 0x801)
    {
      _MTLMessageContextPush_();
    }

    if (!*&v15[0])
    {
      v13 = [-[MTLToolsObject baseObject](self "baseObject")];
      if (v13)
      {
        v14 = v13;
        v11 = [[MTLDebugTexture alloc] initWithBaseTexture:v13 device:self plane:plane];

        goto LABEL_26;
      }
    }
  }

LABEL_25:
  v11 = 0;
LABEL_26:
  _MTLMessageContextEnd();
  return v11;
}

- (id)newBufferWithIOSurface:(__IOSurface *)surface
{
  if (!surface)
  {
    [MTLDebugDevice newBufferWithIOSurface:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugBuffer alloc] initWithBuffer:result device:self options:0];

    return v7;
  }

  return result;
}

- (const)targetDeviceInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject targetDeviceInfo];
}

- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)format
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  MTLPixelFormatGetInfoForDevice();
  [MTLDebugDevice minimumLinearTextureAlignmentForPixelFormat:v6];
  return [-[MTLToolsObject baseObject](self baseObject];
}

- (id)newRasterizationRateMapWithDescriptor:(id)descriptor
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (descriptor)
  {
    [descriptor screenSize];
  }

  v16 = 0;
  v5 = [descriptor layerPointer:&v16];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = v17;
  v7 = v18;
  v9 = v16;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  _MTLMessageContextBegin_();
  maxRasterizationRateLayerCount = [baseObject maxRasterizationRateLayerCount];
  if (!maxRasterizationRateLayerCount)
  {
    _MTLMessageContextPush_();
  }

  if ((v8 - 32769) <= 0xFFFFFFFFFFFF7FFFLL)
  {
    _MTLMessageContextPush_();
  }

  if ((v7 - 32769) <= 0xFFFFFFFFFFFF7FFFLL)
  {
    _MTLMessageContextPush_();
  }

  if (v9 - 1 >= maxRasterizationRateLayerCount)
  {
    _MTLMessageContextPush_();
    if (v5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    _MTLMessageContextPush_();
    goto LABEL_21;
  }

  v11 = 0;
  do
  {
    if (*(v5 + 8 * v11) || (_MTLMessageContextPush_(), *(v5 + 8 * v11)))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }
    }

    ++v11;
  }

  while (v9 != v11);
LABEL_21:
  _MTLMessageContextEnd();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [(MTLToolsObject *)[MTLToolsRasterizationRateMap alloc] initWithBaseObject:v12 parent:self];

  return v14;
}

- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newCounterSampleBufferWithDescriptor:error:];
    }
  }

  else
  {
    [MTLDebugDevice newCounterSampleBufferWithDescriptor:error:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugCounterSampleBuffer alloc] initWithCounterSampleBuffer:result device:self descriptor:descriptor];

    return v9;
  }

  return result;
}

- (id)newEvent
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLDebugEvent alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newSharedEvent
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLDebugSharedEvent alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newSharedEventWithHandle:(id)handle
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLDebugSharedEvent alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newLateEvalEvent
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self supportsLateEvalEvent])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v3 = [(MTLToolsObject *)[MTLDebugLateEvalEvent alloc] initWithBaseObject:v4 parent:self];

  return v3;
}

- (id)newFence
{
  v6.receiver = self;
  v6.super_class = MTLDebugDevice;
  newFence = [(MTLToolsDevice *)&v6 newFence];
  if (!newFence)
  {
    v5.receiver = self;
    v5.super_class = MTLDebugDevice;
    [(MTLToolsDevice *)&v5 maxFenceInstances];
    MTLReportFailure();
  }

  return newFence;
}

- (void)addReferenceTrackingCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  os_unfair_lock_lock(&self->_referenceTrackingCommandBufferLock);
  std::__hash_table<MTLDebugCommandBuffer *,std::hash<MTLDebugCommandBuffer *>,std::equal_to<MTLDebugCommandBuffer *>,std::allocator<MTLDebugCommandBuffer *>>::__emplace_unique_key_args<MTLDebugCommandBuffer *,MTLDebugCommandBuffer * const&>(&self->_referenceTrackingCommandBuffers.__table_.__bucket_list_.__ptr_, &bufferCopy);
  os_unfair_lock_unlock(&self->_referenceTrackingCommandBufferLock);
}

- (void)removeReferenceTrackingCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  os_unfair_lock_lock(&self->_referenceTrackingCommandBufferLock);
  if (v4)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(&self->_referenceTrackingCommandBuffers.__table_.__bucket_list_.__ptr_, v4);
  }

  os_unfair_lock_unlock(&self->_referenceTrackingCommandBufferLock);
}

- (void)notifyExternalReferencesNonZeroOnDealloc:(id)dealloc
{
  baseObject = [dealloc baseObject];
  os_unfair_lock_lock(&self->_referenceTrackingCommandBufferLock);
  next = self->_referenceTrackingCommandBuffers.__table_.__first_node_.__next_;
  if (next)
  {
    v7 = 0;
    label = 0;
    do
    {
      v9 = next[2];
      v11 = 0;
      if ([v9 testObjectReferenced:dealloc wasInternallyRetained:&v11])
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        label = [v9 label];
        v7 = v9;
      }

      next = *next;
    }

    while (next);
    os_unfair_lock_unlock(&self->_referenceTrackingCommandBufferLock);
    if (v7)
    {
      [baseObject description];
      MTLReportFailure();
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_referenceTrackingCommandBufferLock);
    label = 0;
  }
}

- (void)validateRaytracing
{
  if (![(MTLToolsDevice *)self supportsRaytracing])
  {
    [MTLDebugDevice validateRaytracing];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor
{
  [(MTLDebugDevice *)self validateRaytracing];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    checkMTL4AccelerationStructureDescriptor(self, a4, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(self, a4, 0);
  }

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
  [(MTLDebugDevice *)self validateRaytracing];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  [(MTLDebugDevice *)self validateRaytracing];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    checkMTL4AccelerationStructureDescriptor(self, descriptor, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(self, descriptor, 0);
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  [(MTLDebugDevice *)self validateRaytracing];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  [(MTLDebugDevice *)self validateRaytracing];
  if (buffer)
  {
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:offset:];
    }

    device = self->super.super._device;
    if (device != [buffer device])
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:offset:];
    }

    if ([buffer length] <= offset)
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:buffer offset:?];
    }
  }

  else
  {
    [MTLDebugDevice newAccelerationStructureWithBuffer:offset:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v9 = result;
    v10 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v10;
  }

  return result;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  [(MTLDebugDevice *)self validateRaytracing];
  if (buffer)
  {
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:offset:resourceIndex:];
    }

    device = self->super.super._device;
    if (device != [buffer device])
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:offset:resourceIndex:];
    }

    if ([buffer length] <= offset)
    {
      [MTLDebugDevice newAccelerationStructureWithBuffer:buffer offset:? resourceIndex:?];
    }
  }

  else
  {
    [MTLDebugDevice newAccelerationStructureWithBuffer:offset:resourceIndex:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v11 = result;
    v12 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v12;
  }

  return result;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor
{
  if (!bytes)
  {
    [MTLDebugDevice deserializePrimitiveAccelerationStructureFromBytes:withDescriptor:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  if (!bytes)
  {
    [MTLDebugDevice deserializeInstanceAccelerationStructureFromBytes:primitiveAccelerationStructures:withDescriptor:];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      checkAccelerationStructure(self->super.super._device, [structures objectAtIndexedSubscript:v10], 0);
      [v9 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v10), "baseObject")}];
      v10 = v11;
    }

    while ([structures count] > v11++);
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v14 = result;
    v15 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v15;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor
{
  if (structure)
  {
    if (bytes)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugDevice deserializePrimitiveAccelerationStructure:fromBytes:withDescriptor:];
    if (bytes)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugDevice deserializePrimitiveAccelerationStructure:fromBytes:withDescriptor:];
LABEL_3:
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v11 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializePrimitiveAccelerationStructure:baseObject2 fromBytes:bytes withDescriptor:v11];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  if (structure)
  {
    if (bytes)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugDevice deserializeInstanceAccelerationStructure:fromBytes:primitiveAccelerationStructures:withDescriptor:];
    if (bytes)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugDevice deserializeInstanceAccelerationStructure:fromBytes:primitiveAccelerationStructures:withDescriptor:];
LABEL_3:
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      checkAccelerationStructure(self->super.super._device, [structures objectAtIndexedSubscript:v11], 0);
      [v10 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v11), "baseObject")}];
      v11 = v12;
    }

    while ([structures count] > v12++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v16 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializeInstanceAccelerationStructure:baseObject2 fromBytes:bytes primitiveAccelerationStructures:v10 withDescriptor:v16];
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newVisibleFunctionTableWithDescriptor:];
    }
  }

  else
  {
    [MTLDebugDevice newVisibleFunctionTableWithDescriptor:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result parent:self descriptor:descriptor stage:0];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  [(MTLDebugDevice *)self validateRaytracing];
  if (descriptor)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugDevice newIntersectionFunctionTableWithDescriptor:];
    }
  }

  else
  {
    [MTLDebugDevice newIntersectionFunctionTableWithDescriptor:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result parent:self descriptor:descriptor stage:0];

    return v7;
  }

  return result;
}

- (void)clearRenderEncoder:(id)encoder writeMask:(unint64_t)mask withCheckerboard:(float *)checkerboard
{
  baseObject = [encoder baseObject];
  p_checkerboardRTPipelineCache = &self->_checkerboardRTPipelineCache;
  maskCopy = mask;
  ColorPipelineState = CheckerboardRenderTargetPipelineCache::getColorPipelineState(p_checkerboardRTPipelineCache, [encoder descriptor], &maskCopy);
  if (ColorPipelineState)
  {
    v12 = ColorPipelineState;
    descriptor = [encoder descriptor];
    v14 = (mask & 0x100000000) != 0 && [objc_msgSend(descriptor "depthAttachment")] == 0;
    v15 = p_checkerboardRTPipelineCache->_depthStencilState[v14];
    [baseObject setCullMode:0];
    [baseObject setRenderPipelineState:v12];
    [baseObject setDepthStencilState:v15];
    [baseObject setFragmentBytes:checkerboard length:32 atIndex:0];
    [baseObject setVisibilityResultMode:0 offset:0];
    [baseObject drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (id)newProfileWithExecutionSize:(unint64_t)size
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLDebugDeadlineProfile alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)getDynamicLibraryForBaseObject:(id)object
{
  dynamicLibraryObjectCache = self->super.dynamicLibraryObjectCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__MTLDebugDevice_getDynamicLibraryForBaseObject___block_invoke;
  v5[3] = &unk_2787B3BA8;
  v5[4] = object;
  v5[5] = self;
  return [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:object onMiss:v5];
}

uint64_t __49__MTLDebugDevice_getDynamicLibraryForBaseObject___block_invoke(uint64_t a1)
{
  v2 = [MTLDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)getFunctionForBaseObject:(id)object library:(id)library
{
  functionObjectCache = self->super.functionObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MTLDebugDevice_getFunctionForBaseObject_library___block_invoke;
  v6[3] = &unk_2787B3BD0;
  v6[4] = object;
  v6[5] = library;
  return [(MTLToolsObjectCache *)functionObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __51__MTLDebugDevice_getFunctionForBaseObject_library___block_invoke(uint64_t a1)
{
  v2 = [MTLDebugFunction alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLDebugFunction *)v2 initWithFunction:v3 library:v4];
}

- (id)getDepthStencilStateForBaseObject:(id)object descriptor:(id)descriptor
{
  depthStencilObjectCache = self->super.depthStencilObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__MTLDebugDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D38;
  v6[4] = object;
  v6[5] = descriptor;
  v6[6] = self;
  return [(MTLToolsObjectCache *)depthStencilObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __63__MTLDebugDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLDebugDepthStencilState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugDepthStencilState *)v2 initWithDepthStencilState:v3 descriptor:v4 device:v5];
}

- (id)getSamplerStateForBaseObject:(id)object descriptor:(id)descriptor
{
  samplerObjectCache = self->super.samplerObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__MTLDebugDevice_getSamplerStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D60;
  v6[4] = object;
  v6[5] = descriptor;
  v6[6] = self;
  return [(MTLToolsObjectCache *)samplerObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __58__MTLDebugDevice_getSamplerStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLDebugSamplerState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugSamplerState *)v2 initWithSamplerState:v3 descriptor:v4 device:v5];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v5 = [baseObject heapAccelerationStructureSizeAndAlignWithSize:size];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    checkMTL4AccelerationStructureDescriptor(self, descriptor, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(self, descriptor, 0);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = unwrapAccelerationStructureDescriptor(descriptor);

  v7 = [baseObject heapAccelerationStructureSizeAndAlignWithDescriptor:v6];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)newArgumentEncoderWithBufferBinding:(id)binding
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = -[MTLDebugArgumentEncoder initWithBaseObject:structType:parent:]([MTLDebugArgumentEncoder alloc], "initWithBaseObject:structType:parent:", v5, [binding bufferStructType], self);

  return v6;
}

- (id)functionHandleWithFunction:(id)function
{
  [function validateIsIFBFunction];
  if (([function options] & 1) == 0)
  {
    [MTLDebugDevice functionHandleWithFunction:];
  }

  if (([function options] & 8) == 0)
  {
    [MTLDebugDevice functionHandleWithFunction:];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = newDebugFunctionHandleWithFunction(self, v6, function, self, 0);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index
{
  [function validateIsIFBFunction];
  if (([function options] & 1) == 0)
  {
    [MTLDebugDevice functionHandleWithFunction:resourceIndex:];
  }

  if (([function options] & 8) == 0)
  {
    [MTLDebugDevice functionHandleWithFunction:resourceIndex:];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = newDebugFunctionHandleWithFunction(self, v8, function, self, 0);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)newIOHandleWithURL:(id)l error:(id *)error
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!l)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![l fileSystemRepresentation])
  {
LABEL_7:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [[MTLDebugIOHandle alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!l)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![l fileSystemRepresentation])
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

  if (type >= 5)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = [[MTLDebugIOHandle alloc] initWithBaseObject:v9 parent:self];

  return v10;
}

- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!l)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![l fileSystemRepresentation])
  {
LABEL_7:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [[MTLDebugIOHandle alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!l)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![l fileSystemRepresentation])
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

  if (type >= 5)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = [[MTLDebugIOHandle alloc] initWithBaseObject:v9 parent:self];

  return v10;
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([descriptor priority] && objc_msgSend(descriptor, "priority") != 1 && objc_msgSend(descriptor, "priority") != 2)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor type] && objc_msgSend(descriptor, "type") != 1)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor scratchBufferAllocator] && (objc_msgSend(objc_msgSend(descriptor, "scratchBufferAllocator"), "conformsToProtocol:", &unk_284245470) & 1) == 0)
    {
LABEL_17:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v7 = [descriptor copy];
  if ([descriptor scratchBufferAllocator])
  {
    v8 = -[MTLDebugIOScratchBufferAllocator initWithBaseObject:parent:]([MTLDebugIOScratchBufferAllocator alloc], "initWithBaseObject:parent:", [descriptor scratchBufferAllocator], self);
    [v7 setScratchBufferAllocator:v8];
  }

  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = [(MTLToolsIOCommandQueue *)[MTLDebugIOCommandQueue alloc] initWithBaseObject:v9 parent:self];

  return v10;
}

- (BOOL)areWritableHeapsEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areWritableHeapsEnabled];
}

- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error
{
  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([descriptor maxBufferBindCount] >= 0x20)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor maxTextureBindCount] >= 0x81)
    {
      _MTLMessageContextPush_();
    }

    if ([descriptor maxSamplerStateBindCount] >= 0x11)
    {
LABEL_17:
      _MTLMessageContextPush_();
    }
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = v8;
    v7 = [[MTL4DebugArgumentTable alloc] initWithArgumentTable:v8 device:self descriptor:descriptor];
  }

  else
  {
    v7 = 0;
  }

  _MTLMessageContextEnd();
  return v7;
}

- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error
{
  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![descriptor resourceViewCount])
  {
    _MTLMessageContextPush_();
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = v8;
    v7 = [[MTLDebugTextureViewPool alloc] initWithTextureViewPool:v8 device:self];
  }

  else
  {
    v7 = 0;
  }

  _MTLMessageContextEnd();
  return v7;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  [(MTLDebugDevice *)self validateNewBufferArgs:length options:options context:v13];
  if ((size - 101) >= 3 && size)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (*&v13[0])
  {
    return 0;
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v9 = [[MTLDebugBuffer alloc] initWithBuffer:v10 device:self options:options placementSparsePageSize:size];

  return v9;
}

- (id)newArchiveWithURL:(id)l error:(id *)error
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!l)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([l isFileURL] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(MTL4ToolsArchive *)[MTL4DebugArchive alloc] initWithBaseObject:v7 parent:self];

  return v9;
}

- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTLDebugDevice;
  v8 = [(MTLToolsDevice *)&v14 newUnwrappedMTL4CompilerDescriptor:descriptor];
  v13 = 0;
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (error)
  {
    v10 = v13;
  }

  if (v9)
  {
    v11 = [(MTL4ToolsCompiler *)[MTL4DebugCompiler alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = 0;
  }

  return v11;
}

- (id)newMTL4CommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4DebugCommandQueue alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    v10 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v9 = v8;
  v10 = [[MTL4DebugCommandQueue alloc] initWithBaseObject:v8 parent:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v13;
  objc_autoreleasePoolPop(v7);
  *error = v13;
  return v10;
}

- (id)newCommandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = v4;
    v6 = [[MTL4DebugCommandBuffer alloc] initWithCommandBuffer:v4 device:self];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (id)newCommandAllocator
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = v4;
    v6 = [[MTL4DebugCommandAllocator alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    v10 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v9 = v8;
  v10 = [[MTL4DebugCommandAllocator alloc] initWithBaseObject:v8 parent:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v13;
  objc_autoreleasePoolPop(v7);
  *error = v13;
  return v10;
}

- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (descriptor)
  {
    v8 = @"descriptor is not a MTL4CounterHeapDescriptor";
  }

  else
  {
    v8 = @"descriptor must not be nil.";
  }

  if (!descriptor || (isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  if ([descriptor type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor entryCount] > 0x1000)
  {
LABEL_14:
    _MTLMessageContextPush_();
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = v10;
    v9 = [[MTL4DebugCounterHeap alloc] initWithCounterHeap:v10 device:self];
  }

  else
  {
    v9 = 0;
  }

  _MTLMessageContextEnd();
  return v9;
}

- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry
{
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (entry != 1)
  {
    _MTLMessageContextPush_();
  }

  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  _MTLMessageContextEnd();
  return v5;
}

- (id)functionHandleWithBinaryFunction:(id)function
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = newDebugFunctionHandleWithBinaryFunction(self, v6, function, self, 0);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    v10 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v9 = v8;
  v10 = [(MTLToolsResource *)[MTLDebugTensor alloc] initWithBaseObject:v8 parent:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v13;
  objc_autoreleasePoolPop(v7);
  *error = v13;
  return v10;
}

- (id).cxx_construct
{
  MTLSamplerDescriptorHashMap::MTLSamplerDescriptorHashMap(&self->_argumentBufferSamplers);
  self->_referenceTrackingCommandBuffers.__table_.__bucket_list_ = 0u;
  *&self->_referenceTrackingCommandBuffers.__table_.__first_node_.__next_ = 0u;
  self->_referenceTrackingCommandBuffers.__table_.__max_load_factor_ = 1.0;
  self->_checkerboardRTPipelineCache._cache.__table_.__bucket_list_ = 0u;
  *&self->_checkerboardRTPipelineCache._cache.__table_.__first_node_.__next_ = 0u;
  self->_checkerboardRTPipelineCache._cache.__table_.__max_load_factor_ = 1.0;
  return self;
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.3(void *a1)
{
  [a1 maxVertexBufferBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.4(void *a1)
{
  [a1 maxFragmentBufferBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.5(void *a1)
{
  [a1 maxObjectBufferBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.6(void *a1)
{
  [a1 maxMeshBufferBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.7(void *a1)
{
  [a1 maxObjectThreadgroupMemoryBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.8(void *a1)
{
  [a1 maxKernelBufferBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)newIndirectCommandBufferWithDescriptor:(void *)a1 maxCommandCount:options:.cold.9(void *a1)
{
  [a1 maxKernelThreadgroupMemoryBindCount];
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_7();
}

@end