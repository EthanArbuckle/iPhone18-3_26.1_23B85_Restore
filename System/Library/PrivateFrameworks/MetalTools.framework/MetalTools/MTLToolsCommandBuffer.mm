@interface MTLToolsCommandBuffer
+ (id)unwrapMTLComputePassDescriptorInternal:(id)internal;
- (BOOL)addRetainedObject:(id)object;
- (BOOL)commitAndWaitUntilSubmitted;
- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)deadline;
- (BOOL)isProfilingEnabled;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)retainedReferences;
- (MTLLogContainer)logs;
- (MTLToolsCommandBuffer)initWithCommandBuffer:(id)buffer parent:(id)parent descriptor:(id)descriptor;
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
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)type;
- (id)debugCommandEncoder;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)descriptor;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)type programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)unwrapMTLAccelerationStructurePassDescriptor:(id)descriptor;
- (id)unwrapMTLBlitPassDescriptor:(id)descriptor;
- (id)unwrapMTLRenderPassDescriptor:(id)descriptor;
- (id)unwrapMTLResourceStatePassDescriptor:(id)descriptor;
- (unint64_t)errorOptions;
- (unint64_t)getListIndex;
- (unint64_t)globalTraceObjectID;
- (unint64_t)protectionOptions;
- (unint64_t)status;
- (void)__waitUntilCompletedAsync:(id)async;
- (void)__waitUntilScheduledAsync:(id)async;
- (void)addCompletedHandler:(id)handler;
- (void)addPurgedHeap:(id)heap;
- (void)addPurgedResource:(id)resource;
- (void)addScheduledHandler:(id)handler;
- (void)addSynchronizationNotification:(id)notification;
- (void)clearRetainedObjects;
- (void)commit;
- (void)commitAndHold;
- (void)commitWithDeadline:(unint64_t)deadline;
- (void)dealloc;
- (void)debugBufferContentsWithLength:(unint64_t *)length;
- (void)dropResourceGroups:(const void *)groups count:(unint64_t)count;
- (void)encodeCacheHintFinalize:(unint64_t)finalize resourceGroups:(const void *)groups count:(unint64_t)count;
- (void)encodeCacheHintTag:(unint64_t)tag resourceGroups:(const void *)groups count:(unint64_t)count;
- (void)encodeConditionalAbortEvent:(id)event;
- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard value:(unint64_t)value forIndex:(unint64_t)index;
- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard values:(const unint64_t *)values indices:(const unint64_t *)indices count:(unint64_t)count;
- (void)encodeDashboardTagForResourceGroup:(id)group;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value agentMask:(unint64_t)mask;
- (void)encodeSignalEventScheduled:(id)scheduled value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)enqueue;
- (void)invokeCompletedHandlers;
- (void)invokeScheduledHandlers;
- (void)popDebugGroup;
- (void)preCommit;
- (void)preCompletionHandlers;
- (void)presentDrawable:(id)drawable;
- (void)presentDrawable:(id)drawable afterMinimumDuration:(double)duration;
- (void)presentDrawable:(id)drawable atTime:(double)time;
- (void)presentDrawable:(id)drawable options:(id)options;
- (void)pushDebugGroup:(id)group;
- (void)retainObjectsFromRenderPassDescriptor:(id)descriptor;
- (void)setLabel:(id)label;
- (void)setLogs:(id)logs;
- (void)setProtectionOptions:(unint64_t)options;
- (void)setResourceGroups:(const void *)groups count:(unint64_t)count;
- (void)useInternalResidencySet:(id)set;
- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation MTLToolsCommandBuffer

- (MTLToolsCommandBuffer)initWithCommandBuffer:(id)buffer parent:(id)parent descriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLToolsCommandBuffer;
  v6 = [(MTLToolsObject *)&v9 initWithBaseObject:buffer parent:parent];
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
    *(v7 + 16) = [descriptor deadlineProfile];
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

- (BOOL)addRetainedObject:(id)object
{
  v4 = *(self + 17);
  if (object)
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

    [v4 addObject:object];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject commit];
}

- (void)commitAndHold
{
  [(MTLToolsCommandBuffer *)self preCommit];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject commitAndHold];
}

- (BOOL)commitAndWaitUntilSubmitted
{
  [(MTLToolsCommandBuffer *)self preCommit];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commitAndWaitUntilSubmitted];
}

- (id)debugCommandEncoder
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugCommandEncoder];
}

- (MTLLogContainer)logs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject logs];
}

- (void)setLogs:(id)logs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLogs:logs];
}

- (BOOL)retainedReferences
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject retainedReferences];
}

- (double)GPUStartTime
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject GPUStartTime];
  return result;
}

- (double)GPUEndTime
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject GPUEndTime];
  return result;
}

- (unint64_t)globalTraceObjectID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalTraceObjectID];
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

- (void)enqueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject enqueue];
}

- (void)presentDrawable:(id)drawable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject presentDrawable:drawable];
}

- (void)presentDrawable:(id)drawable atTime:(double)time
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject presentDrawable:drawable atTime:time];
}

- (void)presentDrawable:(id)drawable afterMinimumDuration:(double)duration
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject presentDrawable:drawable afterMinimumDuration:duration];
}

- (void)presentDrawable:(id)drawable options:(id)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject presentDrawable:drawable options:options];
}

- (void)waitUntilScheduled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilScheduled];
}

- (void)waitUntilCompleted
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilCompleted];
}

- (unint64_t)status
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject status];
}

- (NSError)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject error];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject kernelStartTime];
  return result;
}

- (double)kernelEndTime
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject kernelEndTime];
  return result;
}

- (void)debugBufferContentsWithLength:(unint64_t *)length
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugBufferContentsWithLength:length];
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

- (void)encodeDashboardTagForResourceGroup:(id)group
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [group baseObject];

  [baseObject encodeDashboardTagForResourceGroup:baseObject2];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard value:(unint64_t)value forIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [group baseObject];

  [baseObject encodeDashboardFinalizeForResourceGroup:baseObject2 dashboard:dashboard value:value forIndex:index];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard values:(const unint64_t *)values indices:(const unint64_t *)indices count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [group baseObject];

  [baseObject encodeDashboardFinalizeForResourceGroup:baseObject2 dashboard:dashboard values:values indices:indices count:count];
}

- (id)unwrapMTLRenderPassDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setVisibilityResultBuffer:{objc_msgSend(objc_msgSend(v4, "visibilityResultBuffer"), "baseObject")}];
  _descriptorPrivate = [descriptor _descriptorPrivate];
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

  v14 = 0;
  v15 = *(_descriptorPrivate + 176);
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v14;
  }

  while (v14 != 4);
  [v4 setRasterizationRateMap:{objc_msgSend(*(_descriptorPrivate + 168), "baseObject")}];

  return v4;
}

+ (id)unwrapMTLComputePassDescriptorInternal:(id)internal
{
  v4 = [internal copy];
  _descriptorPrivate = [internal _descriptorPrivate];
  v6 = 0;
  v7 = *(_descriptorPrivate + 8);
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (id)unwrapMTLBlitPassDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  _descriptorPrivate = [descriptor _descriptorPrivate];
  v6 = 0;
  v7 = *_descriptorPrivate;
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (id)unwrapMTLResourceStatePassDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  _descriptorPrivate = [descriptor _descriptorPrivate];
  v6 = 0;
  v7 = *_descriptorPrivate;
  do
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
    ++v6;
  }

  while (v6 != 4);

  return v4;
}

- (void)addScheduledHandler:(id)handler
{
  *(self + 9) |= 4u;
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(handler);
  os_unfair_lock_lock(self + 12);
  std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100](self + 56, &v5);
  os_unfair_lock_unlock(self + 12);
}

- (void)addCompletedHandler:(id)handler
{
  *(self + 9) |= 2u;
  [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = _Block_copy(handler);
  os_unfair_lock_lock(self + 12);
  std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100](self + 80, &v5);
  os_unfair_lock_unlock(self + 12);
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsRenderCommandEncoder alloc] initWithRenderCommandEncoder:v7 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsParallelRenderCommandEncoder alloc] initWithParallelRenderCommandEncoder:v7 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLRenderPassDescriptor:descriptor];
  v11 = objc_autoreleasePoolPush();
  v12 = [baseObject sampledRenderCommandEncoderWithDescriptor:v10 programInfoBuffer:buffer capacity:capacity];
  if (v12)
  {
    v13 = [[MTLToolsRenderCommandEncoder alloc] initWithRenderCommandEncoder:v12 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);

    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = objc_autoreleasePoolPush();
  v9 = [baseObject sampledComputeCommandEncoderWithProgramInfoBuffer:buffer capacity:capacity];
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

- (id)computeCommandEncoderWithDispatchType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = objc_autoreleasePoolPush();
  v7 = -[MTLToolsComputeCommandEncoder initWithComputeCommandEncoder:parent:descriptor:]([MTLToolsComputeCommandEncoder alloc], "initWithComputeCommandEncoder:parent:descriptor:", [baseObject computeCommandEncoderWithDispatchType:type], self, 0);
  objc_autoreleasePoolPop(v6);

  return v7;
}

- (id)computeCommandEncoderWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = objc_autoreleasePoolPush();
  v8 = [baseObject computeCommandEncoderWithDescriptor:v5];
  if (v8)
  {
    v9 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v8 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:descriptor];
  v11 = objc_autoreleasePoolPush();
  v12 = [baseObject sampledComputeCommandEncoderWithDescriptor:v10 programInfoBuffer:buffer capacity:capacity];
  if (v12)
  {
    v13 = [[MTLToolsComputeCommandEncoder alloc] initWithComputeCommandEncoder:v12 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);

    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)blitCommandEncoderWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = [(MTLToolsCommandBuffer *)self unwrapMTLBlitPassDescriptor:descriptor];
  v7 = objc_autoreleasePoolPush();
  v8 = [baseObject blitCommandEncoderWithDescriptor:v6];
  if (v8)
  {
    v9 = [[MTLToolsBlitCommandEncoder alloc] initWithBlitCommandEncoder:v8 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = [(MTLToolsCommandBuffer *)self unwrapMTLResourceStatePassDescriptor:descriptor];
  v7 = objc_autoreleasePoolPush();
  v8 = [baseObject resourceStateCommandEncoderWithDescriptor:v6];
  if (v8)
  {
    v9 = [[MTLToolsResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v8 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeSignalEvent:baseObject2 value:value];
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeWaitForEvent:baseObject2 value:value];
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value agentMask:(unint64_t)mask
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeSignalEvent:baseObject2 value:value agentMask:mask];
}

- (void)encodeConditionalAbortEvent:(id)event
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];

  [baseObject encodeConditionalAbortEvent:baseObject2];
}

- (void)encodeSignalEventScheduled:(id)scheduled value:(unint64_t)value
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [scheduled baseObject];

  [baseObject encodeSignalEventScheduled:baseObject2 value:value];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_encodeSignalEventScheduled_value_ == selector)
  {
    [(MTLToolsObject *)self baseObject];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLToolsCommandBuffer;
    v3 = [(MTLToolsCommandBuffer *)&v5 respondsToSelector:selector];
  }

  return v3 & 1;
}

- (void)addPurgedResource:(id)resource
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject addPurgedResource:baseObject2];
}

- (void)addPurgedHeap:(id)heap
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject addPurgedHeap:baseObject2];
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)type programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = objc_autoreleasePoolPush();
  v11 = [baseObject sampledComputeCommandEncoderWithDispatchType:type programInfoBuffer:buffer capacity:capacity];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isProfilingEnabled];
}

- (NSDictionary)profilingResults
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject profilingResults];
}

- (NSMutableDictionary)userDictionary
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject userDictionary];
}

- (unint64_t)getListIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getListIndex];
}

- (void)addSynchronizationNotification:(id)notification
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addSynchronizationNotification:notification];
}

- (void)setResourceGroups:(const void *)groups count:(unint64_t)count
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = v12 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    groupsCopy = groups;
    countCopy = count;
    v9 = (v12 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *groupsCopy++;
      *v9++ = [v10 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dropResourceGroups:(const void *)groups count:(unint64_t)count
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = v12 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    groupsCopy = groups;
    countCopy = count;
    v9 = (v12 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *groupsCopy++;
      *v9++ = [v10 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeCacheHintTag:(unint64_t)tag resourceGroups:(const void *)groups count:(unint64_t)count
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = v14 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    groupsCopy = groups;
    countCopy = count;
    v11 = (v14 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v12 = *groupsCopy++;
      *v11++ = [v12 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)encodeCacheHintFinalize:(unint64_t)finalize resourceGroups:(const void *)groups count:(unint64_t)count
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = v14 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    groupsCopy = groups;
    countCopy = count;
    v11 = (v14 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v12 = *groupsCopy++;
      *v11++ = [v12 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setProtectionOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setProtectionOptions:options];
}

- (unint64_t)protectionOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject protectionOptions];
}

- (unint64_t)errorOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject errorOptions];
}

- (void)retainObjectsFromRenderPassDescriptor:(id)descriptor
{
  for (i = 0; i != 10; ++i)
  {
    v6 = [objc_msgSend(descriptor "colorAttachments")];
    if (v6)
    {
      v7 = v6;
      -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [v6 texture]);
      -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [v7 resolveTexture]);
    }
  }

  -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [descriptor visibilityResultBuffer]);
  -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [descriptor rasterizationRateMap]);
  for (j = 0; j != 4; ++j)
  {
    -[MTLToolsCommandBuffer addRetainedObject:](self, "addRetainedObject:", [objc_msgSend(objc_msgSend(descriptor "sampleBufferAttachments")]);
  }
}

- (void)commitWithDeadline:(unint64_t)deadline
{
  [(MTLToolsCommandBuffer *)self preCommit];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject commitWithDeadline:deadline];
}

- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)deadline
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commitAndWaitUntilSubmittedWithDeadline:deadline];
}

- (id)unwrapMTLAccelerationStructurePassDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  for (i = 0; i != 4; ++i)
  {
    [objc_msgSend(objc_msgSend(v4 "sampleBufferAttachments")];
  }

  return v4;
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsCommandBuffer *)self unwrapMTLAccelerationStructurePassDescriptor:?];
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLToolsAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:v7 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (void)useResidencySet:(id)set
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
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
      [(MTLToolsCommandBuffer *)self addRetainedObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
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

- (void)useInternalResidencySet:(id)set
{
  [(MTLToolsCommandBuffer *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject useInternalResidencySet:baseObject2];
}

- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandBuffer *)self addRetainedObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useInternalResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)__waitUntilScheduledAsync:(id)async
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject __waitUntilScheduledAsync:async];
}

- (void)__waitUntilCompletedAsync:(id)async
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject __waitUntilCompletedAsync:async];
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