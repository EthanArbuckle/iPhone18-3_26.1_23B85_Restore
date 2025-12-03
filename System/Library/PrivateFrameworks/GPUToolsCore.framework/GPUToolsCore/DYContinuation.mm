@interface DYContinuation
- (DYContinuation)init;
- (DYContinuation)initWithQueue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation DYContinuation

- (DYContinuation)init
{
  [(DYContinuation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYContinuation)initWithQueue:(id)queue block:(id)block
{
  if (!queue)
  {
    [DYContinuation initWithQueue:block:];
  }

  if (!block)
  {
    [DYContinuation initWithQueue:block:];
  }

  v8.receiver = self;
  v8.super_class = DYContinuation;
  v6 = [(DYContinuation *)&v8 init];
  if (v6)
  {
    dispatch_retain(queue);
    v6->queue = queue;
    v6->block = [block copy];
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->queue);
  v3.receiver = self;
  v3.super_class = DYContinuation;
  [(DYContinuation *)&v3 dealloc];
}

@end