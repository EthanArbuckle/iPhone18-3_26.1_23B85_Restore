@interface JavaNetDatagramSocket
- (BOOL)getBroadcast;
- (BOOL)getReuseAddress;
- (id)ensureBound;
- (id)getFileDescriptor$;
- (id)getLocalAddress;
- (id)getLocalSocketAddress;
- (id)getRemoteSocketAddress;
- (int)getLocalPort;
- (int)getReceiveBufferSize;
- (int)getSendBufferSize;
- (int)getSoTimeout;
- (int)getTrafficClass;
- (void)bindWithJavaNetSocketAddress:(id)address;
- (void)checkOpen;
- (void)close;
- (void)connectWithJavaNetInetAddress:(id)address withInt:(int)int;
- (void)connectWithJavaNetSocketAddress:(id)address;
- (void)dealloc;
- (void)disconnect;
- (void)onClose;
- (void)onDisconnect;
- (void)receiveWithJavaNetDatagramPacket:(id)packet;
- (void)sendWithJavaNetDatagramPacket:(id)packet;
- (void)setBroadcastWithBoolean:(BOOL)boolean;
- (void)setNetworkInterfaceWithJavaNetNetworkInterface:(id)interface;
- (void)setReceiveBufferSizeWithInt:(int)int;
- (void)setReuseAddressWithBoolean:(BOOL)boolean;
- (void)setSendBufferSizeWithInt:(int)int;
- (void)setSoTimeoutWithInt:(int)int;
- (void)setTrafficClassWithInt:(int)int;
@end

@implementation JavaNetDatagramSocket

- (void)close
{
  self->isClosed_ = 1;
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl close];
}

- (void)onClose
{
  self->isClosed_ = 1;
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl onClose];
}

- (void)disconnect
{
  if (![(JavaNetDatagramSocket *)self isClosed]&& [(JavaNetDatagramSocket *)self isConnected])
  {
    impl = self->impl_;
    if (!impl)
    {
      JreThrowNullPointerException();
    }

    [(JavaNetDatagramSocketImpl *)impl disconnect];
    JreStrongAssign(&self->address_, 0);
    self->port_ = -1;
    self->isConnected_ = 0;
  }
}

- (void)onDisconnect
{
  JreStrongAssign(&self->address_, 0);
  self->port_ = -1;
  self->isConnected_ = 0;
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl onDisconnect];
}

- (id)getLocalAddress
{
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return LibcoreIoIoBridge_getSocketLocalAddressWithJavaIoFileDescriptor_(impl->fd_);
}

- (int)getLocalPort
{
  if ([(JavaNetDatagramSocket *)self isClosed])
  {
    return -1;
  }

  result = [(JavaNetDatagramSocket *)self isBound];
  if (result)
  {
    impl = self->impl_;
    if (!impl)
    {
      JreThrowNullPointerException();
    }

    return [(JavaNetDatagramSocketImpl *)impl getLocalPort];
  }

  return result;
}

- (int)getReceiveBufferSize
{
  objc_sync_enter(self);
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:4098], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [v4 intValue];
  objc_sync_exit(self);
  return intValue;
}

- (int)getSendBufferSize
{
  objc_sync_enter(self);
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:4097], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [v4 intValue];
  objc_sync_exit(self);
  return intValue;
}

- (int)getSoTimeout
{
  objc_sync_enter(self);
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:4102], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [v4 intValue];
  objc_sync_exit(self);
  return intValue;
}

- (void)receiveWithJavaNetDatagramPacket:(id)packet
{
  objc_sync_enter(self);
  [(JavaNetDatagramSocket *)self checkOpen];
  [JavaNetDatagramSocket ensureBound]_0(self);
  if (!packet)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"pack == null");
    goto LABEL_10;
  }

  pendingConnectException = self->pendingConnectException_;
  if (pendingConnectException)
  {
    v7 = new_JavaNetSocketException_initWithNSString_withJavaLangThrowable_(@"Pending connect failure", pendingConnectException);
LABEL_10:
    objc_exception_throw(v7);
  }

  [packet resetLengthForReceive];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl receiveWithJavaNetDatagramPacket:packet];

  objc_sync_exit(self);
}

- (id)ensureBound
{
  result = [self isBound];
  if ((result & 1) == 0)
  {
    v3 = *(self + 8);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001520E0();
    }

    result = [v3 bindWithInt:0 withJavaNetInetAddress:JavaNetInet4Address_ANY_];
    *(self + 28) = 1;
  }

  return result;
}

- (void)sendWithJavaNetDatagramPacket:(id)packet
{
  [(JavaNetDatagramSocket *)self checkOpen];
  [JavaNetDatagramSocket ensureBound]_0(self);
  if (!packet)
  {
    goto LABEL_15;
  }

  getAddress = [packet getAddress];
  if (self->address_)
  {
    if (getAddress)
    {
      if (!-[JavaNetInetAddress isEqual:](self->address_, "isEqual:", getAddress) || (port = self->port_, port != [packet getPort]))
      {
        v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Packet address mismatch with connected address");
        goto LABEL_9;
      }
    }

    else
    {
      [packet setAddressWithJavaNetInetAddress:self->address_];
      [packet setPortWithInt:self->port_];
    }
  }

  else if (!getAddress)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"Destination address is null");
LABEL_9:
    objc_exception_throw(v7);
  }

  impl = self->impl_;
  if (!impl)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl sendWithJavaNetDatagramPacket:packet];
}

- (void)setNetworkInterfaceWithJavaNetNetworkInterface:(id)interface
{
  if (!interface)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"netInterface == null");
    objc_exception_throw(v6);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (impl = self->impl_) == 0)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ setsockoptIfreqWithJavaIoFileDescriptor:impl->fd_ withInt:0xFFFFLL withInt:25 withNSString:{objc_msgSend(interface, "getName")}];
}

- (void)setSendBufferSizeWithInt:(int)int
{
  objc_sync_enter(self);
  if (int <= 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 1");
    objc_exception_throw(v6);
  }

  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:4097 withId:JavaLangInteger_valueOfWithInt_(int)];

  objc_sync_exit(self);
}

- (void)setReceiveBufferSizeWithInt:(int)int
{
  objc_sync_enter(self);
  if (int <= 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 1");
    objc_exception_throw(v6);
  }

  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:4098 withId:JavaLangInteger_valueOfWithInt_(int)];

  objc_sync_exit(self);
}

- (void)setSoTimeoutWithInt:(int)int
{
  objc_sync_enter(self);
  if (int < 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"timeout < 0");
    objc_exception_throw(v6);
  }

  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:4102 withId:JavaLangInteger_valueOfWithInt_(int)];

  objc_sync_exit(self);
}

- (void)checkOpen
{
  if ([(JavaNetDatagramSocket *)self isClosed])
  {
    v2 = new_JavaNetSocketException_initWithNSString_(@"Socket is closed");
    objc_exception_throw(v2);
  }
}

- (void)bindWithJavaNetSocketAddress:(id)address
{
  [(JavaNetDatagramSocket *)self checkOpen];
  if (address)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      getAddress = [address getAddress];
      if (getAddress)
      {
        v6 = getAddress;
        getPort = [address getPort];
        sub_100150728(getPort, v8, v9, v10, v11, v12, v13, v14);
        goto LABEL_9;
      }

      [address getHostName];
      v32 = JreStrcat("$$", v25, v26, v27, v28, v29, v30, v31, @"Host is unresolved: ");
      v24 = new_JavaNetSocketException_initWithNSString_(v32);
    }

    else
    {
      [address getClass];
      v23 = JreStrcat("$@", v16, v17, v18, v19, v20, v21, v22, @"Local address not an InetSocketAddress: ");
      v24 = new_JavaLangIllegalArgumentException_initWithNSString_(v23);
    }

    objc_exception_throw(v24);
  }

  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  getPort = 0;
  v6 = JavaNetInet4Address_ANY_;
LABEL_9:
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl bindWithInt:getPort withJavaNetInetAddress:v6];
  self->isBound_ = 1;
}

- (void)connectWithJavaNetSocketAddress:(id)address
{
  if (!address)
  {
    v8 = @"peer == null";
LABEL_13:
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [address getClass];
    v8 = JreStrcat("$@", v9, v10, v11, v12, v13, v14, v15, @"peer not an InetSocketAddress: ");
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (![address getAddress])
  {
    [address getHostName];
    v24 = JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, @"Host is unresolved: ");
    v16 = new_JavaNetSocketException_initWithNSString_(v24);
LABEL_15:
    objc_exception_throw(v16);
  }

  lock = self->lock_;
  objc_sync_enter(lock);
  [(JavaNetDatagramSocket *)self checkOpen];
  [JavaNetDatagramSocket ensureBound]_0(self);
  JreStrongAssign(&self->address_, [address getAddress]);
  getPort = [address getPort];
  self->port_ = getPort;
  self->isConnected_ = 1;
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetDatagramSocketImpl *)impl connectWithJavaNetInetAddress:self->address_ withInt:getPort];

  objc_sync_exit(lock);
}

- (void)connectWithJavaNetInetAddress:(id)address withInt:(int)int
{
  if (!address)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"address == null");
    objc_exception_throw(v4);
  }

  [(JavaNetDatagramSocket *)self connectWithJavaNetSocketAddress:new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(address, int)];
}

- (id)getRemoteSocketAddress
{
  if (![(JavaNetDatagramSocket *)self isConnected])
  {
    return 0;
  }

  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetDatagramSocket *)self getInetAddress], [(JavaNetDatagramSocket *)self getPort]);

  return v3;
}

- (id)getLocalSocketAddress
{
  if ([(JavaNetDatagramSocket *)self isClosed]|| ![(JavaNetDatagramSocket *)self isBound])
  {
    return 0;
  }

  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetDatagramSocket *)self getLocalAddress], [(JavaNetDatagramSocket *)self getLocalPort]);

  return v3;
}

- (void)setReuseAddressWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangBoolean_valueOfWithBoolean_(booleanCopy);

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:4 withId:v6];
}

- (BOOL)getReuseAddress
{
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:4], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (void)setBroadcastWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangBoolean_valueOfWithBoolean_(booleanCopy);

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:32 withId:v6];
}

- (BOOL)getBroadcast
{
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:32], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (void)setTrafficClassWithInt:(int)int
{
  [(JavaNetDatagramSocket *)self checkOpen];
  if (int >= 0x100)
  {
    v14 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Value doesn't fit in an unsigned byte: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v13 = JavaLangInteger_valueOfWithInt_(int);

  [(JavaNetDatagramSocketImpl *)impl setOptionWithInt:3 withId:v13];
}

- (int)getTrafficClass
{
  [(JavaNetDatagramSocket *)self checkOpen];
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetDatagramSocketImpl *)impl getOptionWithInt:3], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 intValue];
}

- (id)getFileDescriptor$
{
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return impl->fd_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetDatagramSocket;
  [(JavaNetDatagramSocket *)&v3 dealloc];
}

@end