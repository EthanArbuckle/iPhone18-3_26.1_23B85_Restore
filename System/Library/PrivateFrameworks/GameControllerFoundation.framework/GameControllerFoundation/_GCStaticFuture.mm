@interface _GCStaticFuture
- (_DWORD)_initCancelled;
- (id)_initWithError:(void *)error;
- (id)_initWithResult:(void *)result;
@end

@implementation _GCStaticFuture

- (id)_initWithResult:(void *)result
{
  v4 = a2;
  v5 = v4;
  if (result)
  {
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithResult_ object:result file:@"GCFuture.mm" lineNumber:1172 description:{@"Invalid parameter not satisfying: %s", "result != nil"}];
    }

    v9.receiver = result;
    v9.super_class = GCFuture;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    *(v6 + 2) = 0;
    *(v6 + 12) = -2;
    *(v6 + 12) = 2;
    objc_storeStrong(v6 + 2, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_initWithError:(void *)error
{
  v4 = a2;
  v5 = v4;
  if (error)
  {
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithError_ object:error file:@"GCFuture.mm" lineNumber:1186 description:{@"Invalid parameter not satisfying: %s", "error != nil"}];
    }

    v9.receiver = error;
    v9.super_class = GCFuture;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    *(v6 + 2) = 0;
    *(v6 + 12) = -2;
    *(v6 + 12) = 1;
    objc_storeStrong(v6 + 2, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_DWORD)_initCancelled
{
  if (!self)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = GCFuture;
  v1 = objc_msgSendSuper2(&v4, sel_init);
  v1[2] = 0;
  *(v1 + 12) = -2;
  *(v1 + 12) = 0;
  v2 = *(v1 + 2);
  *(v1 + 2) = 0;

  return v1;
}

@end