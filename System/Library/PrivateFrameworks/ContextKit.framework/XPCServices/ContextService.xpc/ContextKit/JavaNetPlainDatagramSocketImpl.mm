@interface JavaNetPlainDatagramSocketImpl
- (int)getTimeToLive;
- (int)peekDataWithJavaNetDatagramPacket:(id)a3;
- (int)peekWithJavaNetInetAddress:(id)a3;
- (void)close;
- (void)create;
- (void)dealloc;
- (void)disconnect;
- (void)joinGroupWithJavaNetSocketAddress:(id)a3 withJavaNetNetworkInterface:(id)a4;
- (void)joinWithJavaNetInetAddress:(id)a3;
- (void)leaveGroupWithJavaNetSocketAddress:(id)a3 withJavaNetNetworkInterface:(id)a4;
- (void)leaveWithJavaNetInetAddress:(id)a3;
- (void)sendWithJavaNetDatagramPacket:(id)a3;
- (void)setTimeToLiveWithInt:(int)a3;
- (void)updatePacketRecvAddressWithJavaNetDatagramPacket:(id)a3;
@end

@implementation JavaNetPlainDatagramSocketImpl

- (void)close
{
  objc_sync_enter(self);
  v3 = *&self->isNativeConnected_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 close];
  LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(self->super.fd_);

  objc_sync_exit(self);
}

- (void)create
{
  v3 = LibcoreIoIoBridge_socketWithBoolean_(0);

  JreStrongAssign(&self->super.fd_, v3);
}

- (void)dealloc
{
  v3 = *&self->isNativeConnected_;
  if (v3)
  {
    [v3 warnIfOpen];
  }

  [(JavaNetPlainDatagramSocketImpl *)self close];

  v4.receiver = self;
  v4.super_class = JavaNetPlainDatagramSocketImpl;
  [(JavaNetDatagramSocketImpl *)&v4 dealloc];
}

- (int)getTimeToLive
{
  v2 = [(JavaNetPlainDatagramSocketImpl *)self getOptionWithInt:17];
  objc_opt_class();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v2 intValue];
}

- (void)joinWithJavaNetInetAddress:(id)a3
{
  v4 = new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(0, a3);

  [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:19 withId:v4];
}

- (void)joinGroupWithJavaNetSocketAddress:(id)a3 withJavaNetNetworkInterface:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = sub_1002901B0([a3 getAddress], a4);

    [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:19 withId:v7];
  }
}

- (void)leaveWithJavaNetInetAddress:(id)a3
{
  v4 = new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(0, a3);

  [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:20 withId:v4];
}

- (void)leaveGroupWithJavaNetSocketAddress:(id)a3 withJavaNetNetworkInterface:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = sub_1002901B0([a3 getAddress], a4);

    [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:20 withId:v7];
  }
}

- (int)peekWithJavaNetInetAddress:(id)a3
{
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BBB54();
  }

  v5 = new_JavaNetDatagramPacket_initWithByteArray_withInt_(LibcoreUtilEmptyArray_BYTE_, 0);
  v6 = [(JavaNetPlainDatagramSocketImpl *)self peekDataWithJavaNetDatagramPacket:v5];
  if (!a3 || (v7 = v6, (v8 = [(JavaNetDatagramPacket *)v5 getAddress]) == 0))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(a3 + 1, [v8 getAddress]);
  return v7;
}

- (int)peekDataWithJavaNetDatagramPacket:(id)a3
{
  sub_10029049C(self, a3, 2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 getPort];
}

- (void)sendWithJavaNetDatagramPacket:(id)a3
{
  v5 = (&self->super.localPort_ + 1);
  v6 = atomic_load(&self->super.localPort_ + 4);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    v7 = [a3 getPort];
  }

  v8 = atomic_load(v5);
  if (v8)
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_10;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v9 = [a3 getAddress];
LABEL_10:
  fd = self->super.fd_;
  v11 = [a3 getData];
  v12 = [a3 getOffset];
  v13 = [a3 getLength];

  LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetInetAddress_withInt_(fd, v11, v12, v13, 0, v9, v7);
}

- (void)setTimeToLiveWithInt:(int)a3
{
  v4 = JavaLangInteger_valueOfWithInt_(a3);

  [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:17 withId:v4];
}

- (void)disconnect
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v3 = LibcoreIoLibcore_os_;
  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  fd = self->super.fd_;
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [v3 connectWithJavaIoFileDescriptor:fd withJavaNetInetAddress:JavaNetInetAddress_UNSPECIFIED_ withInt:0];
  LODWORD(self->connectedAddress_) = -1;
  JreStrongAssign(&self->guard_, 0);
  atomic_store(0, &self->super.localPort_ + 4);
}

- (void)updatePacketRecvAddressWithJavaNetDatagramPacket:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 setAddressWithJavaNetInetAddress:self->guard_];
  connectedAddress_low = LODWORD(self->connectedAddress_);

  [a3 setPortWithInt:connectedAddress_low];
}

@end