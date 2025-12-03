@interface JavaNioServerSocketChannelImpl_ServerSocketAdapter
- (JavaNioServerSocketChannelImpl_ServerSocketAdapter)initWithJavaNioServerSocketChannelImpl:(id)impl;
- (id)accept;
- (id)getFD$;
- (id)implAcceptWithJavaNioSocketChannelImpl:(id)impl;
- (void)__javaClone;
- (void)close;
@end

@implementation JavaNioServerSocketChannelImpl_ServerSocketAdapter

- (JavaNioServerSocketChannelImpl_ServerSocketAdapter)initWithJavaNioServerSocketChannelImpl:(id)impl
{
  JavaNetServerSocket_init(self);
  objc_storeWeak(&self->channelImpl_, impl);
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

  accept = [Weak accept];
  if (!accept)
  {
LABEL_8:
    v6 = new_JavaNioChannelsIllegalBlockingModeException_init();
    objc_exception_throw(v6);
  }

  return [accept socket];
}

- (id)implAcceptWithJavaNioSocketChannelImpl:(id)impl
{
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  socket = [impl socket];
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = JavaNioServerSocketChannelImpl_ServerSocketAdapter;
  [(JavaNetServerSocket *)&v7 implAcceptWithJavaNetSocket:socket];
  if (!socket)
  {
    JreThrowNullPointerException();
  }

  [impl onAcceptWithJavaNetInetSocketAddress:new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(objc_msgSend(socket withBoolean:{"getInetAddress"), objc_msgSend(socket, "getPort")), 0}];
  objc_sync_exit(self);
  return socket;
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