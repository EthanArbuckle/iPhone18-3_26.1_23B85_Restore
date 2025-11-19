@interface BWPhotonicEngineNodeSampleBufferAndInputQueue
- (BWPhotonicEngineNodeSampleBufferAndInputQueue)init;
- (id)newDequeuedSampleBufferAndInput;
- (id)newSampleBuffersAndInputsWithPredicate:(id)a3;
- (void)dealloc;
- (void)enqueue:(id)a3;
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
    v3 = [(NSMutableArray *)self->_sampleBufferAndInputQueue firstObject];
    [(NSMutableArray *)self->_sampleBufferAndInputQueue removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
  return v3;
}

- (void)enqueue:(id)a3
{
  os_unfair_lock_lock(&self->_sampleBufferAndInputQueueLock);
  [(NSMutableArray *)self->_sampleBufferAndInputQueue addObject:a3];

  os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
}

- (id)newSampleBuffersAndInputsWithPredicate:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_sampleBufferAndInputQueueLock);
    v5 = objc_autoreleasePoolPush();
    v3 = [(NSMutableArray *)self->_sampleBufferAndInputQueue filteredArrayUsingPredicate:v3];
    objc_autoreleasePoolPop(v5);
    [(NSMutableArray *)self->_sampleBufferAndInputQueue removeObjectsInArray:v3];
    os_unfair_lock_unlock(&self->_sampleBufferAndInputQueueLock);
  }

  else
  {
    [BWPhotonicEngineNodeSampleBufferAndInputQueue newSampleBuffersAndInputsWithPredicate:];
  }

  return v3;
}

@end