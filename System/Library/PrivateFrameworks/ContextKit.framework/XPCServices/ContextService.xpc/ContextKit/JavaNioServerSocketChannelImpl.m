@interface JavaNioServerSocketChannelImpl
- (id)accept;
- (id)getFD;
- (id)getLocalAddress;
- (id)getOptionWithJavaNetSocketOption:(id)a3;
- (id)setOptionWithJavaNetSocketOption:(id)a3 withId:(id)a4;
- (id)supportedOptions;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)implConfigureBlockingWithBoolean:(BOOL)a3;
@end

@implementation JavaNioServerSocketChannelImpl

- (id)getLocalAddress
{
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v4 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v4);
  }

  v3 = *(&self->super.super.blockingLock_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getLocalSocketAddress];
}

- (id)getOptionWithJavaNetSocketOption:(id)a3
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  v5 = JavaNetStandardSocketOptions_SERVER_SOCKET_OPTIONS_;

  return JavaNioNioUtils_getSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_(self, v5, a3);
}

- (id)setOptionWithJavaNetSocketOption:(id)a3 withId:(id)a4
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  JavaNioNioUtils_setSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_withId_(self, JavaNetStandardSocketOptions_SERVER_SOCKET_OPTIONS_, a3, a4);
  return self;
}

- (id)supportedOptions
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  return JavaNetStandardSocketOptions_SERVER_SOCKET_OPTIONS_;
}

- (id)accept
{
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v7 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_10;
  }

  v3 = *(&self->super.super.blockingLock_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if (([v3 isBound] & 1) == 0)
  {
    v7 = new_JavaNioChannelsNotYetBoundException_init();
LABEL_10:
    objc_exception_throw(v7);
  }

  v4 = new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withBoolean_([(JavaNioChannelsSpiAbstractSelectableChannel *)self provider], 0);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  v5 = *(&self->socket_ + 7);
  objc_sync_enter(v5);
  [*(&self->super.super.blockingLock_ + 7) implAcceptWithJavaNioSocketChannelImpl:v4];
  objc_sync_exit(v5);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:[(JavaNioSocketChannelImpl *)v4 isConnected]];
  if ([(JavaNioSocketChannelImpl *)v4 isConnected])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)implConfigureBlockingWithBoolean:(BOOL)a3
{
  v3 = *(&self->super.super.blockingLock_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = a3;
  v5 = [v3 getFD$];

  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(v5, v4);
}

- (void)implCloseSelectableChannel
{
  objc_sync_enter(self);
  v3 = *(&self->super.super.blockingLock_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if (([v3 isClosed] & 1) == 0)
  {
    [*(&self->super.super.blockingLock_ + 7) close];
  }

  objc_sync_exit(self);
}

- (id)getFD
{
  v3 = *(&self->super.super.blockingLock_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getFD$];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioServerSocketChannelImpl;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end