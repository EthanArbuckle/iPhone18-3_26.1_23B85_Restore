@interface JavaNetPlainSocketImpl_PlainSocketOutputStream
- (JavaNetPlainSocketImpl_PlainSocketOutputStream)initWithJavaNetPlainSocketImpl:(id)impl;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNetPlainSocketImpl_PlainSocketOutputStream

- (JavaNetPlainSocketImpl_PlainSocketOutputStream)initWithJavaNetPlainSocketImpl:(id)impl
{
  JavaIoOutputStream_init(self, a2);
  JreStrongAssign(&self->socketImpl_, impl);
  return self;
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
  v3.super_class = JavaNetPlainSocketImpl_PlainSocketOutputStream;
  [(JavaNetPlainSocketImpl_PlainSocketOutputStream *)&v3 dealloc];
}

@end