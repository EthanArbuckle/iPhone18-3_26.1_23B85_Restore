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
- (MTLToolsRenderPipelineState)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (id)fragmentFunctionHandleWithFunction:(id)a3;
- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4;
- (id)functionReflectionWithFunctionDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)meshFunctionHandleWithFunction:(id)a3;
- (id)newFragmentShaderDebugInfo;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 selector:(SEL)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newRenderPipelineDescriptorForSpecialization;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newVertexShaderDebugInfo;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 selector:(SEL)a4;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)objectFunctionHandleWithFunction:(id)a3;
- (id)pipelineBinaries;
- (id)reflectionForFunctionDescriptor:(id)a3;
- (id)tileFunctionHandleWithFunction:(id)a3;
- (id)vertexFunctionHandleWithFunction:(id)a3;
- (int64_t)textureWriteRoundingMode;
- (unint64_t)allocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3;
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

- (MTLToolsRenderPipelineState)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsRenderPipelineState;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsRenderPipelineState;
  [(MTLToolsObject *)&v2 dealloc];
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

- (unint64_t)maxTotalThreadsPerThreadgroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalThreadsPerThreadgroup];
}

- (BOOL)threadgroupSizeMatchesTileSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 threadgroupSizeMatchesTileSize];
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

- (id)newVertexShaderDebugInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newVertexShaderDebugInfo];
}

- (id)newFragmentShaderDebugInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newFragmentShaderDebugInfo];
}

- (unsigned)getVertexShaderTelemetryID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getVertexShaderTelemetryID];
}

- (unsigned)getFragmentShaderTelemetryID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getFragmentShaderTelemetryID];
}

- (unint64_t)imageblockSampleLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 imageblockSampleLength];
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v6 = *a3;
  return [v4 imageblockMemoryLengthForDimensions:&v6];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unsigned)explicitVisibilityGroupID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 explicitVisibilityGroupID];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)allocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

- (MTLDebugInstrumentationData)vertexDebugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 vertexDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)fragmentDebugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 fragmentDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)tileDebugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tileDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)objectDebugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 objectDebugInstrumentationData];
}

- (MTLDebugInstrumentationData)meshDebugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 meshDebugInstrumentationData];
}

- (unint64_t)maxTotalThreadsPerObjectThreadgroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalThreadsPerObjectThreadgroup];
}

- (unint64_t)maxTotalThreadsPerMeshThreadgroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalThreadsPerMeshThreadgroup];
}

- (unint64_t)objectThreadExecutionWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 objectThreadExecutionWidth];
}

- (unint64_t)meshThreadExecutionWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 meshThreadExecutionWidth];
}

- (unint64_t)maxTotalThreadgroupsPerMeshGrid
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalThreadgroupsPerMeshGrid];
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

- (id)vertexFunctionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)fragmentFunctionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)tileFunctionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)objectFunctionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)meshFunctionHandleWithFunction:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v5, a3, self);
}

- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];

  return MTLFunctionHandleToToolsFunctionHandle(v6, a3, self);
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 selector:(SEL)a4
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

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
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

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5
{
  v8 = unwrapArray(a3);
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v11;
  }

  return result;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
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

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CD6F80]);
  [v7 setVertexAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(a3, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(a3, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(a3, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{unwrapArray(objc_msgSend(a3, "meshAdditionalBinaryFunctions"))}];
  [v7 setVertexAdditionalBinaryFunctionResourceIndices:{objc_msgSend(a3, "vertexAdditionalBinaryFunctionResourceIndices")}];
  [v7 setFragmentAdditionalBinaryFunctionResourceIndices:{objc_msgSend(a3, "fragmentAdditionalBinaryFunctionResourceIndices")}];
  [v7 setTileAdditionalBinaryFunctionResourceIndices:{objc_msgSend(a3, "tileAdditionalBinaryFunctionResourceIndices")}];
  [v7 setObjectAdditionalBinaryFunctionResourceIndices:{objc_msgSend(a3, "objectAdditionalBinaryFunctionResourceIndices")}];
  [v7 setMeshAdditionalBinaryFunctionResourceIndices:{objc_msgSend(a3, "meshAdditionalBinaryFunctionResourceIndices")}];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v8)
  {
    return 0;
  }

  v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v8 parent:self];

  return v9;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 selector:(SEL)a4
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

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
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

- (MTLRenderPipelineReflection)reflection
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 reflection];
}

- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4
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

- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v8, a3, self);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTLToolsRenderPipelineState;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:a3];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newRenderPipelineDescriptorForSpecialization];
}

- (id)functionReflectionWithFunctionDescriptor:(id)a3 stage:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTLToolsRenderPipelineState;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v11 device] newUnwrappedMTL4FunctionDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)reflectionForFunctionDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MTLToolsRenderPipelineState;
  v6 = [(MTLDevice *)[(MTLToolsObject *)&v9 device] newUnwrappedMTL4FunctionDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v5);
  return v7;
}

@end