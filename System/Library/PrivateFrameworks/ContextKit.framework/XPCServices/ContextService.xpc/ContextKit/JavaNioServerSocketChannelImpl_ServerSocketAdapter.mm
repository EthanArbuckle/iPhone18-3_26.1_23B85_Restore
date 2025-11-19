@interface JavaNioServerSocketChannelImpl_ServerSocketAdapter
- (JavaNioServerSocketChannelImpl_ServerSocketAdapter)initWithJavaNioServerSocketChannelImpl:(id)a3;
- (id)accept;
- (id)getFD$;
- (id)implAcceptWithJavaNioSocketChannelImpl:(id)a3;
- (void)__javaClone;
- (void)close;
@end

@implementation JavaNioServerSocketChannelImpl_ServerSocketAdapter

- (JavaNioServerSocketChannelImpl_ServerSocketAdapter)initWithJavaNioServerSocketChannelImpl:(id)a3
{
  JavaNetServerSocket_init(self);
  objc_storeWeak(&self->channelImpl_, a3);
  return self;
}

- (id)accept
{
  if (![(JavaNetServerSocket *)self isBound])
  {
    goto LABEL_8;
  }

  Weak = objc_loadWeak(&self->channelImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  v4 = [Weak accept];
  if (!v4)
  {
LABEL_8:
    v6 = new_JavaNioChannelsIllegalBlockingModeException_init();
    objc_exception_throw(v6);
  }

  return [v4 socket];
}

- (id)implAcceptWithJavaNioSocketChannelImpl:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 socket];
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = JavaNioServerSocketChannelImpl_ServerSocketAdapter;
  [(JavaNetServerSocket *)&v7 implAcceptWithJavaNetSocket:v5];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [a3 onAcceptWithJavaNetInetSocketAddress:new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(objc_msgSend(v5 withBoolean:{"getInetAddress"), objc_msgSend(v5, "getPort")), 0}];
  objc_sync_exit(self);
  return v5;
}

- (void)close
{
  Weak = objc_loadWeak(&self->channelImpl_);
  objc_sync_enter(Weak);
  v5.receiver = self;
  v5.super_class = JavaNioServerSocketChannelImpl_ServerSocketAdapter;
  [(JavaNetServerSocket *)&v5 close];
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

- (id)getFD$
{
  v4.receiver = self;
  v4.super_class = JavaNioServerSocketChannelImpl_ServerSocketAdapter;
  v2 = [(JavaNetServerSocket *)&v4 getImpl$];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 getFD$];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioServerSocketChannelImpl_ServerSocketAdapter;
  [(JavaNioServerSocketChannelImpl_ServerSocketAdapter *)&v3 __javaClone];
}

@end