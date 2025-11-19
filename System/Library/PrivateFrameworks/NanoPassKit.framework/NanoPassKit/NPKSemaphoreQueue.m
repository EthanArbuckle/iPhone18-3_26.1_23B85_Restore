@interface NPKSemaphoreQueue
- (NPKSemaphoreQueue)init;
- (void)dispatchSync:(id)a3;
@end

@implementation NPKSemaphoreQueue

- (NPKSemaphoreQueue)init
{
  *(&self->super.isa + OBJC_IVAR___NPKSemaphoreQueue_semaphore) = dispatch_semaphore_create(1);
  v4.receiver = self;
  v4.super_class = type metadata accessor for SemaphoreQueue();
  return [(NPKSemaphoreQueue *)&v4 init];
}

- (void)dispatchSync:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR___NPKSemaphoreQueue_semaphore;
  v6 = *(&self->super.isa + OBJC_IVAR___NPKSemaphoreQueue_semaphore);
  v8 = self;
  sub_25B55AEDC();
  v4[2](v4);
  _Block_release(v4);
  v7 = *(&self->super.isa + v5);
  sub_25B55AEEC();
}

@end