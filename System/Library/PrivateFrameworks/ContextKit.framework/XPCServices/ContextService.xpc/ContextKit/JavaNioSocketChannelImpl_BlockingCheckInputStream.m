@interface JavaNioSocketChannelImpl_BlockingCheckInputStream
- (JavaNioSocketChannelImpl_BlockingCheckInputStream)initWithJavaIoInputStream:(id)a3 withJavaNioChannelsSocketChannel:(id)a4;
- (id)checkBlocking;
- (int)read;
- (int)readWithByteArray:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNioSocketChannelImpl_BlockingCheckInputStream

- (JavaNioSocketChannelImpl_BlockingCheckInputStream)initWithJavaIoInputStream:(id)a3 withJavaNioChannelsSocketChannel:(id)a4
{
  JavaIoFilterInputStream_initWithJavaIoInputStream_(self, a3);
  JreStrongAssign(&self->channel_, a4);
  return self;
}

- (int)read
{
  [JavaNioSocketChannelImpl_BlockingCheckInputStream checkBlocking]_0(self);
  v3 = atomic_load(&self->super.in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 read];
}

- (id)checkBlocking
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  result = [v1 isBlocking];
  if ((result & 1) == 0)
  {
    v3 = new_JavaNioChannelsIllegalBlockingModeException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (int)readWithByteArray:(id)a3
{
  [JavaNioSocketChannelImpl_BlockingCheckInputStream checkBlocking]_0(self);
  v5 = atomic_load(&self->super.in_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 readWithByteArray:a3];
}

- (void)close
{
  v4.receiver = self;
  v4.super_class = JavaNioSocketChannelImpl_BlockingCheckInputStream;
  [(JavaIoFilterInputStream *)&v4 close];
  channel = self->channel_;
  if (!channel)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)channel close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSocketChannelImpl_BlockingCheckInputStream;
  [(JavaIoFilterInputStream *)&v3 dealloc];
}

@end