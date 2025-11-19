@interface JavaNetPlainSocketImpl_PlainSocketInputStream
- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)a3;
- (int)available;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNetPlainSocketImpl_PlainSocketInputStream

- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)a3
{
  JavaIoInputStream_init(self, a2);
  JreStrongAssign(&self->socketImpl_, a3);
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