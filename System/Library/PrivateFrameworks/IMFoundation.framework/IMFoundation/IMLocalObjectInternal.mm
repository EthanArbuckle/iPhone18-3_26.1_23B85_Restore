@interface IMLocalObjectInternal
- (void)dealloc;
@end

@implementation IMLocalObjectInternal

- (void)dealloc
{
  os_unfair_lock_lock(&self->_componentQueueLock);
  componentQueue = self->_componentQueue;
  if (componentQueue)
  {
    CFRelease(componentQueue);
  }

  os_unfair_lock_unlock(&self->_componentQueueLock);
  v4.receiver = self;
  v4.super_class = IMLocalObjectInternal;
  [(IMLocalObjectInternal *)&v4 dealloc];
}

@end