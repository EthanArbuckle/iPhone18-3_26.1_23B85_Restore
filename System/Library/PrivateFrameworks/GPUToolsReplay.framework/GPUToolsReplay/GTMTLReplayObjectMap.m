@interface GTMTLReplayObjectMap
- (CGRect)contentRect;
- (CGRect)windowRect;
- (GTMTLReplayObjectMap)initWithDevice:(id)a3;
- (id)accelerationStructureCommandEncoderForKey:(unint64_t)a3;
- (id)accelerationStructureForKey:(unint64_t)a3;
- (id)allocationForKey:(unint64_t)a3;
- (id)argumentEncoderForKey:(unint64_t)a3;
- (id)blitCommandEncoderForKey:(unint64_t)a3;
- (id)bufferForHeapKey:(unint64_t)a3;
- (id)bufferForKey:(unint64_t)a3;
- (id)commandBufferForKey:(unint64_t)a3;
- (id)commandQueueForKey:(unint64_t)a3;
- (id)computeCommandEncoderForKey:(unint64_t)a3;
- (id)computePipelineDescriptorMap;
- (id)computePipelineStateForKey:(unint64_t)a3;
- (id)counterSampleBufferForKey:(unint64_t)a3;
- (id)depthStencilStateForKey:(unint64_t)a3;
- (id)drawableForKey:(unint64_t)a3;
- (id)dynamicLibraryForKey:(unint64_t)a3;
- (id)encoderForKey:(unint64_t)a3 ofType:(BOOL)a4;
- (id)eventForKey:(unint64_t)a3;
- (id)fenceForKey:(unint64_t)a3;
- (id)frameInterpolatorForKey:(unint64_t)a3;
- (id)functionForKey:(unint64_t)a3;
- (id)functionHandleForKey:(unint64_t)a3;
- (id)functionPointerHandleForKey:(unint64_t)a3;
- (id)functionPrivateArgumentForKey:(unint64_t)a3;
- (id)heapForKey:(unint64_t)a3;
- (id)indirectCommandBufferForKey:(unint64_t)a3;
- (id)indirectComputeCommandForKey:(unint64_t)a3;
- (id)indirectRenderCommandForKey:(unint64_t)a3;
- (id)intersectionFunctionTableForKey:(unint64_t)a3;
- (id)ioCommandBufferForKey:(unint64_t)a3;
- (id)ioCommandQueueForKey:(unint64_t)a3;
- (id)ioScratchBufferAllocatorForKey:(unint64_t)a3;
- (id)ioScratchBufferForKey:(unint64_t)a3;
- (id)iosurfaceForProperties:(id)a3;
- (id)lateEvalEventForKey:(unint64_t)a3;
- (id)layerForKey:(unint64_t)a3;
- (id)libraryForKey:(unint64_t)a3;
- (id)logStateForKey:(unint64_t)a3;
- (id)mtl4ArchiveForKey:(unint64_t)a3;
- (id)mtl4ArgumentTableForKey:(unint64_t)a3;
- (id)mtl4BinaryFunctionForKey:(unint64_t)a3;
- (id)mtl4CommandAllocatorForKey:(unint64_t)a3;
- (id)mtl4CommandBufferForKey:(unint64_t)a3;
- (id)mtl4CommandQueueForKey:(unint64_t)a3;
- (id)mtl4CompilerForKey:(unint64_t)a3;
- (id)mtl4ComputeCommandEncoderForKey:(unint64_t)a3;
- (id)mtl4MachineLearningCommandEncoderForKey:(unint64_t)a3;
- (id)mtl4MachineLearningPipelineStateForKey:(unint64_t)a3;
- (id)mtl4OpenCommandBufferForKey:(unint64_t)a3;
- (id)mtl4RenderCommandEncoderForKey:(unint64_t)a3;
- (id)mtl4fxFrameInterpolatorForKey:(unint64_t)a3;
- (id)mtl4fxSpatialScalerForKey:(unint64_t)a3;
- (id)mtl4fxTemporalDenoisedScalerForKey:(unint64_t)a3;
- (id)mtl4fxTemporalScalerForKey:(unint64_t)a3;
- (id)objectPayloadBindingForKey:(unint64_t)a3;
- (id)parallelRenderCommandEncoderForKey:(unint64_t)a3;
- (id)pipelineLibraryForKey:(unint64_t)a3;
- (id)rasterizationRateMapForKey:(unint64_t)a3;
- (id)renderCommandEncoderForKey:(unint64_t)a3;
- (id)renderPassDescriptorMapWithMemorylessSubstitutes:(id)a3;
- (id)renderPipelineDescriptorMap;
- (id)renderPipelineStateForKey:(unint64_t)a3;
- (id)residencySetForKey:(unint64_t)a3;
- (id)resourceForKey:(unint64_t)a3;
- (id)resourceGroupSPIForKey:(unint64_t)a3;
- (id)resourceStateCommandEncoderForKey:(unint64_t)a3;
- (id)resourceViewPoolForKey:(unint64_t)a3;
- (id)restoreIndirectCommandBufferDataMap;
- (id)samplerStateForKey:(unint64_t)a3;
- (id)sharedEventForKey:(unint64_t)a3;
- (id)sharedEventHandleForKey:(unint64_t)a3;
- (id)spatialScalerForKey:(unint64_t)a3;
- (id)temporalDenoisedScalerForKey:(unint64_t)a3;
- (id)temporalScalerForKey:(unint64_t)a3;
- (id)tensorForKey:(unint64_t)a3;
- (id)textureForKey:(unint64_t)a3;
- (id)textureViewPoolEntryForKey:(unint64_t)a3;
- (id)textureViewPoolForKey:(unint64_t)a3;
- (id)tryGetTextureForKey:(unint64_t)a3;
- (id)unusedResourceKeys;
- (id)visibleFunctionTableForKey:(unint64_t)a3;
- (unsigned)globalTraceIdForEncoder:(unint64_t)a3 ofType:(BOOL)a4;
- (void)addGlobalResidencySetToMTL4Queue:(id)a3;
- (void)addGlobalResidencySetToQueue:(id)a3;
- (void)addToGlobalResidencySet:(id)a3;
- (void)addUnusedResourceKey:(unint64_t)a3;
- (void)commitCommandBuffers:(GTMTLCoreSync *)a3;
- (void)presentDrawableWithKey:(unint64_t)a3;
- (void)removeAccelerationStructureCommandEncoderForKey:(unint64_t)a3;
- (void)removeAccelerationStructureForKey:(unint64_t)a3;
- (void)removeAliasableResourceForKey:(id)a3;
- (void)removeArgumentEncoderForKey:(unint64_t)a3;
- (void)removeBlitCommandEncoderForKey:(unint64_t)a3;
- (void)removeBufferForHeapKey:(unint64_t)a3;
- (void)removeBufferForKey:(unint64_t)a3;
- (void)removeCommandBufferForKey:(unint64_t)a3;
- (void)removeCommandQueueForKey:(unint64_t)a3;
- (void)removeComputeCommandEncoderForKey:(unint64_t)a3;
- (void)removeComputePipelineStateForKey:(unint64_t)a3;
- (void)removeCounterSampleBuffer:(unint64_t)a3;
- (void)removeCounterSampleBufferForKey:(unint64_t)a3;
- (void)removeDeadlineProfileForKey:(unint64_t)a3;
- (void)removeDepthStencilStateForKey:(unint64_t)a3;
- (void)removeDeviceForKey:(unint64_t)a3;
- (void)removeDynamicLibraryForKey:(unint64_t)a3;
- (void)removeEventForKey:(unint64_t)a3;
- (void)removeFenceForKey:(unint64_t)a3;
- (void)removeFrameInterpolatorForKey:(unint64_t)a3;
- (void)removeFunctionForKey:(unint64_t)a3;
- (void)removeFunctionHandleForKey:(unint64_t)a3;
- (void)removeFunctionPointerHandleForKey:(unint64_t)a3;
- (void)removeFunctionPrivateArgumentForKey:(unint64_t)a3;
- (void)removeHeapForKey:(unint64_t)a3;
- (void)removeIOCommandBufferForKey:(unint64_t)a3;
- (void)removeIOCommandQueueForKey:(unint64_t)a3;
- (void)removeIOScratchBufferAllocatorForKey:(unint64_t)a3;
- (void)removeIOScratchBufferForKey:(unint64_t)a3;
- (void)removeIndirectCommandBufferForKey:(unint64_t)a3;
- (void)removeIndirectComputeCommandForKey:(unint64_t)a3;
- (void)removeIndirectRenderCommandForKey:(unint64_t)a3;
- (void)removeIntersectionFunctionTableForKey:(unint64_t)a3;
- (void)removeLateEvalEventForKey:(unint64_t)a3;
- (void)removeLibraryForKey:(unint64_t)a3;
- (void)removeLogStateForKey:(unint64_t)a3;
- (void)removeMTL4ArgumentTableForKey:(unint64_t)a3;
- (void)removeMTL4CommandAllocatorForKey:(unint64_t)a3;
- (void)removeMTL4CommandBufferForKey:(unint64_t)a3;
- (void)removeMTL4CommandQueueForKey:(unint64_t)a3;
- (void)removeMTL4CompilerForKey:(unint64_t)a3;
- (void)removeMTL4ComputeCommandEncoderForKey:(unint64_t)a3;
- (void)removeMTL4FXFrameInterpolatorForKey:(unint64_t)a3;
- (void)removeMTL4FXSpatialScalerForKey:(unint64_t)a3;
- (void)removeMTL4FXTemporalDenoisedScalerForKey:(unint64_t)a3;
- (void)removeMTL4FXTemporalScalerForKey:(unint64_t)a3;
- (void)removeMTL4MachineLearningCommandEncoderForKey:(unint64_t)a3;
- (void)removeMTL4MachineLearningPipelineStateForKey:(unint64_t)a3;
- (void)removeMTL4OpenCommandBufferForKey:(unint64_t)a3;
- (void)removeMTL4RenderCommandEncoderForKey:(unint64_t)a3;
- (void)removeMotionEstimationPipelineForKey:(unint64_t)a3;
- (void)removeObjectPayloadBindingForKey:(unint64_t)a3;
- (void)removeParallelRenderCommandEncoderForKey:(unint64_t)a3;
- (void)removePipelineLibraryForKey:(unint64_t)a3;
- (void)removeRasterizationRateMapForKey:(unint64_t)a3;
- (void)removeRenderCommandEncoderForKey:(unint64_t)a3;
- (void)removeRenderPipelineStateForKey:(unint64_t)a3;
- (void)removeResidencySetForKey:(unint64_t)a3;
- (void)removeResourceGroupForKey:(unint64_t)a3;
- (void)removeResourceGroupSPIForKey:(unint64_t)a3;
- (void)removeResourceStateCommandEncoderForKey:(unint64_t)a3;
- (void)removeResourcesForKeys:(id)a3;
- (void)removeSamplerStateForKey:(unint64_t)a3;
- (void)removeSharedEventForKey:(unint64_t)a3;
- (void)removeSpatialScalerForKey:(unint64_t)a3;
- (void)removeTemporalDenoisedScalerForKey:(unint64_t)a3;
- (void)removeTemporalScalerForKey:(unint64_t)a3;
- (void)removeTensorForKey:(unint64_t)a3;
- (void)removeTextureForKey:(unint64_t)a3;
- (void)removeTextureViewPoolForKey:(unint64_t)a3;
- (void)removeVideoCommandEncoderForKey:(unint64_t)a3;
- (void)removeVisibleFunctionHandleForKey:(unint64_t)a3;
- (void)removeVisibleFunctionTableForKey:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 forKey:(unint64_t)a4;
- (void)setAccelerationStructureCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setArgumentEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setBlitCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setBuffer:(id)a3 forHeapKey:(unint64_t)a4;
- (void)setBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setCommandBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setCommandQueue:(id)a3 forKey:(unint64_t)a4;
- (void)setComputeCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setComputePipelineState:(id)a3 forKey:(unint64_t)a4;
- (void)setContentRect:(CGRect)a3 windowRect:(CGRect)a4 properties:(id)a5;
- (void)setCounterSampleBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setDeadlineProfile:(id)a3 forKey:(unint64_t)a4;
- (void)setDebugCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setDepthStencilState:(id)a3 forKey:(unint64_t)a4;
- (void)setDevice:(id)a3 forKey:(unint64_t)a4;
- (void)setDrawable:(id)a3 forKey:(unint64_t)a4;
- (void)setDynamicLibrary:(id)a3 forKey:(unint64_t)a4;
- (void)setDynamicLibrary:(id)a3 forPath:(const char *)a4;
- (void)setEvent:(id)a3 forKey:(unint64_t)a4;
- (void)setFence:(id)a3 forKey:(unint64_t)a4;
- (void)setFrameInterpolator:(id)a3 forKey:(unint64_t)a4;
- (void)setFunction:(id)a3 forKey:(unint64_t)a4;
- (void)setFunctionHandle:(id)a3 forKey:(unint64_t)a4;
- (void)setFunctionPointerHandle:(id)a3 forKey:(unint64_t)a4;
- (void)setFunctionPrivateArgument:(id)a3 forKey:(unint64_t)a4;
- (void)setHeap:(id)a3 forKey:(unint64_t)a4;
- (void)setIOCommandBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setIOCommandQueue:(id)a3 forKey:(unint64_t)a4;
- (void)setIOScratchBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setIOScratchBufferAllocator:(id)a3 forKey:(unint64_t)a4;
- (void)setIndirectCommandBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setIndirectComputeCommand:(id)a3 forKey:(unint64_t)a4;
- (void)setIndirectRenderCommand:(id)a3 forKey:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 forKey:(unint64_t)a4;
- (void)setLateEvalEvent:(id)a3 forKey:(unint64_t)a4;
- (void)setLayer:(id)a3 forKey:(unint64_t)a4;
- (void)setLayerClass:(Class)a3;
- (void)setLibrary:(id)a3 forKey:(unint64_t)a4;
- (void)setLogState:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4Archive:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4ArgumentTable:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4BinaryFunction:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4CommandAllocator:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4CommandBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4CommandQueue:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4Compiler:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4ComputeCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4FXFrameInterpolator:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4FXSpatialScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4FXTemporalDenoisedScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4FXTemporalScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4MachineLearningCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4MachineLearningPipelineState:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4OpenCommandBuffer:(id)a3 forKey:(unint64_t)a4;
- (void)setMTL4RenderCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setObjectPayloadBinding:(id)a3 forKey:(unint64_t)a4;
- (void)setParallelRenderCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setPipelineLibrarySPI:(id)a3 forKey:(unint64_t)a4;
- (void)setRasterizationRateMap:(id)a3 forKey:(unint64_t)a4;
- (void)setRenderCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3 forKey:(unint64_t)a4;
- (void)setResidencySet:(id)a3 forKey:(unint64_t)a4;
- (void)setResourceGroupSPI:(id)a3 forKey:(unint64_t)a4;
- (void)setResourceStateCommandEncoder:(id)a3 forKey:(unint64_t)a4;
- (void)setSamplerState:(id)a3 forKey:(unint64_t)a4;
- (void)setSharedEvent:(id)a3 forKey:(unint64_t)a4;
- (void)setSharedEventHandle:(id)a3 forKey:(unint64_t)a4;
- (void)setSpatialScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setTemporalDenoisedScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setTemporalScaler:(id)a3 forKey:(unint64_t)a4;
- (void)setTensor:(id)a3 forKey:(unint64_t)a4;
- (void)setTexture:(id)a3 forKey:(unint64_t)a4;
- (void)setTextureViewPool:(id)a3 forKey:(unint64_t)a4;
- (void)setTextureViewPoolEntry:(id)a3 forKey:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 forKey:(unint64_t)a4;
@end

@implementation GTMTLReplayObjectMap

- (id)unusedResourceKeys
{
  v2 = [(NSMutableSet *)self->_unusedResources copy];

  return v2;
}

- (void)addUnusedResourceKey:(unint64_t)a3
{
  unusedResources = self->_unusedResources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableSet *)unusedResources addObject:v4];
}

- (void)commitCommandBuffers:(GTMTLCoreSync *)a3
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

  v53 = a3;

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
    v38 = v53;
    if (v53)
    {
      v39 = v53->var0;
      v40 = atomic_load(&v53->var1);
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

- (id)encoderForKey:(unint64_t)a3 ofType:(BOOL)a4
{
  v4 = 24;
  if (a4)
  {
    v4 = 208;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
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

- (unsigned)globalTraceIdForEncoder:(unint64_t)a3 ofType:(BOOL)a4
{
  v4 = 24;
  if (a4)
  {
    v4 = 208;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 globalTraceObjectID];

  return v8;
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

- (id)renderPassDescriptorMapWithMemorylessSubstitutes:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_resources mutableCopy];
  if ([v4 count])
  {
    [v5 addEntriesFromDictionary:v4];
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

- (void)removeMTL4CompilerForKey:(unint64_t)a3
{
  mtl4Compilers = self->_mtl4Compilers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4Compilers removeObjectForKey:v4];
}

- (void)removeMTL4MachineLearningPipelineStateForKey:(unint64_t)a3
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)machineLearningPipelineStates removeObjectForKey:v4];
}

- (void)removeMTL4MachineLearningCommandEncoderForKey:(unint64_t)a3
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeTextureViewPoolForKey:(unint64_t)a3
{
  textureViewPools = self->_textureViewPools;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)textureViewPools removeObjectForKey:v4];
}

- (void)removeMTL4RenderCommandEncoderForKey:(unint64_t)a3
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeMTL4ComputeCommandEncoderForKey:(unint64_t)a3
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandEncoders removeObjectForKey:v4];
}

- (void)removeMTL4ArgumentTableForKey:(unint64_t)a3
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4ArgumentTables removeObjectForKey:v4];
}

- (void)removeMTL4CommandQueueForKey:(unint64_t)a3
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandQueues removeObjectForKey:v4];
}

- (void)removeMTL4CommandAllocatorForKey:(unint64_t)a3
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandAllocators removeObjectForKey:v4];
}

- (void)removeMTL4OpenCommandBufferForKey:(unint64_t)a3
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4OpenCommandBuffers removeObjectForKey:v4];
}

- (void)removeMTL4CommandBufferForKey:(unint64_t)a3
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4CommandBuffers removeObjectForKey:v4];
}

- (void)removeLogStateForKey:(unint64_t)a3
{
  logStates = self->_logStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)logStates removeObjectForKey:v4];
}

- (void)removeMTL4FXTemporalDenoisedScalerForKey:(unint64_t)a3
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXTemporalScalerForKey:(unint64_t)a3
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4fxTemporalScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXSpatialScalerForKey:(unint64_t)a3
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4fxSpatialScalers removeObjectForKey:v4];
}

- (void)removeMTL4FXFrameInterpolatorForKey:(unint64_t)a3
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)mtl4fxFrameInterpolators removeObjectForKey:v4];
}

- (void)removeTemporalDenoisedScalerForKey:(unint64_t)a3
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)temporalDenoisedScalers removeObjectForKey:v4];
}

- (void)removeTemporalScalerForKey:(unint64_t)a3
{
  temporalScalers = self->_temporalScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)temporalScalers removeObjectForKey:v4];
}

- (void)removeSpatialScalerForKey:(unint64_t)a3
{
  spatialScalers = self->_spatialScalers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)spatialScalers removeObjectForKey:v4];
}

- (void)removeFrameInterpolatorForKey:(unint64_t)a3
{
  frameInterpolators = self->_frameInterpolators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)frameInterpolators removeObjectForKey:v4];
}

- (void)removeDeadlineProfileForKey:(unint64_t)a3
{
  deadlineProfiles = self->_deadlineProfiles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)deadlineProfiles removeObjectForKey:v4];
}

- (void)removeVisibleFunctionTableForKey:(unint64_t)a3
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeFunctionPrivateArgumentForKey:(unint64_t)a3
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)functionPrivateArguments removeObjectForKey:v4];
}

- (void)removeFunctionPointerHandleForKey:(unint64_t)a3
{
  functionPointerHandles = self->_functionPointerHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)functionPointerHandles removeObjectForKey:v4];
}

- (void)removeLateEvalEventForKey:(unint64_t)a3
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeResourceGroupSPIForKey:(unint64_t)a3
{
  resourceGroups = self->_resourceGroups;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resourceGroups removeObjectForKey:v4];
}

- (void)removeIntersectionFunctionTableForKey:(unint64_t)a3
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeAccelerationStructureCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeAccelerationStructureForKey:(unint64_t)a3
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeFunctionHandleForKey:(unint64_t)a3
{
  functionHandles = self->_functionHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)functionHandles removeObjectForKey:v4];
}

- (void)removeVisibleFunctionHandleForKey:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeDynamicLibraryForKey:(unint64_t)a3
{
  dynamicLibraries = self->_dynamicLibraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)dynamicLibraries removeObjectForKey:v4];
}

- (void)removeVideoCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeTextureForKey:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeTensorForKey:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeSharedEventForKey:(unint64_t)a3
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeSamplerStateForKey:(unint64_t)a3
{
  samplerStates = self->_samplerStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)samplerStates removeObjectForKey:v4];
}

- (void)removeResourceStateCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeResourceGroupForKey:(unint64_t)a3
{
  resourceGroups = self->_resourceGroups;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resourceGroups removeObjectForKey:v4];
}

- (void)removeResidencySetForKey:(unint64_t)a3
{
  residencySets = self->_residencySets;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)residencySets removeObjectForKey:v4];
}

- (void)removeRenderPipelineStateForKey:(unint64_t)a3
{
  renderPipelineStates = self->_renderPipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)renderPipelineStates removeObjectForKey:v4];
}

- (void)removeRenderCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeRasterizationRateMapForKey:(unint64_t)a3
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)rasterizationRateMaps removeObjectForKey:v4];
}

- (void)removePipelineLibraryForKey:(unint64_t)a3
{
  pipelineLibraries = self->_pipelineLibraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)pipelineLibraries removeObjectForKey:v4];
}

- (void)removeObjectPayloadBindingForKey:(unint64_t)a3
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)objectPayloadBinding removeObjectForKey:v4];
}

- (void)removeParallelRenderCommandEncoderForKey:(unint64_t)a3
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)parallelRenderCommandEncoders removeObjectForKey:v4];
}

- (void)removeMotionEstimationPipelineForKey:(unint64_t)a3
{
  motionEstimationPipelines = self->_motionEstimationPipelines;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)motionEstimationPipelines removeObjectForKey:v4];
}

- (void)removeLibraryForKey:(unint64_t)a3
{
  libraries = self->_libraries;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)libraries removeObjectForKey:v4];
}

- (void)removeIndirectRenderCommandForKey:(unint64_t)a3
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)indirectRenderCommands removeObjectForKey:v4];
}

- (void)removeIndirectComputeCommandForKey:(unint64_t)a3
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)indirectComputeCommands removeObjectForKey:v4];
}

- (void)removeIndirectCommandBufferForKey:(unint64_t)a3
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)resources removeObjectForKey:v4];
}

- (void)removeHeapForKey:(unint64_t)a3
{
  heaps = self->_heaps;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)heaps removeObjectForKey:v4];
}

- (void)removeFunctionForKey:(unint64_t)a3
{
  functions = self->_functions;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)functions removeObjectForKey:v4];
}

- (void)removeFenceForKey:(unint64_t)a3
{
  fences = self->_fences;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)fences removeObjectForKey:v4];
}

- (void)removeEventForKey:(unint64_t)a3
{
  events = self->_events;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)events removeObjectForKey:v4];
}

- (void)removeDeviceForKey:(unint64_t)a3
{
  devices = self->_devices;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)devices removeObjectForKey:v4];
}

- (void)removeDepthStencilStateForKey:(unint64_t)a3
{
  depthStencilStates = self->_depthStencilStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)depthStencilStates removeObjectForKey:v4];
}

- (void)removeCounterSampleBuffer:(unint64_t)a3
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)counterSampleBuffers removeObjectForKey:v4];
}

- (void)removeCounterSampleBufferForKey:(unint64_t)a3
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)counterSampleBuffers removeObjectForKey:v4];
}

- (void)removeComputePipelineStateForKey:(unint64_t)a3
{
  computePipelineStates = self->_computePipelineStates;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)computePipelineStates removeObjectForKey:v4];
}

- (void)removeComputeCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeIOScratchBufferAllocatorForKey:(unint64_t)a3
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)ioScratchBufferAllocators removeObjectForKey:v4];
}

- (void)removeIOScratchBufferForKey:(unint64_t)a3
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)ioScratchBuffers removeObjectForKey:v4];
}

- (void)removeIOCommandQueueForKey:(unint64_t)a3
{
  ioCommandQueues = self->_ioCommandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)ioCommandQueues removeObjectForKey:v4];
}

- (void)removeIOCommandBufferForKey:(unint64_t)a3
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)ioCommandBuffers removeObjectForKey:v4];
}

- (void)removeCommandQueueForKey:(unint64_t)a3
{
  commandQueues = self->_commandQueues;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandQueues removeObjectForKey:v4];
}

- (void)removeCommandBufferForKey:(unint64_t)a3
{
  commandBuffers = self->_commandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandBuffers removeObjectForKey:v4];
}

- (void)removeBufferForHeapKey:(unint64_t)a3
{
  bufferForHeap = self->_bufferForHeap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)bufferForHeap removeObjectForKey:v4];
}

- (void)removeBufferForKey:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(GTMTLReplayObjectMap *)self removeAliasableResourceForKey:v4];
}

- (void)removeBlitCommandEncoderForKey:(unint64_t)a3
{
  commandEncoders = self->_commandEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)commandEncoders removeObjectForKey:v4];
}

- (void)removeArgumentEncoderForKey:(unint64_t)a3
{
  argumentEncoders = self->_argumentEncoders;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)argumentEncoders removeObjectForKey:v4];
}

- (void)removeAliasableResourceForKey:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    MakeRootResourceAliasable(v4);
    [(NSMutableDictionary *)self->_resources removeObjectForKey:v6];
  }
}

- (void)presentDrawableWithKey:(unint64_t)a3
{
  drawables = self->_drawables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)drawables removeObjectForKey:v4];
}

- (id)allocationForKey:(unint64_t)a3
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if (!v7)
  {
    heaps = self->_heaps;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v7 = [(NSMutableDictionary *)heaps objectForKeyedSubscript:v9];

    if (!v7)
    {
      computePipelineStates = self->_computePipelineStates;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v7 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:v11];

      if (!v7)
      {
        renderPipelineStates = self->_renderPipelineStates;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
        v7 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:v13];

        if (!v7)
        {
          unusedResources = self->_unusedResources;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
          LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v15];

          GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
          v7 = 0;
        }
      }
    }
  }

  return v7;
}

- (id)bufferForHeapKey:(unint64_t)a3
{
  bufferForHeap = self->_bufferForHeap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)bufferForHeap objectForKeyedSubscript:v4];

  return v5;
}

- (id)resourceViewPoolForKey:(unint64_t)a3
{
  textureViewPools = self->_textureViewPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPools objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)textureViewPoolForKey:(unint64_t)a3
{
  textureViewPools = self->_textureViewPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPools objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4ArchiveForKey:(unint64_t)a3
{
  mtl4Archives = self->_mtl4Archives;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4Archives objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4CompilerForKey:(unint64_t)a3
{
  mtl4Compilers = self->_mtl4Compilers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4Compilers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4MachineLearningPipelineStateForKey:(unint64_t)a3
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)machineLearningPipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4MachineLearningCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)mtl4RenderCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)mtl4ComputeCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)mtl4ArgumentTableForKey:(unint64_t)a3
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4ArgumentTables objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)logStateForKey:(unint64_t)a3
{
  logStates = self->_logStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)logStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4fxTemporalDenoisedScalerForKey:(unint64_t)a3
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4fxTemporalScalerForKey:(unint64_t)a3
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxTemporalScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4fxSpatialScalerForKey:(unint64_t)a3
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxSpatialScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4fxFrameInterpolatorForKey:(unint64_t)a3
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4fxFrameInterpolators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)temporalDenoisedScalerForKey:(unint64_t)a3
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)temporalDenoisedScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)temporalScalerForKey:(unint64_t)a3
{
  temporalScalers = self->_temporalScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)temporalScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)spatialScalerForKey:(unint64_t)a3
{
  spatialScalers = self->_spatialScalers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)spatialScalers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)frameInterpolatorForKey:(unint64_t)a3
{
  frameInterpolators = self->_frameInterpolators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)frameInterpolators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)functionPrivateArgumentForKey:(unint64_t)a3
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionPrivateArguments objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)functionPointerHandleForKey:(unint64_t)a3
{
  functionPointerHandles = self->_functionPointerHandles;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionPointerHandles objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)lateEvalEventForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)resourceGroupSPIForKey:(unint64_t)a3
{
  resourceGroups = self->_resourceGroups;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resourceGroups objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)intersectionFunctionTableForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)accelerationStructureForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)functionHandleForKey:(unint64_t)a3
{
  functionHandles = self->_functionHandles;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functionHandles objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)visibleFunctionTableForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)dynamicLibraryForKey:(unint64_t)a3
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)dynamicLibraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)textureForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)tensorForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)sharedEventHandleForKey:(unint64_t)a3
{
  sharedEventHandles = self->_sharedEventHandles;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)sharedEventHandles objectForKeyedSubscript:v4];

  return v5;
}

- (id)sharedEventForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)samplerStateForKey:(unint64_t)a3
{
  samplerStates = self->_samplerStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)samplerStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)resourceStateCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)resourceForKey:(unint64_t)a3
{
  resources = self->_resources;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)resources objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)renderPipelineStateForKey:(unint64_t)a3
{
  renderPipelineStates = self->_renderPipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)renderCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)residencySetForKey:(unint64_t)a3
{
  residencySets = self->_residencySets;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)residencySets objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)rasterizationRateMapForKey:(unint64_t)a3
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)rasterizationRateMaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)pipelineLibraryForKey:(unint64_t)a3
{
  pipelineLibraries = self->_pipelineLibraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)pipelineLibraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)objectPayloadBindingForKey:(unint64_t)a3
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)objectPayloadBinding objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)parallelRenderCommandEncoderForKey:(unint64_t)a3
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)parallelRenderCommandEncoders objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)libraryForKey:(unint64_t)a3
{
  libraries = self->_libraries;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)libraries objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)layerForKey:(unint64_t)a3
{
  layers = self->_layers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)layers objectForKeyedSubscript:v4];

  return v5;
}

- (id)iosurfaceForProperties:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_iosurfaces objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v4];
    [(NSMutableDictionary *)self->_iosurfaces setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)indirectRenderCommandForKey:(unint64_t)a3
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)indirectRenderCommands objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)indirectComputeCommandForKey:(unint64_t)a3
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)indirectComputeCommands objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)indirectCommandBufferForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)heapForKey:(unint64_t)a3
{
  heaps = self->_heaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)heaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4BinaryFunctionForKey:(unint64_t)a3
{
  mtl4BinaryFunctions = self->_mtl4BinaryFunctions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4BinaryFunctions objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)functionForKey:(unint64_t)a3
{
  functions = self->_functions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)functions objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)fenceForKey:(unint64_t)a3
{
  fences = self->_fences;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)fences objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)eventForKey:(unint64_t)a3
{
  events = self->_events;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)events objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)drawableForKey:(unint64_t)a3
{
  drawables = self->_drawables;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)drawables objectForKeyedSubscript:v4];

  return v5;
}

- (id)depthStencilStateForKey:(unint64_t)a3
{
  depthStencilStates = self->_depthStencilStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)depthStencilStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)counterSampleBufferForKey:(unint64_t)a3
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)counterSampleBuffers objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)computePipelineStateForKey:(unint64_t)a3
{
  computePipelineStates = self->_computePipelineStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)computeCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)mtl4CommandQueueForKey:(unint64_t)a3
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)commandQueueForKey:(unint64_t)a3
{
  commandQueues = self->_commandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)commandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)ioCommandQueueForKey:(unint64_t)a3
{
  ioCommandQueues = self->_ioCommandQueues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)ioCommandQueues objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)mtl4CommandAllocatorForKey:(unint64_t)a3
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)mtl4CommandAllocators objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)ioScratchBufferAllocatorForKey:(unint64_t)a3
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)ioScratchBufferAllocators objectForKeyedSubscript:v4];

  return v5;
}

- (id)ioScratchBufferForKey:(unint64_t)a3
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)ioScratchBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)ioCommandBufferForKey:(unint64_t)a3
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)ioCommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)mtl4OpenCommandBufferForKey:(unint64_t)a3
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)mtl4OpenCommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)mtl4CommandBufferForKey:(unint64_t)a3
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)mtl4CommandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)commandBufferForKey:(unint64_t)a3
{
  commandBuffers = self->_commandBuffers;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)commandBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)bufferForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)blitCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (id)argumentEncoderForKey:(unint64_t)a3
{
  argumentEncoders = self->_argumentEncoders;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)argumentEncoders objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (id)accelerationStructureCommandEncoderForKey:(unint64_t)a3
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
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v11];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v9;
}

- (void)setContentRect:(CGRect)a3 windowRect:(CGRect)a4 properties:(id)a5
{
  self->_contentRect = a3;
  self->_windowRect = a4;
  objc_storeStrong(&self->_windowProperties, a5);
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

- (void)setMTL4BinaryFunction:(id)a3 forKey:(unint64_t)a4
{
  mtl4BinaryFunctions = self->_mtl4BinaryFunctions;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4BinaryFunctions setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4Archive:(id)a3 forKey:(unint64_t)a4
{
  mtl4Archives = self->_mtl4Archives;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4Archives setObject:v7 forKeyedSubscript:v8];
}

- (id)tryGetTextureForKey:(unint64_t)a3
{
  resources = self->_resources;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
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

- (void)setTextureViewPoolEntry:(id)a3 forKey:(unint64_t)a4
{
  textureViewPoolDeviceObjectMaps = self->_textureViewPoolDeviceObjectMaps;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)textureViewPoolDeviceObjectMaps setObject:v7 forKeyedSubscript:v8];
}

- (id)textureViewPoolEntryForKey:(unint64_t)a3
{
  textureViewPoolDeviceObjectMaps = self->_textureViewPoolDeviceObjectMaps;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)textureViewPoolDeviceObjectMaps objectForKeyedSubscript:v6];

  if (!v7)
  {
    unusedResources = self->_unusedResources;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    LODWORD(unusedResources) = [(NSMutableSet *)unusedResources containsObject:v9];

    GTMTLReplay_dispatchFailedToGet(a3, unusedResources);
  }

  return v7;
}

- (void)setTextureViewPool:(id)a3 forKey:(unint64_t)a4
{
  textureViewPools = self->_textureViewPools;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)textureViewPools setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4Compiler:(id)a3 forKey:(unint64_t)a4
{
  mtl4Compilers = self->_mtl4Compilers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4Compilers setObject:v7 forKeyedSubscript:v8];
}

- (void)setLogState:(id)a3 forKey:(unint64_t)a4
{
  logStates = self->_logStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)logStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4FXTemporalDenoisedScaler:(id)a3 forKey:(unint64_t)a4
{
  mtl4fxTemporalDenoisedScalers = self->_mtl4fxTemporalDenoisedScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4fxTemporalDenoisedScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4FXFrameInterpolator:(id)a3 forKey:(unint64_t)a4
{
  mtl4fxFrameInterpolators = self->_mtl4fxFrameInterpolators;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4fxFrameInterpolators setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4FXTemporalScaler:(id)a3 forKey:(unint64_t)a4
{
  mtl4fxTemporalScalers = self->_mtl4fxTemporalScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4fxTemporalScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4FXSpatialScaler:(id)a3 forKey:(unint64_t)a4
{
  mtl4fxSpatialScalers = self->_mtl4fxSpatialScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4fxSpatialScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setTemporalDenoisedScaler:(id)a3 forKey:(unint64_t)a4
{
  temporalDenoisedScalers = self->_temporalDenoisedScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)temporalDenoisedScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setFrameInterpolator:(id)a3 forKey:(unint64_t)a4
{
  frameInterpolators = self->_frameInterpolators;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)frameInterpolators setObject:v7 forKeyedSubscript:v8];
}

- (void)setTemporalScaler:(id)a3 forKey:(unint64_t)a4
{
  temporalScalers = self->_temporalScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)temporalScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setSpatialScaler:(id)a3 forKey:(unint64_t)a4
{
  spatialScalers = self->_spatialScalers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)spatialScalers setObject:v7 forKeyedSubscript:v8];
}

- (void)setDeadlineProfile:(id)a3 forKey:(unint64_t)a4
{
  deadlineProfiles = self->_deadlineProfiles;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)deadlineProfiles setObject:v7 forKeyedSubscript:v8];
}

- (void)setFunctionPrivateArgument:(id)a3 forKey:(unint64_t)a4
{
  functionPrivateArguments = self->_functionPrivateArguments;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)functionPrivateArguments setObject:v7 forKeyedSubscript:v8];
}

- (void)setFunctionPointerHandle:(id)a3 forKey:(unint64_t)a4
{
  functionPointerHandles = self->_functionPointerHandles;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)functionPointerHandles setObject:v7 forKeyedSubscript:v8];
}

- (void)setLateEvalEvent:(id)a3 forKey:(unint64_t)a4
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)events setObject:v7 forKeyedSubscript:v8];
}

- (void)setResourceGroupSPI:(id)a3 forKey:(unint64_t)a4
{
  resourceGroups = self->_resourceGroups;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resourceGroups setObject:v7 forKeyedSubscript:v8];
}

- (void)setResidencySet:(id)a3 forKey:(unint64_t)a4
{
  residencySets = self->_residencySets;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)residencySets setObject:v7 forKeyedSubscript:v8];
}

- (void)setIntersectionFunctionTable:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setAccelerationStructure:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setAccelerationStructureCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setFunctionHandle:(id)a3 forKey:(unint64_t)a4
{
  functionHandles = self->_functionHandles;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)functionHandles setObject:v7 forKeyedSubscript:v8];
}

- (void)setVisibleFunctionTable:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setDynamicLibrary:(id)a3 forPath:(const char *)a4
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [v6 stringWithUTF8String:a4];
  [(NSMutableDictionary *)dynamicLibraries setObject:v7 forKeyedSubscript:v8];
}

- (void)setDynamicLibrary:(id)a3 forKey:(unint64_t)a4
{
  dynamicLibraries = self->_dynamicLibraries;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)dynamicLibraries setObject:v7 forKeyedSubscript:v8];
}

- (void)setTexture:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setTensor:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setSharedEventHandle:(id)a3 forKey:(unint64_t)a4
{
  sharedEventHandles = self->_sharedEventHandles;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)sharedEventHandles setObject:v7 forKeyedSubscript:v8];
}

- (void)setSharedEvent:(id)a3 forKey:(unint64_t)a4
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)events setObject:v7 forKeyedSubscript:v8];
}

- (void)setSamplerState:(id)a3 forKey:(unint64_t)a4
{
  samplerStates = self->_samplerStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)samplerStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setResourceStateCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setRenderPipelineState:(id)a3 forKey:(unint64_t)a4
{
  renderPipelineStates = self->_renderPipelineStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)renderPipelineStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setRenderCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setRasterizationRateMap:(id)a3 forKey:(unint64_t)a4
{
  rasterizationRateMaps = self->_rasterizationRateMaps;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)rasterizationRateMaps setObject:v7 forKeyedSubscript:v8];
}

- (void)setPipelineLibrarySPI:(id)a3 forKey:(unint64_t)a4
{
  pipelineLibraries = self->_pipelineLibraries;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)pipelineLibraries setObject:v7 forKeyedSubscript:v8];
}

- (void)setObjectPayloadBinding:(id)a3 forKey:(unint64_t)a4
{
  objectPayloadBinding = self->_objectPayloadBinding;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)objectPayloadBinding setObject:v7 forKeyedSubscript:v8];
}

- (void)setParallelRenderCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  parallelRenderCommandEncoders = self->_parallelRenderCommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)parallelRenderCommandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setLibrary:(id)a3 forKey:(unint64_t)a4
{
  libraries = self->_libraries;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)libraries setObject:v7 forKeyedSubscript:v8];
}

- (void)setLayer:(id)a3 forKey:(unint64_t)a4
{
  layers = self->_layers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)layers setObject:v7 forKeyedSubscript:v8];
}

- (void)setIndirectRenderCommand:(id)a3 forKey:(unint64_t)a4
{
  indirectRenderCommands = self->_indirectRenderCommands;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)indirectRenderCommands setObject:v7 forKeyedSubscript:v8];
}

- (void)setIndirectComputeCommand:(id)a3 forKey:(unint64_t)a4
{
  indirectComputeCommands = self->_indirectComputeCommands;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)indirectComputeCommands setObject:v7 forKeyedSubscript:v8];
}

- (void)setIndirectCommandBuffer:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setHeap:(id)a3 forKey:(unint64_t)a4
{
  heaps = self->_heaps;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)heaps setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setFunction:(id)a3 forKey:(unint64_t)a4
{
  functions = self->_functions;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)functions setObject:v7 forKeyedSubscript:v8];
}

- (void)setFence:(id)a3 forKey:(unint64_t)a4
{
  fences = self->_fences;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)fences setObject:v7 forKeyedSubscript:v8];
}

- (void)setEvent:(id)a3 forKey:(unint64_t)a4
{
  events = self->_events;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)events setObject:v7 forKeyedSubscript:v8];
}

- (void)setDrawable:(id)a3 forKey:(unint64_t)a4
{
  drawables = self->_drawables;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)drawables setObject:v7 forKeyedSubscript:v8];
}

- (void)setDevice:(id)a3 forKey:(unint64_t)a4
{
  devices = self->_devices;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)devices setObject:v7 forKeyedSubscript:v8];
}

- (void)setDepthStencilState:(id)a3 forKey:(unint64_t)a4
{
  depthStencilStates = self->_depthStencilStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)depthStencilStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setDebugCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setCounterSampleBuffer:(id)a3 forKey:(unint64_t)a4
{
  counterSampleBuffers = self->_counterSampleBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)counterSampleBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)setComputePipelineState:(id)a3 forKey:(unint64_t)a4
{
  computePipelineStates = self->_computePipelineStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)computePipelineStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setComputeCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setIOScratchBufferAllocator:(id)a3 forKey:(unint64_t)a4
{
  ioScratchBufferAllocators = self->_ioScratchBufferAllocators;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)ioScratchBufferAllocators setObject:v7 forKeyedSubscript:v8];
}

- (void)setIOScratchBuffer:(id)a3 forKey:(unint64_t)a4
{
  ioScratchBuffers = self->_ioScratchBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)ioScratchBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4MachineLearningPipelineState:(id)a3 forKey:(unint64_t)a4
{
  machineLearningPipelineStates = self->_machineLearningPipelineStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)machineLearningPipelineStates setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4MachineLearningCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4RenderCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4ComputeCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandEncoders = self->_mtl4CommandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4ArgumentTable:(id)a3 forKey:(unint64_t)a4
{
  mtl4ArgumentTables = self->_mtl4ArgumentTables;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4ArgumentTables setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4CommandQueue:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandQueues = self->_mtl4CommandQueues;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandQueues setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addGlobalResidencySetToMTL4Queue:v9];
}

- (void)setMTL4CommandAllocator:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandAllocators = self->_mtl4CommandAllocators;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandAllocators setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4OpenCommandBuffer:(id)a3 forKey:(unint64_t)a4
{
  mtl4OpenCommandBuffers = self->_mtl4OpenCommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4OpenCommandBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)setMTL4CommandBuffer:(id)a3 forKey:(unint64_t)a4
{
  mtl4CommandBuffers = self->_mtl4CommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)mtl4CommandBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)addGlobalResidencySetToMTL4Queue:(id)a3
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [a3 addResidencySet:self->_globalResourceResidencySet];
  }
}

- (void)setIOCommandBuffer:(id)a3 forKey:(unint64_t)a4
{
  ioCommandBuffers = self->_ioCommandBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)ioCommandBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)setIOCommandQueue:(id)a3 forKey:(unint64_t)a4
{
  ioCommandQueues = self->_ioCommandQueues;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)ioCommandQueues setObject:v7 forKeyedSubscript:v8];
}

- (void)setCommandQueue:(id)a3 forKey:(unint64_t)a4
{
  commandQueues = self->_commandQueues;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandQueues setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addGlobalResidencySetToQueue:v9];
}

- (void)setCommandBuffer:(id)a3 forKey:(unint64_t)a4
{
  commandBuffers = self->_commandBuffers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandBuffers setObject:v7 forKeyedSubscript:v8];
}

- (void)setBuffer:(id)a3 forHeapKey:(unint64_t)a4
{
  bufferForHeap = self->_bufferForHeap;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)bufferForHeap setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setBuffer:(id)a3 forKey:(unint64_t)a4
{
  resources = self->_resources;
  v7 = MEMORY[0x277CCABB0];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)resources setObject:v9 forKeyedSubscript:v8];

  [(GTMTLReplayObjectMap *)self addToGlobalResidencySet:v9];
}

- (void)setBlitCommandEncoder:(id)a3 forKey:(unint64_t)a4
{
  commandEncoders = self->_commandEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)commandEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)setArgumentEncoder:(id)a3 forKey:(unint64_t)a4
{
  argumentEncoders = self->_argumentEncoders;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)argumentEncoders setObject:v7 forKeyedSubscript:v8];
}

- (void)addGlobalResidencySetToQueue:(id)a3
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [a3 addResidencySet:self->_globalResourceResidencySet];
  }
}

- (void)addToGlobalResidencySet:(id)a3
{
  if ((qword_27F09CF90 & 0x800) != 0)
  {
    [(MTLResidencySet *)self->_globalResourceResidencySet addAllocation:a3];
    globalResourceResidencySet = self->_globalResourceResidencySet;

    [(MTLResidencySet *)globalResourceResidencySet commit];
  }
}

- (void)setLayerClass:(Class)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_layerClass != a3)
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
          v12 = objc_alloc_init(a3);
          v13 = [v11 device];
          [v12 setDevice:v13];

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

    self->_layerClass = a3;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeResourcesForKeys:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB68] null];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSMutableDictionary *)self->_resources objectsForKeys:v4 notFoundMarker:v6, 0];
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
        if (v12 != v6)
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

  [(NSMutableDictionary *)self->_argumentEncoders removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_commandQueues removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_ioCommandQueues removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_computePipelineStates removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_counterSampleBuffers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_depthStencilStates removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_drawables removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_events removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_fences removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_functions removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_heaps removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_indirectComputeCommands removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_indirectRenderCommands removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_iosurfaces removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_layers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_libraries removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_dynamicLibraries removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_machineLearningPipelineStates removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_motionEstimationPipelines removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_objectPayloadBinding removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_pipelineLibraries removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_rasterizationRateMaps removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_renderPipelineStates removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_residencySets removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_resourceGroups removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_resources removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_samplerStates removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_functionHandles removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_functionPointerHandles removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_functionPrivateArguments removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_deadlineProfiles removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_frameInterpolators removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_spatialScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_temporalScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_temporalDenoisedScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_logStates removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4CommandAllocators removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4CommandQueues removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4ArgumentTables removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4BinaryFunctions removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4Compilers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4fxFrameInterpolators removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4fxSpatialScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4fxTemporalScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mtl4fxTemporalDenoisedScalers removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_textureViewPools removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_textureViewPoolDeviceObjectMaps removeObjectsForKeys:v4];
  [(NSMutableDictionary *)self->_mpsExternalPluginBases removeObjectsForKeys:v4];

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

- (GTMTLReplayObjectMap)initWithDevice:(id)a3
{
  v5 = a3;
  v135.receiver = self;
  v135.super_class = GTMTLReplayObjectMap;
  v6 = [(GTMTLReplayObjectMap *)&v135 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultDevice, a3);
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