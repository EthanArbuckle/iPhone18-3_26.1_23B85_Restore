@interface MTLDebugCommandQueue
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
- (id)commandBufferWithUnretainedReferences;
- (void)addInternalResidencySet:(id)set;
- (void)addInternalResidencySets:(id *)sets count:(unint64_t)count;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)insertDebugCaptureBoundary;
- (void)removeInternalResidencySet:(id)set;
- (void)removeInternalResidencySets:(id *)sets count:(unint64_t)count;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)validateDeadlineAwareness:(id)awareness;
@end

@implementation MTLDebugCommandQueue

- (void)insertDebugCaptureBoundary
{
  if (_MTLIsInsideCompletionHandler())
  {
    [MTLDebugCommandQueue insertDebugCaptureBoundary];
  }

  v3.receiver = self;
  v3.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v3 insertDebugCaptureBoundary];
}

- (id)commandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLDebugCommandBuffer alloc] initWithCommandBuffer:v4 commandQueue:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLDebugCommandBuffer alloc] initWithCommandBuffer:v4 commandQueue:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugCommandBuffer alloc] initWithCommandBuffer:v6 commandQueue:self descriptor:descriptor];
    [(MTLDeadlineProfile *)[(MTLToolsCommandBuffer *)v7 deadlineProfile] validateCommandQueue:self];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (void)validateDeadlineAwareness:(id)awareness
{
  p_deadlineAwareState = &self->_deadlineAwareState;
  v5 = atomic_load(&self->_deadlineAwareState);
  deadlineProfile = [awareness deadlineProfile];
  v7 = deadlineProfile;
  if (deadlineProfile)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v5)
  {
    if (v5 != v8)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (!deadlineProfile)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = 0;
  atomic_compare_exchange_strong(p_deadlineAwareState, &v9, v8);
  if (!v9 || v9 == v8)
  {
    goto LABEL_9;
  }

LABEL_13:
  [MTLDebugCommandQueue validateDeadlineAwareness:];
  if (!v7)
  {
    return;
  }

LABEL_10:
  if ([(MTLToolsCommandQueue *)self getGPUPriority]!= 5)
  {
    [MTLDebugCommandQueue validateDeadlineAwareness:];
  }
}

- (void)addResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandQueue addResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 addResidencySet:set];
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandQueue addResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 addResidencySets:sets count:count];
}

- (void)removeResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandQueue removeResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 removeResidencySet:set];
}

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandQueue removeResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 removeResidencySets:sets count:count];
}

- (void)addInternalResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandQueue addInternalResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 addInternalResidencySet:set];
}

- (void)addInternalResidencySets:(id *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandQueue addInternalResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 addInternalResidencySets:sets count:count];
}

- (void)removeInternalResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandQueue removeInternalResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 removeInternalResidencySet:set];
}

- (void)removeInternalResidencySets:(id *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandQueue removeInternalResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 removeInternalResidencySets:sets count:count];
}

@end