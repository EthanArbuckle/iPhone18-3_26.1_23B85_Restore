@interface BWPhotonicEngineNodeSampleBufferAndInputQueue
- (BWPhotonicEngineNodeSampleBufferAndInputQueue)init;
- (id)newDequeuedSampleBufferAndInput;
- (id)newSampleBuffersAndInputsWithPredicate:(id)predicate;
- (void)dealloc;
- (void)enqueue:(id)enqueue;
@end

@implementation BWPhotonicEngineNodeSampleBufferAndInputQueue

- (BWPhotonicEngineNodeSampleBufferAndInputQueue)init
{
  v5.receiver = self;
  v5.super_class = BWPhotonicEngineNodeSampleBufferAndInputQueue;
  v2 = [(BWPhotonicEngineNodeSampleBufferAndInputQueue *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_sampleBufferAndInputQueueLock._os_unfair_lock_opaque = 0;
    v2->_sampleBufferAndInputQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotonicEngineNodeSampleBufferAndInputQueue;
  [(BWPhotonicEngineNodeSampleBufferAndInputQueue *)&v3 dealloc];
}

- (id)newDequeuedSampleBufferAndInput
{
  os_unfair_lock_lock(&self->_sampleBufferAndInputQueueLock);
  if ([(NSMutableArray *)self->_sampleBufferAndInputQueue count])
  {
    firstObject = [(NSMutableArray *)self->_sampleBufferAndInputQueue firstObject];
    [(NSMutableArray *)self->_sampleBufferAndInputQueue removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
  return firstObject;
}

- (void)enqueue:(id)enqueue
{
  os_unfair_lock_lock(&self->_sampleBufferAndInputQueueLock);
  [(NSMutableArray *)self->_sampleBufferAndInputQueue addObject:enqueue];

  os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
}

- (id)newSampleBuffersAndInputsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicate)
  {
    os_unfair_lock_lock(&self->_sampleBufferAndInputQueueLock);
    v5 = objc_autoreleasePoolPush();
    predicateCopy = [(NSMutableArray *)self->_sampleBufferAndInputQueue filteredArrayUsingPredicate:predicateCopy];
    objc_autoreleasePoolPop(v5);
    [(NSMutableArray *)self->_sampleBufferAndInputQueue removeObjectsInArray:predicateCopy];
    os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
  }

  else
  {
    [BWPhotonicEngineNodeSampleBufferAndInputQueue newSampleBuffersAndInputsWithPredicate:];
  }

  return predicateCopy;
}

@end