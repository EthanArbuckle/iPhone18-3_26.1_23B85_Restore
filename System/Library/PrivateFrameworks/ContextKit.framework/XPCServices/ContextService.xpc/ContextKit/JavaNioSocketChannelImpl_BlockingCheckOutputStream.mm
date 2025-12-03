@interface JavaNioSocketChannelImpl_BlockingCheckOutputStream
- (JavaNioSocketChannelImpl_BlockingCheckOutputStream)initWithJavaIoOutputStream:(id)stream withJavaNioChannelsSocketChannel:(id)channel;
- (id)checkBlocking;
- (void)close;
- (void)dealloc;
- (void)writeWithByteArray:(id)array;
@end

@implementation JavaNioSocketChannelImpl_BlockingCheckOutputStream

- (JavaNioSocketChannelImpl_BlockingCheckOutputStream)initWithJavaIoOutputStream:(id)stream withJavaNioChannelsSocketChannel:(id)channel
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, stream);
  JreStrongAssign(&self->channel_, channel);
  return self;
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

- (void)writeWithByteArray:(id)array
{
  [JavaNioSocketChannelImpl_BlockingCheckOutputStream checkBlocking]_0(self);
  out = self->super.out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out writeWithByteArray:array];
}

- (void)close
{
  v4.receiver = self;
  v4.super_class = JavaNioSocketChannelImpl_BlockingCheckOutputStream;
  [(JavaIoFilterOutputStream *)&v4 close];
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
  v3.super_class = JavaNioSocketChannelImpl_BlockingCheckOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end