@interface MTLToolsRenderPipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerMeshThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerObjectThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerTileThreadgroup;
- (BOOL)supportIndirectCommandBuffers;
- (BOOL)threadgroupSizeMatchesTileSize;
- (MTLDebugInstrumentationData)fragmentDebugInstrumentationData;
- (MTLDebugInstrumentationData)meshDebugInstrumentationData;
- (MTLDebugInstrumentationData)objectDebugInstrumentationData;
- (MTLDebugInstrumentationData)tileDebugInstrumentationData;
- (MTLDebugInstrumentationData)vertexDebugInstrumentationData;
- (MTLDevice)device;
- (MTLRenderPipelineReflection)reflection;
- (MTLResourceID)gpuResourceID;
- (MTLToolsRenderPipelineState)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (id)fragmentFunctionHandleWithFunction:(id)function;
- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage;
- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage;
- (id)functionHandleWithName:(id)name stage:(unint64_t)stage;
- (id)functionReflectionWithFunctionDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)meshFunctionHandleWithFunction:(id)function;
- (id)newFragmentShaderDebugInfo;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor selector:(SEL)selector;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)newRenderPipelineDescriptorForSpecialization;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newVertexShaderDebugInfo;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor selector:(SEL)selector;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)objectFunctionHandleWithFunction:(id)function;
- (id)pipelineBinaries;
- (id)reflectionForFunctionDescriptor:(id)descriptor;
- (id)tileFunctionHandleWithFunction:(id)function;
- (id)vertexFunctionHandleWithFunction:(id)function;
- (int64_t)textureWriteRoundingMode;
- (unint64_t)allocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions;
- (unint64_t)imageblockSampleLength;
- (unint64_t)maxTotalThreadgroupsPerMeshGrid;
- (unint64_t)maxTotalThreadsPerMeshThreadgroup;
- (unint64_t)maxTotalThreadsPerObjectThreadgroup;
- (unint64_t)maxTotalThreadsPerThreadgroup;
- (unint64_t)meshThreadExecutionWidth;
- (unint64_t)objectThreadExecutionWidth;
- (unint64_t)resourceIndex;
- (unint64_t)uniqueIdentifier;
- (unsigned)explicitVisibilityGroupID;
- (unsigned)getFragmentShaderTelemetryID;
- (unsigned)getVertexShaderTelemetryID;
- (void)dealloc;
@end

@implementation MTLToolsRenderPipelineState

- (MTLToolsRenderPipelineState)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsRenderPipelineState;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsRenderPipelineState;
  [(MTLToolsObject *)&v2 dealloc];
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

- (unint64_t)maxTotalThreadsPerThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalThreadsPerThreadgroup];
}

- (BOOL)threadgroupSizeMatchesTileSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject threadgroupSizeMatchesTileSize];
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

- (id)newVertexShaderDebugInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newVertexShaderDebugInfo];
}

- (id)newFragmentShaderDebugInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newFragmentShaderDebugInfo];
}

- (unsigned)getVertexShaderTelemetryID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getVertexShaderTelemetryID];
}

- (unsigned)getFragmentShaderTelemetryID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getFragmentShaderTelemetryID];
}

- (unint64_t)imageblockSampleLength
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject imageblockSampleLength];
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *dimensions;
  return [baseObject imageblockMemoryLengthForDimensions:&v6];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unsigned)explicitVisibilityGroupID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject explicitVisibilityGroupID];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (MTLDebugInstrumentationData)vertexDebugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject vertexDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)fragmentDebugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject fragmentDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)tileDebugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tileDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)objectDebugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject objectDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)meshDebugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject meshDebugInstrumentationData];
}

- (unint64_t)maxTotalThreadsPerObjectThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalThreadsPerObjectThreadgroup];
}

- (unint64_t)maxTotalThreadsPerMeshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalThreadsPerMeshThreadgroup];
}

- (unint64_t)objectThreadExecutionWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject objectThreadExecutionWidth];
}

- (unint64_t)meshThreadExecutionWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject meshThreadExecutionWidth];
}

- (unint64_t)maxTotalThreadgroupsPerMeshGrid
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalThreadgroupsPerMeshGrid];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerTileThreadgroup
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerTileThreadgroup];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerObjectThreadgroup
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerObjectThreadgroup];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerMeshThreadgroup
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerMeshThreadgroup];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)vertexFunctionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)fragmentFunctionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)tileFunctionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)objectFunctionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)meshFunctionHandleWithFunction:(id)function
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, function, self);
}

- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v6, function, self);
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor selector:(SEL)selector
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsVisibleFunctionTable alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsVisibleFunctionTable alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error
{
  v8 = unwrapArray(functions);
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v11;
  }

  return result;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v7 = objc_alloc_init(MEMORY[0x277CD6F80]);
  [v7 setVertexAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(functions, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(functions, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(functions, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(functions, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(functions, "meshAdditionalBinaryFunctions"))}];
  [v7 setVertexAdditionalBinaryFunctionResourceIndices:{objc_msgSend(functions, "vertexAdditionalBinaryFunctionResourceIndices")}];
  [v7 setFragmentAdditionalBinaryFunctionResourceIndices:{objc_msgSend(functions, "fragmentAdditionalBinaryFunctionResourceIndices")}];
  [v7 setTileAdditionalBinaryFunctionResourceIndices:{objc_msgSend(functions, "tileAdditionalBinaryFunctionResourceIndices")}];
  [v7 setObjectAdditionalBinaryFunctionResourceIndices:{objc_msgSend(functions, "objectAdditionalBinaryFunctionResourceIndices")}];
  [v7 setMeshAdditionalBinaryFunctionResourceIndices:{objc_msgSend(functions, "meshAdditionalBinaryFunctionResourceIndices")}];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v8)
  {
    return 0;
  }

  v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v8 parent:self];

  return v9;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor selector:(SEL)selector
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsIntersectionFunctionTable alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsIntersectionFunctionTable alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
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

- (MTLRenderPipelineReflection)reflection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflection];
}

- (id)functionHandleWithName:(id)name stage:(unint64_t)stage
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = MTLFunctionHandleToToolsFunctionHandleWithDevice(v8, self->super._device, self);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v8, function, self);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTLToolsRenderPipelineState;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:functions];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newRenderPipelineDescriptorForSpecialization
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newRenderPipelineDescriptorForSpecialization];
}

- (id)functionReflectionWithFunctionDescriptor:(id)descriptor stage:(unint64_t)stage
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTLToolsRenderPipelineState;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v11 device] newUnwrappedMTL4FunctionDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)reflectionForFunctionDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MTLToolsRenderPipelineState;
  v6 = [(MTLDevice *)[(MTLToolsObject *)&v9 device] newUnwrappedMTL4FunctionDescriptor:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v5);
  return v7;
}

@end