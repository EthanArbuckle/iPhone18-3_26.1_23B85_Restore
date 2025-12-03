@interface MTL4ToolsCommandQueue
- (MTL4ToolsCommandQueue)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (unint64_t)lastCommittedCommandBufferGeneration;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options preprocessHandler:(id)handler;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)signalDrawable:(id)drawable;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)waitForDrawable:(id)drawable;
- (void)waitForEvent:(id)event value:(unint64_t)value;
@end

@implementation MTL4ToolsCommandQueue

- (MTL4ToolsCommandQueue)initWithBaseObject:(id)object parent:(id)parent
{
  v6.receiver = self;
  v6.super_class = MTL4ToolsCommandQueue;
  v4 = [(MTLToolsObject *)&v6 initWithBaseObject:object parent:parent];
  if (v4)
  {
    v4->_addedResidencySets = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandQueue;
  [(MTLToolsObject *)&v3 dealloc];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (unint64_t)lastCommittedCommandBufferGeneration
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandQueue;
  return [-[MTLToolsObject baseObject](&v3 baseObject)];
}

- (void)commit:(const void *)commit count:(unint64_t)count
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [commit[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
    v9 = commit[count - 1];
  }

  else
  {
    v9 = 0;
  }

  self->_lastCommittedCommandBuffer = v9;
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 commit:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      baseObject = [commit[v9] baseObject];
      *(__p[0] + v9++) = baseObject;
    }

    while (count != v9);
    v11 = commit[count - 1];
  }

  else
  {
    v11 = 0;
  }

  self->_lastCommittedCommandBuffer = v11;
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 commit:__p[0] count:count options:options];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  self->_lastCommittedCommandBuffer = 0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject signalEvent:baseObject2 value:value];
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  self->_lastCommittedCommandBuffer = 0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject waitForEvent:baseObject2 value:value];
}

- (void)signalDrawable:(id)drawable
{
  self->_lastCommittedCommandBuffer = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject signalDrawable:drawable];
}

- (void)waitForDrawable:(id)drawable
{
  self->_lastCommittedCommandBuffer = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForDrawable:drawable];
}

- (void)addResidencySet:(id)set
{
  [(NSMutableArray *)self->_addedResidencySets addObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject addResidencySet:baseObject2];
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7) = baseObject;
      [(NSMutableArray *)self->_addedResidencySets addObject:sets[v7++]];
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 addResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)removeResidencySet:(id)set
{
  [(NSMutableArray *)self->_addedResidencySets removeObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject removeResidencySet:baseObject2];
}

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7) = baseObject;
      [(NSMutableArray *)self->_addedResidencySets removeObject:sets[v7++]];
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 removeResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mappings baseObject];
  baseObject3 = [heap baseObject];

  [baseObject updateTextureMappings:baseObject2 heap:baseObject3 operations:operations count:count];
}

- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyTextureMappingsFromTexture:baseObject2 toTexture:baseObject3 operations:operations count:count];
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mappings baseObject];
  baseObject3 = [heap baseObject];

  [baseObject updateBufferMappings:baseObject2 heap:baseObject3 operations:operations count:count];
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [toBuffer baseObject];

  [baseObject copyBufferMappingsFromBuffer:baseObject2 toBuffer:baseObject3 operations:operations count:count];
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options preprocessHandler:(id)handler
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v11 = 0;
    do
    {
      baseObject = [commit[v11] baseObject];
      *(__p[0] + v11++) = baseObject;
    }

    while (count != v11);
  }

  commitFeedbackDispatch = [options commitFeedbackDispatch];
  if (handler | commitFeedbackDispatch)
  {
    v14 = objc_alloc_init(MEMORY[0x277CD6AD8]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__MTL4ToolsCommandQueue_commit_count_options_preprocessHandler___block_invoke;
    v16[3] = &unk_2787B4F00;
    v16[5] = v14;
    v16[6] = handler;
    v16[4] = commitFeedbackDispatch;
    [v14 addFeedbackHandler:v16];
  }

  else
  {
    v14 = 0;
  }

  [options setCommitFeedbackDispatch:0];
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 commit:__p[0] count:count options:v14];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void __64__MTL4ToolsCommandQueue_commit_count_options_preprocessHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  [*(a1 + 32) executeBlocksWithCommitFeedback:a2];

  v5 = *(a1 + 40);
}

@end