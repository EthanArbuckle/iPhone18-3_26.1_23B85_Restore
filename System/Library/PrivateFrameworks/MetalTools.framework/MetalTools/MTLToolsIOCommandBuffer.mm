@interface MTLToolsIOCommandBuffer
- (BOOL)isCommitted;
- (MTLToolsIOCommandBuffer)initWithBaseObject:(id)object parent:(id)parent;
- (NSError)error;
- (NSString)label;
- (id).cxx_construct;
- (int64_t)status;
- (unint64_t)globalTraceObjectID;
- (void)addBarrier;
- (void)addCompletedHandler:(id)handler;
- (void)barrier;
- (void)commit;
- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)enqueue;
- (void)invokeCompletedHandlers;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size handle:(id)handle handleOffset:(unint64_t)handleOffset;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)popDebugGroup;
- (void)preCommit;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)tryCancel;
- (void)waitForEvent:(id)event value:(unint64_t)value;
- (void)waitUntilCompleted;
@end

@implementation MTLToolsIOCommandBuffer

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

- (NSError)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject error];
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

- (MTLToolsIOCommandBuffer)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsIOCommandBuffer;
  result = [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isCommitted];
}

- (void)addCompletedHandler:(id)handler
{
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(handler);
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

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeWaitForEvent:baseObject2 value:value];
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeSignalEvent:baseObject2 value:value];
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeWaitForEvent:baseObject2 value:value];
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeSignalEvent:baseObject2 value:value];
}

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size handle:(id)handle handleOffset:(unint64_t)handleOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [handle baseObject];

  [baseObject loadBuffer:baseObject2 offset:offset size:size sourceHandle:baseObject3 sourceHandleOffset:handleOffset];
}

- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject loadBytes:bytes size:size sourceHandle:handle sourceHandleOffset:offset];
}

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [handle baseObject];

  [baseObject loadBuffer:baseObject2 offset:offset size:size sourceHandle:baseObject3 sourceHandleOffset:handleOffset];
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *size;
  v19 = *origin;
  [baseObject loadTexture:baseObject2 slice:slice level:level size:&v20 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v19 sourceHandle:objc_msgSend(handle sourceHandleOffset:{"baseObject"), offset}];
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *size;
  v19 = *origin;
  [baseObject loadTexture:baseObject2 slice:slice level:level size:&v20 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v19 sourceHandle:objc_msgSend(handle sourceHandleOffset:{"baseObject"), offset}];
}

- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject copyStatusToBuffer:baseObject2 offset:offset];
}

- (void)commit
{
  [(MTLToolsIOCommandBuffer *)self preCommit];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject commit];
}

- (void)waitUntilCompleted
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilCompleted];
}

- (void)tryCancel
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject tryCancel];
}

- (void)barrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addBarrier];
}

- (void)addBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addBarrier];
}

- (void)enqueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject enqueue];
}

- (int64_t)status
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject status];
}

- (unint64_t)globalTraceObjectID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalTraceObjectID];
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