@interface MTL4DebugArchive
- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)a3 functionType:(unint64_t)a4 functionId:(id *)a5;
- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newComputePipelineStateWithName:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithName:(id)a3 error:(id *)a4;
@end

@implementation MTL4DebugArchive

- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)a3 functionType:(unint64_t)a4 functionId:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:a3];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)newComputePipelineStateWithName:(id)a3 error:(id *)a4
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4DebugArchive;
  [(MTLToolsObject *)&v12 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a4)
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
  if (a4)
  {
    *a4 = v13;
  }

  return v10;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a4)
  {
    v10 = v14;
  }

  if (v9)
  {
    v11 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v9 parent:self mtl4Descriptor:a3];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    *a4 = v14;
  }

  return v11;
}

- (id)newRenderPipelineStateWithName:(id)a3 error:(id *)a4
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4DebugArchive;
  [(MTLToolsObject *)&v12 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a4)
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
  if (a4)
  {
    *a4 = v13;
  }

  return v10;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a4)
  {
    v10 = v14;
  }

  if (v9)
  {
    v11 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v9 parent:self mtl4Descriptor:a3];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    *a4 = v14;
  }

  return v11;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v17 = 0;
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4DebugArchive;
  v10 = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineDescriptor:a3];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:a4];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a5)
  {
    v13 = v17;
  }

  if (v12)
  {
    v14 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v12 parent:self mtl4Descriptor:a3];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    *a5 = v17;
  }

  return v14;
}

- (id)newComputePipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v16 = 0;
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4DebugArchive;
  v10 = [(MTLToolsObject *)&v15 device];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:a4];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a5)
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
  if (a5)
  {
    *a5 = v16;
  }

  return v13;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v17 = 0;
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4DebugArchive;
  v10 = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineDescriptor:a3];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:a4];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a5)
  {
    v13 = v17;
  }

  if (v12)
  {
    v14 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v12 parent:self mtl4Descriptor:a3];
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
  }

  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    *a5 = v17;
  }

  return v14;
}

- (id)newRenderPipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v16 = 0;
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4DebugArchive;
  v10 = [(MTLToolsObject *)&v15 device];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:a4];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a5)
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
  if (a5)
  {
    *a5 = v16;
  }

  return v13;
}

- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4DebugArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4BinaryFunctionDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a4)
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
  if (a4)
  {
    *a4 = v14;
  }

  return v11;
}

@end