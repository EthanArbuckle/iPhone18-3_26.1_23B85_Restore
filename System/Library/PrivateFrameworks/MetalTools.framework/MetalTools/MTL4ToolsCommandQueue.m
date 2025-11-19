@interface MTL4ToolsCommandQueue
- (MTL4ToolsCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (unint64_t)lastCommittedCommandBufferGeneration;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)commit:(const void *)a3 count:(unint64_t)a4;
- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5;
- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5 preprocessHandler:(id)a6;
- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)dealloc;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)signalDrawable:(id)a3;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)waitForDrawable:(id)a3;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
@end

@implementation MTL4ToolsCommandQueue

- (MTL4ToolsCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTL4ToolsCommandQueue;
  v4 = [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:a4];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (unint64_t)lastCommittedCommandBufferGeneration
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandQueue;
  return [-[MTLToolsObject baseObject](&v3 baseObject)];
}

- (void)commit:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
    v9 = a3[a4 - 1];
  }

  else
  {
    v9 = 0;
  }

  self->_lastCommittedCommandBuffer = v9;
  v10 = [(MTLToolsObject *)self baseObject];
  [v10 commit:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = [a3[v9] baseObject];
      *(__p[0] + v9++) = v10;
    }

    while (a4 != v9);
    v11 = a3[a4 - 1];
  }

  else
  {
    v11 = 0;
  }

  self->_lastCommittedCommandBuffer = v11;
  v12 = [(MTLToolsObject *)self baseObject];
  [v12 commit:__p[0] count:a4 options:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  self->_lastCommittedCommandBuffer = 0;
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 signalEvent:v7 value:a4];
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  self->_lastCommittedCommandBuffer = 0;
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 waitForEvent:v7 value:a4];
}

- (void)signalDrawable:(id)a3
{
  self->_lastCommittedCommandBuffer = 0;
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 signalDrawable:a3];
}

- (void)waitForDrawable:(id)a3
{
  self->_lastCommittedCommandBuffer = 0;
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 waitForDrawable:a3];
}

- (void)addResidencySet:(id)a3
{
  [(NSMutableArray *)self->_addedResidencySets addObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 addResidencySet:v6];
}

- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7) = v8;
      [(NSMutableArray *)self->_addedResidencySets addObject:a3[v7++]];
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 addResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)removeResidencySet:(id)a3
{
  [(NSMutableArray *)self->_addedResidencySets removeObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 removeResidencySet:v6];
}

- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7) = v8;
      [(NSMutableArray *)self->_addedResidencySets removeObject:a3[v7++]];
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 removeResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 updateTextureMappings:v11 heap:v12 operations:a5 count:a6];
}

- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 copyTextureMappingsFromTexture:v11 toTexture:v12 operations:a5 count:a6];
}

- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 updateBufferMappings:v11 heap:v12 operations:a5 count:a6];
}

- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 copyBufferMappingsFromBuffer:v11 toBuffer:v12 operations:a5 count:a6];
}

- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5 preprocessHandler:(id)a6
{
  std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v11 = 0;
    do
    {
      v12 = [a3[v11] baseObject];
      *(__p[0] + v11++) = v12;
    }

    while (a4 != v11);
  }

  v13 = [a5 commitFeedbackDispatch];
  if (a6 | v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CD6AD8]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__MTL4ToolsCommandQueue_commit_count_options_preprocessHandler___block_invoke;
    v16[3] = &unk_2787B4F00;
    v16[5] = v14;
    v16[6] = a6;
    v16[4] = v13;
    [v14 addFeedbackHandler:v16];
  }

  else
  {
    v14 = 0;
  }

  [a5 setCommitFeedbackDispatch:0];
  v15 = [(MTLToolsObject *)self baseObject];
  [v15 commit:__p[0] count:a4 options:v14];
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