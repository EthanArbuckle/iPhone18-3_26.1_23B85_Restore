@interface MTLToolsCommandQueue
- (BOOL)commitSynchronously;
- (BOOL)commitsWithQoS;
- (BOOL)disableCrossQueueHazardTracking;
- (BOOL)executionEnabled;
- (BOOL)isOpenGLQueue;
- (BOOL)isProfilingEnabled;
- (BOOL)isStatEnabled;
- (BOOL)setBackgroundGPUPriority:(unint64_t)priority;
- (BOOL)setGPUPriority:(unint64_t)priority;
- (BOOL)skipRender;
- (MTLToolsCommandQueue)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (OS_dispatch_queue)commitQueue;
- (OS_dispatch_queue)completionQueue;
- (id)availableCounters;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
- (id)commandBufferWithUnretainedReferences;
- (id)counterInfo;
- (id)getRequestedCounters;
- (id)getSPIStats;
- (id)snapshotPerfSampleHandlerAndStatEnabled:(BOOL *)enabled forCommandBuffer:(id)buffer;
- (id)subdivideCounterList:(id)list;
- (int)backgroundTrackingPID;
- (int)requestCounters:(id)counters;
- (int)requestCounters:(id)counters withIndex:(unint64_t)index;
- (unint64_t)getBackgroundGPUPriority;
- (unint64_t)getGPUPriority;
- (unint64_t)getStatLocations;
- (unint64_t)getStatOptions;
- (unint64_t)maxCommandBufferCount;
- (unint64_t)qosLevel;
- (void)addInternalResidencySet:(id)set;
- (void)addInternalResidencySets:(id *)sets count:(unint64_t)count;
- (void)addPerfSampleHandler:(id)handler;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)dealloc;
- (void)dispatchAvailableCompletionNotifications;
- (void)finish;
- (void)insertDebugCaptureBoundary;
- (void)removeInternalResidencySet:(id)set;
- (void)removeInternalResidencySets:(id *)sets count:(unint64_t)count;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)setCompletionQueue:(id)queue;
- (void)setLabel:(id)label;
- (void)setStatLocations:(unint64_t)locations;
- (void)setStatOptions:(unint64_t)options;
- (void)setSubmissionQueue:(id)queue;
@end

@implementation MTLToolsCommandQueue

- (MTLToolsCommandQueue)initWithBaseObject:(id)object parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = MTLToolsCommandQueue;
  v4 = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:parent];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
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

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v6 = [[MTLToolsCommandBuffer alloc] initWithCommandBuffer:v6 parent:self descriptor:descriptor];
  }

  v7 = v6;
  objc_autoreleasePoolPop(v5);
  return v7;
}

- (void)insertDebugCaptureBoundary
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertDebugCaptureBoundary];
}

- (void)dispatchAvailableCompletionNotifications
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject dispatchAvailableCompletionNotifications];
}

- (unint64_t)getGPUPriority
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getGPUPriority];
}

- (BOOL)setGPUPriority:(unint64_t)priority
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setGPUPriority:priority];
}

- (unint64_t)getBackgroundGPUPriority
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getBackgroundGPUPriority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)priority
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setBackgroundGPUPriority:priority];
}

- (unint64_t)maxCommandBufferCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxCommandBufferCount];
}

- (int)backgroundTrackingPID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject backgroundTrackingPID];
}

- (void)finish
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject finish];
}

- (BOOL)skipRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject skipRender];
}

- (BOOL)executionEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject executionEnabled];
}

- (BOOL)isProfilingEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isProfilingEnabled];
}

- (void)setCompletionQueue:(id)queue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCompletionQueue:queue];
}

- (void)setSubmissionQueue:(id)queue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setSubmissionQueue:queue];
}

- (BOOL)isOpenGLQueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isOpenGLQueue];
}

- (id)getSPIStats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getSPIStats];
}

- (int)requestCounters:(id)counters
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requestCounters:counters];
}

- (void)addPerfSampleHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

- (id)snapshotPerfSampleHandlerAndStatEnabled:(BOOL *)enabled forCommandBuffer:(id)buffer
{
  os_unfair_lock_lock(&self->_perfHandlerLock);
  if ([buffer isStatEnabled])
  {
    *enabled = 1;
    v7 = _Block_copy(self->_perfSampleHandlerBlock);
  }

  else
  {
    v7 = 0;
    *enabled = 0;
  }

  os_unfair_lock_unlock(&self->_perfHandlerLock);
  return v7;
}

- (int)requestCounters:(id)counters withIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requestCounters:counters withIndex:index];
}

- (id)subdivideCounterList:(id)list
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject subdivideCounterList:list];
}

- (unint64_t)qosLevel
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject qosLevel];
}

- (OS_dispatch_queue)commitQueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commitQueue];
}

- (BOOL)commitSynchronously
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commitSynchronously];
}

- (OS_dispatch_queue)completionQueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject completionQueue];
}

- (BOOL)disableCrossQueueHazardTracking
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject disableCrossQueueHazardTracking];
}

- (id)availableCounters
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject availableCounters];
}

- (id)getRequestedCounters
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getRequestedCounters];
}

- (BOOL)isStatEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isStatEnabled];
}

- (unint64_t)getStatOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getStatOptions];
}

- (void)setStatOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStatOptions:options];
}

- (unint64_t)getStatLocations
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getStatLocations];
}

- (void)setStatLocations:(unint64_t)locations
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStatLocations:locations];
}

- (id)counterInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject counterInfo];
}

- (BOOL)commitsWithQoS
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commitsWithQoS];
}

- (void)addResidencySet:(id)set
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_residencySets addObject:set];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_residencySets addObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
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

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeResidencySet:(id)set
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_residencySets removeObject:set];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_residencySets removeObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
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

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addInternalResidencySet:(id)set
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_internalResidencySets addObject:set];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)addInternalResidencySets:(id *)sets count:(unint64_t)count
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_internalResidencySets addObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 addInternalResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeInternalResidencySet:(id)set
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  [(NSCountedSet *)self->_internalResidencySets removeObject:set];
  [-[MTLToolsObject baseObject](self "baseObject")];

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

- (void)removeInternalResidencySets:(id *)sets count:(unint64_t)count
{
  os_unfair_lock_lock(&self->_residencySetsLock);
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(NSCountedSet *)self->_internalResidencySets removeObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 removeInternalResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(&self->_residencySetsLock);
}

@end