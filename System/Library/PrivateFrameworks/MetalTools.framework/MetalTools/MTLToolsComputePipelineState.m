@interface MTLToolsComputePipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup;
- (BOOL)supportIndirectCommandBuffers;
- (MTLComputePipelineReflection)reflection;
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (MTLDevice)device;
- (MTLResourceID)gpuResourceID;
- (NSString)label;
- (id)functionHandleWithBinaryFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3;
- (id)functionHandleWithName:(id)a3;
- (id)functionReflectionWithFunctionDescriptor:(id)a3;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5;
- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (id)pipelineBinaries;
- (int64_t)textureWriteRoundingMode;
- (unint64_t)allocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3;
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
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

- (id)functionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v7 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v11++), "baseObject")}];
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
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

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
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

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportIndirectCommandBuffers];
}

- (int64_t)textureWriteRoundingMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 textureWriteRoundingMode];
}

- (unint64_t)maxTotalThreadsPerThreadgroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalThreadsPerThreadgroup];
}

- (unint64_t)threadExecutionWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 threadExecutionWidth];
}

- (unint64_t)staticThreadgroupMemoryLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 staticThreadgroupMemoryLength];
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v6 = *a3;
  return [v4 imageblockMemoryLengthForDimensions:&v6];
}

- (unsigned)getComputeKernelTelemetryID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getComputeKernelTelemetryID];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (unint64_t)allocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 debugInstrumentationData];
}

- (id)pipelineBinaries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pipelineBinaries];
}

- (unint64_t)gpuHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 reflection];
}

- (id)functionHandleWithName:(id)a3
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

- (id)functionHandleWithBinaryFunction:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v6, a3, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v21.receiver = self;
  v21.super_class = MTLToolsComputePipelineState;
  [(MTLToolsObject *)&v21 device];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v8 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "baseObject")}];
      }

      v10 = [a3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (id)functionReflectionWithFunctionDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MTLToolsComputePipelineState;
  v6 = [(MTLDevice *)[(MTLToolsObject *)&v9 device] newUnwrappedMTL4FunctionDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v5);
  return v7;
}

@end