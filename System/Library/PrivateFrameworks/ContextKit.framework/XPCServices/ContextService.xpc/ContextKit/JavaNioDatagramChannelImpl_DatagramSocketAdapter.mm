@interface JavaNioDatagramChannelImpl_DatagramSocketAdapter
- (void)__javaClone;
- (void)bindWithJavaNetSocketAddress:(id)a3;
- (void)close;
- (void)connectWithJavaNetSocketAddress:(id)a3;
- (void)disconnect;
- (void)receiveWithJavaNetDatagramPacket:(id)a3;
- (void)sendWithJavaNetDatagramPacket:(id)a3;
@end

@implementation JavaNioDatagramChannelImpl_DatagramSocketAdapter

- (void)bindWithJavaNetSocketAddress:(id)a3
{
  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  if ([Weak isConnected])
  {
    v6 = new_JavaNioChannelsAlreadyConnectedException_init();
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v7 bindWithJavaNetSocketAddress:a3];
  [objc_loadWeak(&self->channelImpl_) onBindWithBoolean:0];
}

- (void)connectWithJavaNetSocketAddress:(id)a3
{
  if ([(JavaNetDatagramSocket *)self isConnected])
  {
    v6 = new_JavaLangIllegalStateException_initWithNSString_(@"Socket is already connected.");
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v7 connectWithJavaNetSocketAddress:a3];
  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  [Weak onBindWithBoolean:0];
  objc_opt_class();
  if (!a3)
  {
    objc_loadWeak(&self->channelImpl_);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [objc_loadWeak(&self->channelImpl_) onConnectWithJavaNetInetAddress:objc_msgSend(a3 withInt:"getAddress") withBoolean:{objc_msgSend(a3, "getPort"), 0}];
}

- (void)receiveWithJavaNetDatagramPacket:(id)a3
{
  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  if (([Weak isBlocking] & 1) == 0)
  {
    v7 = new_JavaNioChannelsIllegalBlockingModeException_init();
    objc_exception_throw(v7);
  }

  v6 = [(JavaNetDatagramSocket *)self isBound];
  v8.receiver = self;
  v8.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v8 receiveWithJavaNetDatagramPacket:a3];
  if ((v6 & 1) == 0)
  {
    [objc_loadWeak(&self->channelImpl_) onBindWithBoolean:0];
  }
}

- (void)sendWithJavaNetDatagramPacket:(id)a3
{
  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  if (([Weak isBlocking] & 1) == 0)
  {
    v7 = new_JavaNioChannelsIllegalBlockingModeException_init();
    objc_exception_throw(v7);
  }

  v6 = [(JavaNetDatagramSocket *)self isBound];
  v8.receiver = self;
  v8.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v8 sendWithJavaNetDatagramPacket:a3];
  if ((v6 & 1) == 0)
  {
    [objc_loadWeak(&self->channelImpl_) onBindWithBoolean:0];
  }
}

- (void)close
{
  Weak = objc_loadWeak(&self->channelImpl_);
  objc_sync_enter(Weak);
  v5.receiver = self;
  v5.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v5 close];
  v4 = objc_loadWeak(&self->channelImpl_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if ([v4 isOpen])
  {
    [objc_loadWeak(&self->channelImpl_) close];
  }

  objc_sync_exit(Weak);
}

- (void)disconnect
{
  v4.receiver = self;
  v4.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNetDatagramSocket *)&v4 disconnect];
  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  [Weak onDisconnectWithBoolean:0];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioDatagramChannelImpl_DatagramSocketAdapter;
  [(JavaNioDatagramChannelImpl_DatagramSocketAdapter *)&v3 __javaClone];
}

@end