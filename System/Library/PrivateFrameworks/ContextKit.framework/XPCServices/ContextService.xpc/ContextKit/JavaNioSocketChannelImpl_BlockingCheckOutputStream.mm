@interface JavaNioSocketChannelImpl_BlockingCheckOutputStream
- (JavaNioSocketChannelImpl_BlockingCheckOutputStream)initWithJavaIoOutputStream:(id)a3 withJavaNioChannelsSocketChannel:(id)a4;
- (id)checkBlocking;
- (void)close;
- (void)dealloc;
- (void)writeWithByteArray:(id)a3;
@end

@implementation JavaNioSocketChannelImpl_BlockingCheckOutputStream

- (JavaNioSocketChannelImpl_BlockingCheckOutputStream)initWithJavaIoOutputStream:(id)a3 withJavaNioChannelsSocketChannel:(id)a4
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, a3);
  JreStrongAssign(&self->channel_, a4);
  return self;
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

- (void)writeWithByteArray:(id)a3
{
  [JavaNioSocketChannelImpl_BlockingCheckOutputStream checkBlocking]_0(self);
  out = self->super.out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out writeWithByteArray:a3];
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