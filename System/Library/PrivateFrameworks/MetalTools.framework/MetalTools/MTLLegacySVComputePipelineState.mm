@interface MTLLegacySVComputePipelineState
- (MTLLegacySVBuffer)globalConstantsBuffer;
- (MTLLegacySVComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device pipelineOptions:(unint64_t)options;
- (MTLLegacySVComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (id)functionHandleWithFunction:(id)function;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (void)_initConstantsBuffer:(id)buffer device:(id)device;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLLegacySVComputePipelineState

- (void)_initConstantsBuffer:(id)buffer device:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(buffer "debugInstrumentationData")];
  self->_threadgroupArgumentOffset = [objc_msgSend(buffer "debugInstrumentationData")];
  self->_activeThreadgroupMask = [objc_msgSend(buffer "debugInstrumentationData")];
  if ([v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([v7 length])
    {
      [v8 appendData:v7];
      self->_constantOffset = 0;
      [v7 length];
    }

    [(MTLLegacySVImageData *)self->_kernelFunctionData setConstantData:v8];
  }

  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v9 = [[MTLLegacySVPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v10 = [objc_msgSend(device "baseObject")];
    self->_indirectStateBuffer = -[MTLLegacySVBuffer initWithBuffer:device:offset:length:track:]([MTLLegacySVBuffer alloc], "initWithBuffer:device:offset:length:track:", v10, device, 0, [v10 length], 0);

    [(MTLLegacySVPipelineStateInfoEncoder *)v9 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLLegacySVPipelineStateInfoEncoder *)v9 setComputePipelineState:self];

    if (self->_supportsIndirectCommandBuffers)
    {
      if (*(self->_kernelFunctionData + 1))
      {
        LegacySVGlobalResidentBufferList::addBuffer(device + 552);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      binaryFunctionData = self->_binaryFunctionData;
      v12 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(binaryFunctionData);
            }

            if (*(*(*(&v18 + 1) + 8 * i) + 8))
            {
              LegacySVGlobalResidentBufferList::addBuffer(&self->super.super._device[4]._memorySize);
            }
          }

          v13 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    indirectStateBuffer = self->_indirectStateBuffer;
    LegacySVGlobalResidentBufferList::addBuffer(device + 552);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (MTLLegacySVComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = MTLLegacySVComputePipelineState;
  v14 = [(MTLToolsObject *)&v44 initWithBaseObject:state parent:device];
  if (v14)
  {
    reflectionCopy = reflection;
    computeFunction = [descriptor computeFunction];
    v14->_kernelFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", computeFunction, [state debugInstrumentationData]);
    if ((BYTE4(v14->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v14->_retainedFunctions = v16;
      [(NSMutableArray *)v16 addObject:computeFunction];
    }

    v14->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    v17 = 1;
    if ((options & 0x800000000) == 0)
    {
      v17 = 2;
    }

    v14->_shaderValidation = v17;
    v14->_shaderValidationState = v17;
    v18 = [objc_msgSend(descriptor "preloadedLibraries")];
    v19 = [objc_msgSend(objc_msgSend(descriptor "linkedFunctions")] + v18;
    if (v19)
    {
      unwrappedDescriptorCopy = unwrappedDescriptor;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = [objc_msgSend(descriptor "linkedFunctions")];
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

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v40 + 1) + 8 * v24++) + 48), unwrappedDescriptorCopy];
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
      preloadedLibraries = [descriptor preloadedLibraries];
      v26 = [preloadedLibraries countByEnumeratingWithState:&v36 objects:v45 count:16];
      unwrappedDescriptor = v34;
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
              objc_enumerationMutation(preloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v36 + 1) + 8 * v29++) imageData]);
          }

          while (v27 != v29);
          v27 = [preloadedLibraries countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v27);
      }
    }

    v14->_internalReflection = reflectionCopy;
    if ([objc_msgSend(state "debugInstrumentationData")])
    {
      v30 = [unwrappedDescriptor newSerializedComputeDataWithFlags:0 options:3];
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6D38]) initWithSerializedData:objc_msgSend(objc_msgSend(state serializedStageInputDescriptor:"debugInstrumentationData") device:"userReflectionData") options:v30 flags:{objc_msgSend(device, "baseObject"), 3, 0}];
      dispatch_release(v30);
    }

    [(MTLComputePipelineReflection *)v14->_userReflection setPerformanceStatistics:[(MTLComputePipelineReflection *)v14->_internalReflection performanceStatistics]];
    [(MTLLegacySVComputePipelineState *)v14 _initConstantsBuffer:state device:device];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLLegacySVComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device pipelineOptions:(unint64_t)options
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MTLLegacySVComputePipelineState;
  v11 = [(MTLToolsObject *)&v28 initWithBaseObject:state parent:device];
  v12 = v11;
  if (v11)
  {
    optionsCopy = options;
    if ((BYTE4(v11->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(withState + 16), "count") + objc_msgSend(functions, "count")}];
      v12->_retainedFunctions = v13;
      [(NSMutableArray *)v13 addObjectsFromArray:functions];
      [(NSMutableArray *)v12->_retainedFunctions addObjectsFromArray:*(withState + 16)];
    }

    v12->_kernelFunctionData = *(withState + 6);
    v14 = [*(withState + 9) count];
    v15 = [functions count] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
    }

    if (*(withState + 9))
    {
      [(NSMutableArray *)v12->_binaryFunctionData addObjectsFromArray:?];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [functions countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(functions);
          }

          [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v24 + 1) + 8 * v19++) + 48)];
        }

        while (v17 != v19);
        v17 = [functions countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v17);
    }

    v12->_userReflection = *(withState + 8);
    v12->_internalReflection = *(withState + 7);
    v12->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
    v20 = 1;
    if ((optionsCopy & 0x800000000) == 0)
    {
      v20 = 2;
    }

    v12->_shaderValidation = v20;
    v12->_shaderValidationState = v20;
    [(MTLLegacySVComputePipelineState *)v12 _initConstantsBuffer:state device:v12->super.super._device];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  result = [(MTLToolsObject *)self->super.super._baseObject newVisibleFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:descriptor computePipeline:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  result = [(MTLToolsObject *)self->super.super._baseObject newIntersectionFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsComputePipelineState *)self device] descriptor:descriptor computePipelineState:self];

    return v7;
  }

  return result;
}

- (id)functionHandleWithFunction:(id)function
{
  v5 = -[MTLToolsObject functionHandleWithFunction:](self->super.super._baseObject, "functionHandleWithFunction:", [function baseObject]);
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__MTLLegacySVComputePipelineState_functionHandleWithFunction___block_invoke;
  v11 = &unk_2787B4A20;
  v12 = v5;
  selfCopy = self;
  functionCopy = function;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

uint64_t __62__MTLLegacySVComputePipelineState_functionHandleWithFunction___block_invoke(void *a1)
{
  v2 = [MTLLegacySVFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLLegacySVFunctionHandle *)v2 initWithFunctionHandle:v3 computePiplineState:v4 function:v5];
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(functions, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [functions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(functions);
        }

        [v7 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * v11++), "baseObject")}];
      }

      while (v9 != v11);
      v9 = [functions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [(MTLToolsObject *)self->super.super._baseObject newComputePipelineStateWithAdditionalBinaryFunctions:v7 error:error];

  if (![v12 debugInstrumentationData])
  {
    [v12 setDebugInstrumentationData:{-[MTLToolsComputePipelineState debugInstrumentationData](self, "debugInstrumentationData")}];
  }

  v13 = [[MTLLegacySVComputePipelineState alloc] initWithComputePipelineState:v12 binaryFunctions:functions withState:self device:self->super.super._device pipelineOptions:0];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MTLLegacySVBuffer)globalConstantsBuffer
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
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, v3);
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
            LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, v9);
          }
        }

        v6 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, self->_indirectStateBuffer);
  }

  v11.receiver = self;
  v11.super_class = MTLLegacySVComputePipelineState;
  [(MTLToolsComputePipelineState *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

@end