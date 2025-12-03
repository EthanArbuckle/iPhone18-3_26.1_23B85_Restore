@interface JavaNetPlainSocketImpl
- (JavaNetPlainSocketImpl)init;
- (JavaNetSocks4Message)socksReadReply;
- (id)getInputStream;
- (id)getOutputStream;
- (id)socksBind;
- (int)available;
- (void)acceptWithJavaNetSocketImpl:(id)impl;
- (void)close;
- (void)connectWithJavaNetSocketAddress:(id)address withInt:(int)int;
- (void)createWithBoolean:(BOOL)boolean;
- (void)dealloc;
- (void)sendUrgentDataWithInt:(int)int;
- (void)shutdownInput;
- (void)shutdownOutput;
- (void)socksAccept;
- (void)usingSocks;
@end

@implementation JavaNetPlainSocketImpl

- (JavaNetPlainSocketImpl)init
{
  v3 = new_JavaIoFileDescriptor_init();
  JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_(self, v3);
  return self;
}

- (void)acceptWithJavaNetSocketImpl:(id)impl
{
  if ([JavaNetPlainSocketImpl usingSocks]_0(self))
  {
    objc_opt_class();
    if (!impl)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0 || ([JavaNetPlainSocketImpl socksBind]_0(impl), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      JreThrowClassCastException();
    }

    [impl socksAccept];
  }

  else
  {
    v5 = new_JavaNetInetSocketAddress_init();
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_ || (v6 = [LibcoreIoLibcore_os_ acceptWithJavaIoFileDescriptor:self->super.fd_ withJavaNetInetSocketAddress:v5], !impl) || ((v7 = *(impl + 3)) != 0 ? (v8 = v6 == 0) : (v8 = 1), v8))
    {
      JreThrowNullPointerException();
    }

    [v7 setInt$WithInt:{objc_msgSend(v6, "getInt$")}];
    JreStrongAssign(impl + 1, [(JavaNetInetSocketAddress *)v5 getAddress]);
    *(impl + 4) = [(JavaNetInetSocketAddress *)v5 getPort];
    [impl setOptionWithInt:4102 withId:JavaLangInteger_valueOfWithInt_(0)];
    *(impl + 8) = LibcoreIoIoBridge_getSocketLocalPortWithJavaIoFileDescriptor_(*(impl + 3));
  }
}

- (void)usingSocks
{
  result = *(self + 40);
  if (result)
  {
    type = [result type];
    if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A084();
    }

    return (type == qword_100557EF0);
  }

  return result;
}

- (id)socksBind
{
  v2 = *(self + 24);
  v3 = sub_10014947C(self);
  v4 = sub_100149408(self);
  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(v2, v3, v4);
  if (!qword_100554928)
  {
    v12 = new_JavaNetSocketException_initWithNSString_(@"Invalid SOCKS client");
    goto LABEL_13;
  }

  sub_1001498E4(self, 2, qword_100554928, dword_100554930);
  v5 = [JavaNetPlainSocketImpl socksReadReply]_0(self);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([(JavaNetSocks4Message *)v5 getCommandOrResult]!= 90)
  {
    v12 = new_JavaIoIOException_initWithNSString_([(JavaNetSocks4Message *)v6 getErrorStringWithInt:[(JavaNetSocks4Message *)v6 getCommandOrResult]]);
LABEL_13:
    objc_exception_throw(v12);
  }

  if ([(JavaNetSocks4Message *)v6 getIP])
  {
    v7 = [IOSByteArray arrayWithLength:4];
    getIP = [(JavaNetSocks4Message *)v6 getIP];
    if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A090();
    }

    LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(v7, 0, getIP, JavaNioByteOrder_BIG_ENDIAN__);
    v9 = JavaNetInetAddress_getByAddressWithByteArray_(v7);
    v10 = (self + 8);
  }

  else
  {
    v9 = sub_10014947C(self);
    v10 = (self + 8);
  }

  JreStrongAssign(v10, v9);
  result = [(JavaNetSocks4Message *)v6 getPort];
  *(self + 32) = result;
  return result;
}

- (int)available
{
  objc_sync_enter(self);
  sub_100148DFC(self);
  if (*(&self->super.localport_ + 5))
  {
    v3 = 0;
  }

  else
  {
    v3 = LibcoreIoIoBridge_availableWithJavaIoFileDescriptor_(self->super.fd_);
  }

  objc_sync_exit(self);
  return v3;
}

- (void)close
{
  objc_sync_enter(self);
  proxy = self->proxy_;
  if (!proxy)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetProxy *)proxy close];
  LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(self->super.fd_);

  objc_sync_exit(self);
}

- (void)createWithBoolean:(BOOL)boolean
{
  *(&self->super.localport_ + 4) = boolean;
  v4 = LibcoreIoIoBridge_socketWithBoolean_(boolean);

  JreStrongAssign(&self->super.fd_, v4);
}

- (void)dealloc
{
  proxy = self->proxy_;
  if (proxy)
  {
    [(JavaNetProxy *)proxy warnIfOpen];
  }

  [(JavaNetPlainSocketImpl *)self close];

  v4.receiver = self;
  v4.super_class = JavaNetPlainSocketImpl;
  [(JavaNetSocketImpl *)&v4 dealloc];
}

- (id)getInputStream
{
  objc_sync_enter(self);
  sub_100148DFC(self);
  v3 = [JavaNetPlainSocketImpl_PlainSocketInputStream alloc];
  JavaIoInputStream_init();
  JreStrongAssign(&v3->socketImpl_, self);
  v4 = v3;
  objc_sync_exit(self);
  return v4;
}

- (id)getOutputStream
{
  objc_sync_enter(self);
  sub_100148DFC(self);
  v3 = [JavaNetPlainSocketImpl_PlainSocketOutputStream alloc];
  JavaIoOutputStream_init();
  JreStrongAssign(&v3->socketImpl_, self);
  v4 = v3;
  objc_sync_exit(self);
  return v4;
}

- (void)socksAccept
{
  v2 = [JavaNetPlainSocketImpl socksReadReply]_0(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if ([(JavaNetSocks4Message *)v2 getCommandOrResult]!= 90)
  {
    v4 = new_JavaIoIOException_initWithNSString_([(JavaNetSocks4Message *)v3 getErrorStringWithInt:[(JavaNetSocks4Message *)v3 getCommandOrResult]]);
    objc_exception_throw(v4);
  }
}

- (JavaNetSocks4Message)socksReadReply
{
  v2 = new_JavaNetSocks4Message_init();
  v3 = 0;
  while (v3 <= 7)
  {
    getInputStream = [self getInputStream];
    if (!getInputStream)
    {
      JreThrowNullPointerException();
    }

    v5 = [getInputStream readWithByteArray:-[JavaNetSocks4Message getBytes](v2 withInt:"getBytes") withInt:{v3, (8 - v3)}];
    v3 = v5 + v3;
    if (v5 == -1)
    {
      goto LABEL_5;
    }
  }

  if (v3 != 8)
  {
LABEL_5:
    v6 = new_JavaNetSocketException_initWithNSString_(@"Malformed reply from SOCKS server");
    objc_exception_throw(v6);
  }

  return v2;
}

- (void)shutdownInput
{
  *(&self->super.localport_ + 5) = 1;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ shutdownWithJavaIoFileDescriptor:self->super.fd_ withInt:0];
}

- (void)shutdownOutput
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ shutdownWithJavaIoFileDescriptor:self->super.fd_ withInt:1];
}

- (void)connectWithJavaNetSocketAddress:(id)address withInt:(int)int
{
  objc_opt_class();
  if (!address)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getAddress = [address getAddress];
  getPort = [address getPort];

  sub_100149018(self, getAddress, getPort, int);
}

- (void)sendUrgentDataWithInt:(int)int
{
  intCopy = int;
  v4 = [IOSByteArray arrayWithBytes:&intCopy count:1];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v5) = 0;
  [LibcoreIoLibcore_os_ sendtoWithJavaIoFileDescriptor:self->super.fd_ withByteArray:v4 withInt:0 withInt:1 withInt:1 withJavaNetInetAddress:0 withInt:v5];
}

@end