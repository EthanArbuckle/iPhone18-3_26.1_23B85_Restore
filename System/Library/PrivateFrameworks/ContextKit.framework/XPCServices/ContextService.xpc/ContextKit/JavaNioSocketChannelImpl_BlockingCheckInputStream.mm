@interface JavaNioSocketChannelImpl_BlockingCheckInputStream
- (JavaNioSocketChannelImpl_BlockingCheckInputStream)initWithJavaIoInputStream:(id)stream withJavaNioChannelsSocketChannel:(id)channel;
- (id)checkBlocking;
- (int)read;
- (int)readWithByteArray:(id)array;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNioSocketChannelImpl_BlockingCheckInputStream

- (JavaNioSocketChannelImpl_BlockingCheckInputStream)initWithJavaIoInputStream:(id)stream withJavaNioChannelsSocketChannel:(id)channel
{
  JavaIoFilterInputStream_initWithJavaIoInputStream_(self, stream);
  JreStrongAssign(&self->channel_, channel);
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
  v1 = *(self + 16);
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

- (int)readWithByteArray:(id)array
{
  [JavaNioSocketChannelImpl_BlockingCheckInputStream checkBlocking]_0(self);
  v5 = atomic_load(&self->super.in_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 readWithByteArray:array];
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