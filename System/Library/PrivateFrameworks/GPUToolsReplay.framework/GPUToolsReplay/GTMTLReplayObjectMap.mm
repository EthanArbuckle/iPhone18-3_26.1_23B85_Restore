@interface GTMTLReplayObjectMap
- (CGRect)contentRect;
- (CGRect)windowRect;
- (GTMTLReplayObjectMap)initWithDevice:(id)device;
- (id)accelerationStructureCommandEncoderForKey:(unint64_t)key;
- (id)accelerationStructureForKey:(unint64_t)key;
- (id)allocationForKey:(unint64_t)key;
- (id)argumentEncoderForKey:(unint64_t)key;
- (id)blitCommandEncoderForKey:(unint64_t)key;
- (id)bufferForHeapKey:(unint64_t)key;
- (id)bufferForKey:(unint64_t)key;
- (id)commandBufferForKey:(unint64_t)key;
- (id)commandQueueForKey:(unint64_t)key;
- (id)computeCommandEncoderForKey:(unint64_t)key;
- (id)computePipelineDescriptorMap;
- (id)computePipelineStateForKey:(unint64_t)key;
- (id)counterSampleBufferForKey:(unint64_t)key;
- (id)depthStencilStateForKey:(unint64_t)key;
- (id)drawableForKey:(unint64_t)key;
- (id)dynamicLibraryForKey:(unint64_t)key;
- (id)encoderForKey:(unint64_t)key ofType:(BOOL)type;
- (id)eventForKey:(unint64_t)key;
- (id)fenceForKey:(unint64_t)key;
- (id)frameInterpolatorForKey:(unint64_t)key;
- (id)functionForKey:(unint64_t)key;
- (id)functionHandleForKey:(unint64_t)key;
- (id)functionPointerHandleForKey:(unint64_t)key;
- (id)functionPrivateArgumentForKey:(unint64_t)key;
- (id)heapForKey:(unint64_t)key;
- (id)indirectCommandBufferForKey:(unint64_t)key;
- (id)indirectComputeCommandForKey:(unint64_t)key;
- (id)indirectRenderCommandForKey:(unint64_t)key;
- (id)intersectionFunctionTableForKey:(unint64_t)key;
- (id)ioCommandBufferForKey:(unint64_t)key;
- (id)ioCommandQueueForKey:(unint64_t)key;
- (id)ioScratchBufferAllocatorForKey:(unint64_t)key;
- (id)ioScratchBufferForKey:(unint64_t)key;
- (id)iosurfaceForProperties:(id)properties;
- (id)lateEvalEventForKey:(unint64_t)key;
- (id)layerForKey:(unint64_t)key;
- (id)libraryForKey:(unint64_t)key;
- (id)logStateForKey:(unint64_t)key;
- (id)mtl4ArchiveForKey:(unint64_t)key;
- (id)mtl4ArgumentTableForKey:(unint64_t)key;
- (id)mtl4BinaryFunctionForKey:(unint64_t)key;
- (id)mtl4CommandAllocatorForKey:(unint64_t)key;
- (id)mtl4CommandBufferForKey:(unint64_t)key;
- (id)mtl4CommandQueueForKey:(unint64_t)key;
- (id)mtl4CompilerForKey:(unint64_t)key;
- (id)mtl4ComputeCommandEncoderForKey:(unint64_t)key;
- (id)mtl4MachineLearningCommandEncoderForKey:(unint64_t)key;
- (id)mtl4MachineLearningPipelineStateForKey:(unint64_t)key;
- (id)mtl4OpenCommandBufferForKey:(unint64_t)key;
- (id)mtl4RenderCommandEncoderForKey:(unint64_t)key;
- (id)mtl4fxFrameInterpolatorForKey:(unint64_t)key;
- (id)mtl4fxSpatialScalerForKey:(unint64_t)key;
- (id)mtl4fxTemporalDenoisedScalerForKey:(unint64_t)key;
- (id)mtl4fxTemporalScalerForKey:(unint64_t)key;
- (id)objectPayloadBindingForKey:(unint64_t)key;
- (id)parallelRenderCommandEncoderForKey:(unint64_t)key;
- (id)pipelineLibraryForKey:(unint64_t)key;
- (id)rasterizationRateMapForKey:(unint64_t)key;
- (id)renderCommandEncoderForKey:(unint64_t)key;
- (id)renderPassDescriptorMapWithMemorylessSubstitutes:(id)substitutes;
- (id)renderPipelineDescriptorMap;
- (id)renderPipelineStateForKey:(unint64_t)key;
- (id)residencySetForKey:(unint64_t)key;
- (id)resourceForKey:(unint64_t)key;
- (id)resourceGroupSPIForKey:(unint64_t)key;
- (id)resourceStateCommandEncoderForKey:(unint64_t)key;
- (id)resourceViewPoolForKey:(unint64_t)key;
- (id)restoreIndirectCommandBufferDataMap;
- (id)samplerStateForKey:(unint64_t)key;
- (id)sharedEventForKey:(unint64_t)key;
- (id)sharedEventHandleForKey:(unint64_t)key;
- (id)spatialScalerForKey:(unint64_t)key;
- (id)temporalDenoisedScalerForKey:(unint64_t)key;
- (id)temporalScalerForKey:(unint64_t)key;
- (id)tensorForKey:(unint64_t)key;
- (id)textureForKey:(unint64_t)key;
- (id)textureViewPoolEntryForKey:(unint64_t)key;
- (id)textureViewPoolForKey:(unint64_t)key;
- (id)tryGetTextureForKey:(unint64_t)key;
- (id)unusedResourceKeys;
- (id)visibleFunctionTableForKey:(unint64_t)key;
- (unsigned)globalTraceIdForEncoder:(unint64_t)encoder ofType:(BOOL)type;
- (void)addGlobalResidencySetToMTL4Queue:(id)queue;
- (void)addGlobalResidencySetToQueue:(id)queue;
- (void)addToGlobalResidencySet:(id)set;
- (void)addUnusedResourceKey:(unint64_t)key;
- (void)commitCommandBuffers:(GTMTLCoreSync *)buffers;
- (void)presentDrawableWithKey:(unint64_t)key;
- (void)removeAccelerationStructureCommandEncoderForKey:(unint64_t)key;
- (void)removeAccelerationStructureForKey:(unint64_t)key;
- (void)removeAliasableResourceForKey:(id)key;
- (void)removeArgumentEncoderForKey:(unint64_t)key;
- (void)removeBlitCommandEncoderForKey:(unint64_t)key;
- (void)removeBufferForHeapKey:(unint64_t)key;
- (void)removeBufferForKey:(unint64_t)key;
- (void)removeCommandBufferForKey:(unint64_t)key;
- (void)removeCommandQueueForKey:(unint64_t)key;
- (void)removeComputeCommandEncoderForKey:(unint64_t)key;
- (void)removeComputePipelineStateForKey:(unint64_t)key;
- (void)removeCounterSampleBuffer:(unint64_t)buffer;
- (void)removeCounterSampleBufferForKey:(unint64_t)key;
- (void)removeDeadlineProfileForKey:(unint64_t)key;
- (void)removeDepthStencilStateForKey:(unint64_t)key;
- (void)removeDeviceForKey:(unint64_t)key;
- (void)removeDynamicLibraryForKey:(unint64_t)key;
- (void)removeEventForKey:(unint64_t)key;
- (void)removeFenceForKey:(unint64_t)key;
- (void)removeFrameInterpolatorForKey:(unint64_t)key;
- (void)removeFunctionForKey:(unint64_t)key;
- (void)removeFunctionHandleForKey:(unint64_t)key;
- (void)removeFunctionPointerHandleForKey:(unint64_t)key;
- (void)removeFunctionPrivateArgumentForKey:(unint64_t)key;
- (void)removeHeapForKey:(unint64_t)key;
- (void)removeIOCommandBufferForKey:(unint64_t)key;
- (void)removeIOCommandQueueForKey:(unint64_t)key;
- (void)removeIOScratchBufferAllocatorForKey:(unint64_t)key;
- (void)removeIOScratchBufferForKey:(unint64_t)key;
- (void)removeIndirectCommandBufferForKey:(unint64_t)key;
- (void)removeIndirectComputeCommandForKey:(unint64_t)key;
- (void)removeIndirectRenderCommandForKey:(unint64_t)key;
- (void)removeIntersectionFunctionTableForKey:(unint64_t)key;
- (void)removeLateEvalEventForKey:(unint64_t)key;
- (void)removeLibraryForKey:(unint64_t)key;
- (void)removeLogStateForKey:(unint64_t)key;
- (void)removeMTL4ArgumentTableForKey:(unint64_t)key;
- (void)removeMTL4CommandAllocatorForKey:(unint64_t)key;
- (void)removeMTL4CommandBufferForKey:(unint64_t)key;
- (void)removeMTL4CommandQueueForKey:(unint64_t)key;
- (void)removeMTL4CompilerForKey:(unint64_t)key;
- (void)removeMTL4ComputeCommandEncoderForKey:(unint64_t)key;
- (void)removeMTL4FXFrameInterpolatorForKey:(unint64_t)key;
- (void)removeMTL4FXSpatialScalerForKey:(unint64_t)key;
- (void)removeMTL4FXTemporalDenoisedScalerForKey:(unint64_t)key;
- (void)removeMTL4FXTemporalScalerForKey:(unint64_t)key;
- (void)removeMTL4MachineLearningCommandEncoderForKey:(unint64_t)key;
- (void)removeMTL4MachineLearningPipelineStateForKey:(unint64_t)key;
- (void)removeMTL4OpenCommandBufferForKey:(unint64_t)key;
- (void)removeMTL4RenderCommandEncoderForKey:(unint64_t)key;
- (void)removeMotionEstimationPipelineForKey:(unint64_t)key;
- (void)removeObjectPayloadBindingForKey:(unint64_t)key;
- (void)removeParallelRenderCommandEncoderForKey:(unint64_t)key;
- (void)removePipelineLibraryForKey:(unint64_t)key;
- (void)removeRasterizationRateMapForKey:(unint64_t)key;
- (void)removeRenderCommandEncoderForKey:(unint64_t)key;
- (void)removeRenderPipelineStateForKey:(unint64_t)key;
- (void)removeResidencySetForKey:(unint64_t)key;
- (void)removeResourceGroupForKey:(unint64_t)key;
- (void)removeResourceGroupSPIForKey:(unint64_t)key;
- (void)removeResourceStateCommandEncoderForKey:(unint64_t)key;
- (void)removeResourcesForKeys:(id)keys;
- (void)removeSamplerStateForKey:(unint64_t)key;
- (void)removeSharedEventForKey:(unint64_t)key;
- (void)removeSpatialScalerForKey:(unint64_t)key;
- (void)removeTemporalDenoisedScalerForKey:(unint64_t)key;
- (void)removeTemporalScalerForKey:(unint64_t)key;
- (void)removeTensorForKey:(unint64_t)key;
- (void)removeTextureForKey:(unint64_t)key;
- (void)removeTextureViewPoolForKey:(unint64_t)key;
- (void)removeVideoCommandEncoderForKey:(unint64_t)key;
- (void)removeVisibleFunctionHandleForKey:(unint64_t)key;
- (void)removeVisibleFunctionTableForKey:(unint64_t)key;
- (void)setAccelerationStructure:(id)structure forKey:(unint64_t)key;
- (void)setAccelerationStructureCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setArgumentEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setBlitCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setBuffer:(id)buffer forHeapKey:(unint64_t)key;
- (void)setBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setCommandBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setCommandQueue:(id)queue forKey:(unint64_t)key;
- (void)setComputeCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setComputePipelineState:(id)state forKey:(unint64_t)key;
- (void)setContentRect:(CGRect)rect windowRect:(CGRect)windowRect properties:(id)properties;
- (void)setCounterSampleBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setDeadlineProfile:(id)profile forKey:(unint64_t)key;
- (void)setDebugCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setDepthStencilState:(id)state forKey:(unint64_t)key;
- (void)setDevice:(id)device forKey:(unint64_t)key;
- (void)setDrawable:(id)drawable forKey:(unint64_t)key;
- (void)setDynamicLibrary:(id)library forKey:(unint64_t)key;
- (void)setDynamicLibrary:(id)library forPath:(const char *)path;
- (void)setEvent:(id)event forKey:(unint64_t)key;
- (void)setFence:(id)fence forKey:(unint64_t)key;
- (void)setFrameInterpolator:(id)interpolator forKey:(unint64_t)key;
- (void)setFunction:(id)function forKey:(unint64_t)key;
- (void)setFunctionHandle:(id)handle forKey:(unint64_t)key;
- (void)setFunctionPointerHandle:(id)handle forKey:(unint64_t)key;
- (void)setFunctionPrivateArgument:(id)argument forKey:(unint64_t)key;
- (void)setHeap:(id)heap forKey:(unint64_t)key;
- (void)setIOCommandBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setIOCommandQueue:(id)queue forKey:(unint64_t)key;
- (void)setIOScratchBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setIOScratchBufferAllocator:(id)allocator forKey:(unint64_t)key;
- (void)setIndirectCommandBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setIndirectComputeCommand:(id)command forKey:(unint64_t)key;
- (void)setIndirectRenderCommand:(id)command forKey:(unint64_t)key;
- (void)setIntersectionFunctionTable:(id)table forKey:(unint64_t)key;
- (void)setLateEvalEvent:(id)event forKey:(unint64_t)key;
- (void)setLayer:(id)layer forKey:(unint64_t)key;
- (void)setLayerClass:(Class)class;
- (void)setLibrary:(id)library forKey:(unint64_t)key;
- (void)setLogState:(id)state forKey:(unint64_t)key;
- (void)setMTL4Archive:(id)archive forKey:(unint64_t)key;
- (void)setMTL4ArgumentTable:(id)table forKey:(unint64_t)key;
- (void)setMTL4BinaryFunction:(id)function forKey:(unint64_t)key;
- (void)setMTL4CommandAllocator:(id)allocator forKey:(unint64_t)key;
- (void)setMTL4CommandBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setMTL4CommandQueue:(id)queue forKey:(unint64_t)key;
- (void)setMTL4Compiler:(id)compiler forKey:(unint64_t)key;
- (void)setMTL4ComputeCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setMTL4FXFrameInterpolator:(id)interpolator forKey:(unint64_t)key;
- (void)setMTL4FXSpatialScaler:(id)scaler forKey:(unint64_t)key;
- (void)setMTL4FXTemporalDenoisedScaler:(id)scaler forKey:(unint64_t)key;
- (void)setMTL4FXTemporalScaler:(id)scaler forKey:(unint64_t)key;
- (void)setMTL4MachineLearningCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setMTL4MachineLearningPipelineState:(id)state forKey:(unint64_t)key;
- (void)setMTL4OpenCommandBuffer:(id)buffer forKey:(unint64_t)key;
- (void)setMTL4RenderCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setObjectPayloadBinding:(id)binding forKey:(unint64_t)key;
- (void)setParallelRenderCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setPipelineLibrarySPI:(id)i forKey:(unint64_t)key;
- (void)setRasterizationRateMap:(id)map forKey:(unint64_t)key;
- (void)setRenderCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setRenderPipelineState:(id)state forKey:(unint64_t)key;
- (void)setResidencySet:(id)set forKey:(unint64_t)key;
- (void)setResourceGroupSPI:(id)i forKey:(unint64_t)key;
- (void)setResourceStateCommandEncoder:(id)encoder forKey:(unint64_t)key;
- (void)setSamplerState:(id)state forKey:(unint64_t)key;
- (void)setSharedEvent:(id)event forKey:(unint64_t)key;
- (void)setSharedEventHandle:(id)handle forKey:(unint64_t)key;
- (void)setSpatialScaler:(id)scaler forKey:(unint64_t)key;
- (void)setTemporalDenoisedScaler:(id)scaler forKey:(unint64_t)key;
- (void)setTemporalScaler:(id)scaler forKey:(unint64_t)key;
- (void)setTensor:(id)tensor forKey:(unint64_t)key;
- (void)setTexture:(id)texture forKey:(unint64_t)key;
- (void)setTextureViewPool:(id)pool forKey:(unint64_t)key;
- (void)setTextureViewPoolEntry:(id)entry forKey:(unint64_t)key;
- (void)setVisibleFunctionTable:(id)table forKey:(unint64_t)key;
@end

@implementation GTMTLReplayObjectMap

- (id)unusedResourceKeys
{
  v2 = [(NSMutableSet *)self->_unusedResources copy];

  return v2;
}

- (void)addUnusedResourceKey:(unint64_t)key
{
  unusedResources = self->_unusedResources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableSet *)unusedResources addObject:v4];
}

- (void)commitCommandBuffers:(GTMTLCoreSync *)buffers
{
  v79 = *MEMORY[0x277D85DE8];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v5 = self->_commandEncoders;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_commandEncoders objectForKeyedSubscript:*(*(&v70 + 1) + 8 * i)];
        [v10 endEncoding];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_commandEncoders removeAllObjects];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = self->_parallelRenderCommandEncoders;
  v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v67;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v67 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NSMutableDictionary *)self->_parallelRenderCommandEncoders objectForKeyedSubscript:*(*(&v66 + 1) + 8 * j)];
        [v16 endEncoding];
      }

      v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v13);
  }

  buffersCopy = buffers;

  [(NSMutableDictionary *)self->_parallelRenderCommandEncoders removeAllObjects];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v17 = self->_commandBuffers;
  v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v63;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v63 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v62 + 1) + 8 * k);
        v23 = [(NSMutableDictionary *)self->_commandBuffers objectForKeyedSubscript:v22];
        [g_activityLog logCommandBuffer:v23 withKey:{objc_msgSend(v22, "unsignedLongLongValue")}];
        GTMTLReplay_commitCommandBuffer(v23);
      }

      v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v19);
  }

  [(NSMutableDictionary *)self->_commandBuffers removeAllObjects];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = self->_mtl4CommandEncoders;
  v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [(NSMutableDictionary *)self->_mtl4CommandEncoders objectForKeyedSubscript:*(*(&v58 + 1) + 8 * m)];
        [v29 endEncoding];
      }

      v26 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v26);
  }

  [(NSMutableDictionary *)self->_mtl4CommandEncoders removeAllObjects];
  if ([(NSMutableDictionary *)self->_mtl4OpenCommandBuffers count])
  {
    v30 = objc_opt_new();
  }

  else
  {
    v30 = 0;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v31 = self->_mtl4OpenCommandBuffers;
  v32 = [(NSMutableDictionary *)v31 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v55;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v54 + 1) + 8 * n);
        v37 = [(NSMutableDictionary *)self->_mtl4OpenCommandBuffers objectForKeyedSubscript:v36];
        [v37 endCommandBuffer];
        [v30 addObject:v36];
        [(NSMutableArray *)self->_encodedCommandBuffers addObject:v37];
      }

      v33 = [(NSMutableDictionary *)v31 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v33);
  }

  [(NSMutableDictionary *)self->_mtl4OpenCommandBuffers removeAllObjects];
  if ([(NSMutableArray *)self->_encodedCommandBuffers count])
  {
    v38 = buffersCopy;
    if (buffersCopy)
    {
      v39 = buffersCopy->var0;
      v40 = atomic_load(&buffersCopy->var1);
      [(MTL4CommandQueue *)self->_defaultCommandQueue4 waitForEvent:v39 value:v40 - 1];
    }

    [(NSMutableArray *)self->_encodedCommandBuffers count];
    MEMORY[0x28223BE20]();
    v42 = &v52 - v41;
    bzero(&v52 - v41, v43);
    if ([(NSMutableArray *)self->_encodedCommandBuffers count])
    {
      v44 = 0;
      do
      {
        *&v42[8 * v44] = [(NSMutableArray *)self->_encodedCommandBuffers objectAtIndexedSubscript:v44];
        ++v44;
      }

      while ([(NSMutableArray *)self->_encodedCommandBuffers count]> v44);
    }

    v45 = objc_opt_new();
    v46 = g_activityLog;
    defaultCommandQueue4 = self->_defaultCommandQueue4;
    v48 = [(NSMutableArray *)self->_encodedCommandBuffers copy];
    [v46 logMTL4Queue:defaultCommandQueue4 commit:v48 options:v45 withKeys:v30];

    [(MTL4CommandQueue *)self->_defaultCommandQueue4 commit:v42 count:[(NSMutableArray *)self->_encodedCommandBuffers count] options:v45];
    if (v38)
    {
      v49 = v38->var0;
      add = atomic_fetch_add(&v38->var1, 1uLL);
      [(MTL4CommandQueue *)self->_defaultCommandQueue4 signalEvent:v49 value:add];
      if ((qword_27F09CF90 & 2) != 0)
      {
        [v49 waitUntilSignaledValue:add timeoutMS:8000];
      }
    }
  }

  [(NSMutableArray *)self->_encodedCommandBuffers removeAllObjects];

  v51 = *MEMORY[0x277D85DE8];
}

- (id)encoderForKey:(unint64_t)key ofType:(BOOL)type
{
  v4 = 24;
  if (type)
  {
    v4 = 208;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860E5730])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (unsigned)globalTraceIdForEncoder:(unint64_t)encoder ofType:(BOOL)type
{
  v4 = 24;
  if (type)
  {
    v4 = 208;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:encoder];
  v7 = [v5 objectForKeyedSubscript:v6];
  globalTraceObjectID = [v7 globalTraceObjectID];

  return globalTraceObjectID;
}

- (id)restoreIndirectCommandBufferDataMap
{
  v3 = [(NSMutableDictionary *)self->_resources mutableCopy];
  [v3 addEntriesFromDictionary:self->_renderPipelineStates];
  [v3 addEntriesFromDictionary:self->_computePipelineStates];
  [v3 addEntriesFromDictionary:self->_depthStencilStates];
  v4 = [v3 copy];

  return v4;
}

- (id)renderPassDescriptorMapWithMemorylessSubstitutes:(id)substitutes
{
  substitutesCopy = substitutes;
  v5 = [(NSMutableDictionary *)self->_resources mutableCopy];
  if ([substitutesCopy count])
  {
    [v5 addEntriesFromDictionary:substitutesCopy];
  }

  [v5 addEntriesFromDictionary:self->_rasterizationRateMaps];
  v6 = [v5 copy];

  return v6;
}

- (id)computePipelineDescriptorMap
{
  v3 = [(NSMutableDictionary *)self->_functions mutableCopy];
  [v3 addEntriesFromDictionary:self->_dynamicLibraries];
  [v3 addEntriesFromDictionary:self->_pipelineLibraries];

  return v3;
}

- (id)renderPipelineDescriptorMap
{
  v3 = [(NSMutableDictionary *)self->_functions mutableCopy];
  [v3 addEntriesFromDictionary:self->_dynamicLibraries];
  [v3 addEntriesFromDictionary:self->_pipelineLibraries];
  v4 = [v3 copy];

  return v4;
}

- (void)removeMTL4CompilerForKey:(unint64_t)key
{
  mtl4Compilers = self->_mtl4Compilers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4Compilers removeObjectForKey:v4];
}

- (void)removeMTL4MachineLearningPipelineStateForKey:(unint64_t)key
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)machineLearningPipelineStates removeObjectForKey:v4];
}

- (void)removeMTL4MachineLearningCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeTextureViewPoolForKey:(unint64_t)key
{
  textureViewPools = self->_textureViewPools;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)textureViewPools removeObjectForKey:v4];
}

- (void)removeMTL4RenderCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeMTL4ComputeCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeMTL4ArgumentTableForKey:(unint64_t)key
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4ArgumentTables removeObjectForKey:v4];
}

- (void)removeMTL4CommandQueueForKey:(unint64_t)key
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandQueues removeObjectForKey:v4];
}

- (void)removeMTL4CommandAllocatorForKey:(unint64_t)key
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandAllocators removeObjectForKey:v4];
}

- (void)removeMTL4OpenCommandBufferForKey:(unint64_t)key
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4OpenCommandBuffers removeObjectForKey:v4];
}

- (void)removeMTL4CommandBufferForKey:(unint64_t)key
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandBuffers removeObjectForKey:v4];
}

- (void)removeLogStateForKey:(unint64_t)key
{
  logStates = self->_logStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)logStates removeObjectForKey:v4];
}

- (void)removeMTL4FXTemporalDenoisedScalerForKey:(unint64_t)key
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXTemporalScalerForKey:(unint64_t)key
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxTemporalScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXSpatialScalerForKey:(unint64_t)key
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxSpatialScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXFrameInterpolatorForKey:(unint64_t)key
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxFrameInterpolators removeObjectForKey:v4];
}

- (void)removeTemporalDenoisedScalerForKey:(unint64_t)key
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)temporalDenoisedScalers removeObjectForKey:v4];
}

- (void)removeTemporalScalerForKey:(unint64_t)key
{
  temporalScalers = self->_temporalScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)temporalScalers removeObjectForKey:v4];
}

- (void)removeSpatialScalerForKey:(unint64_t)key
{
  spatialScalers = self->_spatialScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)spatialScalers removeObjectForKey:v4];
}

- (void)removeFrameInterpolatorForKey:(unint64_t)key
{
  frameInterpolators = self->_frameInterpolators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)frameInterpolators removeObjectForKey:v4];
}

- (void)removeDeadlineProfileForKey:(unint64_t)key
{
  deadlineProfiles = self->_deadlineProfiles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)deadlineProfiles removeObjectForKey:v4];
}

- (void)removeVisibleFunctionTableForKey:(unint64_t)key
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeFunctionPrivateArgumentForKey:(unint64_t)key
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionPrivateArguments removeObjectForKey:v4];
}

- (void)removeFunctionPointerHandleForKey:(unint64_t)key
{
  functionPointerHandles = self->_functionPointerHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionPointerHandles removeObjectForKey:v4];
}

- (void)removeLateEvalEventForKey:(unint64_t)key
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeResourceGroupSPIForKey:(unint64_t)key
{
  resourceGroups = self->_resourceGroups;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resourceGroups removeObjectForKey:v4];
}

- (void)removeIntersectionFunctionTableForKey:(unint64_t)key
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeAccelerationStructureCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeAccelerationStructureForKey:(unint64_t)key
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeFunctionHandleForKey:(unint64_t)key
{
  functionHandles = self->_functionHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionHandles removeObjectForKey:v4];
}

- (void)removeVisibleFunctionHandleForKey:(unint64_t)key
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeDynamicLibraryForKey:(unint64_t)key
{
  dynamicLibraries = self->_dynamicLibraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)dynamicLibraries removeObjectForKey:v4];
}

- (void)removeVideoCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeTextureForKey:(unint64_t)key
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeTensorForKey:(unint64_t)key
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeSharedEventForKey:(unint64_t)key
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeSamplerStateForKey:(unint64_t)key
{
  samplerStates = self->_samplerStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)samplerStates removeObjectForKey:v4];
}

- (void)removeResourceStateCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeResourceGroupForKey:(unint64_t)key
{
  resourceGroups = self->_resourceGroups;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resourceGroups removeObjectForKey:v4];
}

- (void)removeResidencySetForKey:(unint64_t)key
{
  residencySets = self->_residencySets;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)residencySets removeObjectForKey:v4];
}

- (void)removeRenderPipelineStateForKey:(unint64_t)key
{
  renderPipelineStates = self->_renderPipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)renderPipelineStates removeObjectForKey:v4];
}

- (void)removeRenderCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeRasterizationRateMapForKey:(unint64_t)key
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)rasterizationRateMaps removeObjectForKey:v4];
}

- (void)removePipelineLibraryForKey:(unint64_t)key
{
  pipelineLibraries = self->_pipelineLibraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)pipelineLibraries removeObjectForKey:v4];
}

- (void)removeObjectPayloadBindingForKey:(unint64_t)key
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)objectPayloadBinding removeObjectForKey:v4];
}

- (void)removeParallelRenderCommandEncoderForKey:(unint64_t)key
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)parallelRenderCommandEncoders removeObjectForKey:v4];
}

- (void)removeMotionEstimationPipelineForKey:(unint64_t)key
{
  motionEstimationPipelines = self->_motionEstimationPipelines;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)motionEstimationPipelines removeObjectForKey:v4];
}

- (void)removeLibraryForKey:(unint64_t)key
{
  libraries = self->_libraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)libraries removeObjectForKey:v4];
}

- (void)removeIndirectRenderCommandForKey:(unint64_t)key
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)indirectRenderCommands removeObjectForKey:v4];
}

- (void)removeIndirectComputeCommandForKey:(unint64_t)key
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)indirectComputeCommands removeObjectForKey:v4];
}

- (void)removeIndirectCommandBufferForKey:(unint64_t)key
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeHeapForKey:(unint64_t)key
{
  heaps = self->_heaps;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)heaps removeObjectForKey:v4];
}

- (void)removeFunctionForKey:(unint64_t)key
{
  functions = self->_functions;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functions removeObjectForKey:v4];
}

- (void)removeFenceForKey:(unint64_t)key
{
  fences = self->_fences;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)fences removeObjectForKey:v4];
}

- (void)removeEventForKey:(unint64_t)key
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeDeviceForKey:(unint64_t)key
{
  devices = self->_devices;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)devices removeObjectForKey:v4];
}

- (void)removeDepthStencilStateForKey:(unint64_t)key
{
  depthStencilStates = self->_depthStencilStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)depthStencilStates removeObjectForKey:v4];
}

- (void)removeCounterSampleBuffer:(unint64_t)buffer
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:buffer];
  [(NSMutableDictionary *)counterSampleBuffers removeObjectForKey:v4];
}

- (void)removeCounterSampleBufferForKey:(unint64_t)key
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)counterSampleBuffers removeObjectForKey:v4];
}

- (void)removeComputePipelineStateForKey:(unint64_t)key
{
  computePipelineStates = self->_computePipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)computePipelineStates removeObjectForKey:v4];
}

- (void)removeComputeCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeIOScratchBufferAllocatorForKey:(unint64_t)key
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioScratchBufferAllocators removeObjectForKey:v4];
}

- (void)removeIOScratchBufferForKey:(unint64_t)key
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioScratchBuffers removeObjectForKey:v4];
}

- (void)removeIOCommandQueueForKey:(unint64_t)key
{
  ioCommandQueues = self->_ioCommandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioCommandQueues removeObjectForKey:v4];
}

- (void)removeIOCommandBufferForKey:(unint64_t)key
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioCommandBuffers removeObjectForKey:v4];
}

- (void)removeCommandQueueForKey:(unint64_t)key
{
  commandQueues = self->_commandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandQueues removeObjectForKey:v4];
}

- (void)removeCommandBufferForKey:(unint64_t)key
{
  commandBuffers = self->_commandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandBuffers removeObjectForKey:v4];
}

- (void)removeBufferForHeapKey:(unint64_t)key
{
  bufferForHeap = self->_bufferForHeap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)bufferForHeap removeObjectForKey:v4];
}

- (void)removeBufferForKey:(unint64_t)key
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeBlitCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeArgumentEncoderForKey:(unint64_t)key
{
  argumentEncoders = self->_argumentEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)argumentEncoders removeObjectForKey:v4];
}

- (void)removeAliasableResourceForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    MakeRootResourceAliasable(v4);
    [(NSMutableDictionary *)self->_resources removeObjectForKey:keyCopy];
  }
}

- (void)presentDrawableWithKey:(unint64_t)key
{
  drawables = self->_drawables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)drawables removeObjectForKey:v4];
}

- (id)allocationForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if (!v7)
  {
    heaps = self->_heaps;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    v7 = [(NSMutableDictionary *)heaps objectForKeyedSubscript:v9];

    if (!v7)
    {
      computePipelineStates = self->_computePipelineStates;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
      v7 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:v11];

      if (!v7)
      {
        renderPipelineStates = self->_renderPipelineStates;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
        v7 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:v13];

        if (!v7)
        {
          unusedResources = self->_unusedResources;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
          LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v15];

          GTMTLReplay_dispatchFailedToGet(key, unusedResources);
          v7 = 0;
        }
      }
    }
  }

  return v7;
}

- (id)bufferForHeapKey:(unint64_t)key
{
  bufferForHeap = self->_bufferForHeap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)bufferForHeap objectForKeyedSubscript:v4];

  return v5;
}

- (id)resourceViewPoolForKey:(unint64_t)key
{
  textureViewPools = self->_textureViewPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPools objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)textureViewPoolForKey:(unint64_t)key
{
  textureViewPools = self->_textureViewPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPools objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4ArchiveForKey:(unint64_t)key
{
  mtl4Archives = self->_mtl4Archives;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4Archives objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4CompilerForKey:(unint64_t)key
{
  mtl4Compilers = self->_mtl4Compilers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4Compilers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4MachineLearningPipelineStateForKey:(unint64_t)key
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)machineLearningPipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4MachineLearningCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F8288])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)mtl4RenderCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F81C0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)mtl4ComputeCommandEncoderForKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7D28])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)mtl4ArgumentTableForKey:(unint64_t)key
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4ArgumentTables objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)logStateForKey:(unint64_t)key
{
  logStates = self->_logStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)logStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4fxTemporalDenoisedScalerForKey:(unint64_t)key
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4fxTemporalScalerForKey:(unint64_t)key
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxTemporalScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4fxSpatialScalerForKey:(unint64_t)key
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxSpatialScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4fxFrameInterpolatorForKey:(unint64_t)key
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxFrameInterpolators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)temporalDenoisedScalerForKey:(unint64_t)key
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)temporalDenoisedScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)temporalScalerForKey:(unint64_t)key
{
  temporalScalers = self->_temporalScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)temporalScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)spatialScalerForKey:(unint64_t)key
{
  spatialScalers = self->_spatialScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)spatialScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)frameInterpolatorForKey:(unint64_t)key
{
  frameInterpolators = self->_frameInterpolators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)frameInterpolators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)functionPrivateArgumentForKey:(unint64_t)key
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionPrivateArguments objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)functionPointerHandleForKey:(unint64_t)key
{
  functionPointerHandles = self->_functionPointerHandles;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionPointerHandles objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)lateEvalEventForKey:(unint64_t)key
{
  events = self->_events;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)events objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7830])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)resourceGroupSPIForKey:(unint64_t)key
{
  resourceGroups = self->_resourceGroups;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resourceGroups objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)intersectionFunctionTableForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F77A8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)accelerationStructureForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7610])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)functionHandleForKey:(unint64_t)key
{
  functionHandles = self->_functionHandles;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionHandles objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)visibleFunctionTableForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7528])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)dynamicLibraryForKey:(unint64_t)key
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)dynamicLibraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)textureForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F5FC0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)tensorForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7438])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)sharedEventHandleForKey:(unint64_t)key
{
  sharedEventHandles = self->_sharedEventHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)sharedEventHandles objectForKeyedSubscript:v4];

  return v5;
}

- (id)sharedEventForKey:(unint64_t)key
{
  events = self->_events;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)events objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860E7E38])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)samplerStateForKey:(unint64_t)key
{
  samplerStates = self->_samplerStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)samplerStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)resourceStateCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F71E0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)resourceForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)renderPipelineStateForKey:(unint64_t)key
{
  renderPipelineStates = self->_renderPipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)renderCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F7040])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)residencySetForKey:(unint64_t)key
{
  residencySets = self->_residencySets;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)residencySets objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)rasterizationRateMapForKey:(unint64_t)key
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)rasterizationRateMaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)pipelineLibraryForKey:(unint64_t)key
{
  pipelineLibraries = self->_pipelineLibraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)pipelineLibraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)objectPayloadBindingForKey:(unint64_t)key
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)objectPayloadBinding objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)parallelRenderCommandEncoderForKey:(unint64_t)key
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)parallelRenderCommandEncoders objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)libraryForKey:(unint64_t)key
{
  libraries = self->_libraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)libraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)layerForKey:(unint64_t)key
{
  layers = self->_layers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)layers objectForKeyedSubscript:v4];

  return v5;
}

- (id)iosurfaceForProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [(NSMutableDictionary *)self->_iosurfaces objectForKeyedSubscript:propertiesCopy];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:propertiesCopy];
    [(NSMutableDictionary *)self->_iosurfaces setObject:v5 forKeyedSubscript:propertiesCopy];
  }

  return v5;
}

- (id)indirectRenderCommandForKey:(unint64_t)key
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)indirectRenderCommands objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)indirectComputeCommandForKey:(unint64_t)key
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)indirectComputeCommands objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)indirectCommandBufferForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F89E8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)heapForKey:(unint64_t)key
{
  heaps = self->_heaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)heaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4BinaryFunctionForKey:(unint64_t)key
{
  mtl4BinaryFunctions = self->_mtl4BinaryFunctions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4BinaryFunctions objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)functionForKey:(unint64_t)key
{
  functions = self->_functions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functions objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)fenceForKey:(unint64_t)key
{
  fences = self->_fences;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)fences objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)eventForKey:(unint64_t)key
{
  events = self->_events;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)events objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)drawableForKey:(unint64_t)key
{
  drawables = self->_drawables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)drawables objectForKeyedSubscript:v4];

  return v5;
}

- (id)depthStencilStateForKey:(unint64_t)key
{
  depthStencilStates = self->_depthStencilStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)depthStencilStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)counterSampleBufferForKey:(unint64_t)key
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)counterSampleBuffers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)computePipelineStateForKey:(unint64_t)key
{
  computePipelineStates = self->_computePipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)computeCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F6690])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)mtl4CommandQueueForKey:(unint64_t)key
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)commandQueueForKey:(unint64_t)key
{
  commandQueues = self->_commandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)ioCommandQueueForKey:(unint64_t)key
{
  ioCommandQueues = self->_ioCommandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)ioCommandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)mtl4CommandAllocatorForKey:(unint64_t)key
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandAllocators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)ioScratchBufferAllocatorForKey:(unint64_t)key
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)ioScratchBufferAllocators objectForKeyedSubscript:v4];

  return v5;
}

- (id)ioScratchBufferForKey:(unint64_t)key
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)ioScratchBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)ioCommandBufferForKey:(unint64_t)key
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)ioCommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)mtl4OpenCommandBufferForKey:(unint64_t)key
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)mtl4OpenCommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)mtl4CommandBufferForKey:(unint64_t)key
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)mtl4CommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)commandBufferForKey:(unint64_t)key
{
  commandBuffers = self->_commandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)commandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)bufferForKey:(unint64_t)key
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F61B0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)blitCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F8660])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (id)argumentEncoderForKey:(unint64_t)key
{
  argumentEncoders = self->_argumentEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)argumentEncoders objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (id)accelerationStructureCommandEncoderForKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandEncoders objectForKeyedSubscript:v6];

  if ([v7 conformsToProtocol:&unk_2860F8868])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    unusedResources = self->_unusedResources;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v9;
}

- (void)setContentRect:(CGRect)rect windowRect:(CGRect)windowRect properties:(id)properties
{
  self->_contentRect = rect;
  self->_windowRect = windowRect;
  objc_storeStrong(&self->_windowProperties, properties);
}

- (CGRect)windowRect
{
  x = self->_windowRect.origin.x;
  y = self->_windowRect.origin.y;
  width = self->_windowRect.size.width;
  height = self->_windowRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setMTL4BinaryFunction:(id)function forKey:(unint64_t)key
{
  mtl4BinaryFunctions = self->_mtl4BinaryFunctions;
  v6 = MEMORY[0x277CCABB0];
  functionCopy = function;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4BinaryFunctions setObject:functionCopy forKeyedSubscript:v8];
}

- (void)setMTL4Archive:(id)archive forKey:(unint64_t)key
{
  mtl4Archives = self->_mtl4Archives;
  v6 = MEMORY[0x277CCABB0];
  archiveCopy = archive;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4Archives setObject:archiveCopy forKeyedSubscript:v8];
}

- (id)tryGetTextureForKey:(unint64_t)key
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
  v5 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v4];

  if ([v5 conformsToProtocol:&unk_2860F5FC0])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setTextureViewPoolEntry:(id)entry forKey:(unint64_t)key
{
  textureViewPoolDeviceObjectMaps = self->_textureViewPoolDeviceObjectMaps;
  v6 = MEMORY[0x277CCABB0];
  entryCopy = entry;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)textureViewPoolDeviceObjectMaps setObject:entryCopy forKeyedSubscript:v8];
}

- (id)textureViewPoolEntryForKey:(unint64_t)key
{
  textureViewPoolDeviceObjectMaps = self->_textureViewPoolDeviceObjectMaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPoolDeviceObjectMaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(key, unusedResources);
  }

  return v7;
}

- (void)setTextureViewPool:(id)pool forKey:(unint64_t)key
{
  textureViewPools = self->_textureViewPools;
  v6 = MEMORY[0x277CCABB0];
  poolCopy = pool;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)textureViewPools setObject:poolCopy forKeyedSubscript:v8];
}

- (void)setMTL4Compiler:(id)compiler forKey:(unint64_t)key
{
  mtl4Compilers = self->_mtl4Compilers;
  v6 = MEMORY[0x277CCABB0];
  compilerCopy = compiler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4Compilers setObject:compilerCopy forKeyedSubscript:v8];
}

- (void)setLogState:(id)state forKey:(unint64_t)key
{
  logStates = self->_logStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)logStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setMTL4FXTemporalDenoisedScaler:(id)scaler forKey:(unint64_t)key
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setMTL4FXFrameInterpolator:(id)interpolator forKey:(unint64_t)key
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v6 = MEMORY[0x277CCABB0];
  interpolatorCopy = interpolator;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxFrameInterpolators setObject:interpolatorCopy forKeyedSubscript:v8];
}

- (void)setMTL4FXTemporalScaler:(id)scaler forKey:(unint64_t)key
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxTemporalScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setMTL4FXSpatialScaler:(id)scaler forKey:(unint64_t)key
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4fxSpatialScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setTemporalDenoisedScaler:(id)scaler forKey:(unint64_t)key
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)temporalDenoisedScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setFrameInterpolator:(id)interpolator forKey:(unint64_t)key
{
  frameInterpolators = self->_frameInterpolators;
  v6 = MEMORY[0x277CCABB0];
  interpolatorCopy = interpolator;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)frameInterpolators setObject:interpolatorCopy forKeyedSubscript:v8];
}

- (void)setTemporalScaler:(id)scaler forKey:(unint64_t)key
{
  temporalScalers = self->_temporalScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)temporalScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setSpatialScaler:(id)scaler forKey:(unint64_t)key
{
  spatialScalers = self->_spatialScalers;
  v6 = MEMORY[0x277CCABB0];
  scalerCopy = scaler;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)spatialScalers setObject:scalerCopy forKeyedSubscript:v8];
}

- (void)setDeadlineProfile:(id)profile forKey:(unint64_t)key
{
  deadlineProfiles = self->_deadlineProfiles;
  v6 = MEMORY[0x277CCABB0];
  profileCopy = profile;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)deadlineProfiles setObject:profileCopy forKeyedSubscript:v8];
}

- (void)setFunctionPrivateArgument:(id)argument forKey:(unint64_t)key
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v6 = MEMORY[0x277CCABB0];
  argumentCopy = argument;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionPrivateArguments setObject:argumentCopy forKeyedSubscript:v8];
}

- (void)setFunctionPointerHandle:(id)handle forKey:(unint64_t)key
{
  functionPointerHandles = self->_functionPointerHandles;
  v6 = MEMORY[0x277CCABB0];
  handleCopy = handle;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionPointerHandles setObject:handleCopy forKeyedSubscript:v8];
}

- (void)setLateEvalEvent:(id)event forKey:(unint64_t)key
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  eventCopy = event;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events setObject:eventCopy forKeyedSubscript:v8];
}

- (void)setResourceGroupSPI:(id)i forKey:(unint64_t)key
{
  resourceGroups = self->_resourceGroups;
  v6 = MEMORY[0x277CCABB0];
  iCopy = i;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resourceGroups setObject:iCopy forKeyedSubscript:v8];
}

- (void)setResidencySet:(id)set forKey:(unint64_t)key
{
  residencySets = self->_residencySets;
  v6 = MEMORY[0x277CCABB0];
  setCopy = set;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)residencySets setObject:setCopy forKeyedSubscript:v8];
}

- (void)setIntersectionFunctionTable:(id)table forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  tableCopy = table;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:tableCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:tableCopy];
}

- (void)setAccelerationStructure:(id)structure forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  structureCopy = structure;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:structureCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:structureCopy];
}

- (void)setAccelerationStructureCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setFunctionHandle:(id)handle forKey:(unint64_t)key
{
  functionHandles = self->_functionHandles;
  v6 = MEMORY[0x277CCABB0];
  handleCopy = handle;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functionHandles setObject:handleCopy forKeyedSubscript:v8];
}

- (void)setVisibleFunctionTable:(id)table forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  tableCopy = table;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:tableCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:tableCopy];
}

- (void)setDynamicLibrary:(id)library forPath:(const char *)path
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = MEMORY[0x277CCACA8];
  libraryCopy = library;
  v8 = [v6 stringWithUTF8String:path];
  [(NSMutableDictionary *)dynamicLibraries setObject:libraryCopy forKeyedSubscript:v8];
}

- (void)setDynamicLibrary:(id)library forKey:(unint64_t)key
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = MEMORY[0x277CCABB0];
  libraryCopy = library;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)dynamicLibraries setObject:libraryCopy forKeyedSubscript:v8];
}

- (void)setTexture:(id)texture forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  textureCopy = texture;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:textureCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:textureCopy];
}

- (void)setTensor:(id)tensor forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  tensorCopy = tensor;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:tensorCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:tensorCopy];
}

- (void)setSharedEventHandle:(id)handle forKey:(unint64_t)key
{
  sharedEventHandles = self->_sharedEventHandles;
  v6 = MEMORY[0x277CCABB0];
  handleCopy = handle;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)sharedEventHandles setObject:handleCopy forKeyedSubscript:v8];
}

- (void)setSharedEvent:(id)event forKey:(unint64_t)key
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  eventCopy = event;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events setObject:eventCopy forKeyedSubscript:v8];
}

- (void)setSamplerState:(id)state forKey:(unint64_t)key
{
  samplerStates = self->_samplerStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)samplerStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setResourceStateCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setRenderPipelineState:(id)state forKey:(unint64_t)key
{
  renderPipelineStates = self->_renderPipelineStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)renderPipelineStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setRenderCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setRasterizationRateMap:(id)map forKey:(unint64_t)key
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v6 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)rasterizationRateMaps setObject:mapCopy forKeyedSubscript:v8];
}

- (void)setPipelineLibrarySPI:(id)i forKey:(unint64_t)key
{
  pipelineLibraries = self->_pipelineLibraries;
  v6 = MEMORY[0x277CCABB0];
  iCopy = i;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)pipelineLibraries setObject:iCopy forKeyedSubscript:v8];
}

- (void)setObjectPayloadBinding:(id)binding forKey:(unint64_t)key
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v6 = MEMORY[0x277CCABB0];
  bindingCopy = binding;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)objectPayloadBinding setObject:bindingCopy forKeyedSubscript:v8];
}

- (void)setParallelRenderCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)parallelRenderCommandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setLibrary:(id)library forKey:(unint64_t)key
{
  libraries = self->_libraries;
  v6 = MEMORY[0x277CCABB0];
  libraryCopy = library;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)libraries setObject:libraryCopy forKeyedSubscript:v8];
}

- (void)setLayer:(id)layer forKey:(unint64_t)key
{
  layers = self->_layers;
  v6 = MEMORY[0x277CCABB0];
  layerCopy = layer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)layers setObject:layerCopy forKeyedSubscript:v8];
}

- (void)setIndirectRenderCommand:(id)command forKey:(unint64_t)key
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v6 = MEMORY[0x277CCABB0];
  commandCopy = command;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)indirectRenderCommands setObject:commandCopy forKeyedSubscript:v8];
}

- (void)setIndirectComputeCommand:(id)command forKey:(unint64_t)key
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v6 = MEMORY[0x277CCABB0];
  commandCopy = command;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)indirectComputeCommands setObject:commandCopy forKeyedSubscript:v8];
}

- (void)setIndirectCommandBuffer:(id)buffer forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:bufferCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:bufferCopy];
}

- (void)setHeap:(id)heap forKey:(unint64_t)key
{
  heaps = self->_heaps;
  v7 = MEMORY[0x277CCABB0];
  heapCopy = heap;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)heaps setObject:heapCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:heapCopy];
}

- (void)setFunction:(id)function forKey:(unint64_t)key
{
  functions = self->_functions;
  v6 = MEMORY[0x277CCABB0];
  functionCopy = function;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)functions setObject:functionCopy forKeyedSubscript:v8];
}

- (void)setFence:(id)fence forKey:(unint64_t)key
{
  fences = self->_fences;
  v6 = MEMORY[0x277CCABB0];
  fenceCopy = fence;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)fences setObject:fenceCopy forKeyedSubscript:v8];
}

- (void)setEvent:(id)event forKey:(unint64_t)key
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  eventCopy = event;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)events setObject:eventCopy forKeyedSubscript:v8];
}

- (void)setDrawable:(id)drawable forKey:(unint64_t)key
{
  drawables = self->_drawables;
  v6 = MEMORY[0x277CCABB0];
  drawableCopy = drawable;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)drawables setObject:drawableCopy forKeyedSubscript:v8];
}

- (void)setDevice:(id)device forKey:(unint64_t)key
{
  devices = self->_devices;
  v6 = MEMORY[0x277CCABB0];
  deviceCopy = device;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:v8];
}

- (void)setDepthStencilState:(id)state forKey:(unint64_t)key
{
  depthStencilStates = self->_depthStencilStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)depthStencilStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setDebugCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setCounterSampleBuffer:(id)buffer forKey:(unint64_t)key
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)counterSampleBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)setComputePipelineState:(id)state forKey:(unint64_t)key
{
  computePipelineStates = self->_computePipelineStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)computePipelineStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setComputeCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setIOScratchBufferAllocator:(id)allocator forKey:(unint64_t)key
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v6 = MEMORY[0x277CCABB0];
  allocatorCopy = allocator;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioScratchBufferAllocators setObject:allocatorCopy forKeyedSubscript:v8];
}

- (void)setIOScratchBuffer:(id)buffer forKey:(unint64_t)key
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioScratchBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)setMTL4MachineLearningPipelineState:(id)state forKey:(unint64_t)key
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)machineLearningPipelineStates setObject:stateCopy forKeyedSubscript:v8];
}

- (void)setMTL4MachineLearningCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setMTL4RenderCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setMTL4ComputeCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setMTL4ArgumentTable:(id)table forKey:(unint64_t)key
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v6 = MEMORY[0x277CCABB0];
  tableCopy = table;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4ArgumentTables setObject:tableCopy forKeyedSubscript:v8];
}

- (void)setMTL4CommandQueue:(id)queue forKey:(unint64_t)key
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v7 = MEMORY[0x277CCABB0];
  queueCopy = queue;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandQueues setObject:queueCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addGlobalResidencySetToMTL4Queue:queueCopy];
}

- (void)setMTL4CommandAllocator:(id)allocator forKey:(unint64_t)key
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v6 = MEMORY[0x277CCABB0];
  allocatorCopy = allocator;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandAllocators setObject:allocatorCopy forKeyedSubscript:v8];
}

- (void)setMTL4OpenCommandBuffer:(id)buffer forKey:(unint64_t)key
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4OpenCommandBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)setMTL4CommandBuffer:(id)buffer forKey:(unint64_t)key
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)mtl4CommandBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)addGlobalResidencySetToMTL4Queue:(id)queue
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [queue addResidencySet:self->_globalResourceResidencySet];
  }
}

- (void)setIOCommandBuffer:(id)buffer forKey:(unint64_t)key
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioCommandBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)setIOCommandQueue:(id)queue forKey:(unint64_t)key
{
  ioCommandQueues = self->_ioCommandQueues;
  v6 = MEMORY[0x277CCABB0];
  queueCopy = queue;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)ioCommandQueues setObject:queueCopy forKeyedSubscript:v8];
}

- (void)setCommandQueue:(id)queue forKey:(unint64_t)key
{
  commandQueues = self->_commandQueues;
  v7 = MEMORY[0x277CCABB0];
  queueCopy = queue;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandQueues setObject:queueCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addGlobalResidencySetToQueue:queueCopy];
}

- (void)setCommandBuffer:(id)buffer forKey:(unint64_t)key
{
  commandBuffers = self->_commandBuffers;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandBuffers setObject:bufferCopy forKeyedSubscript:v8];
}

- (void)setBuffer:(id)buffer forHeapKey:(unint64_t)key
{
  bufferForHeap = self->_bufferForHeap;
  v7 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)bufferForHeap setObject:bufferCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:bufferCopy];
}

- (void)setBuffer:(id)buffer forKey:(unint64_t)key
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v7 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)resources setObject:bufferCopy forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:bufferCopy];
}

- (void)setBlitCommandEncoder:(id)encoder forKey:(unint64_t)key
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)commandEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)setArgumentEncoder:(id)encoder forKey:(unint64_t)key
{
  argumentEncoders = self->_argumentEncoders;
  v6 = MEMORY[0x277CCABB0];
  encoderCopy = encoder;
  v8 = [v6 numberWithUnsignedLongLong:key];
  [(NSMutableDictionary *)argumentEncoders setObject:encoderCopy forKeyedSubscript:v8];
}

- (void)addGlobalResidencySetToQueue:(id)queue
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [queue addResidencySet:self->_globalResourceResidencySet];
  }
}

- (void)addToGlobalResidencySet:(id)set
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [(MTLResidencySet *)self->_globalResourceResidencySet addAllocation:set];
    globalResourceResidencySet = self->_globalResourceResidencySet;

    [(MTLResidencySet *)globalResourceResidencySet commit];
  }
}

- (void)setLayerClass:(Class)class
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_layerClass != class)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_layers, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_layers;
    v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_layers objectForKeyedSubscript:v10];
          v12 = objc_alloc_init(class);
          device = [v11 device];
          [v12 setDevice:device];

          [v12 setColorspace:{objc_msgSend(v11, "colorspace")}];
          [v12 setPixelFormat:objc_msgSend(v11, "pixelFormat")];
          [v12 setFramebufferOnly:{objc_msgSend(v11, "framebufferOnly")}];
          [v11 drawableSize];
          [v12 setDrawableSize:?];
          [v11 bounds];
          [v12 setBounds:?];
          [v11 contentsScale];
          [v12 setContentsScale:?];
          if (v11)
          {
            [v11 transform];
          }

          else
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
          }

          v17[4] = v22;
          v17[5] = v23;
          v17[6] = v24;
          v17[7] = v25;
          v17[0] = v18;
          v17[1] = v19;
          v17[2] = v20;
          v17[3] = v21;
          [v12 setTransform:v17];
          [v11 anchorPoint];
          [v12 setAnchorPoint:?];
          [(NSMutableDictionary *)v5 setObject:v12 forKeyedSubscript:v10];
        }

        v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    layers = self->_layers;
    self->_layers = v5;

    self->_layerClass = class;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeResourcesForKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = objc_autoreleasePoolPush();
  null = [MEMORY[0x277CBEB68] null];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSMutableDictionary *)self->_resources objectsForKeys:keysCopy notFoundMarker:null, 0];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12 != null)
        {
          MakeRootResourceAliasable(v12);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_argumentEncoders removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_commandQueues removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_ioCommandQueues removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_computePipelineStates removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_counterSampleBuffers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_depthStencilStates removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_drawables removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_events removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_fences removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_functions removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_heaps removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_indirectComputeCommands removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_indirectRenderCommands removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_iosurfaces removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_layers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_libraries removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_dynamicLibraries removeObjectForKey:keysCopy];
  [(NSMutableDictionary *)self->_machineLearningPipelineStates removeObjectForKey:keysCopy];
  [(NSMutableDictionary *)self->_motionEstimationPipelines removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_objectPayloadBinding removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_pipelineLibraries removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_rasterizationRateMaps removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_renderPipelineStates removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_residencySets removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_resourceGroups removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_resources removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_samplerStates removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_functionHandles removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_functionPointerHandles removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_functionPrivateArguments removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_deadlineProfiles removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_frameInterpolators removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_spatialScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_temporalScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_temporalDenoisedScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_logStates removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4CommandAllocators removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4CommandQueues removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4ArgumentTables removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4BinaryFunctions removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4Compilers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4fxFrameInterpolators removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4fxSpatialScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4fxTemporalScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mtl4fxTemporalDenoisedScalers removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_textureViewPools removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_textureViewPoolDeviceObjectMaps removeObjectsForKeys:keysCopy];
  [(NSMutableDictionary *)self->_mpsExternalPluginBases removeObjectsForKeys:keysCopy];

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

- (GTMTLReplayObjectMap)initWithDevice:(id)device
{
  deviceCopy = device;
  v135.receiver = self;
  v135.super_class = GTMTLReplayObjectMap;
  v6 = [(GTMTLReplayObjectMap *)&v135 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultDevice, device);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    argumentEncoders = v7->_argumentEncoders;
    v7->_argumentEncoders = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commandBuffers = v7->_commandBuffers;
    v7->_commandBuffers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commandEncoders = v7->_commandEncoders;
    v7->_commandEncoders = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ioCommandQueues = v7->_ioCommandQueues;
    v7->_ioCommandQueues = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ioCommandBuffers = v7->_ioCommandBuffers;
    v7->_ioCommandBuffers = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ioScratchBuffers = v7->_ioScratchBuffers;
    v7->_ioScratchBuffers = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ioScratchBufferAllocators = v7->_ioScratchBufferAllocators;
    v7->_ioScratchBufferAllocators = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commandQueues = v7->_commandQueues;
    v7->_commandQueues = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    computePipelineStates = v7->_computePipelineStates;
    v7->_computePipelineStates = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counterSampleBuffers = v7->_counterSampleBuffers;
    v7->_counterSampleBuffers = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    depthStencilStates = v7->_depthStencilStates;
    v7->_depthStencilStates = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devices = v7->_devices;
    v7->_devices = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    drawables = v7->_drawables;
    v7->_drawables = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    events = v7->_events;
    v7->_events = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fences = v7->_fences;
    v7->_fences = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    functions = v7->_functions;
    v7->_functions = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    heaps = v7->_heaps;
    v7->_heaps = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indirectComputeCommands = v7->_indirectComputeCommands;
    v7->_indirectComputeCommands = v42;

    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indirectRenderCommands = v7->_indirectRenderCommands;
    v7->_indirectRenderCommands = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    iosurfaces = v7->_iosurfaces;
    v7->_iosurfaces = v46;

    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    layers = v7->_layers;
    v7->_layers = v48;

    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    libraries = v7->_libraries;
    v7->_libraries = v50;

    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dynamicLibraries = v7->_dynamicLibraries;
    v7->_dynamicLibraries = v52;

    v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
    machineLearningPipelineStates = v7->_machineLearningPipelineStates;
    v7->_machineLearningPipelineStates = v54;

    v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
    motionEstimationPipelines = v7->_motionEstimationPipelines;
    v7->_motionEstimationPipelines = v56;

    v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parallelRenderCommandEncoders = v7->_parallelRenderCommandEncoders;
    v7->_parallelRenderCommandEncoders = v58;

    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectPayloadBinding = v7->_objectPayloadBinding;
    v7->_objectPayloadBinding = v60;

    v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pipelineLibraries = v7->_pipelineLibraries;
    v7->_pipelineLibraries = v62;

    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rasterizationRateMaps = v7->_rasterizationRateMaps;
    v7->_rasterizationRateMaps = v64;

    v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
    renderPipelineStates = v7->_renderPipelineStates;
    v7->_renderPipelineStates = v66;

    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    residencySets = v7->_residencySets;
    v7->_residencySets = v68;

    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceGroups = v7->_resourceGroups;
    v7->_resourceGroups = v70;

    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resources = v7->_resources;
    v7->_resources = v72;

    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    samplerStates = v7->_samplerStates;
    v7->_samplerStates = v74;

    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedEventHandles = v7->_sharedEventHandles;
    v7->_sharedEventHandles = v76;

    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
    functionHandles = v7->_functionHandles;
    v7->_functionHandles = v78;

    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
    functionPointerHandles = v7->_functionPointerHandles;
    v7->_functionPointerHandles = v80;

    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
    functionPrivateArguments = v7->_functionPrivateArguments;
    v7->_functionPrivateArguments = v82;

    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deadlineProfiles = v7->_deadlineProfiles;
    v7->_deadlineProfiles = v84;

    v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
    frameInterpolators = v7->_frameInterpolators;
    v7->_frameInterpolators = v86;

    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    spatialScalers = v7->_spatialScalers;
    v7->_spatialScalers = v88;

    v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
    temporalScalers = v7->_temporalScalers;
    v7->_temporalScalers = v90;

    v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
    temporalDenoisedScalers = v7->_temporalDenoisedScalers;
    v7->_temporalDenoisedScalers = v92;

    v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
    logStates = v7->_logStates;
    v7->_logStates = v94;

    v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mpsExternalPluginBases = v7->_mpsExternalPluginBases;
    v7->_mpsExternalPluginBases = v96;

    v7->_layerClass = objc_opt_class();
    v98 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unusedResources = v7->_unusedResources;
    v7->_unusedResources = v98;

    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4CommandBuffers = v7->_mtl4CommandBuffers;
    v7->_mtl4CommandBuffers = v100;

    v102 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4OpenCommandBuffers = v7->_mtl4OpenCommandBuffers;
    v7->_mtl4OpenCommandBuffers = v102;

    v104 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4CommandAllocators = v7->_mtl4CommandAllocators;
    v7->_mtl4CommandAllocators = v104;

    v106 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4CommandQueues = v7->_mtl4CommandQueues;
    v7->_mtl4CommandQueues = v106;

    v108 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4ArgumentTables = v7->_mtl4ArgumentTables;
    v7->_mtl4ArgumentTables = v108;

    v110 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4CommandEncoders = v7->_mtl4CommandEncoders;
    v7->_mtl4CommandEncoders = v110;

    v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4BinaryFunctions = v7->_mtl4BinaryFunctions;
    v7->_mtl4BinaryFunctions = v112;

    v114 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4Compilers = v7->_mtl4Compilers;
    v7->_mtl4Compilers = v114;

    v116 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4Archives = v7->_mtl4Archives;
    v7->_mtl4Archives = v116;

    v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4fxFrameInterpolators = v7->_mtl4fxFrameInterpolators;
    v7->_mtl4fxFrameInterpolators = v118;

    v120 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4fxSpatialScalers = v7->_mtl4fxSpatialScalers;
    v7->_mtl4fxSpatialScalers = v120;

    v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4fxTemporalScalers = v7->_mtl4fxTemporalScalers;
    v7->_mtl4fxTemporalScalers = v122;

    v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mtl4fxTemporalDenoisedScalers = v7->_mtl4fxTemporalDenoisedScalers;
    v7->_mtl4fxTemporalDenoisedScalers = v124;

    v126 = objc_alloc_init(MEMORY[0x277CBEB38]);
    textureViewPools = v7->_textureViewPools;
    v7->_textureViewPools = v126;

    v128 = objc_alloc_init(MEMORY[0x277CBEB38]);
    textureViewPoolDeviceObjectMaps = v7->_textureViewPoolDeviceObjectMaps;
    v7->_textureViewPoolDeviceObjectMaps = v128;

    v130 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bufferForHeap = v7->_bufferForHeap;
    v7->_bufferForHeap = v130;

    v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
    encodedCommandBuffers = v7->_encodedCommandBuffers;
    v7->_encodedCommandBuffers = v132;
  }

  return v7;
}

@end