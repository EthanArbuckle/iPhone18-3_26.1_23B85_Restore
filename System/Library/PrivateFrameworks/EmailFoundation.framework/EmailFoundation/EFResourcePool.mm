@interface EFResourcePool
- (EFResourcePool)initWithCount:(unint64_t)count;
- (id)acquireResource;
- (void)releaseResource:(id)resource;
@end

@implementation EFResourcePool

- (EFResourcePool)initWithCount:(unint64_t)count
{
  if (!count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFResource.m" lineNumber:44 description:@"Pool should not be initialized with a count of 0"];
  }

  v14.receiver = self;
  v14.super_class = EFResourcePool;
  v5 = [(EFResourcePool *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_handleResourceLock._os_unfair_lock_opaque = 0;
    v5->_uncreatedResourcesCount = count;
    v7 = [EFQueue boundedQueueWithCapacity:count overflowHandler:&__block_literal_global_28];
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
  anyObject = [(NSMutableSet *)self->_inactiveResources anyObject];
  if (anyObject)
  {
    [(NSMutableSet *)self->_inactiveResources removeObject:anyObject];
  }

  else if (!self->_uncreatedResourcesCount || (anyObject = objc_opt_new(), --self->_uncreatedResourcesCount, !anyObject))
  {
    anyObject = [(EFQueue *)self->_activeResources dequeue];
    if (!anyObject)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EFResource.m" lineNumber:76 description:@"No active resources in the queue and no uncreated resources."];
    }
  }

  [(EFQueue *)self->_activeResources enqueue:anyObject];
  [anyObject holdResource];
  os_unfair_lock_unlock(&self->_handleResourceLock);
  [anyObject lock];

  return anyObject;
}

- (void)releaseResource:(id)resource
{
  resourceCopy = resource;
  [resourceCopy unlock];
  os_unfair_lock_lock(&self->_handleResourceLock);
  if ([resourceCopy returnResource])
  {
    [(EFQueue *)self->_activeResources dequeueObject:resourceCopy];
    [(NSMutableSet *)self->_inactiveResources addObject:resourceCopy];
  }

  os_unfair_lock_unlock(&self->_handleResourceLock);
}

@end