@interface MTL4ToolsCommandBuffer
- (MTL4ToolsCommandBuffer)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (id)computeCommandEncoder;
- (id)machineLearningCommandEncoder;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options;
- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)unwrappedMTL4RenderPassDescriptor:(id)descriptor;
- (unint64_t)currentGeneration;
- (unint64_t)privateDataOffset;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)dealloc;
- (void)endCommandBuffer;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence;
- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(id)buffer atOffset:(unint64_t)offset waitFence:(id)fence updateFence:(id)updateFence;
- (void)setLabel:(id)label;
- (void)setPrivateData:(id)data;
- (void)setPrivateDataOffset:(unint64_t)offset;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4ToolsCommandBuffer

- (MTL4ToolsCommandBuffer)initWithBaseObject:(id)object parent:(id)parent
{
  v6.receiver = self;
  v6.super_class = MTL4ToolsCommandBuffer;
  v4 = [(MTLToolsObject *)&v6 initWithBaseObject:object parent:parent];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  [(NSMutableArray *)self->_usedResidencySets removeAllObjects];
  allocatorCopy = allocator;
  self->_commandAllocator = allocatorCopy;
  [(MTL4CommandAllocator *)allocatorCopy attachCommandBuffer:self];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:v6 parent:[(MTLToolsObject *)self device]];
    [(MTL4ToolsCommandBuffer *)self setPrivateData:v7];
  }
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  [(NSMutableArray *)self->_usedResidencySets removeAllObjects];
  allocatorCopy = allocator;
  self->_commandAllocator = allocatorCopy;
  [(MTL4CommandAllocator *)allocatorCopy attachCommandBuffer:self];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endCommandBuffer];
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
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

- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options
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

- (void)useResidencySet:(id)set
{
  [(NSMutableArray *)self->_usedResidencySets addObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject useResidencySet:baseObject2];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7) = baseObject;
      [(NSMutableArray *)self->_usedResidencySets addObject:sets[v7++]];
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)pushDebugGroup:(id)group
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject pushDebugGroup:group];
}

- (void)popDebugGroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject popDebugGroup];
}

- (unint64_t)currentGeneration
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentGeneration];
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
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

- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject privateDataOffset];
}

- (void)setPrivateDataOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setPrivateDataOffset:offset];
}

- (void)setPrivateData:(id)data
{
  self->_privateData = data;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [data baseObject];

  [baseObject setPrivateData:baseObject2];
}

- (id)unwrappedMTL4RenderPassDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  _descriptorPrivate = [descriptor _descriptorPrivate];
  [v4 setRasterizationRateMap:{objc_msgSend(*(_descriptorPrivate + 168), "baseObject")}];
  [v4 setVisibilityResultBuffer:{objc_msgSend(*(_descriptorPrivate + 8), "baseObject")}];
  v6 = 0;
  v7 = *_descriptorPrivate;
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

- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject writeTimestampIntoHeap:baseObject2 atIndex:index];
}

- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(id)buffer atOffset:(unint64_t)offset waitFence:(id)fence updateFence:(id)updateFence
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];
  baseObject3 = [buffer baseObject];
  baseObject4 = [fence baseObject];
  [updateFence baseObject];

  [baseObject resolveCounterHeap:baseObject2 withRange:location intoBuffer:length atOffset:baseObject3 waitFence:offset updateFence:baseObject4];
}

- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];
  baseObject3 = [fence baseObject];
  [updateFence baseObject];

  [baseObject resolveCounterHeap:baseObject2 withRange:location intoBuffer:length waitFence:var0 updateFence:{var1, baseObject3}];
}

@end