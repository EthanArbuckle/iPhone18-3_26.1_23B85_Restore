@interface MTLToolsCommandBuffer
+ (id)unwrapMTLComputePassDescriptorInternal:(id)a3;
- (BOOL)addRetainedObject:(id)a3;
- (BOOL)commitAndWaitUntilSubmitted;
- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3;
- (BOOL)isProfilingEnabled;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)retainedReferences;
- (MTLLogContainer)logs;
- (MTLToolsCommandBuffer)initWithCommandBuffer:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (NSDictionary)profilingResults;
- (NSError)error;
- (NSMutableDictionary)userDictionary;
- (NSString)label;
- (double)GPUEndTime;
- (double)GPUStartTime;
- (double)kernelEndTime;
- (double)kernelStartTime;
- (id).cxx_construct;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)debugCommandEncoder;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)unwrapMTLAccelerationStructurePassDescriptor:(id)a3;
- (id)unwrapMTLBlitPassDescriptor:(id)a3;
- (id)unwrapMTLRenderPassDescriptor:(id)a3;
- (id)unwrapMTLResourceStatePassDescriptor:(id)a3;
- (unint64_t)errorOptions;
- (unint64_t)getListIndex;
- (unint64_t)globalTraceObjectID;
- (unint64_t)protectionOptions;
- (unint64_t)status;
- (void)__waitUntilCompletedAsync:(id)a3;
- (void)__waitUntilScheduledAsync:(id)a3;
- (void)addCompletedHandler:(id)a3;
- (void)addPurgedHeap:(id)a3;
- (void)addPurgedResource:(id)a3;
- (void)addScheduledHandler:(id)a3;
- (void)addSynchronizationNotification:(id)a3;
- (void)clearRetainedObjects;
- (void)commit;
- (void)commitAndHold;
- (void)commitWithDeadline:(unint64_t)a3;
- (void)dealloc;
- (void)debugBufferContentsWithLength:(unint64_t *)a3;
- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4;
- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeConditionalAbortEvent:(id)a3;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7;
- (void)encodeDashboardTagForResourceGroup:(id)a3;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5;
- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)enqueue;
- (void)invokeCompletedHandlers;
- (void)invokeScheduledHandlers;
- (void)popDebugGroup;
- (void)preCommit;
- (void)preCompletionHandlers;
- (void)presentDrawable:(id)a3;
- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4;
- (void)presentDrawable:(id)a3 atTime:(double)a4;
- (void)presentDrawable:(id)a3 options:(id)a4;
- (void)pushDebugGroup:(id)a3;
- (void)retainObjectsFromRenderPassDescriptor:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLogs:(id)a3;
- (void)setProtectionOptions:(unint64_t)a3;
- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4;
- (void)useInternalResidencySet:(id)a3;
- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation MTLToolsCommandBuffer

- (MTLToolsCommandBuffer)initWithCommandBuffer:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLToolsCommandBuffer;
  v6 = [(MTLToolsObject *)&v9 initWithBaseObject:a3 parent:a4];
  v7 = v6;
  if (v6)
  {
    if ([(MTLToolsCommandBuffer *)v6 retainedReferences])
    {
      *(v7 + 17) = objc_alloc_init(MEMORY[0x277CBEB58]);
      *(v7 + 10) = 0;
    }

    *(v7 + 12) = 0;
    *(v7 + 14) = [*(v7 + 1) snapshotPerfSampleHandlerAndStatEnabled:v7 + 120 forCommandBuffer:{-[MTLToolsObject originalObject](v7, "originalObject")}];
    *(v7 + 16) = [a5 deadlineProfile];
  }

  return v7;
}

- (void)dealloc
{
  v3 = *(self + 14);
  if (v3)
  {
    _Block_release(v3);
  }

  if ((*(self + 104) & 1) == 0)
  {
    [(MTLToolsCommandBuffer *)self invokeScheduledHandlers];
    [(MTLToolsCommandBuffer *)self invokeCompletedHandlers];
  }

  v4.receiver = self;
  v4.super_class = MTLToolsCommandBuffer;
  [(MTLToolsObject *)&v4 dealloc];
}

- (void)invokeScheduledHandlers
{
  [(MTLToolsCommandBuffer *)self preScheduledHandlers];
  os_unfair_lock_lock(self + 12);
  v3 = *(self + 7);
  v4 = *(self + 8);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      (v5)[2](v5, self);
      _Block_release(v5);
    }

    while (v3 != v4);
    v3 = *(self + 7);
  }

  *(self + 8) = v3;
  os_unfair_lock_unlock(self + 12);

  [(MTLToolsCommandBuffer *)self postScheduledHandlers];
}

- (void)invokeCompletedHandlers
{
  [(MTLToolsCommandBuffer *)self preCompletionHandlers];
  os_unfair_lock_lock(self + 12);
  v3 = *(self + 10);
  v4 = *(self + 11);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      (v5)[2](v5, self);
      _Block_release(v5);
    }

    while (v3 != v4);
    v3 = *(self + 10);
  }

  *(self + 11) = v3;
  os_unfair_lock_unlock(self + 12);

  [(MTLToolsCommandBuffer *)self postCompletionHandlers];
}

- (BOOL)addRetainedObject:(id)a3
{
  v4 = *(self + 17);
  if (a3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    if (*(self + 44))
    {
      v8 = (self + 40);
    }

    else
    {
      v8 = 0;
    }

    if (*(self + 44))
    {
      os_unfair_lock_lock(self + 10);
      v4 = *(self + 17);
    }

    [v4 addObject:a3];
    if (v8)
    {
      os_unfair_lock_unlock(v8);
    }
  }

  return v6;
}

- (void)clearRetainedObjects
{
  v3 = *(self + 17);
  if (v3)
  {
    if (*(self + 44))
    {
      v4 = (self + 40);
    }

    else
    {
      v4 = 0;
    }

    if (*(self + 44))
    {
      os_unfair_lock_lock(self + 10);
      v3 = *(self + 17);
    }

    [v3 removeAllObjects];
    if (v4)
    {

      os_unfair_lock_unlock(v4);
    }
  }
}

- (void)preCompletionHandlers
{
  if (*(self + 120) == 1)
  {
    v10 = v2;
    v11 = v3;
    if ([(MTLToolsCommandBuffer *)self status]>= 2)
    {
      v9 = 0;
      do
      {
        v5 = *(self + 1);
        v8 = 0;
        v6 = [*(v5 + 40) extractDataAndNumSamples:&v8 forRequester:*(self + 2) isLast:&v9];
        v7 = *(self + 14);
        if (v7)
        {
          (*(v7 + 16))(v7, self, v6, v8);
        }
      }

      while (v9 != 1);
    }
  }
}

- (void)preCommit
{
  *(self + 9) |= 1u;
  v3 = *(self + 2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MTLToolsCommandBuffer_preCommit__block_invoke;
  v6[3] = &unk_2787B3A28;
  v6[4] = self;
  [v3 addScheduledHandler:v6];
  v4 = *(self + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MTLToolsCommandBuffer_preCommit__block_invoke_2;
  v5[3] = &unk_2787B3A28;
  v5[4] = self;
  [v4 addCompletedHandler:v5];
}

- (void)commit
{
  [(MTLToolsCommandBuffer *)self preCommit];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 commit];
}

- (void)commitAndHold
{
  [(MTLToolsCommandBuffer *)self preCommit];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 commitAndHold];
}

- (BOOL)commitAndWaitUntilSubmitted
{
  [(MTLToolsCommandBuffer *)self preCommit];
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 commitAndWaitUntilSubmitted];
}

- (id)debugCommandEncoder
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 debugCommandEncoder];
}

- (MTLLogContainer)logs
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 logs];
}

- (void)setLogs:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLogs:a3];
}

- (BOOL)retainedReferences
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 retainedReferences];
}

- (double)GPUStartTime
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 GPUStartTime];
  return result;
}

- (double)GPUEndTime
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 GPUEndTime];
  return result;
}

- (unint64_t)globalTraceObjectID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 globalTraceObjectID];
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

- (void)enqueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 enqueue];
}

- (void)presentDrawable:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 presentDrawable:a3];
}

- (void)presentDrawable:(id)a3 atTime:(double)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 presentDrawable:a3 atTime:a4];
}

- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 presentDrawable:a3 afterMinimumDuration:a4];
}

- (void)presentDrawable:(id)a3 options:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 presentDrawable:a3 options:a4];
}

- (void)waitUntilScheduled
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 waitUntilScheduled];
}

- (void)waitUntilCompleted
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 waitUntilCompleted];
}

- (unint64_t)status
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 status];
}

- (NSError)error
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 error];
}

- (id)blitCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLToolsBlitCommandEncoder alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)computeCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLToolsComputeCommandEncoder alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)accelerationStructureCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [(MTLToolsCommandEncoder *)[MTLToolsAccelerationStructureCommandEncoder alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)resourceStateCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLToolsResourceStateCommandEncoder alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (double)kernelStartTime
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 kernelStartTime];
  return result;
}

- (double)kernelEndTime
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 kernelEndTime];
  return result;
}

- (void)debugBufferContentsWithLength:(unint64_t *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 debugBufferContentsWithLength:a3];
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

- (void)encodeDashboardTagForResourceGroup:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 encodeDashboardTagForResourceGroup:v5];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];

  [v10 encodeDashboardFinalizeForResourceGroup:v11 dashboard:a4 value:a5 forIndex:a6];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];

  [v12 encodeDashboardFinalizeForResourceGroup:v13 dashboard:a4 values:a5 indices:a6 count:a7];
}

- (id)unwrapMTLRenderPassDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setVisibilityResultBuffer:{objc_msgSend(objc_msgSend(v4, "visibilityResultBuffer"), "baseObject")}];
  v5 = [a3 _descriptorPrivate];
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

  v14 = 0;
  v15 = *(v5 + 176);
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v14;
  }

  while (v14 != 4);
  [v4 setRasterizationRateMap:{objc_msgSend(*(v5 + 168), "baseObject")}];

  return v4;
}

+ (id)unwrapMTLComputePassDescriptorInternal:(id)a3
{
  v4 = [a3 copy];
  v5 = [a3 _descriptorPrivate];
  v6 = 0;
  v7 = *(v5 + 8);
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (id)unwrapMTLBlitPassDescriptor:(id)a3
{
  v4 = [a3 copy];
  v5 = [a3 _descriptorPrivate];
  v6 = 0;
  v7 = *v5;
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (id)unwrapMTLResourceStatePassDescriptor:(id)a3
{
  v4 = [a3 copy];
  v5 = [a3 _descriptorPrivate];
  v6 = 0;
  v7 = *v5;
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (void)addScheduledHandler:(id)a3
{
  *(self + 9) |= 4u;
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(a3);
  os_unfair_lock_lock(self + 12);
  std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100](self + 56, &v5);
  os_unfair_lock_unlock(self + 12);
}

- (void)addCompletedHandler:(id)a3
{
  *(self + 9) |= 2u;
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(a3);
  os_unfair_lock_lock(self + 12);
  std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100](self + 80, &v5);
  os_unfair_lock_unlock(self + 12);
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsRenderCommandEncoder alloc] initWithRenderCommandEncoder:v7 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsParallelRenderCommandEncoder alloc] initWithParallelRenderCommandEncoder:v7 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:a3];
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 sampledRenderCommandEncoderWithDescriptor:v10 programInfoBuffer:a4 capacity:a5];
  if (v12)
  {
    v13 = [[MTLToolsRenderCommandEncoder alloc] initWithRenderCommandEncoder:v12 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v11);

    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 sampledComputeCommandEncoderWithProgramInfoBuffer:a3 capacity:a4];
  if (v9)
  {
    v10 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v9 parent:self descriptor:0];
    objc_autoreleasePoolPop(v8);

    return v10;
  }

  else
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = objc_autoreleasePoolPush();
  v7 = -[MTLToolsComputeCommandEncoder initWithComputeCommandEncoder:parent:descriptor:]([MTLToolsComputeCommandEncoder alloc], "initWithComputeCommandEncoder:parent:descriptor:", [v5 computeCommandEncoderWithDispatchType:a3], self, 0);
  objc_autoreleasePoolPop(v6);

  return v7;
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:?];
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 computeCommandEncoderWithDescriptor:v5];
  if (v8)
  {
    v9 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v8 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:a3];
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 sampledComputeCommandEncoderWithDescriptor:v10 programInfoBuffer:a4 capacity:a5];
  if (v12)
  {
    v13 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v12 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v11);

    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)blitCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [(MTLToolsCommandBuffer *)self unwrapMTLBlitPassDescriptor:a3];
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 blitCommandEncoderWithDescriptor:v6];
  if (v8)
  {
    v9 = [[MTLToolsBlitCommandEncoder alloc] initWithBlitCommandEncoder:v8 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [(MTLToolsCommandBuffer *)self unwrapMTLResourceStatePassDescriptor:a3];
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 resourceStateCommandEncoderWithDescriptor:v6];
  if (v8)
  {
    v9 = [[MTLToolsResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v8 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 encodeSignalEvent:v8 value:a4];
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 encodeWaitForEvent:v8 value:a4];
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 encodeSignalEvent:v10 value:a4 agentMask:a5];
}

- (void)encodeConditionalAbortEvent:(id)a3
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 encodeConditionalAbortEvent:v6];
}

- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 encodeSignalEventScheduled:v8 value:a4];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_encodeSignalEventScheduled_value_ == a3)
  {
    [(MTLToolsObject *)self baseObject];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLToolsCommandBuffer;
    v3 = [(MTLToolsCommandBuffer *)&v5 respondsToSelector:a3];
  }

  return v3 & 1;
}

- (void)addPurgedResource:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 addPurgedResource:v5];
}

- (void)addPurgedHeap:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 addPurgedHeap:v5];
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 sampledComputeCommandEncoderWithDispatchType:a3 programInfoBuffer:a4 capacity:a5];
  if (v11)
  {
    v12 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v11 parent:self descriptor:0];
    objc_autoreleasePoolPop(v10);

    return v12;
  }

  else
  {
    objc_autoreleasePoolPop(v10);
    return 0;
  }
}

- (BOOL)isProfilingEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isProfilingEnabled];
}

- (NSDictionary)profilingResults
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 profilingResults];
}

- (NSMutableDictionary)userDictionary
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 userDictionary];
}

- (unint64_t)getListIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getListIndex];
}

- (void)addSynchronizationNotification:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addSynchronizationNotification:a3];
}

- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = v12 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    v9 = (v12 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *v7++;
      *v9++ = [v10 baseObject];
      --v8;
    }

    while (v8);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = v12 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    v9 = (v12 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *v7++;
      *v9++ = [v10 baseObject];
      --v8;
    }

    while (v8);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v9 = a4;
    v10 = a5;
    v11 = (v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v12 = *v9++;
      *v11++ = [v12 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v9 = a4;
    v10 = a5;
    v11 = (v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v12 = *v9++;
      *v11++ = [v12 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setProtectionOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setProtectionOptions:a3];
}

- (unint64_t)protectionOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 protectionOptions];
}

- (unint64_t)errorOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 errorOptions];
}

- (void)retainObjectsFromRenderPassDescriptor:(id)a3
{
  for (i = 0; i != 10; ++i)
  {
    v6 = [objc_msgSend(a3 "colorAttachments")];
    if (v6)
    {
      v7 = v6;
      -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [v6 texture]);
      -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [v7 resolveTexture]);
    }
  }

  -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [a3 visibilityResultBuffer]);
  -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [a3 rasterizationRateMap]);
  for (j = 0; j != 4; ++j)
  {
    -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [objc_msgSend(objc_msgSend(a3 "sampleBufferAttachments")]);
  }
}

- (void)commitWithDeadline:(unint64_t)a3
{
  [(MTLToolsCommandBuffer *)self preCommit];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 commitWithDeadline:a3];
}

- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 commitAndWaitUntilSubmittedWithDeadline:a3];
}

- (id)unwrapMTLAccelerationStructurePassDescriptor:(id)a3
{
  v4 = [a3 copy];
  for (i = 0; i != 4; ++i)
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
  }

  return v4;
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLAccelerationStructurePassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:v7 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (void)useResidencySet:(id)a3
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
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
      [(MTLToolsCommandBuffer *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
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

- (void)useInternalResidencySet:(id)a3
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useInternalResidencySet:v6];
}

- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandBuffer *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useInternalResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)__waitUntilScheduledAsync:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 __waitUntilScheduledAsync:a3];
}

- (void)__waitUntilCompletedAsync:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 __waitUntilCompletedAsync:a3];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

@end