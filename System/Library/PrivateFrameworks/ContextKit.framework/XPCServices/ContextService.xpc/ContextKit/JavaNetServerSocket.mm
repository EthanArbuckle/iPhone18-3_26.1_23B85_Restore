@interface JavaNetServerSocket
- (BOOL)getReuseAddress;
- (NSString)description;
- (id)accept;
- (id)checkOpen;
- (id)getInetAddress;
- (id)getLocalSocketAddress;
- (int)getLocalPort;
- (int)getReceiveBufferSize;
- (int)getSoTimeout;
- (void)bindWithJavaNetSocketAddress:(id)a3 withInt:(int)a4;
- (void)close;
- (void)dealloc;
- (void)setReceiveBufferSizeWithInt:(int)a3;
- (void)setReuseAddressWithBoolean:(BOOL)a3;
- (void)setSoTimeoutWithInt:(int)a3;
@end

@implementation JavaNetServerSocket

- (id)accept
{
  [JavaNetServerSocket checkOpen]_0(self);
  if (![(JavaNetServerSocket *)self isBound])
  {
    v5 = new_JavaNetSocketException_initWithNSString_(@"Socket is not bound");
    objc_exception_throw(v5);
  }

  v3 = new_JavaNetSocket_init();
  sub_100200844(self, v3);
  return v3;
}

- (id)checkOpen
{
  result = [a1 isClosed];
  if (result)
  {
    v2 = new_JavaNetSocketException_initWithNSString_(@"Socket is closed");
    objc_exception_throw(v2);
  }

  return result;
}

- (void)close
{
  self->isClosed_ = 1;
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl close];
}

- (id)getInetAddress
{
  if ([(JavaNetServerSocket *)self isBound])
  {
    return self->localAddress_;
  }

  else
  {
    return 0;
  }
}

- (int)getLocalPort
{
  if (![(JavaNetServerSocket *)self isBound])
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

- (int)getSoTimeout
{
  objc_sync_enter(self);
  [JavaNetServerSocket checkOpen]_0(self);
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

- (void)setSoTimeoutWithInt:(int)a3
{
  objc_sync_enter(self);
  [JavaNetServerSocket checkOpen]_0(self);
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

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(0x40u);
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"ServerSocket["];
  if ([(JavaNetServerSocket *)self isBound])
  {
    v4 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"addr="];
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = [(JavaNetServerSocket *)self getInetAddress];
    if (!v6 || (v7 = [v5 appendWithNSString:{objc_msgSend(v6, "getHostName")}]) == 0 || (v8 = objc_msgSend(v7, "appendWithNSString:", @"/")) == 0 || (v9 = v8, (v10 = -[JavaNetServerSocket getInetAddress](self, "getInetAddress")) == 0) || (v11 = objc_msgSend(v9, "appendWithNSString:", objc_msgSend(v10, "getHostAddress"))) == 0 || (v12 = objc_msgSend(v11, "appendWithNSString:", @",port=0,localport=")) == 0 || (v13 = objc_msgSend(v12, "appendWithInt:", -[JavaNetServerSocket getLocalPort](self, "getLocalPort"))) == 0)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v14 = @"]";
  }

  else
  {
    v14 = @"unbound]";
    v13 = v3;
  }

  v15 = [(JavaLangStringBuilder *)v13 appendWithNSString:v14];
  if (!v15)
  {
    goto LABEL_16;
  }

  return [v15 description];
}

- (void)bindWithJavaNetSocketAddress:(id)a3 withInt:(int)a4
{
  [JavaNetServerSocket checkOpen]_0(self);
  if ([(JavaNetServerSocket *)self isBound])
  {
    v12 = new_JavaNetBindException_initWithNSString_(@"Socket is already bound");
    goto LABEL_22;
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

      v7 = [a3 getAddress];
      if (v7)
      {
        v8 = v7;
        v9 = [a3 getPort];
        goto LABEL_10;
      }

      [a3 getHostName];
      v28 = JreStrcat("$$", v21, v22, v23, v24, v25, v26, v27, @"Host is unresolved: ");
      v12 = new_JavaNetSocketException_initWithNSString_(v28);
    }

    else
    {
      [a3 getClass];
      v20 = JreStrcat("$@", v13, v14, v15, v16, v17, v18, v19, @"Local address not an InetSocketAddress: ");
      v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v20);
    }

LABEL_22:
    objc_exception_throw(v12);
  }

  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v9 = 0;
  v8 = JavaNetInet4Address_ANY_;
LABEL_10:
  objc_sync_enter(self);
  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetSocketImpl *)impl bindWithJavaNetInetAddress:v8 withInt:v9];
  sub_100200724(self);
  if (a4 <= 0)
  {
    v11 = 50;
  }

  else
  {
    v11 = a4;
  }

  [(JavaNetSocketImpl *)self->impl_ listenWithInt:v11];

  objc_sync_exit(self);
}

- (id)getLocalSocketAddress
{
  if (![(JavaNetServerSocket *)self isBound])
  {
    return 0;
  }

  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(self->localAddress_, [(JavaNetServerSocket *)self getLocalPort]);

  return v3;
}

- (void)setReuseAddressWithBoolean:(BOOL)a3
{
  v3 = a3;
  [JavaNetServerSocket checkOpen]_0(self);
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
  [JavaNetServerSocket checkOpen]_0(self);
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

- (void)setReceiveBufferSizeWithInt:(int)a3
{
  [JavaNetServerSocket checkOpen]_0(self);
  if (a3 <= 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size < 1");
    objc_exception_throw(v7);
  }

  impl = self->impl_;
  if (!impl)
  {
    JreThrowNullPointerException();
  }

  v6 = JavaLangInteger_valueOfWithInt_(a3);

  [(JavaNetSocketImpl *)impl setOptionWithInt:4098 withId:v6];
}

- (int)getReceiveBufferSize
{
  [JavaNetServerSocket checkOpen]_0(self);
  impl = self->impl_;
  if (!impl || (v4 = [(JavaNetSocketImpl *)impl getOptionWithInt:4098], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 intValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetServerSocket;
  [(JavaNetServerSocket *)&v3 dealloc];
}

@end