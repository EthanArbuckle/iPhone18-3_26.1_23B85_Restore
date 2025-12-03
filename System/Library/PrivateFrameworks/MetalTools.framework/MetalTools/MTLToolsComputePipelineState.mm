@interface MTLToolsComputePipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup;
- (BOOL)supportIndirectCommandBuffers;
- (MTLComputePipelineReflection)reflection;
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (MTLDevice)device;
- (MTLResourceID)gpuResourceID;
- (NSString)label;
- (id)functionHandleWithBinaryFunction:(id)function;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithName:(id)name;
- (id)functionReflectionWithFunctionDescriptor:(id)descriptor;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions resourceIndices:(unint64_t *)indices error:(id *)error;
- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (id)pipelineBinaries;
- (int64_t)textureWriteRoundingMode;
- (unint64_t)allocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions;
- (unint64_t)maxTotalThreadsPerThreadgroup;
- (unint64_t)resourceIndex;
- (unint64_t)staticThreadgroupMemoryLength;
- (unint64_t)threadExecutionWidth;
- (unint64_t)uniqueIdentifier;
- (unsigned)getComputeKernelTelemetryID;
- (void)dealloc;
@end

@implementation MTLToolsComputePipelineState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsComputePipelineState;
  [(MTLToolsObject *)&v3 dealloc];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (MTLDevice)device
{
  parent = self->super._parent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->super._parent;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    v5 = self->super._parent;
    if ((v6 & 1) == 0)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();
      v5 = self->super._parent;
      if ((v7 & 1) == 0)
      {
        objc_opt_class();
        v8 = objc_opt_isKindOfClass();
        v5 = self->super._parent;
        if ((v8 & 1) == 0)
        {
          return self->super._parent;
        }
      }
    }
  }

  return [(MTLToolsObject *)v5 device];
}

- (id)functionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(functions, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [functions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(functions);
        }

        [v7 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v11++), "baseObject")}];
      }

      while (v9 != v11);
      v9 = [functions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions resourceIndices:(unint64_t *)indices error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(functions, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [functions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(functions);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [functions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v14)
  {
    v15 = v14;
    v16 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsVisibleFunctionTable alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsIntersectionFunctionTable alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (BOOL)supportIndirectCommandBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportIndirectCommandBuffers];
}

- (int64_t)textureWriteRoundingMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject textureWriteRoundingMode];
}

- (unint64_t)maxTotalThreadsPerThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalThreadsPerThreadgroup];
}

- (unint64_t)threadExecutionWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject threadExecutionWidth];
}

- (unint64_t)staticThreadgroupMemoryLength
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject staticThreadgroupMemoryLength];
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *dimensions;
  return [baseObject imageblockMemoryLengthForDimensions:&v6];
}

- (unsigned)getComputeKernelTelemetryID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getComputeKernelTelemetryID];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugInstrumentationData];
}

- (id)pipelineBinaries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineBinaries];
}

- (unint64_t)gpuHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerThreadgroup];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (MTLComputePipelineReflection)reflection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflection];
}

- (id)functionHandleWithName:(id)name
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandleWithDevice(v6, self->super._device, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)functionHandleWithBinaryFunction:(id)function
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v6, function, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v21.receiver = self;
  v21.super_class = MTLToolsComputePipelineState;
  [(MTLToolsObject *)&v21 device];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(functions, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [functions countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(functions);
        }

        [v8 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "baseObject")}];
      }

      v10 = [functions countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v13)
  {
    v14 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v13 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)functionReflectionWithFunctionDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MTLToolsComputePipelineState;
  v6 = [(MTLDevice *)[(MTLToolsObject *)&v9 device] newUnwrappedMTL4FunctionDescriptor:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v5);
  return v7;
}

@end