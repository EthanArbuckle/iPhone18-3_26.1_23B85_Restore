@interface MTLToolsIOCommandBuffer
- (BOOL)isCommitted;
- (MTLToolsIOCommandBuffer)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSError)error;
- (NSString)label;
- (id).cxx_construct;
- (int64_t)status;
- (unint64_t)globalTraceObjectID;
- (void)addBarrier;
- (void)addCompletedHandler:(id)a3;
- (void)barrier;
- (void)commit;
- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4;
- (void)dealloc;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)enqueue;
- (void)invokeCompletedHandlers;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 handle:(id)a6 handleOffset:(unint64_t)a7;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)popDebugGroup;
- (void)preCommit;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)tryCancel;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
- (void)waitUntilCompleted;
@end

@implementation MTLToolsIOCommandBuffer

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

- (NSError)error
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 error];
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

- (MTLToolsIOCommandBuffer)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsIOCommandBuffer;
  result = [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
  if (result)
  {
    *(result + 9) = 0;
  }

  return result;
}

- (void)dealloc
{
  if ((*(self + 64) & 1) == 0)
  {
    [(MTLToolsIOCommandBuffer *)self invokeCompletedHandlers];
  }

  v3.receiver = self;
  v3.super_class = MTLToolsIOCommandBuffer;
  [(MTLToolsObject *)&v3 dealloc];
}

- (BOOL)isCommitted
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isCommitted];
}

- (void)addCompletedHandler:(id)a3
{
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(a3);
  os_unfair_lock_lock(self + 9);
  v6 = (self + 40);
  v8 = *(self + 6);
  v7 = *(self + 7);
  if (v8 >= v7)
  {
    v10 = (v8 - *v6) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *v6;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(self + 40, v13);
    }

    v14 = (8 * v10);
    *v14 = v5;
    v9 = 8 * v10 + 8;
    v15 = *(self + 6) - *v6;
    v16 = v14 - v15;
    memcpy(v14 - v15, *v6, v15);
    v17 = *v6;
    *v6 = v16;
    *(self + 6) = v9;
    *(self + 7) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v5;
    v9 = (v8 + 8);
  }

  *(self + 6) = v9;

  os_unfair_lock_unlock(self + 9);
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 encodeWaitForEvent:v7 value:a4];
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 encodeSignalEvent:v7 value:a4];
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 encodeWaitForEvent:v7 value:a4];
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 encodeSignalEvent:v7 value:a4];
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 handle:(id)a6 handleOffset:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a6 baseObject];

  [v12 loadBuffer:v13 offset:a4 size:a5 sourceHandle:v14 sourceHandleOffset:a7];
}

- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 loadBytes:a3 size:a4 sourceHandle:a5 sourceHandleOffset:a6];
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a6 baseObject];

  [v12 loadBuffer:v13 offset:a4 size:a5 sourceHandle:v14 sourceHandleOffset:a7];
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v20 = *a6;
  v19 = *a9;
  [v17 loadTexture:v18 slice:a4 level:a5 size:&v20 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v19 sourceHandle:objc_msgSend(a10 sourceHandleOffset:{"baseObject"), a11}];
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v20 = *a6;
  v19 = *a9;
  [v17 loadTexture:v18 slice:a4 level:a5 size:&v20 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v19 sourceHandle:objc_msgSend(a10 sourceHandleOffset:{"baseObject"), a11}];
}

- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 copyStatusToBuffer:v7 offset:a4];
}

- (void)commit
{
  [(MTLToolsIOCommandBuffer *)self preCommit];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 commit];
}

- (void)waitUntilCompleted
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 waitUntilCompleted];
}

- (void)tryCancel
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 tryCancel];
}

- (void)barrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 addBarrier];
}

- (void)addBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 addBarrier];
}

- (void)enqueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 enqueue];
}

- (int64_t)status
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 status];
}

- (unint64_t)globalTraceObjectID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 globalTraceObjectID];
}

- (void)invokeCompletedHandlers
{
  *(self + 64) = 1;
  os_unfair_lock_lock(self + 9);
  v3 = *(self + 5);
  v4 = *(self + 6);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      (v5)[2](v5, self);
      _Block_release(v5);
    }

    while (v3 != v4);
    v3 = *(self + 5);
  }

  *(self + 6) = v3;

  os_unfair_lock_unlock(self + 9);
}

- (void)preCommit
{
  v2 = *(self + 2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__MTLToolsIOCommandBuffer_preCommit__block_invoke;
  v3[3] = &unk_2787B5270;
  v3[4] = self;
  [v2 addCompletedHandler:v3];
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end