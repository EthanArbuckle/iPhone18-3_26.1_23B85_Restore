@interface MTL4ToolsCommandBuffer
- (MTL4ToolsCommandBuffer)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (id)computeCommandEncoder;
- (id)machineLearningCommandEncoder;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3 options:(unint64_t)a4;
- (id)sampledComputeCommandEncoder:(id *)a3 capacity:(unint64_t)a4;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)unwrappedMTL4RenderPassDescriptor:(id)a3;
- (unint64_t)currentGeneration;
- (unint64_t)privateDataOffset;
- (void)beginCommandBufferWithAllocator:(id)a3;
- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)endCommandBuffer;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)resolveCounterHeap:(id)a3 withRange:(_NSRange)a4 intoBuffer:(MTL4BufferRange)a5 waitFence:(id)a6 updateFence:(id)a7;
- (void)resolveCounterHeap:(id)a3 withRange:(_NSRange)a4 intoBuffer:(id)a5 atOffset:(unint64_t)a6 waitFence:(id)a7 updateFence:(id)a8;
- (void)setLabel:(id)a3;
- (void)setPrivateData:(id)a3;
- (void)setPrivateDataOffset:(unint64_t)a3;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)writeTimestampIntoHeap:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation MTL4ToolsCommandBuffer

- (MTL4ToolsCommandBuffer)initWithBaseObject:(id)a3 parent:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTL4ToolsCommandBuffer;
  v4 = [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:a4];
  if (v4)
  {
    v4->_usedResidencySets = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->_commandAllocator = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandBuffer;
  [(MTLToolsObject *)&v3 dealloc];
}

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

- (void)beginCommandBufferWithAllocator:(id)a3
{
  [(NSMutableArray *)self->_usedResidencySets removeAllObjects];
  v5 = a3;
  self->_commandAllocator = v5;
  [(MTL4CommandAllocator *)v5 attachCommandBuffer:self];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:v6 parent:[(MTLToolsObject *)self device]];
    [(MTL4ToolsCommandBuffer *)self setPrivateData:v7];
  }
}

- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4
{
  [(NSMutableArray *)self->_usedResidencySets removeAllObjects];
  v7 = a3;
  self->_commandAllocator = v7;
  [(MTL4CommandAllocator *)v7 attachCommandBuffer:self];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:v8 parent:[(MTLToolsObject *)self device]];
    [(MTL4ToolsCommandBuffer *)self setPrivateData:v9];
  }
}

- (void)endCommandBuffer
{
  [(MTL4CommandAllocator *)self->_commandAllocator detachCommandBuffer];

  self->_commandAllocator = 0;
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endCommandBuffer];
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsRenderCommandEncoder alloc] initWithCommandEncoder:v6 commandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)renderCommandEncoderWithDescriptor:(id)a3 options:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsRenderCommandEncoder alloc] initWithCommandEncoder:v8 commandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)computeCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsComputeCommandEncoder alloc] initWithCommandEncoder:v4 commandBuffer:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)useResidencySet:(id)a3
{
  [(NSMutableArray *)self->_usedResidencySets addObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useResidencySet:v6];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7) = v8;
      [(NSMutableArray *)self->_usedResidencySets addObject:a3[v7++]];
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)pushDebugGroup:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 popDebugGroup];
}

- (unint64_t)currentGeneration
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 currentGeneration];
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsRenderCommandEncoder alloc] initWithCommandEncoder:v10 commandBuffer:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v9);

  return v11;
}

- (id)sampledComputeCommandEncoder:(id *)a3 capacity:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsComputeCommandEncoder alloc] initWithCommandEncoder:v8 commandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (unint64_t)privateDataOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 privateDataOffset];
}

- (void)setPrivateDataOffset:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setPrivateDataOffset:a3];
}

- (void)setPrivateData:(id)a3
{
  self->_privateData = a3;
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setPrivateData:v6];
}

- (id)unwrappedMTL4RenderPassDescriptor:(id)a3
{
  v4 = [a3 copy];
  v5 = [a3 _descriptorPrivate];
  [v4 setRasterizationRateMap:{objc_msgSend(*(v5 + 168), "baseObject")}];
  [v4 setVisibilityResultBuffer:{objc_msgSend(*(v5 + 8), "baseObject")}];
  v6 = 0;
  v7 = *v5;
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    if (v8)
    {
      v9 = v8;
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
    }

    ++v6;
  }

  while (v6 != 8);
  v10 = [v7 _descriptorAtIndex:8];
  if (v10)
  {
    v11 = v10;
    [objc_msgSend(v4 "depthAttachment")];
    [objc_msgSend(v4 "depthAttachment")];
  }

  v12 = [v7 _descriptorAtIndex:9];
  if (v12)
  {
    v13 = v12;
    [objc_msgSend(v4 "stencilAttachment")];
    [objc_msgSend(v4 "stencilAttachment")];
  }

  return v4;
}

- (id)machineLearningCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [(MTL4ToolsCommandEncoder *)[MTL4ToolsMachineLearningCommandEncoder alloc] initWithCommandEncoder:v4 commandBuffer:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)writeTimestampIntoHeap:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 writeTimestampIntoHeap:v7 atIndex:a4];
}

- (void)resolveCounterHeap:(id)a3 withRange:(_NSRange)a4 intoBuffer:(id)a5 atOffset:(unint64_t)a6 waitFence:(id)a7 updateFence:(id)a8
{
  length = a4.length;
  location = a4.location;
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = [a5 baseObject];
  v17 = [a7 baseObject];
  [a8 baseObject];

  [v14 resolveCounterHeap:v15 withRange:location intoBuffer:length atOffset:v16 waitFence:a6 updateFence:v17];
}

- (void)resolveCounterHeap:(id)a3 withRange:(_NSRange)a4 intoBuffer:(MTL4BufferRange)a5 waitFence:(id)a6 updateFence:(id)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  length = a4.length;
  location = a4.location;
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = [a6 baseObject];
  [a7 baseObject];

  [v13 resolveCounterHeap:v14 withRange:location intoBuffer:length waitFence:var0 updateFence:{var1, v15}];
}

@end