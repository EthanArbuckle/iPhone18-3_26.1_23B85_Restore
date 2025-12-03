@interface MTL4GPUDebugArchive
- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithName:(id)name error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name error:(id *)error;
@end

@implementation MTL4GPUDebugArchive

- (id)newComputePipelineStateWithName:(id)name error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugArchive;
  [(MTLToolsObject *)&v11 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsObject *)[MTLGPUDebugComputePipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4GPUDebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTLToolsObject *)[MTLGPUDebugComputePipelineState alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newRenderPipelineStateWithName:(id)name error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugArchive;
  [(MTLToolsObject *)&v11 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsRenderPipelineState *)[MTLGPUDebugRenderPipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4GPUDebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTLToolsRenderPipelineState *)[MTLGPUDebugRenderPipelineState alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugArchive;
  device = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [(MTLToolsObject *)[MTLGPUDebugComputePipelineState alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v13;
}

- (id)newComputePipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4GPUDebugArchive;
  device = [(MTLToolsObject *)&v14 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:descriptor];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [(MTLToolsObject *)[MTLGPUDebugComputePipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugArchive;
  device = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [(MTLToolsRenderPipelineState *)[MTLGPUDebugRenderPipelineState alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v13 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v9);
  return v13;
}

- (id)newRenderPipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4GPUDebugArchive;
  device = [(MTLToolsObject *)&v14 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:descriptor];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [(MTLToolsRenderPipelineState *)[MTLGPUDebugRenderPipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4GPUDebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTL4ToolsBinaryFunction *)[MTL4GPUDebugBinaryFunction alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

@end