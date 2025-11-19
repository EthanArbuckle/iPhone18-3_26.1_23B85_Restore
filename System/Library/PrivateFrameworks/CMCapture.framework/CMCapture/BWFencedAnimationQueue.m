@interface BWFencedAnimationQueue
- (BWFencedAnimationQueue)initWithQueueSize:(unsigned int)a3;
- (id)dequeueFencedAnimation;
- (void)dealloc;
- (void)enqueueFencedAnimation:(id)a3;
- (void)flush;
@end

@implementation BWFencedAnimationQueue

- (id)dequeueFencedAnimation
{
  os_unfair_lock_lock(&self->_queueLock);
  v3 = [(NSMutableArray *)self->_fencedAnimationQueue firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_fencedAnimationQueue removeObject:v3];
    os_unfair_lock_unlock(&self->_queueLock);
    dispatch_semaphore_signal(self->_fencedAnimationQueueSemaphore);
  }

  else
  {
    os_unfair_lock_unlock(&self->_queueLock);
  }

  return v3;
}

- (BWFencedAnimationQueue)initWithQueueSize:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = BWFencedAnimationQueue;
  v4 = [(BWFencedAnimationQueue *)&v6 init];
  if (v4)
  {
    v4->_fencedAnimationQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_fencedAnimationQueueSemaphore = dispatch_semaphore_create(a3);
    v4->_fencedAnimationFramerateThrottle = 0;
    v4->_timeOfLastFencedAnimation = 0.0;
    v4->_queueLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(BWFencedAnimationQueue *)self flush];

  dispatch_release(self->_fencedAnimationQueueSemaphore);
  v3.receiver = self;
  v3.super_class = BWFencedAnimationQueue;
  [(BWFencedAnimationQueue *)&v3 dealloc];
}

- (void)enqueueFencedAnimation:(id)a3
{
  if (self->_fencedAnimationFramerateThrottle)
  {
    v5 = CFAbsoluteTimeGetCurrent() - self->_timeOfLastFencedAnimation;
    v6 = (1.0 / self->_fencedAnimationFramerateThrottle);
    if (v5 < v6)
    {
      usleep(((v6 - v5) * 1000000.0));
    }
  }

  fencedAnimationQueueSemaphore = self->_fencedAnimationQueueSemaphore;
  v8 = dispatch_time(0, 500000000);
  if (!dispatch_semaphore_wait(fencedAnimationQueueSemaphore, v8))
  {
    os_unfair_lock_lock(&self->_queueLock);
    [(NSMutableArray *)self->_fencedAnimationQueue addObject:a3];
    os_unfair_lock_unlock(&self->_queueLock);
    self->_timeOfLastFencedAnimation = CFAbsoluteTimeGetCurrent();
  }
}

- (void)flush
{
  os_unfair_lock_lock(&self->_queueLock);
  while ([(NSMutableArray *)self->_fencedAnimationQueue count])
  {
    [(NSMutableArray *)self->_fencedAnimationQueue removeObjectAtIndex:0];
    dispatch_semaphore_signal(self->_fencedAnimationQueueSemaphore);
  }

  os_unfair_lock_unlock(&self->_queueLock);
}

@end