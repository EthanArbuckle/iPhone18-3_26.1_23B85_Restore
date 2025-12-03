@interface JavaNetPlainSocketImpl_PlainSocketInputStream
- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)impl;
- (int)available;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNetPlainSocketImpl_PlainSocketInputStream

- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)impl
{
  JavaIoInputStream_init(self, a2);
  JreStrongAssign(&self->socketImpl_, impl);
  return self;
}

- (int)available
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetPlainSocketImpl *)socketImpl available];
}

- (void)close
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetPlainSocketImpl *)socketImpl close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetPlainSocketImpl_PlainSocketInputStream;
  [(JavaNetPlainSocketImpl_PlainSocketInputStream *)&v3 dealloc];
}

@end