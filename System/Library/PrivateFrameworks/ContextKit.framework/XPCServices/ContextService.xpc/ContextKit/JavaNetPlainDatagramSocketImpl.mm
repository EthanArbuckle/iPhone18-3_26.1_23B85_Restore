@interface JavaNetPlainDatagramSocketImpl
- (int)getTimeToLive;
- (int)peekDataWithJavaNetDatagramPacket:(id)packet;
- (int)peekWithJavaNetInetAddress:(id)address;
- (void)close;
- (void)create;
- (void)dealloc;
- (void)disconnect;
- (void)joinGroupWithJavaNetSocketAddress:(id)address withJavaNetNetworkInterface:(id)interface;
- (void)joinWithJavaNetInetAddress:(id)address;
- (void)leaveGroupWithJavaNetSocketAddress:(id)address withJavaNetNetworkInterface:(id)interface;
- (void)leaveWithJavaNetInetAddress:(id)address;
- (void)sendWithJavaNetDatagramPacket:(id)packet;
- (void)setTimeToLiveWithInt:(int)int;
- (void)updatePacketRecvAddressWithJavaNetDatagramPacket:(id)packet;
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

- (void)joinWithJavaNetInetAddress:(id)address
{
  v4 = new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(0, address);

  [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:19 withId:v4];
}

- (void)joinGroupWithJavaNetSocketAddress:(id)address withJavaNetNetworkInterface:(id)interface
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
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

    v7 = sub_1002901B0([address getAddress], interface);

    [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:19 withId:v7];
  }
}

- (void)leaveWithJavaNetInetAddress:(id)address
{
  v4 = new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(0, address);

  [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:20 withId:v4];
}

- (void)leaveGroupWithJavaNetSocketAddress:(id)address withJavaNetNetworkInterface:(id)interface
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
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

    v7 = sub_1002901B0([address getAddress], interface);

    [(JavaNetPlainDatagramSocketImpl *)self setOptionWithInt:20 withId:v7];
  }
}

- (int)peekWithJavaNetInetAddress:(id)address
{
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BBB54();
  }

  v5 = new_JavaNetDatagramPacket_initWithByteArray_withInt_(LibcoreUtilEmptyArray_BYTE_, 0);
  v6 = [(JavaNetPlainDatagramSocketImpl *)self peekDataWithJavaNetDatagramPacket:v5];
  if (!address || (v7 = v6, (v8 = [(JavaNetDatagramPacket *)v5 getAddress]) == 0))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(address + 1, [v8 getAddress]);
  return v7;
}

- (int)peekDataWithJavaNetDatagramPacket:(id)packet
{
  sub_10029049C(self, packet, 2);
  if (!packet)
  {
    JreThrowNullPointerException();
  }

  return [packet getPort];
}

- (void)sendWithJavaNetDatagramPacket:(id)packet
{
  v5 = (&self->super.localPort_ + 1);
  v6 = atomic_load(&self->super.localPort_ + 4);
  if (v6)
  {
    getPort = 0;
  }

  else
  {
    if (!packet)
    {
      goto LABEL_13;
    }

    getPort = [packet getPort];
  }

  v8 = atomic_load(v5);
  if (v8)
  {
    if (packet)
    {
      getAddress = 0;
      goto LABEL_10;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!packet)
  {
    goto LABEL_13;
  }

  getAddress = [packet getAddress];
LABEL_10:
  fd = self->super.fd_;
  getData = [packet getData];
  getOffset = [packet getOffset];
  getLength = [packet getLength];

  LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetInetAddress_withInt_(fd, getData, getOffset, getLength, 0, getAddress, getPort);
}

- (void)setTimeToLiveWithInt:(int)int
{
  v4 = JavaLangInteger_valueOfWithInt_(int);

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

- (void)updatePacketRecvAddressWithJavaNetDatagramPacket:(id)packet
{
  if (!packet)
  {
    JreThrowNullPointerException();
  }

  [packet setAddressWithJavaNetInetAddress:self->guard_];
  connectedAddress_low = LODWORD(self->connectedAddress_);

  [packet setPortWithInt:connectedAddress_low];
}

@end