@interface JavaNetSocket
- (BOOL)getKeepAlive;
- (BOOL)getOOBInline;
- (BOOL)getReuseAddress;
- (BOOL)getTcpNoDelay;
- (NSString)description;
- (id)cacheLocalAddress;
- (id)getFileDescriptor$;
- (id)getInetAddress;
- (id)getInputStream;
- (id)getLocalSocketAddress;
- (id)getOutputStream;
- (id)getRemoteSocketAddress;
- (int)getLocalPort;
- (int)getPort;
- (int)getReceiveBufferSize;
- (int)getSendBufferSize;
- (int)getSoLinger;
- (int)getSoTimeout;
- (int)getTrafficClass;
- (void)accepted;
- (void)bindWithJavaNetSocketAddress:(id)a3;
- (void)close;
- (void)dealloc;
- (void)onClose;
- (void)setKeepAliveWithBoolean:(BOOL)a3;
- (void)setOOBInlineWithBoolean:(BOOL)a3;
- (void)setReceiveBufferSizeWithInt:(int)a3;
- (void)setReuseAddressWithBoolean:(BOOL)a3;
- (void)setSendBufferSizeWithInt:(int)a3;
- (void)setSoLingerWithBoolean:(BOOL)a3 withInt:(int)a4;
- (void)setSoTimeoutWithInt:(int)a3;
- (void)setTcpNoDelayWithBoolean:(BOOL)a3;
- (void)setTrafficClassWithInt:(int)a3;
- (void)shutdownInput;
- (void)shutdownOutput;
@end

@implementation JavaNetSocket

- (void)close
{
  objc_sync_enter(self);
  *&self->isConnected_ = 256;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  JreStrongAssign(&self->localAddress_, JavaNetInet4Address_ANY_);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl close];

  objc_sync_exit(self);
}

- (void)onClose
{
  *&self->isConnected_ = 256;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  JreStrongAssign(&self->localAddress_, JavaNetInet4Address_ANY_);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl onClose];
}

- (id)getInetAddress
{
  if (![(JavaNetSocket *)self isConnected])
  {
    return 0;
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetSocketImpl *)impl getInetAddress];
}

- (id)getInputStream
{
  sub_10015092C(self, 0);
  if ([(JavaNetSocket *)self isInputShutdown])
  {
    v5 = new_JavaNetSocketException_initWithNSString_(@"Socket input is shutdown");
    objc_exception_throw(v5);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetSocketImpl *)impl getInputStream];
}

- (BOOL)getKeepAlive
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:8], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (int)getLocalPort
{
  if (![(JavaNetSocket *)self isBound])
  {
    return -1;
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetSocketImpl *)impl getLocalPort];
}

- (id)getOutputStream
{
  sub_10015092C(self, 0);
  if ([(JavaNetSocket *)self isOutputShutdown])
  {
    v5 = new_JavaNetSocketException_initWithNSString_(@"Socket output is shutdown");
    objc_exception_throw(v5);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetSocketImpl *)impl getOutputStream];
}

- (int)getPort
{
  result = [(JavaNetSocket *)self isConnected];
  if (result)
  {
    impl = self->impl_;
    if (!impl)
    {
      JreThrowNullPointerException();
    }

    return [(JavaNetSocketImpl *)impl getPort];
  }

  return result;
}

- (int)getSoLinger
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl)
  {
    goto LABEL_9;
  }

  v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:128];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return -1;
  }

  objc_opt_class();
  if (!v4)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 intValue];
}

- (int)getReceiveBufferSize
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4098], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [v4 intValue];
  objc_sync_exit(self);
  return v5;
}

- (int)getSendBufferSize
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4097], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [v4 intValue];
  objc_sync_exit(self);
  return v5;
}

- (int)getSoTimeout
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4102], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [v4 intValue];
  objc_sync_exit(self);
  return v5;
}

- (BOOL)getTcpNoDelay
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:1], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (void)setKeepAliveWithBoolean:(BOOL)a3
{
  if (self->impl_)
  {
    v3 = a3;
    sub_10015092C(self, 1);
    impl = self->impl_;
    v6 = JavaLangBoolean_valueOfWithBoolean_(v3);

    [(JavaNetSocketImpl *)impl setOptionWithInt:8 withId:v6];
  }
}

- (void)setSendBufferSizeWithInt:(int)a3
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  if (a3 <= 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 1");
    objc_exception_throw(v6);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl setOptionWithInt:4097 withId:JavaLangInteger_valueOfWithInt_(a3)];

  objc_sync_exit(self);
}

- (void)setReceiveBufferSizeWithInt:(int)a3
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  if (a3 <= 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 1");
    objc_exception_throw(v6);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl setOptionWithInt:4098 withId:JavaLangInteger_valueOfWithInt_(a3)];

  objc_sync_exit(self);
}

- (void)setSoLingerWithBoolean:(BOOL)a3 withInt:(int)a4
{
  v5 = a3;
  sub_10015092C(self, 1);
  if (a4 < 0 && v5)
  {
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"timeout < 0");
    objc_exception_throw(v9);
  }

  impl = self->impl_;
  if (v5)
  {
    if (impl)
    {
      v8 = JavaLangInteger_valueOfWithInt_(a4);
      goto LABEL_10;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!impl)
  {
    goto LABEL_13;
  }

  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v8 = JavaLangBoolean_FALSE__;
LABEL_10:

  [(JavaNetSocketImpl *)impl setOptionWithInt:128 withId:v8];
}

- (void)setSoTimeoutWithInt:(int)a3
{
  objc_sync_enter(self);
  sub_10015092C(self, 1);
  if (a3 < 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"timeout < 0");
    objc_exception_throw(v6);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl setOptionWithInt:4102 withId:JavaLangInteger_valueOfWithInt_(a3)];

  objc_sync_exit(self);
}

- (void)setTcpNoDelayWithBoolean:(BOOL)a3
{
  v3 = a3;
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangBoolean_valueOfWithBoolean_(v3);

  [(JavaNetSocketImpl *)impl setOptionWithInt:1 withId:v6];
}

- (NSString)description
{
  if (![(JavaNetSocket *)self isConnected])
  {
    return @"Socket[unconnected]";
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetSocketImpl *)impl description];
}

- (void)shutdownInput
{
  if ([(JavaNetSocket *)self isInputShutdown])
  {
    v4 = new_JavaNetSocketException_initWithNSString_(@"Socket input is shutdown");
    objc_exception_throw(v4);
  }

  sub_10015092C(self, 0);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl shutdownInput];
  self->isInputShutdown_ = 1;
}

- (void)shutdownOutput
{
  if ([(JavaNetSocket *)self isOutputShutdown])
  {
    v4 = new_JavaNetSocketException_initWithNSString_(@"Socket output is shutdown");
    objc_exception_throw(v4);
  }

  sub_10015092C(self, 0);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl shutdownOutput];
  self->isOutputShutdown_ = 1;
}

- (id)getLocalSocketAddress
{
  if (![(JavaNetSocket *)self isBound])
  {
    return 0;
  }

  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetSocket *)self getLocalAddress], [(JavaNetSocket *)self getLocalPort]);

  return v3;
}

- (id)getRemoteSocketAddress
{
  if (![(JavaNetSocket *)self isConnected])
  {
    return 0;
  }

  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetSocket *)self getInetAddress], [(JavaNetSocket *)self getPort]);

  return v3;
}

- (void)bindWithJavaNetSocketAddress:(id)a3
{
  sub_10015092C(self, 1);
  if ([(JavaNetSocket *)self isBound])
  {
    v9 = new_JavaNetBindException_initWithNSString_(@"Socket is already bound");
    goto LABEL_19;
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v5 = [a3 getAddress];
      if (v5)
      {
        v6 = v5;
        v7 = [a3 getPort];
        goto LABEL_10;
      }

      [a3 getHostName];
      v25 = JreStrcat("$$", v18, v19, v20, v21, v22, v23, v24, @"Host is unresolved: ");
      v9 = new_JavaNetUnknownHostException_initWithNSString_(v25);
    }

    else
    {
      [a3 getClass];
      v17 = JreStrcat("$@", v10, v11, v12, v13, v14, v15, v16, @"Local address not an InetSocketAddress: ");
      v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    }

LABEL_19:
    objc_exception_throw(v9);
  }

  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v7 = 0;
  v6 = JavaNetInet4Address_ANY_;
LABEL_10:
  objc_sync_enter(self);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl bindWithJavaNetInetAddress:v6 withInt:v7];
  self->isBound_ = 1;
  [JavaNetSocket cacheLocalAddress]_0(self);

  objc_sync_exit(self);
}

- (id)cacheLocalAddress
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  SocketLocalAddressWithJavaIoFileDescriptor = LibcoreIoIoBridge_getSocketLocalAddressWithJavaIoFileDescriptor_(*(v1 + 24));

  return JreStrongAssign((a1 + 40), SocketLocalAddressWithJavaIoFileDescriptor);
}

- (void)setReuseAddressWithBoolean:(BOOL)a3
{
  v3 = a3;
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangBoolean_valueOfWithBoolean_(v3);

  [(JavaNetSocketImpl *)impl setOptionWithInt:4 withId:v6];
}

- (BOOL)getReuseAddress
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (void)setOOBInlineWithBoolean:(BOOL)a3
{
  v3 = a3;
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangBoolean_valueOfWithBoolean_(v3);

  [(JavaNetSocketImpl *)impl setOptionWithInt:4099 withId:v6];
}

- (BOOL)getOOBInline
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4099], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 BOOLeanValue];
}

- (void)setTrafficClassWithInt:(int)a3
{
  sub_10015092C(self, 1);
  if (a3 >= 0x100)
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

  v13 = JavaLangInteger_valueOfWithInt_(a3);

  [(JavaNetSocketImpl *)impl setOptionWithInt:3 withId:v13];
}

- (int)getTrafficClass
{
  sub_10015092C(self, 1);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:3], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 intValue];
}

- (void)accepted
{
  *&self->isBound_ = 257;
  atomic_store(1u, &self->isCreated_);
  [JavaNetSocket cacheLocalAddress]_0(self);
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
  v3.super_class = JavaNetSocket;
  [(JavaNetSocket *)&v3 dealloc];
}

@end