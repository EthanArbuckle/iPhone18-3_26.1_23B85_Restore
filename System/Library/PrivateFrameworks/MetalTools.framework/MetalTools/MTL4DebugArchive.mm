@interface MTL4DebugArchive
- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)descriptor functionType:(unint64_t)type functionId:(id *)id;
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

@implementation MTL4DebugArchive

- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)descriptor functionType:(unint64_t)type functionId:(id *)id
{
  v9 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)newComputePipelineStateWithName:(id)name error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4DebugArchive;
  [(MTLToolsObject *)&v12 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v9 = v13;
  }

  if (v8)
  {
    v10 = [(MTLToolsObject *)[MTLDebugComputePipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = v13;
  }

  return v10;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v10 = v14;
  }

  if (v9)
  {
    v11 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v9 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = v14;
  }

  return v11;
}

- (id)newRenderPipelineStateWithName:(id)name error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4DebugArchive;
  [(MTLToolsObject *)&v12 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v9 = v13;
  }

  if (v8)
  {
    v10 = [(MTLToolsRenderPipelineState *)[MTLDebugRenderPipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = v13;
  }

  return v10;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v10 = v14;
  }

  if (v9)
  {
    v11 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v9 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = v14;
  }

  return v11;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v17 = 0;
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4DebugArchive;
  device = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v13 = v17;
  }

  if (v12)
  {
    v14 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v12 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    *error = v17;
  }

  return v14;
}

- (id)newComputePipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error
{
  v16 = 0;
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4DebugArchive;
  device = [(MTLToolsObject *)&v15 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:descriptor];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v12 = v16;
  }

  if (v11)
  {
    v13 = [(MTLToolsObject *)[MTLDebugComputePipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    *error = v16;
  }

  return v13;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v17 = 0;
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4DebugArchive;
  device = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v13 = v17;
  }

  if (v12)
  {
    v14 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v12 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v14 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    *error = v17;
  }

  return v14;
}

- (id)newRenderPipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error
{
  v16 = 0;
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4DebugArchive;
  device = [(MTLToolsObject *)&v15 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:descriptor];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v12 = v16;
  }

  if (v11)
  {
    v13 = [(MTLToolsRenderPipelineState *)[MTLDebugRenderPipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    *error = v16;
  }

  return v13;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
  {
    v10 = v14;
  }

  if (v9)
  {
    v11 = [(MTL4ToolsBinaryFunction *)[MTL4DebugBinaryFunction alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    *error = v14;
  }

  return v11;
}

@end