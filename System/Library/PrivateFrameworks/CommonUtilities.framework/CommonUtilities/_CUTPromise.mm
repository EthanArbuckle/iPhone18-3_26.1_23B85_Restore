@interface _CUTPromise
- (_CUTPromise)initWithQueue:(id)a3;
- (void)_fulfillWithResult:(id)a3;
- (void)registerResultBlock:(id)a3;
@end

@implementation _CUTPromise

- (_CUTPromise)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _CUTPromise;
  v6 = [(CUTUnsafePromise *)&v11 _init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 24) = 0;
    objc_storeStrong(v6 + 1, a3);
    v8 = dispatch_group_create();
    v9 = v7[2];
    v7[2] = v8;

    dispatch_group_enter(v7[2]);
  }

  return v7;
}

- (void)_fulfillWithResult:(id)a3
{
  v5 = a3;
  v6 = [(_CUTPromise *)self queue];
  dispatch_assert_queue_V2(v6);

  if ([(_CUTPromise *)self done])
  {
    sub_1B2331310(a2, self);
  }

  [(_CUTPromise *)self setDone:1];
  [(_CUTPromise *)self setResult:v5];

  v7 = [(_CUTPromise *)self group];
  dispatch_group_leave(v7);
}

- (void)registerResultBlock:(id)a3
{
  v4 = a3;
  v5 = [(_CUTPromise *)self group];
  v6 = [(_CUTPromise *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B23279A8;
  v8[3] = &unk_1E7B20DC0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(v5, v6, v8);
}

@end