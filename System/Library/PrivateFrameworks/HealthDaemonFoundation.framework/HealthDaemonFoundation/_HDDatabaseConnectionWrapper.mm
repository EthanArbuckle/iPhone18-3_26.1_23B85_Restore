@interface _HDDatabaseConnectionWrapper
- (id)initWithConnection:(void *)a3 flushGroup:(void *)a4 generation:;
@end

@implementation _HDDatabaseConnectionWrapper

- (id)initWithConnection:(void *)a3 flushGroup:(void *)a4 generation:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _HDDatabaseConnectionWrapper;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      a1[3] = a4;
    }
  }

  return a1;
}

@end