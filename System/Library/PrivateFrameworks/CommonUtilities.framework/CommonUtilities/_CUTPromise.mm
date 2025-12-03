@interface _CUTPromise
- (_CUTPromise)initWithQueue:(id)queue;
- (void)_fulfillWithResult:(id)result;
- (void)registerResultBlock:(id)block;
@end

@implementation _CUTPromise

- (_CUTPromise)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = _CUTPromise;
  _init = [(CUTUnsafePromise *)&v11 _init];
  v7 = _init;
  if (_init)
  {
    *(_init + 24) = 0;
    objc_storeStrong(_init + 1, queue);
    v8 = dispatch_group_create();
    v9 = v7[2];
    v7[2] = v8;

    dispatch_group_enter(v7[2]);
  }

  return v7;
}

- (void)_fulfillWithResult:(id)result
{
  resultCopy = result;
  queue = [(_CUTPromise *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(_CUTPromise *)self done])
  {
    sub_1B2331310(a2, self);
  }

  [(_CUTPromise *)self setDone:1];
  [(_CUTPromise *)self setResult:resultCopy];

  group = [(_CUTPromise *)self group];
  dispatch_group_leave(group);
}

- (void)registerResultBlock:(id)block
{
  blockCopy = block;
  group = [(_CUTPromise *)self group];
  queue = [(_CUTPromise *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B23279A8;
  v8[3] = &unk_1E7B20DC0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_group_notify(group, queue, v8);
}

@end