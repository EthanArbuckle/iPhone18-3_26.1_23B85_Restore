@interface CacheDeleteAsyncTimeoutFlag
- (BOOL)timedOut;
- (CacheDeleteAsyncTimeoutFlag)initWithQueue:(id)queue;
- (void)setTimedOut:(BOOL)out;
@end

@implementation CacheDeleteAsyncTimeoutFlag

- (CacheDeleteAsyncTimeoutFlag)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CacheDeleteAsyncTimeoutFlag;
  v6 = [(CacheDeleteAsyncTimeoutFlag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)setTimedOut:(BOOL)out
{
  queue = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __43__CacheDeleteAsyncTimeoutFlag_setTimedOut___block_invoke;
  v7[3] = &unk_1000619D8;
  v7[4] = self;
  outCopy = out;
  dispatch_sync(queue2, v7);
}

- (BOOL)timedOut
{
  queue = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_timedOut;
}

@end