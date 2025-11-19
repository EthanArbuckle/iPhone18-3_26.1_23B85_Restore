@interface MTLGPUDebugComputePipelineState
- (MTLGPUDebugBuffer)globalConstantsBuffer;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 binaryFunctions:(id)a4 withState:(id)a5 device:(id)a6;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 binaryFunctions:(id)a4 withState:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 device:(id)a6;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8;
- (id)functionHandleWithFunction:(id)a3;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (void)_initConstantsBuffer:(id)a3;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLGPUDebugComputePipelineState

- (void)_initConstantsBuffer:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(a3 "debugInstrumentationData")];
  self->_threadgroupArgumentOffset = [objc_msgSend(a3 "debugInstrumentationData")];
  self->_activeThreadgroupMask = [objc_msgSend(a3 "debugInstrumentationData")];
  if ([v5 length])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([v5 length])
    {
      [v6 appendData:v5];
      self->_constantOffset = 0;
      [v5 length];
    }

    [(MTLGPUDebugImageData *)self->_kernelFunctionData setConstantData:v6];
  }

  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v7 = [[MTLGPUDebugPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v8 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
    self->_indirectStateBuffer = -[MTLGPUDebugBuffer initWithBuffer:device:offset:length:track:]([MTLGPUDebugBuffer alloc], "initWithBuffer:device:offset:length:track:", v8, self->super.super._device, 0, [v8 length], 0);

    [(MTLGPUDebugPipelineStateInfoEncoder *)v7 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLGPUDebugPipelineStateInfoEncoder *)v7 setComputePipelineState:self];

    if (self->_supportsIndirectCommandBuffers)
    {
      v9 = *(self->_kernelFunctionData + 1);
      if (v9)
      {
        GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v9);
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      binaryFunctionData = self->_binaryFunctionData;
      v11 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(binaryFunctionData);
            }

            v15 = *(*(*(&v17 + 1) + 8 * i) + 8);
            if (v15)
            {
              GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v15);
            }
          }

          v12 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = MTLGPUDebugComputePipelineState;
  v14 = [(MTLToolsObject *)&v44 initWithBaseObject:a3 parent:a7];
  if (v14)
  {
    v35 = a6;
    v15 = [a4 computeFunction];
    v14->_kernelFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v15, [a3 debugInstrumentationData]);
    if ((BYTE4(v14->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v14->_retainedFunctions = v16;
      [(NSMutableArray *)v16 addObject:v15];
    }

    v14->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v17 = 1;
    if ((a8 & 0x800000000) == 0)
    {
      v17 = 2;
    }

    v14->_shaderValidation = v17;
    v14->_shaderValidationState = v17;
    v18 = [objc_msgSend(a4 "preloadedLibraries")];
    v19 = [objc_msgSend(objc_msgSend(a4 "linkedFunctions")] + v18;
    if (v19)
    {
      v33 = a5;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = [objc_msgSend(a4 "linkedFunctions")];
      v21 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          v24 = 0;
          do
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v40 + 1) + 8 * v24++) + 48), v33];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v22);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = [a4 preloadedLibraries];
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
      a5 = v34;
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          v29 = 0;
          do
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v36 + 1) + 8 * v29++) imageData]);
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v27);
      }
    }

    v14->_internalReflection = v35;
    if ([objc_msgSend(a3 "debugInstrumentationData")])
    {
      v30 = [a5 newSerializedComputeDataWithFlags:0 options:3];
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6D38]) initWithSerializedData:objc_msgSend(objc_msgSend(a3 dynamicLibraries:"debugInstrumentationData") serializedStageInputDescriptor:"userReflectionData") device:objc_msgSend(objc_msgSend(a3 options:"debugInstrumentationData") flags:{"linkedDynamicLibraries"), v30, objc_msgSend(a7, "baseObject"), 3, 0}];
      [objc_msgSend(a3 "debugInstrumentationData")];
      dispatch_release(v30);
    }

    [(MTLComputePipelineReflection *)v14->_userReflection setPerformanceStatistics:[(MTLComputePipelineReflection *)v14->_internalReflection performanceStatistics]];
    [(MTLGPUDebugComputePipelineState *)v14 _initConstantsBuffer:a3];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 binaryFunctions:(id)a4 withState:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MTLGPUDebugComputePipelineState;
  v11 = [(MTLToolsObject *)&v27 initWithBaseObject:a3 parent:a6];
  v12 = v11;
  if (v11)
  {
    if ((BYTE4(v11->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a5 + 16), "count") + objc_msgSend(a4, "count")}];
      v12->_retainedFunctions = v13;
      [(NSMutableArray *)v13 addObjectsFromArray:a4];
      [(NSMutableArray *)v12->_retainedFunctions addObjectsFromArray:*(a5 + 16)];
    }

    v12->_kernelFunctionData = *(a5 + 6);
    v14 = [*(a5 + 9) count];
    v15 = [a4 count] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
    }

    if (*(a5 + 9))
    {
      [(NSMutableArray *)v12->_binaryFunctionData addObjectsFromArray:?];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [a4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(a4);
          }

          [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v23 + 1) + 8 * v19++) + 48)];
        }

        while (v17 != v19);
        v17 = [a4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v17);
    }

    v12->_userReflection = *(a5 + 8);
    v12->_internalReflection = *(a5 + 7);
    v12->_supportsIndirectCommandBuffers = [a5 supportIndirectCommandBuffers];
    v20 = 1;
    if ((a7 & 0x800000000) == 0)
    {
      v20 = 2;
    }

    v12->_shaderValidation = v20;
    v12->_shaderValidationState = v20;
    [(MTLGPUDebugComputePipelineState *)v12 _initConstantsBuffer:a3];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 device:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = MTLGPUDebugComputePipelineState;
  v9 = [(MTLToolsObject *)&v35 initWithBaseObject:a3 parent:a6];
  if (v9)
  {
    v9->_kernelFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 computeFunctionDescriptor]), 3, objc_msgSend(a3, "debugInstrumentationData"), v9->super.super._device);
    if (a5)
    {
      v10 = [objc_msgSend(a5 "preloadedLibraries")];
      v11 = [objc_msgSend(a5 "binaryLinkedFunctions")] + v10;
      if (v11)
      {
        v9->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = [a5 binaryLinkedFunctions];
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [(NSMutableArray *)v9->_binaryFunctionData addObject:*(*(*(&v31 + 1) + 8 * i) + 48)];
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v14);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = [a5 preloadedLibraries];
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              -[NSMutableArray addObject:](v9->_binaryFunctionData, "addObject:", [*(*(&v27 + 1) + 8 * j) imageData]);
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v19);
        }
      }
    }

    v22 = [objc_msgSend(a4 "options")];
    if ([v22 enableBoundsChecking] & 1) != 0 || (objc_msgSend(v22, "enableThreadgroupMemoryChecks") & 1) != 0 || (objc_msgSend(v22, "enableTextureChecks") & 1) != 0 || (objc_msgSend(v22, "enableResourceUsageValidation"))
    {
      v23 = 1;
    }

    else
    {
      v26 = [v22 enableStackOverflow];
      v23 = 1;
      if (!v26)
      {
        v23 = 2;
      }
    }

    v9->_shaderValidation = v23;
    v9->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers] != 0;
    [(MTLGPUDebugComputePipelineState *)v9 _initConstantsBuffer:a3];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)a3 binaryFunctions:(id)a4 withState:(id)a5 device:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = MTLGPUDebugComputePipelineState;
  v9 = [(MTLToolsObject *)&v22 initWithBaseObject:a3 parent:a6];
  if (v9)
  {
    v9->_kernelFunctionData = [a5 kernelFunctionData];
    v10 = [objc_msgSend(a5 "binaryFunctionData")];
    v11 = [a4 count] + v10;
    if (v11)
    {
      v9->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
    }

    if ([a5 binaryFunctionData])
    {
      -[NSMutableArray addObjectsFromArray:](v9->_binaryFunctionData, "addObjectsFromArray:", [a5 binaryFunctionData]);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [a4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(a4);
          }

          [(NSMutableArray *)v9->_binaryFunctionData addObject:*(*(*(&v18 + 1) + 8 * i) + 48)];
        }

        v13 = [a4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    v9->_shaderValidation = [a5 shaderValidation];
    v9->_supportsIndirectCommandBuffers = [a5 supportIndirectCommandBuffers];
    [(MTLGPUDebugComputePipelineState *)v9 _initConstantsBuffer:a3];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __58__MTLGPUDebugComputePipelineState_functionHandleWithName___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePipelineState:v4];
}

uint64_t __68__MTLGPUDebugComputePipelineState_functionHandleWithBinaryFunction___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePipelineState:v4];
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v7 addObject:*(*(&v16 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (![v12 debugInstrumentationData])
  {
    [v12 setDebugInstrumentationData:{-[MTLToolsComputePipelineState debugInstrumentationData](self, "debugInstrumentationData")}];
  }

  v13 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:v12 binaryFunctions:v7 withState:self device:self->super.super._device];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  result = [(MTLToolsObject *)self->super.super._baseObject newVisibleFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:a3 computePipeline:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  result = [(MTLToolsObject *)self->super.super._baseObject newIntersectionFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsComputePipelineState *)self device] descriptor:a3 computePipelineState:self];

    return v7;
  }

  return result;
}

- (id)functionHandleWithFunction:(id)a3
{
  v5 = -[MTLToolsObject functionHandleWithFunction:](self->super.super._baseObject, "functionHandleWithFunction:", [a3 baseObject]);
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__MTLGPUDebugComputePipelineState_functionHandleWithFunction___block_invoke;
  v11 = &unk_2787B4A20;
  v12 = v5;
  v13 = self;
  v14 = a3;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

uint64_t __62__MTLGPUDebugComputePipelineState_functionHandleWithFunction___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePiplineState:v4 function:v5];
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v7 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * v11++), "baseObject")}];
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [(MTLToolsObject *)self->super.super._baseObject newComputePipelineStateWithAdditionalBinaryFunctions:v7 error:a4];

  if (![v12 debugInstrumentationData])
  {
    [v12 setDebugInstrumentationData:{-[MTLToolsComputePipelineState debugInstrumentationData](self, "debugInstrumentationData")}];
  }

  v13 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:v12 binaryFunctions:a3 withState:self device:self->super.super._device pipelineOptions:0];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MTLGPUDebugBuffer)globalConstantsBuffer
{
  kernelFunctionData = self->_kernelFunctionData;
  if (kernelFunctionData)
  {
    return *(kernelFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_supportsIndirectCommandBuffers)
  {
    v3 = *(self->_kernelFunctionData + 1);
    if (v3)
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v3);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v5 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v9 = *(*(*(&v12 + 1) + 8 * i) + 8);
          if (v9)
          {
            GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v9);
          }
        }

        v6 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }

  v11.receiver = self;
  v11.super_class = MTLGPUDebugComputePipelineState;
  [(MTLToolsComputePipelineState *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

@end