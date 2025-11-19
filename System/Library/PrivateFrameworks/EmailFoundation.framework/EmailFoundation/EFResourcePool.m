@interface EFResourcePool
- (EFResourcePool)initWithCount:(unint64_t)a3;
- (id)acquireResource;
- (void)releaseResource:(id)a3;
@end

@implementation EFResourcePool

- (EFResourcePool)initWithCount:(unint64_t)a3
{
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EFResource.m" lineNumber:44 description:@"Pool should not be initialized with a count of 0"];
  }

  v14.receiver = self;
  v14.super_class = EFResourcePool;
  v5 = [(EFResourcePool *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_handleResourceLock._os_unfair_lock_opaque = 0;
    v5->_uncreatedResourcesCount = a3;
    v7 = [EFQueue boundedQueueWithCapacity:a3 overflowHandler:&__block_literal_global_28];
    activeResources = v6->_activeResources;
    v6->_activeResources = v7;

    v9 = objc_opt_new();
    inactiveResources = v6->_inactiveResources;
    v6->_inactiveResources = v9;
  }

  return v6;
}

void __32__EFResourcePool_initWithCount___block_invoke()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EFResourcePool initWithCount:]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"EFResource.m" lineNumber:51 description:@"Queue is over capacity. Active resources in queue should not exceed pool count provided"];
}

- (id)acquireResource
{
  os_unfair_lock_lock(&self->_handleResourceLock);
  v4 = [(NSMutableSet *)self->_inactiveResources anyObject];
  if (v4)
  {
    [(NSMutableSet *)self->_inactiveResources removeObject:v4];
  }

  else if (!self->_uncreatedResourcesCount || (v4 = objc_opt_new(), --self->_uncreatedResourcesCount, !v4))
  {
    v4 = [(EFQueue *)self->_activeResources dequeue];
    if (!v4)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EFResource.m" lineNumber:76 description:@"No active resources in the queue and no uncreated resources."];
    }
  }

  [(EFQueue *)self->_activeResources enqueue:v4];
  [v4 holdResource];
  os_unfair_lock_unlock(&self->_handleResourceLock);
  [v4 lock];

  return v4;
}

- (void)releaseResource:(id)a3
{
  v4 = a3;
  [v4 unlock];
  os_unfair_lock_lock(&self->_handleResourceLock);
  if ([v4 returnResource])
  {
    [(EFQueue *)self->_activeResources dequeueObject:v4];
    [(NSMutableSet *)self->_inactiveResources addObject:v4];
  }

  os_unfair_lock_unlock(&self->_handleResourceLock);
}

@end