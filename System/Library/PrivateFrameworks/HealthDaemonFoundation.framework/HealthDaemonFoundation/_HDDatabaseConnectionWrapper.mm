@interface _HDDatabaseConnectionWrapper
- (id)initWithConnection:(void *)connection flushGroup:(void *)group generation:;
@end

@implementation _HDDatabaseConnectionWrapper

- (id)initWithConnection:(void *)connection flushGroup:(void *)group generation:
{
  v8 = a2;
  connectionCopy = connection;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _HDDatabaseConnectionWrapper;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(self + 2, connection);
      self[3] = group;
    }
  }

  return self;
}

@end