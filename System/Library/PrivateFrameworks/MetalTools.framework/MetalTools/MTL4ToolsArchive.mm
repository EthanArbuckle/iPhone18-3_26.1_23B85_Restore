@interface MTL4ToolsArchive
- (MTL4ToolsArchive)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
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
- (void)setLabel:(id)label;
@end

@implementation MTL4ToolsArchive

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (MTL4ToolsArchive)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsArchive;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (id)newArchiveReplyForPipelineFunctionWithDescriptor:(id)descriptor functionType:(unint64_t)type functionId:(id *)id
{
  v9 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4ToolsArchive;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v13 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)newComputePipelineStateWithName:(id)name error:(id *)error
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
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

- (id)newRenderPipelineStateWithName:(id)name error:(id *)error
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

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4ToolsArchive;
  device = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
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

- (id)newComputePipelineStateWithName:(id)name dynamicLinkingDescriptor:(id)descriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4ToolsArchive;
  device = [(MTLToolsObject *)&v14 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:descriptor];
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

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4ToolsArchive;
  device = [(MTLToolsObject *)&v15 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
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
  v14.super_class = MTL4ToolsArchive;
  device = [(MTLToolsObject *)&v14 device];
  if (descriptor)
  {
    descriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:descriptor];
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

- (id)newBinaryFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MTL4ToolsArchive;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v12 device] newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
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