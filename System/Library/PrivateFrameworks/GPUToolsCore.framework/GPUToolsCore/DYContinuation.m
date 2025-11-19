@interface DYContinuation
- (DYContinuation)init;
- (DYContinuation)initWithQueue:(id)a3 block:(id)a4;
- (void)dealloc;
@end

@implementation DYContinuation

- (DYContinuation)init
{
  [(DYContinuation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYContinuation)initWithQueue:(id)a3 block:(id)a4
{
  if (!a3)
  {
    [DYContinuation initWithQueue:block:];
  }

  if (!a4)
  {
    [DYContinuation initWithQueue:block:];
  }

  v8.receiver = self;
  v8.super_class = DYContinuation;
  v6 = [(DYContinuation *)&v8 init];
  if (v6)
  {
    dispatch_retain(a3);
    v6->queue = a3;
    v6->block = [a4 copy];
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