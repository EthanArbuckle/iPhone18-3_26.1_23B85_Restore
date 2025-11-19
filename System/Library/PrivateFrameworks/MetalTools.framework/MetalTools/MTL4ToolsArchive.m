@interface MTL4ToolsArchive
- (MTL4ToolsArchive)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
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
- (void)setLabel:(id)a3;
@end

@implementation MTL4ToolsArchive

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (MTL4ToolsArchive)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsArchive;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)a3 functionType:(unint64_t)a4 functionId:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4ToolsArchive;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:a3];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)newComputePipelineStateWithName:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTL4ToolsArchive;
  [(MTLToolsObject *)&v11 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (id)newRenderPipelineStateWithName:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = MTL4ToolsArchive;
  [(MTLToolsObject *)&v11 device];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:a3];
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

- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4ToolsArchive;
  v10 = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineDescriptor:a3];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:a4];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v13;
}

- (id)newComputePipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4ToolsArchive;
  v10 = [(MTLToolsObject *)&v14 device];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:a4];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4ToolsArchive;
  v10 = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)v10 newUnwrappedMTL4PipelineDescriptor:a3];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:a4];
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
  }

  objc_autoreleasePoolPop(v9);
  return v13;
}

- (id)newRenderPipelineStateWithName:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4ToolsArchive;
  v10 = [(MTLToolsObject *)&v14 device];
  if (a4)
  {
    a4 = [(MTLDevice *)v10 newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:a4];
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4BinaryFunctionDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [[MTL4ToolsBinaryFunction alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

@end