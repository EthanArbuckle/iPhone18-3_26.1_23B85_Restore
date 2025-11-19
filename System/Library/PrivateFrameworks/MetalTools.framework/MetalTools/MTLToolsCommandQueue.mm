@interface MTLToolsCommandQueue
- (BOOL)commitSynchronously;
- (BOOL)commitsWithQoS;
- (BOOL)disableCrossQueueHazardTracking;
- (BOOL)executionEnabled;
- (BOOL)isOpenGLQueue;
- (BOOL)isProfilingEnabled;
- (BOOL)isStatEnabled;
- (BOOL)setBackgroundGPUPriority:(unint64_t)a3;
- (BOOL)setGPUPriority:(unint64_t)a3;
- (BOOL)skipRender;
- (MTLToolsCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (OS_dispatch_queue)commitQueue;
- (OS_dispatch_queue)completionQueue;
- (id)availableCounters;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
- (id)commandBufferWithUnretainedReferences;
- (id)counterInfo;
- (id)getRequestedCounters;
- (id)getSPIStats;
- (id)snapshotPerfSampleHandlerAndStatEnabled:(BOOL *)a3 forCommandBuffer:(id)a4;
- (id)subdivideCounterList:(id)a3;
- (int)backgroundTrackingPID;
- (int)requestCounters:(id)a3;
- (int)requestCounters:(id)a3 withIndex:(unint64_t)a4;
- (unint64_t)getBackgroundGPUPriority;
- (unint64_t)getGPUPriority;
- (unint64_t)getStatLocations;
- (unint64_t)getStatOptions;
- (unint64_t)maxCommandBufferCount;
- (unint64_t)qosLevel;
- (void)addInternalResidencySet:(id)a3;
- (void)addInternalResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)addPerfSampleHandler:(id)a3;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)dealloc;
- (void)dispatchAvailableCompletionNotifications;
- (void)finish;
- (void)insertDebugCaptureBoundary;
- (void)removeInternalResidencySet:(id)a3;
- (void)removeInternalResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)setCompletionQueue:(id)a3;
- (void)setLabel:(id)a3;
- (void)setStatLocations:(unint64_t)a3;
- (void)setStatOptions:(unint64_t)a3;
- (void)setSubmissionQueue:(id)a3;
@end

@implementation MTLToolsCommandQueue

- (MTLToolsCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsCommandQueue;
  v4 = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a4];
  v5 = v4;
  if (v4)
  {
    v4->_perfHandlerLock._os_unfair_lock_opaque = 0;
    v4->_residencySetsLock._os_unfair_lock_opaque = 0;
    v4->_residencySets = objc_opt_new();
    v5->_internalResidencySets = objc_opt_new();
  }

  return v5;
}

- (void)dealloc
{
  _Block_release(self->_perfSampleHandlerBlock);

  v3.receiver = self;
  v3.super_class = MTLToolsCommandQueue;
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

- (id)commandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLToolsCommandBuffer alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLToolsCommandBuffer alloc] initWithBaseObject:v4 parent:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)commandBufferWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v6 = [[MTLToolsCommandBuffer alloc] initWithCommandBuffer:v6 parent:self descriptor:a3];
  }

  v7 = v6;
  objc_autoreleasePoolPop(v5);
  return v7;
}

- (void)insertDebugCaptureBoundary
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 insertDebugCaptureBoundary];
}

- (void)dispatchAvailableCompletionNotifications
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 dispatchAvailableCompletionNotifications];
}

- (unint64_t)getGPUPriority
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getGPUPriority];
}

- (BOOL)setGPUPriority:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 setGPUPriority:a3];
}

- (unint64_t)getBackgroundGPUPriority
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getBackgroundGPUPriority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 setBackgroundGPUPriority:a3];
}

- (unint64_t)maxCommandBufferCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxCommandBufferCount];
}

- (int)backgroundTrackingPID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 backgroundTrackingPID];
}

- (void)finish
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 finish];
}

- (BOOL)skipRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 skipRender];
}

- (BOOL)executionEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 executionEnabled];
}

- (BOOL)isProfilingEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isProfilingEnabled];
}

- (void)setCompletionQueue:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCompletionQueue:a3];
}

- (void)setSubmissionQueue:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setSubmissionQueue:a3];
}

- (BOOL)isOpenGLQueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isOpenGLQueue];
}

- (id)getSPIStats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getSPIStats];
}

- (int)requestCounters:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 requestCounters:a3];
}

- (void)addPerfSampleHandler:(id)a3
{
  v4 = _Block_copy(a3);
  os_unfair_lock_lock(&self->_perfHandlerLock);
  if (!self->_perfSampleMailbox)
  {
    v5 = objc_opt_new();
    self->_perfSampleMailbox = v5;
    baseObject = self->super._baseObject;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__MTLToolsCommandQueue_addPerfSampleHandler___block_invoke;
    v8[3] = &unk_2787B3A70;
    v8[4] = v5;
    [(MTLToolsObject *)baseObject addPerfSampleHandler:v8];
  }

  perfSampleHandlerBlock = self->_perfSampleHandlerBlock;
  self->_perfSampleHandlerBlock = v4;
  os_unfair_lock_unlock(&self->_perfHandlerLock);
  _Block_release(perfSampleHandlerBlock);
}

- (id)snapshotPerfSampleHandlerAndStatEnabled:(BOOL *)a3 forCommandBuffer:(id)a4
{
  os_unfair_lock_lock(&self->_perfHandlerLock);
  if ([a4 isStatEnabled])
  {
    *a3 = 1;
    v7 = _Block_copy(self->_perfSampleHandlerBlock);
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  os_unfair_lock_unlock(&self->_perfHandlerLock);
  return v7;
}

- (int)requestCounters:(id)a3 withIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 requestCounters:a3 withIndex:a4];
}

- (id)subdivideCounterList:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 subdivideCounterList:a3];
}

- (unint64_t)qosLevel
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 qosLevel];
}

- (OS_dispatch_queue)commitQueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commitQueue];
}

- (BOOL)commitSynchronously
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commitSynchronously];
}

- (OS_dispatch_queue)completionQueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 completionQueue];
}

- (BOOL)disableCrossQueueHazardTracking
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 disableCrossQueueHazardTracking];
}

- (id)availableCounters
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 availableCounters];
}

- (id)getRequestedCounters
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getRequestedCounters];
}

- (BOOL)isStatEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isStatEnabled];
}

- (unint64_t)getStatOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getStatOptions];
}

- (void)setStatOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStatOptions:a3];
}

- (unint64_t)getStatLocations
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getStatLocations];
}

- (void)setStatLocations:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStatLocations:a3];
}

- (id)counterInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 counterInfo];
}

- (BOOL)commitsWithQoS
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commitsWithQoS];
}

- (void)addResidencySet:(id)a3
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_residencySets addObject:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_residencySets addObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
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

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeResidencySet:(id)a3
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_residencySets removeObject:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_residencySets removeObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
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

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addInternalResidencySet:(id)a3
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_internalResidencySets addObject:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addInternalResidencySets:(id *)a3 count:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_internalResidencySets addObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 addInternalResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeInternalResidencySet:(id)a3
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_internalResidencySets removeObject:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeInternalResidencySets:(id *)a3 count:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_internalResidencySets removeObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 removeInternalResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

@end