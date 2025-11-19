@interface MTLDebugCommandQueue
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
- (id)commandBufferWithUnretainedReferences;
- (void)addInternalResidencySet:(id)a3;
- (void)addInternalResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)insertDebugCaptureBoundary;
- (void)removeInternalResidencySet:(id)a3;
- (void)removeInternalResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)validateDeadlineAwareness:(id)a3;
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

- (id)commandBufferWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugCommandBuffer alloc] initWithCommandBuffer:v6 commandQueue:self descriptor:a3];
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

- (void)validateDeadlineAwareness:(id)a3
{
  p_deadlineAwareState = &self->_deadlineAwareState;
  v5 = atomic_load(&self->_deadlineAwareState);
  v6 = [a3 deadlineProfile];
  v7 = v6;
  if (v6)
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
    if (!v6)
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

- (void)addResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugCommandQueue addResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 addResidencySet:a3];
}

- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugCommandQueue addResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 addResidencySets:a3 count:a4];
}

- (void)removeResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugCommandQueue removeResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 removeResidencySet:a3];
}

- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugCommandQueue removeResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 removeResidencySets:a3 count:a4];
}

- (void)addInternalResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugCommandQueue addInternalResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 addInternalResidencySet:a3];
}

- (void)addInternalResidencySets:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugCommandQueue addInternalResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 addInternalResidencySets:a3 count:a4];
}

- (void)removeInternalResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugCommandQueue removeInternalResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v5 removeInternalResidencySet:a3];
}

- (void)removeInternalResidencySets:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugCommandQueue removeInternalResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandQueue;
  [(MTLToolsCommandQueue *)&v8 removeInternalResidencySets:a3 count:a4];
}

@end