@interface CacheDeleteAsyncTimeoutFlag
- (BOOL)timedOut;
- (CacheDeleteAsyncTimeoutFlag)initWithQueue:(id)a3;
- (void)setTimedOut:(BOOL)a3;
@end

@implementation CacheDeleteAsyncTimeoutFlag

- (CacheDeleteAsyncTimeoutFlag)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CacheDeleteAsyncTimeoutFlag;
  v6 = [(CacheDeleteAsyncTimeoutFlag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)setTimedOut:(BOOL)a3
{
  v5 = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __43__CacheDeleteAsyncTimeoutFlag_setTimedOut___block_invoke;
  v7[3] = &unk_1000619D8;
  v7[4] = self;
  v8 = a3;
  dispatch_sync(v6, v7);
}

- (BOOL)timedOut
{
  v3 = [(CacheDeleteAsyncTimeoutFlag *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_timedOut;
}

@end